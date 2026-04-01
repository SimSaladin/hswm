{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}

module Core
  ( module Core
  , module Wayland
  , module River
  ) where

import           HSWM.Operations
import qualified HSWM.Outputs as Outputs
import qualified HSWM.Seats as Seats
import qualified HSWM.StackSet as W
import           HSWM.Types
import           HSWM.Utils
import qualified HSWM.Windows as Windows

import           River
import qualified River.Safe as R
import           Wayland
import qualified Wayland.Client as WL
import qualified Wayland.Client.Extras as WL

import           Data.IORef
import qualified Data.TMap as TM
import           Foreign hiding (new, void)
import           System.Exit
import qualified System.Posix as Posix

data StopReason = StopReasonNone | StopReasonRestart
  deriving (Eq, Show)

startHSWM :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => WlDisplay -> HSWMConfig l -> IO ()
startHSWM display config = withStdoutLogging $ do
  conf <- HConf (config { layoutHook = Layout (layoutHook config) }) display <$> newIORef mempty
  initialState <- io (readStateFile config) >>= \case
    Nothing -> return def { windowset = initialWinSet , windowsetOld = initialWinSet }
            where initialWinSet = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]
    Just s -> return s
  stTMVar <- newTMVarIO initialState
  let runInH :: H a -> IO a
      runInH a = bracketOnError (atomically $ takeTMVar stTMVar) (atomically . putTMVar stTMVar) $ \st -> do
          (r, st') <- runH conf st a
          atomically $ putTMVar stTMVar st'
          return r
  runInH $ do
    xkbConfigL <- getOrCreateObject $ mkRiverXkbConfigV1Listener $ \e -> runInH $ handleWithHook $ XkbConfigEvent e
    _ <- getOrCreateObject $ mkRiverXkbKeyboardV1Listener $ \e -> runInH $ handleWithHook $ XkbKeyboardEvent e
    _ <- getOrCreateObject $ mkXkbBindingListener $ \e -> runInH $ handleWithHook $ XkbEvent e
    _ <- getOrCreateObject $ R.mkRiverXkbBindingsSeatV1Listener $ \e -> runInH $ handleWithHook $ XkbSeatEvent e
    _ <- getOrCreateObject $ mkPointerBindingListener $ \e -> runInH $ handleWithHook $ PointerEvent e
    _ <- getOrCreateObject $ mkWindowListener $ \e -> runInH $ handleWithHook $ WindowEvent e
    _ <- getOrCreateObject $ mkSeatListener $ \e -> runInH $ handleWithHook $ SeatEvent e
    _ <- getOrCreateObject $ newOutputListener $ \e -> runInH $ handleWithHook $ OutputEvent e
    _ <- getOrCreateObject $ WL.mkWlOutputListener $ \e -> runInH $ handleWithHook $ WlOutputEvent e
    _ <- getOrCreateObject $ WL.mkWlShellSurfaceListener $ \e -> runInH $ handleWithHook $ WlShellSurfaceEvent e
    _ <- getOrCreateObject $ R.mkRiverLayerShellOutputV1Listener $ \e -> runInH $ handleWithHook $ LayerShellOutputEvent e -- R.RiverLayerShellOutputV1Listener
    _ <- getOrCreateObject $ R.mkRiverLayerShellSeatV1Listener $ \e -> runInH $ handleWithHook $ LayerShellSeatEvent e -- R.RiverLayerShellOutputV1Listener
    _ <- getOrCreateObject $ R.mkRiverInputDeviceV1Listener $ \e -> runInH $ handleWithHook $ InputDeviceEvent e
    libinputConfigL <- getOrCreateObject $ R.mkRiverLibinputConfigV1Listener $ \e -> runInH $ handleWithHook $ LibinputConfigEvent e
    inputManagerL <- getOrCreateObject $ R.mkRiverInputManagerV1Listener $ \e -> runInH $ handleWithHook $ InputManagerEvent e
    shmL <- getOrCreateObject $ WL.mkWlShmListener $ \e -> runInH $ handleWithHook $ WlShmEvent e
    managerL <- getOrCreateObject $ mkWindowManagerListener $ \e -> runInH $ handleWithHook $ WindowManagerEvent e
    regL <- getOrCreateObject $ mkRegistryListener $ \case
      RegistryGlobal _ registry name iface version -> do
        log' $ "[globalreg] new registry item: " <> toText iface <> " (" <> tshow name <> ")"
        modifyIORef conf.globals $ registerGlobal name iface version registry
      RegistryGlobalRemove _udata _registry name -> do
        log' $ "[globalreg] registry entry removed: " <> tshow name
        modifyIORef conf.globals (removeGlobal name)

    registry <- io $ wl_display_get_registry display
    io $ wl_registry_add_listener registry regL nullPtr

    -- Wait for one roundtrip for the registry listener to become aware of all current globals.
    _ <- liftIO $ wl_display_roundtrip display

    -- expect wl_compositor
    _ <- getOrCreateObject $ requireGlobal conf.globals ("wl_compositor", 4) $ \(WlRegistry r) n v ->
      io $ WL.wl_registry_bind (castPtr r) n WL.wl_compositor_interface (fi v) >>= return . castPtr @_ @WL.Wl_compositor

    -- expect wl_shm
    wl_shm <- getOrCreateObject $ requireGlobal conf.globals ("wl_shm", 1) $ \(WlRegistry r) n v ->
      io $ WL.wl_registry_bind (castPtr r) n WL.wl_shm_interface (fi v) >>= \p -> return (castPtr p :: Ptr WL.Wl_shm)
    _ <- io $ WL.wl_shm_add_listener wl_shm shmL nullPtr

    inputManager <- getOrCreateObject $ requireGlobal conf.globals ("river_input_manager_v1", 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n R.river_input_manager_v1_interface (fi v) >>= \p -> return (castPtr p :: R.RiverInputManagerV1)
    _ <- io $ R.river_input_manager_v1_add_listener inputManager inputManagerL nullPtr

    libinputConfig <- getOrCreateObject $ requireGlobal conf.globals ("river_libinput_config_v1", 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n R.river_libinput_config_v1_interface (fi v) >>= \p -> return (castPtr p :: R.RiverLibinputConfigV1)
    _ <- io $ R.river_libinput_config_v1_add_listener libinputConfig libinputConfigL nullPtr

    _ <- getOrCreateObject $ requireGlobal conf.globals ("river_layer_shell_v1", 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n R.river_layer_shell_v1_interface (fi v) >>= \p -> return (castPtr p :: R.RiverLayerShellV1)

    windowManager <- getOrCreateObject $ requireGlobal conf.globals ("river_window_manager_v1", 4) $ \r n v -> wl_registry_bind r n river_window_manager_v1_interface v <&> RiverWindowManager

    _ <- getOrCreateObject $ requireGlobal conf.globals ("river_xkb_bindings_v1"  , 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n R.river_xkb_bindings_v1_interface (fi v) >>= \p -> return (castPtr p :: R.RiverXkbBindingsV1)

    xkbConfig     <- getOrCreateObject $ requireGlobal conf.globals ("river_xkb_config_v1"    , 1) registryBindRiverXkbConfigV1
    io $ riverXkbConfigV1AddListener xkbConfig xkbConfigL nullPtr
    io $ river_window_manager_v1_add_listener windowManager managerL nullPtr

    foreignListL <- getOrCreateObject $ WL.mkExtForeignToplevelListV1Listener $ \e -> runInH $ handleWithHook $ ForeignTopLevelListV1 e
    _ <- getOrCreateObject $ WL.mkExtForeignToplevelHandleV1Listener $ \e -> runInH $ handleWithHook $ ForeignTopLevelHandleV1 e
    foreignList <- getOrCreateObject $ requireGlobal conf.globals ("ext_foreign_toplevel_list_v1", 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n WL.ext_foreign_toplevel_list_v1_interface (fi v) >>= return . castPtr @_ @WL.Ext_foreign_toplevel_list_v1
    _ <- io $ WL.ext_foreign_toplevel_list_v1_add_listener foreignList foreignListL nullPtr

    log' "WM: running startup hooks"
    userCodeDef () (startupHook config)

  _ <- Posix.installHandler Posix.sigTERM (Posix.CatchInfo $ \_ -> log' "TERM" >> exitFailure) Nothing
  _ <- Posix.installHandler Posix.sigINT  (Posix.CatchInfo $ \_ -> log' "INT"  >> exitSuccess) Nothing
  _ <- Posix.installHandler Posix.sigQUIT (Posix.CatchInfo $ \_ -> log' "QUIT" >> exitFailure) Nothing
  _ <- Posix.installHandler Posix.sigUSR2 (Posix.Catch $ do
    log' "USR2 - reload / restart"
    runInH $ do
      io . riverWindowManagerStop =<< getObject
      modifyWlObjects $ TM.insert StopReasonRestart
      void $ userCode (exitHook config)
    log' "RESTART"
    runInH $ restart "hswm"
                                          ) Nothing

  -- main loop
  -- However, if you have a more sophisticated application, you can build your own event loop in any manner you please,
  -- and obtain the Wayland display's file descriptor with wl_display_get_fd.
  --
  -- Upon POLLIN events, call wl_display_dispatch to process incoming events.
  --
  -- To flush outgoing requests, call wl_display_flush.
  forever $ do
    res <- wl_display_dispatch display
    when (res < 0) $ do
      log' "error: dispatch failed"
      exitFailure

---------------------------------------------------
-- event handling

-- | Runs handleEventHook from the configuration and runs the default handler
-- function if it returned True.
handleWithHook :: Event -> H ()
handleWithHook e = do
  evHook <- asks (handleEventHook . config)
  whenM (userCodeDef True $ getAll `fmap` evHook e) (handleEvent e)

handleEvent :: Event -> H ()
handleEvent (WindowManagerEvent e) = case e of
    WindowManagerOutput _ _ out -> Outputs.added out
    WindowManagerSeat _ _ seat -> Seats.added seat
    WindowManagerWindow _ _ w -> Windows.added w

    -- /manage sequence/
    WindowManagerManageStart _ wm -> do
      Outputs.manage >> Seats.manage >> Windows.manage
      void . userCode =<< asks (manageHook . config)
      io (riverWindowManagerManageFinish wm)

    -- /render sequence/
    WindowManagerRenderStart _ wm -> do
      Outputs.render >> Seats.render >> Windows.render
      void . userCode =<< asks (renderHook . config)
      io (riverWindowManagerRenderFinish wm)

    WindowManagerUnavailable{} -> do
      log' "error: another window manager already running"
      liftIO exitFailure

    WindowManagerFinished{} -> do
      withObjectDef StopReasonNone return >>= \case
        StopReasonRestart -> do
          log' "river_window_manage_v1 finished, restarting..."
        StopReasonNone -> do
          log' "river_window_manage_v1 finished, exiting."
          io $ Posix.raiseSignal Posix.sigABRT

    _ -> return ()

handleEvent (OutputEvent e)           = Outputs.handle e
handleEvent (LayerShellOutputEvent e) = Outputs.handleLayerShell e
handleEvent (WlOutputEvent e)         = Outputs.handleWlOutput e
handleEvent (SeatEvent e)             = Seats.handleEvent e
handleEvent (LayerShellSeatEvent e)   = Seats.handleLayerShellSeat e
handleEvent (WindowEvent e)           = Windows.handleEvent e

-- XKB Keyboard events
handleEvent (XkbEvent (XkbKeyPressed dt _)) = do
  xb <- io $ deRefStablePtr (castPtrToStablePtr dt :: StablePtr (XkbBinding SomeAction))
  Seats.execXkbBinding xb

-- unhandled submap keys
handleEvent (XkbSeatEvent (R.RiverXkbBindingsSeatV1AteUnboundKey dt _)) =
  modifySeat (castPtr dt) $ \s -> s { pending_action = S_SUBMAP_CANCEL }

-- Pointer events
handleEvent (PointerEvent (PointerPressed dt _bind)) = do
  xb <- io $ deRefStablePtr (castPtrToStablePtr dt :: StablePtr (PointerBinding SomeAction))
  userCodeDef () $ runner xb.action

-- INPUT configuration
-- Keyboard added
handleEvent (XkbConfigEvent (XkbConfigXkbKeyboard _ xkbConfig xkbKeyboard)) = do
  withObject @RiverXkbKeyboardV1Listener $ \l -> io $ riverXkbKeyboardV1AddListener xkbKeyboard l nullPtr
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardLayout xkbConfig xkbKeyboard)

-- keyboard is removed
handleEvent (XkbKeyboardEvent (KeyboardRemoved _ _kbd)) = return () -- TODO

handleEvent (InputManagerEvent (R.RiverInputManagerV1InputDevice _ _ dev)) = do
  l <- getObject
  void $ io $ R.river_input_device_v1_add_listener dev l nullPtr
  asks (repeatInfo . config) >>= io . (`whenJust` uncurry (R.river_input_device_v1_set_repeat_info dev)) --  repeatRate repeatDelay

-- handleEvent (InputDevicEvent (R.RiverInputDeviceV1Type' _ _ inputDevice)) = return ()

handleEvent (WlShmEvent (WL.WlShmFormat _ _ fmt)) = log' $ toText $ "shm format: " ++ ppShmFormat (WL.Wl_shm_format $ fi fmt)

handleEvent (ForeignTopLevelListV1 (WL.ExtForeignToplevelListV1Toplevel _ _ fh)) = do
    l <- getObject
    _ <- io $ WL.ext_foreign_toplevel_handle_v1_add_listener fh l nullPtr
    return ()

handleEvent _ = return ()

----------------------------------------------------------------------------------

setKeyboardLayout :: RiverXkbConfigV1 -> RiverXkbKeyboardV1 -> XkbRuleNames -> H ()
setKeyboardLayout xkbConfig keyboard layout =
    io (newXkbKeymapFromNames layout) >>= \km ->
    io $ withXkbKeymapFd km $ \fd ->
    riverXkbConfigV1CreateKeymap xkbConfig (fi fd) RiverXkbConfigV1KeymapFormatTextV1
    >>= io . riverXkbKeyboardV1SetKeymap keyboard


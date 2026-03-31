{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}

module Core
  ( module Core
  , module Wayland
  , module River
  ) where

import           HSWM.Operations
import qualified HSWM.StackSet as W
import           HSWM.Types
import           HSWM.Utils
import qualified HSWM.Outputs as Outputs
import qualified HSWM.Seats as Seats

import           River
import           Wayland
import qualified Wayland.Client as WL
import qualified River.Safe as R

import qualified Data.List as L
import qualified Data.Map as M
import qualified Data.TMap as TM
import           Foreign hiding (new, void)
import           System.Exit
import qualified System.Posix as Posix
import           Data.IORef

startHSWM :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => WlDisplay -> HSWMConfig l -> IO ()
startHSWM display config = withStdoutLogging $ do
  conf <- HConf (config { layoutHook = Layout (layoutHook config) }) display
              <$> newIORef mempty

  mRestored <- io $ readStateFile config

  let initialState
        | Just s <- mRestored  = s
        | otherwise = def { windowset = initialWinSet , windowsetOld = initialWinSet }
            where initialWinSet = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]

  stTMVar <- newTMVarIO initialState

  let runInH :: H a -> IO a
      runInH a = bracketOnError (atomically $ takeTMVar stTMVar) (atomically . putTMVar stTMVar) $ \st -> do
          (r, st') <- runH conf st a
          atomically $ putTMVar stTMVar st'
          return r

  runInH $ do
    xkbConfigListener <- getOrCreateObject $ mkRiverXkbConfigV1Listener $ \e -> runInH $ handleWithHook $ XkbConfigEvent e
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
    libinputConfigListener <- getOrCreateObject $ R.mkRiverLibinputConfigV1Listener $ \e -> runInH $ handleWithHook $ LibinputConfigEvent e
    inputManagerListener <- getOrCreateObject $ R.mkRiverInputManagerV1Listener $ \e -> runInH $ handleWithHook $ InputManagerEvent e
    shmListener <- getOrCreateObject $ WL.mkWlShmListener $ \e -> runInH $ handleWithHook $ WlShmEvent e
    managerListener <- getOrCreateObject $ mkWindowManagerListener $ \e -> runInH $ handleWithHook $ WindowManagerEvent e

    regListener <- getOrCreateObject $ mkRegistryListener $ \case
      RegistryGlobal _ registry name iface version -> do
        log' $ "[globalreg] new registry item: " <> toText iface <> " (" <> tshow name <> ")"
        modifyIORef conf.globals $ registerGlobal name iface version registry
      RegistryGlobalRemove _udata _registry name -> do
        log' $ "[globalreg] registry entry removed: " <> tshow name
        modifyIORef conf.globals (removeGlobal name)

    registry <- io $ wl_display_get_registry display
    io $ wl_registry_add_listener registry regListener nullPtr

    -- Wait for one roundtrip for the registry listener to become aware of all current globals.
    _ <- liftIO $ wl_display_roundtrip display

    -- expect wl_compositor
    _ <- getOrCreateObject $ requireGlobal conf.globals ("wl_compositor", 4) $ \(WlRegistry r) n v ->
      io $ WL.wl_registry_bind (castPtr r) n WL.wl_compositor_interface (fi v) >>= return . castPtr @_ @WL.Wl_compositor

    -- expect wl_shm
    wl_shm <- getOrCreateObject $ requireGlobal conf.globals ("wl_shm", 1) $ \(WlRegistry r) n v ->
      io $ WL.wl_registry_bind (castPtr r) n WL.wl_shm_interface (fi v) >>= \p -> return (castPtr p :: Ptr WL.Wl_shm)
    _ <- io $ WL.wl_shm_add_listener wl_shm shmListener nullPtr

    inputManager <- getOrCreateObject $ requireGlobal conf.globals ("river_input_manager_v1", 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n R.river_input_manager_v1_interface (fi v) >>= \p -> return (castPtr p :: R.RiverInputManagerV1)
    _ <- io $ R.river_input_manager_v1_add_listener inputManager inputManagerListener nullPtr

    libinputConfig <- getOrCreateObject $ requireGlobal conf.globals ("river_libinput_config_v1", 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n R.river_libinput_config_v1_interface (fi v) >>= \p -> return (castPtr p :: R.RiverLibinputConfigV1)
    _ <- io $ R.river_libinput_config_v1_add_listener libinputConfig libinputConfigListener nullPtr

    _ <- getOrCreateObject $ requireGlobal conf.globals ("river_layer_shell_v1", 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n R.river_layer_shell_v1_interface (fi v) >>= \p -> return (castPtr p :: R.RiverLayerShellV1)

    windowManager <- getOrCreateObject $ requireGlobal conf.globals ("river_window_manager_v1", 4) $ \r n v -> wl_registry_bind r n river_window_manager_v1_interface v <&> RiverWindowManager

    _ <- getOrCreateObject $ requireGlobal conf.globals ("river_xkb_bindings_v1"  , 1) $ \(WlRegistry r) n v ->
      WL.wl_registry_bind (castPtr r) n R.river_xkb_bindings_v1_interface (fi v) >>= \p -> return (castPtr p :: R.RiverXkbBindingsV1)

    xkbConfig     <- getOrCreateObject $ requireGlobal conf.globals ("river_xkb_config_v1"    , 1) registryBindRiverXkbConfigV1
    io $ riverXkbConfigV1AddListener xkbConfig xkbConfigListener nullPtr
    io $ river_window_manager_v1_add_listener windowManager managerListener nullPtr

    log' "WM: running startup hooks"
    userCodeDef () (startupHook config)

  -- _ <- Posix.installHandler Posix.sigTERM (Posix.CatchInfo $ \_ -> log' "TERM" >> exitFailure) Nothing
  _ <- Posix.installHandler Posix.sigINT (Posix.CatchInfo $ \_ -> log' "INT" >> exitSuccess) Nothing
  _ <- Posix.installHandler Posix.sigQUIT (Posix.CatchInfo $ \_ -> log' "QUIT" >> exitFailure) Nothing
  _ <- Posix.installHandler Posix.sigUSR1 (Posix.Catch $ do
    log' "USR1 - restart"
    runInH $ do
      wm <- getObject
      io $ riverWindowManagerStop wm
      modifyWlObjects $ TM.insert StopReasonRestart
      _ <- userCode (exitHook config)
      log' "waiting for finishing..."
    log' "RESTART"
    runInH $ restart "hswm"
                                          ) Nothing

  forever $ do
    flush_errno <- WL.wl_display_flush display
    when (flush_errno < 0) $ do
      log' "error: flush failed"
      exitFailure
    res <- wl_display_dispatch display
    when (res < 0) $ do
      log' "error: dispatch failed"
      exitFailure

data StopReason = StopReasonNone | StopReasonRestart
  deriving (Eq, Show)

---------------------------------------------------
-- event handling

-- | Runs handleEventHook from the configuration and runs the default handler
-- function if it returned True.
handleWithHook :: Event -> H ()
handleWithHook e = do
  evHook <- asks (handleEventHook . config)
  whenM (userCodeDef True $ getAll `fmap` evHook e) (handleEvent e)

handleEvent :: Event -> H ()
handleEvent (WindowManagerEvent e) = do
  case e of
    WindowManagerOutput _ _ out -> Outputs.added out
    WindowManagerSeat _ _ seat -> Seats.added seat
    WindowManagerWindow _ _ w -> do
      nd <- liftIO $ river_window_v1_get_node w
      let win = def { river_window = w, node = nd }
      window_listener <- getObject
      liftIO $ river_window_v1_add_listener w window_listener nullPtr
      modify $ \s -> s { _windows = _windows s ++ [win] }
      modifyWindowSet $ W.insertUp w

    -- /manage sequence/
    WindowManagerManageStart _ wm -> do
      Outputs.manage >> Seats.manage
      manageWindows
      windows
      void . userCode =<< asks (manageHook . config)
      io (riverWindowManagerManageFinish wm)

    -- /render sequence/
    WindowManagerRenderStart _ wm -> do
      Outputs.render >> Seats.render
      void . userCode =<< asks (renderHook . config)
      io (riverWindowManagerRenderFinish wm)

    WindowManagerUnavailable{} -> do
      log' "error: another window manager already running"
      liftIO exitFailure

    WindowManagerFinished _ _ -> do
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

  -- The window has been closed by the server, perhaps due to an xdg_toplevel.close request or similar.
  -- The server will send no further events on this object and ignore any request other than river_window_v1.destroy made after this event is sent. The client should destroy this object with the river_window_v1.destroy request to free up resources.
handleEvent (WindowEvent (WindowClosed _ w)) = modifyWindow w $ \s -> s
  { closed = True }
handleEvent (WindowEvent (WindowAppId { window, we_app_id })) = modifyWindow window $ \s -> s
  { appId = we_app_id }
handleEvent (WindowEvent (WindowTitle { window, we_title })) = modifyWindow window $ \s -> s
  { title = we_title }
handleEvent (WindowEvent (WindowIdentifier { window, we_identifier })) = do
  modifyWindow window $ \s -> s { identifier = we_identifier }
  let recoverWindow w = do
            modifyWindowSet $ W.mapWindow (\x -> if x == w then window else x) . W.delete window
            modify' $ \s -> s { recoveredWindows = M.delete we_identifier s.recoveredWindows }
  gets (M.lookup we_identifier . recoveredWindows) >>= (`whenJust` recoverWindow)
handleEvent (WindowEvent (WindowDimensions{window, we_width, we_height})) = modifyWindow window $ \s -> s
  { width = fromIntegral we_width, height = fromIntegral we_height }
handleEvent (WindowEvent (WindowDimensionsHint{..})) = modifyWindow window $ \s -> s
  { min_width = fromIntegral we_min_width
  , min_height = fromIntegral we_min_height
  , max_width = fromIntegral we_max_width
  , max_height = fromIntegral we_max_height
  }
handleEvent (WindowEvent (WindowPointerMoveRequested{..}   )) = modifyWindow window $ \s -> s
  { pointer_move_requested = seat }
handleEvent (WindowEvent (WindowPointerResizeRequested{..} )) = modifyWindow window $ \s -> s
  { pointer_resize_requested = seat, pointer_resize_requested_edges = fromIntegral we_edges }

-- Parent { we_parent }
-- DecorationHint { we_hint }
-- MaximizeRequested
-- UnmaximizeRequested
-- FullscreenRequested { output }
-- ExitFullscreenRequested
-- UnreliablePID { we_unreliable_pid }
-- PresentationHint { we_hint }

-- XKB Keyboard events
handleEvent (XkbEvent (XkbKeyPressed dt _)) = do
  xb <- liftIO $ deRefStablePtr (castPtrToStablePtr dt :: StablePtr (XkbBinding SomeAction))
  Seats.execXkbBinding xb

-- unhandled submap keys
handleEvent (XkbSeatEvent (R.RiverXkbBindingsSeatV1AteUnboundKey dt _)) =
  modifySeat (castPtr dt) $ \s -> s { pending_action = S_SUBMAP_CANCEL }

-- Pointer events
handleEvent (PointerEvent (PointerPressed dt _bind)) = do
  xb <- liftIO $ deRefStablePtr (castPtrToStablePtr dt :: StablePtr (PointerBinding SomeAction))
  userCodeDef () $ runner xb.action

-- INPUT configuration
-- Keyboard added
handleEvent (XkbConfigEvent (XkbConfigXkbKeyboard _ xkbConfig xkbKeyboard)) = do
  withObject @RiverXkbKeyboardV1Listener $ \l -> io $ riverXkbKeyboardV1AddListener xkbKeyboard l nullPtr
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardLayout xkbConfig xkbKeyboard)

-- keyboard is removed
handleEvent (XkbKeyboardEvent (KeyboardRemoved _ _kbd)) = return () -- TODO

handleEvent (InputManagerEvent (R.RiverInputManagerV1InputDevice _ _ inputDevice)) = do
  devListener <- getObject
  void $ io $ R.river_input_device_v1_add_listener inputDevice devListener nullPtr

-- shm
handleEvent (WlShmEvent (WL.WlShmFormat _ _ fmt)) = log' $ toText $ "shm format: " ++ ppShmFormat (WL.Wl_shm_format $ fi fmt)

handleEvent _ = return ()

----------------------------------------------------------------------------------

setKeyboardLayout :: RiverXkbConfigV1 -> RiverXkbKeyboardV1 -> XkbRuleNames -> H ()
setKeyboardLayout xkbConfig keyboard layout =
    io (newXkbKeymapFromNames layout) >>= \km ->
    io $ withXkbKeymapFd km $ \fd ->
    riverXkbConfigV1CreateKeymap xkbConfig (fi fd) RiverXkbConfigV1KeymapFormatTextV1
    >>= io . riverXkbKeyboardV1SetKeymap keyboard

manageWindows :: H ()
manageWindows = do
     -- XXX ??
    mapWindows $ \w -> when w.closed (doRemoveWindow w)

    newWindows <- gets _windows >>= \xs -> forM xs $ \w -> do
        --when (w.pointer_move_requested /= invalidSeat) $ seatPointerMove w.pointer_move_requested w
        --when (w.pointer_resize_requested /= invalidSeat) $ seatPointerResize w.pointer_resize_requested w w.pointer_resize_requested_edges
        return (w :: Window) { new = False, pointer_move_requested = invalidSeat, pointer_resize_requested = invalidSeat  }

    modify $ \s -> s { _windows = newWindows }

doRemoveWindow :: Window -> H ()
doRemoveWindow w@Window{} = do
  modifyWindowSet $ W.delete w.river_window
  modify $ \st -> st { _windows = L.filter (\x -> (/= w.river_window) x.river_window) (_windows st) }
  gets _seats >>= \xs -> do
   xs' <- forM xs $ \seat' -> do
     let seat = seat'
          { focused = if focused seat' == w.river_window then invalidWindow else focused seat'
          , hovered = if hovered seat' == w.river_window then invalidWindow else hovered seat'
          , interacted = if interacted seat' == w.river_window then invalidWindow else interacted seat'
          }
     if op_window seat == w.river_window
        then do
            liftIO $ river_seat_v1_op_end seat.river_seat
            return $ seat { op_window = invalidWindow, op = SEAT_OP_NONE }
        else return seat
   modify $ \s -> s { _seats = xs' }
  io $ river_node_v1_destroy w.node
  io $ river_window_v1_destroy w.river_window

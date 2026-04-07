{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}
{-# LANGUAGE MultiWayIf #-}

module Core
  ( module Core
  , module Wayland
  , module HSWM.Core
  ) where

import           HSWM.Core
import           HSWM.Operations
import qualified HSWM.Outputs as Outputs
import qualified HSWM.Seats as Seats
import qualified HSWM.StackSet as W
import           HSWM.Util.Posix
import qualified HSWM.Windows as Windows
import           HSWM.XKB
import           HSWM.Utils

--import qualified River as R
import qualified River.Safe as R
import qualified River.Objects as R
import           Wayland (requireGlobal, removeGlobal, registerGlobal, displayGetRegistry, displayFlush, displayDispatch, displayRoundtrip, displayGetFd)
import qualified Wayland as WL
import qualified Wayland.Client as WL
import qualified Wayland.Client.Extras as WL
import           Wlr

import           Foreign hiding (new, void)
import           Foreign.C.Error
import qualified System.Posix as Posix

startHSWM :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => WL.Display -> HSWMConfig m l -> IO ()
startHSWM wlDisplay config = do
 logOpts <- logOptionsHandle stderr True
 withLogFunc logOpts $ \logFunc -> do
  let runWithLogging = flip runReaderT logFunc

  conf <- HConf (config { layoutHook = Layout (layoutHook config) }) wlDisplay logFunc
    <$> newIORef mempty
    <*> newEmptyTMVarIO
    <*> newTQueueIO
    <*> newEmptyMVar

  let
    mainEvent :: MonadIO m => MainEvent -> m ()
    mainEvent = atomically . writeTQueue conf.eventQueue

  initialState <- io (readStateFile config) >>= \case
    Nothing -> return def { windowset = initialWinSet , windowsetOld = initialWinSet }
            where initialWinSet = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]
    Just s -> return s

  atomically $ putTMVar conf._state initialState
  let stTMVar = conf._state

  let runInH :: H a -> IO a
      runInH a = bracketOnError (atomically $ takeTMVar stTMVar) (atomically . putTMVar stTMVar) $ \st -> do
          (r, st') <- runH conf st a
          atomically $ putTMVar stTMVar st'
          return r

      handleE e = do
        r <- timeout 5000000 $ runInH $ handleWithHook e
        case r of
          Just r -> return r
          Nothing -> runWithLogging $ warn' $ display $ "handling event timed out: " <> tshow e

  runInH $ do
    regL            <- getOrCreateObject $ WL.mkRegistryListener              $ runWithLogging . handleRegistryListenerE conf.globals
    shmL            <- getOrCreateObject $ WL.mkShmListener                   $ \e -> handleE $ WlShmEvent e
    _               <- getOrCreateObject $ WL.mkOutputListener                $ \e -> handleE $ WlOutputEvent e
    _               <- getOrCreateObject $ WL.mkShellSurfaceListener          $ \e -> handleE $ WlShellSurfaceEvent e
    _               <- getOrCreateObject $ WL.mkSeatListener                  $ \e -> handleE $ WlSeatEvent e
    _               <- getOrCreateObject $ WL.mkKeyboardListener              $ \e -> handleE $ WlKeyboardEvent e
    xkbConfigL      <- getOrCreateObject $ R.mkRiverXkbConfigListener         $ \e -> handleE $ XkbConfigEvent e
    _               <- getOrCreateObject $ R.mkRiverXkbKeyboardListener       $ \e -> handleE $ XkbKeyboardEvent e
    _               <- getOrCreateObject $ R.mkRiverXkbBindingListener        $ \e -> handleE $ XkbEvent e
    _               <- getOrCreateObject $ R.mkRiverXkbBindingsSeatListener   $ \e -> handleE $ XkbSeatEvent e
    _               <- getOrCreateObject $ R.mkRiverPointerBindingListener    $ \e -> handleE $ PointerEvent e
    _               <- getOrCreateObject $ R.mkRiverWindowListener            $ \e -> handleE $ WindowEvent e
    _               <- getOrCreateObject $ R.mkRiverSeatListener              $ \e -> handleE $ SeatEvent e
    _               <- getOrCreateObject $ R.mkRiverOutputListener            $ \e -> handleE $ OutputEvent e
    _               <- getOrCreateObject $ R.mkRiverLayerShellOutputListener  $ \e -> handleE $ LayerShellOutputEvent e
    _               <- getOrCreateObject $ R.mkRiverLayerShellSeatListener    $ \e -> handleE $ LayerShellSeatEvent e
    _               <- getOrCreateObject $ R.mkRiverInputDeviceListener       $ \e -> handleE $ InputDeviceEvent e
    libinputConfigL <- getOrCreateObject $ R.mkRiverLibinputConfigListener    $ \e -> handleE $ LibinputConfigEvent e
    _               <- getOrCreateObject $ R.mkRiverLibinputDeviceListener    $ \e -> handleE $ LibinputDeviceEvent e
    inputManagerL   <- getOrCreateObject $ R.mkRiverInputManagerListener      $ \e -> handleE $ InputManagerEvent e
    managerL        <- getOrCreateObject $ R.mkRiverWindowManagerListener     $ \e -> handleE $ WindowManagerEvent e
    foreignListL    <- getOrCreateObject $ WL.mkForeignToplevelListListener   $ \e -> handleE $ ForeignTopLevelListV1 e
    _               <- getOrCreateObject $ WL.mkForeignToplevelHandleListener $ \e -> handleE $ ForeignTopLevelHandleV1 e

    registry <- io $ displayGetRegistry wlDisplay
    io $ WL.listenerAdd registry regL nullPtr

    -- Wait for one roundtrip for the registry listener to become aware of all current globals.
    _ <- io $ displayRoundtrip wlDisplay

    -- expect wl_compositor
    _ <- getOrCreateObject $ requireGlobal conf.globals ("wl_compositor", 6) $ \r n v ->
      WL.Compositor <$> WL.registryBind r n WL.compositorInterface (fi v)

    -- expect wl_shm
    wl_shm <- getOrCreateObject $ requireGlobal conf.globals ("wl_shm", 2) $ \r n v ->
      WL.Shm <$> WL.registryBind r n WL.shmInterface (fi v)

    io $ WL.listenerAdd wl_shm shmL nullPtr

    _ <- getOrCreateObject $ requireGlobal conf.globals ("zwp_input_method_manager_v2", 1) $ \r n v ->
      io $ WL.registryBind r n zwpInputMethodManagerInterface (fi v)  <&> ZwpInputMethodManager

    libinputConfig <- getOrCreateObject $ requireGlobal conf.globals ("river_libinput_config_v1", 1) $ \r n v ->
      WL.registryBind r n R.riverLibinputConfigInterface (fi v) <&> R.RiverLibinputConfig
    io $ R.listenerAdd libinputConfig libinputConfigL nullPtr

    inputManager <- getOrCreateObject $ requireGlobal conf.globals ("river_input_manager_v1", 1) $ \r n v ->
      WL.registryBind r n R.riverInputManagerInterface (fi v) <&> R.RiverInputManager
    io $ R.listenerAdd inputManager inputManagerL nullPtr

    _ <- getOrCreateObject $ requireGlobal conf.globals ("river_layer_shell_v1", 1) $ \r n v ->
      WL.registryBind r n R.riverLayerShellInterface (fi v) <&> R.RiverLayerShell

    windowManager <- getOrCreateObject $ requireGlobal conf.globals ("river_window_manager_v1", 4) $ \r n v ->
      WL.registryBind r n R.riverWindowManagerInterface v <&> R.RiverWindowManager

    _ <- getOrCreateObject $ requireGlobal conf.globals ("river_xkb_bindings_v1", 2) $ \r n v ->
      WL.registryBind r n R.riverXkbBindingsInterface (fi v) <&> R.RiverXkbBindings

    xkbConfig <- getOrCreateObject $ requireGlobal conf.globals ("river_xkb_config_v1", 1) $ \r n v ->
      WL.registryBind r n R.riverXkbConfigInterface (fi v) <&> R.RiverXkbConfig

    io $ R.listenerAdd xkbConfig xkbConfigL nullPtr
    io $ R.listenerAdd windowManager managerL nullPtr

    foreignList  <- getOrCreateObject $ requireGlobal conf.globals ("ext_foreign_toplevel_list_v1", 1) $ \r n v ->
      WL.registryBind r n WL.foreignToplevelListInterface (fi v) <&> WL.ForeignToplevelList

    io $ WL.listenerAdd foreignList foreignListL nullPtr

    log' "WM: running startup hooks"
    userCodeDef () (startupHook config)

    setXCursorTheme

    -- Create an additional seat; useful for testing
    --io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

  runWithLogging $ do
    log' "WM: Installing signal handlers..."
    _ <- io $ Posix.installHandler Posix.sigTERM (Posix.Catch $ runWithLogging $ mainEvent $ MainExit "TERM") Nothing
    _ <- io $ Posix.installHandler Posix.sigINT  (Posix.Catch $ runWithLogging $ mainEvent $ MainExit "INT") Nothing
    _ <- io $ Posix.installHandler Posix.sigQUIT (Posix.Catch $ runWithLogging $ mainEvent $ MainExit "QUIT") Nothing
    _ <- io $ Posix.installHandler Posix.sigUSR2 (Posix.Catch $ runWithLogging $ do
          log' "USR2 - reload / restart"
          prog <- io getProgramPath
          mainEvent $ MainRestart prog
                                            ) Nothing
    return ()

  -- main loop
  -- However, if you have a more sophisticated application, you can build your own event loop in any manner you please,
  -- and obtain the Wayland display's file descriptor with wl_display_get_fd.
  --
  -- Upon POLLIN events, call wl_display_dispatch to process incoming events.
  --
  -- To flush outgoing requests, call wl_display_flush.

  waylandFd <- displayGetFd wlDisplay

  let pollfdWayland = PollFd (Posix.Fd waylandFd) pOLLIN 0

  _ <- forkIO $ withPollFds [pollfdWayland] $ \(fds, fdsLen) -> do
    let wlPollFd = fds
        whenRevent fd ev f = do
          r <- isRevent fd ev
          when r f
    runWithLogging $ forever $ do
      -- flush outgoing requests
      -- TODO should catch the IOError errno now
      r_flush <- io $ displayFlush wlDisplay
      errno <- io $ getErrno
      if | errno == eAGAIN -> io $ setPollEvents wlPollFd (pOLLIN .|. pOLLOUT)
         | r_flush == -1   -> io $ mainEvent $ MainExit "flush failed"
         | otherwise       -> io $ setPollEvents wlPollFd pOLLIN

      io $ c_poll fds fdsLen PollBlock >>= \r -> runWithLogging $ case r of
        PollError -> mainEvent $ MainExit "main: poll error"
        PollTimeout -> return ()
        PollResult _ -> do
          io $ whenRevent wlPollFd pOLLHUP $ mainEvent $ MainExit "disconnected by compositor"
          io $ whenRevent wlPollFd pOLLIN $ do
            -- process incoming events
            res <- io $ displayDispatch wlDisplay
            when (res < 0) $ mainEvent $ MainExit "error: dispatch failed"

  let main = runWithLogging $ do
        ev <- atomically $ readTQueue conf.eventQueue
        case ev of
          MainExit s -> do
            log' $ display $ "main: exiting: " <> toText s
            void . io . runInH $ userCode config.exitHook
            exitFailure
          MainRestart prog -> do
            log' "[main] restaring"
            io . runInH $ restart prog
  main

---------------------------------------------------
-- event handling

handleRegistryListenerE :: (MonadIO m, MonadReader env m, HasLogFunc env) => IORef WL.RegistryCache -> WL.RegistryEvent -> m ()
handleRegistryListenerE ref (WL.RegistryGlobal _ registry name iface version) = do
    log' $ display $ "[GLOBALS] new registry item: " <> toText iface <> " version=" <> tshow version <> " (" <> tshow name <> ")"
    modifyIORef ref $ registerGlobal name iface version registry
handleRegistryListenerE ref (WL.RegistryGlobalRemove _ _ name) = do
    log' $ display $ "[GLOBALS] registry entry removed: " <> tshow name
    modifyIORef ref (removeGlobal name)

-- | Runs handleEventHook from the configuration and runs the default handler
-- function if it returned True.
handleWithHook :: Event -> H ()
handleWithHook e = do
  evHook <- asks (handleEventHook . config)
  whenM (userCodeDef True $ getAll `fmap` evHook e) (handleEvent e)

doMVarAction :: (H a, MVar a) -> H ()
doMVarAction (m, var) = m >>= io . putMVar var

handleEvent :: Event -> H ()
handleEvent (WindowManagerEvent e) = case e of
    R.RiverWindowManagerOutput _ _ out -> Outputs.added out
    R.RiverWindowManagerSeat _ _ seat -> Seats.added seat
    R.RiverWindowManagerWindow _ _ w -> Windows.added w

    -- /manage sequence/
    R.RiverWindowManagerManageStart _ wm -> do
      Outputs.manage >> Seats.manage >> Windows.manage
      maybe (pure ()) doMVarAction =<< io . tryTakeMVar =<< asks blockForManage
      void . userCode =<< asks (manageHook . config)
      io (R.riverWindowManagerManageFinish wm)

    -- /render sequence/
    R.RiverWindowManagerRenderStart _ wm -> do
      Outputs.render >> Seats.render >> Windows.render
      void . userCode =<< asks (renderHook . config)
      io (R.riverWindowManagerRenderFinish wm)

    R.RiverWindowManagerUnavailable{} -> do
      log' "error: another window manager already running"
      io $ Posix.raiseSignal Posix.sigTERM

    R.RiverWindowManagerFinished _ wm -> do
      io $ R.objectDestroy wm
      log' "river_window_manage_v1 finished, exiting."
      io $ Posix.raiseSignal Posix.sigINT

    _ -> return ()

handleEvent (OutputEvent e)           = Outputs.handle e
handleEvent (LayerShellOutputEvent e) = Outputs.handleLayerShell e
handleEvent (WlOutputEvent e)         = Outputs.handleWlOutput e
handleEvent (SeatEvent e)             = Seats.handleEvent e
handleEvent (LayerShellSeatEvent e)   = Seats.handleLayerShellSeat e
handleEvent (WlSeatEvent e)           = Seats.handleWlSeatEvent e
handleEvent (WindowEvent e)           = Windows.handleEvent e
handleEvent (XkbEvent e)              = Seats.handleXkbBindingEvent e -- XKB Keyboard events
handleEvent (XkbSeatEvent e)          = Seats.handleXkbBindingsSeatEvent e -- XKB Keyboard events
handleEvent (PointerEvent e)          = Seats.handlePointerEvent e -- Pointer events

-- INPUT configuration
handleEvent (InputManagerEvent (R.RiverInputManagerInputDevice _ _ dev)) = do
  l <- getObject
  io $ R.listenerAdd dev l nullPtr
  asks (repeatInfo . config) >>= io . (`whenJust` uncurry (R.riverInputDeviceSetRepeatInfo dev)) --  repeatRate repeatDelay
  --io $ R.riverInputDeviceAssignToSeat dev (Just "default")

-- handleEvent (InputDeviceEvent (R.RiverInputDeviceType' _ _ inputDevice)) = return ()

-- Keyboard added/removed
handleEvent (XkbConfigEvent (R.RiverXkbConfigXkbKeyboard _ xkbConfig xkbKeyboard)) = do
  withObject @R.RiverXkbKeyboardListener $ \l -> io $ R.listenerAdd xkbKeyboard l nullPtr
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardLayout xkbConfig xkbKeyboard)
handleEvent (XkbKeyboardEvent (R.RiverXkbKeyboardRemoved _ _kbd)) = return () -- TODO

handleEvent (LibinputConfigEvent (R.RiverLibinputConfigLibinputDevice _ _ dev)) = do
  l <- getObject
  io $ WL.listenerAdd dev l nullPtr

handleEvent (ForeignTopLevelListV1 (WL.ForeignToplevelListToplevel _ _ fh)) = do
  l <- getObject
  io $ WL.listenerAdd fh l nullPtr

handleEvent _ = return ()

----------------------------------------------------------------------------------

setKeyboardLayout :: R.RiverXkbConfig -> R.RiverXkbKeyboard -> XkbRuleNames -> H ()
setKeyboardLayout xkbConfig keyboard layout =
    io (newXkbKeymapFromNames layout) >>= \km ->
    io $ withXkbKeymapFd km $ \fd ->
    R.riverXkbConfigCreateKeymap xkbConfig (fi fd) R.RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1 -- RiverXkbConfigKeymapFormatText
    >>= io . R.riverXkbKeyboardSetKeymap keyboard

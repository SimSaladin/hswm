{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}

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
import qualified HSWM.InputConfig as InputConfig
import qualified HSWM.BufferPool as BP

--import qualified River as R
import qualified River.Objects as R
import           Wayland (requireGlobal, removeGlobal, registerGlobal)
import           Wayland.Client (displayGetRegistry, displayFlush, displayDispatch, displayRoundtrip, displayGetFd)
import qualified Wayland as WL
import qualified Wayland.Client as WL
import qualified Wayland.Client.Extras as WL
import qualified Bindings.Wayland.ExtSessionLockV1 as SL
import           Wlr

import           Foreign hiding (new, void)
import System.IO.Error
import qualified System.Posix as Posix

startHSWM :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => WL.Display -> HSWMConfig m l -> IO ()
startHSWM wlDisplay config = do
 logOpts <- logOptionsHandle stderr True <&> setLogUseLoc False
 withLogFunc logOpts $ \logFunc -> do
  let runWithLogging = flip runReaderT logFunc

  conf <- HConf False Nothing (config { layoutHook = Layout (layoutHook config) }) wlDisplay logFunc
    <$> newIORef mempty
    <*> newEmptyTMVarIO
    <*> newTQueueIO
    <*> newTQueueIO
    <*> newTQueueIO
    <*> newTMVarIO def

  let
    mainEvent :: MonadIO m => MainEvent -> m ()
    mainEvent = atomically . writeTQueue conf.eventQueue

  initialState <- io (readStateFile config) >>= \case
    Nothing -> return def { windowset = initialWinSet , windowsetOld = initialWinSet }
            where initialWinSet = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]
    Just s -> return s

  atomically $ putTMVar conf._state initialState

  let runInH :: H a -> IO a
      runInH = runH conf

      handleE e = do
        r <- timeout 5000000 $ runInH $ handleWithHook e
        case r of
          Just r -> return r
          Nothing -> runInH $ warn' $ display $ "handling event timed out: " <> tshow e

  runH conf $ do
    regL            <- getOrCreateObject $ WL.mkRegistryListener              $ runInH . WL.handleRegistryEvent conf.globals
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
    _               <- getOrCreateObject $ SL.mkSessionLockListener           $ handleE . SessionLockEvent
    logDebug "created event listeners"

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

    _ <- getOrCreateObject $ requireGlobal conf.globals ("ext_session_lock_manager_v1", 1) $ \r n v ->
      WL.registryBind r n SL.sessionLockManagerInterface (fi v) <&> SL.SessionLockManager


    logDebug "WM: running startup hooks"
    void $ userCode (startupHook config)

    -- Create an additional seat; useful for testing
    --io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

    log' "WM: Installing signal handlers..."
    _ <- io $ Posix.installHandler Posix.sigTERM (Posix.Catch $ runInH $ mainEvent $ MainExit "TERM") Nothing
    _ <- io $ Posix.installHandler Posix.sigINT  (Posix.Catch $ runInH $ mainEvent $ MainExit "INT") Nothing
    _ <- io $ Posix.installHandler Posix.sigQUIT (Posix.Catch $ runInH $ mainEvent $ MainExit "QUIT") Nothing
    _ <- io $ Posix.installHandler Posix.sigUSR2 (Posix.Catch $ runInH $ do
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

  pollAsync <- async $ withPollFds [pollfdWayland] $ \(fds, fdsLen) -> do
    let wlPollFd = fds
        whenRevent fd ev f = do
          r <- isRevent fd ev
          when r f
    runWithLogging $ forever $ do
      -- flush outgoing requests
      catch (void $ io (displayFlush wlDisplay)) $ \case
        e | isFullError e -> io $ setPollEvents wlPollFd (pOLLIN .|. pOLLOUT)
          | otherwise -> io $ mainEvent $ MainExit $ "flush failed: " ++ show e

      io $ c_poll fds fdsLen PollBlock >>= \r -> runWithLogging $ case r of
        PollError -> mainEvent $ MainExit "main: poll error"
        PollTimeout -> return ()
        PollResult _ -> do
          io $ whenRevent wlPollFd pOLLHUP $ mainEvent $ MainExit "disconnected by compositor"
          io $ whenRevent wlPollFd pOLLIN $ do
            -- process incoming events
            catch (void $ io $ displayDispatch wlDisplay) $ \case
              (e :: IOError) -> mainEvent $ MainExit $ "error: dispatch failed: " ++ show e

  let main = runInH $ do
        ev <- atomically $ readTQueue conf.eventQueue
        case ev of
          MainExit s -> do
            log' $ display $ "main: exiting: " <> toText s
            void $ userCode config.exitHook
            exitFailure
          MainRestart prog -> do
            log' "[main] restaring"
            restart prog
  link pollAsync
  main

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
    R.RiverWindowManagerOutput _ _ out -> Outputs.added out
    R.RiverWindowManagerSeat _ _ seat -> Seats.added seat
    R.RiverWindowManagerWindow _ _ w -> Windows.added w

    -- /manage sequence/
    R.RiverWindowManagerManageStart _ wm -> do
      runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingManageQL)
      Outputs.manage >> Seats.manage >> Windows.manage
      void . userCode =<< asks (manageHook . config)
      asks (logHook . config) >>= userCodeDef ()
      io (R.riverWindowManagerManageFinish wm)

    -- /render sequence/
    R.RiverWindowManagerRenderStart _ wm -> do
      runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingRenderQL)
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

    R.RiverWindowManagerSessionLocked _ wm -> do
      q <- asks (view pendingManageQL)
      atomically $ writeTQueue q $ do
        mapSeats $ \s ->
          io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) s.xkb_bindings

    R.RiverWindowManagerSessionUnlocked _ wm -> do
      q <- asks (view pendingManageQL)
      atomically $ writeTQueue q $ do
        mapSeats $ \s ->
          io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingEnable . xkb_binding) s.xkb_bindings

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
handleEvent (InputManagerEvent e)     = InputConfig.handleInputManagerEvent e
handleEvent (InputDeviceEvent e)      = InputConfig.handleInputDeviceEvent e
handleEvent (LibinputConfigEvent e)   = InputConfig.handleLibinputEvent e
handleEvent (XkbConfigEvent e)        = InputConfig.handleXkbConfigEvent e
handleEvent (XkbKeyboardEvent e)      = InputConfig.handleXkbKeyboardEvent e

handleEvent (SessionLockEvent e) =
  case e of
    SL.SessionLockLocked _ _slock -> pure ()
    SL.SessionLockFinished _ slock ->
      io $ SL.sessionLockUnlockAndDestroy slock


handleEvent (ForeignTopLevelListV1 (WL.ForeignToplevelListToplevel _ _ fh)) = do
  l <- getObject
  io $ WL.listenerAdd fh l nullPtr

handleEvent _ = return ()

lockSession :: H ()
lockSession = do
  sm <- getObject
  slock <- io $ SL.sessionLockManagerLock sm
  outputs <- runInHS $ gets _outputs
  compositor <- getObject
  -- TODO should use shared pool
  bp <- BP.newImageBufferPool

  slsListener <- io $ SL.mkSessionLockSurfaceListener $ \case
    SL.SessionLockSurfaceConfigure ud sls serial w h -> do
      let surface = WL.Surface $ castPtr ud
      let scale = 1
      SL.sessionLockSurfaceAckConfigure sls serial
      region <- io $ WL.compositorCreateRegion compositor
      io $ WL.regionAdd region 0 0 (fi w) (fi h)
      io $ WL.surfaceSetOpaqueRegion surface region
      io $ WL.objectDestroy region
      buf <- io $ BP.nextBuffer bp (fi $ w * scale) (fi $ h * scale)
      io $ WL.surfaceAttach surface buf.buf 0 0
      io $ WL.surfaceDamageBuffer surface 0 0 (fi $ w * scale) (fi $ h * scale)
      io $ WL.surfaceCommit surface

  -- create sessionlock surfaces
  forM_ outputs $ \o -> do
    wo <- Outputs.getWlOutput o.river_output
    surface <- io $ WL.compositorCreateSurface compositor
    sls <- io $ SL.sessionLockGetLockSurface slock surface wo
    WL.listenerAdd sls slsListener (surface.unwrap)

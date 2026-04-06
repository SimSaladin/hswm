{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}
{-# LANGUAGE MultiWayIf #-}

module Core
  ( module Core
  , module Wayland
  , module River
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
import HSWM.Utils

import           River
import qualified River.Safe as R
import qualified River.Objects as R
import           Wayland
import qualified Wayland.Client as WL
import qualified Wayland.Client.Extras as WL
import           Wlr

import           Data.IORef
import           Foreign hiding (new, void)
import           Foreign.C.Error
import           System.Exit
import qualified System.Posix as Posix
import           System.Timeout

startHSWM :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => Display -> HSWMConfig l -> IO ()
startHSWM display config = withStdoutLogging $ do
  conf <- HConf (config { layoutHook = Layout (layoutHook config) }) display
    <$> newIORef mempty
    <*> newEmptyTMVarIO
    <*> newTQueueIO

  let mainEvent = atomically . writeTQueue conf.eventQueue

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
          Nothing -> do
            warn' $ "handling event timed out: " <> tshow e

  runInH $ do
    regL            <- getOrCreateObject $ WL.mkRegistryListener              $ handleRegistryListenerE conf.globals
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
    libinputDeviceL <- getOrCreateObject $ R.mkRiverLibinputDeviceListener    $ \e -> handleE $ LibinputDeviceEvent e
    inputManagerL   <- getOrCreateObject $ R.mkRiverInputManagerListener      $ \e -> handleE $ InputManagerEvent e
    managerL        <- getOrCreateObject $ R.mkRiverWindowManagerListener     $ \e -> handleE $ WindowManagerEvent e
    foreignListL    <- getOrCreateObject $ WL.mkForeignToplevelListListener   $ \e -> handleE $ ForeignTopLevelListV1 e
    _               <- getOrCreateObject $ WL.mkForeignToplevelHandleListener $ \e -> handleE $ ForeignTopLevelHandleV1 e

    _               <- getOrCreateObject $ mkZwpInputPopupSurfaceV2Listener       $ handleE . ZwpIM2PopupSurfaceE
    _               <- getOrCreateObject $ mkZwpInputMethodKeyboardGrabV2Listener $ handleE . ZwpIM2KeyboardGrabE
    _               <- getOrCreateObject $ mkZwpInputMethodV2Listener             $ handleE . ZwpIM2E

    registry <- io $ displayGetRegistry display
    io $ WL.listenerAdd registry regL nullPtr

    -- Wait for one roundtrip for the registry listener to become aware of all current globals.
    _ <- io $ displayRoundtrip display

    -- expect wl_compositor
    _ <- getOrCreateObject $ requireGlobal conf.globals ("wl_compositor", 6) $ \r n v ->
      WL.Compositor <$> WL.registryBind r n WL.compositorInterface (fi v)

    -- expect wl_shm
    wl_shm <- getOrCreateObject $ requireGlobal conf.globals ("wl_shm", 2) $ \r n v ->
      WL.Shm <$> WL.registryBind r n WL.shmInterface (fi v)

    io $ WL.listenerAdd wl_shm shmL nullPtr

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

    im2manager <- getOrCreateObject $ requireGlobal conf.globals ("zwp_input_method_manager_v2", 1) $ \r n v ->
      io $ WL.registryBind r n zwpInputMethodManagerV2Interface (fi v)  <&> ZwpInputMethodManagerV2

    log' "WM: running startup hooks"
    userCodeDef () (startupHook config)

    setXCursorTheme

    -- Create an additional seat; useful for testing
    --io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

  log' "WM: Installing signal handlers..."
  _ <- Posix.installHandler Posix.sigTERM (Posix.Catch $ mainEvent $ MainExit "TERM") Nothing
  _ <- Posix.installHandler Posix.sigINT  (Posix.Catch $ mainEvent $ MainExit "INT") Nothing
  _ <- Posix.installHandler Posix.sigQUIT (Posix.Catch $ mainEvent $ MainExit "QUIT") Nothing
  _ <- Posix.installHandler Posix.sigUSR2 (Posix.Catch $ do
        log' "USR2 - reload / restart"
        prog <- getProgramPath
        mainEvent $ MainRestart prog
                                          ) Nothing

  -- main loop
  -- However, if you have a more sophisticated application, you can build your own event loop in any manner you please,
  -- and obtain the Wayland display's file descriptor with wl_display_get_fd.
  --
  -- Upon POLLIN events, call wl_display_dispatch to process incoming events.
  --
  -- To flush outgoing requests, call wl_display_flush.

  waylandFd <- displayGetFd display

  let pollfdWayland = PollFd (Posix.Fd waylandFd) pOLLIN 0

  _ <- forkIO $ withPollFds [pollfdWayland] $ \(fds, fdsLen) -> do
    let wlPollFd = fds
        whenRevent fd ev f = do
          r <- isRevent fd ev
          when r f
    forever $ do
      -- flush outgoing requests
      -- TODO should catch the IOError errno now
      r_flush <- displayFlush display
      errno <- getErrno
      if | errno == eAGAIN -> setPollEvents wlPollFd (pOLLIN .|. pOLLOUT)
         | r_flush == -1 -> mainEvent $ MainExit "flush failed"
         | otherwise -> setPollEvents wlPollFd pOLLIN

      c_poll fds fdsLen PollBlock >>= \case
        PollError -> mainEvent $ MainExit "main: poll error"
        PollTimeout -> return ()
        PollResult _ -> do
          whenRevent wlPollFd pOLLHUP $ mainEvent $ MainExit "disconnected by compositor"
          whenRevent wlPollFd pOLLIN $ do
            -- process incoming events
            res <- displayDispatch display
            when (res < 0) $ mainEvent $ MainExit "error: dispatch failed"

  let main = do
        ev <- atomically $ readTQueue conf.eventQueue
        case ev of
          MainExit s -> do
            log' $ "main: exiting: " <> toText s
            void $ runInH $ userCode config.exitHook
            exitFailure
          MainRestart prog -> do
            log' "[main] restaring"
            runInH $ restart prog
  main

---------------------------------------------------
-- event handling

handleRegistryListenerE :: IORef RegistryCache -> WL.RegistryEvent -> IO ()
handleRegistryListenerE ref (WL.RegistryGlobal _ registry name iface version) = do
    log' $ "[GLOBALS] new registry item: " <> toText iface <> " version=" <> tshow version <> " (" <> tshow name <> ")"
    modifyIORef ref $ registerGlobal name iface version registry
handleRegistryListenerE ref (WL.RegistryGlobalRemove _ _ name) = do
    log' $ "[GLOBALS] registry entry removed: " <> tshow name
    modifyIORef ref (removeGlobal name)

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
      Outputs.manage >> Seats.manage >> Windows.manage
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
-- Keyboard added
handleEvent (XkbConfigEvent (R.RiverXkbConfigXkbKeyboard _ xkbConfig xkbKeyboard)) = do
  withObject @R.RiverXkbKeyboardListener $ \l -> io $ R.listenerAdd xkbKeyboard l nullPtr
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardLayout xkbConfig xkbKeyboard)

-- keyboard is removed
handleEvent (XkbKeyboardEvent (R.RiverXkbKeyboardRemoved _ _kbd)) = return () -- TODO

handleEvent (InputManagerEvent (R.RiverInputManagerInputDevice _ _ dev)) = do
  l <- getObject
  io $ R.listenerAdd dev l nullPtr
  asks (repeatInfo . config) >>= io . (`whenJust` uncurry (R.riverInputDeviceSetRepeatInfo dev)) --  repeatRate repeatDelay
  --io $ R.riverInputDeviceAssignToSeat dev (Just "default")

-- handleEvent (InputDevicEvent (R.RiverInputDeviceType' _ _ inputDevice)) = return ()

handleEvent (ForeignTopLevelListV1 (WL.ForeignToplevelListToplevel _ _ fh)) = do
    l <- getObject
    _ <- io $ WL.listenerAdd fh l nullPtr
    return ()

handleEvent (LibinputConfigEvent (R.RiverLibinputConfigLibinputDevice _ _ dev)) = do
  l <- getObject
  io $ WL.listenerAdd dev l nullPtr
  return ()

handleEvent _ = return ()

----------------------------------------------------------------------------------

setKeyboardLayout :: R.RiverXkbConfig -> R.RiverXkbKeyboard -> XkbRuleNames -> H ()
setKeyboardLayout xkbConfig keyboard layout =
    io (newXkbKeymapFromNames layout) >>= \km ->
    io $ withXkbKeymapFd km $ \fd ->
    R.riverXkbConfigCreateKeymap xkbConfig (fi fd) R.RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1 -- RiverXkbConfigKeymapFormatText
    >>= io . R.riverXkbKeyboardSetKeymap keyboard

testIM2 :: H ()
testIM2 = do
  im2manager <- getObject
  mapSeats $ \seat -> do
    im2 <- io $ zwpInputMethodManagerV2GetInputMethod im2manager seat.wl_seat
    putObject im2
    l <- getObject
    io $ WL.listenerAdd im2 l nullPtr

    log' "Grabbing keyboard"
    kbGrab <- io $ zwpInputMethodV2GrabKeyboard im2
    kbgL <- getObject
    io $ WL.listenerAdd kbGrab kbgL nullPtr

{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}

-- |
-- Module      : HSWM.Main
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Main
  ( module HSWM.Main,
    module HSWM.Core,
    module Wayland,
  )
where

import Bindings.Wayland.FractionalScaleV1 qualified as FS
import Bindings.Wayland.Viewporter qualified as VP
import Bindings.Wayland.WlrLayerShellUnstableV1 qualified as Wlr
import Bindings.Wayland.WlrOutputManagementUnstableV1 qualified as Wlr
import Bindings.Wayland.XdgOutputUnstableV1 qualified as Zdg
import Foreign hiding (new, void)
import HSWM.Core
import HSWM.InputConfig qualified as InputConfig
import HSWM.Operations
import HSWM.Outputs qualified as Outputs
import HSWM.Seats qualified as Seats
import HSWM.StackSet qualified as W
import HSWM.Util.Posix
import HSWM.Utils
import HSWM.Windows qualified as Windows
import Bindings.River qualified as R
import System.IO.Error
import System.Posix qualified as Posix
import Wayland
import Wayland qualified as WL
import Bindings.Wayland.Client
  ( displayDispatch,
    displayFlush,
    displayGetFd,
    displayGetRegistry,
    displayRoundtrip,
  )
import Bindings.Wayland.Client qualified as WL
import Bindings.Wayland.WlrInputMethodUnstableV2 as Wlr
import Bindings.Wayland.Protocol.ForeignTopLevelListV1 as WL

hswm :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig m l -> IO ()
hswm conf = do
  installSignalHandlers
  -- logOpts <- logOptionsHandle stderr True <&> setLogUseLoc False
  -- withLogFunc logOpts $ \logFunc -> flip runReaderT logFunc $ do
  display <- WL.displayConnect Nothing
  startHSWM display conf

startHSWM :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => WL.Display -> HSWMConfig m l -> IO ()
startHSWM wlDisplay config = do
    let logFunc = defaultOutput stderr

    conf <- HConf False Nothing (config {layoutHook = Layout (layoutHook config)}) wlDisplay logFunc
        <$> newIORef mempty
        <*> newEmptyTMVarIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTMVarIO def

    initialState <- io (readStateFile config) >>= \case
        Nothing -> return def {windowset = initialWinSet, windowsetOld = initialWinSet}
          where
            initialWinSet = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]
        Just s -> return s

    atomically $ putTMVar conf._state initialState

    let runInH :: H a -> IO a
        runInH = runH conf

        mainEvent :: (MonadIO m) => MainEvent -> m ()
        mainEvent = atomically . writeTQueue conf.eventQueue

        handleE e = do
          r <- timeout 5000000 $ runInH $ handleWithHook e
          case r of
            Just r -> return r
            Nothing -> runInH $ logWarn $ "handling event timed out" :# [ "ex" .= show e ]

    runH conf $ do
      regL <- getOrCreateObjectIO $ WL.mkRegistryListener $ runInH . WL.handleRegistryEvent conf.globals
      shmL <- getOrCreateObjectIO $ WL.mkShmListener $ \e -> handleE $ WlShmEvent e
      _ <- getOrCreateObjectIO $ WL.mkOutputListener $ \e -> handleE $ WlOutputEvent e
      _ <- getOrCreateObjectIO $ WL.mkShellSurfaceListener $ \e -> handleE $ WlShellSurfaceEvent e
      _ <- getOrCreateObjectIO $ WL.mkSeatListener $ \e -> handleE $ WlSeatEvent e
      _ <- getOrCreateObjectIO $ WL.mkKeyboardListener $ \e -> handleE $ WlKeyboardEvent e
      _ <- getOrCreateObjectIO $ WL.mkPointerListener $ \e -> handleE $ WlPointerEvent e
      xkbConfigL <- getOrCreateObjectIO $ R.mkRiverXkbConfigListener $ \e -> handleE $ XkbConfigEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverXkbKeyboardListener $ \e -> handleE $ XkbKeyboardEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverXkbBindingListener $ \e -> handleE $ XkbEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverXkbBindingsSeatListener $ \e -> handleE $ XkbSeatEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverPointerBindingListener $ \e -> handleE $ PointerEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverWindowListener $ \e -> handleE $ WindowEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverSeatListener $ \e -> handleE $ SeatEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverOutputListener $ \e -> handleE $ OutputEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverLayerShellOutputListener $ \e -> handleE $ LayerShellOutputEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverLayerShellSeatListener $ \e -> handleE $ LayerShellSeatEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverInputDeviceListener $ \e -> handleE $ InputDeviceEvent e
      libinputConfigL <- getOrCreateObjectIO $ R.mkRiverLibinputConfigListener $ \e -> handleE $ LibinputConfigEvent e
      _ <- getOrCreateObjectIO $ R.mkRiverLibinputDeviceListener $ \e -> handleE $ LibinputDeviceEvent e
      inputManagerL <- getOrCreateObjectIO $ R.mkRiverInputManagerListener $ \e -> handleE $ InputManagerEvent e
      managerL <- getOrCreateObjectIO $ R.mkRiverWindowManagerListener $ \e -> handleE $ WindowManagerEvent e
      foreignListL <- getOrCreateObjectIO $ WL.mkForeignToplevelListListener $ \e -> handleE $ ForeignTopLevelListV1 e
      _ <- getOrCreateObjectIO $ WL.mkForeignToplevelHandleListener $ \e -> handleE $ ForeignTopLevelHandleV1 e
      _ <- getOrCreateObjectIO $ Zdg.mkOutputListener $ \e -> handleE $ ZdgOutputEvent e
      wlrOmL <- getOrCreateObjectIO $ Wlr.mkOutputManagerListener $ \e -> handleE $ WlrOutputManagerEvent e
      _ <- getOrCreateObjectIO $ Wlr.mkOutputHeadListener $ \e -> handleE $ WlrOutputHeadEvent e

      logDebug "created event listeners"

      registry <- io $ displayGetRegistry wlDisplay
      io $ WL.listenerAdd registry regL nullPtr

      -- Wait for one roundtrip for the registry listener to become aware of all current globals.
      _ <- io $ displayRoundtrip wlDisplay

      -- Bind initial globals
      _ <- bindGlobalWith_ ("wl_compositor", 4) WL.compositorInterface WL.Compositor
      _ <- bindGlobalWith  ("wl_shm", 2) WL.shmInterface WL.Shm [(shmL, nullPtr)]
      _ <- bindGlobalWith_ ("zwp_input_method_manager_v2", 1) zwpInputMethodManagerInterface ZwpInputMethodManager
      _ <- bindGlobalWith  ("river_libinput_config_v1", 1) R.riverLibinputConfigInterface R.RiverLibinputConfig [(libinputConfigL, nullPtr)]
      _ <- bindGlobalWith  ("river_input_manager_v1", 1) R.riverInputManagerInterface R.RiverInputManager [(inputManagerL, nullPtr)]
      _ <- bindGlobalWith_ ("river_layer_shell_v1", 1) R.riverLayerShellInterface R.RiverLayerShell
      _ <- bindGlobalWith  ("river_window_manager_v1", 4) R.riverWindowManagerInterface R.RiverWindowManager [(managerL, nullPtr)]
      _ <- bindGlobalWith_ ("river_xkb_bindings_v1", 2) R.riverXkbBindingsInterface R.RiverXkbBindings
      _ <- bindGlobalWith  ("river_xkb_config_v1", 1) R.riverXkbConfigInterface R.RiverXkbConfig [(xkbConfigL, nullPtr)]
      _ <- bindGlobalWith  ("ext_foreign_toplevel_list_v1", 1) WL.foreignToplevelListInterface WL.ForeignToplevelList [(foreignListL, nullPtr)]
      _ <- bindGlobalWith_ ("zxdg_output_manager_v1", 3) Zdg.outputManagerInterface Zdg.OutputManager
      _ <- bindGlobalWith  ("zwlr_output_manager_v1", 4) Wlr.outputManagerInterface Wlr.OutputManager [(wlrOmL, nullPtr)]
      _ <- bindGlobalWith_ ("zwlr_layer_shell_v1", 4) Wlr.layerShellInterface Wlr.LayerShell
      _ <- bindGlobalWith_ ("wp_fractional_scale_manager_v1", 1) FS.fractionalScaleManagerInterface FS.FractionalScaleManager
      _ <- bindGlobalWith_ ("wp_viewporter", 1) VP.viewporterInterface VP.Viewporter

      logDebug "running startup hooks"
      void $ userCode (startupHook config)

      -- Create an additional seat; useful for testing
      -- io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

      log' "installing signal handlers"
      _ <- io $ Posix.installHandler Posix.sigTERM (Posix.Catch $ runInH $ mainEvent $ MainExit "TERM") Nothing
      _ <- io $ Posix.installHandler Posix.sigINT (Posix.Catch $ runInH $ mainEvent $ MainExit "INT") Nothing
      _ <- io $ Posix.installHandler Posix.sigQUIT (Posix.Catch $ runInH $ mainEvent $ MainExit "QUIT") Nothing
      _ <- io $ Posix.installHandler Posix.sigUSR2 (Posix.Catch $ runInH $ io getProgramPath >>= mainEvent . MainRestart) Nothing
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
      forever $ do
        -- flush outgoing requests
        catch (void $ io (displayFlush wlDisplay)) $ \case
          e
            | isFullError e -> io $ setPollEvents wlPollFd (pOLLIN .|. pOLLOUT)
            | otherwise -> io $ mainEvent $ MainExit $ "flush failed: " ++ show e

        io $
          c_poll fds fdsLen PollBlock >>= \r -> flip runLoggingT logFunc $ case r of
            PollError -> mainEvent $ MainExit "main: poll error"
            PollTimeout -> return ()
            PollResult _ -> do
              io $ whenRevent wlPollFd pOLLHUP $ mainEvent $ MainExit "disconnected by compositor"
              io $ whenRevent wlPollFd pOLLIN $ do
                -- process incoming events
                catch (void $ io $ displayDispatch wlDisplay) $ \case
                  (e :: IOError) -> mainEvent $ MainExit $ "error: dispatch failed: " ++ show e

    let main = runInH $ forever $ do
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
    --logDebug "main: manage start"
    runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingManageQL)
    Outputs.manage >> Seats.manage >> Windows.manage
    asks (logHook . config) >>= userCodeDef ()
    io (R.riverWindowManagerManageFinish wm)
    --logDebug "main: manage finished"

  -- /render sequence/
  R.RiverWindowManagerRenderStart _ wm -> do
    --logDebug "main: render start"
    runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingRenderQL)
    Outputs.render >> Seats.render >> Windows.render
    void . userCode =<< asks (renderHook . config)
    io (R.riverWindowManagerRenderFinish wm)
    --logDebug "main: render finished"

  R.RiverWindowManagerUnavailable {} -> do
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

handleEvent (OutputEvent e) = Outputs.handle e
handleEvent (LayerShellOutputEvent e) = Outputs.handleLayerShell e
handleEvent (WlOutputEvent e) = Outputs.handleWlOutput e
handleEvent (SeatEvent e) = Seats.handleEvent e
handleEvent (LayerShellSeatEvent e) = Seats.handleLayerShellSeat e
handleEvent (WlSeatEvent e) = Seats.handleWlSeatEvent e
handleEvent (WindowEvent e) = Windows.handleEvent e
handleEvent (XkbEvent e) = Seats.handleXkbBindingEvent e -- XKB Keyboard events
handleEvent (XkbSeatEvent e) = Seats.handleXkbBindingsSeatEvent e -- XKB Keyboard events
handleEvent (PointerEvent e) = Seats.handlePointerEvent e -- Pointer events
handleEvent (InputManagerEvent e) = InputConfig.handleInputManagerEvent e
handleEvent (InputDeviceEvent e) = InputConfig.handleInputDeviceEvent e
handleEvent (LibinputConfigEvent e) = InputConfig.handleLibinputEvent e
handleEvent (XkbConfigEvent e) = InputConfig.handleXkbConfigEvent e
handleEvent (XkbKeyboardEvent e) = InputConfig.handleXkbKeyboardEvent e
handleEvent (ForeignTopLevelListV1 (WL.ForeignToplevelListToplevel _ _ fh)) = do
  l <- getObject
  io $ WL.listenerAdd fh l nullPtr
handleEvent (WlrOutputManagerEvent (Wlr.OutputManagerHead _ _ head)) = do
  l <- getObject
  io $ WL.listenerAdd head l nullPtr
handleEvent _ = return ()

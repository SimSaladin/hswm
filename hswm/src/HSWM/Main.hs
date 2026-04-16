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
import Bindings.Wayland.WlrOutputPowerManagementUnstableV1 qualified as Wlr
import Bindings.Wayland.XdgOutputUnstableV1 qualified as Zdg
import Foreign hiding (new, void)
import HSWM.Core
import HSWM.InputConfig qualified as InputConfig
import HSWM.Operations
import HSWM.Outputs qualified as Outputs
import HSWM.Seats qualified as Seats
import HSWM.StackSet qualified as W
import HSWM.Utils
import HSWM.Windows qualified as Windows
import Bindings.River qualified as R
import System.IO.Error
import System.Posix qualified as Posix
import Wayland
import Wayland qualified as WL
import Bindings.Wayland.Client
  ( displayFlush,
    displayGetFd,
    displayGetRegistry,
    displayRoundtrip,
  )
import Bindings.Wayland.Client qualified as WL
import Bindings.Wayland.WlrInputMethodUnstableV2 as Wlr
import Bindings.Wayland.Protocol.ForeignTopLevelListV1 as WL
import Bindings.Wayland.ExtIdleNotifyV1 as Ext
import Control.Concurrent (threadWaitRead, threadWaitWrite)
import Control.Concurrent.Thread.Delay as Conc (delay)

hswm :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig m l -> IO ()
hswm conf = do
  installSignalHandlers
  display <- WL.displayConnect Nothing
  startHSWM display conf

startHSWM :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => WL.Display -> HSWMConfig m l -> IO ()
startHSWM wlDisplay config = do
    let logFunc = defaultOutput stderr
    let withLogging = flip runLoggingT logFunc

    conf <- HConf False Nothing (config {layoutHook = Layout (layoutHook config)}) wlDisplay logFunc
        <$> newIORef mempty
        <*> newEmptyTMVarIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTMVarIO def

    let runInH :: H a -> IO a
        runInH = runH conf

        mainEvent :: (MonadIO m) => MainEvent -> m ()
        mainEvent = atomically . writeTQueue conf.eventQueue

        handleE = runInH . handleWithHook

    initialState <- withLogging $ readStateFile config >>= \case
        Just hs -> return hs
        Nothing ->
          let initialWinSet = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]
              in return def {windowset = initialWinSet, windowsetOld = initialWinSet}

    atomically $ putTMVar conf._state initialState

    runH conf $ do
      regL <- getOrCreateObjectIO $ WL.mkRegistryListener $ runInH . WL.handleRegistryEvent conf.globals
      shmL <- getOrCreateObjectIO $ WL.mkShmListener $ handleE . WlShmEvent
      _ <- getOrCreateObjectIO $ WL.mkOutputListener $ handleE . WlOutputEvent
      _ <- getOrCreateObjectIO $ WL.mkShellSurfaceListener $ handleE . WlShellSurfaceEvent
      _ <- getOrCreateObjectIO $ WL.mkSeatListener $ handleE . WlSeatEvent
      _ <- getOrCreateObjectIO $ WL.mkKeyboardListener $ handleE . WlKeyboardEvent
      _ <- getOrCreateObjectIO $ WL.mkPointerListener $ handleE . WlPointerEvent
      xkbConfigL <- getOrCreateObjectIO $ R.mkRiverXkbConfigListener $ handleE . XkbConfigEvent
      _ <- getOrCreateObjectIO $ R.mkRiverXkbKeyboardListener $ handleE . XkbKeyboardEvent
      _ <- getOrCreateObjectIO $ R.mkRiverXkbBindingListener $ handleE . XkbEvent
      _ <- getOrCreateObjectIO $ R.mkRiverXkbBindingsSeatListener $ handleE . XkbSeatEvent
      _ <- getOrCreateObjectIO $ R.mkRiverPointerBindingListener $ handleE . PointerEvent
      _ <- getOrCreateObjectIO $ R.mkRiverWindowListener $ handleE . WindowEvent
      _ <- getOrCreateObjectIO $ R.mkRiverSeatListener $ handleE . SeatEvent
      _ <- getOrCreateObjectIO $ R.mkRiverOutputListener $ handleE . OutputEvent
      _ <- getOrCreateObjectIO $ R.mkRiverLayerShellOutputListener $ handleE . LayerShellOutputEvent
      _ <- getOrCreateObjectIO $ R.mkRiverLayerShellSeatListener $ handleE . LayerShellSeatEvent
      _ <- getOrCreateObjectIO $ R.mkRiverInputDeviceListener $ handleE . InputDeviceEvent
      libinputConfigL <- getOrCreateObjectIO $ R.mkRiverLibinputConfigListener $ handleE . LibinputConfigEvent
      _ <- getOrCreateObjectIO $ R.mkRiverLibinputDeviceListener $ handleE . LibinputDeviceEvent
      inputManagerL <- getOrCreateObjectIO $ R.mkRiverInputManagerListener $ handleE . InputManagerEvent
      managerL <- getOrCreateObjectIO $ R.mkRiverWindowManagerListener $ handleE . WindowManagerEvent
      _ <- getOrCreateObjectIO $ WL.mkForeignToplevelHandleListener $ handleE . ForeignTopLevelHandleV1
      _ <- getOrCreateObjectIO $ Zdg.mkOutputListener $ handleE . ZdgOutputEvent
      wlrOmL <- getOrCreateObjectIO $ Wlr.mkOutputManagerListener $ handleE . WlrOutputManagerEvent
      _ <- getOrCreateObjectIO $ Wlr.mkOutputHeadListener $ handleE . WlrOutputHeadEvent
      _ <- getOrCreateObjectIO $ Ext.mkIdleNotificationListener $ handleE . ExtIdleNotificationEvent
      --_ <- getOrCreateObjectIO $ WL.mkForeignToplevelListListener $ handleE . ForeignTopLevelListV1
      logDebug "created event listeners"

      registry <- displayGetRegistry wlDisplay
      io $ WL.listenerAdd registry regL nullPtr

      logDebug "Waiting for one roundtrip for the registry listener to become aware of all current globals..."
      _ <- displayRoundtrip wlDisplay

      -- Bind initial globals
      _ <- bindGlobalAuto_ @WL.Compositor
      _ <- bindGlobalAuto  @WL.Shm [(shmL, nullPtr)]
      _ <- bindGlobalAuto_ @Wlr.InputMethodManager
      _ <- bindGlobalAuto  @R.RiverLibinputConfig [(libinputConfigL, nullPtr)]
      _ <- bindGlobalAuto  @R.RiverInputManager [(inputManagerL, nullPtr)]
      _ <- bindGlobalAuto_ @R.RiverLayerShell
      _ <- bindGlobalAuto  @R.RiverWindowManager [(managerL, nullPtr)]
      _ <- bindGlobalAuto_ @R.RiverXkbBindings
      _ <- bindGlobalAuto  @R.RiverXkbConfig [(xkbConfigL, nullPtr)]
      _ <- bindGlobalAuto_ @Zdg.OutputManager
      _ <- bindGlobalAuto  @Wlr.OutputManager [(wlrOmL, nullPtr)]
      _ <- bindGlobalAuto_ @Wlr.LayerShell
      _ <- bindGlobalAuto_ @FS.FractionalScaleManager
      _ <- bindGlobalAuto_ @VP.Viewporter
      _ <- bindGlobalAuto_ @Wlr.OutputPowerManager
      _ <- bindGlobalAuto_ @Ext.IdleNotifier
      -- _ <- bindGlobalAuto  @WL.ForeignToplevelList [(foreignListL, nullPtr)]

      logDebug "Running user startup hooks..."
      void $ userCode (startupHook config)

      -- Create an additional seat; useful for testing
      -- io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

      logInfo "Installing signal handlers"
      _ <- io $ Posix.installHandler Posix.sigTERM (Posix.Catch $ runInH $ mainEvent $ MainExit "TERM") Nothing
      _ <- io $ Posix.installHandler Posix.sigINT (Posix.Catch $ runInH $ mainEvent $ MainExit "INT") Nothing
      _ <- io $ Posix.installHandler Posix.sigQUIT (Posix.Catch $ runInH $ mainEvent $ MainExit "QUIT") Nothing
      _ <- io $ Posix.installHandler Posix.sigUSR2 (Posix.Catch $ runInH $ io getProgramPath >>= mainEvent . MainRestart) Nothing
      return ()

    runInH $ do
      logInfo "Entering Wayland main loop"

      wlPollFd <- Posix.Fd <$> displayGetFd wlDisplay

      -- Dispatch pending events
      let dispatchPending =
            let go = do
                    r <- try @_ @IOError $ WL.displayPrepareRead wlDisplay
                    case r of
                      Right 0 -> return $ Right ()
                      _ -> do
                        r' <- try @_ @IOError $ WL.displayDispatchPending wlDisplay
                        case r' of
                          Right{} -> go
                          Left e -> return $ Left $ MainExit $ "error: dispatch pending: " ++ show e
              in io go

      -- Flush outgoing requests
      let flushRequests = try (void $ displayFlush wlDisplay) >>= \case
              Left e
                | isFullError e -> return $ Right True
                | otherwise -> return $ Left $ MainExit $ "flush failed: " ++ show e
              Right{} -> return $ Right False

      -- Process incoming events
      let readIncomingEvents = try (void $ WL.displayReadEvents wlDisplay) >>= \case
                Left (e :: IOError) -> return $ Left $ MainExit $ "error: failed to read events: " ++ show e
                Right{} -> return $ Right ()

      let main MainPoll = do
            dispatchPending >>= \case
              Left end -> main end
              Right{} -> flushRequests >>= \case
                Left end -> main end
                Right pollWrite -> do
                  let pollfd = if pollWrite then io (threadWaitWrite wlPollFd `race_` threadWaitRead wlPollFd)
                                            else io (threadWaitRead wlPollFd)
                  res <- atomically (readTQueue conf.eventQueue) `race` pollfd
                  res' <- readIncomingEvents
                  case (res, res') of
                    (Left ev, _) -> main ev
                    (_, Left ev) -> main ev
                    _ -> main MainPoll
          main (MainExit s) = do
            logInfo $ "(main) Exiting" :# [ "reason" .= s ]
            void $ userCode config.exitHook
            exitFailure
          main (MainRestart prog) = do
            logInfo $ "(main) Restarting" :# [ "program" .= prog ]
            restart prog
            logError "(main) restart was not successful!"
            main MainPoll
          main MainSaveToDisk = do
            void $ runInHS $ userCodeS writeStateToFile
            main MainPoll

      -- save state to disk every half an hour
      timerAs <- async $ forever $ do
        io (Conc.delay (1_000_000 * 60 * 30))
        mainEvent MainSaveToDisk
      link timerAs

      logInfo "(main) ready"
      main MainPoll

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
    logError "another window manager already running"
    io $ Posix.raiseSignal Posix.sigTERM

  R.RiverWindowManagerFinished _ wm -> do
    io $ R.objectDestroy wm
    logInfo "river_window_manage_v1 finished, exiting."
    io $ Posix.raiseSignal Posix.sigINT

  R.RiverWindowManagerSessionLocked _ _wm -> do
    q <- asks (view pendingManageQL)
    atomically $ writeTQueue q $ do
      mapSeats $ \s ->
        io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) s.xkb_bindings

  R.RiverWindowManagerSessionUnlocked _ _wm -> do
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

handleEvent (ExtIdleNotificationEvent e) =
  case e of
    Ext.IdleNotificationIdled _ _ -> runInHS $ setOutputPower False
    Ext.IdleNotificationResumed _ _ -> runInHS $ setOutputPower True

handleEvent _ = return ()

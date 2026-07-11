{-# OPTIONS_GHC -Wno-ambiguous-fields #-}
{-# OPTIONS_GHC -Wno-unused-record-wildcards #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-orphans #-}

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
    module HSWM.Wayland,
  )
where

import           HSWM.Main.Options
import           HSWM.Core
import qualified HSWM.InputConfig as InputConfig
import           HSWM.Operations
import qualified HSWM.Outputs as Outputs
import qualified HSWM.Seats as Seats
import qualified HSWM.StackSet as W
import           HSWM.Utils
import qualified HSWM.Windows as Windows
import           HSWM.Wayland
import qualified HSWM.Util.Debug as Debug

import qualified River as R
import qualified WL.Client as WL
import           WL.ExtForeignToplevelList.Staging.V1.Client as EXT_FTL
import           WL.ExtIdleNotify.Staging.V1.Client as EXT_IN
import qualified WL.FractionalScale.Staging.V1.Client as FS
import qualified WL.Viewporter as VP
import           WL.Wlr.InputMethod.Unstable.V2.Client as WLR_IM
import qualified WL.Wlr.LayerShell.Unstable.V1.Client as WLR_LS
import qualified WL.Wlr.OutputManagement.Unstable.V1.Client as WLR_OM
import qualified WL.Wlr.OutputPowerManagement.Unstable.V1.Client as WLR_OPM
import qualified WL.XdgOutput.Unstable.V1.Client as XO

import           Control.Concurrent.Thread.Delay as Conc (delay)
import           System.IO (putStrLn)
import           System.IO.Error
import           System.Log.FastLogger
import qualified System.Posix as Posix

hswm :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig m l -> IO ()
hswm conf = do
  mainRun <- parseMainArgs
  case () of
    _ | mainRun.mainVersion -> putStrLn programVersion
    _ -> do
      installSignalHandlers -- TODO uninstall on exit?
      startHSWM mainRun conf

startHSWM
  :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow))
  => Main -> HSWMConfig m l -> IO ()
startHSWM mainRun config = do
    loggerSet <- mkMainLogger mainRun
    let logFunc     = fastLoggerOutput loggerSet
        withLogging = flip runLoggingT logFunc

    let connectTo = Nothing
    withLogging $ logDebug $ "Connecting Wayland display..." :# [ "connect-to" .= toText (fromMaybe "(using defaults)" connectTo) ]
    wlDisplay <- WL.displayConnect connectTo
    withLogging $ logInfo $ "Wayland display connected!" :# [ "display" .= show wlDisplay ]

    -- Do not propagate debug to child processes.
    unsetEnv "WAYLAND_DEBUG"

    -- initialize config
    let config' = config { layoutHook = Layout config.layoutHook }
    conf <- HConf False Nothing config' wlDisplay logFunc loggerSet
        <$> newEmptyMVar
        <*> newEmptyTMVarIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTMVarIO def

    -- Restore or initialize initial state
    withLogging $ do
      let newEmpty = let wset = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]
                      in def {windowset = wset, windowsetOld = wset}
      st <- fromMaybe newEmpty <$> readStateFile (mainRun.mainStateFile) config
      atomically $ putTMVar conf._state st

    let runH' :: H a -> IO a
        runH' = runH conf
        mainEvent :: MonadIO m => MainEvent -> m ()
        mainEvent = atomically . writeTQueue conf.eventQueue
        mkListener :: (WL.HasListener o, Typeable (R.ObjectListener o)) => (WL.ObjectListenerEvent o -> H ()) -> H (ConstPtr (WL.ObjectListener o))
        mkListener f = getOrCreateObjectIO $ WL.createListener (runH' . f)

    runH' $ do
      logInfo "Allocating wayland event listeners"
      _ <- mkListener $ handleWithHook . WlShmEvent
      _ <- mkListener $ handleWithHook . WlOutputEvent
      _ <- mkListener $ handleWithHook . WlShellSurfaceEvent
      _ <- mkListener $ handleWithHook . WlSeatEvent
      _ <- mkListener $ handleWithHook . WlKeyboardEvent
      _ <- mkListener $ handleWithHook . WlPointerEvent
      _ <- mkListener $ handleWithHook . WlTouchEvent
      _ <- mkListener $ handleWithHook . XkbConfigEvent
      _ <- mkListener $ handleWithHook . XkbKeyboardEvent
      _ <- mkListener $ handleWithHook . XkbEvent
      _ <- mkListener $ handleWithHook . XkbSeatEvent
      _ <- mkListener $ handleWithHook . PointerEvent
      _ <- mkListener $ handleWithHook . WindowEvent
      _ <- mkListener $ handleWithHook . SeatEvent
      _ <- mkListener $ handleWithHook . OutputEvent
      _ <- mkListener $ handleWithHook . LayerShellOutputEvent
      _ <- mkListener $ handleWithHook . LayerShellSeatEvent
      _ <- mkListener $ handleWithHook . InputDeviceEvent
      _ <- mkListener $ handleWithHook . LibinputConfigEvent
      _ <- mkListener $ handleWithHook . LibinputDeviceEvent
      _ <- mkListener $ handleWithHook . InputManagerEvent
      _ <- mkListener $ handleWithHook . WindowManagerEvent
      _ <- mkListener $ handleWithHook . FTopLevelHandleEvent
      _ <- mkListener $ handleWithHook . XdgOutputEvent
      _ <- mkListener $ handleWithHook . WlrOutputManagerEvent
      _ <- mkListener $ handleWithHook . WlrOutputHeadEvent
      _ <- mkListener $ handleWithHook . IdleNotificationEvent
      _ <- mkListener $ handleWithHook . OutputPowerEvent

      runInIO <- askRunInIO

      -- Setup the globals registry
      let regSettings = def
            { WL.regOnBind = \p name ver ->
                runInIO $ logInfo $ "Registry: bind global" :#
                  [ "name" .= name
                  , "version" .= ver
                  , "interface-version" .= WL.objectInterfaceVersion p
                  , "interface" .= WL.objectInterfaceName p
                  ]
            , WL.regOnEvent = runInIO . Debug.logEvent
            }
      putMVar conf.globals =<< WL.initRegistryState regSettings wlDisplay

      logInfo "Waiting for one roundtrip for the registry listener to become aware of all current globals..."
      void $ WL.displayRoundtrip wlDisplay

      logInfo "Binding initial globals"
      _ <- bindGlobal                  @WL.Compositor
      _ <- bindGlobalWithAutoListener  @WL.Shm
      _ <- bindGlobal                  @WLR_IM.InputMethodManager
      _ <- bindGlobalWithAutoListener  @R.RiverWindowManager
      _ <- bindGlobal                  @R.RiverXkbBindings
      _ <- bindGlobal                  @R.RiverLayerShell
      _ <- bindGlobalWithAutoListener  @R.RiverLibinputConfig
      _ <- bindGlobalWithAutoListener  @R.RiverInputManager
      _ <- bindGlobalWithAutoListener  @R.RiverXkbConfig
      _ <- bindGlobal                  @XO.OutputManager
      _ <- bindGlobalWithAutoListener  @WLR_OM.OutputManager
      _ <- bindGlobal                  @WLR_LS.LayerShell
      _ <- bindGlobal                  @FS.FractionalScaleManager
      _ <- bindGlobal                  @VP.Viewporter
      _ <- bindGlobal                  @WLR_OPM.OutputPowerManager
      _ <- bindGlobal                  @EXT_IN.IdleNotifier

      logInfo "Installing signal handlers"
      _ <- io $ Posix.installHandler Posix.sigTERM (Posix.Catch $ runH' $ mainEvent $ MainSignal Posix.sigTERM) Nothing
      _ <- io $ Posix.installHandler Posix.sigINT  (Posix.Catch $ runH' $ mainEvent $ MainSignal Posix.sigINT) Nothing
      _ <- io $ Posix.installHandler Posix.sigQUIT (Posix.Catch $ runH' $ mainEvent $ MainSignal Posix.sigQUIT) Nothing
      _ <- io $ Posix.installHandler Posix.sigUSR2 (Posix.Catch $ runH' $ io getProgramPath >>= mainEvent . MainRestart) Nothing

      -- Create an additional seat; useful for testing
      -- io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

      let periodMins = 30
      logInfo $ "Starting timer for saving state to disk every period" :# [ "minutes" .= periodMins ]
      link =<< async (forever $ io (Conc.delay (1_000_000 * 60 * periodMins)) >> mainEvent MainSaveToDisk)

      displayFd <- WL.displayGetFd wlDisplay
      logInfo $ "Main loop is starting" :# [ "display-fd" .= show displayFd ]

      logInfo "Running user startup hooks..."
      void $ userCode config.startupHook

      mainLoop wlDisplay displayFd

mainLoop :: WL.Display -> Posix.Fd -> H ()
mainLoop wlDisplay wlPollFd = main MainPoll
  where
    main MainPoll = mainProcessing

    main (MainRestart prog) = do
      logInfo $ "Main: interrupted by reload request" :# [ "program" .= prog ]
      restart prog
      logError "Main: restart was unsuccessful! Resuming normal operation"
      main MainPoll

    main MainSaveToDisk = do
      void $ runInHS $ userCodeS writeStateToFile
      main MainPoll

    main (MainSignal sig) = do
      logError $ "Main: interrupted by signal: " <> tshow sig :# ["signal" .= show sig ]
      mainExit exitFailure

    main (MainExit desc e) = do
      logError $ "Main: interrupted by exception in the main thread" :# [ "description" .= desc, "exception" .= show e ]
      mainExit exitFailure

    mainProcessing =
      dispatchPending wlDisplay >>= \case
        Right{} -> flushRequests wlDisplay >>= \case
          Right pollWrite -> do
            let pollfd = if pollWrite then threadWaitWrite wlPollFd `race_` threadWaitRead wlPollFd
                                      else threadWaitRead wlPollFd
            evQ  <- view eventQueue
            incoming <- atomically (readTQueue evQ) `race` io pollfd
            evts <- readIncomingEvents wlDisplay
            case (incoming, evts) of
              (Left ev, _      ) -> main ev
              (_      , Left ev) -> main ev
              _                  -> main MainPoll
          Left end               -> main end
        Left end                 -> main end

    mainExit how = do
      logInfo "Main: now exiting. Running exit hooks..."
      void . userCode =<< view (config . exitHook)
      lgrSet <- view _loggerSet
      io $ flushLogStr lgrSet
      io $ rmLoggerSet lgrSet
      how

-- Dispatch pending events
dispatchPending :: MonadIO m => WL.Display -> m (Either MainEvent ())
dispatchPending disp = io go where
  go =
    try (WL.displayPrepareRead disp) >>= \case
      Right{} -> return $ Right ()
      Left (_ :: IOError) ->
        try (WL.displayDispatchPending disp) >>= \case
          Right{} -> go
          Left (e :: IOError) -> return $ Left $ MainExit "dispatch pending" $ toException e

-- Process incoming events
readIncomingEvents :: MonadUnliftIO m => WL.Display -> m (Either MainEvent ())
readIncomingEvents disp =
  try (WL.displayReadEvents disp) >>= \case
    Right{}             -> return $ Right ()
    Left (e :: IOError) -> return $ Left $ MainExit "failed to read events" $ toException e

-- Flush outgoing requests
flushRequests :: MonadUnliftIO m => WL.Display -> m (Either MainEvent Bool)
flushRequests disp =
  try (WL.displayFlush disp) >>= \case
    Right{} -> return $ Right False
    Left e | isFullError e -> return $ Right True
           | otherwise     -> return $ Left $ MainExit "flush failed" $ toException e

---------------------------------------------------
-- event handling

-- | Runs handleEventHook from the configuration and runs the default handler
-- function if it returned True.
handleWithHook :: Event -> H ()
handleWithHook e = do
  evHook <- view (config . handleEventHook)
  whenM (userCodeDef True $ getAll `fmap` evHook e) (handleEvent e)

instance HandleEvent H Event where
  handleEvent (WindowManagerEvent e) = handleWindowManagerEvent e
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
  handleEvent (LibinputDeviceEvent e) = InputConfig.handleLibinputDeviceEvent e
  handleEvent (XkbConfigEvent e) = InputConfig.handleXkbConfigEvent e
  handleEvent (XkbKeyboardEvent e) = InputConfig.handleXkbKeyboardEvent e
  handleEvent (FTopLevelListEvent (EXT_FTL.ForeignToplevelListToplevel _ _ fh)) = WL.listenerAdd_ fh =<< getObject
  handleEvent (WlrOutputManagerEvent (WLR_OM.OutputManagerHead _ _ head)) = WL.listenerAdd_ head =<< getObject
  handleEvent (IdleNotificationEvent e) = handleEvent e
  handleEvent (OutputPowerEvent e) = e `seq` return () -- TODO
  handleEvent _ = return ()

instance HandleEvent H EXT_IN.IdleNotificationEvent where
  handleEvent = \case
    EXT_IN.IdleNotificationIdled{} -> runInHS $ setOutputPower False
    EXT_IN.IdleNotificationResumed{} -> runInHS $ setOutputPower True

handleWindowManagerEvent :: R.RiverWindowManagerEvent -> H ()
handleWindowManagerEvent e = case e of
    R.RiverWindowManagerOutput _ _ out -> Outputs.added out
    R.RiverWindowManagerWindow _ _ w -> Windows.added w
    -- river does not indicate when it is done signalling about present windows, so we assume that it is done by the
    -- time first seat is announced.
    R.RiverWindowManagerSeat _ _ seat -> runInHS Windows.finishRecovery >> Seats.added seat

    -- /manage sequence/
    R.RiverWindowManagerManageStart _ wm -> do
      runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingManageQL)
      Outputs.manage >> Seats.manage >> Windows.manage
      void . userCode =<< view (config . logHook)
      R.riverWindowManagerManageFinish wm

    -- /render sequence/
    R.RiverWindowManagerRenderStart _ wm -> do
      runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingRenderQL)
      Seats.render >> Windows.render
      void . userCode =<< view (config . renderHook)
      R.riverWindowManagerRenderFinish wm

    R.RiverWindowManagerSessionLocked _ _wm ->
      writeManageQ $ mapSeats $ \s ->
        io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)) s.xkb_bindings

    R.RiverWindowManagerSessionUnlocked _ _wm ->
      writeManageQ $ mapSeats $ \s ->
        io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)) s.xkb_bindings

    R.RiverWindowManagerFinished _ wm -> do
      io $ R.objectDestroy wm
      writeMainEvent $ MainExit "river_window_manager_v1 finished, exiting." (toException $ ExitFailure 1)

    R.RiverWindowManagerUnavailable _ wm -> do
      io $ R.objectDestroy wm
      writeMainEvent $ MainExit "another window manager already running" (toException $ ExitFailure 1)

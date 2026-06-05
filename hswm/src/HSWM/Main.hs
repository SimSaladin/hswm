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

import qualified WL.Client as WL
import qualified River as R

import           WL.ExtIdleNotify.Staging.V1.Client as Ext
import qualified WL.FractionalScale.Staging.V1.Client as FS
import           WL.ExtForeignToplevelList.Staging.V1.Client as WL
import qualified WL.Viewporter as VP
import qualified WL.XdgOutput.Unstable.V1.Client as Zdg
import           WL.Wlr.InputMethod.Unstable.V2.Client as Wlr
import qualified WL.Wlr.LayerShell.Unstable.V1.Client as Wlr
import qualified WL.Wlr.OutputManagement.Unstable.V1.Client as Wlr
import qualified WL.Wlr.OutputPowerManagement.Unstable.V1.Client as Wlr

import           Control.Concurrent.Thread.Delay as Conc (delay)
import           Data.Char
import qualified Data.List as L
import qualified Options.Applicative as Opts
import           Options.Generic
import           System.IO.Error
import           System.Log.FastLogger
import qualified System.Posix as Posix

-- | Main entrypoint settings.
data MainRun w = MainRun
  { mainLogFile   :: w ::: Maybe FilePath <?> "If not logging to file, logs are sent to stdout" <!> ""
  , mainLogLevel  :: w ::: LogLevel       <?> "Log level (debug, info, warn or error)" <!> "debug"
  , mainStateFile :: w ::: Maybe FilePath <?> "State file to read on restart"
  } deriving (Generic)

instance Default (MainRun Unwrapped) where
  def = MainRun (Just "") LevelDebug Nothing

instance ParseField LogLevel where
  readField = Opts.maybeReader $ \case
    "debug" -> Just LevelDebug
    "info"  -> Just LevelInfo
    "error" -> Just LevelError
    "warn"  -> Just LevelWarn
    _       -> Nothing
instance ParseFields LogLevel
instance ParseRecord LogLevel where
  parseRecord = fmap getOnly parseRecord

instance ParseRecord (MainRun Wrapped) where
  parseRecord = parseRecordWithModifiers defaultModifiers
    { fieldNameModifier = \name -> fromCC $ fromMaybe name (L.stripPrefix "main" name) }
      where
        fromCC :: String -> String
        fromCC [] = []
        fromCC (x:xs) = go $ toLower x : xs
          where
            go [] = []
            go (x:xs)
              | isUpper x = '-' : toLower x : go xs
              | otherwise = x : go xs

hswm :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig m l -> IO ()
hswm conf = do
  mainRun <- parseMainArgs
  loggerSet <- case mainRun.mainLogFile of
                 Nothing -> newStdoutLoggerSet defaultBufSize
                 Just "" -> newFileLoggerSet defaultBufSize =<< defaultLogFile
                 Just file -> newFileLoggerSet defaultBufSize file
  let logFunc = fastLoggerOutput loggerSet
  installSignalHandlers
  display <- WL.displayConnect Nothing
  startHSWM mainRun loggerSet logFunc display conf
    where
      defaultLogFile = do
        d <- getXdgDirectory XdgData "hswm"
        createDirectoryIfMissing True d
        return $ d ++ "/" ++ "hswm.log"

      parseMainArgs :: IO (MainRun Unwrapped)
      parseMainArgs = unwrapRecord "hswm"

startHSWM :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow))
          => MainRun Unwrapped
          -> LoggerSet
          -> (Loc -> LogSource -> LogLevel -> LogStr -> IO ())
          -> WL.Display
          -> HSWMConfig m l
          -> IO ()
startHSWM mainRun loggerSet logFunc wlDisplay config = do
    let config' = config { layoutHook = Layout config.layoutHook }

    conf <- HConf False Nothing config' wlDisplay logFunc loggerSet
        <$> newEmptyMVar
        <*> newEmptyTMVarIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTMVarIO def

    let runInH :: H a -> IO a
        runInH = runH conf

        withLogging = flip runLoggingT logFunc

        mainEvent :: MonadIO m => MainEvent -> m ()
        mainEvent = atomically . writeTQueue conf.eventQueue

        mkListener :: (WL.HasListener o, Typeable (R.ObjectListener o)) => (WL.ObjectListenerEvent o -> H ()) -> H (ConstPtr (WL.ObjectListener o))
        mkListener f = getOrCreateObjectIO $ WL.createListener (runInH . f)

    -- Do not propagate debug to child processes.
    unsetEnv "WAYLAND_DEBUG"

    -- Restore or initialize initial state
    withLogging $ do
      st <- readStateFile mainRun.mainStateFile config >>= \case
        Just hs -> return hs
        Nothing ->
          let initialWinSet = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]
              in return def {windowset = initialWinSet, windowsetOld = initialWinSet}
      atomically $ putTMVar conf._state st

    runInH $ do
      _ <- mkListener $ handleWithHook . WlShmEvent
      _ <- mkListener $ handleWithHook . WlOutputEvent
      _ <- mkListener $ handleWithHook . WlShellSurfaceEvent
      _ <- mkListener $ handleWithHook . WlSeatEvent
      _ <- mkListener $ handleWithHook . WlKeyboardEvent
      _ <- mkListener $ handleWithHook . WlPointerEvent
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
      _ <- mkListener $ handleWithHook . ForeignTopLevelHandleV1
      _ <- mkListener $ handleWithHook . ZdgOutputEvent
      _ <- mkListener $ handleWithHook . WlrOutputManagerEvent
      _ <- mkListener $ handleWithHook . WlrOutputHeadEvent
      _ <- mkListener $ handleWithHook . ExtIdleNotificationEvent
      logInfo "Created initial event listeners"

      runInIO <- askRunInIO
      regState <- WL.initRegistryState def
        { WL.regOnEvent = runInIO . Debug.logEvent
        , WL.regOnBind = \p name ver -> runInIO $ do
            let ifVer = WL.objectInterfaceVersion p
            logInfo $ "registry bind global" :# [ "name" .= name, "version" .= ver, "iface-version" .= ifVer, "iface" .= WL.objectInterfaceName p ]
        } wlDisplay
      putMVar conf.globals regState

      logInfo "Waiting for one roundtrip for the registry listener to become aware of all current globals..."
      _ <- WL.displayRoundtrip wlDisplay

      -- Bind initial globals
      _ <- bindGlobalAuto_  @WL.Compositor
      _ <- bindGlobalAuto'  @WL.Shm
      _ <- bindGlobalAuto_  @Wlr.InputMethodManager
      _ <- bindGlobalAuto'  @R.RiverWindowManager
      _ <- bindGlobalAuto_  @R.RiverXkbBindings
      _ <- bindGlobalAuto_  @R.RiverLayerShell
      _ <- bindGlobalAuto'  @R.RiverLibinputConfig
      _ <- bindGlobalAuto'  @R.RiverInputManager
      _ <- bindGlobalAuto'  @R.RiverXkbConfig
      _ <- bindGlobalAuto_  @Zdg.ZxdgOutputManager
      _ <- bindGlobalAuto'  @Wlr.ZwlrOutputManager
      _ <- bindGlobalAuto_  @Wlr.ZwlrLayerShell
      _ <- bindGlobalAuto_  @FS.FractionalScaleManager
      _ <- bindGlobalAuto_  @VP.Viewporter
      _ <- bindGlobalAuto_  @Wlr.ZwlrOutputPowerManager
      _ <- bindGlobalAuto_  @Ext.ExtIdleNotifier

      logInfo "Installing signal handlers"
      _ <- io $ Posix.installHandler Posix.sigTERM (Posix.Catch $ runInH $ mainEvent $ MainSignal Posix.sigTERM) Nothing
      _ <- io $ Posix.installHandler Posix.sigINT  (Posix.Catch $ runInH $ mainEvent $ MainSignal Posix.sigINT) Nothing
      _ <- io $ Posix.installHandler Posix.sigQUIT (Posix.Catch $ runInH $ mainEvent $ MainSignal Posix.sigQUIT) Nothing
      _ <- io $ Posix.installHandler Posix.sigUSR2 (Posix.Catch $ runInH $ io getProgramPath >>= mainEvent . MainRestart) Nothing

      wlPollFd <- WL.displayGetFd wlDisplay

      logInfo "Running user startup hooks..."
      void $ userCode config.startupHook

      -- Create an additional seat; useful for testing
      -- io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

      -- save state to disk every half an hour
      timerAs <- async $ forever $ do
        io (Conc.delay (1_000_000 * 60 * 30))
        mainEvent MainSaveToDisk
      link timerAs

      mainLoop wlDisplay wlPollFd

mainLoop :: WL.Display -> Posix.Fd -> H ()
mainLoop wlDisplay wlPollFd = do
  let main MainPoll = do
        dispatchPending wlDisplay >>= \case
          Left end -> main end
          Right{} -> flushRequests wlDisplay >>= \case
            Left end -> main end
            Right pollWrite -> do
              let pollfd = if pollWrite then io (threadWaitWrite wlPollFd `race_` threadWaitRead wlPollFd)
                                        else io (threadWaitRead wlPollFd)
              eq <- view eventQueue
              res <- atomically (readTQueue eq) `race` pollfd
              res' <- readIncomingEvents wlDisplay
              case (res, res') of
                (Left ev, _) -> main ev
                (_, Left ev) -> main ev
                _ -> main MainPoll

      main (MainSignal sig) =
        case sig of
          _ -> do
            logError $ "Exiting (signal)" :# ["signal" .= show sig ]
            void . userCode =<< view (config . exitHook)
            io . rmLoggerSet =<< view _loggerSet
            exitFailure

      main (MainExit desc e) = do
        logError $ "Exiting (exception)" :# [ "description" .= desc, "exception" .= show e ]
        void . userCode =<< view (config . exitHook)
        io . rmLoggerSet =<< view _loggerSet
        exitFailure

      main (MainRestart prog) = do
        logInfo $ "(main) Restarting" :# [ "program" .= prog ]
        restart prog
        logError "(main) restart was not successful!"
        main MainPoll

      main MainSaveToDisk = do
        void $ runInHS $ userCodeS writeStateToFile
        main MainPoll

  logInfo "main: ready"
  main MainPoll


-- Dispatch pending events
dispatchPending disp = io go where
  go =
    try (WL.displayPrepareRead disp) >>= \case
      Right{} -> return $ Right ()
      Left (_ :: IOError) ->
        try (WL.displayDispatchPending disp) >>= \case
          Right{} -> go
          Left (e :: IOError) -> return $ Left $ MainExit "dispatch pending" $ toException e

-- Process incoming events
readIncomingEvents disp =
  try (WL.displayReadEvents disp) >>= \case
    Right{}             -> return $ Right ()
    Left (e :: IOError) -> return $ Left $ MainExit "failed to read events" $ toException e

-- Flush outgoing requests
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
  handleEvent (WindowManagerEvent e) = case e of

    R.RiverWindowManagerUnavailable _ wm -> do
      io $ R.objectDestroy wm
      writeMainEvent $ MainExit "another window manager already running" (toException $ ExitFailure 1)

    R.RiverWindowManagerFinished _ wm -> do
      io $ R.objectDestroy wm
      writeMainEvent $ MainExit "river_window_manager_v1 finished, exiting." (toException $ ExitFailure 1)

    R.RiverWindowManagerOutput _ _ out -> Outputs.added out
    R.RiverWindowManagerWindow _ _ w -> Windows.added w
    R.RiverWindowManagerSeat _ _ seat -> do
      -- river does not indicate when it is done signalling about present windows, so we assume that it is done by the
      -- time first seat is announced.
      runInHS Windows.finishRecovery
      Seats.added seat

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
        io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) s.xkb_bindings

    R.RiverWindowManagerSessionUnlocked _ _wm ->
      writeManageQ $ mapSeats $ \s ->
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
  handleEvent (LibinputDeviceEvent e) = InputConfig.handleLibinputDeviceEvent e
  handleEvent (XkbConfigEvent e) = InputConfig.handleXkbConfigEvent e
  handleEvent (XkbKeyboardEvent e) = InputConfig.handleXkbKeyboardEvent e
  handleEvent (ForeignTopLevelListV1 (WL.ExtForeignToplevelListToplevel _ _ fh)) = WL.listenerAdd_ fh =<< getObject
  handleEvent (WlrOutputManagerEvent (Wlr.ZwlrOutputManagerHead _ _ head)) = WL.listenerAdd_ head =<< getObject
  handleEvent (ExtIdleNotificationEvent e) = handleEvent e
  handleEvent _ = return ()

instance HandleEvent H Ext.ExtIdleNotificationEvent where
  handleEvent = \case
    Ext.ExtIdleNotificationIdled{} -> runInHS $ setOutputPower False
    Ext.ExtIdleNotificationResumed{} -> runInHS $ setOutputPower True

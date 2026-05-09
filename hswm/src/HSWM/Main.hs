{-# OPTIONS_GHC -Wno-ambiguous-fields -Wno-unused-record-wildcards -Wno-name-shadowing #-}
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

import qualified Wayland as WL

import qualified Bindings.River as R
import           Bindings.Wayland.ExtIdleNotifyV1 as Ext
import qualified Bindings.Wayland.FractionalScaleV1 as FS
import           Bindings.Wayland.Protocol.ForeignTopLevelListV1 as WL
import qualified Bindings.Wayland.Viewporter as VP
import           Bindings.Wayland.WlrInputMethodUnstableV2 as Wlr
import qualified Bindings.Wayland.WlrLayerShellUnstableV1 as Wlr
import qualified Bindings.Wayland.WlrOutputManagementUnstableV1 as Wlr
import qualified Bindings.Wayland.WlrOutputPowerManagementUnstableV1 as Wlr
import qualified Bindings.Wayland.XdgOutputUnstableV1 as Zdg

import           Control.Concurrent (threadWaitRead, threadWaitWrite)
import           Control.Concurrent.Thread.Delay as Conc (delay)
import           Data.Char
import qualified Data.List as L
import           Foreign hiding (new, void)
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
    conf <- HConf False Nothing (config {layoutHook = Layout (layoutHook config)}) wlDisplay logFunc
        <$> newEmptyMVar
        <*> newEmptyTMVarIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTQueueIO
        <*> newTMVarIO def

    let runInH :: H a -> IO a
        runInH = runH conf

        mainEvent :: MonadIO m => MainEvent -> m ()
        mainEvent = atomically . writeTQueue conf.eventQueue

        withLogging = flip runLoggingT logFunc

        mkListener :: (WL.HasListener o, Typeable (R.ObjectListener o)) => (WL.ObjectListenerEvent o -> H ()) -> H (ConstPtr (WL.ObjectListener o))
        mkListener f = getOrCreateObjectIO $ WL.createListener (runInH . f)

    initialState <- withLogging $ readStateFile mainRun.mainStateFile config >>= \case
        Just hs -> return hs
        Nothing ->
          let initialWinSet = W.new conf.config.layoutHook config.workspaces [SD 0 0 0 0]
              in return def {windowset = initialWinSet, windowsetOld = initialWinSet}

    atomically $ putTMVar conf._state initialState

    runInH $ do
      regState <- io $ WL.initRegistryState wlDisplay
      putMVar conf.globals regState
      --regL            <- mkListener $ handleRegistryEvent conf.globals
      shmL            <- mkListener $ handleWithHook . WlShmEvent
      _               <- mkListener $ handleWithHook . WlOutputEvent
      _               <- mkListener $ handleWithHook . WlShellSurfaceEvent
      _               <- mkListener $ handleWithHook . WlSeatEvent
      _               <- mkListener $ handleWithHook . WlKeyboardEvent
      _               <- mkListener $ handleWithHook . WlPointerEvent
      xkbConfigL      <- mkListener $ handleWithHook . XkbConfigEvent
      _               <- mkListener $ handleWithHook . XkbKeyboardEvent
      _               <- mkListener $ handleWithHook . XkbEvent
      _               <- mkListener $ handleWithHook . XkbSeatEvent
      _               <- mkListener $ handleWithHook . PointerEvent
      _               <- mkListener $ handleWithHook . WindowEvent
      _               <- mkListener $ handleWithHook . SeatEvent
      _               <- mkListener $ handleWithHook . OutputEvent
      _               <- mkListener $ handleWithHook . LayerShellOutputEvent
      _               <- mkListener $ handleWithHook . LayerShellSeatEvent
      _               <- mkListener $ handleWithHook . InputDeviceEvent
      libinputConfigL <- mkListener $ handleWithHook . LibinputConfigEvent
      _               <- mkListener $ handleWithHook . LibinputDeviceEvent
      inputManagerL   <- mkListener $ handleWithHook . InputManagerEvent
      managerL        <- mkListener $ handleWithHook . WindowManagerEvent
      _               <- mkListener $ handleWithHook . ForeignTopLevelHandleV1
      _               <- mkListener $ handleWithHook . ZdgOutputEvent
      wlrOmL          <- mkListener $ handleWithHook . WlrOutputManagerEvent
      _               <- mkListener $ handleWithHook . WlrOutputHeadEvent
      _               <- mkListener $ handleWithHook . ExtIdleNotificationEvent
      logDebug "Created event listeners"

      --registry <- WL.displayGetRegistry wlDisplay
      --WL.listenerAdd_ registry regL

      logDebug "Waiting for one roundtrip for the registry listener to become aware of all current globals..."
      _ <- WL.displayRoundtrip wlDisplay

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

      logDebug "Running user startup hooks..."
      void $ userCode (startupHook config)

      -- Create an additional seat; useful for testing
      -- io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

      logInfo "Installing signal handlers"
      _ <- io $ Posix.installHandler Posix.sigTERM (Posix.Catch $ runInH $ mainEvent $ MainExit "TERM") Nothing
      _ <- io $ Posix.installHandler Posix.sigINT  (Posix.Catch $ runInH $ mainEvent $ MainExit "INT") Nothing
      _ <- io $ Posix.installHandler Posix.sigQUIT (Posix.Catch $ runInH $ mainEvent $ MainExit "QUIT") Nothing
      _ <- io $ Posix.installHandler Posix.sigUSR2 (Posix.Catch $ runInH $ io getProgramPath >>= mainEvent . MainRestart) Nothing
      return ()

    runInH $ do
      logInfo "Entering Wayland main loop"

      wlPollFd <- WL.displayGetFd wlDisplay

      -- save state to disk every half an hour
      timerAs <- async $ forever $ do
        io (Conc.delay (1_000_000 * 60 * 30))
        mainEvent MainSaveToDisk
      link timerAs

      let main MainPoll = do
            dispatchPending wlDisplay >>= \case
              Left end -> main end
              Right{} -> flushRequests wlDisplay >>= \case
                Left end -> main end
                Right pollWrite -> do
                  let pollfd = if pollWrite then io (threadWaitWrite wlPollFd `race_` threadWaitRead wlPollFd)
                                            else io (threadWaitRead wlPollFd)
                  res <- atomically (readTQueue conf.eventQueue) `race` pollfd
                  res' <- readIncomingEvents wlDisplay
                  case (res, res') of
                    (Left ev, _) -> main ev
                    (_, Left ev) -> main ev
                    _ -> main MainPoll

          main (MainExit s) = do
            logError $ "(main) Exiting" :# [ "reason" .= s ]
            void $ userCode config.exitHook
            io $ rmLoggerSet loggerSet
            exitFailure

          main (MainRestart prog) = do
            logInfo $ "(main) Restarting" :# [ "program" .= prog ]
            restart prog
            logError "(main) restart was not successful!"
            main MainPoll

          main MainSaveToDisk = do
            void $ runInHS $ userCodeS writeStateToFile
            main MainPoll

      logInfo "(main) ready"
      main MainPoll


-- Dispatch pending events
dispatchPending disp = io go where
  go = do
    r <- try @_ @IOError $ WL.displayPrepareRead disp
    case r of
      Right{} -> return $ Right ()
      _ -> do
        r' <- try @_ @IOError $ WL.displayDispatchPending disp
        case r' of
          Right{} -> go
          Left e -> return $ Left $ MainExit $ "error: dispatch pending: " ++ show e

-- Process incoming events
readIncomingEvents disp = try (void $ WL.displayReadEvents disp) >>= \case
      Right{}             -> return $ Right ()
      Left (e :: IOError) -> return $ Left $ MainExit $ "error: failed to read events: " ++ show e

-- Flush outgoing requests
flushRequests disp = try (WL.displayFlush disp) >>= \case
    Right{}           -> return $ Right False
    Left e
      | isFullError e -> return $ Right True
      | otherwise     -> return $ Left $ MainExit $ "flush failed: " ++ show e

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
    asks (logHook . config) >>= userCodeDef ()
    R.riverWindowManagerManageFinish wm

  -- /render sequence/
  R.RiverWindowManagerRenderStart _ wm -> do
    runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingRenderQL)
    Outputs.render >> Seats.render >> Windows.render
    void . userCode =<< asks (renderHook . config)
    R.riverWindowManagerRenderFinish wm

  R.RiverWindowManagerUnavailable {} ->
    writeMainEvent $ MainExit "another window manager already running"

  R.RiverWindowManagerFinished _ wm -> do
    io $ R.objectDestroy wm
    writeMainEvent $ MainExit "river_window_manage_v1 finished, exiting."

  R.RiverWindowManagerSessionLocked _ _wm -> do
    q <- asks (view pendingManageQL)
    atomically $ writeTQueue q $ mapSeats $ \s ->
      io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) s.xkb_bindings

  R.RiverWindowManagerSessionUnlocked _ _wm -> do
    q <- asks (view pendingManageQL)
    atomically $ writeTQueue q $ mapSeats $ \s ->
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
handleEvent (ForeignTopLevelListV1 (WL.ForeignToplevelListToplevel _ _ fh)) = WL.listenerAdd_ fh =<< getObject
handleEvent (WlrOutputManagerEvent (Wlr.OutputManagerHead _ _ head)) = WL.listenerAdd_ head =<< getObject
handleEvent (ExtIdleNotificationEvent e) =
  case e of
    Ext.IdleNotificationIdled{} -> runInHS $ setOutputPower False
    Ext.IdleNotificationResumed{} -> runInHS $ setOutputPower True

handleEvent _ = return ()

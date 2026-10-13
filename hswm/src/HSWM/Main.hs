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
  ( hswm, startHSWM, handleWithHook,
    module HSWM.Core,
    module HSWM.Wayland,
  )
where

import           HSWM.Core
import qualified HSWM.InputConfig as InputConfig
import           HSWM.Main.Options
import           HSWM.Operations
import qualified HSWM.Outputs as Outputs
import qualified HSWM.Seats as Seats
import qualified HSWM.StackSet as W
import qualified HSWM.Util.Debug as Debug
import           HSWM.Utils
import           HSWM.Wayland
import qualified HSWM.Windows as Windows

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
import qualified System.Posix as Posix

hswm :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig m l -> IO ()
hswm conf = do
  options <- parseMainArgs
  case () of
    _ | options.mainVersion -> putStrLn programVersion
    _ -> startHSWM options conf

startHSWM
  :: (m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow))
  => Main -> HSWMConfig m l -> IO ()
startHSWM options config = do
    installSignalHandlers -- TODO uninstall on exit?

    (_logType, lgrFun, lgrCleanup) <- initLoggers options

    let connectTo = Nothing

    conf <- flip runLoggingT lgrFun $ do
      logDebug $ "Connecting Wayland display..." :# [ "connect-to" .= toText (fromMaybe "(using defaults)" connectTo) ]
      wlDisplay <- WL.displayConnect connectTo
      logInfo $ "Wayland display connected!" :# [ "display" .= show wlDisplay ]
      -- Do not propagate debug to child processes.
      unsetEnv "WAYLAND_DEBUG"

      -- Restore or initialize initial state
      let config' = config { layoutHook = Layout config.layoutHook }
      let newEmpty = let wset = W.new config'.layoutHook config.workspaces [SD 0 0 0 0]
                      in def {windowset = wset, windowsetOld = wset}
      initialState <- fromMaybe newEmpty <$> readStateFile options.mainStateFile config
      HConf False Nothing config' wlDisplay
          <$> askLoggerIO
          <*> pure lgrCleanup
          <*> newEmptyMVar  -- globals
          <*> newTMVarIO initialState -- state
          <*> newTQueueIO -- event q
          <*> newTQueueIO -- manage q
          <*> newTQueueIO -- render q
          <*> newTMVarIO def -- typemap

    let handleErrors f = try f >>= \case
                Right{} -> return ()
                Left (ex :: SomeException) -> do
                  logError $ "error in main setup phase!" :# [ "error" .= show ex ]
                  exitFailure

    runH conf $ do
      handleErrors $ do
        logInfo "Allocating wayland event listeners"
        mkListener $ handleWithHook . WlShmEvent
        mkListener $ handleWithHook . WlOutputEvent
        mkListener $ handleWithHook . WlShellSurfaceEvent
        mkListener $ handleWithHook . WlSeatEvent
        mkListener $ handleWithHook . WlKeyboardEvent
        mkListener $ handleWithHook . WlPointerEvent
        mkListener $ handleWithHook . WlTouchEvent
        mkListener $ handleWithHook . XkbConfigEvent
        mkListener $ handleWithHook . XkbKeyboardEvent
        mkListener $ handleWithHook . XkbEvent
        mkListener $ handleWithHook . XkbSeatEvent
        mkListener $ handleWithHook . PointerEvent
        mkListener $ handleWithHook . WindowEvent
        mkListener $ handleWithHook . SeatEvent
        mkListener $ handleWithHook . OutputEvent
        mkListener $ handleWithHook . LayerShellOutputEvent
        mkListener $ handleWithHook . LayerShellSeatEvent
        mkListener $ handleWithHook . InputDeviceEvent
        mkListener $ handleWithHook . LibinputConfigEvent
        mkListener $ handleWithHook . LibinputDeviceEvent
        mkListener $ handleWithHook . InputManagerEvent
        mkListener $ handleWithHook . WindowManagerEvent
        mkListener $ handleWithHook . FTopLevelHandleEvent
        mkListener $ handleWithHook . XdgOutputEvent
        mkListener $ handleWithHook . WlrOutputManagerEvent
        mkListener $ handleWithHook . WlrOutputHeadEvent
        mkListener $ handleWithHook . IdleNotificationEvent
        mkListener $ handleWithHook . OutputPowerEvent

        -- Setup the globals registry
        putMVar conf.globals =<< WL.initRegistryState conf._wlDisplay =<< defaultRegistrySettings

        logInfo "Waiting for one roundtrip for the registry listener to become aware of all current globals..."
        void $ WL.displayRoundtrip conf._wlDisplay

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
        run <- askRunInIO
        let catchSignalWith sig f = io $ void $ Posix.installHandler sig (Posix.Catch $ run f) Nothing
            catchSignal sig = catchSignalWith sig $ do
                logInfo $ "signal handler invoked" :# [ "signal" .= show sig ]
                writeMainQ $ MainSignal sig
        catchSignal Posix.sigTERM
        catchSignal Posix.sigINT
        catchSignal Posix.sigQUIT
        catchSignalWith Posix.sigUSR2 $ io getProgramPath >>= writeMainQ . MainRestart

        scheduleStateSave options.mainStateSave

      -- Create an additional seat; useful for testing
      -- io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

      displayFd <- WL.displayGetFd conf._wlDisplay
      mainLoop conf._wlDisplay displayFd

scheduleStateSave :: Integer -> H ()
scheduleStateSave interval
  | interval <= 0 = return ()
  | otherwise = do
      let period = 1_000_000 * 60 * interval
      link =<< async (forever $ io (Conc.delay period) >> writeMainQ MainSaveToDisk)
      logInfo $ "started timer for saving state to disk every period" :# [ "minutes" .= interval ]

defaultRegistrySettings :: H WL.RegistrySettings
defaultRegistrySettings = withRunInIO $ \runInIO -> return def
  { WL.regOnBind = \p name ver ->
      runInIO $ logInfo $ "Registry: bind global" :#
        [ "name"              .= name
        , "version"           .= ver
        , "interface-version" .= WL.objectInterfaceVersion p
        , "interface"         .= WL.objectInterfaceName p
        ]
  , WL.regOnEvent = runInIO . Debug.logEvent
  }

mainLoop :: WL.Display -> Posix.Fd -> H ()
mainLoop wlDisplay wlPollFd = do
  logDebug $ "Main loop is starting" :# [ "display-fd" .= show wlPollFd ]
  logInfo "Running user startup hooks..."
  async (void . userCode =<< view (config . startupHook)) >>= link
  main MainPoll
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
      logInfo $ "Main: interrupted by signal: " <> tshow sig :# ["signal" .= show sig ]
      mainExit exitFailure

    main (MainExit desc e) = do
      logError $ "Main: interrupted by exception in the main thread" :# [ "description" .= desc, "exception" .= show e ]
      mainExit exitFailure

    -- wl_display_prepare_read() needs to be balanced with either
    -- wl_display_read_events() or wl_display_cancel_read()
    --
    -- if prepare_read() returns non-zero, there are events to be dispatched
    mainProcessing = do
      next <- bracketOnError_
        -- obtain read intent:
        -- will try wl_display_prepare_read until it succeeds, attempting to dispatch
        -- pending events until none left.
        (WL.displayPrepareRead wlDisplay)
        -- cancel read intent in case of error
        (WL.displayCancelRead wlDisplay)
        $ do -- poll
          -- if == -1, need to poll for writes and try again
          flushed <- WL.displayFlush wlDisplay
          let pollfd | flushed == -1 = threadWaitWrite wlPollFd `race_` threadWaitRead wlPollFd
                     | otherwise     = threadWaitRead wlPollFd
          evQ <- view eventQueue
          incoming <- atomically (readTQueue evQ) `race` io pollfd
          -- read events - pair to dsplayPrepareRead
          WL.displayReadEvents wlDisplay
          return incoming
      main $ case next of
        Right () -> MainPoll
        Left ev -> ev

    mainExit how = do
      logInfo "Main: now exiting. Running exit hooks..."
      void . userCode =<< view (config . exitHook)
      lgrCleanup <- view _loggerCleanup
      io lgrCleanup
      how

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
    R.RiverWindowManagerSeat _ _ seat -> do
      -- NOTE: river does not indicate when it is done signalling about present windows, so we assume that it is done by the
      -- time first seat is announced.
      runInHS Windows.finishRecovery
      Seats.added seat

    -- /manage sequence/
    R.RiverWindowManagerManageStart _ wm -> do
      runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingManageQ)
      Outputs.manage >> Seats.manage >> Windows.manage
      void . userCode =<< view (config . logHook)
      R.riverWindowManagerManageFinish wm

    -- /render sequence/
    R.RiverWindowManagerRenderStart _ wm -> do
      runInHS . sequence_ =<< atomically . flushTQueue =<< asks (view pendingRenderQ)
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
      writeMainQ $ MainExit "river_window_manager_v1 finished, exiting." (toException $ ExitFailure 1)

    R.RiverWindowManagerUnavailable _ wm -> do
      io $ R.objectDestroy wm
      writeMainQ $ MainExit "another window manager already running" (toException $ ExitFailure 1)

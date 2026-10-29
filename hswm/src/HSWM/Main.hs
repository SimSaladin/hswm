{-# OPTIONS_GHC -Wno-ambiguous-fields #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-unused-record-wildcards #-}

-- |
-- Module      : HSWM.Main
-- Description : The main loop and entrypoint
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Main (
  hswm,
  startHSWM,
  module HSWM.Core,
  module HSWM.Wayland,
)
where

import HSWM.Core
import HSWM.InputConfig qualified as InputConfig
import HSWM.Main.Options
import HSWM.Main.Persist qualified as Persist
import HSWM.Operations
import HSWM.Outputs qualified as Outputs
import HSWM.Seats qualified as Seats
import HSWM.Util.Debug qualified as Debug
import HSWM.Utils
import HSWM.Wayland
import HSWM.Windows qualified as Windows
import River qualified as R
import WL.Client qualified as WL
import WL.ExtIdleNotify.Staging.V1.Client as IdleNotify
import WL.FractionalScale.Staging.V1.Client qualified as FS
import WL.Viewporter qualified as VP
import WL.Wlr.InputMethod.Unstable.V2.Client as WlrInputMethod
import WL.Wlr.LayerShell.Unstable.V1.Client qualified as WlrLayerShell
import WL.Wlr.OutputManagement.Unstable.V1.Client qualified as WlrOutputManagement
import WL.Wlr.OutputPowerManagement.Unstable.V1.Client qualified as WlrOutputPowerMgmt
import WL.XdgOutput.Unstable.V1.Client qualified as XdgOutput

import System.IO (putStrLn)
import System.Posix qualified as Posix
import qualified Data.Map as M
import HSWM.Util.Posix (sigabbrev)

defaultRegistrySettings :: H WL.RegistrySettings
defaultRegistrySettings = withRunInIO $ \runInIO ->
  return
    def
      { WL.regOnBind = \p name ver ->
          runInIO $ do
            logInfoNS "registry" $
              "bind global"
                :# [ "name" .= name
                   , "version" .= ver
                   , "interface-version" .= WL.objectInterfaceVersion p
                   , "interface" .= WL.objectInterfaceName p
                   ]
            when (ver /= WL.objectInterfaceVersion p) $
              logWarnNS "registry" $
                "bound interface does not match the bindings version" :# ["version" .= ver, "interface" .= WL.objectInterfaceName p, "bindings-version" .= WL.objectInterfaceVersion p]
      , WL.regOnEvent = \ev -> runInIO $
          case ev of
            WL.RegistryGlobal{..} -> return ()
            _ -> Debug.logEventShow "registry" ev []
      }

hswm :: (HasCallStack, m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow))
     => ConfigDoM m -- ^ Post-configuration: use this to configure things that depend on parsing CLI arguments etc.
     -> HSWMConfig m l -- ^ Initial user configuration
     -> IO ()
hswm userConfPost conf = do
  options <- parseMainArgs
  case () of
    _ | options.mainVersion -> putStrLn programVersion
    _ -> do
      -- add computed properties to the user config
      let conf' = maybe id (defaultModMask .~) options.mainOverrideDefaultModMask $ conf
      -- apply user post-configuration before start
      startHSWM options $ userConfPost conf'

startHSWM ::
  (HasCallStack, m ~ H, LayoutClass l RiverWindow, Read (l RiverWindow)) =>
  Main -> HSWMConfig m l -> IO ()
startHSWM options config = do
  installSignalHandlers -- TODO uninstall on exit?
  logType <- mainLogType options
  (lgrFun, lgrCleanup) <- initLoggers logType options.mainLogFormat options.mainColor (getLast options.mainLogLevel)

  let connectTo = Nothing

  conf <- flip runLoggingT lgrFun $ do
    logDebug $ "Connecting Wayland display..." :# ["connect-to" .= toText (fromMaybe "(using defaults)" connectTo)]
    wlDisplay <- WL.displayConnect connectTo
    logInfo $ "Wayland display connected!" :# ["display" .= show wlDisplay]
    -- Do not propagate debug to child processes.
    unsetEnv "WAYLAND_DEBUG"

    -- Restore or initialize initial state
    (config', initialState) <- Persist.maybeRestoreState options config
    HConf False Nothing config' wlDisplay
      <$> askLoggerIO
      <*> pure lgrCleanup
      <*> newEmptyMVar -- globals
      <*> newTMVarIO initialState -- state
      <*> newTQueueIO -- event q
      <*> newTQueueIO -- manage q
      <*> newTQueueIO -- render q
      <*> newTMVarIO def -- typemap

  runH conf $ do
    InputConfig.initialize
    handleErrors $ do
      logInfo "Allocating wayland event listeners"
      mkListener $ handleWithHook' @WL.ShmEvent
      mkListener $ handleWithHook' @WL.OutputEvent
      mkListener $ handleWithHook' @WL.SeatEvent
      mkListener $ handleWithHook' @WL.PointerEvent
      mkListener $ handleWithHook' @WL.TouchEvent
      mkListener $ handleWithHook' @WL.KeyboardEvent
      mkListener $ handleWithHook' @WL.ShellSurfaceEvent
      mkListener $ handleWithHook' @R.RiverXkbConfigEvent
      mkListener $ handleWithHook' @R.RiverXkbKeyboardEvent
      mkListener $ handleWithHook' @R.RiverXkbBindingEvent
      mkListener $ handleWithHook' @R.RiverXkbBindingsSeatEvent
      mkListener $ handleWithHook' @R.RiverPointerBindingEvent
      mkListener $ handleWithHook' @R.RiverWindowEvent
      mkListener $ handleWithHook' @R.RiverSeatEvent
      mkListener $ handleWithHook' @R.RiverOutputEvent
      mkListener $ handleWithHook' @R.RiverLayerShellOutputEvent
      mkListener $ handleWithHook' @R.RiverLayerShellSeatEvent
      mkListener $ handleWithHook' @R.RiverInputDeviceEvent
      mkListener $ handleWithHook' @R.RiverLibinputConfigEvent
      mkListener $ handleWithHook' @R.RiverLibinputDeviceEvent
      mkListener $ handleWithHook' @R.RiverInputManagerEvent
      mkListener $ handleWithHook' @R.RiverWindowManagerEvent

      -- Setup the globals registry
      putMVar conf.globals =<< WL.initRegistryState conf._wlDisplay =<< defaultRegistrySettings

      logInfo "Waiting for one roundtrip for the registry listener to become aware of all current globals..."
      void $ WL.displayRoundtrip conf._wlDisplay

      logInfo "Binding initial globals"
      _ <- bindGlobal @WL.Compositor
      _ <- bindGlobalWithAutoListener @WL.Shm
      _ <- bindGlobal @WlrInputMethod.InputMethodManager
      _ <- bindGlobalWithAutoListener @R.RiverWindowManager
      _ <- bindGlobal @R.RiverXkbBindings
      _ <- bindGlobal @R.RiverLayerShell
      _ <- bindGlobalWithAutoListener @R.RiverInputManager
      _ <- bindGlobalWithAutoListener @R.RiverXkbConfig
      -- note: libinputconfig has to come after RiverInputManager,
      -- otherwise we don't get the inputDevice associations!
      _ <- bindGlobalWithAutoListener @R.RiverLibinputConfig
      _ <- bindGlobal @XdgOutput.OutputManager
      _ <- bindGlobalWithAutoListener @WlrOutputManagement.OutputManager
      _ <- bindGlobal @WlrLayerShell.LayerShell
      _ <- bindGlobal @FS.FractionalScaleManager
      _ <- bindGlobal @VP.Viewporter
      _ <- bindGlobal @WlrOutputPowerMgmt.OutputPowerManager
      _ <- bindGlobal @IdleNotify.IdleNotifier

      logInfo "Installing signal handlers"

      run <- askRunInIO
      installHandler' Posix.sigTERM (Posix.Catch . run . sigevent) Nothing
      installHandler' Posix.sigINT (Posix.Catch . run . sigevent) Nothing
      installHandler' Posix.sigQUIT (Posix.Catch . run . sigevent) Nothing
      installHandler' Posix.sigUSR2 (Posix.Catch . run . sigevent) Nothing

      Persist.scheduleStateSave options.mainStateSave

    -- Create an additional seat; useful for testing
    -- io $ R.riverInputManagerCreateSeat inputManager (Just "foobar")

    displayFd <- WL.displayGetFd conf._wlDisplay
    mainLoop conf._wlDisplay displayFd
  where

    handleErrors f =
      try f >>= \case
        Right{} -> return ()
        Left (ex :: SomeException) -> do
          logError $ "error in main setup phase!" :# ["error" .= show ex]
          exitFailure

    sigevent sig = do
      logInfo $ "signal handler invoked" :# ["signal" .= sigabbrev sig]
      if sig == Posix.sigUSR2
        then io getProgramPath >>= writeMainQ . MainRestart
        else writeMainQ $ MainSignal sig

    installHandler' sig f other = do
      logDebug $ "install signal handler" :# ["signal" .= sigabbrev sig]
      void $ io $ Posix.installHandler sig (f sig) other

-- MAIN LOOP (WAYLAND EVENT LOOP)

mainLoop :: WL.Display -> Fd -> H ()
mainLoop wlDisplay wlPollFd = do
  logDebugNS "main" $ "Main loop is starting" :# ["display-fd" .= show wlPollFd]
  async runStartupHook >>= link
  mainPoll
  where
    runStartupHook = do
      logInfoNS "main" "Running user startup hooks..."
      void . userCode =<< view (config . startupHook)
    runExitHook = do
      logDebugNS "main" "Running user exit hooks..."
      void . userCode =<< view (config . exitHook)

    mainPoll = forever $ do
      -- * wl_display_prepare_read() needs to be balanced with either
      --   wl_display_read_events() or wl_display_cancel_read()
      -- * If prepare_read() returns non-zero, there are events to be dispatched obtain read intent:
      --   will try wl_display_prepare_read until it succeeds, attempting to dispatch pending events until none left.
      -- * displayReadEvents: pair to dsplayPrepareRead or displaycancelread if problem !!
      -- * Cancel read intent in case of error
      next <- bracketOnError_
          (WL.displayPrepareRead wlDisplay)
          (WL.displayCancelRead wlDisplay)
          $ do next <- mainPollDisplayFdOrEvent
               WL.displayReadEvents wlDisplay $> next
      forM_ next $ \case
        MainSaveToDisk -> mainSaveState
        MainRestart prog -> mainTryRestart prog
        MainSignal sig -> mainSignal sig
        MainExit msg ex -> mainExit (toText msg) ex
        MainCont -> return ()

    -- displayFlush: if == -1, need to poll for writes and try again
    -- poll for display fd read/write, or program event
    mainPollDisplayFdOrEvent = do
        flush <- WL.displayFlush wlDisplay
        (poll, cleanup) <- io $ (asum . map fst &&& io . foldMap snd) <$>
          mapM ($ wlPollFd) (threadWaitReadSTM : [ threadWaitWriteSTM | flush < 0 ])
        evQ <- view eventQueue
        res <- atomically $ (poll $> []) `orElse` liftM2 (:) (readTQueue evQ) (flushTQueue evQ)
        cleanup $> res

    mainSaveState = runInHS (void $ userCodeS Persist.writeStateToFile)

    mainTryRestart prog = do
        logInfoNS "main" $ "Restart/reload request received" :# ["program" .= prog]
        restart prog
        logErrorNS "main" "Restart was unsuccessful! Resuming normal operation."

    mainSignal sig = do
        logInfoNS "main" $ ("interrupted by signal (" <> toText (sigabbrev sig) <> "), exiting...") :# ["signal" .= show sig]
        runExitHook >> view _loggerCleanup >>= io >> exitFailure

    mainExit msg Nothing = do
        logInfoNS "main" $ "now exiting... (reason: user request)" :# ["message" .= msg]
        runExitHook >> view _loggerCleanup >>= io >> exitSuccess

    mainExit msg (Just ex) = do
        logErrorNS "main" $ "now exiting... (reason: application error)" :# [ "message" .= msg, "error" .= tshow ex ]
        runExitHook >> view _loggerCleanup >>= io >> exitFailure


---------------------------------------------------
-- event handling

instance HandleEvent H Event where
  handleEvent _ = return ()

instance HandleEvent H WlrOutputPowerMgmt.OutputPowerEvent where
  handleEvent _ = return ()

instance HandleEvent H XdgOutput.OutputEvent where
  handleEvent _ = return ()

instance HandleEvent H WlrOutputManagement.OutputManagerEvent where
  handleEvent (WlrOutputManagement.OutputManagerHead _ _ head) = addGlobalListener_ head
  handleEvent _ = return ()
instance HandleEvent H WlrOutputManagement.OutputHeadEvent where
  handleEvent _ = return ()

instance HandleEvent H R.RiverPointerBindingEvent where
  handleEvent = Seats.handlePointerEvent -- Pointer events

instance HandleEvent H R.RiverXkbConfigEvent where
  handleEvent = InputConfig.handleXkbConfigEvent

instance HandleEvent H R.RiverLibinputConfigEvent where
  handleEvent = InputConfig.handleLibinputEvent

instance HandleEvent H R.RiverInputManagerEvent where
  handleEvent = InputConfig.handleInputManagerEvent

instance HandleEvent H R.RiverInputDeviceEvent where
  handleEvent = InputConfig.handleInputDeviceEvent

instance HandleEvent H R.RiverOutputEvent where
  handleEvent = Outputs.handle

instance HandleEvent H R.RiverLayerShellOutputEvent where
  handleEvent = Outputs.handleLayerShell

instance HandleEvent H R.RiverSeatEvent where
  handleEvent = Seats.handleEvent

instance HandleEvent H IdleNotify.IdleNotificationEvent where
  handleEvent IdleNotify.IdleNotificationIdled{} = setOutputPower False
  handleEvent IdleNotify.IdleNotificationResumed{} = setOutputPower True

instance HandleEvent H R.RiverWindowEvent where
  handleEvent = Windows.handleEvent

instance HandleEvent H R.RiverWindowManagerEvent where
  handleEvent = \case
    R.RiverWindowManagerOutput _ _ out -> Outputs.added out
    R.RiverWindowManagerWindow _ _ w -> Windows.added w
    -- NOTE: river does not indicate when it is done signalling about present windows,
    -- so we assume that it is done by the time first seat is announced.
    R.RiverWindowManagerSeat _ _ seat -> runInHS Windows.finishRecovery >> Seats.added seat
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
      -- Bulk disable all bindings
      writeManageQ $ mapSeats $ \s ->
        forM_ (s.keyBindingsState.riverBoundKeys `M.restrictKeys` s.keyBindingsState.riverBoundKeysEnabled)
          R.riverXkbBindingDisable

    R.RiverWindowManagerSessionUnlocked _ _wm ->
      -- Bulk enable all bindings that should be enabled
      writeManageQ $ mapSeats $ \s ->
        forM_ (s.keyBindingsState.riverBoundKeys `M.restrictKeys` s.keyBindingsState.riverBoundKeysEnabled)
          R.riverXkbBindingEnable

    R.RiverWindowManagerFinished _ wm -> do
      R.objectDestroy wm
      writeMainQ $ MainExit "river_window_manager_v1 finished, exiting." (Just $ toException $ ExitFailure 1)

    R.RiverWindowManagerUnavailable _ wm -> do
      R.objectDestroy wm
      writeMainQ $ MainExit "another window manager already running" (Just $ toException $ ExitFailure 1)

instance HandleEvent H R.RiverLayerShellSeatEvent where
  handleEvent = Seats.handleLayerShellSeat
instance HandleEvent H R.RiverXkbBindingsSeatEvent where
  handleEvent = Seats.handleXkbBindingsSeatEvent -- XKB Keyboard events

instance HandleEvent H R.RiverLibinputDeviceEvent where
  handleEvent = InputConfig.handleLibinputDeviceEvent
instance HandleEvent H R.RiverXkbKeymapEvent where
  handleEvent = InputConfig.handleXkbKeymapEvent
instance HandleEvent H R.RiverXkbKeyboardEvent where
  handleEvent = InputConfig.handleXkbKeyboardEvent

instance HandleEvent H WL.ShmEvent where
  handleEvent _ = return ()
instance HandleEvent H WL.PointerEvent where
  handleEvent _ = return ()
instance HandleEvent H WL.TouchEvent where
  handleEvent _ = return ()
instance HandleEvent H WL.ShellSurfaceEvent where
  handleEvent _ = return ()
instance HandleEvent H WL.SeatEvent where
  handleEvent = Seats.handleWlSeatEvent
instance HandleEvent H WL.OutputEvent where
  handleEvent = Outputs.handleWlOutput

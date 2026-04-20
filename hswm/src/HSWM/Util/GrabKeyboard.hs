{-# LANGUAGE ConstraintKinds #-}

-- |
-- Module      : HSWM.Util.GrabKeyboard
-- Description : Grab keyboard in wlroots
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.GrabKeyboard where

import Control.Monad.Fix
import Data.Map qualified as M
import Foreign hiding (void)
import HSWM.Core
import HSWM.Operations
import HSWM.XKB
import Bindings.Wayland.Client qualified as WL
import Bindings.Wayland.WlrInputMethodUnstableV2 as Wlr

type HasGrabCtx env m = (MonadStateGlobal env m, HasEventQueues env, MonadReader env m, MonadLogger m, MonadUnliftIO m, MonadFix m)

data GrabIM = GrabIM
  { reserved :: MVar (),
    bcastChan :: TChan (Either Done GrabbedKey),
    inputMethod :: Wlr.InputMethod,
    inputMethodListener :: Wlr.InputMethodListener,
    imKeyboardGrab :: MVar Wlr.InputMethodKeyboardGrab,
    imKeyboardGrabListener :: Wlr.InputMethodKeyboardGrabListener
  }

data GrabbedKey
  = GK {state :: !Word, keycode :: !Word, keysym :: !Word}
  | GMod {mods :: !Word}
  deriving (Eq, Show, Read)

data Done = Done deriving (Show)

instance Default GrabbedKey where def = GK 0 0 0

-- | Grab keyboard and process events until ungrabbed.
withKeyboardGrab ::
  (Show acc, event ~ Either Done GrabbedKey, HasGrabCtx env m) =>
  -- | The seat whose keyboard is grabbed
  Seat ->
  -- | Keybindings using any of these modifiers are temporarily disabled, so that they can be grabbed
  -- by this function.
  [ModMask] ->
  -- | Keybindings using these keysyms will be temporarily disabled.
  [KeySym] ->
  -- | Key event processing
  (acc -> event -> m (Either Done acc)) ->
  -- | initial value of the accumulator
  acc ->
  m ()
withKeyboardGrab seat mods keys fun acc0 = do
  (manage, _) <- getEventQueueFuncs
  syncVar <- newEmptyMVar
  grabIM <- lookupGrabIM seat
  bracket_
    (tryPutMVar grabIM.reserved () >>= flip unless (throwString "IM busy"))
    (tryTakeMVar grabIM.reserved)
    $ do
      rdChan <- atomically $ dupTChan grabIM.bcastChan
      bracket_
        (activate grabIM >> manage (lockSeatActions >> seatDisableBindingsMatching seat.river_seat mods keys >> io (putMVar syncVar ())) >> manageDirty)
        (deactivate grabIM >> manage (freeSeatActions >> seatEnableBindingsMatching seat.river_seat mods keys) >> manageDirty)
        $ do
          takeMVar syncVar
          logDebug "grab: starting processing"
          void $
            let process s = do
                    inp <- atomically (readTChan rdChan)
                    res <- fun s inp
                    logDebug $ "process-grab" :# [ "input" .= show inp, "result" .= show res ]
                    either (\_ -> return s) process res
             in process acc0
  where
    lockSeatActions :: HS ()
    lockSeatActions = modifySeat seat.river_seat $ \x -> x { suppressChangeFocus = 10600 }
    freeSeatActions :: HS ()
    freeSeatActions = modifySeat seat.river_seat $ \x -> x { suppressChangeFocus = 0 }

lookupGrabIM :: (HasGrabCtx env m) => Seat -> m GrabIM
lookupGrabIM s = do
  seatInputMethods <- getOrCreateObject @(Map WL.Seat GrabIM) $ pure mempty
  case M.lookup s.wl_seat seatInputMethods of
    Just im -> do
      isFree <- isEmptyMVar im.reserved
      case isFree of
        True -> do
          imManager <- getObject
          grabIM <- newGrabIM imManager s.wl_seat
          putObject $ M.insert s.wl_seat grabIM seatInputMethods
          return grabIM
        False -> return im
    Nothing -> do
      imManager <- getObject
      grabIM <- newGrabIM imManager s.wl_seat
      putObject $ M.insert s.wl_seat grabIM seatInputMethods
      return grabIM

newGrabIM ::
  (MonadReader env m, MonadLogger m, MonadUnliftIO m, MonadFix m) =>
  Wlr.InputMethodManager -> WL.Seat -> m GrabIM
newGrabIM manager seat = do

  reserved <- newEmptyMVar
  active <- newIORef False
  pending_active <- newIORef False
  bcastChan <- newBroadcastTChanIO
  xkbContext <- io $ xkbContextNew [] -- TODO free
  xkbState <- newIORef nullPtr -- @XkbState TODO free
  imKeyboardGrab <- newEmptyMVar

  runInIO <- askRunInIO

  inputMethodListener <- io $ Wlr.mkInputMethodListener $ \e -> runInIO $ case e of
    Wlr.InputMethodUnavailable _ud self -> do
      logError "grab: unavailable"
      atomically $ writeTChan bcastChan (Left Done)
      io $ WL.objectDestroy self
    Wlr.InputMethodActivate _ _ -> do
      writeIORef pending_active True
    Wlr.InputMethodDeactivate _ _ -> do
      writeIORef pending_active False

    Wlr.InputMethodDone _ _ -> do
      prev_active <- readIORef active
      next_active <- readIORef pending_active
      when (prev_active /= next_active) $ do
        logInfo $ "grab: active state" :# [ "active" .= next_active ]
      writeIORef active next_active

    _ -> pure () -- ignored


  imKeyboardGrabListener <- io $ Wlr.mkInputMethodKeyboardGrabListener $ \e -> runInIO $ case e of
    Wlr.InputMethodKeyboardGrabKeymap _ _ _fmt fd size -> do
      res <- io $ createKeymapFromFd xkbContext (fi fd) (fi size) False
      st <- io $ xkbStateNew res
      io $ xkbKeymapUnref res
      writeIORef xkbState st
      logDebug "grab: XKB keymap updated"
    Wlr.InputMethodKeyboardGrabModifiers _ _ _ depressed latched locked group -> do
      st <- readIORef xkbState
      _ <- io $ xkbStateUpdateMask st (fi depressed) (fi latched) (fi locked) 0 0 (fi group)
      let it = Right GMod {mods = fi depressed}
      logDebug $ "grab: modifier grabbed" :# [ "mod" .= tshow it ]
      atomically $ writeTChan bcastChan it
    Wlr.InputMethodKeyboardGrabKey _ _ _ _time key st -> do
      xst <- readIORef xkbState
      keysym <- io $ xkbStateKeyGetOneSym xst (fi $ key + 8)
      let it = Right GK {state = fi st.unwrap, keysym = fi keysym, keycode = fi key}
      logDebug $ "grab: key grabbed" :# [ "key" .= show it ]
      atomically $ writeTChan bcastChan it
    -- let pressed = fi st == WL.fromCEnum WL_KEYBOARD_KEY_STATE_PRESSED

    Wlr.InputMethodKeyboardGrabRepeatInfo {} -> pure () -- pTrace e -- ignored
  inputMethod <- io $ Wlr.inputMethodManagerGetInputMethod manager seat
  io $ WL.listenerAdd inputMethod inputMethodListener nullPtr

  logDebug "grab: created"
  return GrabIM {..}

activate :: (MonadIO m, MonadLogger m, MonadReader env m) => GrabIM -> m ()
activate GrabIM {..} = do
  res <- io $ Wlr.inputMethodGrabKeyboard inputMethod
  when (res.unwrap == nullPtr) $ do
    logError "grab: failed to activate (failed to grab keyboard)"
    error "Failed to grab"
  io $ WL.listenerAdd res imKeyboardGrabListener nullPtr
  putMVar imKeyboardGrab res
  logInfo "grab: activated"

deactivate :: (MonadIO m, MonadLogger m, MonadReader env m) => GrabIM -> m ()
deactivate GrabIM {..} = do
  res <- tryTakeMVar imKeyboardGrab
  case res of
    Just kbdg | kbdg.unwrap /= nullPtr -> do
      logDebug "grab: releasing keyboard grab"
      io $ WL.objectDestroy kbdg
    _ -> pure ()
  io $ do
    WL.objectDestroy inputMethod
    _ <- WL.freeListener (Proxy :: Proxy Wlr.InputMethodEvent) =<< peek (unConstPtr inputMethodListener)
    _ <- WL.freeListener (Proxy :: Proxy Wlr.InputMethodKeyboardGrabEvent) =<< peek (unConstPtr imKeyboardGrabListener)
    return ()
  logDebug "grab: deactivated"

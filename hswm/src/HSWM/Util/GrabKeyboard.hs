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

import           HSWM.Core
import           HSWM.Operations

import qualified River as R
import qualified WL.Client as WL

import qualified WL.Wlr.InputMethod.Unstable.V2.Client as Wlr

import           Control.Monad.Fix
import           Data.Aeson (ToJSON)
import qualified Data.Map as M

type HasGrabCtx env m = (env ~ HConf, MonadStateGlobal env m, MonadReader env m, MonadLogger m, MonadUnliftIO m, MonadFix m)

type SeatIMs = Map WL.Seat GrabIM

data GrabIM = GrabIM
  { reserved               :: MVar ()
  , xkbState               :: MVar XkbState
  , bcastChan              :: TChan (Either Done GrabbedKey)
  , inputMethod            :: Wlr.InputMethod
  , imKeyboardGrab         :: MVar Wlr.InputMethodKeyboardGrab
  , inputMethodListener    :: ConstPtr (WL.ObjectListener Wlr.InputMethod)
  , imKeyboardGrabListener :: ConstPtr (WL.ObjectListener Wlr.InputMethodKeyboardGrab)
  } deriving (Eq, Generic)

data GrabbedKey
  = GK {state :: !Word, keycode :: !Word, keysym :: !Word}
  -- ^ Grabbed key
  | GMod {mods :: !Word}
  -- ^ Grabbed modifier(s)
  deriving (Eq, Ord, Show, Read, Generic)
  deriving (ToJSON)

data Done = Done
  deriving (Eq, Ord, Show, Generic)
  deriving (ToJSON)

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
  grabIM <- lookupGrabIM seat
  -- XXX: fork to avoid cancellation on the first "key released" event
  void . async $ withIM grabIM $ do
    rdChan <- atomically $ dupTChan grabIM.bcastChan
    withActive grabIM $ do
      let process s = do
              inp <- atomically (readTChan rdChan)
              res <- fun s inp
              logDebug $ "grab: process" :# [ "input" .= inp, "result" .= show res ]
              either (\_ -> return s) process res
       in void $ process acc0
  where
    withIM grabIM = bracket_ (tryPutMVar grabIM.reserved () >>= flip unless (throwString "IM busy"))
                             (tryTakeMVar grabIM.reserved)

    withActive grabIM f = do
      (manage, _) <- getEventQueueFuncs
      syncVar     <- newEmptyMVar
      bracket_
        (activate grabIM >> manage (lockSeatActions >> io (putMVar syncVar ())) >> manageDirty)
        (deactivate grabIM >> manage freeSeatActions >> manageDirty)
        (takeMVar syncVar >> f)

    lockSeatActions :: HS ()
    lockSeatActions = do
      modifySeat seat.river_seat $ \x -> x { suppressChangeFocus = 10600 }
      seatDisableBindingsMatching seat.river_seat mods keys

    freeSeatActions :: HS ()
    freeSeatActions = do
      modifySeat seat.river_seat $ \x -> x { suppressChangeFocus = 0 }
      seatEnableBindingsMatching seat.river_seat mods keys

lookupGrabIM :: (HasGrabCtx env m) => Seat -> m GrabIM
lookupGrabIM s = do
  seatInputMethods <- getOrCreateObject @SeatIMs $ pure mempty
  let makeGrabIM = do
        imManager <- getObject
        grabIM    <- newGrabIM imManager s.wl_seat
        putObject $ M.insert s.wl_seat grabIM seatInputMethods
        return grabIM
  case M.lookup s.wl_seat seatInputMethods of
    Just im -> do
      isFree <- isEmptyMVar im.reserved
      if isFree then makeGrabIM else return im
    Nothing -> makeGrabIM

newGrabIM
  :: (MonadReader env m, MonadLogger m, MonadUnliftIO m)
  => Wlr.InputMethodManager -> WL.Seat -> m GrabIM
newGrabIM manager seat = do
  reserved       <- newEmptyMVar
  active         <- newIORef False
  pending_active <- newIORef False
  xkbState       <- newEmptyMVar
  imKeyboardGrab <- newEmptyMVar
  bcastChan      <- newBroadcastTChanIO
  runInIO        <- askRunInIO

  inputMethodListener <- WL.createListener $ \e -> runInIO $ case e of
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
      when (prev_active /= next_active) $
        logInfo $ "grab: active state" :# [ "active" .= next_active ]
      writeIORef active next_active

    _ -> pure () -- ignored

  imKeyboardGrabListener <- WL.createListener $ \e -> runInIO $ case e of

    Wlr.InputMethodKeyboardGrabKeymap _ _ _fmt fd sz -> do
      io $ do
        ctx  <- createXkbContext def
        kmap <- createKeymapFromFd ctx (fi fd) (fi sz) False KeymapFormatTextV1
        xst  <- createXkbState kmap
        _    <- tryTakeMVar xkbState
        putMVar xkbState xst

    Wlr.InputMethodKeyboardGrabModifiers _ _ _ depressed latched locked group -> do
      st <- readMVar xkbState
      _ <- io $ xkbStateUpdateMask st (fi depressed) (fi latched) (fi locked) 0 0 (fi group)
      let it = GMod {mods = fi depressed}
      logDebug $ "grab: modifiers grabbed" :# [ "mod" .= it ]
      atomically $ writeTChan bcastChan $ Right it

    Wlr.InputMethodKeyboardGrabKey _ _ _ _time key st -> do
      xst <- readMVar xkbState
      keysym <- io $ xkbStateKeySym xst (fi $ key + 8)
      let it = GK {state = fi $ R.fromCEnum st, keysym = fi keysym, keycode = fi key}
      logDebug $ "grab: key grabbed" :# [ "key" .= it ]
      atomically $ writeTChan bcastChan $ Right it

    Wlr.InputMethodKeyboardGrabRepeatInfo {} -> pure () -- pTrace e -- ignored

  inputMethod <- Wlr.inputMethodManagerGetInputMethod manager seat
  WL.listenerAdd_ inputMethod inputMethodListener

  return GrabIM {..}

activate :: HasCallStack => (MonadIO m, MonadLogger m, MonadReader env m) => GrabIM -> m ()
activate GrabIM {..} = do
  res <- Wlr.inputMethodGrabKeyboard inputMethod
  when (res == def) $ do
    logError "grab: failed to activate (failed to grab keyboard)"
    throwString "Failed to grab keyboard"
  WL.listenerAdd_ res imKeyboardGrabListener
  putMVar imKeyboardGrab res
  logInfo "grab: activated"

deactivate :: HasCallStack => (MonadIO m, MonadLogger m, MonadReader env m) => GrabIM -> m ()
deactivate GrabIM {..} = do
  res <- tryTakeMVar imKeyboardGrab
  forM_ res $ \kbdg -> when (kbdg /= def) $ do
    logDebug "grab: releasing keyboard grab"
    io $ WL.objectDestroy kbdg
  io $ WL.objectDestroy inputMethod
  io $ WL.objectDestroy inputMethodListener
  io $ WL.objectDestroy imKeyboardGrabListener
  logDebug "grab: deactivated"

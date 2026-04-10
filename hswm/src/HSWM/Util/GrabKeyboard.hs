{-# LANGUAGE ConstraintKinds #-}
------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Util.GrabKeyboard
-- Description : Grab keyboard in wlroots
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module HSWM.Util.GrabKeyboard  where

import           Control.Monad.Fix
import qualified Data.Map as M
import           Foreign hiding (void)
--import           Generated.Wayland.Client (pattern WL_KEYBOARD_KEY_STATE_PRESSED)
import           HSWM.Core
import           HSWM.Operations
import           HSWM.XKB
import qualified Wayland.Client as WL
import           Wlr

type HasGrabCtx env m = (MonadStateGlobal env m, HasEventQueues env, MonadReader env m, HasLogFunc env, MonadUnliftIO m, MonadFix m)

data GrabIM = GrabIM
  { reserved               :: MVar ()
  , bcastChan              :: TChan (Either Done GrabbedKey)
  , inputMethod            :: ZwpInputMethod
  , inputMethodListener    :: ZwpInputMethodListener
  , imKeyboardGrab         :: MVar ZwpInputMethodKeyboardGrab
  , imKeyboardGrabListener :: ZwpInputMethodKeyboardGrabListener
  }

data GrabbedKey = GK { state :: !Word , keycode :: !Word , keysym :: !Word }
                | GMod { mods :: !Word }
                deriving (Eq, Show, Read)

data Done = Done deriving (Show)

instance Default GrabbedKey where def = GK 0 0 0

-- | Grab keyboard and process events until ungrabbed.
withKeyboardGrab :: (event ~ Either Done GrabbedKey, HasGrabCtx env m)
                 => Seat -- ^ The seat whose keyboard is grabbed
                 -> [ModMask] -- ^ Keybindings using any of these modifiers are temporarily disabled, so that they can be grabbed
                              -- by this function.
                 -> [KeySym] -- ^ Keybindings using these keysyms will be temporarily disabled.
                 -> (acc -> event -> m (Either Done acc)) -- ^ Key event processing
                 -> acc -- ^ initial value of the accumulator
                 -> m ()
withKeyboardGrab seat mods keys fun acc0 = do
  (manage, _) <- getEventQueueFuncs
  syncVar <- newEmptyMVar
  grabIM <- lookupGrabIM seat
  bracket_
    (tryPutMVar grabIM.reserved () >>= flip unless (throwString "IM busy"))
    (tryTakeMVar grabIM.reserved) $ do
      rdChan <- atomically $ dupTChan grabIM.bcastChan
      bracket_
        (activate grabIM >> manage (seatDisableBindingsMatching seat.river_seat mods keys >> io (putMVar syncVar ())) >> manageDirty)
        (deactivate grabIM >> manage (seatEnableBindingsMatching seat.river_seat mods keys) >> manageDirty) $ do
          takeMVar syncVar

          void $ let process s = atomically (readTChan rdChan) >>= fun s >>= either (\_ -> return s) process
                  in process acc0


lookupGrabIM :: (HasGrabCtx env m) => Seat -> m GrabIM
lookupGrabIM s = do
  seatInputMethods <- getOrCreateObject @(Map WL.Seat GrabIM) $ pure mempty
  case M.lookup s.wl_seat seatInputMethods of
    Just im -> return im
    Nothing -> do
      imManager <- getObject
      grabIM <- newGrabIM imManager s.wl_seat
      putObject $ M.insert s.wl_seat grabIM seatInputMethods
      return grabIM

newGrabIM :: (MonadReader env m, HasLogFunc env, MonadUnliftIO m, MonadFix m)
          => ZwpInputMethodManager -> WL.Seat -> m GrabIM
newGrabIM manager seat = mfix $ \final -> do
    reserved       <- newEmptyMVar
    active         <- newIORef False
    pending_active <- newIORef False
    bcastChan      <- newBroadcastTChanIO
    xkbContext     <- io $ xkbContextNew [] -- TODO free
    xkbState       <- newIORef nullPtr -- @XkbState TODO free
    imKeyboardGrab <- newEmptyMVar

    runInIO <- askRunInIO

    logDebug "grab: creating input method listener"
    inputMethodListener <- io $ mkZwpInputMethodListener $ \e -> runInIO $ case e of

      ZwpInputMethodDone _ _ -> do
        prev_active <- readIORef active
        next_active <- readIORef pending_active
        when (prev_active /= next_active) $ do
          logInfo $ "grab: active state now: " <> (if next_active then "ACTIVE" else "NOT ACTIVE")
        writeIORef active next_active
        when (not next_active && prev_active) $ do
          atomically $ writeTChan bcastChan (Left Done)
          deactivate final

      ZwpInputMethodUnavailable _ud self -> do
        logError "grap: unavailable"
        atomically $ writeTChan bcastChan (Left Done)
        io $ WL.objectDestroy self

      ZwpInputMethodActivate _ _ -> do
        logInfo "grab: input method activated"
        writeIORef pending_active True
      ZwpInputMethodDeactivate _ _ -> do
        logInfo "grab: input method deactivated"
        writeIORef pending_active False

      _ -> pure () -- ignored

    logDebug "grab: creating keyboard grab listener"
    imKeyboardGrabListener <- io $ mkZwpInputMethodKeyboardGrabListener $ \e -> runInIO $ case e of

      ZwpInputMethodKeyboardGrabKeymap _ _ _fmt fd size -> do
        res <- io $ createKeymap'' xkbContext (fi fd) (fi size)
        st <- io $ xkbStateNew res
        io $ xkbKeymapUnref res
        writeIORef xkbState st
        logDebug "grab: XKB keymap updated"

      ZwpInputMethodKeyboardGrabModifiers _ _ _ depressed latched locked group -> do
        st <- readIORef xkbState
        _ <- io $ xkbStateUpdateMask st (fi depressed) (fi latched) (fi locked) 0 0 (fi group)
        let it = Right GMod { mods = fi depressed }
        logDebug $ "grab: modifier grabbed: " <> display (tshow it)
        atomically $ writeTChan bcastChan it

      ZwpInputMethodKeyboardGrabKey _ _ _ _time key st -> do
        xst <- readIORef xkbState
        keysym <- io $ xkbStateKeyGetOneSym xst (fi $ key + 8)
        let it = Right GK { state = fi st, keysym = fi keysym, keycode = fi key }
        logDebug $ "grab: key grabbed: " <> display (tshow it)
        atomically $ writeTChan bcastChan it
        --let pressed = fi st == WL.fromCEnum WL_KEYBOARD_KEY_STATE_PRESSED

      ZwpInputMethodKeyboardGrabRepeatInfo{} -> pure () -- pTrace e -- ignored

    logDebug "grab: getting input method"
    inputMethod <- io $ zwpInputMethodManagerGetInputMethod manager seat

    logDebug "grab: adding input method listener"
    io $ WL.listenerAdd inputMethod inputMethodListener nullPtr

    return GrabIM{..}

activate :: (MonadIO m, HasLogFunc env, MonadReader env m) => GrabIM -> m ()
activate GrabIM{..} = do
  logDebug "grab: activating..."
  res <- io $ zwpInputMethodGrabKeyboard inputMethod
  when (res.unwrap == nullPtr) $ do
      logError "grab: failed to activate (failed to grab keyboard)"
      error "Failed to grab"
  io $ WL.listenerAdd res imKeyboardGrabListener nullPtr
  putMVar imKeyboardGrab res
  logInfo "grab: activated"

deactivate :: (MonadIO m, HasLogFunc env, MonadReader env m) => GrabIM -> m ()
deactivate GrabIM{..} = do
  logDebug "grab: deactivating..."
  res <- tryTakeMVar imKeyboardGrab
  case res of
    Just kbdg | kbdg.unwrap /= nullPtr -> do
      logDebug "grab: releasing keyboard grab"
      io $ zwpInputMethodKeyboardGrabRelease kbdg
    _ -> pure ()

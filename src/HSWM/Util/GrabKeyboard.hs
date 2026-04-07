{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ConstraintKinds #-}


------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Util.GrabKeyboard
-- Description : Grab keyboard in wlroots
-- Copyright   : (c) Samuli Thomasson, 2026
-- License     : WTFPL
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module HSWM.Util.GrabKeyboard  where

import Prelude hiding (state)
import HSWM.Core
import HSWM.Utils
import qualified Wayland.Client as WL
import Wlr
import Generated.Wayland.Client (pattern WL_KEYBOARD_KEY_STATE_PRESSED)
import Foreign hiding (void)
import HSWM.XKB.FFI
import HSWM.Operations
import Control.Monad.Fix
import qualified River.Objects as R
import Control.Monad.State (StateT, runStateT)
import qualified Data.Map as M

-- | XXX testing purposes
testIM2 :: H ()
testIM2 = do
  s : _ <- gets _seats
  let f s key
        | s >= 10 = return (Left Done)
        | otherwise = do pTrace (s, key) >> return (Right (s+1))
  withKeyboardGrab s [ 2, 4, 8 ] [ 122, 112 ] f (-1)

type HasGrabCtx env s m = (MonadStateGlobal s m, HasEventQueues env, MonadIO m, MonadReader env m, HasLogFunc env, MonadUnliftIO m, MonadFix m)

-- | Grab keyboard and process events until ungrabbed.
withKeyboardGrab :: (event ~ Either Done GrabbedKey, HasGrabCtx env s m)
                 => Seat -- ^ The seat whose keyboard is grabbed
                 -> [ModMask] -- ^ Keybindings using any of these modifiers are temporarily disabled, so that they can be grabbed
                              -- by this function.
                 -> [KeySym] -- ^ Keybindings using these keysyms will be temporarily disabled.
                 -> (acc -> event -> IO (Either Done acc)) -- ^ Key event processing
                 -> acc -- ^ initial value of the accumulator
                 -> m ()
withKeyboardGrab seat mods keys fun acc0 = do
  (manage, render) <- getEventQueueFuncs
  grabIM <- lookupGrabIM seat
  void . io . forkIO $
    bracket_
        (tryPutMVar grabIM.reserved () >>= flip unless (throwString "IM busy"))
        (tryTakeMVar grabIM.reserved) $
    do
      rdChan <- atomically $ dupTChan grabIM.bcastChan
      bracket_
        (grabIM.activate >> manage (seatDisableBindingsMatching seat.river_seat mods keys))
        (grabIM.deactivate >> manage (seatEnableBindingsMatching seat.river_seat mods keys)) $

          void $ let process s = atomically (readTChan rdChan) >>= fun s >>= either (\_ -> return s) process
                  in process acc0


lookupGrabIM :: (HasGrabCtx env s m) => Seat -> m GrabIM
lookupGrabIM s = do
  logFunc <- asks (view logFuncL)
  let runWithLog = flip runReaderT logFunc
  seatInputMethods <- getOrCreateObject @(Map WL.Seat GrabIM) $ pure mempty
  case M.lookup s.wl_seat seatInputMethods of
    Just im -> do
      res <- isEmptyMVar im.reserved
      case res of
        True -> return im
        False -> do
          -- forcefully recreate...
          imManager <- getObject
          grabIM <- newGrabIM imManager s.wl_seat
          putObject $ M.insert s.wl_seat seatInputMethods
          return grabIM
    Nothing -> do
      imManager <- getObject
      grabIM <- newGrabIM imManager s.wl_seat
      putObject $ M.insert s.wl_seat seatInputMethods
      return grabIM


data GrabIM = GrabIM
  { seat        :: WL.Seat
  , reserved    :: MVar ()
  , imL         :: ZwpInputMethodListener
  , grabL       :: ZwpInputMethodKeyboardGrabListener
  , imPtr       :: Ptr ZwpInputMethod
  , kbdGrab     :: Ptr ZwpInputMethodKeyboardGrab
  , deactivate  :: IO ()
  , activate    :: IO ()
  , bcastChan   :: TChan (Either Done GrabbedKey)
  -- , callback    :: IORef (Either () GrabbedKey -> IO ())
  }

data GrabbedKey = GK { state :: !Word , keycode :: !Word , keysym :: !Word }
                | GMod { mods :: !Word }
                deriving (Eq, Show, Read)

data Done = Done deriving (Show)

instance Default GrabbedKey where def = GK 0 0 0

newGrabIM :: (MonadIO m, MonadReader env m, HasLogFunc env, MonadUnliftIO m, MonadFix m)
          => ZwpInputMethodManager -> WL.Seat -> m GrabIM
newGrabIM manager seat = mfix $ \final -> do
    runInIO <- askRunInIO

    reserved       <- newEmptyMVar
    bcastChan      <- newBroadcastTChanIO
    xkbState       <- io $ newIORef undefined -- @XkbState
    xkbContext     <- io $ malloc @XkbContext
    kbdGrab        <- io $ calloc @ZwpInputMethodKeyboardGrab
    imPtr          <- io $ calloc @ZwpInputMethod
    active         <- io $ calloc @Bool
    pending_active <- io $ calloc @Bool

    io $ xkbContextNew 0 >>= poke xkbContext

    -- Input Method event listener
    imL <- io $ mkZwpInputMethodListener $ \e -> runInIO $ case e of

      ZwpInputMethodDone _ _ -> do
        prev_active <- io $ peek active
        next_active <- io $ peek pending_active
        when (prev_active /= next_active) $ do
          logInfo $ "grab: active state now: " <> (if next_active then "ACTIVE" else "NOT ACTIVE")
        io $ poke active next_active
        -- io $ if next_active && not prev_active then final.activate else final.deactivate
        io $ unless (next_active && not prev_active) $ final.deactivate

      ZwpInputMethodUnavailable _ud self -> do
        logError "grap: unavailable"
        atomically $ writeTChan bcastChan (Left Done)
        --io $ WL.objectDestroy self

      ZwpInputMethodActivate _ _ -> do
        logInfo "grab: input method activated"
        io $ poke pending_active True
      ZwpInputMethodDeactivate _ _ -> do
        logInfo "grab: input method deactivated"
        io $ poke pending_active False

      ZwpInputMethodSurroundingText _ _ _text _cursor _anchor -> pure () -- ignored
      ZwpInputMethodTextChangeCause _ _ _cause -> pure () -- ignored
      ZwpInputMethodContentType _ _ _hint _purpose -> pure () -- ignored

    -- Keyboard grab listener
    grabL <- io $ mkZwpInputMethodKeyboardGrabListener $ \e -> runInIO $ case e of

      ZwpInputMethodKeyboardGrabKeymap _ _ _fmt fd size -> do
        ctxPtr <- io $ peek xkbContext
        --xkb_keymap_unref res
        res <- io $ createKeymap'' ctxPtr (fi fd) (fi size)
        st <- io $ xkb_state_new res
        writeIORef xkbState st
        logDebug "grab: XKB keymap updated"

      ZwpInputMethodKeyboardGrabModifiers _ _ _ depressed latched locked group -> do
        -- pTrace e
        st <- readIORef xkbState
        io $ xkb_state_update_mask st depressed latched locked 0 0 group
        let gkey = GMod { mods = fi depressed }
            it = Right gkey
        logDebug $ "grab: modifier grabbed: " <> display (tshow gkey)
        --io $ readIORef final.callback >>= ($ Right gkey)
        atomically $ writeTChan bcastChan it

      ZwpInputMethodKeyboardGrabKey _ _ _ _time key st -> do
        xst <- readIORef xkbState
        keysym <- io $ xkb_state_key_get_one_sym xst (fi $ key + 8)
        let gk = GK { state = fi st, keysym = fi keysym, keycode = fi key }
            it = Right gk
        logDebug $ "grab: key grabbed: " <> display (tshow gk)
        atomically $ writeTChan bcastChan it
        --io $ readIORef final.callback >>= ($ Right gk)
        --let pressed = fi st == WL.fromCEnum WL_KEYBOARD_KEY_STATE_PRESSED

      ZwpInputMethodKeyboardGrabRepeatInfo _ _ _ _ -> pure () -- pTrace e -- ignored

    -- input method
    im <- io $ zwpInputMethodManagerGetInputMethod manager seat
    io $ poke imPtr im
    io $ WL.listenerAdd im imL nullPtr

    let activate = runInIO $ do
          logDebug "grab: activating..."
          res <- io $ zwpInputMethodGrabKeyboard im
          when (res.unwrap == nullPtr) $ do
              logError "grab: failed to activate (failed to grab keyboard)"
              --error "Failed to grab"
          io $ WL.listenerAdd res final.grabL nullPtr
          io $ poke kbdGrab res
          logInfo "grab: activated"

    let deactivate = runInIO $ do
          logDebug "grab: deactivating..."
          res <- io $ peek kbdGrab
          when (res.unwrap /= nullPtr) $ do
              logDebug "grab: releasing keyboard grab"
              io $ zwpInputMethodKeyboardGrabRelease res
              io $ poke kbdGrab (ZwpInputMethodKeyboardGrab nullPtr)
          im <- io $ peek imPtr
          when (im.unwrap /= nullPtr) $ do
              io $ WL.objectDestroy im
          --io $ WL.objectDestroy grabL
          --io $ WL.objectDestroy imL

    return GrabIM{..}

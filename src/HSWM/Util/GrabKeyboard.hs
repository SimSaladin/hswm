{-# LANGUAGE PatternSynonyms #-}

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
import Foreign
import HSWM.XKB.FFI
import HSWM.Operations
import Control.Monad.Fix
import Data.IORef
import qualified River.Objects as R

grabWhileDo :: acc -> [ModMask] -> [KeySym] -> (KeySym -> StateT acc H ()) -> H ()
grabWhileDo start uphold triggers eventHandler = withGrab start $ \acc gk ->
  case gk of
    GK{..}
      | state > 0, fi keysym `elem` triggers -> return (Left (Just (snd <$> runStateT (eventHandler (fi keysym)) acc)))
      | otherwise -> return (Left Nothing)
    GMod{..}
      | foldl' (.|.) 0 uphold .&. fi mods == 0 -> return $ Right (return ())
      | otherwise -> return (Left Nothing)

withGrab :: acc -> (acc -> GrabbedKey -> IO (Either (Maybe (H acc)) (H ()))) -> H ()
withGrab start f = do
  im2manager <- getObject
  seat : _ <- gets _seats
  grabIM <- getOrCreateObject $ io $ newGrabIM im2manager seat.wl_seat
  s : _ <- gets _seats
  let mainBinds = s.xkb_bindings
  hc <- ask
  withRunInH $ \(runInH :: forall a. H a -> IO a) -> do
      let -- cb :: Int -> GrabbedKey -> IO ()
          cb acc gk = f acc gk >>= \case
            Left Nothing -> pure ()
            Left (Just ha) -> do
              acc' <- runInH ha
              writeIORef grabIM.callback (cb acc')
              return ()
            Right final -> do
              writeIORef grabIM.callback (\_ -> pure ())
              grabIM.deactivate
              runInManage hc $ do
                log' "grab: enable main binds"
                io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingEnable . xkb_binding) mainBinds
                --modifySeats (const True) $ \x -> x { pending_action = S_SUBMAP_CANCEL }
                final
              return ()
      writeIORef grabIM.callback (cb start)
      forkIO $ runInManage hc $ do
        -- disable current keys
        log' "grab: disable main binds"
        io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) mainBinds
      grabIM.activate

testIM2 :: H ()
testIM2 = do
  mapSeats $ \seat -> do
    log' "Initializing new GrabIM..."
    im2manager <- getObject
    grabIM <- getOrCreateObject $ io $ newGrabIM im2manager seat.wl_seat
    io $ grabIM.activate
    log' "Grab DONE"
    return ()

data GrabIM = GrabIM
  { seat       :: WL.Seat
  , im         :: ZwpInputMethod
  , kbdGrab    :: Ptr ZwpInputMethodKeyboardGrab
  , imL        :: ZwpInputMethodListener
  , grabL      :: ZwpInputMethodKeyboardGrabListener
  , deactivate :: IO ()
  , activate   :: IO ()
  , callback   :: IORef (GrabbedKey -> IO ())
  }

data GrabbedKey = GK { state :: !Word
                     , keycode :: !Word
                     , keysym :: !Word
                     }
                | GMod { mods :: !Word }
                deriving (Eq, Show, Read)

instance Default GrabbedKey where def = GK 0 0 0

newGrabIM :: ZwpInputMethodManager -> WL.Seat -> IO GrabIM
newGrabIM manager seat = mfix $ \final -> do
    active         <- calloc @Bool
    pending_active <- calloc @Bool
    xkbContext     <- malloc @XkbContext
    xkbState       <- newIORef undefined -- @XkbState
    kbdGrab        <- calloc @ZwpInputMethodKeyboardGrab

    xkbContextNew 0 >>= poke xkbContext

    let im_activate _ im = do
          res <- zwpInputMethodGrabKeyboard im
          when (res.unwrap == nullPtr) $ error "Failed to grab"
          WL.listenerAdd res final.grabL nullPtr
          poke kbdGrab res
          log' "Grab: active"

    let im_deactivate _ _ = do
          res <- peek kbdGrab
          when (res.unwrap /= nullPtr) $ do
            zwpInputMethodKeyboardGrabRelease res
            poke kbdGrab (ZwpInputMethodKeyboardGrab nullPtr)

    -- event listeners
    imL <- mkZwpInputMethodListener $ \e -> case e of
      ZwpInputMethodActivate _ _ -> do
        pTrace e
        poke pending_active True
      ZwpInputMethodDeactivate _ _ -> do
        pTrace e
        poke pending_active False
      ZwpInputMethodSurroundingText _ _ _text _cursor _anchor -> pure () -- ignored
      ZwpInputMethodTextChangeCause _ _ _cause -> pure () -- ignored
      ZwpInputMethodContentType _ _ _hint _purpose -> pure () -- ignored
      ZwpInputMethodDone ud self -> do
        pTrace e
        prev_active <- peek active
        next_active <- peek pending_active
        when (prev_active /= next_active) $ do
          log' $ "GrabKeyboard: now: " <> (if next_active then "ACTIVE" else "NOT ACTIVE")
        poke active next_active
        if next_active && not prev_active then im_activate ud self
                                          else im_deactivate ud self
      ZwpInputMethodUnavailable _ud self -> do
        log' "IM: Unavailable!"
        WL.objectDestroy self

    grabL <- mkZwpInputMethodKeyboardGrabListener $ \e -> case e of
      ZwpInputMethodKeyboardGrabKeymap _ _ _fmt fd size -> do
        pTrace e
        ctxPtr <- peek xkbContext
        --xkb_keymap_unref res
        res <- createKeymap'' ctxPtr (fi fd) (fi size)
        st <- xkb_state_new res
        writeIORef xkbState st
      ZwpInputMethodKeyboardGrabModifiers _ _ _ depressed latched locked group -> do
        pTrace e
        st <- readIORef xkbState
        xkb_state_update_mask st depressed latched locked 0 0 group
        let gkey = GMod { mods = fi depressed }
        readIORef final.callback >>= ($ gkey)
      ZwpInputMethodKeyboardGrabKey _ _ _ _time key st -> do
        xst <- readIORef xkbState
        keysym <- xkb_state_key_get_one_sym xst (fi $ key + 8)
        --let pressed = fi st == WL.fromCEnum WL_KEYBOARD_KEY_STATE_PRESSED
        readIORef final.callback >>= ($ GK { state = fi st, keysym = fi keysym, keycode = fi key })
        --pTrace e
        --log' $ "Key: " <> tshow (keysym, pressed)

      ZwpInputMethodKeyboardGrabRepeatInfo _ _ _ _ -> pTrace e -- ignored

    -- input method
    im <- zwpInputMethodManagerGetInputMethod manager seat
    WL.listenerAdd im imL nullPtr

    callback <- newIORef pTrace
    let activate = im_activate nullPtr im
        deactivate = im_deactivate nullPtr im
    return GrabIM{..}


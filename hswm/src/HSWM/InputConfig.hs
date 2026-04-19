-- |
-- Module      : HSWM.InputConfig
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Handling of various user input devices, e.g. pointers, keyboards, touch control
--
module HSWM.InputConfig where

import Data.Map qualified as M
import Foreign
import HSWM.Core
import HSWM.XKB
import Bindings.River qualified as R
import Bindings.RiverSafe qualified as R
import Bindings.Wayland.Client qualified as WL
import System.IO.Unsafe

data KeyboardInfo = KeyboardInfo
  { layoutName :: String,
    layoutIndex :: Int
  }
  deriving stock (Show, Generic)
  deriving anyclass (Default)

setKeyboardLayout :: R.RiverXkbConfig -> R.RiverXkbKeyboard -> XkbRuleNames -> H ()
setKeyboardLayout xkbConfig keyboard layout =
  io (newXkbKeymapFromNames layout) >>= \km ->
    io $ withXkbKeymapFd km $ \fd ->
      R.riverXkbConfigCreateKeymap xkbConfig (fi fd) R.RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1
        >>= io . R.riverXkbKeyboardSetKeymap keyboard

updateKeyboardInfo :: (MonadStateGlobal env m) => R.RiverXkbKeyboard -> (KeyboardInfo -> Maybe KeyboardInfo) -> m ()
updateKeyboardInfo i f = withObjectDef mempty $ putObject . M.alter (f . fromMaybe def) i

-- * Event handlers

handleInputManagerEvent :: (MonadUnliftIO m, MonadLogger m, MonadReader HConf m) => R.RiverInputManagerEvent -> m ()
handleInputManagerEvent (R.RiverInputManagerInputDevice _ _ dev) = do
  l <- getObject
  io $ R.listenerAdd dev l nullPtr
  asks (repeatInfo . config) >>= io . (`whenJust` uncurry (R.riverInputDeviceSetRepeatInfo dev)) --  repeatRate repeatDelay
  -- io $ R.riverInputDeviceAssignToSeat dev (Just "default")
handleInputManagerEvent _ = return ()

handleInputDeviceEvent :: (Monad m) => R.RiverInputDeviceEvent -> m ()
handleInputDeviceEvent (R.RiverInputDeviceType' _ _ _inputDevice) = return ()
handleInputDeviceEvent _ = return ()

handleLibinputEvent :: (HasGlobalTMap s, MonadReader s m, MonadUnliftIO m, MonadLogger m) => R.RiverLibinputConfigEvent -> m ()
handleLibinputEvent (R.RiverLibinputConfigLibinputDevice _ _ dev) = do
  l <- getObject
  io $ WL.listenerAdd dev l nullPtr
handleLibinputEvent _ = return ()

-- TODO refactor into HState
kbdVar :: IORef [(R.RiverXkbConfig, R.RiverXkbKeyboard)]
kbdVar = unsafePerformIO $ newIORef []
{-# NOINLINE kbdVar #-}

-- Keyboard added/removed
handleXkbConfigEvent :: R.RiverXkbConfigEvent -> H ()
handleXkbConfigEvent (R.RiverXkbConfigXkbKeyboard _ xkbConfig xkbKeyboard) = do
  modifyIORef kbdVar $ (:) (xkbConfig, xkbKeyboard)
  withObject @R.RiverXkbKeyboardListener $ \l -> io $ R.listenerAdd xkbKeyboard l nullPtr
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardLayout xkbConfig xkbKeyboard)
handleXkbConfigEvent _ = return ()

handleXkbKeyboardEvent :: (MonadStateGlobal env m) => R.RiverXkbKeyboardEvent -> m ()
handleXkbKeyboardEvent (R.RiverXkbKeyboardRemoved _ _kbd) = return () -- TODO
handleXkbKeyboardEvent (R.RiverXkbKeyboardLayout _ kbd index name) = do
  updateKeyboardInfo kbd $ \x -> Just x {layoutName = name, layoutIndex = fi index}
handleXkbKeyboardEvent _ = return ()

setKbdLayout :: Maybe String -> H ()
setKbdLayout ml = do
  rules <- maybe (asks $ fromMaybe undefined . xkbLayout . config) (\name -> pure $
    XkbRuleNames { rules = "", model = "pc104", layout = name, variant = "intl", options = "" }) ml
  xs <- readIORef kbdVar
  forM_ xs $ \(cfg, kbd) -> setKeyboardLayout cfg kbd rules

------------------------------------------------------------------------------
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
-- ------------------------------------------------------------------------------
module HSWM.InputConfig  where

import HSWM.Core
import HSWM.XKB

import qualified River.Objects as R
import qualified River.Safe as R
import qualified Wayland.Client as WL
import qualified Data.Map as M

import Foreign

setKeyboardLayout :: R.RiverXkbConfig -> R.RiverXkbKeyboard -> XkbRuleNames -> H ()
setKeyboardLayout xkbConfig keyboard layout =
    io (newXkbKeymapFromNames layout) >>= \km ->
    io $ withXkbKeymapFd km $ \fd ->
    R.riverXkbConfigCreateKeymap xkbConfig (fi fd) R.RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1 -- RiverXkbConfigKeymapFormatText
    >>= io . R.riverXkbKeyboardSetKeymap keyboard

updateKeyboardInfo :: (MonadStateGlobal env m) => R.RiverXkbKeyboard -> (KeyboardInfo -> Maybe KeyboardInfo) -> m ()
updateKeyboardInfo i f = withObjectDef mempty $ putObject . M.alter (f . fromMaybe def) i

data KeyboardInfo = KeyboardInfo
  { layoutName :: String
  , layoutIndex :: Int
  }
  deriving stock (Show, Generic)
  deriving anyclass Default

-- * Event handlers

handleInputManagerEvent :: (MonadUnliftIO m, MonadReader HConf m) => R.RiverInputManagerEvent -> m ()
handleInputManagerEvent (R.RiverInputManagerInputDevice _ _ dev) = do
  l <- getObject
  io $ R.listenerAdd dev l nullPtr
  asks (repeatInfo . config) >>= io . (`whenJust` uncurry (R.riverInputDeviceSetRepeatInfo dev)) --  repeatRate repeatDelay
  --io $ R.riverInputDeviceAssignToSeat dev (Just "default")
handleInputManagerEvent _ = return ()

handleInputDeviceEvent :: Monad m => R.RiverInputDeviceEvent -> m ()
handleInputDeviceEvent (R.RiverInputDeviceType' _ _ _inputDevice) = return ()
handleInputDeviceEvent _ = return ()

handleLibinputEvent :: (HasGlobalTMap s, MonadReader s m, MonadUnliftIO m,  HasLogFunc s) => R.RiverLibinputConfigEvent -> m ()
handleLibinputEvent (R.RiverLibinputConfigLibinputDevice _ _ dev) = do
  l <- getObject
  io $ WL.listenerAdd dev l nullPtr
handleLibinputEvent _ = return ()

-- Keyboard added/removed
handleXkbConfigEvent :: R.RiverXkbConfigEvent -> H ()
handleXkbConfigEvent (R.RiverXkbConfigXkbKeyboard _ xkbConfig xkbKeyboard) = do
  withObject @R.RiverXkbKeyboardListener $ \l -> io $ R.listenerAdd xkbKeyboard l nullPtr
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardLayout xkbConfig xkbKeyboard)
handleXkbConfigEvent _ = return ()

handleXkbKeyboardEvent :: (MonadStateGlobal env m) => R.RiverXkbKeyboardEvent -> m ()
handleXkbKeyboardEvent (R.RiverXkbKeyboardRemoved _ _kbd) = return () -- TODO
handleXkbKeyboardEvent (R.RiverXkbKeyboardLayout _ kbd index name) = do
  updateKeyboardInfo kbd $ \x -> Just x { layoutName = name, layoutIndex = fi index }
handleXkbKeyboardEvent _ = return ()

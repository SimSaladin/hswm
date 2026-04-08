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

import Foreign

setKeyboardLayout :: R.RiverXkbConfig -> R.RiverXkbKeyboard -> XkbRuleNames -> H ()
setKeyboardLayout xkbConfig keyboard layout =
    io (newXkbKeymapFromNames layout) >>= \km ->
    io $ withXkbKeymapFd km $ \fd ->
    R.riverXkbConfigCreateKeymap xkbConfig (fi fd) R.RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1 -- RiverXkbConfigKeymapFormatText
    >>= io . R.riverXkbKeyboardSetKeymap keyboard

-- * Event handlers

handleInputManagerEvent (R.RiverInputManagerInputDevice _ _ dev) = do
  l <- getObject
  io $ R.listenerAdd dev l nullPtr
  asks (repeatInfo . config) >>= io . (`whenJust` uncurry (R.riverInputDeviceSetRepeatInfo dev)) --  repeatRate repeatDelay
  --io $ R.riverInputDeviceAssignToSeat dev (Just "default")

handleInputDeviceEvent (R.RiverInputDeviceType' _ _ inputDevice) = return ()

handleLibinputEvent (R.RiverLibinputConfigLibinputDevice _ _ dev) = do
  l <- getObject
  io $ WL.listenerAdd dev l nullPtr

-- Keyboard added/removed
handleXkbConfigEvent (R.RiverXkbConfigXkbKeyboard _ xkbConfig xkbKeyboard) = do
  withObject @R.RiverXkbKeyboardListener $ \l -> io $ R.listenerAdd xkbKeyboard l nullPtr
  asks (xkbLayout . config) >>= (`whenJust` setKeyboardLayout xkbConfig xkbKeyboard)

handleXkbKeyboardEvent (R.RiverXkbKeyboardRemoved _ _kbd) = return () -- TODO

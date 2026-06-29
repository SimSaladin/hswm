-- |
-- Module      : River.XkbConfig
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module River.XkbConfig
  -- * RiverXkbConfig
  ( RiverXkbConfig(..)
  -- ** Events
  , RiverXkbConfigEvent(..)
  -- ** Requests
  -- *** Stop
  , riverXkbConfigStop
  -- *** CreateKeymap
  , riverXkbConfigCreateKeymap
  -- ** KeymapFormat
  , RiverXkbConfigKeymapFormat
  , pattern RiverXkbConfigKeymapFormatTextV1
  , pattern RiverXkbConfigKeymapFormatTextV2

  -- * RiverXkbKeymap
  , RiverXkbKeymap(..)
  -- ** Events
  , RiverXkbKeymapEvent(..)

  -- * RiverXkbKeyboard
  , RiverXkbKeyboard(..)
  -- ** Events
  , RiverXkbKeyboardEvent(..)
  -- ** Requests
  -- *** SetKeymap
  , riverXkbKeyboardSetKeymap
  -- *** SetLayout
  , riverXkbKeyboardSetLayoutByIndex
  , riverXkbKeyboardSetLayoutByName
  -- *** Capslock
  , riverXkbKeyboardCapslockEnable
  , riverXkbKeyboardCapslockDisable
  -- *** Numlock
  , riverXkbKeyboardNumlockEnable
  , riverXkbKeyboardNumlockDisable
  ) where

import River.XkbConfig.V1.Client

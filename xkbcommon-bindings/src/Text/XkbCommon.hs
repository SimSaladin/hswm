-- |
-- Module      : Text.XkbCommon
-- Description : Bindings to libxkbcommon
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Bindings to libxkbcommon.
module Text.XkbCommon
  ( module X,
  FFI.XkbCommonException(..),
  def
  ) where

import Text.XkbCommon.Context as X
import Text.XkbCommon.KeySym as X
import Text.XkbCommon.Keymap as X
import Text.XkbCommon.Keymap.RmlvoBuilder as X
import Text.XkbCommon.State as X
import Text.XkbCommon.FFI as FFI

import Data.Default

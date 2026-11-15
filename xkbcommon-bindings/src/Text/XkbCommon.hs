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
--
-- Modules not exported by this module can be exported separately where needed:
--
-- - "Text.XkbCommon.KeySyms"
-- - "Text.XkbCommon.EventCodes"
module Text.XkbCommon (
  module X,
  def,
) where

import Text.XkbCommon.Context as X
import Text.XkbCommon.KeySym as X
import Text.XkbCommon.Keymap as X
import Text.XkbCommon.State as X

import Data.Default

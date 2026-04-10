------------------------------------------------------------------------------
-- |
-- Module      : River
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module River
  ( module River
  , module River.WMP
  , module River.XKB.Bindings
  ) where

import River.WMP
import River.XKB.Bindings

data RiverColor = RiverColor { red, green, blue, alpha :: !Word32 }
  deriving (Show, Read, Eq, Generic)
  deriving (Default)

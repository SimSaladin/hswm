------------------------------------------------------------------------------
-- |
-- Module      : HSWM
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module HSWM
  ( module HSWM.Core
  , module HSWM.Config
  , module HSWM.Layout
  , module HSWM.Main
  , module HSWM.Operations
  , module HSWM.Utils
  , module HSWM.XKB
  , module River
  , module Prelude
  , module ReExports
  ) where

import           HSWM.Config
import           HSWM.Core
import           HSWM.Layout
import           HSWM.Main
import           HSWM.Operations
import           HSWM.StackSet (RationalRect(..))
import           HSWM.Utils
import           HSWM.XKB
import           River

import           Data.Default as ReExports
import           Data.Semigroup as ReExports (All(..))
import           Prelude

{-# LANGUAGE PatternSynonyms #-}

-- |
-- Module      : River.WMP
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module River.WMP
  ( module River.WMP,
    module River.XKB.Bindings,
    R.RiverWindow,
    R.RiverNode,
    R.RiverOutput,
    R.RiverSeat,
    R.RiverColor(..),
  )
where

import           River.XKB.Bindings

import           HSWM.XKB

import qualified Bindings.River as R
import qualified Bindings.RiverSafe as R

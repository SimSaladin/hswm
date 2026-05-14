-- |
-- Module      : River.LayerShell
-- Description : River Layer Shell v1
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module River.LayerShell
  -- * RiverLayerShell
  ( RiverLayerShell(..)
  -- ** Get Output
  , riverLayerShellGetOutput
  -- ** Get Seat
  , riverLayerShellGetSeat

  -- * RiverLayerShellOutput
  , RiverLayerShellOutput(..)
  -- ** Events
  , RiverLayerShellOutputEvent(..)
  -- ** SetDefault
  , riverLayerShellOutputSetDefault

  -- * RiverLayerShellSeat
  , RiverLayerShellSeat(..)
  -- ** Events
  , RiverLayerShellSeatEvent(..)
  ) where

import Bindings.River.LayerShellV1

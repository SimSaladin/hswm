-- |
-- Module      : River.WindowManagement
-- Description : river-window-management v1
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module River.WindowManagement (
  -- * RiverWindowManager
  RiverWindowManager,
  RiverWindowManagerEvent(..),
  -- * RiverWindow
  RiverWindow,
  RiverWindowEvent(..),
  -- * RiverNode
  RiverNode,
  -- * RiverOutput
  RiverOutput,
  RiverOutputEvent(..),
  -- * RiverSeat
  RiverSeat,
  RiverSeatEvent(..),
  -- * RiverDecoration
  RiverDecoration,
  -- * RiverShellSurface
  RiverShellSurface,
  -- * RiverPointerBinding
  RiverPointerBinding,
  RiverPointerBindingEvent(..),
  ) where

import Bindings.River.WindowManagementV1

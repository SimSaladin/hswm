-- |
-- Module      : River.Client
-- Description : River client protocols
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module River.Client
  ( module X
  , module WL.Internals.Types
  ) where

import River.WindowManagement.V1.Client as X
import River.XkbConfig.V1.Client as X
import River.LayerShell.V1.Client as X
import River.XkbBindings.V1.Client as X
import River.InputManagement.V1.Client as X
import River.LibinputConfig.V1.Client as X

import WL.Internals.Types

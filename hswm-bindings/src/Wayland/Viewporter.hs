-- |
-- Module      : Wayland.Viewporter
-- Description : Viewporter
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Wayland.Viewporter
  -- * Viewporter
  ( Viewporter
  -- ** GetViewport
  , viewporterGetViewport
  -- * Viewport
  , Viewport
  -- ** SetSource
  , viewportSetSource
  -- ** SetDestination
  , viewportSetDestination
  ) where

import Bindings.Wayland.Viewporter

-- viewporterGetViewport viewporter surface -> viewport

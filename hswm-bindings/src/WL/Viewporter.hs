-- |
-- Module      : WL.Viewporter
-- Description : default viewporter (client) interface
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module WL.Viewporter
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

import WL.Viewporter.Client

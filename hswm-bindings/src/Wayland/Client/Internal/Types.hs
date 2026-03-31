{-# LANGUAGE TypeFamilies #-}

------------------------------------------------------------------------------
-- |
-- Module      : Wayland.Client.Internal.Types
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
module Wayland.Client.Internal.Types where

import           HsBindgen.Runtime.Prelude
import Data.Proxy

class ListenerEvent ev where
  type Listener ev :: *
  freeListener :: Proxy ev -> Listener ev -> IO ()

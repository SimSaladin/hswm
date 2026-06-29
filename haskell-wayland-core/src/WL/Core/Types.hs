-- |
-- Module      : WL.Core.Types
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module WL.Core.Types where

import Foreign
import GHC.Generics
import Control.DeepSeq (NFData)
import Data.Hashable (Hashable)

-- newtype Display = Display { unwrap :: Ptr Display }
--   deriving (Eq, Ord, Generic)
--   deriving newtype (Storable, Hashable, NFData)

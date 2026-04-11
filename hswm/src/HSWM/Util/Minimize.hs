-----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-- |
-- Module      :  HSWM.Util.Minimize
-- Description :  Common utilities for window minimizing\/maximizing.
-- Copyright   :  (c) Bogdan Sinitsyn (2016)
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  bogdan.sinitsyn@gmail.com
-- Stability   :  unstable
-- Portability :  not portable
--
-- Stores some common utilities for modules used for window minimizing/maximizing
module HSWM.Util.Minimize
  ( RectMap,
    Minimized (..),
  )
where

import Data.Map qualified as M
import HSWM
import HSWM.StackSet qualified as W

type RectMap = M.Map RiverWindow (Maybe W.RationalRect)

data Minimized = Minimized
  { rectMap :: RectMap,
    minimizedStack :: [RiverWindow]
  }
  deriving (Eq, Read, Show)

instance ExtensionClass Minimized where
  initialValue =
    Minimized
      { rectMap = M.empty,
        minimizedStack = []
      }
  extensionType = PersistentExtension

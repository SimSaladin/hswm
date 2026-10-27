{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE ViewPatterns #-}
-- |
-- Module      : HSWM.Util.StackSet.Lens
-- Description : Lenses for working with StackSets
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- You almost certainly want to import this qualified:
--
-- @
-- import HSWM.Util.StackSet.Lens qualified as L
-- @
module HSWM.Util.StackSet.Lens where

import HSWM.Types.Lens
--import HSWM.Types.Simple
import qualified HSWM.StackSet as W

makeLensesWith'
  (classPerType
      & lensClass
        .~ (\(nameBase -> n) -> Just (mkName $ "Has" ++ n ++ "L", mkName $ (n & _head %~ toLower) ++ "L"))
  )
  [''W.Workspace, ''W.Screen, ''W.Stack, ''W.StackSet]

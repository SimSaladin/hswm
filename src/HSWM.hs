------------------------------------------------------------------------------
-- |
-- Module      : HSWM
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
module HSWM
  ( module HSWM.Core
  , module HSWM.Layout
  , module HSWM.Main
  , module HSWM.Actions
  , module HSWM.Operations
  , module HSWM.Utils
  , module HSWM.XKB
  , module River
  , module Prelude
  , module ReExports
  , module HSWM
  ) where

import HSWM.Layout
import HSWM.Core
import HSWM.Main
import HSWM.Actions
import HSWM.Operations
import HSWM.Utils
import HSWM.XKB
import HSWM.StackSet (RationalRect(..))
import River

import           Data.Default as ReExports
import           Data.Semigroup as ReExports (All(..))
import           Prelude

data NamedAction = NamedAction String (H ())

instance IsAction NamedAction where
  runner (NamedAction _ m) = m
  actionDescription (NamedAction nm _) = nm
  typeDescription _ = ""

messageA :: (Message a, Show a) => a -> SomeAction
messageA a = SomeAction $ NamedAction (show a) (sendMessage a)

windowsA :: String -> (WindowSet -> WindowSet) -> SomeAction
windowsA desc f = SomeAction $ NamedAction desc $ modifyWindowSet f

windowsMA :: String -> (WindowSet -> H WindowSet) -> SomeAction
windowsMA desc f = SomeAction $ NamedAction desc $ withWindowSet $ \ws ->
  f ws >>= modifyWindowSet . const

namedA :: String -> H () -> SomeAction
namedA desc m = SomeAction (NamedAction desc m)

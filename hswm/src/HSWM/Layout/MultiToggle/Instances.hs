{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeSynonymInstances #-}

-----------------------------------------------------------------------------

-- |
-- Module      :  HSWM.Layout.MultiToggle.Instances
-- Description :  Common instances for "HSWM.Layout.MultiToggle".
-- Copyright   :  (c) 2008  Brent Yorgey
-- License     :  BSD-style (see LICENSE)
--
-- Maintainer  :  <byorgey@gmail.com>
-- Stability   :  unstable
-- Portability :  unportable
--
-- Some convenient common instances of the
-- 'HSWM.Layout.MultiToggle.Transformer' class, for use with
-- "HSWM.Layout.MultiToggle".
module HSWM.Layout.MultiToggle.Instances (
  StdTransformers (..),
) where

import HSWM.Layout.MultiToggle

import HSWM
import HSWM.Layout.LayoutModifier
import HSWM.Layout.NoBorders

data StdTransformers
  = -- | switch to Full layout
    FULL
  | -- | switch to Full with no borders
    NBFULL
  | -- | Mirror the current layout.
    MIRROR
  | -- | Remove borders.
    NOBORDERS
  | -- | Apply smart borders.
    SMARTBORDERS
  deriving (Eq, Read, Show, Generic)

instance Transformer StdTransformers RiverWindow where
  transform FULL x k = k Full (const x)
  transform NBFULL x k = k (noBorders Full) (const x)
  transform MIRROR x k = k (Mirror x) (\(Mirror x') -> x')
  transform NOBORDERS x k = k (noBorders x) (\(ModifiedLayout _ x') -> x')
  transform SMARTBORDERS x k = k (smartBorders x) (\(ModifiedLayout _ x') -> x')

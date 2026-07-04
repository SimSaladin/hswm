{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Types.Output
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Output where

import           HSWM.Types.Lens
import           HSWM.Types.Simple
import           HSWM.Types.Window

import qualified River as R
import qualified WL.Client as WL
import qualified WL.Wlr.OutputPowerManagement.Unstable.V1.Client as Wlr

import qualified Data.Aeson as A

data Output = Output
  { river_output           :: !RiverOutput -- ^ Unique Id from river
  , wlOutput               :: !WL.Output -- ^ Corresponding @wl_output@ object
  , layerShellOutput       :: !R.RiverLayerShellOutput
  , outputPower            :: !(Maybe Wlr.OutputPower)
  , screen                 :: !ScreenId -- ^ Assigned Screen identifier (WM)
  , name                   :: !String
  , outputDescription      :: !String
  , position               :: !Position
  , size                   :: !Size
  , scale                  :: !Int32
  , nonExclusive           :: !(Maybe Rectangle) -- ^ non-exclusive area
  , setupDone              :: !Bool -- ^ Flipped to True when @WL.OutputDone@
  , managePending          :: !Bool -- ^ Flipped to True when @WL.OutputDone@
  }
  deriving stock (Eq, Show, Read, Generic)
  deriving anyclass (Default)

-- | Physical screen indices
newtype ScreenId = S Int
  deriving stock (Eq, Show, Read, Generic)
  deriving newtype (Ord, Enum, Num, Integral, Real, A.ToJSON, A.FromJSON)

instance Bounded ScreenId where
  minBound = S 1
  maxBound = S maxBound

instance Default ScreenId where
  def = S (-1)

-- * Lenses

makeLensesWith' classPerField [ ''Output ]

instance HasX      Output Int32  where _x = position . _x
instance HasY      Output Int32  where _y = position . _y
instance HasWidth  Output Word32 where width = size . width
instance HasHeight Output Word32 where height = size . height

instance HasRiverId Output where
  type RiverId Output = RiverOutput
  riverId = riverOutput

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
import qualified WL.Client as WL
import qualified River as R
import qualified WL.Wlr.OutputPowerManagement.Unstable.V1.Client as Wlr
import qualified Data.Aeson as A

data Output = Output
  { river_output           :: !RiverOutput
  , position               :: !Position
  , size                   :: !Size
  , scale                  :: !Int32
  , screen                 :: !ScreenId
  , outputName             :: !String
  , outputDescription      :: !String
  , layerShellOutput       :: !R.RiverLayerShellOutput
  , nonExclusive           :: Maybe (Int32, Int32, Int32, Int32) -- x, y, w, h
  , outputPower            :: Maybe Wlr.ZwlrOutputPower
  , wlOutput               :: !WL.Output
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

instance Default ScreenId where def = S (-1)

makeLenses' [ ''Output ]

instance HasSize Output where
  size = outputSize

instance HasPosition Output where
  position = outputPosition

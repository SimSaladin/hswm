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

import           HSWM.Types.Window
import qualified Wayland as WL
import qualified River as R
import qualified Bindings.Wlr.OutputPowerManagementUnstableV1 as Wlr
import qualified Data.Aeson as A
import Foreign

data Output = Output
  { river_output           :: !RiverOutput
  , width, height, x, y    :: !Int32
  , scale                  :: !Int32
  , screen                 :: !ScreenId
  , outputName             :: !String
  , outputDescription      :: !String
  , layerShellOutput       :: !R.RiverLayerShellOutput
  , nonExclusive           :: Maybe (Int32, Int32, Int32, Int32) -- x, y, w, h
  , outputPower            :: Maybe Wlr.OutputPower
  , wlOutput               :: !WL.Output
  }
  deriving stock (Show, Generic)

instance Default Output where
  def = Output def 0 0 0 0 0 (S (-1)) "" "" (R.RiverLayerShellOutput nullPtr) Nothing Nothing def

-- | Physical screen indices
newtype ScreenId = S Int
  deriving stock (Eq, Show, Read, Generic)
  deriving newtype (Ord, Enum, Num, Integral, Real, A.ToJSON, A.FromJSON)

instance Bounded ScreenId where
  minBound = S 1
  maxBound = S maxBound

instance Default ScreenId where def = S (-1)

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
import qualified WL.XdgOutput.Unstable.V1.Client as XO
import qualified WL.Wlr.OutputPowerManagement.Unstable.V1.Client as OPM

import qualified Data.Aeson as A

-- * Output

data Output = Output
  { river_output           :: !RiverOutput -- ^ Unique Id from river
  , layerShellOutput       :: !R.RiverLayerShellOutput
  , wlOutput               :: !WL.Output -- ^ Corresponding @wl_output@ object
  , xdgOutput              :: !XO.Output
  , outputPower            :: !OPM.OutputPower
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
  deriving anyclass (Default, NFData)

-- ** ScreenId

-- | Physical screen indices
newtype ScreenId = S Int
  deriving stock (Eq, Show, Read, Generic)
  deriving newtype (Ord, Enum, Num, Integral, Real, A.ToJSON, A.FromJSON, NFData)

instance Bounded ScreenId where
  minBound = S 1
  maxBound = S maxBound

instance Default ScreenId where
  def = S (-1)

-- * Lenses

makeLensesWith' classPerField [ ''Output ]

instance HasX      Output Position1D  where _x = position . _x
instance HasY      Output Position1D  where _y = position . _y
instance HasWidth  Output Dimension   where width = size . width
instance HasHeight Output Dimension   where height = size . height

instance HasRiverId Output where
  type RiverId Output = RiverOutput
  riverId = riverOutput

{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Types.Simple
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Simple where

import           Data.Ratio
import qualified HSWM.StackSet as W
import           HSWM.Types.Lens
import           Data.Aeson (FromJSON, ToJSON)

data Size = Size { width, height :: !Int32 }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default)

data Position = Position { x, y :: !Int32 }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default)

instance FromJSON Size
instance FromJSON Position

instance ToJSON Size
instance ToJSON Position

-- | One-dimensional directions:
data Direction1D = Next | Prev
  deriving (Eq, Ord, Bounded, Enum, Read, Show)

-- | Two-dimensional directions:
data Direction2D
  = -- | Up
    U
  | -- | Down
    D
  | -- | Right
    R
  | -- | Left
    L
  deriving (Eq, Ord, Bounded, Enum, Read, Show)

data Rectangle = Rectangle
  { x, y          :: {-# UNPACK #-} !Position1D,
    width, height :: {-# UNPACK #-} !Dimension
  } deriving (Eq, Ord, Show, Read, Generic)

-- | A position on the (screen) output surface
data Point = Point { x, y :: {-# UNPACK #-} !Int32 }
  deriving (Eq, Show, Read, Generic)

-- | Uh, X11 used this...
type Dimension = Word32

-- | Also this...
type Position1D = Int32

-- | @pointWithin x y r@ returns 'True' if the @(x, y)@ co-ordinate is within
-- @r@.
pointWithin :: Position1D -> Position1D -> Rectangle -> Bool
pointWithin x y r =
  x >= fi r.x && x < fi r.x + fromIntegral r.width &&
  y >= fi r.y && y < fi r.y + fromIntegral r.height

-- | Produce the actual rectangle from a screen and a ratio on that screen.
scaleRationalRect :: Rectangle -> W.RationalRect -> Rectangle
scaleRationalRect (Rectangle sx sy sw sh) (W.RationalRect rx ry rw rh) =
  Rectangle (sx + scale sw rx) (sy + scale sh ry) (scale sw rw) (scale sh rh)
  where
    scale s r = floor (toRational s * r)

-- | @inner `rationalRectIn` outer@ describes @inner@ relative to @outer@.
rationalRectIn :: Rectangle -> Rectangle -> W.RationalRect
rationalRectIn (Rectangle wx wy ww wh) (Rectangle sx sy sw sh) =
  W.RationalRect ((fi wx - fi sx) % fi sw) ((fi wy - fi sy) % fi sh) (fi ww % fi sw) (fi wh % fi sh)

centerRationalRect :: W.RationalRect -> W.RationalRect
centerRationalRect r =
  W.RationalRect ((1 - r.width) / 2) ((1 - r.height) / 2) r.width r.height

makeLenses' [ ''Size, ''Position ]

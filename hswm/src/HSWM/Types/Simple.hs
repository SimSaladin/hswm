{-# LANGUAGE NoFieldSelectors #-}
{-# LANGUAGE TemplateHaskell  #-}
{-# LANGUAGE PatternSynonyms  #-}

{-# OPTIONS_GHC -Wno-orphans #-}

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

-- XXX should use Dimension ?
data Size = Size { width, height :: {-# UNPACK #-} !Dimension }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default, FromJSON, ToJSON)

data Position = Position { x, y :: {-# UNPACK #-} !Position1D }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default, FromJSON, ToJSON)

data Rectangle = Rectangle'
  { position :: {-# UNPACK #-} !Position
  , size     :: {-# UNPACK #-} !Size
  }
  deriving stock (Eq, Ord, Show, Read, Generic)

-- | A position on the (screen) output surface
type Point = Position

pattern Point :: Position1D -> Position1D -> Point
pattern Point{x, y} = Position{x, y}
{-# COMPLETE Point #-}

pattern Rectangle :: Position1D -> Position1D -> Dimension -> Dimension -> Rectangle
pattern Rectangle{x, y, width, height} = Rectangle' (Position x y) (Size width height)
{-# COMPLETE Rectangle #-}

-- | One-dimensional directions:
data Direction1D = Next | Prev
  deriving stock (Eq, Ord, Bounded, Enum, Read, Show)

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
  deriving stock (Eq, Ord, Bounded, Enum, Read, Show)

-- | Uh, X11 used this...
type Dimension = Word32

-- | Also this...
type Position1D = Int32

-- | @pointWithin x y r@ returns 'True' if the @(x, y)@ co-ordinate is within
-- @r@.
pointWithin :: Position1D -> Position1D -> Rectangle -> Bool
pointWithin x y (Rectangle rx ry rw rh) =
  x >= fi rx && x < fi rx + fromIntegral rw &&
  y >= fi ry && y < fi ry + fromIntegral rh

-- | Produce the actual rectangle from a screen and a ratio on that screen.
scaleRationalRect :: Rectangle -> W.RationalRect -> Rectangle
scaleRationalRect (Rectangle sx sy sw sh) (W.RationalRect rx ry rw rh) =
  Rectangle (sx + scale sw rx) (sy + scale sh ry) (scale sw rw) (scale sh rh)
  where
    scale s r = floor (toRational s * r)

-- | @inner `rationalRectIn` outer@ - describe @inner@ relative to @outer@.
rationalRectIn :: Rectangle -> Rectangle -> W.RationalRect
rationalRectIn (Rectangle wx wy ww wh) (Rectangle sx sy sw sh) =
  W.RationalRect ((fi wx - fi sx) % fi sw) ((fi wy - fi sy) % fi sh) (fi ww % fi sw) (fi wh % fi sh)

centerRationalRect :: W.RationalRect -> W.RationalRect
centerRationalRect r =
  W.RationalRect ((1 - r.width) / 2) ((1 - r.height) / 2) r.width r.height

-- * Lenses

makeFieldClassesIfMissing [ "width", "height", "name" ]

makeLensesWith' classPerField [ ''Size, ''Position, ''Rectangle ]

-- makeLensesCombine [] [ ''Rectangle ]

-- Orphans
instance Show (StablePtr a) where show _ = "<SP>"

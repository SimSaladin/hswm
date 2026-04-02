------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Util.Types
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Commonly used misc. types.
--
------------------------------------------------------------------------------
module HSWM.Util.Types  where

import HsWM.StackSet as W

import Data.Word (Word32)

-- | One-dimensional directions:
data Direction1D = Next | Prev deriving (Eq,Read,Show)

-- | Two-dimensional directions:
data Direction2D = U -- ^ Up
                 | D -- ^ Down
                 | R -- ^ Right
                 | L -- ^ Left
                   deriving (Eq,Read,Show,Ord,Enum,Bounded)

data Rectangle = Rectangle
  { x, y :: !Position
  , width, height :: !Dimension
  }
  deriving (Eq, Show, Read, Ord, Generic)

-- | A position on the (screen) output surface
data Point = Point { x, y :: !Int32 }
  deriving (Eq, Show, Read, Generic)

-- | Uh, X11 used this...
type Dimension = Word32

-- | Also this...
type Position = Int32

-- | @pointWithin x y r@ returns 'True' if the @(x, y)@ co-ordinate is within
-- @r@.
pointWithin :: Position -> Position -> Rectangle -> Bool
pointWithin x y r = x >= fi r.x  &&
                    x <  fi r.x  + fromIntegral r.width &&
                    y >= fi r.y  &&
                    y <  fi r.y  + fromIntegral r.height

-- | Produce the actual rectangle from a screen and a ratio on that screen.
scaleRationalRect :: Rectangle -> W.RationalRect -> Rectangle
scaleRationalRect (Rectangle sx sy sw sh) (W.RationalRect rx ry rw rh)
 = Rectangle (sx + scale sw rx) (sy + scale sh ry) (scale sw rw) (scale sh rh)
 where scale s r = floor (toRational s * r)

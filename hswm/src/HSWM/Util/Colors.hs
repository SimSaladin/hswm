{-# LANGUAGE PatternSynonyms #-}

-- |
-- Module      : HSWM.Util.Colors
-- Description : Extras for working with RiverColor and others.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Util.Colors
  (
  -- * RGBA
  RGBA(..),
  -- * RGBA from String
  parseRGBA,
  -- * RGBA from RiverColor
  fromRiverColor,
  -- * RGBA to RiverColor
  packRGBA,
  -- * Word32 to RiverColor
  bytesToRiverColor,
  -- * Mix RGBA
  overRGBA,
  mixRGBA,
  -- * Solarized
    pattern ColBase03,
    pattern ColBase02,
    pattern ColBase01,
    pattern ColBase00,
    pattern ColBase0,
    pattern ColBase1,
    pattern ColBase2,
    pattern ColBase3,
    pattern ColYellow,
    pattern ColOrange,
    pattern ColRed,
    pattern ColMagenta,
    pattern ColViolet,
    pattern ColBlue,
    pattern ColCyan,
    pattern ColGreen
  ) where

import River (RiverColor (..))
import GHC.Stack
import Numeric (readHex)
import Data.Ord

-- | Parse a color in the format 0xRRGGBB or 0xRRGGBBAA and convert it to
-- 32-bit color values (used by Window.set_borders in rwm).
parseRGBA :: (HasCallStack) => String -> RiverColor
parseRGBA s
  | '#' : s' <- s = parseRGBA ('0' : 'x' : s')
  | '0' : 'x' : s' <- s
  , length s == 8 || length s == 10 =
      bytesToRiverColor $ case readHex @Word32 s' of
        [(c, "")]
          -- If the color is 0xRRGGBB, add FF for the alpha channel
          | length s == 8 -> shiftL c 8 .|. 0xff
          | otherwise -> c
        _ -> error $ "Invalid RGBA text: '" ++ s ++ "'\n" ++ prettyCallStack callStack
  | otherwise = error $ "Invalid RGBA text: '" ++ s ++ "'\n" ++ prettyCallStack callStack

-- | Parses unsigned 32-bit int into RGBA: @RRGGBBAA@
bytesToRiverColor :: Word32 -> RiverColor
bytesToRiverColor bytes =
  RiverColor
    { red = bytes .&. 0xFF000000
    , green = (bytes .&. 0x00FF0000) .<<. 8
    , blue = (bytes .&. 0x0000FF00) .<<. 16
    , alpha = (bytes .&. 0x000000FF) .<<. 24
    }

data RGBA a = RGBA {red, green, blue, alpha :: !a}

fromRiverColor :: RiverColor -> RGBA Double
fromRiverColor rc =
  RGBA
    { red = fi rc.red / t
    , green = fi rc.green / t
    , blue = fi rc.blue / t
    , alpha = fi rc.alpha / t
    }
  where
    t = fi (maxBound :: Word32)

packRGBA :: RGBA Double -> RiverColor
packRGBA c =
  RiverColor
    { red = to8 c.red
    , green = to8 c.green
    , blue = to8 c.blue
    , alpha = to8 c.alpha
    }
  where
    to8 x = floor (clamp (0, 1) x * t)
    t = fi (maxBound :: Word32)

-- | Blend to RGBA colors (\"over\" operation)
overRGBA :: RiverColor -> RiverColor -> RiverColor
overRGBA ra rb =
  let (a, b) = fromRiverColor *** fromRiverColor $ (ra, rb)
      oA = a.alpha + b.alpha * (1 - a.alpha)
      oR = (a.red * a.alpha + b.red * b.alpha * (1 - a.alpha)) / oA
      oG = (a.green * a.alpha + b.green * b.alpha * (1 - a.alpha)) / oA
      oB = (a.blue * a.alpha + b.blue * b.alpha * (1 - a.alpha)) / oA
   in if oA == 0
        then RiverColor 0 0 0 0
        else packRGBA RGBA{red = oR, green = oG, blue = oB, alpha = oA}

mixRGBA :: Double -> RiverColor -> RiverColor -> RiverColor
mixRGBA t ra rb =
  packRGBA $
    unpremult
      RGBA
        { red = lerp t a.red b.red
        , blue = lerp t a.blue b.blue
        , green = lerp t a.green b.green
        , alpha = lerp t a.alpha b.alpha
        }
  where
    (a, b) = premult . fromRiverColor *** premult . fromRiverColor $ (ra, rb)

-- | Linear interpolate: @ lerp t_c2 c1 c2 @
lerp :: Double -> Double -> Double -> Double
lerp t a b = a * (1 - t) + b * t

-- | Alpha premultiplied
premult :: RGBA Double -> RGBA Double
premult (RGBA r g b a) = RGBA (r * a) (g * a) (b * a) a

-- | Alpha un-premultiplied
unpremult :: RGBA Double -> RGBA Double
unpremult (RGBA r g b a)
  | a == 0 = RGBA 0 0 0 0
  | otherwise = RGBA (r / a) (g / a) (b / a) a

-- * Solarized colors

-- | Solarized palette
pattern
  ColBase03,
  ColBase02, ColBase01, ColBase00, ColBase0, ColBase1, ColBase2, ColBase3,
  ColYellow, ColOrange, ColRed, ColMagenta, ColViolet, ColBlue, ColCyan, ColGreen
    :: String
pattern ColBase03 = "0x002b36" -- "#002b36"
pattern ColBase02 = "0x073642" -- "#073642"
pattern ColBase01 = "0x586e75" -- "#586e75"
pattern ColBase00 = "0x657b83" -- "#657b83"
pattern ColBase0 = "0x839496" -- "#839496"
pattern ColBase1 = "0x93a1a1" -- "#93a1a1"
pattern ColBase2 = "0xeee8d5" -- "#eee8d5"
pattern ColBase3 = "0xfdf6e3" -- "#fdf6e3"
pattern ColYellow = "0xb58900" -- "#b58900"
pattern ColOrange = "0xcb4b16" -- "#cb4b16"
pattern ColRed = "0xdc322f" -- "#dc322f"
pattern ColMagenta = "0xd33682" -- "#d33682"
pattern ColViolet = "0x6c71c4" -- "#6c71c4"
pattern ColBlue = "0x268bd2" -- "#268bd2"
pattern ColCyan = "0x2aa198" -- "#2aa198"
pattern ColGreen = "0x859900" -- "#859900"

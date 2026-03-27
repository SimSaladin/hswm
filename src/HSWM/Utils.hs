------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Utils
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
module HSWM.Utils where

import Data.Word
import Numeric (readHex)
import River
import Data.Bits

-- | Parse a color in the format 0xRRGGBB or 0xRRGGBBAA and convert it to
-- 32-bit color values (used by Window.set_borders in rwm).
parseRgba :: String -> RiverColor
parseRgba s
  | '0' : 'x' : s' <- s, length s == 8 || length s == 10 =
    bytesToRiverColor $ case readHex @Word32 s' of
                    [(c, "")]
                      -- If the color is 0xRRGGBB, add FF for the alpha channel
                      | length s == 8 -> shiftL c 8 .|. 0xff
                      | otherwise     -> c
                    _ -> error "invalid rgba"

    --const bytes: [4]u8 = @as([4]u8, @bitCast(color));
    --return bytesToRiverColor(bytes);

  | otherwise = error "InvalidRgba"

bytesToRiverColor :: Word32 -> RiverColor
bytesToRiverColor bytes = RiverColor
  { red   = (bytes .&. 0xFF000000)         -- [3];
  , green = (bytes .&. 0x00FF0000) .<<. 8  -- [2];
  , blue  = (bytes .&. 0x0000FF00) .<<. 16 -- [1];
  , alpha = (bytes .&. 0x000000FF) .<<. 24 -- [0];
  }

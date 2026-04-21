-- |
-- Module      : HSWM.Utils
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module HSWM.Utils
  ( module HSWM.Utils
  , module HSWM.Util.Process
  ) where

import Data.Bits
import Data.Char (toLower)
import Data.List qualified as L
import Bindings.Wayland.Client qualified as WL
import Bindings.Wayland.Client.Generated qualified as WL
import HSWM.XKB (ModMask)
import Numeric (readHex)
import River
import Bindings.RiverSafe qualified as R
import Text.Pretty.Simple qualified as P
import GHC.Stack
import Data.Ord
import HSWM.Util.Process

-- * Keymap utils

resolveModMask :: ModMask -> String -> ModMask
resolveModMask d s = go s
  where
    go x = case L.span (/= '-') x of
      ("", []) -> 0
      (m, '-' : xs) -> get1 m .|. go xs
      (m, []) -> get1 m
      _ -> error $ "malformed mod mask: " ++ s
    get1 y = case map toLower y of
      "m" -> d
      "none" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_NONE
      "shift" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_SHIFT
      "s" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_SHIFT
      "ctrl" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_CTRL
      "c" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_CTRL
      "mod1" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "m1" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "alt" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "a" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "mod3" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD3
      "m3" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD3
      "mod4" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "m4" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "super" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "logo" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "mod5" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD5
      "m5" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD5
      _ -> error $ "unrecognized modifier: " ++ s

-- * Logging and debug

logTraceShow :: (MonadIO m, MonadReader env m, MonadLogger m, Show show) => show -> m ()
logTraceShow x =
  logDebug $
    display $
      P.pShowOpt
        P.defaultOutputOptionsNoColor
          { P.outputOptionsPageWidth = 380,
            P.outputOptionsCompact = True,
            P.outputOptionsCompactParens = True,
            P.outputOptionsInitialIndent = 0,
            -- P.outputOptionsColorOptions = Just P.defaultColorOptionsDarkBg
            P.outputOptionsColorOptions = Nothing
          }
        x

pTrace :: (MonadIO m, Show a) => a -> m ()
pTrace =
  P.pHPrintOpt
    P.CheckColorTty
    P.defaultOutputOptionsNoColor
      { P.outputOptionsPageWidth = 380,
        P.outputOptionsCompact = True,
        P.outputOptionsCompactParens = True,
        --P.outputOptionsInitialIndent = 4,
        --P.outputOptionsColorOptions = Just P.defaultColorOptionsDarkBg
        P.outputOptionsColorOptions = Nothing
      }
    stderr

ppShmFormat :: WL.Wl_shm_format -> String
ppShmFormat x = case x of
  WL.WL_SHM_FORMAT_ARGB8888 -> "ARGB8888"
  WL.WL_SHM_FORMAT_XRGB8888 -> "XRGB8888"
  WL.WL_SHM_FORMAT_C8 -> "C8"
  WL.WL_SHM_FORMAT_RGB332 -> "RGB332"
  WL.WL_SHM_FORMAT_BGR233 -> "BGR233"
  WL.WL_SHM_FORMAT_XRGB4444 -> "XRGB4444"
  WL.WL_SHM_FORMAT_XBGR4444 -> "XBGR4444"
  WL.WL_SHM_FORMAT_RGBX4444 -> "RGBX4444"
  WL.WL_SHM_FORMAT_BGRX4444 -> "BGRX4444"
  WL.WL_SHM_FORMAT_ARGB4444 -> "ARGB4444"
  WL.WL_SHM_FORMAT_ABGR4444 -> "ABGR4444"
  WL.WL_SHM_FORMAT_RGBA4444 -> "RGBA4444"
  WL.WL_SHM_FORMAT_BGRA4444 -> "BGRA4444"
  WL.WL_SHM_FORMAT_XRGB1555 -> "XRGB1555"
  WL.WL_SHM_FORMAT_XBGR1555 -> "XBGR1555"
  WL.WL_SHM_FORMAT_RGBX5551 -> "RGBX5551"
  WL.WL_SHM_FORMAT_BGRX5551 -> "BGRX5551"
  WL.WL_SHM_FORMAT_ARGB1555 -> "ARGB1555"
  WL.WL_SHM_FORMAT_ABGR1555 -> "ABGR1555"
  WL.WL_SHM_FORMAT_RGBA5551 -> "RGBA5551"
  WL.WL_SHM_FORMAT_BGRA5551 -> "BGRA5551"
  WL.WL_SHM_FORMAT_RGB565 -> "RGB565"
  WL.WL_SHM_FORMAT_BGR565 -> "BGR565"
  WL.WL_SHM_FORMAT_RGB888 -> "RGB888"
  WL.WL_SHM_FORMAT_BGR888 -> "BGR888"
  WL.WL_SHM_FORMAT_XBGR8888 -> "XBGR8888"
  WL.WL_SHM_FORMAT_RGBX8888 -> "RGBX8888"
  WL.WL_SHM_FORMAT_BGRX8888 -> "BGRX8888"
  WL.WL_SHM_FORMAT_ABGR8888 -> "ABGR8888"
  WL.WL_SHM_FORMAT_RGBA8888 -> "RGBA8888"
  WL.WL_SHM_FORMAT_BGRA8888 -> "BGRA8888"
  WL.WL_SHM_FORMAT_XRGB2101010 -> "XRGB2101010"
  WL.WL_SHM_FORMAT_XBGR2101010 -> "XBGR2101010"
  WL.WL_SHM_FORMAT_RGBX1010102 -> "RGBX1010102"
  WL.WL_SHM_FORMAT_BGRX1010102 -> "BGRX1010102"
  WL.WL_SHM_FORMAT_ARGB2101010 -> "ARGB2101010"
  WL.WL_SHM_FORMAT_ABGR2101010 -> "ABGR2101010"
  WL.WL_SHM_FORMAT_RGBA1010102 -> "RGBA1010102"
  WL.WL_SHM_FORMAT_BGRA1010102 -> "BGRA1010102"
  WL.WL_SHM_FORMAT_YUYV -> "YUYV"
  WL.WL_SHM_FORMAT_YVYU -> "YVYU"
  WL.WL_SHM_FORMAT_UYVY -> "UYVY"
  WL.WL_SHM_FORMAT_VYUY -> "VYUY"
  WL.WL_SHM_FORMAT_AYUV -> "AYUV"
  WL.WL_SHM_FORMAT_NV12 -> "NV12"
  WL.WL_SHM_FORMAT_NV21 -> "NV21"
  WL.WL_SHM_FORMAT_NV16 -> "NV16"
  WL.WL_SHM_FORMAT_NV61 -> "NV61"
  WL.WL_SHM_FORMAT_YUV410 -> "YUV410"
  WL.WL_SHM_FORMAT_YVU410 -> "YVU410"
  WL.WL_SHM_FORMAT_YUV411 -> "YUV411"
  WL.WL_SHM_FORMAT_YVU411 -> "YVU411"
  WL.WL_SHM_FORMAT_YUV420 -> "YUV420"
  WL.WL_SHM_FORMAT_YVU420 -> "YVU420"
  WL.WL_SHM_FORMAT_YUV422 -> "YUV422"
  WL.WL_SHM_FORMAT_YVU422 -> "YVU422"
  WL.WL_SHM_FORMAT_YUV444 -> "YUV444"
  WL.WL_SHM_FORMAT_YVU444 -> "YVU444"
  WL.WL_SHM_FORMAT_R8 -> "R8"
  WL.WL_SHM_FORMAT_R16 -> "R16"
  WL.WL_SHM_FORMAT_RG88 -> "RG88"
  WL.WL_SHM_FORMAT_GR88 -> "GR88"
  WL.WL_SHM_FORMAT_RG1616 -> "RG1616"
  WL.WL_SHM_FORMAT_GR1616 -> "GR1616"
  WL.WL_SHM_FORMAT_XRGB16161616F -> "XRGB16161616F"
  WL.WL_SHM_FORMAT_XBGR16161616F -> "XBGR16161616F"
  WL.WL_SHM_FORMAT_ARGB16161616F -> "ARGB16161616F"
  WL.WL_SHM_FORMAT_ABGR16161616F -> "ABGR16161616F"
  WL.WL_SHM_FORMAT_XYUV8888 -> "XYUV8888"
  WL.WL_SHM_FORMAT_VUY888 -> "VUY888"
  WL.WL_SHM_FORMAT_VUY101010 -> "VUY101010"
  WL.WL_SHM_FORMAT_Y210 -> "Y210"
  WL.WL_SHM_FORMAT_Y212 -> "Y212"
  WL.WL_SHM_FORMAT_Y216 -> "Y216"
  WL.WL_SHM_FORMAT_Y410 -> "Y410"
  WL.WL_SHM_FORMAT_Y412 -> "Y412"
  WL.WL_SHM_FORMAT_Y416 -> "Y416"
  WL.WL_SHM_FORMAT_XVYU2101010 -> "XVYU2101010"
  WL.WL_SHM_FORMAT_XVYU12_16161616 -> "XVYU12_16161616"
  WL.WL_SHM_FORMAT_XVYU16161616 -> "XVYU16161616"
  WL.WL_SHM_FORMAT_Y0L0 -> "Y0L0"
  WL.WL_SHM_FORMAT_X0L0 -> "X0L0"
  WL.WL_SHM_FORMAT_Y0L2 -> "Y0L2"
  WL.WL_SHM_FORMAT_X0L2 -> "X0L2"
  WL.WL_SHM_FORMAT_YUV420_8BIT -> "YUV420_8BIT"
  WL.WL_SHM_FORMAT_YUV420_10BIT -> "YUV420_10BIT"
  WL.WL_SHM_FORMAT_XRGB8888_A8 -> "XRGB8888_A8"
  WL.WL_SHM_FORMAT_XBGR8888_A8 -> "XBGR8888_A8"
  WL.WL_SHM_FORMAT_RGBX8888_A8 -> "RGBX8888_A8"
  WL.WL_SHM_FORMAT_BGRX8888_A8 -> "BGRX8888_A8"
  WL.WL_SHM_FORMAT_RGB888_A8 -> "RGB888_A8"
  WL.WL_SHM_FORMAT_BGR888_A8 -> "BGR888_A8"
  WL.WL_SHM_FORMAT_RGB565_A8 -> "RGB565_A8"
  WL.WL_SHM_FORMAT_BGR565_A8 -> "BGR565_A8"
  WL.WL_SHM_FORMAT_NV24 -> "NV24"
  WL.WL_SHM_FORMAT_NV42 -> "NV42"
  WL.WL_SHM_FORMAT_P210 -> "P210"
  WL.WL_SHM_FORMAT_P010 -> "P010"
  WL.WL_SHM_FORMAT_P012 -> "P012"
  WL.WL_SHM_FORMAT_P016 -> "P016"
  WL.WL_SHM_FORMAT_AXBXGXRX106106106106 -> "AXBXGXRX106106106106"
  WL.WL_SHM_FORMAT_NV15 -> "NV15"
  WL.WL_SHM_FORMAT_Q410 -> "Q410"
  WL.WL_SHM_FORMAT_Q401 -> "Q401"
  WL.WL_SHM_FORMAT_XRGB16161616 -> "XRGB16161616"
  WL.WL_SHM_FORMAT_XBGR16161616 -> "XBGR16161616"
  WL.WL_SHM_FORMAT_ARGB16161616 -> "ARGB16161616"
  WL.WL_SHM_FORMAT_ABGR16161616 -> "ABGR16161616"
  WL.WL_SHM_FORMAT_C1 -> "C1"
  WL.WL_SHM_FORMAT_C2 -> "C2"
  WL.WL_SHM_FORMAT_C4 -> "C4"
  WL.WL_SHM_FORMAT_D1 -> "D1"
  WL.WL_SHM_FORMAT_D2 -> "D2"
  WL.WL_SHM_FORMAT_D4 -> "D4"
  WL.WL_SHM_FORMAT_D8 -> "D8"
  WL.WL_SHM_FORMAT_R1 -> "R1"
  WL.WL_SHM_FORMAT_R2 -> "R2"
  WL.WL_SHM_FORMAT_R4 -> "R4"
  WL.WL_SHM_FORMAT_R10 -> "R10"
  WL.WL_SHM_FORMAT_R12 -> "R12"
  WL.WL_SHM_FORMAT_AVUY8888 -> "AVUY8888"
  WL.WL_SHM_FORMAT_XVUY8888 -> "XVUY8888"
  WL.WL_SHM_FORMAT_P030 -> "P030"
  _ -> "UNKNOWN"

-- * Colors

-- | Solarized palette
colBase03, colBase02, colBase01, colBase00, colBase0, colBase1, colBase2, colBase3, colYellow, colOrange, colRed, colMagenta, colViolet, colBlue, colCyan, colGreen :: String
colBase03 = "0x002b36" -- "#002b36"
colBase02 = "0x073642" -- "#073642"
colBase01 = "0x586e75" -- "#586e75"
colBase00 = "0x657b83" -- "#657b83"
colBase0 = "0x839496" -- "#839496"
colBase1 = "0x93a1a1" -- "#93a1a1"
colBase2 = "0xeee8d5" -- "#eee8d5"
colBase3 = "0xfdf6e3" -- "#fdf6e3"
colYellow = "0xb58900" -- "#b58900"
colOrange = "0xcb4b16" -- "#cb4b16"
colRed = "0xdc322f" -- "#dc322f"
colMagenta = "0xd33682" -- "#d33682"
colViolet = "0x6c71c4" -- "#6c71c4"
colBlue = "0x268bd2" -- "#268bd2"
colCyan = "0x2aa198" -- "#2aa198"
colGreen = "0x859900" -- "#859900"

-- | Parse a color in the format 0xRRGGBB or 0xRRGGBBAA and convert it to
-- 32-bit color values (used by Window.set_borders in rwm).
parseRgba :: HasCallStack => String -> RiverColor
parseRgba s
  | '#' : s' <- s = parseRgba ('0' : 'x' : s')
  | '0' : 'x' : s' <- s,
    length s == 8 || length s == 10 =
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
    { red = bytes .&. 0xFF000000,
      green = (bytes .&. 0x00FF0000) .<<. 8,
      blue = (bytes .&. 0x0000FF00) .<<. 16,
      alpha = (bytes .&. 0x000000FF) .<<. 24
    }

data RGBA a = RGBA {red, green, blue, alpha :: !a}

fromRiverColor :: RiverColor -> RGBA Double
fromRiverColor rc = RGBA
  { red = fi rc.red / t
  , green = fi rc.green / t
  , blue = fi rc.blue / t
  , alpha = fi rc.alpha / t
  } where
    t = fi (maxBound :: Word32)

packRGBA :: RGBA Double -> RiverColor
packRGBA c = RiverColor
  { red = to8 c.red
  , green = to8 c.green
  , blue = to8 c.blue
  , alpha = to8 c.alpha
  } where
    to8 x = floor (clamp (0, 1) x * t)
    t = fi (maxBound :: Word32)

-- | Blend to RGBA colors (\"over\" operation)
overRGBA :: RiverColor -> RiverColor -> RiverColor
overRGBA ra rb =
  let (a, b) = fromRiverColor *** fromRiverColor $ (ra, rb)
      oA = a.alpha + b.alpha * (1 - a.alpha)
      oR = (a.red   * a.alpha + b.red   * b.alpha * (1 - a.alpha)) / oA
      oG = (a.green * a.alpha + b.green * b.alpha * (1 - a.alpha)) / oA
      oB = (a.blue  * a.alpha + b.blue  * b.alpha * (1 - a.alpha)) / oA
   in if oA == 0 then RiverColor 0 0 0 0
                 else packRGBA RGBA { red = oR, green = oG, blue = oB, alpha = oA }

mixRGBA :: Double -> RiverColor -> RiverColor -> RiverColor
mixRGBA t ra rb =
  let (a, b) = premult . fromRiverColor *** premult . fromRiverColor $ (ra, rb)
   in packRGBA $ unpremult RGBA
         { red = lerp t a.red b.red
         , blue = lerp t a.blue b.blue
         , green = lerp t a.green b.green
         , alpha = lerp t a.alpha b.alpha
         }

-- | Linear interpolate: @ lerp t_c2 c1 c2 @
lerp :: Double -> Double -> Double -> Double
lerp t a b = a * (1 - t) + b * t

-- | Alpha premultiplied
premult :: RGBA Double -> RGBA Double
premult (RGBA r g b a) = RGBA (r * a) (g * a) (b * a) a

-- | Alpha un-premultiplied
unpremult :: RGBA Double -> RGBA Double
unpremult (RGBA r g b a)
  | a == 0    = RGBA 0 0 0 0
  | otherwise = RGBA (r / a) (g / a) (b / a) a

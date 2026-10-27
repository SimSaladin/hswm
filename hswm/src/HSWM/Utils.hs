-- |
-- Module      : HSWM.Utils
-- Description : Various utilities used across the codebase.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Utils (
  module HSWM.Utils,
  module HSWM.Util.Process,
  module HSWM.Util.PP,
  module HSWM.Util.Colors,
  resolveModMask,
) where

import HSWM.Types.Action
import HSWM.Util.PP
import HSWM.Util.Process
import HSWM.Util.Colors
import Pixman qualified as P
import River qualified as R
import WL.Client qualified as WL

-- * Pixman-Wayland translation

-- | little-endian
getPixmanFormatLE :: WL.ShmFormat -> P.FormatCode
getPixmanFormatLE = \case
  WL.ShmFormatRGB332 -> P.R3G3B2
  WL.ShmFormatBGR233 -> P.B2G3R3
  WL.ShmFormatARGB4444 -> P.A4R4G4B4
  WL.ShmFormatXRGB4444 -> P.X4R4G4B4
  WL.ShmFormatABGR4444 -> P.A4B4G4R4
  WL.ShmFormatXBGR4444 -> P.X4B4G4R4
  WL.ShmFormatARGB1555 -> P.A1R5G5B5
  WL.ShmFormatXRGB1555 -> P.X1R5G5B5
  WL.ShmFormatABGR1555 -> P.A1B5G5R5
  WL.ShmFormatXBGR1555 -> P.X1B5G5R5
  WL.ShmFormatRGB565 -> P.R5G6B5
  WL.ShmFormatBGR565 -> P.B5G6R5
  WL.ShmFormatRGB888 -> P.R8G8B8
  WL.ShmFormatBGR888 -> P.B8G8R8
  WL.ShmFormatARGB8888 -> P.A8R8G8B8
  WL.ShmFormatXRGB8888 -> P.X8R8G8B8
  WL.ShmFormatABGR8888 -> P.A8B8G8R8
  WL.ShmFormatXBGR8888 -> P.X8B8G8R8
  WL.ShmFormatBGRA8888 -> P.B8G8R8A8
  WL.ShmFormatBGRX8888 -> P.B8G8R8X8
  WL.ShmFormatRGBA8888 -> P.R8G8B8A8
  WL.ShmFormatRGBX8888 -> P.R8G8B8X8
  WL.ShmFormatARGB2101010 -> P.A2R10G10B10
  WL.ShmFormatABGR2101010 -> P.A2B10G10R10
  WL.ShmFormatXRGB2101010 -> P.X2R10G10B10
  WL.ShmFormatXBGR2101010 -> P.X2B10G10R10
  _ -> R.toCEnum 0

getPixmanFormatBE :: WL.ShmFormat -> P.FormatCode
getPixmanFormatBE = \case
  WL.ShmFormatARGB8888 -> P.B8G8R8A8
  WL.ShmFormatXRGB8888 -> P.B8G8R8X8
  WL.ShmFormatABGR8888 -> P.R8G8B8A8
  WL.ShmFormatXBGR8888 -> P.R8G8B8X8
  WL.ShmFormatBGRA8888 -> P.A8R8G8B8
  WL.ShmFormatBGRX8888 -> P.X8R8G8B8
  WL.ShmFormatRGBA8888 -> P.A8B8G8R8
  WL.ShmFormatRGBX8888 -> P.X8B8G8R8
  _ -> R.toCEnum 0

-- | Test whether this is a native little-endian system.
isLittleEndian :: IO Bool
isLittleEndian = alloca $ \ptr -> do
  poke ptr (1 :: Word32)
  byte <- peek (castPtr ptr :: Ptr Word8)
  return (byte == 1)

{-# LANGUAGE AllowAmbiguousTypes   #-}
{-# LANGUAGE DerivingVia           #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE PatternSynonyms       #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE ViewPatterns          #-}

{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-partial-type-signatures #-}
{-# OPTIONS_GHC -Wno-missing-pattern-synonym-signatures #-}

-- |
-- Module      : Pixman
-- Description : Higher-level Pixman API
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable

module Pixman
  -- * Functions
  ( blt
  , fill
  , computeCompositeRegion
  , getMinStride

  -- * Image
  , Image
  , IsImage(..)
  , Point(..)
  , PointFixed
  , XY
  , Size2D
  -- ** Properties
  , imageSize
  , imageWidth
  , imageHeight
  , imageDepth
  , imageStride
  , imageFormat
  , imageComponentAlpha
  , imageData

  -- ** CreateImage
  , CreateImage
  -- ** New
  , newImage
  , imageWithBits
  , solidImage
  -- ** Gradients
  , linearGradientImage
  , radialGradientImage
  , conicalGradientImage
  , GradientStop
  , gradientStop
  -- ** Realize
  , createImage
  , asImage
  -- ** Repeat
  , imageSetRepeat
  , Repeat
    ( RepeatNone
    , RepeatNormal
    , RepeatPad
    , RepeatReflect
    )

  -- ** Dither
  , imageSetDither
  , Dither
      ( DitherNone
      , DitherFast
      , DitherGood
      , DitherBest
      , DitherOrderedBayer8
      , DitherOrderedBlueNoise64
      )
  -- ** SourceClipping
  , imageSetSourceClipping
  -- ** AlphaMap
  , imageSetAlphaMap
  -- ** ComponentAlpha
  , imageSetComponentAlpha
  -- ** Transform
  , imageSetTransform
  -- ** Filter
  , imageSetFilter
  , imageSetSeparableConvolutionFilter
  , createSeparableConvolutionFilter
  , Filter
      ( FilterFast
      , FilterGood
      , FilterBest
      , FilterNearest
      , FilterBilinear
      , FilterConvolution
      , FilterSeparableConvolution
      )
  , SeparableConvolution(..)
  , Kernel
      ( KernelImpulse
      , KernelBox
      , KernelLinear
      , KernelCubic
      , KernelGaussian
      , KernelLanczos2
      , KernelLanczos3
      , KernelLanczos3Stretched
      )
  , Fixed
  -- ** ClipRegion
  , imageSetHasClientClip
  , imageSetClipRegion16
  , imageSetClipRegion32
  , imageSetClipRegion64F
  -- ** Indexed
  , imageSetIndexed
  , Indexed
  -- ** Composite
  , imageSetComposite16
  , imageSetComposite32
  , imageSetComposite64F
  , SetComposite(..)
  , setComposite16
  , setComposite32
  , setComposite64F
  , setComposite
  -- ** Fill (Boxes / Rectangles)
  , imageFillBoxes
  , imageFillRectangles
  -- ** Add (Triangles / Traps / Trapezoids)
  , imageAddTriangles
  , imageAddTraps
  , imageAddTrapezoids
  , Triangle
  , Trap
  , Trapezoid

  -- * Transform
  , Transform
  , IsTransform(..)
  , fromFTransform
  , transformIsIdentity
  , transformIsScale
  , transformIsIntTranslate
  , transformIsInverse

  -- * FTransform
  , FTransform
  , fromTransform

  -- * Region16
  , Region16
  , IsRegion(..)
  , RegionOverlap
        ( RegionOut
        , RegionIn
        , RegionPart
        )

  -- * Region32
  , Region32

  -- * Region64F
  , Region64F
  , regionTranslateF
  , regionFromRectF
  , regionUnionRectF
  , regionIntersectRectF
  , regionContainsPointF

  -- * Color
  , Color
  , IsColor(..)
  , ColorComponent(..)
  , colorFromParts

  -- * Box16
  , Box16
  , IsBox(..)
  , RBox
  , box16

  -- * Box32
  , Box32
  , box32

  -- * Box64F
  , Box64F
  , box64F

  -- * Rectangle16
  , Rectangle16
  , IsRectangle(..)
  , rectangle16

  -- * Rectangle32
  , Rectangle32
  , rectangle32

  -- * Rectangle64F
  , Rectangle64F
  , rectangle64F

  -- * Vector
  , Vector
  , vector
  , vectorFromArray

  -- * FVector
  , FVector
  , fvector
  , fvectorFromArray

  -- * Formats
  , FormatCode
  -- ** All
  , allFormats
  -- ** 128bpp
  , pattern RGBAFloat
  -- ** 96bpp
  , pattern RGBFloat
  -- ** 64bpp
  , pattern A16B16G16R16
  -- ** 32bpp
  , pattern A8R8G8B8
  , pattern X8R8G8B8
  , pattern A8B8G8R8
  , pattern X8B8G8R8
  , pattern B8G8R8A8
  , pattern B8G8R8X8
  , pattern R8G8B8A8
  , pattern R8G8B8X8
  , pattern X14R6G6B6
  , pattern X2R10G10B10
  , pattern A2R10G10B10
  , pattern X2B10G10R10
  , pattern A2B10G10R10
  -- ** sRGB
  , pattern A8R8G8B8_sRGB
  , pattern R8G8B8_sRGB
  -- ** 24bpp
  , pattern R8G8B8
  , pattern B8G8R8
  -- ** 16bpp
  , pattern R5G6B5
  , pattern B5G6R5
  , pattern A1R5G5B5
  , pattern X1R5G5B5
  , pattern A1B5G5R5
  , pattern X1B5G5R5
  , pattern A4R4G4B4
  , pattern X4R4G4B4
  , pattern A4B4G4R4
  , pattern X4B4G4R4
  -- ** 8bpp
  , pattern A8
  , pattern R3G3B2
  , pattern B2G3R3
  , pattern A2R2G2B2
  , pattern A2B2G2R2
  , pattern C8
  , pattern G8
  , pattern X4A4
  , pattern X4C4
  , pattern X4G4
  -- ** 4bpp
  , pattern A4
  , pattern R1G2B1
  , pattern B1G2R1
  , pattern A1R1G1B1
  , pattern A1B1G1R1
  , pattern C4
  , pattern G4
  -- ** 1bpp
  , pattern A1
  , pattern G1
  -- ** YUV
  , pattern YUY2
  , pattern YV12
  -- ** BPP (Bits-per-pixel)
  , formatBPP
  -- ** Depth
  , formatDepth
  -- ** FormatType
  , formatType
  , FormatType
    ( ..
    , TypeOther
    , TypeA
    , TypeARGB
    , TypeABGR
    , TypeColor
    , TypeGray
    , TypeYUY2
    , TypeYV12
    , TypeBGRA
    , TypeRGBA
    , TypeARGBsRGB
    , TypeRGBAFloat
    )
  -- ** IsColor
  , formatColor
  -- ** IsSupported
  , formatSupportedDest
  , formatSupportedSource

  -- * Op
  , Op
    ( OpClear
    , OpSrc
    , OpDst
    , OpOver
    , OpOverReverse
    , OpIn
    , OpInReverse
    , OpOut
    , OpOutReverse
    , OpAtop
    , OpAtopReverse
    , OpXor
    , OpAdd
    , OpSaturate
    , OpDisjointClear
    , OpDisjointSrc
    , OpDisjointDst
    , OpDisjointOver
    , OpDisjointOverReverse
    , OpDisjointIn
    , OpDisjointInReverse
    , OpDisjointOut
    , OpDisjointOutReverse
    , OpDisjointAtop
    , OpDisjointAtopReverse
    , OpDisjointXor
    , OpConjointClear
    , OpConjointSrc
    , OpConjointDst
    , OpConjointOver
    , OpConjointOverReverse
    , OpConjointIn
    , OpConjointInReverse
    , OpConjointOut
    , OpConjointOutReverse
    , OpConjointAtop
    , OpConjointAtopReverse
    , OpConjointXor
    , OpMultiply
    , OpScreen
    , OpOverlay
    , OpDarken
    , OpLighten
    , OpColorDodge
    , OpColorBurn
    , OpHardLight
    , OpSoftLight
    , OpDifference
    , OpExclusion
    , OpHslHue
    , OpHslSaturation
    , OpHslColor
    , OpHslLuminosity
    )

  -- * Exceptions
  , PixmanException(..)

  -- * Re-exports
  , def
  , Int32
  ) where

import qualified Bindings.Pixman.Generated as G
import qualified Bindings.Pixman.Generated.FunPtr as FP
import qualified Bindings.Pixman.Generated.Unsafe as US

import qualified HsBindgen.Runtime.CEnum as CE
import qualified HsBindgen.Runtime.ConstantArray as CA
import qualified HsBindgen.Runtime.Prelude as RIP

import           Control.Exception
import           Control.Monad
import           Data.Coerce
import           Data.Default
import           Data.Kind (Type)
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.Float
import           GHC.Generics
import           GHC.Records
import           System.IO.Unsafe
import           Text.Printf

-- * Types

type XY a = (a, a)

-- | (width, height)
type Size2D a = (a, a)

newtype PixmanException = PixmanException String
  deriving (Eq, Ord, Show)

instance Exception PixmanException

-- | Fixed-point value
type Fixed = G.Pixman_fixed_t

type Indexed = G.Pixman_indexed_t

-- | A triangle
type Triangle = G.Pixman_triangle_t

-- | A single trap
type Trap = G.Pixman_trap_t

-- | A trapezoid
type Trapezoid = G.Pixman_trapezoid_t

type family RBox (a :: Type) :: Type

type instance RBox Region16 = Box16
type instance RBox Region32 = Box32
type instance RBox Region64F = Box64F

-- | 16-bit region
newtype Region16 = Region16 { unwrap :: ForeignPtr G.Pixman_region16_t }
  deriving stock (Ord, Generic)

instance Show Region16 where
  show reg = printf "Region16{extents=%s, numRects=%d, rects=%s}" (show ext) numRects (show rects)
    where ext = regionExtents reg
          numRects = regionNumRects reg
          rects = regionRectangles numRects reg

-- | 32-bit region
newtype Region32 = Region32 { unwrap :: ForeignPtr G.Pixman_region32_t }
  deriving stock (Ord, Generic)

instance Show Region32 where
  show reg = printf "Region32{extents=%s, numRects=%d, rects=%s}" (show ext) numRects (show rects)
    where ext = regionExtents reg
          numRects = regionNumRects reg
          rects = regionRectangles numRects reg

-- | 64-bit (floating-point) region
newtype Region64F = Region64F { unwrap :: ForeignPtr G.Pixman_region64f_t }
  deriving stock (Ord, Generic)

instance Show Region64F where
  show reg = printf "Region64F{extents=%s, numRects=%d, rects=%s}" (show ext) numRects (show rects)
    where
      ext = regionExtents reg
      numRects = regionNumRects reg
      rects = regionRectangles numRects reg

instance Eq Region16  where (==) = regionEqual
instance Eq Region32  where (==) = regionEqual
instance Eq Region64F where (==) = regionEqual

-- | Fixed-point transform.
--
-- @Fixed[3][3]@
newtype Transform = Transform { unwrap :: ForeignPtr G.Pixman_transform }
  deriving stock (Eq, Ord, Generic)

instance Show Transform where
  show tr = "Transform{" ++ show (map (map fromEnum . CA.toList) $ CA.toList mat) ++ "}"
    where
      G.Pixman_transform mat = unsafePerformIO (withPtr tr peek)

-- | Floating-point transform.
--
-- @double[3][3]@
newtype FTransform = FTransform { unwrap :: ForeignPtr G.Pixman_f_transform }
  deriving (Eq, Ord, Generic)

instance Show FTransform where
  show tr = "FTransform{" ++ show (map CA.toList $ CA.toList mat) ++ "}"
    where
      G.Pixman_f_transform mat = unsafePerformIO (withPtr tr peek)

-- | RGBA color of 'Word16' precision
type Color = G.Pixman_color_t

-- | A single vector
newtype Vector = Vector { unwrap :: G.Pixman_vector_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance Show Vector where
  show (Vector (G.Pixman_vector_t (G.Pixman_vector ca)))
    | [a, b, c] <- map (fromIntegral @_ @Int) $ CA.toList ca = printf "Vector{%d,%d,%d}" a b c
    | otherwise = "Vector{???}"

-- | Floating-point vector
newtype FVector = FVector { unwrap :: G.Pixman_f_vector_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance Show FVector where
  show (FVector (G.Pixman_f_vector_t (G.Pixman_f_vector ca)))
    | [a, b, c] <- map (coerce @_ @Double) $ CA.toList ca = printf "FVector{%d,%d,%d}" a b c
    | otherwise = "FVector{???}"

-- | 16-bit box
newtype Box16 = Box16 { unwrap :: G.Pixman_box16_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance HasField "x1" Box16 Int16 where getField = getField @"x1" . getField @"unwrap" . getField @"unwrap"
instance HasField "y1" Box16 Int16 where getField = getField @"y1" . getField @"unwrap" . getField @"unwrap"
instance HasField "x2" Box16 Int16 where getField = getField @"x2" . getField @"unwrap" . getField @"unwrap"
instance HasField "y2" Box16 Int16 where getField = getField @"y2" . getField @"unwrap" . getField @"unwrap"

instance Show Box16 where
  show box = "Box16{" ++ show [getField @"x1" box, getField @"y1" box, getField @"x2" box, getField @"y2" box] ++ "}"

-- | 32-bit box
newtype Box32 = Box32 { unwrap :: G.Pixman_box32_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance HasField "x1" Box32 Int32 where getField = getField @"x1" . getField @"unwrap"
instance HasField "y1" Box32 Int32 where getField = getField @"y1" . getField @"unwrap"
instance HasField "x2" Box32 Int32 where getField = getField @"x2" . getField @"unwrap"
instance HasField "y2" Box32 Int32 where getField = getField @"y2" . getField @"unwrap"

instance Show Box32 where
  show box = "Box32{" ++ show [getField @"x1" box, getField @"y1" box, getField @"x2" box, getField @"y2" box] ++ "}"

-- | 64-bit floating-point box
newtype Box64F = Box64F { unwrap :: G.Pixman_box64f_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance HasField "x1" Box64F Double where getField = coerce . getField @"x1" . getField @"unwrap"
instance HasField "y1" Box64F Double where getField = coerce . getField @"y1" . getField @"unwrap"
instance HasField "x2" Box64F Double where getField = coerce . getField @"x2" . getField @"unwrap"
instance HasField "y2" Box64F Double where getField = coerce . getField @"y2" . getField @"unwrap"

instance Show Box64F where
  show box = "Box64F{" ++ show [getField @"x1" box, getField @"y1" box, getField @"x2" box, getField @"y2" box] ++ "}"

-- | 16-bit rectangle
newtype Rectangle16 = Rectangle16 { unwrap :: G.Pixman_rectangle16_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance HasField "x"      Rectangle16 Int16  where getField = getField @"x" . getField @"unwrap"
instance HasField "y"      Rectangle16 Int16  where getField = getField @"y" . getField @"unwrap"
instance HasField "width"  Rectangle16 Word16 where getField = getField @"width" . getField @"unwrap"
instance HasField "height" Rectangle16 Word16 where getField = getField @"height" . getField @"unwrap"

instance Show Rectangle16 where
  show x = printf "Rectangle16{x=%d,y=%d,width=%d,height=%d}" (getField @"x" x) (getField @"y" x) (getField @"width" x) (getField @"height" x)

-- | 32-bit rectangle
newtype Rectangle32 = Rectangle32 { unwrap :: G.Pixman_rectangle32_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance HasField "x"      Rectangle32 Int32  where getField = getField @"x" . getField @"unwrap"
instance HasField "y"      Rectangle32 Int32  where getField = getField @"y" . getField @"unwrap"
instance HasField "width"  Rectangle32 Word32 where getField = getField @"width" . getField @"unwrap"
instance HasField "height" Rectangle32 Word32 where getField = getField @"height" . getField @"unwrap"

instance Show Rectangle32 where
  show x = printf "Rectangle32{x=%d,y=%d,width=%d,height=%d}" (getField @"x" x) (getField @"y" x) (getField @"width" x) (getField @"height" x)

-- | 64-bit floating-point rectangle
newtype Rectangle64F = Rectangle64F { unwrap :: G.Pixman_rectangle64f_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance HasField "x"      Rectangle64F Double where getField = coerce . getField @"x" . getField @"unwrap"
instance HasField "y"      Rectangle64F Double where getField = coerce . getField @"y" . getField @"unwrap"
instance HasField "width"  Rectangle64F Double where getField = coerce . getField @"width" . getField @"unwrap"
instance HasField "height" Rectangle64F Double where getField = coerce . getField @"height" . getField @"unwrap"

instance Show Rectangle64F where
  show x = printf "Rectangle64F{x=%d,y=%d,width=%d,height=%d}" (getField @"x" x) (getField @"y" x) (getField @"width" x) (getField @"height" x)

-- | Possible format codes
type FormatCode = G.Pixman_format_code_t

deriving via (CE.AsCEnum FormatCode) instance Bounded FormatCode
deriving via (CE.AsCEnum FormatCode) instance Enum FormatCode

pattern RGBAFloat     :: FormatCode
pattern RGBAFloat     = G.PIXMAN_rgba_float
pattern RGBFloat      :: FormatCode
pattern RGBFloat      = G.PIXMAN_rgb_float
pattern A16B16G16R16  :: FormatCode
pattern A16B16G16R16  = G.PIXMAN_a16b16g16r16
pattern A8R8G8B8      :: FormatCode
pattern A8R8G8B8      = G.PIXMAN_a8r8g8b8
pattern X8R8G8B8      :: FormatCode
pattern X8R8G8B8      = G.PIXMAN_x8r8g8b8
pattern A8B8G8R8      :: FormatCode
pattern A8B8G8R8      = G.PIXMAN_a8b8g8r8
pattern X8B8G8R8      :: FormatCode
pattern X8B8G8R8      = G.PIXMAN_x8b8g8r8
pattern B8G8R8A8      :: FormatCode
pattern B8G8R8A8      = G.PIXMAN_b8g8r8a8
pattern B8G8R8X8      :: FormatCode
pattern B8G8R8X8      = G.PIXMAN_b8g8r8x8
pattern R8G8B8A8      :: FormatCode
pattern R8G8B8A8      = G.PIXMAN_r8g8b8a8
pattern R8G8B8X8      :: FormatCode
pattern R8G8B8X8      = G.PIXMAN_r8g8b8x8
pattern X14R6G6B6     :: FormatCode
pattern X14R6G6B6     = G.PIXMAN_x14r6g6b6
pattern X2R10G10B10   :: FormatCode
pattern X2R10G10B10   = G.PIXMAN_x2r10g10b10
pattern A2R10G10B10   :: FormatCode
pattern A2R10G10B10   = G.PIXMAN_a2r10g10b10
pattern X2B10G10R10   :: FormatCode
pattern X2B10G10R10   = G.PIXMAN_x2b10g10r10
pattern A2B10G10R10   :: FormatCode
pattern A2B10G10R10   = G.PIXMAN_a2b10g10r10
pattern A8R8G8B8_sRGB :: FormatCode
pattern A8R8G8B8_sRGB = G.PIXMAN_a8r8g8b8_sRGB
pattern R8G8B8_sRGB   :: FormatCode
pattern R8G8B8_sRGB   = G.PIXMAN_r8g8b8_sRGB
pattern R8G8B8        :: FormatCode
pattern R8G8B8        = G.PIXMAN_r8g8b8
pattern B8G8R8        :: FormatCode
pattern B8G8R8        = G.PIXMAN_b8g8r8
pattern R5G6B5        :: FormatCode
pattern R5G6B5        = G.PIXMAN_r5g6b5
pattern B5G6R5        :: FormatCode
pattern B5G6R5        = G.PIXMAN_b5g6r5
pattern A1R5G5B5      :: FormatCode
pattern A1R5G5B5      = G.PIXMAN_a1r5g5b5
pattern X1R5G5B5      :: FormatCode
pattern X1R5G5B5      = G.PIXMAN_x1r5g5b5
pattern A1B5G5R5      :: FormatCode
pattern A1B5G5R5      = G.PIXMAN_a1b5g5r5
pattern X1B5G5R5      :: FormatCode
pattern X1B5G5R5      = G.PIXMAN_x1b5g5r5
pattern A4R4G4B4      :: FormatCode
pattern A4R4G4B4      = G.PIXMAN_a4r4g4b4
pattern X4R4G4B4      :: FormatCode
pattern X4R4G4B4      = G.PIXMAN_x4r4g4b4
pattern A4B4G4R4      :: FormatCode
pattern A4B4G4R4      = G.PIXMAN_a4b4g4r4
pattern X4B4G4R4      :: FormatCode
pattern X4B4G4R4      = G.PIXMAN_x4b4g4r4
pattern A8            :: FormatCode
pattern A8            = G.PIXMAN_a8
pattern R3G3B2        :: FormatCode
pattern R3G3B2        = G.PIXMAN_r3g3b2
pattern B2G3R3        :: FormatCode
pattern B2G3R3        = G.PIXMAN_b2g3r3
pattern A2R2G2B2      :: FormatCode
pattern A2R2G2B2      = G.PIXMAN_a2r2g2b2
pattern A2B2G2R2      :: FormatCode
pattern A2B2G2R2      = G.PIXMAN_a2b2g2r2
pattern C8            :: FormatCode
pattern C8            = G.PIXMAN_c8
pattern G8            :: FormatCode
pattern G8            = G.PIXMAN_g8
pattern X4A4          :: FormatCode
pattern X4A4          = G.PIXMAN_x4a4
pattern X4C4          :: FormatCode
pattern X4C4          = G.PIXMAN_x4c4
pattern X4G4          :: FormatCode
pattern X4G4          = G.PIXMAN_x4g4
pattern A4            :: FormatCode
pattern A4            = G.PIXMAN_a4
pattern R1G2B1        :: FormatCode
pattern R1G2B1        = G.PIXMAN_r1g2b1
pattern B1G2R1        :: FormatCode
pattern B1G2R1        = G.PIXMAN_b1g2r1
pattern A1R1G1B1      :: FormatCode
pattern A1R1G1B1      = G.PIXMAN_a1r1g1b1
pattern A1B1G1R1      :: FormatCode
pattern A1B1G1R1      = G.PIXMAN_a1b1g1r1
pattern C4            :: FormatCode
pattern C4            = G.PIXMAN_c4
pattern G4            :: FormatCode
pattern G4            = G.PIXMAN_g4
pattern A1            :: FormatCode
pattern A1            = G.PIXMAN_a1
pattern G1            :: FormatCode
pattern G1            = G.PIXMAN_g1
pattern YUY2          :: FormatCode
pattern YUY2          = G.PIXMAN_yuy2
pattern YV12          :: FormatCode
pattern YV12          = G.PIXMAN_yv12

newtype FormatType = FormatType { unwrap :: CInt }
  deriving stock (Eq, Generic)
  deriving newtype (Storable, Ord, Real, Integral, Num)

pattern TypeOther     <- ((== FormatType G.pIXMAN_TYPE_OTHER)      -> True) where TypeOther     = FormatType G.pIXMAN_TYPE_OTHER
pattern TypeA         <- ((== FormatType G.pIXMAN_TYPE_A)          -> True) where TypeA         = FormatType G.pIXMAN_TYPE_A
pattern TypeARGB      <- ((== FormatType G.pIXMAN_TYPE_ARGB      ) -> True) where TypeARGB      = FormatType G.pIXMAN_TYPE_ARGB       -- ^ @PIXMAN_TYPE_ARGB        2 @
pattern TypeABGR      <- ((== FormatType G.pIXMAN_TYPE_ABGR      ) -> True) where TypeABGR      = FormatType G.pIXMAN_TYPE_ABGR       -- ^ @PIXMAN_TYPE_ABGR        3 @
pattern TypeColor     <- ((== FormatType G.pIXMAN_TYPE_COLOR     ) -> True) where TypeColor     = FormatType G.pIXMAN_TYPE_COLOR      -- ^ @PIXMAN_TYPE_COLOR       4 @
pattern TypeGray      <- ((== FormatType G.pIXMAN_TYPE_GRAY      ) -> True) where TypeGray      = FormatType G.pIXMAN_TYPE_GRAY       -- ^ @PIXMAN_TYPE_GRAY        5 @
pattern TypeYUY2      <- ((== FormatType G.pIXMAN_TYPE_YUY2      ) -> True) where TypeYUY2      = FormatType G.pIXMAN_TYPE_YUY2       -- ^ @PIXMAN_TYPE_YUY2        6 @
pattern TypeYV12      <- ((== FormatType G.pIXMAN_TYPE_YV12      ) -> True) where TypeYV12      = FormatType G.pIXMAN_TYPE_YV12       -- ^ @PIXMAN_TYPE_YV12        7 @
pattern TypeBGRA      <- ((== FormatType G.pIXMAN_TYPE_BGRA      ) -> True) where TypeBGRA      = FormatType G.pIXMAN_TYPE_BGRA       -- ^ @PIXMAN_TYPE_BGRA        8 @
pattern TypeRGBA      <- ((== FormatType G.pIXMAN_TYPE_RGBA      ) -> True) where TypeRGBA      = FormatType G.pIXMAN_TYPE_RGBA       -- ^ @PIXMAN_TYPE_RGBA        9 @
pattern TypeARGBsRGB  <- ((== FormatType G.pIXMAN_TYPE_ARGB_SRGB ) -> True) where TypeARGBsRGB  = FormatType G.pIXMAN_TYPE_ARGB_SRGB  -- ^ @PIXMAN_TYPE_ARGB_SRGB   10@
pattern TypeRGBAFloat <- ((== FormatType G.pIXMAN_TYPE_RGBA_FLOAT) -> True) where TypeRGBAFloat = FormatType G.pIXMAN_TYPE_RGBA_FLOAT -- ^ @PIXMAN_TYPE_RGBA_FLOAT  11@

formatTypes :: [(FormatType, String)]
formatTypes =
  [(TypeOther     , "Other") --  0
  ,(TypeA         , "A") --  1
  ,(TypeARGB      , "ARGB") --  2
  ,(TypeABGR      , "ABGR") --  3
  ,(TypeColor     , "COLOR") --  4
  ,(TypeGray      , "GRAY") --  5
  ,(TypeYUY2      , "YUY2") --  6
  ,(TypeYV12      , "YV12") --  7
  ,(TypeBGRA      , "BGRA") --  8
  ,(TypeRGBA      , "RGBA") --  9
  ,(TypeARGBsRGB  , "ARGB_sRGB") --  10
  ,(TypeRGBAFloat , "RGBA_FLOAT") --  11
  ]

instance Show FormatType where
  show x = case [s | (k, s) <- formatTypes, k == x] of
             s : _ -> s
             _ -> "TypeUnknown(" ++ show x ++ ")"

instance Enum FormatType where
  toEnum i
    | r : _ <- [ v | (v@(FormatType vi), _str) <- formatTypes, vi == fromIntegral i ] = r
    | otherwise = TypeOther
  fromEnum x
    | r : _ <- [ vi | (v@(FormatType vi), _str) <- formatTypes, v == x ] = fromIntegral r
    | otherwise = 0

-- | All named formats.
allFormats :: [FormatCode]
allFormats = filter CE.isDeclared [minBound .. maxBound]

-- | Bits-per-pixel. @PIXMAN_FORMAT_BPP@
formatBPP :: FormatCode -> Int
formatBPP fmt = fromIntegral $ G.pIXMAN_FORMAT_BPP (CE.fromCEnum fmt)

-- | @PIXMAN_FORMAT_DEPTH@
formatDepth :: FormatCode -> Int
formatDepth fmt = fromIntegral $ G.pIXMAN_FORMAT_DEPTH (CE.fromCEnum fmt)

-- | @PIXMAN_FORMAT_COLOR@
formatColor :: FormatCode -> Bool
formatColor fmt = G.pIXMAN_FORMAT_COLOR (CE.fromCEnum fmt) == 1

-- | @PIXMAN_FORMAT_TYPE@
formatType :: FormatCode -> FormatType
formatType fmt = toEnum . fromIntegral $ G.pIXMAN_FORMAT_TYPE (CE.fromCEnum fmt)

formatSupportedDest :: FormatCode -> Bool
formatSupportedDest fmt = unsafePerformIO $ fromPixmanBool <$> US.pixman_format_supported_destination fmt

formatSupportedSource :: FormatCode -> Bool
formatSupportedSource fmt = unsafePerformIO $ fromPixmanBool <$> US.pixman_format_supported_source fmt

-- | Possible operations
newtype Op = Op { unwrap :: G.Pixman_op_t }
  deriving stock (Eq, Show, Generic)
  deriving newtype (Ord, Storable)

pattern OpClear               = Op G.PIXMAN_OP_CLEAR
pattern OpSrc                 = Op G.PIXMAN_OP_SRC
pattern OpDst                 = Op G.PIXMAN_OP_DST
pattern OpOver                = Op G.PIXMAN_OP_OVER
pattern OpOverReverse         = Op G.PIXMAN_OP_OVER_REVERSE
pattern OpIn                  = Op G.PIXMAN_OP_IN
pattern OpInReverse           = Op G.PIXMAN_OP_IN_REVERSE
pattern OpOut                 = Op G.PIXMAN_OP_OUT
pattern OpOutReverse          = Op G.PIXMAN_OP_OUT_REVERSE
pattern OpAtop                = Op G.PIXMAN_OP_ATOP
pattern OpAtopReverse         = Op G.PIXMAN_OP_ATOP_REVERSE
pattern OpXor                 = Op G.PIXMAN_OP_XOR
pattern OpAdd                 = Op G.PIXMAN_OP_ADD
pattern OpSaturate            = Op G.PIXMAN_OP_SATURATE
pattern OpDisjointClear       = Op G.PIXMAN_OP_DISJOINT_CLEAR
pattern OpDisjointSrc         = Op G.PIXMAN_OP_DISJOINT_SRC
pattern OpDisjointDst         = Op G.PIXMAN_OP_DISJOINT_DST
pattern OpDisjointOver        = Op G.PIXMAN_OP_DISJOINT_OVER
pattern OpDisjointOverReverse = Op G.PIXMAN_OP_DISJOINT_OVER_REVERSE
pattern OpDisjointIn          = Op G.PIXMAN_OP_DISJOINT_IN
pattern OpDisjointInReverse   = Op G.PIXMAN_OP_DISJOINT_IN_REVERSE
pattern OpDisjointOut         = Op G.PIXMAN_OP_DISJOINT_OUT
pattern OpDisjointOutReverse  = Op G.PIXMAN_OP_DISJOINT_OUT_REVERSE
pattern OpDisjointAtop        = Op G.PIXMAN_OP_DISJOINT_ATOP
pattern OpDisjointAtopReverse = Op G.PIXMAN_OP_DISJOINT_ATOP_REVERSE
pattern OpDisjointXor         = Op G.PIXMAN_OP_DISJOINT_XOR
pattern OpConjointClear       = Op G.PIXMAN_OP_CONJOINT_CLEAR
pattern OpConjointSrc         = Op G.PIXMAN_OP_CONJOINT_SRC
pattern OpConjointDst         = Op G.PIXMAN_OP_CONJOINT_DST
pattern OpConjointOver        = Op G.PIXMAN_OP_CONJOINT_OVER
pattern OpConjointOverReverse = Op G.PIXMAN_OP_CONJOINT_OVER_REVERSE
pattern OpConjointIn          = Op G.PIXMAN_OP_CONJOINT_IN
pattern OpConjointInReverse   = Op G.PIXMAN_OP_CONJOINT_IN_REVERSE
pattern OpConjointOut         = Op G.PIXMAN_OP_CONJOINT_OUT
pattern OpConjointOutReverse  = Op G.PIXMAN_OP_CONJOINT_OUT_REVERSE
pattern OpConjointAtop        = Op G.PIXMAN_OP_CONJOINT_ATOP
pattern OpConjointAtopReverse = Op G.PIXMAN_OP_CONJOINT_ATOP_REVERSE
pattern OpConjointXor         = Op G.PIXMAN_OP_CONJOINT_XOR
pattern OpMultiply            = Op G.PIXMAN_OP_MULTIPLY
pattern OpScreen              = Op G.PIXMAN_OP_SCREEN
pattern OpOverlay             = Op G.PIXMAN_OP_OVERLAY
pattern OpDarken              = Op G.PIXMAN_OP_DARKEN
pattern OpLighten             = Op G.PIXMAN_OP_LIGHTEN
pattern OpColorDodge          = Op G.PIXMAN_OP_COLOR_DODGE
pattern OpColorBurn           = Op G.PIXMAN_OP_COLOR_BURN
pattern OpHardLight           = Op G.PIXMAN_OP_HARD_LIGHT
pattern OpSoftLight           = Op G.PIXMAN_OP_SOFT_LIGHT
pattern OpDifference          = Op G.PIXMAN_OP_DIFFERENCE
pattern OpExclusion           = Op G.PIXMAN_OP_EXCLUSION
pattern OpHslHue              = Op G.PIXMAN_OP_HSL_HUE
pattern OpHslSaturation       = Op G.PIXMAN_OP_HSL_SATURATION
pattern OpHslColor            = Op G.PIXMAN_OP_HSL_COLOR
pattern OpHslLuminosity       = Op G.PIXMAN_OP_HSL_LUMINOSITY

newtype Dither = Dither { unwrap :: G.Pixman_dither_t }
  deriving stock (Eq, Show, Generic)
  deriving newtype (Ord, Storable)

pattern DitherNone               = Dither G.PIXMAN_DITHER_NONE                  -- ^ G.PIXMAN_DITHER_NONE
pattern DitherFast               = Dither G.PIXMAN_DITHER_FAST                  -- ^ G.PIXMAN_DITHER_FAST
pattern DitherGood               = Dither G.PIXMAN_DITHER_GOOD                  -- ^ G.PIXMAN_DITHER_GOOD
pattern DitherBest               = Dither G.PIXMAN_DITHER_BEST                  -- ^ G.PIXMAN_DITHER_BEST
pattern DitherOrderedBayer8      = Dither G.PIXMAN_DITHER_ORDERED_BAYER_8       -- ^ G.PIXMAN_DITHER_ORDERED_BAYER_8
pattern DitherOrderedBlueNoise64 = Dither G.PIXMAN_DITHER_ORDERED_BLUE_NOISE_64 -- ^ G.PIXMAN_DITHER_ORDERED_BLUE_NOISE_64

-- | Possible repeat settings
newtype Repeat = Repeat { unwrap :: G.Pixman_repeat_t }
  deriving (Eq, Show, Read, Generic)

pattern RepeatNone    = Repeat G.PIXMAN_REPEAT_NONE    -- ^ @PIXMAN_REPEAT_NONE@
pattern RepeatNormal  = Repeat G.PIXMAN_REPEAT_NORMAL  -- ^ @PIXMAN_REPEAT_NORMAL@
pattern RepeatPad     = Repeat G.PIXMAN_REPEAT_PAD     -- ^ @PIXMAN_REPEAT_PAD@
pattern RepeatReflect = Repeat G.PIXMAN_REPEAT_REFLECT -- ^ @PIXMAN_REPEAT_REFLECT@

newtype Filter = Filter { unwrap :: G.Pixman_filter_t }
  deriving stock (Eq, Generic)
  deriving newtype (Ord, Show, Storable)

pattern FilterFast                  = Filter G.PIXMAN_FILTER_FAST                  -- ^ pattern G.PIXMAN_FILTER_FAST
pattern FilterGood                  = Filter G.PIXMAN_FILTER_GOOD                  -- ^ pattern G.PIXMAN_FILTER_GOOD
pattern FilterBest                  = Filter G.PIXMAN_FILTER_BEST                  -- ^ pattern G.PIXMAN_FILTER_BEST
pattern FilterNearest               = Filter G.PIXMAN_FILTER_NEAREST               -- ^ pattern G.PIXMAN_FILTER_NEAREST
pattern FilterBilinear              = Filter G.PIXMAN_FILTER_BILINEAR              -- ^ pattern G.PIXMAN_FILTER_BILINEAR
pattern FilterConvolution           = Filter G.PIXMAN_FILTER_CONVOLUTION           -- ^ pattern G.PIXMAN_FILTER_CONVOLUTION
pattern FilterSeparableConvolution  = Filter G.PIXMAN_FILTER_SEPARABLE_CONVOLUTION -- ^ pattern G.PIXMAN_FILTER_SEPARABLE_CONVOLUTION

newtype Kernel = Kernel { unwrap :: G.Pixman_kernel_t }
  deriving stock (Eq, Show, Generic)
  deriving newtype (Ord, Storable)

pattern KernelImpulse           = Kernel G.PIXMAN_KERNEL_IMPULSE
pattern KernelBox               = Kernel G.PIXMAN_KERNEL_BOX
pattern KernelLinear            = Kernel G.PIXMAN_KERNEL_LINEAR
pattern KernelCubic             = Kernel G.PIXMAN_KERNEL_CUBIC
pattern KernelGaussian          = Kernel G.PIXMAN_KERNEL_GAUSSIAN
pattern KernelLanczos2          = Kernel G.PIXMAN_KERNEL_LANCZOS2
pattern KernelLanczos3          = Kernel G.PIXMAN_KERNEL_LANCZOS3
pattern KernelLanczos3Stretched = Kernel G.PIXMAN_KERNEL_LANCZOS3_STRETCHED

data SeparableConvolution = SeparableConvolution
  { scaleX, scaleY   :: Fixed
  , reconX, reconY   :: Kernel
  , sampleX, sampleY :: Kernel
  , ssbX, ssbY       :: Int
  } deriving (Eq, Show, Generic)

createSeparableConvolutionFilter :: SeparableConvolution -> [Fixed]
createSeparableConvolutionFilter SeparableConvolution{..} = unsafePerformIO $
  alloca $ \lenP -> do
    paramsP <- US.pixman_filter_create_separable_convolution lenP
      scaleX scaleY (coerce reconX) (coerce reconY) (coerce sampleX) (coerce sampleY) (fromIntegral ssbX) (fromIntegral ssbY)
    len <- peek lenP
    peekArray (fromIntegral len) paramsP

newtype RegionOverlap = RegionOverlap { unwrap :: G.Pixman_region_overlap_t }
  deriving stock (Eq, Generic)
  deriving newtype (Ord, Show, Storable)

pattern RegionOut  = RegionOverlap G.PIXMAN_REGION_OUT
pattern RegionIn   = RegionOverlap G.PIXMAN_REGION_IN
pattern RegionPart = RegionOverlap G.PIXMAN_REGION_PART

-- * Colors

class IsColor a where
  toColor :: a -> Color

instance IsColor Color where
  toColor = id

-- | Interpret the bits as in @AARRGGBB@
instance IsColor Word32 where
  toColor c8 =
    let alpha = (c8 .&. 0xff000000) `shiftR` 24
        red   = (c8 .&. 0x00ff0000) `shiftR` 16
        green = (c8 .&. 0x0000ff00) `shiftR` 8
        blue  = (c8 .&. 0x000000ff)
        f x = fromIntegral $! x .|. (x `shiftL` 8)
    in
      colorFromParts @Word16 (f red) (f green) (f blue) (f alpha)

class ColorComponent a where
  toColorComponent :: a -> Word16

instance ColorComponent Word16 where
  toColorComponent = id

instance ColorComponent Double where
  toColorComponent = doubleToColor

instance ColorComponent Float where
  toColorComponent = doubleToColor . float2Double

colorFromParts :: ColorComponent a => a -> a -> a -> a -> Color
colorFromParts a b c d = G.Pixman_color_t (toColorComponent a) (toColorComponent b) (toColorComponent c) (toColorComponent d)

-- XXX: is this correct?
doubleToColor :: Double -> Word16
doubleToColor x =
  fromIntegral ((dToW (x * 65536.0) :: Word32) - ((dToW (x * 65536.0) :: Word32) `shiftR` 16)) :: Word16
    where
      dToW = castFloatToWord32 . double2Float

-- * Vectors

vector :: Fixed -> Fixed -> Fixed -> Vector
vector x y z = vectorFromArray [x, y, z]

vectorFromArray :: [Fixed] -> Vector
vectorFromArray xs = Vector $! G.Pixman_vector_t $! G.Pixman_vector $! CA.fromList xs

fvector :: Double -> Double -> Double -> FVector
fvector x y z = fvectorFromArray [x, y, z]

fvectorFromArray :: [Double] -> FVector
fvectorFromArray xs = FVector $! G.Pixman_f_vector_t $! G.Pixman_f_vector $! CA.fromList $ map CDouble xs

-- * Gradient / misc

data Point a = Point { x, y :: !a }
  deriving stock (Eq, Ord, Show, Generic)

-- | @pixman_point_fixed_t@
type PointFixed = Point Fixed

instance Storable PointFixed where
  sizeOf _ = sizeOf @G.Pixman_point_fixed_t undefined
  alignment _ = alignment @G.Pixman_point_fixed_t undefined
  peek p = do
    G.Pixman_point_fixed_t{..} <- peek (castPtr p)
    return $! Point { x, y }
  poke p Point{..} = poke (castPtr p) G.Pixman_point_fixed_t { x, y }

-- | Pair of ('Fixed', 'Color')
newtype GradientStop = GradientStop { unwrap :: G.Pixman_gradient_stop_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable)

gradientStop :: IsColor color => Fixed -> color -> GradientStop
gradientStop x color = GradientStop $! G.Pixman_gradient_stop_t (coerce x) (coerce $ toColor color)

-- * Images

newtype Image = Image { unwrap :: ForeignPtr G.Pixman_image_t }
  deriving (Eq, Generic)

instance Show Image where
  show img@(Image fp) = "Image{size=" ++ show (imageWidth img) ++ "x" ++ show (imageHeight img) ++ "," ++
    " format=" ++ show (imageFormat img) ++ "," ++
    " depth=" ++ show (imageDepth img) ++ "," ++
    " stride=" ++ show (imageStride img) ++ "," ++
    " calpha=" ++ show (imageComponentAlpha img) ++ "," ++
    " data=" ++ show fp ++
    "}"

class IsImage a where
  toImage :: a -> IO Image

instance IsImage Image where
  toImage = return

instance IsImage CreateImage where
  toImage = createImage

-- ** CreateImage
data CreateImage = CreateImage
  { createImageInit       :: IO (Ptr G.Pixman_image_t)
  , createImageFinalizers :: [ImageTransformFin G.Pixman_image_t]
  } deriving (Generic)

type ImageTransform a = Ptr a -> IO ()

type ImageTransformFin a = Ptr a -> IO (ForeignPtr a -> IO ())

imageAddTransFin :: ImageTransformFin G.Pixman_image_t -> CreateImage -> CreateImage
imageAddTransFin x ci = ci { createImageFinalizers = createImageFinalizers ci ++ [x] }

imageAddTrans :: ImageTransform G.Pixman_image_t -> CreateImage -> CreateImage
imageAddTrans x ci = ci { createImageFinalizers = createImageFinalizers ci ++ [y] } where
  y img = x img >> pure (const $ pure ())

newImage :: FormatCode
         -> Size2D Int -- ^ (width, height)
         -> Bool -- ^ clear?
         -> CreateImage
newImage fmt (width, height) clear = CreateImage imageNew [] where
  imageNew = throwPixmanIfNull "newImage" $ f fmt (fromIntegral width) (fromIntegral height) nullPtr 0
  f = if clear then US.pixman_image_create_bits else US.pixman_image_create_bits_no_clear

imageWithBits :: FormatCode
              -> Size2D Int -- ^ (width, height)
              -> Bool -- ^ clear?
              -> Ptr Word32 -- ^ data
              -> Int -- ^ rowstride (bytes)
              -> CreateImage
imageWithBits fmt (width, height) clear bits stride = CreateImage imageFromBits [] where
  imageFromBits = throwPixmanIfNull "imageWithBits" $ f fmt (fromIntegral width) (fromIntegral height) bits (fromIntegral stride)
  f = if clear then US.pixman_image_create_bits else US.pixman_image_create_bits_no_clear

-- | Create a solid fill image.
solidImage :: IsColor color => color -> CreateImage
solidImage color = CreateImage imageSolidFill [] where
  imageSolidFill = with (toColor color) $ \colorPtr -> US.pixman_image_create_solid_fill (ConstPtr colorPtr)

linearGradientImage :: PointFixed -> PointFixed -> [GradientStop] -> CreateImage
linearGradientImage p1 p2 stops = CreateImage mk [] where
  mk = with p1 $ \p1P ->
      with p2 $ \p2P ->
      withArrayLen stops $ \stopsLen stopsP ->
      throwPixmanIfNull "linearGradientImage" $
        US.pixman_image_create_linear_gradient (coerce p1P) (coerce p2P) (coerce stopsP) (fromIntegral stopsLen)

conicalGradientImage :: PointFixed -> Fixed -> [GradientStop] -> CreateImage
conicalGradientImage center angle stops = CreateImage mk [] where
  mk = with center $ \centerP ->
      withArrayLen stops $ \stopsLen stopsP ->
      throwPixmanIfNull "conicalGradientImage" $
        US.pixman_image_create_conical_gradient (coerce centerP) angle (coerce stopsP) (fromIntegral stopsLen)

radialGradientImage :: PointFixed -> PointFixed -> Fixed -> Fixed -> [GradientStop] -> CreateImage
radialGradientImage p1 p2 innerR outerR stops = CreateImage mk [] where
  mk = with p1 $ \p1P ->
      with p2 $ \p2P ->
      withArrayLen stops $ \stopsLen stopsP ->
      throwPixmanIfNull "radialGradientImage" $
        US.pixman_image_create_radial_gradient (coerce p1P) (coerce p2P) innerR outerR (coerce stopsP) (fromIntegral stopsLen)

-- | Realize a 'CreateImage'
createImage :: CreateImage -> IO Image
createImage ci = do
  p <- createImageInit ci
  fin <- mapM ($ p) (createImageFinalizers ci)
  fp <- newForeignPtr (castFunPtr FP.pixman_image_unref) p
  mapM_ ($ fp) fin
  return $! Image fp

asImage :: CreateImage -> Image
asImage ci = unsafePerformIO $ createImage ci

-- ** Properties

imageSize :: IsImage a => a -> Size2D Int
imageSize = (,) <$> imageWidth <*> imageHeight

imageWidth :: IsImage a => a -> Int
imageWidth x = unsafePerformIO $ fromIntegral <$> withImagePtr x US.pixman_image_get_width

imageHeight :: IsImage a => a -> Int
imageHeight x = unsafePerformIO $ fromIntegral <$> withImagePtr x US.pixman_image_get_height

imageDepth :: IsImage a => a -> Int
imageDepth x = unsafePerformIO $ fromIntegral <$> withImagePtr x US.pixman_image_get_depth

-- | Image (row) stride (in bytes)
imageStride :: IsImage a => a -> Int
imageStride x = unsafePerformIO $ fromIntegral <$> withImagePtr x US.pixman_image_get_stride

imageComponentAlpha :: IsImage a => a -> Bool
imageComponentAlpha x = unsafePerformIO $ fromPixmanBool <$> withImagePtr x US.pixman_image_get_component_alpha

imageFormat :: IsImage a => a -> FormatCode
imageFormat x = unsafePerformIO $ withImagePtr x US.pixman_image_get_format

imageData :: IsImage a => a -> Ptr Word32
imageData x = unsafePerformIO $ withImagePtr x US.pixman_image_get_data

-- ** Operations

imageSetHasClientClip :: Bool -> CreateImage -> CreateImage
imageSetHasClientClip x = imageAddTrans $ \img -> US.pixman_image_set_has_client_clip img (toPixmanBool x)

imageSetIndexed :: Indexed -> CreateImage -> CreateImage
imageSetIndexed indexed = imageAddTransFin $ \img -> do
    p <- new indexed
    US.pixman_image_set_indexed img (ConstPtr p)
    return $! addForeignPtrFinalizerEnv finalizeIndexed p

imageSetClipRegion16 :: Region16 -> CreateImage -> CreateImage
imageSetClipRegion16 = imageSetClipRegion "set_clip_region" US.pixman_image_set_clip_region

imageSetClipRegion32 :: Region32 -> CreateImage -> CreateImage
imageSetClipRegion32 = imageSetClipRegion "set_clip_region32" US.pixman_image_set_clip_region32

imageSetClipRegion64F :: Region64F -> CreateImage -> CreateImage
imageSetClipRegion64F = imageSetClipRegion "set_clip_region64f" US.pixman_image_set_clip_region64f

imageSetClipRegion :: (img ~ G.Pixman_image_t, HasField "unwrap" reg (ForeignPtr r)) => String -> (Ptr img -> ConstPtr r -> IO G.Pixman_bool_t) -> reg -> CreateImage -> CreateImage
imageSetClipRegion str f reg = imageAddTrans $ \img -> throwPixmanUnless1 str $ withConstPtr reg $ f img

imageSetTransform :: Transform -> CreateImage -> CreateImage
imageSetTransform t = imageAddTrans $ \img -> throwPixmanUnless1 "image_set_transform" $ withPtr t $ US.pixman_image_set_transform img . ConstPtr . castPtr

imageSetFilter :: Filter -> [Fixed] -> CreateImage -> CreateImage
imageSetFilter f params = imageAddTrans $ \img ->
  withArrayLen params $ \len ptr ->
    throwPixmanUnless1 "image_set_filter" $ US.pixman_image_set_filter img (coerce f) (ConstPtr ptr) (fromIntegral len)

imageSetSeparableConvolutionFilter :: SeparableConvolution -> CreateImage -> CreateImage
imageSetSeparableConvolutionFilter cfg = imageSetFilter FilterSeparableConvolution (createSeparableConvolutionFilter cfg)

imageSetRepeat :: Repeat -> CreateImage -> CreateImage
imageSetRepeat r = imageAddTrans $ \img -> US.pixman_image_set_repeat img (coerce r)

imageSetDither :: Dither -> Maybe (Int, Int) -> CreateImage -> CreateImage
imageSetDither d moff = imageAddTrans $ \img -> do
  US.pixman_image_set_dither img (coerce d)
  maybe (return ()) (\(x,y) -> US.pixman_image_set_dither_offset img (fromIntegral x) (fromIntegral y)) moff

imageSetSourceClipping :: Bool -> CreateImage -> CreateImage
imageSetSourceClipping b = imageAddTrans $ \img -> US.pixman_image_set_source_clipping img (toPixmanBool b)

imageSetAlphaMap :: Image -> Int -> Int -> CreateImage -> CreateImage
imageSetAlphaMap amap x y = imageAddTrans $ \img ->
  withPtr amap $ \amapPtr ->
    US.pixman_image_set_alpha_map img amapPtr (fromIntegral x) (fromIntegral y)

imageSetComponentAlpha :: Bool -> CreateImage -> CreateImage
imageSetComponentAlpha b = imageAddTrans $ \img -> US.pixman_image_set_component_alpha img (toPixmanBool b)

data SetComposite pos size = SetComposite
  { op       :: Op
  , srcImg   :: IO Image
  , maskImg  :: Maybe Image
  , srcPos   :: XY pos
  , maskPos  :: XY pos
  , destPos  :: XY pos
  , size     :: Size2D size
  }

imageSetComposite :: _ -> (pos -> _) -> (size -> _) -> SetComposite pos size -> CreateImage -> CreateImage
imageSetComposite f f1 f2 SetComposite{..} = imageAddTrans $ \img -> do
      src <- srcImg
      let (w, h) = size
          (src_x, src_y) = srcPos
          (mask_x, mask_y) = maskPos
          (dest_x, dest_y) = destPos
      withPtr src $ \src_p ->
        maybe ($ nullPtr) withPtr maskImg $ \mask_p ->
          f (coerce op :: G.Pixman_op_t) src_p mask_p img
          (f1 src_x) (f1 src_y) (f1 mask_x) (f1 mask_y) (f1 dest_x) (f1 dest_y) (f2 w) (f2 h)

imageSetComposite16 :: SetComposite Int16 Word16 -> CreateImage -> CreateImage
imageSetComposite16 = imageSetComposite US.pixman_image_composite id id

imageSetComposite32 :: SetComposite Int32 Int32 -> CreateImage -> CreateImage
imageSetComposite32 = imageSetComposite US.pixman_image_composite32 id id

imageSetComposite64F :: SetComposite Double Double -> CreateImage -> CreateImage
imageSetComposite64F = imageSetComposite US.pixman_image_composite64f CDouble CDouble

setComposite :: (Default a, Default b, IsImage src) => src -> SetComposite a b
setComposite src = SetComposite OpSrc (toImage src) Nothing (def, def) (def, def) (def, def) (def, def)

setComposite16 :: IsImage src => src -> SetComposite Int16 Word16
setComposite16 = setComposite

setComposite32 :: IsImage src => src -> SetComposite Int32 Int32
setComposite32 = setComposite

setComposite64F :: IsImage src => src -> SetComposite Double Double
setComposite64F = setComposite

imageFillBoxes :: IsColor color => Op -> color -> [Box32] -> CreateImage -> CreateImage
imageFillBoxes op color boxes = imageAddTrans $ \img ->
    with (toColor color) $ \colorP ->
    withArrayLen (coerce boxes) $ \len boxesP ->
      throwPixmanUnless1 "image_fill_boxes" $
        US.pixman_image_fill_boxes (coerce op) img (ConstPtr colorP) (fromIntegral len) (ConstPtr boxesP)

imageFillRectangles :: IsColor color => Op -> color -> [Rectangle16] -> CreateImage -> CreateImage
imageFillRectangles op color rects = imageAddTrans $ \img ->
    with (toColor color) $ \colorP ->
    withArrayLen (coerce rects) $ \len rsP ->
      throwPixmanUnless1 "image_fill_rectangles" $
        US.pixman_image_fill_rectangles (coerce op) img (ConstPtr colorP) (fromIntegral len) (ConstPtr rsP)

-- | offset, xs
imageAddTriangles :: (Int, Int) -> [Triangle] -> CreateImage -> CreateImage
imageAddTriangles = imageAddFoo US.pixman_add_triangles

-- | offset, xs
imageAddTraps :: (Int, Int) -> [Trap] -> CreateImage -> CreateImage
imageAddTraps = imageAddFoo US.pixman_add_traps

-- | offset, xs
imageAddTrapezoids :: (Int, Int) -> [Trapezoid] -> CreateImage -> CreateImage
imageAddTrapezoids = imageAddFoo US.pixman_add_trapezoids

imageAddFoo :: _ => _f -> (Int, Int) -> _xs -> CreateImage -> CreateImage
{-# INLINE imageAddFoo #-}
imageAddFoo f (x_off, y_off) xs = imageAddTrans $ \img ->
  withArrayLen xs $ \len xsP ->
    f img (fromIntegral x_off) (fromIntegral y_off) (fromIntegral len) (ConstPtr xsP)

finalizeIndexed :: FinalizerEnvPtr Indexed G.Pixman_image_t
finalizeIndexed = unsafePerformIO $ mkFinalizeIndexed $ \p _ -> free p
{-# NOINLINE finalizeIndexed #-}

foreign import ccall "wrapper"
  mkFinalizeIndexed :: forall a. (Ptr Indexed -> Ptr a -> IO ()) -> IO (FinalizerEnvPtr Indexed a)

-- | Compute the composite region for the specified src
computeCompositeRegion
  :: Image       -- ^ src_image
  -> Maybe Image -- ^ mask_image
  -> Image       -- ^ dest_image
  -> XY Int      -- ^ (src_x, src_y)
  -> XY Int      -- ^ (mask_x, mask_y)
  -> XY Int      -- ^ (dest_x, dest_y)
  -> Size2D Int  -- ^ (width, height)
  -> Region16
computeCompositeRegion src mask' dest (sx, sy) (mx, my) (dx, dy) (w, h) = unsafePerformIO $
  withPtr src $ \srcP ->
  maybe ($ nullPtr) withPtr mask' $ \maskP ->
  withPtr dest $ \destP ->
  withNewForeignPtr mkRegion16 $ \p ->
    throwPixmanUnless1 "computeCompositeRegion" $ US.pixman_compute_composite_region p srcP maskP destP
      (fromIntegral sx) (fromIntegral sy)
      (fromIntegral mx) (fromIntegral my)
      (fromIntegral dx) (fromIntegral dy)
      (fromIntegral w) (fromIntegral h)

-- * Transform

class IsTransform a where

  type TElem a :: Type

  type TVector a :: Type

  -- | The identity transformation.
  transformIdentity :: a

  -- | Initialize a transform from a matrix (3 x 3).
  transformFromMatrix :: [[TElem a]] -> a

  -- | Initialize a transform from a rotation.
  transformFromRotation :: TElem a -> TElem a -> a

  -- | Initialize a transform from a scale.
  transformFromScale :: TElem a -> TElem a -> a

  -- | Initialize a transform from a translate.
  transformFromTranslation :: TElem a -> TElem a -> a

  -- | Invert transformation.
  transformInvert :: a -> a

  -- | Transform the provided bounds.
  transformBounds :: a -> Box16 -> Box16

  -- | Multiply two transformations.
  transformMultiply :: a -> a -> a

  -- | Add a scale to the transform
  transformScale :: TElem a -- ^ sx
                 -> TElem a -- ^ sy
                 -> Bool -- ^ reverse?
                 -> a
                 -> a

  -- | Add a translation to the transform
  transformTranslate :: TElem a -- ^ sx
                     -> TElem a -- ^ sy
                     -> Bool -- ^ reverse?
                     -> a
                     -> a

  transformRotate
    :: Bool -- ^ reverse?
    -> TElem a -- ^ cos
    -> TElem a -- ^ sin
    -> a
    -> a

  -- | Transform the given point
  transformPoint :: a -> TVector a -> TVector a

  -- | Transform the given point
  transformPoint3D :: a -> TVector a -> TVector a

instance IsTransform Transform where
  type TElem   Transform = Fixed
  type TVector Transform = Vector

  transformIdentity = unsafePerformIO $
    withNewForeignPtr (pure . Transform) US.pixman_transform_init_identity
  {-# NOINLINE transformIdentity #-}

  transformFromMatrix matrix = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p -> poke p $ G.Pixman_transform $ mkArray matrix
      where mkArray = CA.fromList . map CA.fromList

  transformFromRotation cos' sin' = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p -> US.pixman_transform_init_rotate p cos' sin'

  transformFromScale sx sy = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p -> US.pixman_transform_init_scale p sx sy

  transformFromTranslation tx ty = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p -> US.pixman_transform_init_translate p tx ty

  transformInvert x = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p ->
      throwPixmanUnless1 "transformInvert" $ withConstPtr x $ US.pixman_transform_invert p

  transformBounds trans bounds = unsafePerformIO $
    withConstPtr trans $ \transP ->
    with bounds $ \boundsP -> do
      throwPixmanUnless1 "transformBounds" $ US.pixman_transform_bounds transP (coerce boundsP)
      peek boundsP

  transformMultiply l r = unsafePerformIO $
    withConstPtr l $ \lc ->
    withConstPtr r $ \rc ->
    withNewForeignPtr (pure . Transform) $ \dst ->
      throwPixmanUnless1 "transformMultiply" $ US.pixman_transform_multiply dst lc rc

  transformScale sx sy rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . Transform) at $ \t ->
      throwPixmanUnless1 "transformScale" $
        if rev
           then US.pixman_transform_scale nullPtr t sx sy
           else US.pixman_transform_scale t nullPtr sx sy

  transformTranslate sx sy rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . Transform) at $ \t ->
      throwPixmanUnless1 "transformTranslate" $
        if rev
           then US.pixman_transform_translate nullPtr t sx sy
           else US.pixman_transform_translate t nullPtr sx sy

  transformRotate rev c s at = unsafePerformIO $
    withNewForeignPtrCopy (pure . Transform) at $ \t ->
      throwPixmanUnless1 "transformRotate" $
        if rev
           then US.pixman_transform_rotate nullPtr t c s
           else US.pixman_transform_rotate t nullPtr c s

  transformPoint at vec = unsafePerformIO $
    withConstPtr at $ \t ->
    with vec $ \v -> do
      throwPixmanUnless1 "transformPoint" $ US.pixman_transform_point t (coerce v)
      peek v

  transformPoint3D at vec = unsafePerformIO $
    withConstPtr at $ \t ->
    with vec $ \v -> do
      throwPixmanUnless1 "transformPoint3d" $ US.pixman_transform_point_3d t (coerce v)
      peek v

instance IsTransform FTransform where
  type TElem   FTransform = Double
  type TVector FTransform = FVector

  transformIdentity = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) US.pixman_f_transform_init_identity
  {-# NOINLINE transformIdentity #-}

  transformFromMatrix matrix = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $ \p -> poke p $ G.Pixman_f_transform $ mkArray matrix
      where mkArray = CA.fromList . map (CA.fromList . map CDouble)

  transformFromRotation cos' sin' = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $ \p -> US.pixman_f_transform_init_rotate p (CDouble cos') (CDouble sin')

  transformFromScale sx sy = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $ \p -> US.pixman_f_transform_init_scale p (CDouble sx) (CDouble sy)

  transformFromTranslation tx ty = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $ \p -> US.pixman_f_transform_init_translate p (CDouble tx) (CDouble ty)

  transformInvert x = unsafePerformIO $
    withConstPtr x $ \src ->
    withNewForeignPtr (pure . FTransform) $ \dst ->
    throwPixmanUnless1 "f_transform_invert" $ US.pixman_f_transform_invert dst src

  transformBounds trans bounds = unsafePerformIO $
    withConstPtr trans $ \transP ->
    with bounds $ \boundsP -> do
      throwPixmanUnless1 "f_transform_bounds" $ US.pixman_f_transform_bounds transP (coerce boundsP)
      peek boundsP

  transformMultiply l r = unsafePerformIO $
    withConstPtr l $ \lc ->
    withConstPtr r $ \rc ->
    withNewForeignPtr (pure . FTransform) $ \dst ->
      US.pixman_f_transform_multiply dst lc rc

  transformScale sx sy rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . FTransform) at $ \t ->
      throwPixmanUnless1 "f_transform_scale" $
        if rev
           then US.pixman_f_transform_scale nullPtr t (CDouble sx) (CDouble sy)
           else US.pixman_f_transform_scale t nullPtr (CDouble sx) (CDouble sy)

  transformTranslate sx sy rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . FTransform) at $ \t ->
      throwPixmanUnless1 "f_transform_translate" $
        if rev
           then US.pixman_f_transform_translate nullPtr t (CDouble sx) (CDouble sy)
           else US.pixman_f_transform_translate t nullPtr (CDouble sx) (CDouble sy)

  transformRotate rev c s at = unsafePerformIO $
    withNewForeignPtrCopy (pure . FTransform) at $ \t ->
      throwPixmanUnless1 "f_transform_rotate" $
        if rev
           then US.pixman_f_transform_rotate nullPtr t (coerce c) (coerce s)
           else US.pixman_f_transform_rotate t nullPtr (coerce c) (coerce s)

  transformPoint at vec = unsafePerformIO $
    withConstPtr at $ \t ->
    with vec $ \v -> do
      throwPixmanUnless1 "f_transform_point" $ US.pixman_f_transform_point t (coerce v)
      peek v

  transformPoint3D at vec = unsafePerformIO $
    withConstPtr at $ \t ->
    with vec $ \v -> do
      US.pixman_f_transform_point_3d t (coerce v)
      peek v

fromFTransform :: FTransform -> Transform
fromFTransform ft = unsafePerformIO $
  withConstPtr ft $ \ftC ->
  withNewForeignPtr (pure . Transform) $ \p ->
    throwPixmanUnless1 "transform_from_f_transform" $ US.pixman_transform_from_pixman_f_transform p ftC

fromTransform :: Transform -> FTransform
fromTransform t = unsafePerformIO $
  withConstPtr t $ \tC ->
  withNewForeignPtr (pure . FTransform) $ \p ->
    US.pixman_f_transform_from_pixman_transform p tC

-- | Whether the transform represents an identity transform.
transformIsIdentity :: Transform -> Bool
transformIsIdentity ta = unsafePerformIO $
  withConstPtr ta $ fmap fromPixmanBool . US.pixman_transform_is_identity

-- | Whether the transform contains a scale transform.
transformIsScale :: Transform -> Bool
transformIsScale ta = unsafePerformIO $
  withConstPtr ta $ fmap fromPixmanBool . US.pixman_transform_is_scale

transformIsIntTranslate :: Transform -> Bool
transformIsIntTranslate ta = unsafePerformIO $
  withConstPtr ta $ fmap fromPixmanBool . US.pixman_transform_is_int_translate

-- | Whether the transform represents an inverse transform.
transformIsInverse :: Transform -> Transform -> Bool
transformIsInverse at bt = unsafePerformIO $
  withConstPtr at $ \a ->
  withConstPtr bt $ fmap fromPixmanBool . US.pixman_transform_is_inverse a

-- * Regions

class IsRegion a where

  -- | Initialize a new region.
  emptyRegion :: a

  -- | Initialize the region from the provided box
  regionFromRect :: XY Int32 -> Size2D Word32 -> a

  -- | Initialize the region from the provided boxes
  regionFromRects :: [RBox a] -> a

  -- | Initialize the region from the provided extents
  regionFromExtents :: RBox a -> a

  -- | Convert bitmap clip mask into clipping region.
  regionFromImage :: Image -> a

  -- | Is the region empty
  regionIsEmpty :: a -> Bool

  -- | Region's extents
  regionExtents :: a -> RBox a

  -- | Number of rectangles in the region.
  regionNumRects :: a -> Int

  -- | N rectangles in the region.
  regionRectangles :: Int -> a -> [RBox a]

  -- | Take a region and a box and return a region that is everything in the box but not in the region.
  regionInverse :: RBox a -> a -> a

  regionContainsPoint :: XY Int32 -> RBox a -> a -> Bool

  regionContainsRectangle :: RBox a -> a -> RegionOverlap

  -- | Region equality
  regionEqual :: a -> a -> Bool

  -- | Translate the region by specified amount
  regionTranslate :: XY Int32 -> a -> a

  -- | Intersect regions
  regionIntersect :: a -> a -> a

  -- | Subtract regions
  regionSubtract :: a -> a -> a

  -- | Union regions
  regionUnion :: a -> a -> a

  -- | Create union between a region and provided rect
  regionUnionRect :: XY Int32 -> Size2D Word32 -> a -> a

  -- | Intersect region with a rect.
  regionIntersectRect :: XY Int32 -> Size2D Word32 -> a -> a


instance IsRegion Region16 where

  emptyRegion = unsafePerformIO $ withNewForeignPtr mkRegion16 US.pixman_region_init
  {-# NOINLINE emptyRegion #-}

  regionFromRect (x, y) (w, h) = unsafePerformIO $
    withNewForeignPtr mkRegion16 $ \p ->
      US.pixman_region_init_rect p (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionFromRects boxes = unsafePerformIO $
    withArrayLen (coerce boxes) $ \len boxesP ->
    withNewForeignPtr mkRegion16 $ \p ->
    throwPixmanUnless1 "region_init_rects" $
      US.pixman_region_init_rects p (ConstPtr boxesP) (fromIntegral len)

  regionFromExtents (Box16 extents) = unsafePerformIO $
    withNewForeignPtr mkRegion16 $ \p ->
    with extents $ US.pixman_region_init_with_extents p . ConstPtr

  regionFromImage img = unsafePerformIO $
    withNewForeignPtr mkRegion16 $ \p ->
    withPtr img $ US.pixman_region_init_from_image p

  regionIsEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region_empty

  regionExtents reg = unsafePerformIO $ fmap Box16 $ withConstPtr reg US.pixman_region_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region_n_rects

  regionInverse (Box16 box) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion16 $ \p ->
    throwPixmanUnless1 "region_inverse" $
    with box $ US.pixman_region_inverse p reg' . ConstPtr

  regionContainsPoint (x, y) (Box16 box) reg = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg $ \reg' ->
    with box $ US.pixman_region_contains_point reg' (fromIntegral x) (fromIntegral y)

  regionContainsRectangle (Box16 box) reg = unsafePerformIO $
    fmap RegionOverlap $
    withConstPtr reg $ \reg' ->
    with box $ US.pixman_region_contains_rectangle reg' . ConstPtr

  regionRectangles n reg = unsafePerformIO $
    fmap coerce $
    withConstPtr reg $ \reg' ->
    with (fromIntegral n) $ US.pixman_region_rectangles reg' >=> peekArray n

  regionEqual reg1 reg2 = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $
      US.pixman_region_equal reg1'

  regionTranslate (x, y) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion16 $ \p -> do
      throwPixmanUnless1 "region_copy" $ US.pixman_region_copy p reg'
      US.pixman_region_translate p (fromIntegral x) (fromIntegral y)

  regionIntersect reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion16 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_intersect" $
      US.pixman_region_intersect p reg1' reg2'

  regionSubtract reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion16 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_subtract" $
      US.pixman_region_subtract p reg1' reg2'

  regionUnion reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion16 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_union" $
      US.pixman_region_union p reg1' reg2'

  regionUnionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion16 $ \p ->
    throwPixmanUnless1 "region_union_rect" $
      US.pixman_region_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionIntersectRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion16 $ \p ->
    throwPixmanUnless1 "region_intersect_rect" $
      US.pixman_region_intersect_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

instance IsRegion Region32 where

  emptyRegion = unsafePerformIO $ withNewForeignPtr mkRegion32 US.pixman_region32_init
  {-# NOINLINE emptyRegion #-}

  regionFromRect (x, y) (w, h) = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
      US.pixman_region32_init_rect p (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionFromRects boxes = unsafePerformIO $
    withArrayLen (coerce boxes) $ \len boxesP ->
    withNewForeignPtr mkRegion32 $ \p ->
    throwPixmanUnless1 "region32_init_rects" $
      US.pixman_region32_init_rects p (ConstPtr boxesP) (fromIntegral len)

  regionFromExtents (Box32 extents) = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    with extents $ US.pixman_region32_init_with_extents p . ConstPtr

  regionFromImage img = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    withPtr img $ US.pixman_region32_init_from_image p

  regionIsEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region32_empty

  regionExtents reg = unsafePerformIO $ fmap Box32 $ withConstPtr reg US.pixman_region32_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region32_n_rects

  regionInverse (Box32 box) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion32 $ \p ->
    with box $
    throwPixmanUnless1 "region32_inverse" .
      US.pixman_region32_inverse p reg' . ConstPtr

  regionContainsPoint (x, y) (Box32 box) reg = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region32_contains_point reg' (fromIntegral x) (fromIntegral y)

  regionContainsRectangle (Box32 box) reg = unsafePerformIO $
    fmap RegionOverlap $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region32_contains_rectangle reg' . ConstPtr

  regionRectangles n reg = unsafePerformIO $
    fmap coerce $
    withConstPtr reg $ \reg' ->
    with (fromIntegral n) $
      US.pixman_region32_rectangles reg' >=> peekArray n

  regionEqual reg1 reg2 = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $
      US.pixman_region32_equal reg1'

  regionTranslate (x, y) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion32 $ \p -> do
      throwPixmanUnless1 "region32_copy" $ US.pixman_region32_copy p reg'
      US.pixman_region32_translate p (fromIntegral x) (fromIntegral y)

  regionIntersect reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region32_intersect" $
      US.pixman_region32_intersect p reg1' reg2'

  regionSubtract reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region32_subtract" $
      US.pixman_region32_subtract p reg1' reg2'

  regionUnion reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region32_union" $
      US.pixman_region32_union p reg1' reg2'

  regionUnionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion32 $ \p ->
    throwPixmanUnless1 "region32_union_rect" $
      US.pixman_region32_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionIntersectRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion32 $ \p ->
    throwPixmanUnless1 "region32_intersect_rect" $
      US.pixman_region32_intersect_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

instance IsRegion Region64F where

  emptyRegion = unsafePerformIO $ withNewForeignPtr mkRegion64F US.pixman_region64f_init
  {-# NOINLINE emptyRegion #-}

  regionFromRect (x, y) (w, h) = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
      US.pixman_region64f_init_rect p (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionFromRects boxes = unsafePerformIO $
    withArrayLen (coerce boxes) $ \len boxesP ->
    withNewForeignPtr mkRegion64F $ \p ->
    throwPixmanUnless1 "region64f_init_rects" $
      US.pixman_region64f_init_rects p (ConstPtr boxesP) (fromIntegral len)

  regionFromExtents (Box64F extents) = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    with extents $ US.pixman_region64f_init_with_extents p . ConstPtr

  regionFromImage img = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    withPtr img $ US.pixman_region64f_init_from_image p

  regionIsEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region64f_empty

  regionExtents reg = unsafePerformIO $ fmap Box64F $ withConstPtr reg US.pixman_region64f_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region64f_n_rects

  regionInverse (Box64F box) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion64F $ \p ->
    with box $
    throwPixmanUnless1 "region64f_inverse" .
      US.pixman_region64f_inverse p reg' . ConstPtr

  regionContainsPoint (x, y) (Box64F box) reg = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region64f_contains_point reg' (fromIntegral x) (fromIntegral y)

  regionContainsRectangle (Box64F box) reg = unsafePerformIO $
    fmap RegionOverlap $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region64f_contains_rectangle reg' . ConstPtr

  regionRectangles n reg = unsafePerformIO $
    fmap coerce $
    withConstPtr reg $ \reg' ->
    with (fromIntegral n) $
      US.pixman_region64f_rectangles reg' >=> peekArray n

  regionEqual reg1 reg2 = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $
      US.pixman_region64f_equal reg1'

  regionTranslate (x, y) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion64F $ \p -> do
      throwPixmanUnless1 "region64f_copy" $ US.pixman_region64f_copy p reg'
      US.pixman_region64f_translate p (fromIntegral x) (fromIntegral y)

  regionIntersect reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region64f_intersect" $
      US.pixman_region64f_intersect p reg1' reg2'

  regionSubtract reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region64f_subtract" $
      US.pixman_region64f_subtract p reg1' reg2'

  regionUnion reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region64f_union" $
      US.pixman_region64f_union p reg1' reg2'

  regionUnionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion64F $ \p ->
    throwPixmanUnless1 "region64f_union_rect" $
      US.pixman_region64f_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionIntersectRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion64F $ \p ->
    throwPixmanUnless1 "region64f_intersect_rect" $
      US.pixman_region64f_intersect_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

mkRegion16 :: ForeignPtr G.Pixman_region16_t -> IO Region16
mkRegion16 fp = do
  addForeignPtrFinalizer FP.pixman_region_fini fp
  return (Region16 fp)

mkRegion32 :: ForeignPtr G.Pixman_region32_t -> IO Region32
mkRegion32 fp = do
  addForeignPtrFinalizer FP.pixman_region32_fini fp
  return (Region32 fp)

mkRegion64F :: ForeignPtr G.Pixman_region64f_t -> IO Region64F
mkRegion64F fp = do
  addForeignPtrFinalizer FP.pixman_region64f_fini fp
  return (Region64F fp)
{-# INLINE mkRegion64F #-}
{-# INLINE mkRegion32 #-}
{-# INLINE mkRegion16 #-}

-- ** Floating point region functions

-- | Initialize the region from floating-point box.
regionFromRectF :: XY Double -> Size2D Double -> Region64F
regionFromRectF (x, y) (w, h) = unsafePerformIO $
  withNewForeignPtr mkRegion64F $ \p ->
    US.pixman_region64f_init_rectf p (coerce x) (coerce y) (coerce w) (coerce h)

regionTranslateF :: XY Double -> Region64F -> Region64F
regionTranslateF (x, y) reg = unsafePerformIO $
  withConstPtr reg $ \reg' ->
  withNewForeignPtr mkRegion64F $ \p -> do
    throwPixmanUnless1 "region64f_copy" $ US.pixman_region64f_copy p reg'
    US.pixman_region64f_translatef p (CDouble x) (CDouble y)

-- | Intersect regions
regionUnionRectF :: XY Double -> Size2D Double -> Region64F -> Region64F
regionUnionRectF (x, y) (w, h) reg = unsafePerformIO $
  withConstPtr reg $ \reg' ->
  withNewForeignPtr mkRegion64F $ \p ->
    throwPixmanUnless1 "region64f_union_rectf" $
      US.pixman_region64f_union_rectf p reg' (coerce x) (coerce y) (coerce w) (coerce h)

-- | Intersect regions
regionIntersectRectF :: XY Double -> Size2D Double -> Region64F -> Region64F
regionIntersectRectF (x, y) (w, h) reg = unsafePerformIO $
  withConstPtr reg $ \reg' ->
  withNewForeignPtr mkRegion64F $ \p ->
    throwPixmanUnless1 "region64f_intersect_rectf" $
      US.pixman_region64f_intersect_rectf p reg' (coerce x) (coerce y) (coerce w) (coerce h)

regionContainsPointF :: XY Double -> RBox Region64F -> Region64F -> Bool
regionContainsPointF (x, y) (Box64F box) reg = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg $ \reg' ->
    with box $ US.pixman_region64f_contains_pointf reg' (coerce x) (coerce y)

-- * Boxes

class IsBox a where

  type BElem a :: Type

  -- | @mkBox (x1, y1) (x2, y2)@
  mkBox :: XY (BElem a) -> XY (BElem a) -> a

instance IsBox Box16 where
  type BElem Box16 = Int16
  mkBox (x1, y1) (x2, y2) = box16 x1 y1 x2 y2

instance IsBox Box32 where
  type BElem Box32 = Int32
  mkBox (x1, y1) (x2, y2) = box32 x1 y1 x2 y2

instance IsBox Box64F where
  type BElem Box64F = Double
  mkBox (x1, y1) (x2, y2) = box64F x1 y1 x2 y2

-- | @box16 x1 y1 x2 y2@
box16 :: Int16 -> Int16 -> Int16 -> Int16 -> Box16
box16 x1 y1 x2 y2 = Box16 $! G.Pixman_box16_t $! G.Pixman_box16 x1 y1 x2 y2

-- | @box32 x1 y1 x2 y2@
box32 :: Int32 -> Int32 -> Int32 -> Int32 -> Box32
box32 x1 y1 x2 y2 = Box32 $! G.Pixman_box32_t x1 y1 x2 y2

-- | @box64F x1 y1 x2 y2@
box64F :: Double -> Double -> Double -> Double -> Box64F
box64F x1 y1 x2 y2 = Box64F $! G.Pixman_box64f_t (coerce x1) (coerce y1) (coerce x2) (coerce y2)

-- * Rectangles

class IsRectangle a where

  type RPos  a :: Type
  type RSize a :: Type

  mkRectangle :: XY (RPos a) -> Size2D (RSize a) -> a

instance IsRectangle Rectangle16 where
  type RPos Rectangle16 = Int16
  type RSize Rectangle16 = Word16
  mkRectangle (x, y) (w, h) = rectangle16 x y w h

instance IsRectangle Rectangle32 where
  type RPos Rectangle32 = Int32
  type RSize Rectangle32 = Word32
  mkRectangle (x, y) (w, h) = rectangle32 x y w h

instance IsRectangle Rectangle64F where
  type RPos Rectangle64F = Double
  type RSize Rectangle64F = Double
  mkRectangle (x, y) (w, h) = rectangle64F x y w h

-- | @rectangle16 x y w h@
rectangle16 :: Int16 -> Int16 -> Word16 -> Word16 -> Rectangle16
rectangle16 x y w h = Rectangle16 $! G.Pixman_rectangle16_t x y w h

-- | @rectangle32 x y w h@
rectangle32 :: Int32 -> Int32 -> Word32 -> Word32 -> Rectangle32
rectangle32 x y w h = Rectangle32 $! G.Pixman_rectangle32_t x y w h

-- | @rectangle64F x y w h@
rectangle64F :: Double -> Double -> Double -> Double -> Rectangle64F
rectangle64F x y w h =  Rectangle64F $! G.Pixman_rectangle64f_t (coerce x) (coerce y) (coerce w) (coerce h)

-- * Functions

-- | Blit the src into the dst with the specified values
blt :: (Ptr Word32, Int, Int, XY Int) -- ^ src (bits, stride, bpp, (x, y))
    -> (Ptr Word32, Int, Int, XY Int) -- ^ dest (bits, stride, bpp, (x, y))
    -> (Int, Int) -- ^ (width, height)
    -> IO ()
blt (src, s_stride, s_bpp, (s_x, s_y)) (dst, d_stride, d_bpp, (d_x, d_y)) (w, h) =
    throwPixmanUnless1 "blt" $ US.pixman_blt src dst
      (fromIntegral s_stride) (fromIntegral d_stride)
      (fromIntegral s_bpp) (fromIntegral d_bpp)
      (fromIntegral s_x) (fromIntegral s_y)
      (fromIntegral d_x) (fromIntegral d_y)
      (fromIntegral w) (fromIntegral h)

-- | Fill the provided bits with the provided values
fill :: (Ptr Word32, Int, Int, XY Int) -- ^ bits, stride, bpp, (x, y)
     -> (Int, Int) -- ^ width, height
     -> Word32 -- ^ Filler
     -> IO ()
fill (bits, stride, bpp, (x, y)) (w, h) filler =
    throwPixmanUnless1 "fill" $ US.pixman_fill bits (fromIntegral stride)
      (fromIntegral bpp)
      (fromIntegral x) (fromIntegral y)
      (fromIntegral w) (fromIntegral h)
      filler

-- | @getMinStride format width@
getMinStride :: FormatCode -> Int -> Int
getMinStride fmt width =
  case formatBPP fmt of
    24 -> width * 3
    bpp -> ((width * bpp + 31) `div` 32) * 4

-- * Utilities

throwPixmanUnless1 :: String -> IO G.Pixman_bool_t -> IO ()
throwPixmanUnless1 msg m = do
  r <- m
  when (r /= 1) $ throwIO $ PixmanException msg

throwPixmanIfNull :: String -> IO (Ptr a) -> IO (Ptr a)
throwPixmanIfNull msg m = do
  r <- m
  when (r == nullPtr) $ throwIO $ PixmanException msg
  return r

withNewForeignPtr :: Storable a
                  => (ForeignPtr a -> IO b)
                  -> (Ptr a -> IO ())
                  -> IO b
withNewForeignPtr f g = do
  fp <- mallocForeignPtr
  withForeignPtr fp g
  f fp

withNewForeignPtrCopy :: (Storable a, HasField "unwrap" a1 (ForeignPtr a))
                  => (ForeignPtr a -> IO b)
                  -> a1
                  -> (Ptr a -> IO ())
                  -> IO b
withNewForeignPtrCopy f x g = withNewForeignPtr f $ \p -> do
  poke p =<< withPtr x peek
  g p

withPtr :: HasField "unwrap" r (ForeignPtr a) => r -> (Ptr a -> IO b) -> IO b
withPtr x = withForeignPtr (getField @"unwrap" x)

withImagePtr :: _ => r -> _ -> _
withImagePtr x f = toImage x >>= flip withPtr f

withConstPtr :: HasField "unwrap" r (ForeignPtr a) => r -> (ConstPtr a -> IO b) -> IO b
withConstPtr x f = withForeignPtr (getField @"unwrap" x) $ f . ConstPtr

fromPixmanBool :: G.Pixman_bool_t -> Bool
fromPixmanBool x = getField @"unwrap" x == 1

toPixmanBool :: Bool -> G.Pixman_bool_t
toPixmanBool b = if b then 1 else 0

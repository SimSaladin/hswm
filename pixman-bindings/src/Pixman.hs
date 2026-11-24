{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-missing-pattern-synonym-signatures #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-partial-type-signatures #-}

-- |
-- Module      : Pixman
-- Description : Higher-level Pixman API
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Pixman (
  -- * Fixed (fixed-point)
  Fixed,
  fixed2Int,
  int2Fixed,
  fixed2Double,
  double2Fixed,

  -- * Color
  Color,
  IsColor (..),

  -- * Size, Position, Point
  SizeScalar,
  PositionScalar,
  Size,
  Position,
  Point (..),

  -- * Box
  Box16,
  Box32,
  Box64F,
  Box,
  IsBox (..),

  -- * Rectangle
  Rectangle16,
  Rectangle32,
  Rectangle64F,
  Rectangle,
  IsRectangle (..),

  -- * Vector
  IsVector (..),
  Vector,

  -- * Region
  RegionType (..),
  Region (..),
  Region16,
  Region32,
  Region64F,
  IsRegion (..),
  translateRegionF,
  regionFromRectF,
  unionRegionRectF,
  intersectRegionRectF,
  containsPointF,
  Overlap (RegionOut, RegionIn, RegionPart),

  -- * Transform
  Transform,
  FTransform,
  IsTransform (..),

  -- ** Conversions
  fromFTransform,
  fromTransform,

  -- ** Predicates
  isIdentity,
  isScale,
  isInverse,
  isIntTranslate,

  -- * Image
  IsImage (..),

  -- ** Untyped
  Image,
  newEmptyImage,
  newImageWithBits,

  -- ** Typed
  TypedImage,
  newEmptyTypedImage,
  newTypedImageWithBits,
  imageToTypedImage,

  -- ** Solid
  Solid,
  solidFillImage,

  -- ** Gradient
  Gradient,
  newLinearGradient,
  newRadialGradient,
  newConicalGradient,
  gradientStop,
  GradientStop,

  -- ** Set properties
  setRepeat,
  Repeat (RepeatNone, RepeatNormal, RepeatPad, RepeatReflect),
  setDither,
  Dither (DitherNone, DitherFast, DitherGood, DitherBest, OrderedBayer8, OrderedBlueNoise64),
  setSourceClipping,
  setAlphaMap,
  clearAlphaMap,
  setComponentAlpha,
  setTransform,
  clearTransform,
  setFilter,
  Filter (FilterFast, FilterGood, FilterBest, Nearest, Bilinear, Convolution, SeparableConvolution),
  separableConvolutionParams,
  SeparableConvolutionSettings (..),
  setFilterSeparableConvolution,
  Kernel (
    KernelImpulse,
    KernelBox,
    KernelLinear,
    KernelCubic,
    KernelGaussian,
    KernelLanczos2,
    KernelLanczos3,
    KernelLanczos3Stretched
  ),
  setClipRegion,
  setHasClientClip,
  setIndexed,
  Indexed,

  -- ** Fill Image (Boxes \/ Rectangles)
  fill,
  fillBoxes,
  fillRectangles,

  -- ** Add shapes
  addTriangles,
  addTraps,
  addTrapezoids,
  triangle,
  trapezoid,
  Triangle (..),
  Trapezoid (..),
  Trap (..),
  SpanFix (..),
  Line (..),

  -- * Edge
  Edge,
  newEdge,
  fromLine,
  stepEdge,

  -- * Composite
  setComposite,
  CompositeParameters (..),
  compositeSize,
  compositeMask,
  compositeSrcPos,
  compositeMaskPos,
  compositeDestPos,
  compositeTrapezoids,
  compositeTriangles,
  Operation,
  OP (..),
  REVERSE (..),

  -- * Functions
  blit,
  PaintTarget,
  computeCompositeRegion,
  getMinStride,
  sampleCeilY,
  sampleFloorY,

  -- * Formats
  ImageFormat (..),
  FormatCode,
  rawFormatCode,

  -- ** Functions
  formatColor,
  formatBPP,
  formatDepth,
  formatType,
  FormatType (..),
  -- FormatType (A, ARGB, ABGR, ColorType, Gray, YUY2Type, YV12Type, BGRA, RGBA, ARGBsRGB, RGBAFloatFormat, OtherType),
  formatSupportedDest,
  formatSupportedSource,
  allFormats,

  -- ** 128bpp
  pattern RGBAFloat,

  -- ** 96bpp
  pattern RGBFloat,

  -- ** 64bpp
  pattern A16B16G16R16,

  -- ** 32bpp
  pattern A8R8G8B8,
  pattern X8R8G8B8,
  pattern A8B8G8R8,
  pattern X8B8G8R8,
  pattern B8G8R8A8,
  pattern B8G8R8X8,
  pattern R8G8B8A8,
  pattern R8G8B8X8,
  pattern X14R6G6B6,
  pattern X2R10G10B10,
  pattern A2R10G10B10,
  pattern X2B10G10R10,
  pattern A2B10G10R10,

  -- ** sRGB
  pattern A8R8G8B8_sRGB,
  pattern R8G8B8_sRGB,

  -- ** 24bpp
  pattern R8G8B8,
  pattern B8G8R8,

  -- ** 16bpp
  pattern R5G6B5,
  pattern B5G6R5,
  pattern A1R5G5B5,
  pattern X1R5G5B5,
  pattern A1B5G5R5,
  pattern X1B5G5R5,
  pattern A4R4G4B4,
  pattern X4R4G4B4,
  pattern A4B4G4R4,
  pattern X4B4G4R4,

  -- ** 8bpp
  pattern A8,
  pattern R3G3B2,
  pattern B2G3R3,
  pattern A2R2G2B2,
  pattern A2B2G2R2,
  pattern C8,
  pattern G8,
  pattern X4A4,
  pattern X4C4,
  pattern X4G4,

  -- ** 4bpp
  pattern A4,
  pattern R1G2B1,
  pattern B1G2R1,
  pattern A1R1G1B1,
  pattern A1B1G1R1,
  pattern C4,
  pattern G4,

  -- ** 1bpp
  pattern A1,
  pattern G1,

  -- ** YUV
  pattern YUY2,
  pattern YV12,

  -- * Exceptions
  PixmanException (..),

  -- * TODO
  rasterizeEdges,
  rasterizeTrapezoid,

  -- * Re-exports
  def,
  Int32,
) where

import Pixman.Generated qualified as G
import Pixman.Generated.FunPtr qualified as FP
import Pixman.Generated.Unsafe qualified as US

import HsBindgen.Runtime.CEnum qualified as CE
import HsBindgen.Runtime.ConstantArray qualified as CA
import HsBindgen.Runtime.Prelude qualified as RIP

import Control.DeepSeq
import Control.Exception
import Control.Monad
import Control.Monad.Primitive
import Data.Char qualified as C
import Data.Coerce
import Data.Default
import Data.Fixed qualified as Fixed
import Data.Kind (Type)
import Data.Typeable
import Data.Void
import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import GHC.Float
import GHC.Generics
import GHC.Records
import GHC.Stack
import Numeric (readHex)
import System.IO.Unsafe
import Text.Printf
import Text.Read (Read (..))

-- * Types

-- | Position @(x, y)@
type Position a = (a, a)

-- | Size `(width, height)`
type Size a = (a, a)

type family PositionScalar (a :: k) :: Type

type family SizeScalar (a :: k) :: Type

type data RegionType = R16 | R32 | R64F

type instance PositionScalar R16 = Int16
type instance PositionScalar R32 = Int32
type instance PositionScalar R64F = Double
type instance SizeScalar R16 = Word16
type instance SizeScalar R32 = Word32
type instance SizeScalar R64F = Double

type instance PositionScalar (Box a) = PositionScalar a
type instance PositionScalar (Rectangle a) = PositionScalar a
type instance SizeScalar (Rectangle a) = SizeScalar a

newtype PixmanException = PixmanException String
  deriving (Eq, Ord, Show)

instance Exception PixmanException

-- | A 16.16 fixed-point (represented as @uint32_t@).
newtype Fixed = Fixed {unwrap :: G.Pixman_fixed_t}
  deriving stock (Eq, Generic)
  deriving newtype (Ord, Bits, FiniteBits, Storable, RIP.ReadRaw, RIP.WriteRaw, RIP.StaticSize)

-- | Get the int value of this fixed point.
fixed2Int :: (Integral a) => Fixed -> a
fixed2Int f = fromIntegral $ (coerce f :: Int32) .>>. 16

-- | Initialize fixed point value with an integer.
int2Fixed :: (Integral a) => a -> Fixed
int2Fixed i = coerce $ (fromIntegral i :: Int32) .<<. 16

-- | Get the float value of this fixed point.
fixed2Double :: Fixed -> Double
fixed2Double f = fromIntegral (coerce f :: Int32) / fromIntegral (coerce $ int2Fixed (1 :: Int) :: Int32)

-- | Initialize fixed point value with a float value.
double2Fixed :: Double -> Fixed
double2Fixed d = coerce @Int32 $ fromIntegral $ double2Int $ d * 65536.0

instance NFData Fixed where
  rnf f = rnf (coerce f :: Int32)

instance Bounded Fixed where
  minBound = coerce (minBound :: Int32)
  maxBound = coerce (maxBound :: Int32)

instance Show Fixed where
  show f = Fixed.showFixed True (Fixed.MkFixed $ fromIntegral (coerce f :: Int32) :: Fixed.Fixed 65536)

instance Read Fixed where
  readPrec = realToFrac <$> (readPrec @(Fixed.Fixed 65536))

instance PrintfArg Fixed where
  formatArg a _ = shows a

instance Num Fixed where
  fromInteger = int2Fixed
  signum f = int2Fixed $ signum (coerce f :: Int32)
  abs f = coerce $ abs (coerce f :: Int32)
  negate f = coerce $ negate (coerce f :: Int32)
  a - b = coerce (coerce a - coerce b :: Int32)
  a + b = coerce (coerce a + coerce b :: Int32)
  a * b = coerce $ fromIntegral @Int64 @Int32 $ (fromIntegral (coerce a :: Int32) * fromIntegral (coerce b :: Int32)) `div` 65536

instance Fractional Fixed where
  a / b = coerce $ fromIntegral @Int64 @Int32 $ (fromIntegral (coerce a :: Int32) * 65536) `div` fromIntegral (coerce b :: Int32)
  recip f = coerce $ fromIntegral @Int64 @Int32 $ (65536 * 65536) `div` fromIntegral (coerce f :: Int32)
  fromRational r = coerce @Int32 $ round (r * 65536)

instance Real Fixed where
  toRational f = toRational (coerce f :: Int32) / 65536

instance Fixed.HasResolution Fixed where
  resolution _ = 65536

-- |
-- @Point Fixed@ == @pixman_point_fixed_t@
data Point a = Point {x, y :: !a}
  deriving stock (Eq, Ord, Generic)

instance (Show a) => Show (Point a) where
  show Point{..} = show (x, y)

-- | Same layout as @pixman_point_fixed_t@
instance Storable (Point Fixed) where
  sizeOf _ = sizeOf @G.Pixman_point_fixed_t undefined
  alignment _ = alignment @G.Pixman_point_fixed_t undefined
  peek p = do
    G.Pixman_point_fixed_t{..} <- peek (castPtr p)
    return $! coerce Point{x, y}
  poke p Point{..} = poke (castPtr p) G.Pixman_point_fixed_t{x = coerce x, y = coerce y}

type Indexed = G.Pixman_indexed_t

-- | A triangle
data Triangle = Triangle {p1, p2, p3 :: !(Point Fixed)}
  deriving stock (Eq, Generic)

instance Show Triangle where
  show Triangle{..} = "Triangle{" ++ show p1 ++ "," ++ show p2 ++ "," ++ show p3 ++ "}"

instance Storable Triangle where
  sizeOf _ = sizeOf @G.Pixman_triangle_t undefined
  alignment _ = alignment @G.Pixman_triangle_t undefined
  peek p = do
    G.Pixman_triangle_t{..} <- peek (castPtr p)
    return $! Triangle{p1 = toPoint p1, p2 = toPoint p2, p3 = toPoint p3}
  poke p Triangle{..} = poke (castPtr p) G.Pixman_triangle_t{p1 = fromPoint p1, p2 = fromPoint p2, p3 = fromPoint p3}

fromPoint :: Point Fixed -> G.Pixman_point_fixed_t
fromPoint Point{..} = G.Pixman_point_fixed_t{x = coerce x, y = coerce y}
toPoint :: G.Pixman_point_fixed_t -> Point Fixed
toPoint G.Pixman_point_fixed_t{..} = Point{x = coerce x, y = coerce y}

unLine :: Line Fixed -> G.Pixman_line_fixed_t
unLine Line{..} = G.Pixman_line_fixed_t{p1 = fromPoint p1, p2 = fromPoint p2}
toLine :: G.Pixman_line_fixed_t -> Line Fixed
toLine G.Pixman_line_fixed_t{..} = Line{p1 = toPoint p1, p2 = toPoint p2}

fromSpanFix :: SpanFix -> G.Pixman_span_fix_t
fromSpanFix SpanFix{..} = G.Pixman_span_fix_t{l = coerce l, r = coerce r, y = coerce y}
toSpanFix :: G.Pixman_span_fix_t -> SpanFix
toSpanFix G.Pixman_span_fix_t{..} = SpanFix{l = coerce l, r = coerce r, y = coerce y}

-- | A single trap
data Trap = Trap {top, bot :: !SpanFix}

instance Storable Trap where
  sizeOf _ = sizeOf @G.Pixman_trap_t undefined
  alignment _ = alignment @G.Pixman_trap_t undefined
  peek p = do
    G.Pixman_trap_t{..} <- peek (castPtr p)
    return $! Trap{top = toSpanFix top, bot = toSpanFix bot}
  poke p Trap{..} = poke (castPtr p) G.Pixman_trap_t{top = fromSpanFix top, bot = fromSpanFix bot}

data SpanFix = SpanFix {l, r, y :: !Fixed}

-- | A trapezoid
data Trapezoid = Trapezoid
  { top, bottom :: !Fixed
  , left, right :: !(Line Fixed)
  }
  deriving stock (Eq, Generic)

instance Storable Trapezoid where
  sizeOf _ = sizeOf @G.Pixman_trapezoid_t undefined
  alignment _ = alignment @G.Pixman_trapezoid_t undefined
  peek p = do
    G.Pixman_trapezoid_t{..} <- peek (castPtr p)
    return $! Trapezoid{top = coerce top, bottom = coerce bottom, left = toLine left, right = toLine right}
  poke p Trapezoid{..} = poke (castPtr p) G.Pixman_trapezoid_t{top = coerce top, bottom = coerce bottom, left = unLine left, right = unLine right}

-- | A line consists of two 'Point's.
data Line a = Line {p1, p2 :: !(Point a)}
  deriving stock (Eq, Generic)

triangle :: Point Fixed -> Point Fixed -> Point Fixed -> Triangle
triangle = Triangle

-- | @trapezoid top bottom left right@
trapezoid :: Fixed -> Fixed -> Line Fixed -> Line Fixed -> Trapezoid
trapezoid = Trapezoid

data family Region (a :: RegionType) :: Type

newtype instance Region R16 = Region16 {unwrap :: ForeignPtr G.Pixman_region16_t}
  deriving stock (Ord, Generic)
newtype instance Region R32 = Region32 {unwrap :: ForeignPtr G.Pixman_region32_t}
  deriving stock (Ord, Generic)
newtype instance Region R64F = Region64F {unwrap :: ForeignPtr G.Pixman_region64f_t}
  deriving stock (Ord, Generic)

---- | 16-bit region
type Region16 = Region R16

---- | 32-bit region
type Region32 = Region R32

---- | 64-bit (floating-point) region
type Region64F = Region R64F

instance (Typeable a, IsRegion (Region a)) => Show (Region a) where
  show reg = printf "Region[%s]{extents=%s, numRects=%d, rects=%s}" (show $ typeRep (Proxy @a)) (show ext) numRects (show rects)
    where
      ext = extents reg
      rects = rectangles reg
      numRects = regionNumRects reg

instance (IsRegion (Region a)) => Eq (Region a) where
  (==) = eqRegion

-- | Fixed-point transform.
--
-- @pixman_fixed_t  matrix[3][3];@
newtype Transform = Transform {unwrap :: ForeignPtr G.Pixman_transform}
  deriving stock (Generic)

-- | Floating-point transform.
--
-- @double[3][3]@
newtype FTransform = FTransform {unwrap :: ForeignPtr G.Pixman_f_transform}
  deriving stock (Generic)

instance Eq Transform where
  t1 == t2 = transformMatrix t1 == transformMatrix t2

instance Eq FTransform where
  t1 == t2 = transformMatrix t1 == transformMatrix t2

instance Show Transform where
  show tr =
    case map (map Fixed . CA.toList) $ CA.toList mat of
      [r1, r2, r3] ->
        "Transform{"
          ++ show r1
          ++ "\n"
          ++ "          "
          ++ show r2
          ++ "\n"
          ++ "          "
          ++ show r3
          ++ "}"
      _ -> error "Transform: unexpected number of rows"
    where
      G.Pixman_transform mat = unsafePerformIO (withPtr tr peek)

instance Show FTransform where
  show tr =
    case map CA.toList $ CA.toList mat of
      [r1, r2, r3] ->
        "Transform[F]{"
          ++ show r1
          ++ "\n"
          ++ "             "
          ++ show r2
          ++ "\n"
          ++ "             "
          ++ show r3
          ++ "}"
      _ -> error "FTransform: unexpected number of rows"
    where
      G.Pixman_f_transform mat = unsafePerformIO (withPtr tr peek)

-- | Possible format codes
type FormatCode = G.Pixman_format_code_t

rawFormatCode :: FormatCode -> CUInt
rawFormatCode = CE.fromCEnum -- getField @"unwrap"

deriving via (CE.AsCEnum FormatCode) instance Bounded FormatCode
deriving via (CE.AsCEnum FormatCode) instance Enum FormatCode

instance NFData FormatCode

pattern RGBAFloat :: FormatCode
pattern RGBAFloat = G.PIXMAN_rgba_float
pattern RGBFloat :: FormatCode
pattern RGBFloat = G.PIXMAN_rgb_float
pattern A16B16G16R16 :: FormatCode
pattern A16B16G16R16 = G.PIXMAN_a16b16g16r16
pattern A8R8G8B8 :: FormatCode
pattern A8R8G8B8 = G.PIXMAN_a8r8g8b8
pattern X8R8G8B8 :: FormatCode
pattern X8R8G8B8 = G.PIXMAN_x8r8g8b8
pattern A8B8G8R8 :: FormatCode
pattern A8B8G8R8 = G.PIXMAN_a8b8g8r8
pattern X8B8G8R8 :: FormatCode
pattern X8B8G8R8 = G.PIXMAN_x8b8g8r8
pattern B8G8R8A8 :: FormatCode
pattern B8G8R8A8 = G.PIXMAN_b8g8r8a8
pattern B8G8R8X8 :: FormatCode
pattern B8G8R8X8 = G.PIXMAN_b8g8r8x8
pattern R8G8B8A8 :: FormatCode
pattern R8G8B8A8 = G.PIXMAN_r8g8b8a8
pattern R8G8B8X8 :: FormatCode
pattern R8G8B8X8 = G.PIXMAN_r8g8b8x8
pattern X14R6G6B6 :: FormatCode
pattern X14R6G6B6 = G.PIXMAN_x14r6g6b6
pattern X2R10G10B10 :: FormatCode
pattern X2R10G10B10 = G.PIXMAN_x2r10g10b10
pattern A2R10G10B10 :: FormatCode
pattern A2R10G10B10 = G.PIXMAN_a2r10g10b10
pattern X2B10G10R10 :: FormatCode
pattern X2B10G10R10 = G.PIXMAN_x2b10g10r10
pattern A2B10G10R10 :: FormatCode
pattern A2B10G10R10 = G.PIXMAN_a2b10g10r10
pattern A8R8G8B8_sRGB :: FormatCode
pattern A8R8G8B8_sRGB = G.PIXMAN_a8r8g8b8_sRGB
pattern R8G8B8_sRGB :: FormatCode
pattern R8G8B8_sRGB = G.PIXMAN_r8g8b8_sRGB
pattern R8G8B8 :: FormatCode
pattern R8G8B8 = G.PIXMAN_r8g8b8
pattern B8G8R8 :: FormatCode
pattern B8G8R8 = G.PIXMAN_b8g8r8
pattern R5G6B5 :: FormatCode
pattern R5G6B5 = G.PIXMAN_r5g6b5
pattern B5G6R5 :: FormatCode
pattern B5G6R5 = G.PIXMAN_b5g6r5
pattern A1R5G5B5 :: FormatCode
pattern A1R5G5B5 = G.PIXMAN_a1r5g5b5
pattern X1R5G5B5 :: FormatCode
pattern X1R5G5B5 = G.PIXMAN_x1r5g5b5
pattern A1B5G5R5 :: FormatCode
pattern A1B5G5R5 = G.PIXMAN_a1b5g5r5
pattern X1B5G5R5 :: FormatCode
pattern X1B5G5R5 = G.PIXMAN_x1b5g5r5
pattern A4R4G4B4 :: FormatCode
pattern A4R4G4B4 = G.PIXMAN_a4r4g4b4
pattern X4R4G4B4 :: FormatCode
pattern X4R4G4B4 = G.PIXMAN_x4r4g4b4
pattern A4B4G4R4 :: FormatCode
pattern A4B4G4R4 = G.PIXMAN_a4b4g4r4
pattern X4B4G4R4 :: FormatCode
pattern X4B4G4R4 = G.PIXMAN_x4b4g4r4
pattern A8 :: FormatCode
pattern A8 = G.PIXMAN_a8
pattern R3G3B2 :: FormatCode
pattern R3G3B2 = G.PIXMAN_r3g3b2
pattern B2G3R3 :: FormatCode
pattern B2G3R3 = G.PIXMAN_b2g3r3
pattern A2R2G2B2 :: FormatCode
pattern A2R2G2B2 = G.PIXMAN_a2r2g2b2
pattern A2B2G2R2 :: FormatCode
pattern A2B2G2R2 = G.PIXMAN_a2b2g2r2
pattern C8 :: FormatCode
pattern C8 = G.PIXMAN_c8
pattern G8 :: FormatCode
pattern G8 = G.PIXMAN_g8
pattern X4A4 :: FormatCode
pattern X4A4 = G.PIXMAN_x4a4
pattern X4C4 :: FormatCode
pattern X4C4 = G.PIXMAN_x4c4
pattern X4G4 :: FormatCode
pattern X4G4 = G.PIXMAN_x4g4
pattern A4 :: FormatCode
pattern A4 = G.PIXMAN_a4
pattern R1G2B1 :: FormatCode
pattern R1G2B1 = G.PIXMAN_r1g2b1
pattern B1G2R1 :: FormatCode
pattern B1G2R1 = G.PIXMAN_b1g2r1
pattern A1R1G1B1 :: FormatCode
pattern A1R1G1B1 = G.PIXMAN_a1r1g1b1
pattern A1B1G1R1 :: FormatCode
pattern A1B1G1R1 = G.PIXMAN_a1b1g1r1
pattern C4 :: FormatCode
pattern C4 = G.PIXMAN_c4
pattern G4 :: FormatCode
pattern G4 = G.PIXMAN_g4
pattern A1 :: FormatCode
pattern A1 = G.PIXMAN_a1

-- | 1bpp G1
pattern G1 :: FormatCode
pattern G1 = G.PIXMAN_g1

-- | YUV YUY2
pattern YUY2 :: FormatCode
pattern YUY2 = G.PIXMAN_yuy2

-- | YUV YV12
pattern YV12 :: FormatCode
pattern YV12 = G.PIXMAN_yv12

type data ImageFormat
  = RGBAFloat
  | RGBFloat
  | A16B16G16R16
  | A8R8G8B8
  | X8R8G8B8
  | A8B8G8R8
  | X8B8G8R8
  | B8G8R8A8
  | B8G8R8X8
  | R8G8B8A8
  | R8G8B8X8
  | X14R6G6B6
  | X2R10G10B10
  | A2R10G10B10
  | X2B10G10R10
  | A2B10G10R10
  | A8R8G8B8_sRGB
  | R8G8B8_sRGB
  | R8G8B8
  | B8G8R8
  | R5G6B5
  | B5G6R5
  | A1R5G5B5
  | X1R5G5B5
  | A1B5G5R5
  | X1B5G5R5
  | A4R4G4B4
  | X4R4G4B4
  | A4B4G4R4
  | X4B4G4R4
  | A8
  | R3G3B2
  | B2G3R3
  | A2R2G2B2
  | A2B2G2R2
  | C8
  | G8
  | X4A4
  | X4C4
  | X4G4
  | A4
  | R1G2B1
  | B1G2R1
  | A1R1G1B1
  | A1B1G1R1
  | C4
  | G4
  | A1
  | G1
  | YUY2
  | YV12

type family ImageFormatType (format :: ImageFormat) :: FormatType
type instance ImageFormatType A1 = A
type instance ImageFormatType A4 = A
type instance ImageFormatType A8 = A
type instance ImageFormatType X4A4 = A
type instance ImageFormatType C4 = COLOR
type instance ImageFormatType C8 = COLOR

-- | @PIXMAN_TYPE_*@
data FormatType
  = Other -- 0
  | A -- 1
  | ARGB -- 2
  | ABGR -- 3
  | COLOR -- 4
  | GRAY -- 5
  | YUY2_TYPE -- 6
  | YV12_TYPE -- 7
  | BGRA -- 8
  | RGBA -- 9
  | ARGBsRGB -- 10
  | RGBA_FLOAT -- 11
  deriving stock (Eq, Ord, Bounded, Generic)

-- newtype FormatType = FormatType {unwrap :: CInt}
--  deriving stock (Eq, Generic)
--  deriving newtype (Storable, Ord, Real, Integral, Num)

class (Typeable a) => IsImageFormat a where
  imageFormatCode :: Proxy a -> FormatCode

instance (Typeable a) => IsImageFormat (a :: ImageFormat) where
  -- TODO hack implementation
  imageFormatCode proxy = read $ "PIXMAN_" ++ map C.toLower (show (typeRep proxy))

formatTypes :: [(FormatType, String)]
formatTypes =
  [ (Other, "Other") --  0
  , (A, "A") --  1
  , (ARGB, "ARGB") --  2
  , (ABGR, "ABGR") --  3
  , (COLOR, "COLOR") --  4
  , (GRAY, "GRAY") --  5
  , (YUY2_TYPE, "YUY2") --  6
  , (YV12_TYPE, "YV12") --  7
  , (BGRA, "BGRA") --  8
  , (RGBA, "RGBA") --  9
  , (ARGBsRGB, "ARGB_sRGB") --  10
  , (RGBA_FLOAT, "RGBA_FLOAT") --  11
  ]

instance Enum FormatType where
  toEnum i
    | r : _ <- [v | (vi, (v, _str)) <- zip [0 :: Int ..] formatTypes, vi == fromIntegral i] = r
    | otherwise = Other
  fromEnum x
    | r : _ <- [vi | (vi, (v, _str)) <- zip [0 :: Int ..] formatTypes, v == x] = fromIntegral r
    | otherwise = 0

instance Show FormatType where
  show x = case [s | (k, s) <- formatTypes, k == x] of
    s : _ -> s
    _ -> "TypeUnknown(" ++ show x ++ ")"

-- | All named formats.
allFormats :: [FormatCode]
allFormats = filter CE.isDeclared [minBound .. maxBound]

-- | Get the bpp (bits-per-pixel) for the specified format. (@PIXMAN_FORMAT_BPP@)
formatBPP :: FormatCode -> Int
formatBPP = fromIntegral . G.pIXMAN_FORMAT_BPP . CE.fromCEnum

-- | @PIXMAN_FORMAT_DEPTH@
formatDepth :: FormatCode -> Int
formatDepth = fromIntegral . G.pIXMAN_FORMAT_DEPTH . CE.fromCEnum

-- | @PIXMAN_FORMAT_COLOR@
formatColor :: FormatCode -> Bool
formatColor fmt = G.pIXMAN_FORMAT_COLOR (CE.fromCEnum fmt) == 1

-- | Get the 'FormatType' for the specified format. (@PIXMAN_FORMAT_TYPE@)
formatType :: FormatCode -> FormatType
formatType fmt = toEnum . fromIntegral $ G.pIXMAN_FORMAT_TYPE (CE.fromCEnum fmt)

formatSupportedDest :: FormatCode -> Bool
formatSupportedDest fmt = unsafePerformIO $ fromPixmanBool <$> US.pixman_format_supported_destination fmt

formatSupportedSource :: FormatCode -> Bool
formatSupportedSource fmt = unsafePerformIO $ fromPixmanBool <$> US.pixman_format_supported_source fmt

-- | Possible operations for composition
type Operation = OP Void

data OP a where
  CLEAR :: OP a
  SRC :: OP a
  DST :: OP a
  OVER :: REVERSE -> OP a
  IN :: REVERSE -> OP a
  OUT :: REVERSE -> OP a
  ATOP :: REVERSE -> OP a
  XOR :: OP a
  ADD :: OP Void
  SATURATE :: OP Void
  DISJOINT :: OP () -> OP Void
  CONJOINT :: OP () -> OP Void
  MULTIPLY :: OP Void
  SCREEN :: OP Void
  OVERLAY :: OP Void
  DARKEN :: OP Void
  LIGHTEN :: OP Void
  COLOR_DODGE :: OP Void
  COLOR_BURN :: OP Void
  HARD_LIGHT :: OP Void
  SOFT_LIGHT :: OP Void
  DIFFERENCE :: OP Void
  EXCLUSION :: OP Void
  HSL_HUE :: OP Void
  HSL_SATURATION :: OP Void
  HSL_COLOR :: OP Void
  HSL_LUMINOSITY :: OP Void

deriving instance Eq (OP a)
deriving instance Ord (OP a)
deriving instance Show (OP a)

instance Storable (OP Void) where
  sizeOf _ = sizeOf @G.Pixman_op_t undefined
  alignment _ = alignment @G.Pixman_op_t undefined
  peek p = toOP <$> peek (castPtr p)
  poke p a = poke (castPtr p) (fromOP a)

data REVERSE = NORMAL | REVERSE
  deriving stock (Eq, Ord, Show, Read, Generic)

fromOP :: OP Void -> G.Pixman_op_t
fromOP = \case
  CLEAR -> G.PIXMAN_OP_CLEAR
  SRC -> G.PIXMAN_OP_SRC
  DST -> G.PIXMAN_OP_DST
  OVER NORMAL -> G.PIXMAN_OP_OVER
  OVER REVERSE -> G.PIXMAN_OP_OVER_REVERSE
  IN NORMAL -> G.PIXMAN_OP_IN
  IN REVERSE -> G.PIXMAN_OP_IN_REVERSE
  OUT NORMAL -> G.PIXMAN_OP_OUT
  OUT REVERSE -> G.PIXMAN_OP_OUT_REVERSE
  ATOP NORMAL -> G.PIXMAN_OP_ATOP
  ATOP REVERSE -> G.PIXMAN_OP_ATOP_REVERSE
  XOR -> G.PIXMAN_OP_XOR
  ADD -> G.PIXMAN_OP_ADD
  SATURATE -> G.PIXMAN_OP_SATURATE
  DISJOINT CLEAR -> G.PIXMAN_OP_DISJOINT_CLEAR
  DISJOINT SRC -> G.PIXMAN_OP_DISJOINT_SRC
  DISJOINT DST -> G.PIXMAN_OP_DISJOINT_DST
  DISJOINT (OVER NORMAL) -> G.PIXMAN_OP_DISJOINT_OVER
  DISJOINT (OVER REVERSE) -> G.PIXMAN_OP_DISJOINT_OVER_REVERSE
  DISJOINT (IN NORMAL) -> G.PIXMAN_OP_DISJOINT_IN
  DISJOINT (IN REVERSE) -> G.PIXMAN_OP_DISJOINT_IN_REVERSE
  DISJOINT (OUT NORMAL) -> G.PIXMAN_OP_DISJOINT_OUT
  DISJOINT (OUT REVERSE) -> G.PIXMAN_OP_DISJOINT_OUT_REVERSE
  DISJOINT (ATOP NORMAL) -> G.PIXMAN_OP_DISJOINT_ATOP
  DISJOINT (ATOP REVERSE) -> G.PIXMAN_OP_DISJOINT_ATOP_REVERSE
  DISJOINT XOR -> G.PIXMAN_OP_DISJOINT_XOR
  CONJOINT CLEAR -> G.PIXMAN_OP_CONJOINT_CLEAR
  CONJOINT SRC -> G.PIXMAN_OP_CONJOINT_SRC
  CONJOINT DST -> G.PIXMAN_OP_CONJOINT_DST
  CONJOINT (OVER NORMAL) -> G.PIXMAN_OP_CONJOINT_OVER
  CONJOINT (OVER REVERSE) -> G.PIXMAN_OP_CONJOINT_OVER_REVERSE
  CONJOINT (IN NORMAL) -> G.PIXMAN_OP_CONJOINT_IN
  CONJOINT (IN REVERSE) -> G.PIXMAN_OP_CONJOINT_IN_REVERSE
  CONJOINT (OUT NORMAL) -> G.PIXMAN_OP_CONJOINT_OUT
  CONJOINT (OUT REVERSE) -> G.PIXMAN_OP_CONJOINT_OUT_REVERSE
  CONJOINT (ATOP NORMAL) -> G.PIXMAN_OP_CONJOINT_ATOP
  CONJOINT (ATOP REVERSE) -> G.PIXMAN_OP_CONJOINT_ATOP_REVERSE
  CONJOINT XOR -> G.PIXMAN_OP_CONJOINT_XOR
  MULTIPLY -> G.PIXMAN_OP_MULTIPLY
  SCREEN -> G.PIXMAN_OP_SCREEN
  OVERLAY -> G.PIXMAN_OP_OVERLAY
  DARKEN -> G.PIXMAN_OP_DARKEN
  LIGHTEN -> G.PIXMAN_OP_LIGHTEN
  COLOR_DODGE -> G.PIXMAN_OP_COLOR_DODGE
  COLOR_BURN -> G.PIXMAN_OP_COLOR_BURN
  HARD_LIGHT -> G.PIXMAN_OP_HARD_LIGHT
  SOFT_LIGHT -> G.PIXMAN_OP_SOFT_LIGHT
  DIFFERENCE -> G.PIXMAN_OP_DIFFERENCE
  EXCLUSION -> G.PIXMAN_OP_EXCLUSION
  HSL_HUE -> G.PIXMAN_OP_HSL_HUE
  HSL_SATURATION -> G.PIXMAN_OP_HSL_SATURATION
  HSL_COLOR -> G.PIXMAN_OP_HSL_COLOR
  HSL_LUMINOSITY -> G.PIXMAN_OP_HSL_LUMINOSITY

toOP :: G.Pixman_op_t -> OP Void
toOP = \case
  G.PIXMAN_OP_CLEAR -> CLEAR
  G.PIXMAN_OP_SRC -> SRC
  G.PIXMAN_OP_DST -> DST
  G.PIXMAN_OP_OVER -> OVER NORMAL
  G.PIXMAN_OP_OVER_REVERSE -> OVER REVERSE
  G.PIXMAN_OP_IN -> IN NORMAL
  G.PIXMAN_OP_IN_REVERSE -> IN REVERSE
  G.PIXMAN_OP_OUT -> OUT NORMAL
  G.PIXMAN_OP_OUT_REVERSE -> OUT REVERSE
  G.PIXMAN_OP_ATOP -> ATOP NORMAL
  G.PIXMAN_OP_ATOP_REVERSE -> ATOP REVERSE
  G.PIXMAN_OP_XOR -> XOR
  G.PIXMAN_OP_ADD -> ADD
  G.PIXMAN_OP_SATURATE -> SATURATE
  G.PIXMAN_OP_DISJOINT_CLEAR -> DISJOINT CLEAR
  G.PIXMAN_OP_DISJOINT_SRC -> DISJOINT SRC
  G.PIXMAN_OP_DISJOINT_DST -> DISJOINT DST
  G.PIXMAN_OP_DISJOINT_OVER -> DISJOINT (OVER NORMAL)
  G.PIXMAN_OP_DISJOINT_OVER_REVERSE -> DISJOINT (OVER REVERSE)
  G.PIXMAN_OP_DISJOINT_IN -> DISJOINT (IN NORMAL)
  G.PIXMAN_OP_DISJOINT_IN_REVERSE -> DISJOINT (IN REVERSE)
  G.PIXMAN_OP_DISJOINT_OUT -> DISJOINT (OUT NORMAL)
  G.PIXMAN_OP_DISJOINT_OUT_REVERSE -> DISJOINT (OUT REVERSE)
  G.PIXMAN_OP_DISJOINT_ATOP -> DISJOINT (ATOP NORMAL)
  G.PIXMAN_OP_DISJOINT_ATOP_REVERSE -> DISJOINT (ATOP REVERSE)
  G.PIXMAN_OP_DISJOINT_XOR -> DISJOINT XOR
  G.PIXMAN_OP_CONJOINT_CLEAR -> CONJOINT CLEAR
  G.PIXMAN_OP_CONJOINT_SRC -> CONJOINT SRC
  G.PIXMAN_OP_CONJOINT_DST -> CONJOINT DST
  G.PIXMAN_OP_CONJOINT_OVER -> CONJOINT (OVER NORMAL)
  G.PIXMAN_OP_CONJOINT_OVER_REVERSE -> CONJOINT (OVER REVERSE)
  G.PIXMAN_OP_CONJOINT_IN -> CONJOINT (IN NORMAL)
  G.PIXMAN_OP_CONJOINT_IN_REVERSE -> CONJOINT (IN REVERSE)
  G.PIXMAN_OP_CONJOINT_OUT -> CONJOINT (OUT NORMAL)
  G.PIXMAN_OP_CONJOINT_OUT_REVERSE -> CONJOINT (OUT REVERSE)
  G.PIXMAN_OP_CONJOINT_ATOP -> CONJOINT (ATOP NORMAL)
  G.PIXMAN_OP_CONJOINT_ATOP_REVERSE -> CONJOINT (ATOP REVERSE)
  G.PIXMAN_OP_CONJOINT_XOR -> CONJOINT XOR
  G.PIXMAN_OP_MULTIPLY -> MULTIPLY
  G.PIXMAN_OP_SCREEN -> SCREEN
  G.PIXMAN_OP_OVERLAY -> OVERLAY
  G.PIXMAN_OP_DARKEN -> DARKEN
  G.PIXMAN_OP_LIGHTEN -> LIGHTEN
  G.PIXMAN_OP_COLOR_DODGE -> COLOR_DODGE
  G.PIXMAN_OP_COLOR_BURN -> COLOR_BURN
  G.PIXMAN_OP_HARD_LIGHT -> HARD_LIGHT
  G.PIXMAN_OP_SOFT_LIGHT -> SOFT_LIGHT
  G.PIXMAN_OP_DIFFERENCE -> DIFFERENCE
  G.PIXMAN_OP_EXCLUSION -> EXCLUSION
  G.PIXMAN_OP_HSL_HUE -> HSL_HUE
  G.PIXMAN_OP_HSL_SATURATION -> HSL_SATURATION
  G.PIXMAN_OP_HSL_COLOR -> HSL_COLOR
  G.PIXMAN_OP_HSL_LUMINOSITY -> HSL_LUMINOSITY
  x -> error $ "unknown operation type: " ++ show x

-- | Possible dither operations
newtype Dither = Dither {unwrap :: G.Pixman_dither_t}
  deriving stock (Eq, Show, Generic)
  deriving newtype (Ord, Storable)

-- | No dithering
pattern DitherNone = Dither G.PIXMAN_DITHER_NONE

-- | Fast dithering
pattern DitherFast = Dither G.PIXMAN_DITHER_FAST

-- | Good dithering
pattern DitherGood = Dither G.PIXMAN_DITHER_GOOD

-- | Best dithering
pattern DitherBest = Dither G.PIXMAN_DITHER_BEST

-- | Ordered bayer 8 dithering
pattern OrderedBayer8 = Dither G.PIXMAN_DITHER_ORDERED_BAYER_8

-- | Ordered blue noise 64 dithering
pattern OrderedBlueNoise64 = Dither G.PIXMAN_DITHER_ORDERED_BLUE_NOISE_64

-- | Possible repeat operations
newtype Repeat = Repeat {unwrap :: G.Pixman_repeat_t}
  deriving (Eq, Show, Read, Generic)

-- | No repeat
pattern RepeatNone = Repeat G.PIXMAN_REPEAT_NONE

-- | Normal repeat
pattern RepeatNormal = Repeat G.PIXMAN_REPEAT_NORMAL

-- | Pad repeat
pattern RepeatPad = Repeat G.PIXMAN_REPEAT_PAD

-- | Reflect repeat
pattern RepeatReflect = Repeat G.PIXMAN_REPEAT_REFLECT

-- | Defines possible filter operations
newtype Filter = Filter {unwrap :: G.Pixman_filter_t}
  deriving stock (Eq, Generic)
  deriving newtype (Ord, Show, Storable)

-- | Fast filtering
pattern FilterFast = Filter G.PIXMAN_FILTER_FAST

-- | Good filtering
pattern FilterGood = Filter G.PIXMAN_FILTER_GOOD

-- | Best filtering
pattern FilterBest = Filter G.PIXMAN_FILTER_BEST

-- | Nearest-neighbor filtering
pattern Nearest = Filter G.PIXMAN_FILTER_NEAREST

-- | Bilinear filtering
pattern Bilinear = Filter G.PIXMAN_FILTER_BILINEAR

-- | Custom convolution kernel
pattern Convolution = Filter G.PIXMAN_FILTER_CONVOLUTION

-- | Custom separable convolution kernel
pattern SeparableConvolution = Filter G.PIXMAN_FILTER_SEPARABLE_CONVOLUTION

data SeparableConvolutionSettings = SeparableConvolutionSettings
  { scale :: !(Fixed, Fixed)
  -- ^ Scale parameters (x,y)
  , reconstruct :: !(Kernel, Kernel)
  -- ^ Reconstruct (x,y)
  , sample :: !(Kernel, Kernel)
  -- ^ Sample (x,y)
  , subsample :: !(Int, Int)
  -- ^ Subsample bits (x,y)
  }
  deriving (Eq, Show, Generic)

-- | Create the parameter list for separable convolution. See 'SeparableConvolution'.
separableConvolutionParams :: SeparableConvolutionSettings -> [Fixed]
separableConvolutionParams SeparableConvolutionSettings{..} = unsafePerformIO $
  alloca $ \lenPtr -> do
    paramsPtr <-
      US.pixman_filter_create_separable_convolution
        lenPtr
        (coerce $ fst scale)
        (coerce $ snd scale)
        (coerce $ fst reconstruct)
        (coerce $ snd reconstruct)
        (coerce $ fst sample)
        (coerce $ snd sample)
        (fromIntegral $ fst subsample)
        (fromIntegral $ snd subsample)
    len <- peek lenPtr
    ps <- peekArray (fromIntegral len) (coerce paramsPtr)
    free paramsPtr
    return ps

newtype Kernel = Kernel {unwrap :: G.Pixman_kernel_t}
  deriving stock (Eq, Show, Generic)
  deriving newtype (Ord, Storable)

pattern KernelImpulse = Kernel G.PIXMAN_KERNEL_IMPULSE
pattern KernelBox = Kernel G.PIXMAN_KERNEL_BOX
pattern KernelLinear = Kernel G.PIXMAN_KERNEL_LINEAR
pattern KernelCubic = Kernel G.PIXMAN_KERNEL_CUBIC
pattern KernelGaussian = Kernel G.PIXMAN_KERNEL_GAUSSIAN
pattern KernelLanczos2 = Kernel G.PIXMAN_KERNEL_LANCZOS2
pattern KernelLanczos3 = Kernel G.PIXMAN_KERNEL_LANCZOS3
pattern KernelLanczos3Stretched = Kernel G.PIXMAN_KERNEL_LANCZOS3_STRETCHED

-- | Describes overlap of a region with a rectangle.
newtype Overlap = Overlap {unwrap :: G.Pixman_region_overlap_t}
  deriving stock (Eq, Generic)
  deriving newtype (Ord, Show, Storable)

-- | No intersection
pattern RegionOut = Overlap G.PIXMAN_REGION_OUT

-- | Region contains a rectangle
pattern RegionIn = Overlap G.PIXMAN_REGION_IN

-- | Partial intersection
pattern RegionPart = Overlap G.PIXMAN_REGION_PART

-- * Colors

-- | RGBA color of 'Word16' precision (@4 * 16 bits@)
newtype Color = Color {unwrap :: G.Pixman_color_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance Bounded Color where
  minBound = fromColorComponents @Word16 0 0 0 0
  maxBound = fromColorComponents @Word16 maxBound maxBound maxBound maxBound

instance Show Color where
  show (Color (G.Pixman_color_t r g b a)) = printf "Color[RGBA]{%04x,%04x,%04x,%04x}" r g b a

class IsColor a where
  toColor :: a -> Color

  red :: a -> Word16
  red = alpha . toColor
  green :: a -> Word16
  green = alpha . toColor
  blue :: a -> Word16
  blue = alpha . toColor
  alpha :: a -> Word16
  alpha = alpha . toColor

instance IsColor Color where
  toColor = id

  red (Color (G.Pixman_color_t r _ _ _)) = r
  green (Color (G.Pixman_color_t _ g _ _)) = g
  blue (Color (G.Pixman_color_t _ _ b _)) = b
  alpha (Color (G.Pixman_color_t _ _ _ a)) = a

-- | @AARRGGBB@
instance IsColor Word32 where
  toColor c8 =
    let a = (c8 .&. 0xff000000) .>>. 24
        r = (c8 .&. 0x00ff0000) .>>. 16
        g = (c8 .&. 0x0000ff00) .>>. 8
        b = (c8 .&. 0x000000ff)
        f x = fromIntegral $! x .|. (x .<<. 8)
     in fromColorComponents @Word16 (f r) (f g) (f b) (f a)

-- | @AAAARRRRGGGGBBBB@
instance IsColor Word64 where
  toColor c16 =
    let a = (c16 .&. 0xffff000000000000) .>>. 48
        r = (c16 .&. 0x0000ffff00000000) .>>. 32
        g = (c16 .&. 0x00000000ffff0000) .>>. 16
        b = (c16 .&. 0x000000000000ffff)
        f x = fromIntegral $! x
     in fromColorComponents @Word16 (f r) (f g) (f b) (f a)

-- | Expects hex values: @#[AA]RRGGBB@, @0x[AA]RRGGBB@
instance IsColor String where
  toColor = parseARGB

-- | Alpha is zero
instance IsColor (Word16, Word16, Word16) where
  toColor (a, b, c) = fromColorComponents a b c 0

-- | @(R, G, B, A)@
instance IsColor (Word16, Word16, Word16, Word16) where
  toColor (a, b, c, d) = fromColorComponents a b c d

-- | @RGBA@. Expects floating point numbers normalized to the @[0,1]@ range.
instance IsColor (Double, Double, Double, Double) where
  toColor (a, b, c, d) = fromColorComponents (toColorComponent a) (toColorComponent b) (toColorComponent c) (toColorComponent d)

-- | @RGBA@. Expects floating point numbers normalized to the @[0,1]@ range.
instance IsColor (Float, Float, Float, Float) where
  toColor (a, b, c, d) = fromColorComponents (toColorComponent a) (toColorComponent b) (toColorComponent c) (toColorComponent d)

class ColorComponent a where
  toColorComponent :: a -> Word16

-- | @fromColorComponents red green blue alpha@
fromColorComponents :: (a ~ Word16) => a -> a -> a -> a -> Color
fromColorComponents r g b a = Color $ G.Pixman_color_t r g b a

instance ColorComponent Word16 where
  toColorComponent = id

-- | Expects a floating point number normalized to the @[0,1]@ range.
instance ColorComponent Double where
  toColorComponent = doubleToColorComponent 0 1.0

-- | Expects a floating point number normalized to the @[0,1]@ range.
instance ColorComponent Float where
  toColorComponent = doubleToColorComponent 0 1.0 . float2Double

-- | @doubleToColorComponent min max value@
doubleToColorComponent :: Double -> Double -> Double -> Word16
doubleToColorComponent imin imax x =
  let normalized = max 0.0 (min 1.0 ((x - imin) / (imax - imin)))
   in round $ normalized * 65535.0

parseARGB :: (HasCallStack) => String -> Color
parseARGB s
  | '#' : s' <- s = parseARGB ('0' : 'x' : s')
  | '0' : 'x' : s' <- s
  , length s == 8 || length s == 10 =
      toColor $ case readHex @Word32 s' of
        [(c, "")]
          -- If the color is 0xRRGGBB, add FF for the alpha channel
          | length s == 8 -> c .|. (0xff .<<. 24)
          | otherwise -> c
        _ -> error $ "Invalid RGBA text: '" ++ s ++ "'\n" ++ prettyCallStack callStack
  | otherwise = error $ "Invalid RGBA text: '" ++ s ++ "'\n" ++ prettyCallStack callStack

-- * Vectors

data family Vector a

-- | A single vector
newtype instance Vector Fixed = VectorFixed {unwrap :: G.Pixman_vector_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

-- | Floating-point vector
newtype instance Vector Double = VectorDouble {unwrap :: G.Pixman_f_vector_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance Show (Vector Fixed) where
  show v
    | [a, b, c] <- vectorToList v = printf "Vector[Fixed]{%s,%s,%s}" a b c
    | otherwise = error "vector: unexpected element count"

instance Show (Vector Double) where
  show v
    | [a, b, c] <- vectorToList v = printf "Vector[Double]{%f,%f,%f}" a b c
    | otherwise = error "vector: unexpected element count"

class IsVector a where
  type VectorElem a

  vector :: VectorElem a -> VectorElem a -> VectorElem a -> a
  vector x y z = vectorFromList [x, y, z]

  vectorToList :: a -> [VectorElem a]
  vectorFromList :: [VectorElem a] -> a

  vectorX :: a -> VectorElem a
  vectorX v = vectorToList v !! 0

  vectorY :: a -> VectorElem a
  vectorY v = vectorToList v !! 1

  vectorZ :: a -> VectorElem a
  vectorZ v = vectorToList v !! 2

instance IsVector (Vector Fixed) where
  type VectorElem (Vector Fixed) = Fixed

  vectorFromList xs = VectorFixed $! G.Pixman_vector_t $! G.Pixman_vector $! CA.fromList $! coerce xs

  vectorToList (VectorFixed (G.Pixman_vector_t (G.Pixman_vector vec))) = map (coerce @_ @Fixed) $ CA.toList vec

instance IsVector (Vector Double) where
  type VectorElem (Vector Double) = Double

  vectorFromList xs = VectorDouble $! G.Pixman_f_vector_t $! G.Pixman_f_vector $! CA.fromList $ map CDouble xs

  vectorToList (VectorDouble (G.Pixman_f_vector_t (G.Pixman_f_vector vec))) = map (coerce @_ @Double) $ CA.toList vec

-- * Gradient / misc

-- | Pair of @('Fixed', 'Color')@, construct with 'gradientStop'.
newtype GradientStop = GradientStop {unwrap :: G.Pixman_gradient_stop_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable)

gradientStop :: (IsColor color) => Fixed -> color -> GradientStop
gradientStop x color = GradientStop $! G.Pixman_gradient_stop_t (coerce x) (coerce $ toColor color)

-- * Images

-- | Image as "ForeignPtr" to `pixman_image_t`.
newtype Image = Image {unwrap :: ForeignPtr G.Pixman_image_t}
  deriving stock (Eq, Generic)

newImage :: Ptr G.Pixman_image_t -> IO Image
newImage ptr = Image <$> newForeignPtr (castFunPtr FP.pixman_image_unref) ptr

newtype TypedImage (format :: ImageFormat) = TypedImage {unwrap :: ForeignPtr G.Pixman_image_t}

newtype Solid = Solid {unwrap :: ForeignPtr G.Pixman_image_t}

newtype Gradient = Gradient {unwrap :: ForeignPtr G.Pixman_image_t}

instance Show Solid where
  show = show . toImage -- XXX

instance (Typeable format) => Show (TypedImage format) where
  show = show . toImage

instance Show Gradient where
  show = show . toImage -- XXX

imageToTypedImage :: forall format. (IsImageFormat format) => Image -> Maybe (TypedImage format)
imageToTypedImage img
  | imageFormat img == imageFormatCode (Proxy @format) = Just (TypedImage $ getField @"unwrap" img)
  | otherwise = Nothing

instance Show Image where
  show img@(Image fp) =
    "Image{size="
      ++ show (imageWidth img)
      ++ "x"
      ++ show (imageHeight img)
      ++ ","
      ++ " format="
      ++ show (imageFormat img)
      ++ ","
      ++ " depth="
      ++ show (imageDepth img)
      ++ ","
      ++ " stride="
      ++ show (imageStride img)
      ++ ","
      ++ " calpha="
      ++ show (imageComponentAlpha img)
      ++ ","
      ++ " data="
      ++ show (imageData img)
      ++ " ptr="
      ++ show fp
      ++ "}"

class IsImage a where
  toImage :: a -> Image

  imageSize :: a -> Size Int
  imageSize = (,) <$> imageWidth <*> imageHeight

  imageWidth :: a -> Int
  imageWidth x = unsafePerformIO $ fromIntegral <$> withImagePtr x US.pixman_image_get_width

  imageHeight :: a -> Int
  imageHeight x = unsafePerformIO $ fromIntegral <$> withImagePtr x US.pixman_image_get_height

  imageDepth :: a -> Int
  imageDepth x = unsafePerformIO $ fromIntegral <$> withImagePtr x US.pixman_image_get_depth

  -- | Image (row) stride (in bytes)
  imageStride :: a -> Int
  imageStride x = unsafePerformIO $ fromIntegral <$> withImagePtr x US.pixman_image_get_stride

  -- | Whether the image has component alpha or unified alpha.
  imageComponentAlpha :: a -> Bool
  imageComponentAlpha x = unsafePerformIO $ fromPixmanBool <$> withImagePtr x US.pixman_image_get_component_alpha

  imageFormat :: a -> FormatCode
  imageFormat x = unsafePerformIO $ withImagePtr x US.pixman_image_get_format

  imageBPP :: a -> Int
  imageBPP = formatBPP . imageFormat

  imageData :: a -> Ptr Word32
  imageData x = unsafePerformIO $ withImagePtr x US.pixman_image_get_data

instance IsImage Image where
  toImage = id

instance (Typeable format) => IsImage (TypedImage format) where
  toImage = coerce
  imageFormat (_ :: TypedImage format) = imageFormatCode (Proxy @format)

instance IsImage Solid where
  toImage = coerce

instance IsImage Gradient where
  toImage = coerce

newEmptyTypedImage :: forall format m. (IsImageFormat format, PrimMonad m) => Size Int -> Bool -> m (TypedImage format)
newEmptyTypedImage size clear = coerce <$> newImageWithBits (imageFormatCode $ Proxy @format) size clear nullPtr 0

newTypedImageWithBits :: forall format m. (IsImageFormat format, PrimMonad m) => Size Int -> Bool -> Ptr Word32 -> Int -> m (TypedImage format)
newTypedImageWithBits si cl b rs = coerce <$> newImageWithBits (imageFormatCode $ Proxy @format) si cl b rs

-- | Initialize a new image with null data.
--
-- @newEmptyImage format (w, h) clear@
--
-- See 'newImageWithBits'.
newEmptyImage :: (PrimMonad m) => FormatCode -> Size Int -> Bool -> m Image
newEmptyImage fmt size clear = newImageWithBits fmt size clear nullPtr 0

-- | Initialize image with provided bits.
--
-- @newImageWithBits format (w, h) clear data rowstride_bytes@
--
-- @pixman_image_create_bits{,_no_clear}@
newImageWithBits :: (PrimMonad m) => FormatCode -> Size Int -> Bool -> Ptr Word32 -> Int -> m Image
newImageWithBits fmt (width, height) clear bits stride = unsafeIOToPrim $ newImage =<< imageFromBits
  where
    imageFromBits = throwPixmanIfNull "newImageWithBits" $ f fmt (fromIntegral width) (fromIntegral height) bits (fromIntegral stride)
    f = if clear then US.pixman_image_create_bits else US.pixman_image_create_bits_no_clear

-- | Create a solid fill image.
solidFillImage :: (PrimMonad m, IsColor color) => color -> m Solid
solidFillImage color = unsafeIOToPrim $ fmap coerce . newImage =<< doit
  where
    doit = with (toColor color) $ \colorP -> US.pixman_image_create_solid_fill (ConstPtr $ coerce colorP)

-- | @newLinearGradient point_a point_b stops@
newLinearGradient :: (PrimMonad m) => Point Fixed -> Point Fixed -> [GradientStop] -> m Gradient
newLinearGradient p1 p2 stops = unsafeIOToPrim $ fmap coerce . newImage =<< mk
  where
    mk = with p1 $ \p1P ->
      with p2 $ \p2P ->
        withArrayLen stops $ \stopsLen stopsP ->
          throwPixmanIfNull "linearGradientImage" $
            US.pixman_image_create_linear_gradient (coerce p1P) (coerce p2P) (coerce stopsP) (fromIntegral stopsLen)

-- | @newConicalGradient center angle stops@
newConicalGradient :: (PrimMonad m) => Point Fixed -> Fixed -> [GradientStop] -> m Gradient
newConicalGradient center angle stops = unsafeIOToPrim $ fmap coerce . newImage =<< mk
  where
    mk = with center $ \centerP ->
      withArrayLen stops $ \stopsLen stopsP ->
        throwPixmanIfNull "conicalGradientImage" $
          US.pixman_image_create_conical_gradient (coerce centerP) (coerce angle) (coerce stopsP) (fromIntegral stopsLen)

-- | @newRadialGradient inner outer inner_radius outer_radius stops@
newRadialGradient :: (PrimMonad m) => Point Fixed -> Point Fixed -> Fixed -> Fixed -> [GradientStop] -> m Gradient
newRadialGradient p1 p2 innerR outerR stops = unsafeIOToPrim $ fmap coerce . newImage =<< mk
  where
    mk = with p1 $ \p1P ->
      with p2 $ \p2P ->
        withArrayLen stops $ \stopsLen stopsP ->
          throwPixmanIfNull "radialGradientImage" $
            US.pixman_image_create_radial_gradient (coerce p1P) (coerce p2P) (coerce innerR) (coerce outerR) (coerce stopsP) (fromIntegral stopsLen)

-- ** Operations

-- | Set whether the source clip was set by a client.
setHasClientClip :: (PrimMonad m) => Bool -> Image -> m ()
setHasClientClip x (Image fp) = unsafeIOToPrim $ withForeignPtr fp $ \img -> US.pixman_image_set_has_client_clip img (toPixmanBool x)

setIndexed :: (PrimMonad m) => Indexed -> Image -> m ()
setIndexed indexed (Image fp) = unsafeIOToPrim $ do
  bracketOnError (new indexed) free $ \ptr -> do
    withForeignPtr fp $ \img -> US.pixman_image_set_indexed img (ConstPtr ptr)
    addForeignPtrFinalizerEnv finalizeIndexed ptr fp

finalizeIndexed :: FinalizerEnvPtr Indexed G.Pixman_image_t
finalizeIndexed = unsafePerformIO $ mkFinalizeIndexed $ \p _ -> free p
{-# NOINLINE finalizeIndexed #-}

foreign import ccall "wrapper"
  mkFinalizeIndexed :: forall a. (Ptr Indexed -> Ptr a -> IO ()) -> IO (FinalizerEnvPtr Indexed a)

-- | Apply a clip region used during composition.
setClipRegion :: (PrimMonad m, Typeable a) => Region (a :: RegionType) -> Image -> m ()
setClipRegion r
  | Just x <- cast r :: Maybe (Region R16) = set "set_clip_region" US.pixman_image_set_clip_region x
  | Just x <- cast r :: Maybe (Region R32) = set "set_clip_region32" US.pixman_image_set_clip_region32 x
  | Just x <- cast r :: Maybe (Region R64F) = set "set_clip_region64f" US.pixman_image_set_clip_region64f x
  | otherwise = error "impossible"
  where
    set str f reg (Image fp) = unsafeIOToPrim $ withForeignPtr fp $ \img -> throwPixmanUnless1 str $ withConstPtr reg $ f img

-- | Apply the specified transform during sampling from this image.
setTransform :: (PrimMonad m) => Transform -> Image -> m ()
setTransform t (Image fp) = unsafeIOToPrim $ withForeignPtr fp $ \img ->
  throwPixmanUnless1 "image_set_transform" $ withPtr t $ US.pixman_image_set_transform img . ConstPtr . castPtr

-- | Clear a previously set transform.
clearTransform :: (PrimMonad m) => Image -> m ()
clearTransform (Image fp) = unsafeIOToPrim $ withForeignPtr fp $ \img ->
  throwPixmanUnless1 "image_set_transform" $ US.pixman_image_set_transform img $ ConstPtr nullPtr

-- | Set the filter operation used during composition.
--
-- @setFilter filter params image@
setFilter :: (PrimMonad m) => Filter -> [Fixed] -> Image -> m ()
setFilter f params (Image fp) = unsafeIOToPrim $
  withForeignPtr fp $ \img ->
    withArrayLen (coerce params) $ \len ptr ->
      throwPixmanUnless1 "image_set_filter" $ US.pixman_image_set_filter img (coerce f) (ConstPtr ptr) (fromIntegral len)

setFilterSeparableConvolution :: (PrimMonad m) => SeparableConvolutionSettings -> Image -> m ()
setFilterSeparableConvolution cfg = setFilter SeparableConvolution (separableConvolutionParams cfg)

-- | Set the repeat operation for this image.
setRepeat :: (PrimMonad m) => Repeat -> Image -> m ()
setRepeat r (Image fp) = unsafeIOToPrim $ withForeignPtr fp $ \img -> US.pixman_image_set_repeat img (coerce r)

-- | Set the dither operation used during composition.
setDither :: (PrimMonad m) => Dither -> Maybe (Int, Int) -> Image -> m ()
setDither d moff (Image fp) = unsafeIOToPrim $ withForeignPtr fp $ \img -> do
  US.pixman_image_set_dither img (coerce d)
  maybe (return ()) (\(x, y) -> US.pixman_image_set_dither_offset img (fromIntegral x) (fromIntegral y)) moff

-- | Set whether the clip applies when the image is used as a source.
setSourceClipping :: (PrimMonad m) => Bool -> Image -> m ()
setSourceClipping b (Image fp) = unsafeIOToPrim $
  withForeignPtr fp $ \img ->
    US.pixman_image_set_source_clipping img (toPixmanBool b)

-- | Set an alpha map that will be used when this image is used as a src in a blit operation.
setAlphaMap :: (PrimMonad m) => Image -> Int -> Int -> Image -> m ()
setAlphaMap amap x y (Image fp) = unsafeIOToPrim $
  withForeignPtr fp $ \img ->
    withPtr amap $ \amapPtr ->
      US.pixman_image_set_alpha_map img amapPtr (fromIntegral x) (fromIntegral y)

-- | Clear a previously set alpha map.
clearAlphaMap :: (PrimMonad m) => Image -> m ()
clearAlphaMap (Image fp) = unsafeIOToPrim $
  withForeignPtr fp $ \img ->
    US.pixman_image_set_alpha_map img nullPtr 0 0

-- | Set whether the image has component alpha or unified alpha.
setComponentAlpha :: (PrimMonad m) => Bool -> Image -> m ()
setComponentAlpha b (Image fp) = unsafeIOToPrim $
  withForeignPtr fp $ \img ->
    US.pixman_image_set_component_alpha img (toPixmanBool b)

data CompositeParameters (a :: RegionType) = CompositeParameters
  { maskImg :: Maybe Image
  , srcPos :: Position (PositionScalar a)
  , maskPos :: Position (PositionScalar a)
  , destPos :: Position (PositionScalar a)
  , size :: Size (SizeScalar a)
  }

compositeSrcPos, compositeMaskPos, compositeDestPos :: Position (PositionScalar a) -> CompositeParameters a -> CompositeParameters a
compositeSrcPos x pa = pa{srcPos = x}
compositeMaskPos x pa = pa{maskPos = x}
compositeDestPos x pa = pa{destPos = x}

compositeMask :: Maybe Image -> CompositeParameters a -> CompositeParameters a
compositeMask x pa = pa{maskImg = x}

compositeSize :: Size (SizeScalar a) -> CompositeParameters a -> CompositeParameters a
compositeSize sz pa = pa{size = sz}

instance (Default (PositionScalar a), Default (SizeScalar a)) => Default (CompositeParameters a) where
  def = CompositeParameters Nothing (def, def) (def, def) (def, def) (def, def)

-- |
-- @
-- setComposite @R32 Src srcimg def dstimg
-- @
setComposite :: (PrimMonad m, Typeable a, IsImage src) => Operation -> src -> CompositeParameters a -> Image -> m ()
setComposite op src set
  | Just x <- cast set :: Maybe (CompositeParameters R16) = setCompositeInner US.pixman_image_composite id id x
  | Just x <- cast set :: Maybe (CompositeParameters R32) = setCompositeInner US.pixman_image_composite32 id fromIntegral x
  | Just x <- cast set :: Maybe (CompositeParameters R64F) = setCompositeInner US.pixman_image_composite64f CDouble CDouble x
  | otherwise = error "impossible"
  where
    setCompositeInner :: (PrimMonad m) => _ -> (PositionScalar a -> _) -> (SizeScalar a -> _) -> CompositeParameters a -> Image -> m ()
    setCompositeInner f f1 f2 CompositeParameters{..} (Image fp) = unsafeIOToPrim $ do
      let (w, h) = size
          (src_x, src_y) = srcPos
          (mask_x, mask_y) = maskPos
          (dest_x, dest_y) = destPos
      withPtr (toImage src) $ \srcP ->
        withForeignPtr fp $ \img ->
          maybe ($ nullPtr) withPtr maskImg $ \maskP ->
            f
              (fromOP op)
              srcP
              maskP
              img
              (f1 src_x)
              (f1 src_y)
              (f1 mask_x)
              (f1 mask_y)
              (f1 dest_x)
              (f1 dest_y)
              (f2 w)
              (f2 h)

-- |
-- @compositeTrapezoids op src dst maskFormat (x_src, y_src) (x_dst, y_dst) traps@
compositeTrapezoids :: (PrimMonad m) => Operation -> Image -> Image -> FormatCode -> Position Int -> Position Int -> [Trapezoid] -> m ()
compositeTrapezoids op src (Image dst) maskFormat (x_src, y_src) (x_dst, y_dst) trapsList = unsafeIOToPrim $
  withArrayLen trapsList $ \n_traps traps ->
    withPtr src $ \srcPtr ->
      withForeignPtr dst $ \dstPtr ->
        US.pixman_composite_trapezoids (fromOP op) srcPtr dstPtr maskFormat (fi x_src) (fi y_src) (fi x_dst) (fi y_dst) (fi n_traps) (ConstPtr $ castPtr traps)
  where
    fi = fromIntegral

-- |
-- @compositeTriangles op src dst maskFormat (x_src, y_src) (x_dst, y_dst) tris@
compositeTriangles :: (PrimMonad m) => Operation -> Image -> Image -> FormatCode -> Position Int -> Position Int -> [Triangle] -> m ()
compositeTriangles op src (Image dst) maskFormat (x_src, y_src) (x_dst, y_dst) trisList = unsafeIOToPrim $
  withArrayLen trisList $ \n_tris tris ->
    withPtr src $ \srcPtr ->
      withForeignPtr dst $ \dstPtr ->
        US.pixman_composite_triangles (fromOP op) srcPtr dstPtr maskFormat (fi x_src) (fi y_src) (fi x_dst) (fi y_dst) (fi n_tris) (ConstPtr $ castPtr tris)
  where
    fi = fromIntegral

fillBoxes :: (PrimMonad m, IsColor color) => Operation -> color -> [Box R32] -> Image -> m ()
fillBoxes op color boxes (Image fp) = unsafeIOToPrim $
  withForeignPtr fp $ \img ->
    with (toColor color) $ \colorP ->
      withArrayLen (coerce boxes) $ \len boxesP ->
        throwPixmanUnless1 "image_fill_boxes" $
          US.pixman_image_fill_boxes (fromOP op) img (ConstPtr $ coerce colorP) (fromIntegral len) (ConstPtr boxesP)

-- | @fillRectangles op color rects img@
fillRectangles :: (PrimMonad m, IsColor color) => Operation -> color -> [Rectangle R16] -> Image -> m ()
fillRectangles op color rects (Image fp) = unsafeIOToPrim $
  withForeignPtr fp $ \img ->
    with (toColor color) $ \colorP ->
      withArrayLen (coerce rects) $ \len rsP ->
        throwPixmanUnless1 "image_fill_rectangles" $
          US.pixman_image_fill_rectangles (fromOP op) img (ConstPtr $ coerce colorP) (fromIntegral len) (ConstPtr rsP)

-- | @addTriangles offset tris img@
addTriangles :: (IsImageFormat format, ImageFormatType format ~ A, PrimMonad m) => (Int, Int) -> [Triangle] -> TypedImage format -> m ()
addTriangles off tris img = do
  when (formatType (imageFormat img) /= A) $ unsafeIOToPrim $ throwIO $ PixmanException "image format is not A"
  imageAddGeneric castPtr US.pixman_add_triangles off tris (coerce img)

newtype Edge = Edge {unwrap :: ForeignPtr G.Pixman_edge_t}
  deriving stock (Generic)

-- | Initialize one edge structure given a line, starting y value and a pixel offset for the line.
--
-- @fromLine bpp y line offset@
fromLine :: Int -> Fixed -> Line Fixed -> Position Int -> Edge
fromLine bpp y line (off_x, off_y) = unsafePerformIO $
  withNewForeignPtr (pure . Edge) $ \ptr ->
    with (unLine line) $ \line' ->
      US.pixman_line_fixed_edge_init ptr (fromIntegral bpp) (coerce y) (ConstPtr line') (fromIntegral off_x) (fromIntegral off_y)

-- |
-- @newEdge bpp y_start x_top y_top x_bot y_bot@
newEdge :: Int -> Fixed -> Fixed -> Fixed -> Fixed -> Fixed -> Edge
newEdge bpp y_start x_top y_top x_bot y_bot = unsafePerformIO $
  withNewForeignPtr (pure . Edge) $ \ptr ->
    US.pixman_edge_init
      ptr
      (fromIntegral bpp)
      (coerce y_start)
      (coerce x_top)
      (coerce y_top)
      (coerce x_bot)
      (coerce y_bot)

-- | Step an edge by any amount
stepEdge :: Int -> Edge -> Edge
stepEdge amount edge = unsafePerformIO $
  withNewForeignPtrCopy (pure . Edge) edge $ \ptr ->
    US.pixman_edge_step ptr (fromIntegral amount)

rasterizeEdges = US.pixman_rasterize_edges

rasterizeTrapezoid = US.pixman_rasterize_trapezoid

-- | offset, xs
addTraps :: (IsImageFormat format, ImageFormatType format ~ A, PrimMonad m) => (Int, Int) -> [Trap] -> TypedImage format -> m ()
addTraps off traps img = do
  when (formatType (imageFormat img) /= A) $ unsafeIOToPrim $ throwIO $ PixmanException "image format is not A"
  imageAddGeneric castPtr US.pixman_add_traps off traps (coerce img)

-- | offset, xs
addTrapezoids :: (PrimMonad m) => (Int, Int) -> [Trapezoid] -> Image -> m ()
addTrapezoids = imageAddGeneric castPtr US.pixman_add_trapezoids

imageAddGeneric :: (_) => _ -> _f -> (Int, Int) -> _xs -> Image -> m ()
{-# INLINE imageAddGeneric #-}
imageAddGeneric trans f (x_off, y_off) xs (Image fp) = unsafeIOToPrim $
  withForeignPtr fp $ \img ->
    withArrayLen xs $ \len xsP ->
      f img (fromIntegral x_off) (fromIntegral y_off) (fromIntegral len) (ConstPtr $ trans xsP)

-- | Compute the composite region for the specified src.
computeCompositeRegion ::
  Image
  -- ^ @src_image@
  -> Maybe Image
  -- ^ @mask_image@
  -> Image
  -- ^ @dest_image@
  -> Position Int
  -- ^ @(src_x, src_y)@
  -> Position Int
  -- ^ @(mask_x, mask_y)@
  -> Position Int
  -- ^ @(dest_x, dest_y)@
  -> Size Int
  -- ^ @(width, height)@
  -> Region16
computeCompositeRegion src mask' dest (sx, sy) (mx, my) (dx, dy) (w, h) = unsafePerformIO $
  withPtr src $ \srcP ->
    maybe ($ nullPtr) withPtr mask' $ \maskP ->
      withPtr dest $ \destP ->
        withNewRegion16 $ \p ->
          throwPixmanUnless1 "computeCompositeRegion" $
            US.pixman_compute_composite_region
              p
              srcP
              maskP
              destP
              (fromIntegral sx)
              (fromIntegral sy)
              (fromIntegral mx)
              (fromIntegral my)
              (fromIntegral dx)
              (fromIntegral dy)
              (fromIntegral w)
              (fromIntegral h)

-- * Transform

-- | These methods exist for both 'Transform' and 'FTransform'.
class IsTransform a where
  type MatrixElem a :: Type

  -- | The identity transformation.
  identityTransform :: a

  -- | Initialize a transform from a matrix (3 x 3).
  fromMatrix :: [[MatrixElem a]] -> a

  -- | Initialize a transform from a rotation.
  fromRotation :: MatrixElem a -> MatrixElem a -> a

  -- | Initialize a transform from a scale.
  fromScale :: MatrixElem a -> MatrixElem a -> a

  -- | Initialize a transform from a translate.
  fromTranslation :: MatrixElem a -> MatrixElem a -> a

  -- | Invert transformation.
  invertTransform :: a -> a

  -- | Transform the provided bounds.
  transformBounds :: a -> Box R16 -> Box R16

  -- | Multiply two transformations.
  multiplyTransform :: a -> a -> a

  -- | Add a rotation to this transform.
  --
  -- @rotate cos sin reverse t@
  rotate :: MatrixElem a -> MatrixElem a -> Bool -> a -> a

  -- | Add a scale to the transform
  --
  -- @scale sx sy reverse t@
  scaleTransform :: MatrixElem a -> MatrixElem a -> Bool -> a -> a

  -- | Add a translation to the transform.
  --
  -- @translate sx sy reverse t@
  translate :: MatrixElem a -> MatrixElem a -> Bool -> a -> a

  -- | Transform the given point
  transformPoint :: a -> Vector (MatrixElem a) -> Vector (MatrixElem a)

  -- | Transform the given point
  transformPoint3D :: a -> Vector (MatrixElem a) -> Vector (MatrixElem a)

  -- | Access the current transform matrix
  transformMatrix :: a -> [[MatrixElem a]]

instance IsTransform Transform where
  type MatrixElem Transform = Fixed

  identityTransform =
    unsafePerformIO $
      withNewForeignPtr (pure . Transform) US.pixman_transform_init_identity
  {-# NOINLINE identityTransform #-}

  fromMatrix matrix = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $
      \p -> poke p $ G.Pixman_transform $ mkArray (coerce matrix)
    where
      mkArray = CA.fromList . map CA.fromList

  fromRotation cos' sin' = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $
      \p -> US.pixman_transform_init_rotate p (coerce cos') (coerce sin')

  fromScale sx sy = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $
      \p -> US.pixman_transform_init_scale p (coerce sx) (coerce sy)

  fromTranslation tx ty = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $
      \p -> US.pixman_transform_init_translate p (coerce tx) (coerce ty)

  invertTransform x = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p ->
      throwPixmanUnless1 "invertTransform" $ withConstPtr x $ US.pixman_transform_invert p

  transformBounds trans bounds = unsafePerformIO $
    withConstPtr trans $ \transP ->
      with bounds $ \boundsP -> do
        throwPixmanUnless1 "transformBounds" $ US.pixman_transform_bounds transP (coerce boundsP)
        peek boundsP

  multiplyTransform l r = unsafePerformIO $
    withConstPtr l $ \lc ->
      withConstPtr r $ \rc ->
        withNewForeignPtr (pure . Transform) $ \dst ->
          throwPixmanUnless1 "multiplyTransform" $ US.pixman_transform_multiply dst lc rc

  scaleTransform sx sy rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . Transform) at $ \t ->
      throwPixmanUnless1 "scaleTransform" $
        if rev
          then US.pixman_transform_scale nullPtr t (coerce sx) (coerce sy)
          else US.pixman_transform_scale t nullPtr (coerce sx) (coerce sy)

  translate sx sy rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . Transform) at $ \t ->
      throwPixmanUnless1 "translateTransform" $
        if rev
          then US.pixman_transform_translate nullPtr t (coerce sx) (coerce sy)
          else US.pixman_transform_translate t nullPtr (coerce sx) (coerce sy)

  rotate c s rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . Transform) at $ \t ->
      throwPixmanUnless1 "rotateTransform" $
        if rev
          then US.pixman_transform_rotate nullPtr t (coerce c) (coerce s)
          else US.pixman_transform_rotate t nullPtr (coerce c) (coerce s)

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

  transformMatrix at = unsafePerformIO $ do
    G.Pixman_transform mat <- withPtr at peek
    return $! map (map Fixed . CA.toList) $ CA.toList mat

instance IsTransform FTransform where
  type MatrixElem FTransform = Double

  identityTransform =
    unsafePerformIO $
      withNewForeignPtr (pure . FTransform) US.pixman_f_transform_init_identity
  {-# NOINLINE identityTransform #-}

  fromMatrix matrix = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $
      \p -> poke p $ G.Pixman_f_transform $ mkArray matrix
    where
      mkArray = CA.fromList . map (CA.fromList . map CDouble)

  fromRotation cos' sin' = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $
      \p -> US.pixman_f_transform_init_rotate p (CDouble cos') (CDouble sin')

  fromScale sx sy = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $
      \p -> US.pixman_f_transform_init_scale p (CDouble sx) (CDouble sy)

  fromTranslation tx ty = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $
      \p -> US.pixman_f_transform_init_translate p (CDouble tx) (CDouble ty)

  invertTransform x = unsafePerformIO $
    withConstPtr x $ \src ->
      withNewForeignPtr (pure . FTransform) $ \dst ->
        throwPixmanUnless1 "f_transform_invert" $ US.pixman_f_transform_invert dst src

  transformBounds trans bounds = unsafePerformIO $
    withConstPtr trans $ \transP ->
      with bounds $ \boundsP -> do
        throwPixmanUnless1 "f_transform_bounds" $ US.pixman_f_transform_bounds transP (coerce boundsP)
        peek boundsP

  multiplyTransform l r = unsafePerformIO $
    withConstPtr l $ \lc ->
      withConstPtr r $ \rc ->
        withNewForeignPtr (pure . FTransform) $ \dst ->
          US.pixman_f_transform_multiply dst lc rc

  scaleTransform sx sy rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . FTransform) at $ \t ->
      throwPixmanUnless1 "f_transform_scale" $
        if rev
          then US.pixman_f_transform_scale nullPtr t (CDouble sx) (CDouble sy)
          else US.pixman_f_transform_scale t nullPtr (CDouble sx) (CDouble sy)

  translate sx sy rev at = unsafePerformIO $
    withNewForeignPtrCopy (pure . FTransform) at $ \t ->
      throwPixmanUnless1 "f_transform_translate" $
        if rev
          then US.pixman_f_transform_translate nullPtr t (CDouble sx) (CDouble sy)
          else US.pixman_f_transform_translate t nullPtr (CDouble sx) (CDouble sy)

  rotate c s rev at = unsafePerformIO $
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

  transformMatrix at = unsafePerformIO $ do
    G.Pixman_f_transform mat <- withPtr at peek
    return $! map (map coerce . CA.toList) $ CA.toList mat

-- | Create new 'Transform' from a 'FTransform'.
fromFTransform :: FTransform -> Transform
fromFTransform ft = unsafePerformIO $
  withConstPtr ft $ \ftC ->
    withNewForeignPtr (pure . Transform) $ \p ->
      throwPixmanUnless1 "TransformConvertError" $ US.pixman_transform_from_pixman_f_transform p ftC

-- | Create new 'FTransform' from a 'Transform'. This could fail.
fromTransform :: Transform -> FTransform
fromTransform t = unsafePerformIO $
  withConstPtr t $ \tC ->
    withNewForeignPtr (pure . FTransform) $ \p ->
      US.pixman_f_transform_from_pixman_transform p tC

-- | Whether the transform represents an identity transform.
isIdentity :: Transform -> Bool
isIdentity ta =
  unsafePerformIO $
    withConstPtr ta $
      fmap fromPixmanBool . US.pixman_transform_is_identity

-- | Whether the transform contains a scale transform.
isScale :: Transform -> Bool
isScale ta =
  unsafePerformIO $
    withConstPtr ta $
      fmap fromPixmanBool . US.pixman_transform_is_scale

isIntTranslate :: Transform -> Bool
isIntTranslate ta =
  unsafePerformIO $
    withConstPtr ta $
      fmap fromPixmanBool . US.pixman_transform_is_int_translate

-- | Whether the transform represents an inverse transform.
isInverse :: Transform -> Transform -> Bool
isInverse at bt = unsafePerformIO $
  withConstPtr at $ \a ->
    withConstPtr bt $ fmap fromPixmanBool . US.pixman_transform_is_inverse a

-- * Regions

class (Typeable a, Eq a, IsBox (Box (RType a)), Show (Box (RType a))) => IsRegion a where
  type RType (a :: Type) :: RegionType

  -- | Initialize a new region.
  emptyRegion :: a

  -- | Initialize the region from the provided box.
  fromRect :: Position Int32 -> Size Word32 -> a

  -- | Initialize the region from the provided boxes
  fromRects :: [Box (RType a)] -> a

  -- | Initialize the region from the provided extents
  fromExtents :: Box (RType a) -> a

  -- | Convert bitmap clip mask into clipping region.
  --
  -- The image format has to be 'A1'.
  fromImage :: TypedImage A1 -> a

  -- | Is the region empty
  regionIsEmpty :: a -> Bool

  -- | Region's extents
  extents :: a -> Box (RType a)

  -- | Returns the rectangles in the region.
  rectangles :: a -> [Box (RType a)]

  -- | Number of rectangles in the region.
  regionNumRects :: a -> Int

  -- | Does a region contain the point?
  containsPoint :: Position Int32 -> Box (RType a) -> a -> Bool

  -- | Does the region contain the rectangle?
  containsRectangle :: Box (RType a) -> a -> Overlap

  -- | Take a region and a box and return a region that is everything in the box but not in the region.
  -- (This is the same as subtracting the region from the box.)
  inverseRegion :: Box (RType a) -> a -> a

  -- | Translate the region by specified amount
  translateRegion :: Position Int32 -> a -> a

  -- | Region equality
  eqRegion :: a -> a -> Bool

  -- | Subtract regions
  subtractRegion :: a -> a -> a

  -- | Union regions
  unionRegion :: a -> a -> a

  -- | Create union between a region and provided rectangle.
  --
  -- @unionRegionRect (x, y) (w, h) region@
  unionRegionRect :: Position Int32 -> Size Word32 -> a -> a

  -- | Intersect regions
  intersectRegion :: a -> a -> a

  -- | Intersect region with a rectangle.
  --
  -- @intersectRegionRect (x, y) (w, h) region@
  intersectRegionRect :: Position Int32 -> Size Word32 -> a -> a

  regionSelfCheck :: a -> Bool

  clearRegion :: a -> a

instance IsRegion (Region R16) where
  type RType Region16 = R16

  emptyRegion = unsafePerformIO $ withNewRegion16 US.pixman_region_init
  {-# NOINLINE emptyRegion #-}

  fromRect (x, y) (w, h) = unsafePerformIO $
    withNewRegion16 $ \p ->
      US.pixman_region_init_rect p (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  fromRects boxes = unsafePerformIO $
    withArrayLen (coerce boxes) $ \len boxesP ->
      withNewRegion16 $ \p ->
        throwPixmanUnless1 "region_init_rects" $
          US.pixman_region_init_rects p (ConstPtr boxesP) (fromIntegral len)

  fromExtents (Box16 exts) = unsafePerformIO $ withNewRegion16 $ \p ->
    with exts $ US.pixman_region_init_with_extents p . ConstPtr

  fromImage img = unsafePerformIO $ do
    when (imageFormat img /= A1) $ throwIO $ PixmanException "regionFromImage: image format needs to be A1"
    withNewRegion16 $ \p ->
      withPtr img $ US.pixman_region_init_from_image p

  regionIsEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region_empty

  extents reg = unsafePerformIO $ fmap Box16 $ withConstPtr reg US.pixman_region_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region_n_rects

  inverseRegion (Box16 box) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion16 $ \p ->
        throwPixmanUnless1 "region_inverse" $
          with box $
            US.pixman_region_inverse p reg' . ConstPtr

  containsPoint (x, y) (Box16 box) reg = unsafePerformIO $
    fmap fromPixmanBool $
      withConstPtr reg $ \reg' ->
        with box $ US.pixman_region_contains_point reg' (fromIntegral x) (fromIntegral y)

  containsRectangle (Box16 box) reg = unsafePerformIO $
    fmap Overlap $
      withConstPtr reg $ \reg' ->
        with box $ US.pixman_region_contains_rectangle reg' . ConstPtr

  rectangles reg = unsafePerformIO $ do
    n <- fromIntegral <$> withConstPtr reg US.pixman_region_n_rects
    fmap coerce $
      withConstPtr reg $ \reg' ->
        with (fromIntegral n) $ US.pixman_region_rectangles reg' >=> peekArray n

  eqRegion reg1 reg2 = unsafePerformIO $
    fmap fromPixmanBool $
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $
          US.pixman_region_equal reg1'

  translateRegion (x, y) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion16 $ \p -> do
        throwPixmanUnless1 "region_copy" $ US.pixman_region_copy p reg'
        US.pixman_region_translate p (fromIntegral x) (fromIntegral y)

  intersectRegion reg1 reg2 = unsafePerformIO $
    withNewRegion16 $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region_intersect" $
            US.pixman_region_intersect p reg1' reg2'

  subtractRegion reg1 reg2 = unsafePerformIO $
    withNewRegion16 $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region_subtract" $
            US.pixman_region_subtract p reg1' reg2'

  unionRegion reg1 reg2 = unsafePerformIO $
    withNewRegion16 $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region_union" $
            US.pixman_region_union p reg1' reg2'

  unionRegionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion16 $ \p ->
        throwPixmanUnless1 "region_union_rect" $
          US.pixman_region_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  intersectRegionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion16 $ \p ->
        throwPixmanUnless1 "region_intersect_rect" $
          US.pixman_region_intersect_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  clearRegion reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion16 $ \p -> do
        throwPixmanUnless1 "region_copy" $ US.pixman_region_copy p reg'
        US.pixman_region_clear p

  regionSelfCheck reg = unsafePerformIO $ fromPixmanBool <$> withPtr reg US.pixman_region_selfcheck

instance IsRegion (Region R32) where
  type RType Region32 = R32

  emptyRegion = unsafePerformIO $ withNewRegion32 US.pixman_region32_init
  {-# NOINLINE emptyRegion #-}

  fromRect (x, y) (w, h) = unsafePerformIO $
    withNewRegion32 $ \p ->
      US.pixman_region32_init_rect p (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  fromRects boxes = unsafePerformIO $
    withArrayLen (coerce boxes) $ \len boxesP ->
      withNewRegion32 $ \p ->
        throwPixmanUnless1 "region32_init_rects" $
          US.pixman_region32_init_rects p (ConstPtr boxesP) (fromIntegral len)

  fromExtents (Box32 exts) = unsafePerformIO $
    withNewRegion32 $ \p ->
      with exts $ US.pixman_region32_init_with_extents p . ConstPtr

  fromImage img = unsafePerformIO $ do
    when (imageFormat img /= A1) $ throwIO $ PixmanException "regionFromImage: image format needs to be A1"
    withNewRegion32 $ \p ->
      withPtr img $ US.pixman_region32_init_from_image p

  regionIsEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region32_empty

  extents reg = unsafePerformIO $ fmap Box32 $ withConstPtr reg US.pixman_region32_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region32_n_rects

  inverseRegion (Box32 box) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion32 $ \p ->
        with box $
          throwPixmanUnless1 "region32_inverse"
            . US.pixman_region32_inverse p reg'
            . ConstPtr

  containsPoint (x, y) (Box32 box) reg = unsafePerformIO $
    fmap fromPixmanBool $
      withConstPtr reg $ \reg' ->
        with box $
          US.pixman_region32_contains_point reg' (fromIntegral x) (fromIntegral y)

  containsRectangle (Box32 box) reg = unsafePerformIO $
    fmap Overlap $
      withConstPtr reg $ \reg' ->
        with box $
          US.pixman_region32_contains_rectangle reg' . ConstPtr

  rectangles reg = unsafePerformIO $ do
    n <- fromIntegral <$> withConstPtr reg US.pixman_region32_n_rects
    fmap coerce $
      withConstPtr reg $ \reg' ->
        with (fromIntegral n) $
          US.pixman_region32_rectangles reg' >=> peekArray n

  eqRegion reg1 reg2 = unsafePerformIO $
    fmap fromPixmanBool $
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $
          US.pixman_region32_equal reg1'

  translateRegion (x, y) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion32 $ \p -> do
        throwPixmanUnless1 "region32_copy" $ US.pixman_region32_copy p reg'
        US.pixman_region32_translate p (fromIntegral x) (fromIntegral y)

  intersectRegion reg1 reg2 = unsafePerformIO $
    withNewRegion32 $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region32_intersect" $
            US.pixman_region32_intersect p reg1' reg2'

  subtractRegion reg1 reg2 = unsafePerformIO $
    withNewRegion32 $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region32_subtract" $
            US.pixman_region32_subtract p reg1' reg2'

  unionRegion reg1 reg2 = unsafePerformIO $
    withNewRegion32 $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region32_union" $
            US.pixman_region32_union p reg1' reg2'

  unionRegionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion32 $ \p ->
        throwPixmanUnless1 "region32_union_rect" $
          US.pixman_region32_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  intersectRegionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion32 $ \p ->
        throwPixmanUnless1 "region32_intersect_rect" $
          US.pixman_region32_intersect_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  clearRegion reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion32 $ \p -> do
        throwPixmanUnless1 "region_copy" $ US.pixman_region32_copy p reg'
        US.pixman_region32_clear p

  regionSelfCheck reg = unsafePerformIO $ fromPixmanBool <$> withPtr reg US.pixman_region32_selfcheck

instance IsRegion (Region R64F) where
  type RType Region64F = R64F

  emptyRegion = unsafePerformIO $ withNewRegion64F US.pixman_region64f_init
  {-# NOINLINE emptyRegion #-}

  fromRect (x, y) (w, h) = unsafePerformIO $
    withNewRegion64F $ \p ->
      US.pixman_region64f_init_rect p (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  fromRects boxes = unsafePerformIO $
    withArrayLen (coerce boxes) $ \len boxesP ->
      withNewRegion64F $ \p ->
        throwPixmanUnless1 "region64f_init_rects" $
          US.pixman_region64f_init_rects p (ConstPtr boxesP) (fromIntegral len)

  fromExtents (Box64F exts) = unsafePerformIO $
    withNewRegion64F $ \p ->
      with exts $ US.pixman_region64f_init_with_extents p . ConstPtr

  fromImage img = unsafePerformIO $ do
    when (imageFormat img /= A1) $ throwIO $ PixmanException "regionFromImage: image format needs to be A1"
    withNewRegion64F $ \p ->
      withPtr img $ US.pixman_region64f_init_from_image p

  regionIsEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region64f_empty

  extents reg = unsafePerformIO $ fmap Box64F $ withConstPtr reg US.pixman_region64f_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region64f_n_rects

  inverseRegion (Box64F box) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion64F $ \p ->
        with box $
          throwPixmanUnless1 "region64f_inverse"
            . US.pixman_region64f_inverse p reg'
            . ConstPtr

  containsPoint (x, y) (Box64F box) reg = unsafePerformIO $
    fmap fromPixmanBool $
      withConstPtr reg $ \reg' ->
        with box $
          US.pixman_region64f_contains_point reg' (fromIntegral x) (fromIntegral y)

  containsRectangle (Box64F box) reg = unsafePerformIO $
    fmap Overlap $
      withConstPtr reg $ \reg' ->
        with box $
          US.pixman_region64f_contains_rectangle reg' . ConstPtr

  rectangles reg = unsafePerformIO $ do
    n <- fromIntegral <$> withConstPtr reg US.pixman_region64f_n_rects
    fmap coerce $
      withConstPtr reg $ \reg' ->
        with (fromIntegral n) $
          US.pixman_region64f_rectangles reg' >=> peekArray n

  eqRegion reg1 reg2 = unsafePerformIO $
    fmap fromPixmanBool $
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $
          US.pixman_region64f_equal reg1'

  translateRegion (x, y) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion64F $ \p -> do
        throwPixmanUnless1 "region64f_copy" $ US.pixman_region64f_copy p reg'
        US.pixman_region64f_translate p (fromIntegral x) (fromIntegral y)

  intersectRegion reg1 reg2 = unsafePerformIO $
    withNewRegion64F $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region64f_intersect" $
            US.pixman_region64f_intersect p reg1' reg2'

  subtractRegion reg1 reg2 = unsafePerformIO $
    withNewRegion64F $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region64f_subtract" $
            US.pixman_region64f_subtract p reg1' reg2'

  unionRegion reg1 reg2 = unsafePerformIO $
    withNewRegion64F $ \p ->
      withConstPtr reg1 $ \reg1' ->
        withConstPtr reg2 $ \reg2' ->
          throwPixmanUnless1 "region64f_union" $
            US.pixman_region64f_union p reg1' reg2'

  unionRegionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion64F $ \p ->
        throwPixmanUnless1 "region64f_union_rect" $
          US.pixman_region64f_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  intersectRegionRect (x, y) (w, h) reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion64F $ \p ->
        throwPixmanUnless1 "region64f_intersect_rect" $
          US.pixman_region64f_intersect_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  clearRegion reg = unsafePerformIO $
    withConstPtr reg $ \reg' ->
      withNewRegion64F $ \p -> do
        throwPixmanUnless1 "region_copy" $ US.pixman_region64f_copy p reg'
        US.pixman_region64f_clear p

  regionSelfCheck reg = unsafePerformIO $ fromPixmanBool <$> withPtr reg US.pixman_region64f_selfcheck

withNewRegion16 :: (Ptr G.Pixman_region16_t -> IO ()) -> IO Region16
withNewRegion16 = withNewForeignPtr $ \fp -> do
  addForeignPtrFinalizer FP.pixman_region_fini fp
  return (Region16 fp)

withNewRegion32 :: (Ptr G.Pixman_region32_t -> IO ()) -> IO Region32
withNewRegion32 = withNewForeignPtr $ \fp -> do
  addForeignPtrFinalizer FP.pixman_region32_fini fp
  return (Region32 fp)

withNewRegion64F :: (Ptr G.Pixman_region64f_t -> IO ()) -> IO Region64F
withNewRegion64F = withNewForeignPtr $ \fp -> do
  addForeignPtrFinalizer FP.pixman_region64f_fini fp
  return (Region64F fp)

-- ** Floating point region functions

-- | Like 'regionFromRect' but takes float dimensions. Initialize the region from floating-point box.
regionFromRectF :: Position Double -> Size Double -> Region R64F
regionFromRectF (x, y) (w, h) = unsafePerformIO $ withNewRegion64F $ \p ->
  US.pixman_region64f_init_rectf p (coerce x) (coerce y) (coerce w) (coerce h)

-- | Like 'translateRegion' but takes float dimensions.
translateRegionF :: Position Double -> Region R64F -> Region R64F
translateRegionF (x, y) reg = unsafePerformIO $
  withConstPtr reg $ \reg' ->
    withNewRegion64F $ \p -> do
      throwPixmanUnless1 "region64f_copy" $ US.pixman_region64f_copy p reg'
      US.pixman_region64f_translatef p (CDouble x) (CDouble y)

-- | Like 'unionRegionRect' but takes a float rectangle.
unionRegionRectF :: Position Double -> Size Double -> Region R64F -> Region R64F
unionRegionRectF (x, y) (w, h) reg = unsafePerformIO $
  withConstPtr reg $ \reg' ->
    withNewRegion64F $ \p ->
      throwPixmanUnless1 "region64f_union_rectf" $
        US.pixman_region64f_union_rectf p reg' (coerce x) (coerce y) (coerce w) (coerce h)

-- | Like 'intersectRegionRect' but takes a float rectangle.
intersectRegionRectF :: Position Double -> Size Double -> Region R64F -> Region R64F
intersectRegionRectF (x, y) (w, h) reg = unsafePerformIO $
  withConstPtr reg $ \reg' ->
    withNewRegion64F $ \p ->
      throwPixmanUnless1 "region64f_intersect_rectf" $
        US.pixman_region64f_intersect_rectf p reg' (coerce x) (coerce y) (coerce w) (coerce h)

-- | Like 'containsPoint' but takes float dimensions.
containsPointF :: Position Double -> Box R64F -> Region R64F -> Bool
containsPointF (x, y) (Box64F box) reg = unsafePerformIO $
  fmap fromPixmanBool $
    withConstPtr reg $ \reg' ->
      with box $ US.pixman_region64f_contains_pointf reg' (coerce x) (coerce y)

-- * Boxes

data family Box (a :: RegionType)

type Box16 = Box R16
type Box32 = Box R32
type Box64F = Box R64F

-- | 16-bit box
newtype instance Box R16 = Box16 {unwrap :: G.Pixman_box16_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

-- | 32-bit box
newtype instance Box R32 = Box32 {unwrap :: G.Pixman_box32_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

-- | 64-bit floating-point box
newtype instance Box R64F = Box64F {unwrap :: G.Pixman_box64f_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

class (Show a, Eq a, Eq (PositionScalar a), Show (PositionScalar a), Num (PositionScalar a)) => IsBox a where
  -- | @mkBox (x1, y1) (x2, y2)@
  mkBox :: Position (PositionScalar a) -> Position (PositionScalar a) -> a

  mkBox' :: PositionScalar a -> PositionScalar a -> PositionScalar a -> PositionScalar a -> a
  mkBox' x1 y1 x2 y2 = mkBox (x1, y1) (x2, y2)

  -- | Get the @(x1, y1), (x2, y2)@
  boxPoints :: a -> (Position (PositionScalar a), Position (PositionScalar a))

instance IsBox (Box R16) where
  mkBox (x1, y1) (x2, y2)
    | x1 <= x2 && y1 <= y2 = Box16 $! G.Pixman_box16_t $! G.Pixman_box16 x1 y1 x2 y2
    | otherwise = error "Box: invalid dimensions"
  boxPoints (Box16 (G.Pixman_box16_t (G.Pixman_box16 x1 y1 x2 y2))) = ((x1, y1), (x2, y2))

instance IsBox (Box R32) where
  mkBox (x1, y1) (x2, y2)
    | x1 <= x2 && y1 <= y2 = Box32 $! G.Pixman_box32_t x1 y1 x2 y2
    | otherwise = error "Box: invalid dimensions"
  boxPoints (Box32 (G.Pixman_box32_t x1 y1 x2 y2)) = ((x1, y1), (x2, y2))

instance IsBox (Box R64F) where
  mkBox (x1, y1) (x2, y2)
    | x1 <= x2 && y1 <= y2 = Box64F $! G.Pixman_box64f_t (coerce x1) (coerce y1) (coerce x2) (coerce y2)
    | otherwise = error "Box: invalid dimensions"
  boxPoints (Box64F (G.Pixman_box64f_t x1 y1 x2 y2)) = ((coerce x1, coerce y1), (coerce x2, coerce y2))

instance (Typeable a, IsBox (Box a), PrintfArg (PositionScalar (Box a))) => Show (Box a) where
  show box = printf "Box[%s]{" (show $ typeOf box) ++ show [x1, y1, x2, y2] ++ "}"
    where
      ((x1, y1), (x2, y2)) = boxPoints box

-- * Rectangles

class (Show a, Eq a) => IsRectangle a where
  -- | @mkRectangle (x, y) (w, h)@
  mkRectangle :: Position (PositionScalar a) -> Size (SizeScalar a) -> a

  mkRect' :: PositionScalar a -> PositionScalar a -> SizeScalar a -> SizeScalar a -> a
  mkRect' x y w h = mkRectangle (x, y) (w, h)

  rectanglePosition :: a -> Position (PositionScalar a)
  rectanglePosition r = (rectangleX r, rectangleY r)

  rectangleSize :: a -> Size (SizeScalar a)
  rectangleSize r = (rectangleWidth r, rectangleHeight r)

  rectangleX :: a -> PositionScalar a
  rectangleY :: a -> PositionScalar a
  rectangleWidth :: a -> SizeScalar a
  rectangleHeight :: a -> SizeScalar a

data family Rectangle (a :: RegionType) :: Type

type Rectangle16 = Rectangle R16
type Rectangle32 = Rectangle R32
type Rectangle64F = Rectangle R64F

---- | 16-bit rectangle
newtype instance Rectangle R16 = Rectangle16 {unwrap :: G.Pixman_rectangle16_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

---- | 32-bit rectangle
newtype instance Rectangle R32 = Rectangle32 {unwrap :: G.Pixman_rectangle32_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

---- | 64-bit floating-point rectangle
newtype instance Rectangle R64F = Rectangle64F {unwrap :: G.Pixman_rectangle64f_t}
  deriving stock (Eq, Generic)
  deriving newtype (Storable, RIP.StaticSize, RIP.ReadRaw, RIP.WriteRaw)

instance IsRectangle (Rectangle R16) where
  mkRectangle (x, y) (w, h) = Rectangle16 $! G.Pixman_rectangle16_t x y w h
  rectangleX = getField @"x" . getField @"unwrap"
  rectangleY = getField @"y" . getField @"unwrap"
  rectangleWidth = getField @"width" . getField @"unwrap"
  rectangleHeight = getField @"height" . getField @"unwrap"

instance IsRectangle (Rectangle R32) where
  mkRectangle (x, y) (w, h) = Rectangle32 $! G.Pixman_rectangle32_t x y w h
  rectangleX = getField @"x" . getField @"unwrap"
  rectangleY = getField @"y" . getField @"unwrap"
  rectangleWidth = getField @"width" . getField @"unwrap"
  rectangleHeight = getField @"height" . getField @"unwrap"

instance IsRectangle (Rectangle R64F) where
  mkRectangle (x, y) (w, h) = Rectangle64F $! G.Pixman_rectangle64f_t (coerce x) (coerce y) (coerce w) (coerce h)
  rectangleX = coerce . getField @"x" . getField @"unwrap"
  rectangleY = coerce . getField @"y" . getField @"unwrap"
  rectangleWidth = coerce . getField @"width" . getField @"unwrap"
  rectangleHeight = coerce . getField @"height" . getField @"unwrap"

instance
  forall (a :: RegionType).
  (Typeable a, IsRectangle (Rectangle a), Show (PositionScalar (Rectangle a)), Show (SizeScalar (Rectangle a))) =>
  Show (Rectangle a)
  where
  show rect = printf "Rectangle[%s]{x=%s,y=%s,width=%s,height=%s}" (show $ typeOf rect) (show x) (show y) (show width) (show height)
    where
      (x, y) = rectanglePosition rect
      (width, height) = rectangleSize rect

-- * Functions

-- | @(bits, stride, bpp, (x, y))@
type PaintTarget = (Ptr Word32, Int, Int, Position Int)

-- | Blit the src into the dst with the specified values.
--
-- @blit src dst (w, h)@
blit :: PaintTarget -> PaintTarget -> Size Int -> IO ()
blit (src, s_stride, s_bpp, (s_x, s_y)) (dst, d_stride, d_bpp, (d_x, d_y)) (w, h) =
  throwPixmanUnless1 "blit failed" $
    US.pixman_blt
      src
      dst
      (fromIntegral s_stride)
      (fromIntegral d_stride)
      (fromIntegral s_bpp)
      (fromIntegral d_bpp)
      (fromIntegral s_x)
      (fromIntegral s_y)
      (fromIntegral d_x)
      (fromIntegral d_y)
      (fromIntegral w)
      (fromIntegral h)

-- | Fill the provided bits with the provided values.
--
-- @fill dst (w, h) filler@
fill :: PaintTarget -> Size Int -> Word32 -> IO ()
fill (bits, stride, bpp, (x, y)) (w, h) filler =
  throwPixmanUnless1 "fill failed" $
    US.pixman_fill
      bits
      (fromIntegral stride)
      (fromIntegral bpp)
      (fromIntegral x)
      (fromIntegral y)
      (fromIntegral w)
      (fromIntegral h)
      filler

-- | Compute the smallest value greater than or equal to y which is on a grid row.
--
-- @sampleCeilY y bpp@
sampleCeilY :: Fixed -> Int -> Fixed
sampleCeilY y bpp = unsafePerformIO $ coerce <$> US.pixman_sample_ceil_y (coerce y) (fromIntegral bpp)

-- | Compute the largest value strictly less than y which is on a grid row.
--
-- @sampleFloorY y bpp@
sampleFloorY :: Fixed -> Int -> Fixed
sampleFloorY y bpp = unsafePerformIO $ coerce <$> US.pixman_sample_floor_y (coerce y) (fromIntegral bpp)

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

withNewForeignPtr ::
  (Storable a) => (ForeignPtr a -> IO b) -> (Ptr a -> IO ()) -> IO b
withNewForeignPtr f g = do
  fp <- mallocForeignPtr
  withForeignPtr fp g
  f fp

withNewForeignPtrCopy ::
  (Storable a, HasField "unwrap" a' (ForeignPtr a)) =>
  (ForeignPtr a -> IO b) -> a' -> (Ptr a -> IO ()) -> IO b
withNewForeignPtrCopy f x g = withNewForeignPtr f $ \p -> do
  poke p =<< withPtr x peek
  g p

withPtr :: (HasField "unwrap" r (ForeignPtr a)) => r -> (Ptr a -> IO b) -> IO b
withPtr x = withForeignPtr (getField @"unwrap" x)

withImagePtr :: (IsImage r) => r -> (Ptr G.Pixman_image_t -> IO a) -> IO a
withImagePtr = withPtr . toImage

withConstPtr :: (HasField "unwrap" r (ForeignPtr a)) => r -> (ConstPtr a -> IO b) -> IO b
withConstPtr x f = withForeignPtr (getField @"unwrap" x) $ f . ConstPtr

fromPixmanBool :: G.Pixman_bool_t -> Bool
fromPixmanBool x = getField @"unwrap" x == 1

toPixmanBool :: Bool -> G.Pixman_bool_t
toPixmanBool b = if b then 1 else 0

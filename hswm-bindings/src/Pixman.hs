{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DerivingVia #-}
{-# OPTIONS_GHC -Wno-orphans #-}

-- |
-- Module      : Pixman
-- Description : Higher-level Pixman API
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Pixman
  -- * Exceptions
  ( PixmanException(..)

  -- * Image
  , Image
  , CreateImage
  , toImage
  --, ImageMut
  --, toImageMut
  , newImage
  , imageWithBits
  , solidImage
  -- ** Creation
  , ImageOperation(..)
  , (+$)
  , imageSetTransform
  , imageSetRepeat
  , imageSetFilter
  , imageSetFilter'
  , imageComposite
  , imageComposite32
  , imageComposite64F
  , ImageCompositeParams(..)
  -- ** Properties
  , IsImage(Ret)
  , imageWidth
  , imageHeight
  , imageDepth
  , imageStride
  , imageFormat
  , imageComponentAlpha
  , imageData

  -- * Transforms
  , Transform
  , FTransform
  , IsTransform(..)
  -- ** Conversion
  , fromFTransform
  , fromTransform
  -- ** Transform Predicates
  , transformIsIdentity
  , transformIsScale
  , transformIsIntTranslate
  , transformIsInverse

  -- * Colors
  , Color
  , IsColor(..)
  , colorFromParts
  , ColorComponent(..)

  -- * Vectors
  -- ** Vector
  , Vector
  , vector
  , vectorFromArray
  -- ** FVector
  , FVector
  , fvector
  , fvectorFromArray

  -- * Regions
  , Region16
  , Region32
  , Region64F
  , IsRegion(..)

  -- * Boxes
  , box16
  , box32
  , box64F
  , Box16
  , Box32
  , Box64F

  -- * Rectangles
  , rectangle16
  , rectangle32
  , rectangle64F
  , Rectangle16
  , Rectangle32
  , Rectangle64F

  -- * Functions
  , blt
  , fill
  , computeCompositeRegion

  -- * Formats
  , FormatCode
  , FormatType(..)
  , allFormats
  , formatBPP
  , formatDepth
  , formatColor
  , formatType
  , formatSupportedDest
  , formatSupportedSource
  , pattern G.PIXMAN_rgba_float
  , pattern G.PIXMAN_rgb_float
  , pattern G.PIXMAN_a16b16g16r16
  , pattern G.PIXMAN_a8r8g8b8
  , pattern G.PIXMAN_x8r8g8b8
  , pattern G.PIXMAN_a8b8g8r8
  , pattern G.PIXMAN_x8b8g8r8
  , pattern G.PIXMAN_b8g8r8a8
  , pattern G.PIXMAN_b8g8r8x8
  , pattern G.PIXMAN_r8g8b8a8
  , pattern G.PIXMAN_r8g8b8x8
  , pattern G.PIXMAN_x14r6g6b6
  , pattern G.PIXMAN_x2r10g10b10
  , pattern G.PIXMAN_a2r10g10b10
  , pattern G.PIXMAN_x2b10g10r10
  , pattern G.PIXMAN_a2b10g10r10
  , pattern G.PIXMAN_a8r8g8b8_sRGB
  , pattern G.PIXMAN_r8g8b8_sRGB
  , pattern G.PIXMAN_r8g8b8
  , pattern G.PIXMAN_b8g8r8
  , pattern G.PIXMAN_r5g6b5
  , pattern G.PIXMAN_b5g6r5
  , pattern G.PIXMAN_a1r5g5b5
  , pattern G.PIXMAN_x1r5g5b5
  , pattern G.PIXMAN_a1b5g5r5
  , pattern G.PIXMAN_x1b5g5r5
  , pattern G.PIXMAN_a4r4g4b4
  , pattern G.PIXMAN_x4r4g4b4
  , pattern G.PIXMAN_a4b4g4r4
  , pattern G.PIXMAN_x4b4g4r4
  , pattern G.PIXMAN_a8
  , pattern G.PIXMAN_r3g3b2
  , pattern G.PIXMAN_b2g3r3
  , pattern G.PIXMAN_a2r2g2b2
  , pattern G.PIXMAN_a2b2g2r2
  , pattern G.PIXMAN_c8
  , pattern G.PIXMAN_g8
  , pattern G.PIXMAN_x4a4
  , pattern G.PIXMAN_x4c4
  , pattern G.PIXMAN_x4g4
  , pattern G.PIXMAN_a4
  , pattern G.PIXMAN_r1g2b1
  , pattern G.PIXMAN_b1g2r1
  , pattern G.PIXMAN_a1r1g1b1
  , pattern G.PIXMAN_a1b1g1r1
  , pattern G.PIXMAN_c4
  , pattern G.PIXMAN_g4
  , pattern G.PIXMAN_a1
  , pattern G.PIXMAN_g1
  , pattern G.PIXMAN_yuy2
  , pattern G.PIXMAN_yv12

  -- * Operations
  , Operation
  , pattern G.PIXMAN_OP_CLEAR
  , pattern G.PIXMAN_OP_SRC
  , pattern G.PIXMAN_OP_DST
  , pattern G.PIXMAN_OP_OVER
  , pattern G.PIXMAN_OP_OVER_REVERSE
  , pattern G.PIXMAN_OP_IN
  , pattern G.PIXMAN_OP_IN_REVERSE
  , pattern G.PIXMAN_OP_OUT
  , pattern G.PIXMAN_OP_OUT_REVERSE
  , pattern G.PIXMAN_OP_ATOP
  , pattern G.PIXMAN_OP_ATOP_REVERSE
  , pattern G.PIXMAN_OP_XOR
  , pattern G.PIXMAN_OP_ADD
  , pattern G.PIXMAN_OP_SATURATE
  , pattern G.PIXMAN_OP_DISJOINT_CLEAR
  , pattern G.PIXMAN_OP_DISJOINT_SRC
  , pattern G.PIXMAN_OP_DISJOINT_DST
  , pattern G.PIXMAN_OP_DISJOINT_OVER
  , pattern G.PIXMAN_OP_DISJOINT_OVER_REVERSE
  , pattern G.PIXMAN_OP_DISJOINT_IN
  , pattern G.PIXMAN_OP_DISJOINT_IN_REVERSE
  , pattern G.PIXMAN_OP_DISJOINT_OUT
  , pattern G.PIXMAN_OP_DISJOINT_OUT_REVERSE
  , pattern G.PIXMAN_OP_DISJOINT_ATOP
  , pattern G.PIXMAN_OP_DISJOINT_ATOP_REVERSE
  , pattern G.PIXMAN_OP_DISJOINT_XOR
  , pattern G.PIXMAN_OP_CONJOINT_CLEAR
  , pattern G.PIXMAN_OP_CONJOINT_SRC
  , pattern G.PIXMAN_OP_CONJOINT_DST
  , pattern G.PIXMAN_OP_CONJOINT_OVER
  , pattern G.PIXMAN_OP_CONJOINT_OVER_REVERSE
  , pattern G.PIXMAN_OP_CONJOINT_IN
  , pattern G.PIXMAN_OP_CONJOINT_IN_REVERSE
  , pattern G.PIXMAN_OP_CONJOINT_OUT
  , pattern G.PIXMAN_OP_CONJOINT_OUT_REVERSE
  , pattern G.PIXMAN_OP_CONJOINT_ATOP
  , pattern G.PIXMAN_OP_CONJOINT_ATOP_REVERSE
  , pattern G.PIXMAN_OP_CONJOINT_XOR
  , pattern G.PIXMAN_OP_MULTIPLY
  , pattern G.PIXMAN_OP_SCREEN
  , pattern G.PIXMAN_OP_OVERLAY
  , pattern G.PIXMAN_OP_DARKEN
  , pattern G.PIXMAN_OP_LIGHTEN
  , pattern G.PIXMAN_OP_COLOR_DODGE
  , pattern G.PIXMAN_OP_COLOR_BURN
  , pattern G.PIXMAN_OP_HARD_LIGHT
  , pattern G.PIXMAN_OP_SOFT_LIGHT
  , pattern G.PIXMAN_OP_DIFFERENCE
  , pattern G.PIXMAN_OP_EXCLUSION
  , pattern G.PIXMAN_OP_HSL_HUE
  , pattern G.PIXMAN_OP_HSL_SATURATION
  , pattern G.PIXMAN_OP_HSL_COLOR
  , pattern G.PIXMAN_OP_HSL_LUMINOSITY

  -- * Misc. Types
  , Filter(..)
  , Repeat(..)
  , Overlap(..)
  , Dither(..)
  , Fixed
  , Indexed
  , Triangle
  , Trap
  , Trapezoid

  -- * Re-exports
  , def
  , Int32
  ) where

import qualified Bindings.Pixman.Generated as G
import qualified Bindings.Pixman.Generated.Unsafe as US
import qualified Bindings.Pixman.Generated.FunPtr as FP
import qualified HsBindgen.Runtime.ConstantArray as CA
import qualified HsBindgen.Runtime.CEnum as CE

import Data.Default
import Data.Coerce
import Control.Exception
import Control.Monad
import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import System.IO.Unsafe
import GHC.Records
import Data.Kind (Type)
import GHC.Generics
import GHC.Float

-- * Types

newtype PixmanException = PixmanException String
  deriving (Eq, Ord, Show)

instance Exception PixmanException

-- | 16-bit region
newtype Region16 = Region16 { unwrap :: ForeignPtr G.Pixman_region16_t }
  deriving (Ord, Generic)

instance Show Region16 where
  show reg = "Region16{extents=" ++ show ext ++ ", numRects=" ++ show numRects ++ ", rects=" ++ show rects ++ "}"
    where ext = regionExtents reg
          numRects = regionNumRects reg
          rects = regionRectangles reg numRects

-- | 32-bit region
newtype Region32 = Region32 { unwrap :: ForeignPtr G.Pixman_region32_t }
  deriving (Ord, Generic)

instance Show Region32 where
  show reg = "Region32{extents=" ++ show ext ++ ", numRects=" ++ show numRects ++ ", rects=" ++ show rects ++ "}"
    where ext = regionExtents reg
          numRects = regionNumRects reg
          rects = regionRectangles reg numRects

-- | 64-bit (floating-point) region
newtype Region64F = Region64F { unwrap :: ForeignPtr G.Pixman_region64f_t }
  deriving (Ord, Generic)

instance Show Region64F where
  show reg = "Region64F{extents=" ++ show ext ++ ", numRects=" ++ show numRects ++ ", rects=" ++ show rects ++ "}"
    where ext = regionExtents reg
          numRects = regionNumRects reg
          rects = regionRectangles reg numRects

-- | Fixed-point transform
newtype Transform = Transform { unwrap :: ForeignPtr G.Pixman_transform }
  deriving (Eq, Ord, Generic)

instance Show Transform where
  show tr = "Transform{" ++ show (map (map fromEnum . CA.toList) $ CA.toList mat) ++ "}"
    where G.Pixman_transform mat = unsafePerformIO (withPtr tr peek)

-- | Floating-point transform
newtype FTransform = FTransform { unwrap :: ForeignPtr G.Pixman_f_transform }
  deriving (Eq, Ord, Generic)

instance Show FTransform where
  show tr = "FTransform{" ++ show (map CA.toList $ CA.toList mat) ++ "}"
    where G.Pixman_f_transform mat = unsafePerformIO (withPtr tr peek)

-- | RGBA color of 'Word16' precision
type Color = G.Pixman_color_t

-- | A single vector
type Vector = G.Pixman_vector

-- | Floating-point vector
type FVector = G.Pixman_f_vector

-- | 16-bit box
newtype Box16 = Box16 { unwrap :: G.Pixman_box16_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable)

instance HasField "x1" Box16 Int16 where getField = getField @"x1" . getField @"unwrap" . getField @"unwrap"
instance HasField "y1" Box16 Int16 where getField = getField @"y1" . getField @"unwrap" . getField @"unwrap"
instance HasField "x2" Box16 Int16 where getField = getField @"x2" . getField @"unwrap" . getField @"unwrap"
instance HasField "y2" Box16 Int16 where getField = getField @"y2" . getField @"unwrap" . getField @"unwrap"

instance Show Box16 where
  show box = "Box16{" ++ show [getField @"x1" box, getField @"y1" box, getField @"x2" box, getField @"y2" box] ++ "}"

-- | 32-bit box
newtype Box32 = Box32 { unwrap :: G.Pixman_box32_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable)

instance HasField "x1" Box32 Int32 where getField = getField @"x1" . getField @"unwrap"
instance HasField "y1" Box32 Int32 where getField = getField @"y1" . getField @"unwrap"
instance HasField "x2" Box32 Int32 where getField = getField @"x2" . getField @"unwrap"
instance HasField "y2" Box32 Int32 where getField = getField @"y2" . getField @"unwrap"

instance Show Box32 where
  show box = "Box32{" ++ show [getField @"x1" box, getField @"y1" box, getField @"x2" box, getField @"y2" box] ++ "}"

-- | 64-bit floating-point box
newtype Box64F = Box64F { unwrap :: G.Pixman_box64f_t }
  deriving stock (Eq, Generic)
  deriving newtype (Storable)

instance HasField "x1" Box64F Double where getField = coerce . getField @"x1" . getField @"unwrap"
instance HasField "y1" Box64F Double where getField = coerce . getField @"y1" . getField @"unwrap"
instance HasField "x2" Box64F Double where getField = coerce . getField @"x2" . getField @"unwrap"
instance HasField "y2" Box64F Double where getField = coerce . getField @"y2" . getField @"unwrap"

instance Show Box64F where
  show box = "Box64F{" ++ show [getField @"x1" box, getField @"y1" box, getField @"x2" box, getField @"y2" box] ++ "}"

-- | 16-bit rectangle
type Rectangle16 = G.Pixman_rectangle16_t

-- | 32-bit rectangle
type Rectangle32 = G.Pixman_rectangle32_t

-- | 64-bit floating-point rectangle
type Rectangle64F = G.Pixman_rectangle64f_t

-- | Fixed-point value
type Fixed = G.Pixman_fixed_t

type Indexed = G.Pixman_indexed_t

-- | A triangle
type Triangle = G.Pixman_triangle_t

-- | A single trap
type Trap = G.Pixman_trap_t

-- | A trapezoid
type Trapezoid = G.Pixman_trapezoid_t

-- | Possible format codes
type FormatCode = G.Pixman_format_code_t

deriving via (CE.AsCEnum G.Pixman_format_code_t) instance Bounded G.Pixman_format_code_t
deriving via (CE.AsCEnum G.Pixman_format_code_t) instance Enum G.Pixman_format_code_t

data FormatType
  = TypeOther        -- ^ @PIXMAN_TYPE_OTHER       0 @
  | TypeA            -- ^ @PIXMAN_TYPE_A           1 @
  | TypeARGB         -- ^ @PIXMAN_TYPE_ARGB        2 @
  | TypeABGR         -- ^ @PIXMAN_TYPE_ABGR        3 @
  | TypeColor        -- ^ @PIXMAN_TYPE_COLOR       4 @
  | TypeGray         -- ^ @PIXMAN_TYPE_GRAY        5 @
  | TypeYUY2         -- ^ @PIXMAN_TYPE_YUY2        6 @
  | TypeYV12         -- ^ @PIXMAN_TYPE_YV12        7 @
  | TypeBGRA         -- ^ @PIXMAN_TYPE_BGRA        8 @
  | TypeRGBA         -- ^ @PIXMAN_TYPE_RGBA        9 @
  | TypeARGBsRGB     -- ^ @PIXMAN_TYPE_ARGB_SRGB   10@
  | TypeRGBAFloat    -- ^ @PIXMAN_TYPE_RGBA_FLOAT  11@
  deriving (Eq, Bounded, Ord, Show, Read, Generic)

formatTypes :: [(FormatType, CInt)]
formatTypes =
  [(TypeOther     , G.pIXMAN_TYPE_OTHER     ) --  0
  ,(TypeA         , G.pIXMAN_TYPE_A         ) --  1
  ,(TypeARGB      , G.pIXMAN_TYPE_ARGB      ) --  2
  ,(TypeABGR      , G.pIXMAN_TYPE_ABGR      ) --  3
  ,(TypeColor     , G.pIXMAN_TYPE_COLOR     ) --  4
  ,(TypeGray      , G.pIXMAN_TYPE_GRAY      ) --  5
  ,(TypeYUY2      , G.pIXMAN_TYPE_YUY2      ) --  6
  ,(TypeYV12      , G.pIXMAN_TYPE_YV12      ) --  7
  ,(TypeBGRA      , G.pIXMAN_TYPE_BGRA      ) --  8
  ,(TypeRGBA      , G.pIXMAN_TYPE_RGBA      ) --  9
  ,(TypeARGBsRGB  , G.pIXMAN_TYPE_ARGB_SRGB ) --  10
  ,(TypeRGBAFloat , G.pIXMAN_TYPE_RGBA_FLOAT) --  11
  ]

instance Enum FormatType where
  toEnum i
    | r : _ <- [ v | (v, k) <- formatTypes, k == fromIntegral i ] = r
    | otherwise = TypeOther
  fromEnum x
    | r : _ <- [ k | (v, k) <- formatTypes, v == x ] = fromIntegral r
    | otherwise = 0

-- | All named formats.
allFormats :: [FormatCode]
allFormats = filter CE.isDeclared [minBound .. maxBound]

-- | @PIXMAN_FORMAT_BPP@
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
type Operation = G.Pixman_op_t

-- | Possible filter operations
data Dither
  = DitherNone -- ^ G.PIXMAN_DITHER_NONE
  | Fast -- ^ G.PIXMAN_DITHER_FAST
  | Good -- ^ G.PIXMAN_DITHER_GOOD
  | Best -- ^ G.PIXMAN_DITHER_BEST
  | OrderedBayer8 -- ^ G.PIXMAN_DITHER_ORDERED_BAYER_8
  | OrderedBlueNoise64 -- ^ G.PIXMAN_DITHER_ORDERED_BLUE_NOISE_64
  deriving (Eq, Bounded, Enum, Ord, Show, Read, Generic)

fromDither :: Dither -> G.Pixman_dither_t
fromDither x
  | r : _ <- [ k | (k, v) <- xs, v == x ] = CE.unwrapSequentialCEnum r
  | otherwise = G.PIXMAN_DITHER_NONE
  where xs = zip [minBound..maxBound] [minBound..maxBound]

-- | Possible filter operations
data Filter
  = FilterFast                  -- ^ pattern G.PIXMAN_FILTER_FAST
  | FilterGood                  -- ^ pattern G.PIXMAN_FILTER_GOOD
  | FilterBest                  -- ^ pattern G.PIXMAN_FILTER_BEST
  | FilterNearest               -- ^ pattern G.PIXMAN_FILTER_NEAREST
  | FilterBilinear              -- ^ pattern G.PIXMAN_FILTER_BILINEAR
  | FilterConvolution           -- ^ pattern G.PIXMAN_FILTER_CONVOLUTION
  | FilterSeparableConvolution  -- ^ pattern G.PIXMAN_FILTER_SEPARABLE_CONVOLUTION
  deriving (Eq, Bounded, Enum, Ord, Show, Read, Generic)

fromFilter :: Filter -> G.Pixman_filter_t
fromFilter x
  | r : _ <- [ k | (k, v) <- xs, v == x ] = CE.unwrapSequentialCEnum r
  | otherwise = undefined
  where xs = zip [minBound..maxBound] [minBound..maxBound]

-- | Possible repeat settings
data Repeat
  = RepeatNone    -- ^ @PIXMAN_REPEAT_NONE@
  | RepeatNormal  -- ^ @PIXMAN_REPEAT_NORMAL@
  | RepeatPad     -- ^ @PIXMAN_REPEAT_PAD@
  | RepeatReflect -- ^ @PIXMAN_REPEAT_REFLECT@
  deriving (Eq, Bounded, Enum, Ord, Show, Read, Generic)

fromRepeat :: Repeat -> G.Pixman_repeat_t
fromRepeat x
  | r : _ <- [ k | (k, v) <- xs, v == x ] = CE.unwrapSequentialCEnum r
  | otherwise = G.PIXMAN_REPEAT_NONE
  where
    xs = zip [minBound..maxBound] [minBound..maxBound]

-- | The overlap of a region with a rectangle
data Overlap
  = OverlapOut
  | OverlapIn
  | OverlapPart
  deriving (Eq, Bounded, Enum, Ord, Show, Read, Generic)

--fromOverlap :: Overlap -> G.Pixman_region_overlap_t
--fromOverlap x
--  | r : _ <- [ k | (k, v) <- xs, v == x ] = CE.unwrapSequentialCEnum r
--  | otherwise = undefined
--  where xs = zip [minBound..maxBound] [minBound..maxBound]

toOverlap :: G.Pixman_region_overlap_t -> Overlap
toOverlap x
  | r : _ <- [ k | (k, v) <- xs, CE.unwrapSequentialCEnum v == x ] = r
  | otherwise = undefined
  where xs = zip [minBound..maxBound] [minBound..maxBound]

-- * Colors

class IsColor a where
  toColor :: a -> Color

instance IsColor Color where
  toColor = id

instance IsColor Word32 where
  toColor c8 =
    let alpha = (c8 .&. 0xff000000) `shiftR` 24
        red   = (c8 .&. 0x00ff0000) `shiftR` 16
        green = (c8 .&. 0x0000ff00) `shiftR` 8
        blue  = (c8 .&. 0x000000ff)
        f x = fromIntegral $! x .|. (x `shiftL` 8)
    in
      colorFromParts @Word16 (f red) (f green) (f blue) (f alpha)

colorFromParts :: ColorComponent a => a -> a -> a -> a -> Color
colorFromParts a b c d = G.Pixman_color_t (toColorComponent a) (toColorComponent b) (toColorComponent c) (toColorComponent d)

class ColorComponent a where
  toColorComponent :: a -> Word16

instance ColorComponent Word16 where
  toColorComponent = id

instance ColorComponent Double where
  toColorComponent = doubleToColor

instance ColorComponent Float where
  toColorComponent = doubleToColor . float2Double

-- XXX: is this correct?
doubleToColor :: Double -> Word16
doubleToColor x =
  fromIntegral ((dToW (x * 65536.0) :: Word32) - ((dToW (x * 65536.0) :: Word32) `shiftR` 16)) :: Word16
    where
      dToW = castFloatToWord32 . double2Float

-- * Vectors

vector :: Fixed -> Fixed -> Fixed -> Vector
vector x y z = G.Pixman_vector $! CA.fromList [x, y, z]

vectorFromArray :: [Fixed] -> Vector
vectorFromArray xs = G.Pixman_vector $! CA.fromList xs

fvector :: Double -> Double -> Double -> FVector
fvector x y z = G.Pixman_f_vector $! CA.fromList $ map CDouble [x, y, z]

fvectorFromArray :: [Double] -> FVector
fvectorFromArray xs = G.Pixman_f_vector $! CA.fromList $ map CDouble xs

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

-- | A mutable image
type ImageMut = ForeignPtr G.Pixman_image_t

-- ** CreateImage
data CreateImage = CreateImage
  { _imgInit :: IO (Ptr G.Pixman_image_t)
  , _imgOps :: [ImageOperation]
  } deriving (Generic)

class IsImage a where
  type Ret a b :: Type

  imageIO :: forall x. IO x -> Ret a x

  -- | Read-only
  withImage :: a -> (Ptr G.Pixman_image_t -> IO b) -> IO b

instance IsImage ImageMut where
  type Ret ImageMut x = IO x
  imageIO = id
  withImage = withForeignPtr

instance IsImage Image where
  type Ret Image x = x
  imageIO = unsafePerformIO
  withImage = withPtr

newImage :: FormatCode
         -> (Int, Int) -- ^ (width, height)
         -> Bool -- ^ clear?
         -> CreateImage
newImage fmt (width, height) clear = CreateImage imageNew []
  where
    imageNew = throwPixmanIfNull "newImage" $ f fmt (fromIntegral width) (fromIntegral height) nullPtr 0
    f = if clear then US.pixman_image_create_bits else US.pixman_image_create_bits_no_clear

imageWithBits :: FormatCode
              -> (Int, Int) -- ^ (width, height)
              -> Bool -- ^ clear?
              -> Ptr Word32 -- ^ data
              -> Int -- ^ Stride
              -> CreateImage
imageWithBits fmt (width, height) clear bits stride = CreateImage imageFromBits []
  where
    imageFromBits = throwPixmanIfNull "imageWithBits" $ f fmt (fromIntegral width) (fromIntegral height) bits (fromIntegral stride)
    f = if clear then US.pixman_image_create_bits else US.pixman_image_create_bits_no_clear

solidImage :: Color -> CreateImage
solidImage color = CreateImage imageSolidFill []
  where
    imageSolidFill = with color $ \colorPtr -> US.pixman_image_create_solid_fill (ConstPtr colorPtr)

(+$) :: CreateImage -> ImageOperation -> CreateImage
ci +$ op = ci { _imgOps = _imgOps ci ++ [op] }

infixl 5 +$

toImageMut :: CreateImage -> IO ImageMut
toImageMut ci = do
  img <- _imgInit ci
  imgFP <- newForeignPtr (castFunPtr FP.pixman_image_unref) img
  mapM_ (imageApplyMut imgFP) (_imgOps ci)
  return imgFP

toImage :: CreateImage -> Image
toImage ci = unsafePerformIO $ Image <$> toImageMut ci

-- ** Properties

imageWidth :: forall a. IsImage a => a -> Ret a Int
imageWidth x = imageIO @a @Int $ fromIntegral <$> withImage x US.pixman_image_get_width

imageHeight :: forall a. IsImage a => a -> Ret a Int
imageHeight x = imageIO @a @Int $ fromIntegral <$> withImage x US.pixman_image_get_height

imageDepth :: forall a. IsImage a => a -> Ret a Int
imageDepth x = imageIO @a @Int $ fromIntegral <$> withImage x US.pixman_image_get_depth

imageStride :: forall a. IsImage a => a -> Ret a Int
imageStride x = imageIO @a @Int $ fromIntegral <$> withImage x US.pixman_image_get_stride

imageFormat :: forall a. IsImage a => a -> Ret a FormatCode
imageFormat x = imageIO @a @FormatCode $ withImage x US.pixman_image_get_format

imageData :: forall a. IsImage a => a -> Ret a (Ptr Word32)
imageData x = imageIO @a @(Ptr Word32) $ withImage x US.pixman_image_get_data

imageComponentAlpha :: forall a. IsImage a => a -> Ret a Bool
imageComponentAlpha x = imageIO @a @Bool $ fromPixmanBool <$> withImage x US.pixman_image_get_component_alpha

-- ** Operations

imageApplyMut :: ImageMut -> ImageOperation -> IO ()
imageApplyMut imgFP imgOp = withForeignPtr imgFP $ \img ->
  case imgOp of
    SetClipRegion r -> throwPixmanUnless1 "set_clip_region" $ withConstPtr r $ US.pixman_image_set_clip_region img
    SetClipRegion32 r -> throwPixmanUnless1 "set_clip_region32" $ withConstPtr r $ US.pixman_image_set_clip_region32 img
    SetClipRegion64F r -> throwPixmanUnless1 "set_clip_region64f" $ withConstPtr r $ US.pixman_image_set_clip_region64f img
    SetHasClientClip b -> US.pixman_image_set_has_client_clip img (toPixmanBool b)
    SetTransform t -> throwPixmanUnless1 "image_set_transform" $ withPtr t $ US.pixman_image_set_transform img . ConstPtr . castPtr
    SetRepeat r -> US.pixman_image_set_repeat img (fromRepeat r)
    SetDither d moff -> do
      US.pixman_image_set_dither img (fromDither d)
      maybe (return ()) (\(x,y) -> US.pixman_image_set_dither_offset img (fromIntegral x) (fromIntegral y)) moff
    SetFilter f params ->
      withArrayLen params $ \len ptr ->
      throwPixmanUnless1 "image_set_filter" $ US.pixman_image_set_filter img (fromFilter f) (ConstPtr ptr) (fromIntegral len)
    SetSourceClipping b -> US.pixman_image_set_source_clipping img (toPixmanBool b)
    SetAlphaMap amap x y ->
      withPtr amap $ \amapPtr ->
        US.pixman_image_set_alpha_map img amapPtr (fromIntegral x) (fromIntegral y)
    SetComponentAlpha b -> US.pixman_image_set_component_alpha img (toPixmanBool b)
    SetIndexed indexed -> do
      p <- new indexed
      addForeignPtrFinalizerEnv finalizeIndexed p imgFP
      US.pixman_image_set_indexed img (ConstPtr p)
    FillBoxes op color boxes ->
      with color $ \colorP ->
      withArrayLen (coerce boxes) $ \len boxesP ->
        throwPixmanUnless1 "image_fill_boxes" $
          US.pixman_image_fill_boxes op img (ConstPtr colorP) (fromIntegral len) (ConstPtr boxesP)
    FillRectangles op color rs ->
      with color $ \colorP ->
      withArrayLen rs $ \len rsP ->
        throwPixmanUnless1 "image_fill_rectangles" $ US.pixman_image_fill_rectangles op img (ConstPtr colorP) (fromIntegral len) (ConstPtr rsP)
    AddTriangles (x_off, y_off) tris ->
      withArrayLen tris $ \len trisP ->
        US.pixman_add_triangles img (fromIntegral x_off) (fromIntegral y_off) (fromIntegral len) (ConstPtr trisP)
    AddTraps (x_off, y_off) traps ->
      withArrayLen traps $ \len trapsP ->
        US.pixman_add_traps img (fromIntegral x_off) (fromIntegral y_off) (fromIntegral len) (ConstPtr trapsP)
    AddTrapezoids (x_off, y_off) traps ->
      withArrayLen traps $ \len trapsP ->
        US.pixman_add_trapezoids img (fromIntegral x_off) (fromIntegral y_off) (fromIntegral len) (ConstPtr trapsP)
    Composite16 op src mask' (src_x, src_y) (mask_x, mask_y) (dest_x, dest_y) (w, h) ->
      withPtr src $ \src_p ->
      maybe ($ nullPtr) withPtr mask' $ \mask_p ->
        US.pixman_image_composite op src_p mask_p img src_x src_y mask_x mask_y dest_x dest_y w h
    Composite32 op src mask' (src_x, src_y) (mask_x, mask_y) (dest_x, dest_y) (w, h) ->
      withPtr src $ \src_p ->
      maybe ($ nullPtr) withPtr mask' $ \mask_p ->
        US.pixman_image_composite32 op src_p mask_p img src_x src_y mask_x mask_y dest_x dest_y w h
    Composite64F op src mask' (src_x, src_y) (mask_x, mask_y) (dest_x, dest_y) (w, h) ->
      withPtr src $ \src_p ->
      maybe ($ nullPtr) withPtr mask' $ \mask_p ->
        US.pixman_image_composite64f op src_p mask_p img src_x src_y mask_x mask_y dest_x dest_y w h

finalizeIndexed :: FinalizerEnvPtr Indexed G.Pixman_image_t
finalizeIndexed = unsafePerformIO $ mkFinalizeIndexed $ \p _ -> free p
{-# NOINLINE finalizeIndexed #-}

foreign import ccall "wrapper"
  mkFinalizeIndexed :: forall a. (Ptr Indexed -> Ptr a -> IO ()) -> IO (FinalizerEnvPtr Indexed a)

data ImageOperation
  = SetClipRegion Region16
  | SetClipRegion32 Region32
  | SetClipRegion64F Region64F
  | SetHasClientClip Bool
  | SetTransform Transform
  | SetRepeat Repeat
  | SetDither Dither (Maybe (Int, Int)) -- ^ dither, offset
  | SetFilter Filter [Fixed] -- ^ filter, filter_params
  | SetSourceClipping Bool
  | SetAlphaMap Image Int Int -- ^ alpha_map, x, y
  | SetComponentAlpha Bool
  | SetIndexed Indexed
  | Composite16 Operation Image (Maybe Image) (Int16, Int16) (Int16, Int16) (Int16, Int16) (Word16, Word16)
  | Composite32 Operation Image (Maybe Image) (Int32, Int32) (Int32, Int32) (Int32, Int32) (Int32, Int32)
  | Composite64F Operation Image (Maybe Image) (CDouble, CDouble) (CDouble, CDouble) (CDouble, CDouble) (CDouble, CDouble)
  | FillBoxes Operation Color [Box32]
  | FillRectangles Operation Color [Rectangle16]
  | AddTriangles (Int, Int) [Triangle] -- ^ (x_off, y_off), tris
  | AddTraps (Int, Int) [Trap] -- ^ (x_off, y_off), traps
  | AddTrapezoids (Int, Int) [Trapezoid] -- ^ (x_off, y_off), traps
  deriving (Eq, Show, Generic)

imageSetTransform :: Transform -> ImageOperation
imageSetTransform = SetTransform

imageSetRepeat :: Repeat -> ImageOperation
imageSetRepeat = SetRepeat

imageSetFilter :: Filter -> [Fixed] -> ImageOperation
imageSetFilter = SetFilter

imageSetFilter' :: Filter -> ImageOperation
imageSetFilter' fn = SetFilter fn []

imageComposite :: Image -> ImageCompositeParams Int16 Word16 -> ImageOperation
imageComposite src pa = Composite16 (compositeOp pa) src (compositeMask pa) (compositeSrcPos pa) (compositeMaskPos pa) (compositeDestPos pa) (compositeSize pa)

imageComposite32 :: Image -> ImageCompositeParams Int32 Int32 -> ImageOperation
imageComposite32 src pa = Composite32 (compositeOp pa) src (compositeMask pa) (compositeSrcPos pa) (compositeMaskPos pa) (compositeDestPos pa) (compositeSize pa)

imageComposite64F :: Image -> ImageCompositeParams CDouble CDouble -> ImageOperation
imageComposite64F src pa = Composite64F (compositeOp pa) src (compositeMask pa) (compositeSrcPos pa) (compositeMaskPos pa) (compositeDestPos pa) (compositeSize pa)

data ImageCompositeParams a b = ImageCompositeParams
  { compositeOp   :: !Operation
  , compositeMask :: !(Maybe Image)
  , compositeSrcPos
  , compositeMaskPos
  , compositeDestPos :: !(a, a)
  , compositeSize :: !(b, b)
  }

instance (Default a, Default b) => Default (ImageCompositeParams a b) where
  def = ImageCompositeParams G.PIXMAN_OP_SRC Nothing (def, def) (def, def) (def, def) (def, def)

-- | Compute the composite region for the specified src
computeCompositeRegion
  :: Image -- ^ src_image
  -> Maybe Image -- ^ mask_image
  -> Image -- ^ dest_image
  -> (Int, Int) -- ^ (src_x, src_y)
  -> (Int, Int) -- ^ (mask_x, mask_y)
  -> (Int, Int) -- ^ (dest_x, dest_y)
  -> (Int, Int) -- ^ (width, height)
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

  type TransformElem a :: Type

  type TransformVector a :: Type

  -- | The identity transformation.
  transformIdentity :: a

  -- | Initialize a transform from a matrix (3 x 3).
  transformFromMatrix :: [[TransformElem a]] -> a

  -- | Initialize a transform from a rotation.
  transformFromRotation :: TransformElem a -> TransformElem a -> a

  -- | Initialize a transform from a scale.
  transformFromScale :: TransformElem a -> TransformElem a -> a

  -- | Initialize a transform from a translate.
  transformFromTranslation :: TransformElem a -> TransformElem a -> a

  -- | Invert transformation.
  transformInvert :: a -> a

  -- | FTransform the provided bounds.
  transformBounds :: a -> Box16 -> Box16

  -- | Multiply two transformations.
  transformMultiply :: a -> a -> a

  -- | Add a scale to the transform
  transformScale :: a
                 -> TransformElem a -- ^ sx
                 -> TransformElem a -- ^ sy
                 -> Bool -- ^ reverse?
                 -> a

  -- | Add a translation to the transform
  transformTranslate :: a
                     -> TransformElem a -- ^ sx
                     -> TransformElem a -- ^ sy
                     -> Bool -- ^ reverse?
                     -> a

  -- | Transform the given point
  transformPoint :: a -> TransformVector a -> TransformVector a

  -- | Transform the given point
  transformPoint3d :: a -> TransformVector a -> TransformVector a

instance IsTransform Transform where
  type TransformElem Transform = Fixed
  type TransformVector Transform = Vector

  transformIdentity = unsafePerformIO $
    withNewForeignPtr (pure . Transform) US.pixman_transform_init_identity
  {-# NOINLINE transformIdentity #-}

  transformFromMatrix matrix = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p ->
      poke p $ G.Pixman_transform $ mkArray matrix
    where
      mkArray = CA.fromList . map CA.fromList

  transformFromRotation cos' sin' = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p -> US.pixman_transform_init_rotate p cos' sin'

  transformFromScale sx sy = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p -> US.pixman_transform_init_scale p sx sy

  transformFromTranslation tx ty = unsafePerformIO $
    withNewForeignPtr (pure . Transform) $ \p -> US.pixman_transform_init_translate p tx ty

  transformInvert x = unsafePerformIO $
    withConstPtr x $ \src ->
    withNewForeignPtr (pure . Transform) $ \dst ->
    throwPixmanUnless1 "transformInvert" $ US.pixman_transform_invert dst src

  transformBounds x (Box16 (G.Pixman_box16_t bounds)) = unsafePerformIO $
    withConstPtr x $ \matrix ->
    with bounds $ \b -> do
      throwPixmanUnless1 "transformBounds" $ US.pixman_transform_bounds matrix b
      Box16 . G.Pixman_box16_t <$> peek b

  transformMultiply l r = unsafePerformIO $
    withConstPtr l $ \lc ->
    withConstPtr r $ \rc ->
    withNewForeignPtr (pure . Transform) $ \dst ->
      throwPixmanUnless1 "transformMultiply" $ US.pixman_transform_multiply dst lc rc

  transformScale at sx sy rev = unsafePerformIO $
    withNewForeignPtrCopy (pure . Transform) at $ \t ->
      throwPixmanUnless1 "transformScale" $
        if rev
           then US.pixman_transform_scale nullPtr t sx sy
           else US.pixman_transform_scale t nullPtr sx sy

  transformTranslate at sx sy rev = unsafePerformIO $
    withNewForeignPtrCopy (pure . Transform) at $ \t ->
      throwPixmanUnless1 "transformTranslate" $
        if rev
           then US.pixman_transform_translate nullPtr t sx sy
           else US.pixman_transform_translate t nullPtr sx sy

  transformPoint at vec = unsafePerformIO $
    withConstPtr at $ \t ->
    with vec $ \v -> do
      throwPixmanUnless1 "transformPoint" $ US.pixman_transform_point t v
      peek v

  transformPoint3d at vec = unsafePerformIO $
    withConstPtr at $ \t ->
    with vec $ \v -> do
      throwPixmanUnless1 "transformPoint3d" $ US.pixman_transform_point_3d t v
      peek v


instance IsTransform FTransform where
  type TransformElem FTransform = Double
  type TransformVector FTransform = FVector

  transformIdentity = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) US.pixman_f_transform_init_identity
  {-# NOINLINE transformIdentity #-}

  transformFromMatrix matrix = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $ \p ->
      poke p $ G.Pixman_f_transform $ mkArray matrix
    where
      mkArray = CA.fromList . map (CA.fromList . map CDouble)

  transformFromRotation cos' sin' = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $ \p -> US.pixman_f_transform_init_rotate p (CDouble cos') (CDouble sin')

  transformFromScale sx sy = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $ \p -> US.pixman_f_transform_init_scale p (CDouble sx) (CDouble sy)

  transformFromTranslation tx ty = unsafePerformIO $
    withNewForeignPtr (pure . FTransform) $ \p -> US.pixman_f_transform_init_translate p (CDouble tx) (CDouble ty)

  transformInvert x = unsafePerformIO $
    withConstPtr x $ \src ->
    withNewForeignPtr (pure . FTransform) $ \dst ->
    throwPixmanUnless1 "ftransformInvert" $ US.pixman_f_transform_invert dst src

  transformBounds x (Box16 (G.Pixman_box16_t bounds)) = unsafePerformIO $
    withConstPtr x $ \matrix ->
    with bounds $ \b -> do
      throwPixmanUnless1 "ftransformBounds" $ US.pixman_f_transform_bounds matrix b
      Box16 . G.Pixman_box16_t <$> peek b

  transformMultiply l r = unsafePerformIO $
    withConstPtr l $ \lc ->
    withConstPtr r $ \rc ->
    withNewForeignPtr (pure . FTransform) $ \dst ->
      US.pixman_f_transform_multiply dst lc rc

  transformScale at sx sy rev = unsafePerformIO $
    withNewForeignPtrCopy (pure . FTransform) at $ \t ->
      throwPixmanUnless1 "ftransformScale" $
        if rev
           then US.pixman_f_transform_scale nullPtr t (CDouble sx) (CDouble sy)
           else US.pixman_f_transform_scale t nullPtr (CDouble sx) (CDouble sy)

  transformTranslate at sx sy rev = unsafePerformIO $
    withNewForeignPtrCopy (pure . FTransform) at $ \t ->
      throwPixmanUnless1 "ftransformTranslate" $
        if rev
           then US.pixman_f_transform_translate nullPtr t (CDouble sx) (CDouble sy)
           else US.pixman_f_transform_translate t nullPtr (CDouble sx) (CDouble sy)

  transformPoint at vec = unsafePerformIO $
    withConstPtr at $ \t ->
    with vec $ \v -> do
      throwPixmanUnless1 "transformPoint" $ US.pixman_f_transform_point t v
      peek v

  transformPoint3d at vec = unsafePerformIO $
    withConstPtr at $ \t ->
    with vec $ \v -> do
      US.pixman_f_transform_point_3d t v
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
  type RegionBox a :: Type

  -- | Initialize a new region.
  newRegion :: a

  -- | Initialize the region from the provided box
  regionFromRect :: (Int, Int) -- ^ (x, y)
                 -> (Int, Int) -- ^ (width, height)
                 -> a

  -- | Initialize the region from the provided boxes
  regionFromRects :: [RegionBox a] -> a

  -- | Initialize the region from the provided extents
  regionFromExtents :: RegionBox a -> a

  -- | Convert bitmap clip mask into clipping region.
  regionFromImage :: Image -> a

  -- | Is the region empty
  regionEmpty :: a -> Bool

  -- | Region's extents
  regionExtents :: a -> RegionBox a

  -- | Number of rectangles in the region.
  regionNumRects :: a -> Int

  -- | Take a region and a box and return a region that is everything in the box but not in the region.
  regionInverse :: a -> RegionBox a -> a

  regionContainsPoint :: a
                      -> (Int, Int) -- ^ (x, y)
                      -> RegionBox a
                      -> Bool

  regionContainsRectangle :: a -> RegionBox a -> Overlap

  -- | N rectangles in the region.
  regionRectangles :: a -> Int -> [RegionBox a]

  -- | Region equality
  regionEqual :: a -> a -> Bool

  -- | Translate the region by specified amount
  regionTranslate :: (Int, Int) -- ^ (x, y)
                  -> a
                  -> a

  -- | Intersect regions
  regionIntersect :: a -> a -> a

  -- | Subtract regions
  regionSubtract :: a -> a -> a

  -- | Union regions
  regionUnion :: a -> a -> a

  -- | Create union between a region and provided rect
  regionUnionRect :: a
                  -> (Int, Int) -- ^ (x, y)
                  -> (Int, Int) -- ^ (width, height)
                  -> a

  -- | intersect region with a rect
  regionIntersectRect :: a
                  -> (Int, Int) -- ^ (x, y)
                  -> (Int, Int) -- ^ (width, height)
                  -> a

instance Eq Region16 where (==) = regionEqual
instance Eq Region32 where (==) = regionEqual
instance Eq Region64F where (==) = regionEqual

instance IsRegion Region16 where
  type RegionBox Region16 = Box16

  newRegion = unsafePerformIO $ withNewForeignPtr mkRegion16 US.pixman_region_init
  {-# NOINLINE newRegion #-}

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

  regionEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region_empty

  regionExtents reg = unsafePerformIO $ fmap Box16 $ withConstPtr reg US.pixman_region_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region_n_rects

  regionInverse reg (Box16 box) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion16 $ \p ->
    with box $
    throwPixmanUnless1 "region_inverse" .
      US.pixman_region_inverse p reg' . ConstPtr

  regionContainsPoint reg (x, y) (Box16 box) = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region_contains_point reg' (fromIntegral x) (fromIntegral y)

  regionContainsRectangle reg (Box16 box) = unsafePerformIO $
    fmap toOverlap $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region_contains_rectangle reg' . ConstPtr

  regionRectangles reg n = unsafePerformIO $
    fmap coerce $
    withConstPtr reg $ \reg' ->
    with (fromIntegral n) $
      US.pixman_region_rectangles reg' >=> peekArray n

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

  regionUnionRect reg (x, y) (w, h) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion16 $ \p ->
    throwPixmanUnless1 "region_union_rect" $
      US.pixman_region_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionIntersectRect reg (x, y) (w, h) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion16 $ \p ->
    throwPixmanUnless1 "region_intersect_rect" $
      US.pixman_region_intersect_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

instance IsRegion Region32 where
  type RegionBox Region32 = Box32

  newRegion = unsafePerformIO $ withNewForeignPtr mkRegion32 US.pixman_region32_init
  {-# NOINLINE newRegion #-}

  regionFromRect (x, y) (w, h) = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
      US.pixman_region32_init_rect p (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionFromRects boxes = unsafePerformIO $
    withArrayLen (coerce boxes) $ \len boxesP ->
    withNewForeignPtr mkRegion32 $ \p ->
    throwPixmanUnless1 "region_init_rects" $
      US.pixman_region32_init_rects p (ConstPtr boxesP) (fromIntegral len)

  regionFromExtents (Box32 extents) = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    with extents $ US.pixman_region32_init_with_extents p . ConstPtr

  regionFromImage img = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    withPtr img $ US.pixman_region32_init_from_image p

  regionEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region32_empty

  regionExtents reg = unsafePerformIO $ fmap Box32 $ withConstPtr reg US.pixman_region32_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region32_n_rects

  regionInverse reg (Box32 box) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion32 $ \p ->
    with box $
    throwPixmanUnless1 "region_inverse" .
      US.pixman_region32_inverse p reg' . ConstPtr

  regionContainsPoint reg (x, y) (Box32 box) = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region32_contains_point reg' (fromIntegral x) (fromIntegral y)

  regionContainsRectangle reg (Box32 box) = unsafePerformIO $
    fmap toOverlap $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region32_contains_rectangle reg' . ConstPtr

  regionRectangles reg n = unsafePerformIO $
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
      throwPixmanUnless1 "region_copy" $ US.pixman_region32_copy p reg'
      US.pixman_region32_translate p (fromIntegral x) (fromIntegral y)

  regionIntersect reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_intersect" $
      US.pixman_region32_intersect p reg1' reg2'

  regionSubtract reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_subtract" $
      US.pixman_region32_subtract p reg1' reg2'

  regionUnion reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion32 $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_union" $
      US.pixman_region32_union p reg1' reg2'

  regionUnionRect reg (x, y) (w, h) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion32 $ \p ->
    throwPixmanUnless1 "region_union_rect" $
      US.pixman_region32_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionIntersectRect reg (x, y) (w, h) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion32 $ \p ->
    throwPixmanUnless1 "region_intersect_rect" $
      US.pixman_region32_intersect_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

instance IsRegion Region64F where
  type RegionBox Region64F = Box64F

  newRegion = unsafePerformIO $ withNewForeignPtr mkRegion64F US.pixman_region64f_init
  {-# NOINLINE newRegion #-}

  regionFromRect (x, y) (w, h) = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
      US.pixman_region64f_init_rect p (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionFromRects boxes = unsafePerformIO $
    withArrayLen (coerce boxes) $ \len boxesP ->
    withNewForeignPtr mkRegion64F $ \p ->
    throwPixmanUnless1 "region_init_rects" $
      US.pixman_region64f_init_rects p (ConstPtr boxesP) (fromIntegral len)

  regionFromExtents (Box64F extents) = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    with extents $ US.pixman_region64f_init_with_extents p . ConstPtr

  regionFromImage img = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    withPtr img $ US.pixman_region64f_init_from_image p

  regionEmpty reg = unsafePerformIO $ fromPixmanBool <$> withConstPtr reg US.pixman_region64f_empty

  regionExtents reg = unsafePerformIO $ fmap Box64F $ withConstPtr reg US.pixman_region64f_extents >>= peek

  regionNumRects reg = unsafePerformIO $ fromIntegral <$> withConstPtr reg US.pixman_region64f_n_rects

  regionInverse reg (Box64F box) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion64F $ \p ->
    with box $
    throwPixmanUnless1 "region_inverse" .
      US.pixman_region64f_inverse p reg' . ConstPtr

  regionContainsPoint reg (x, y) (Box64F box) = unsafePerformIO $
    fmap fromPixmanBool $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region64f_contains_point reg' (fromIntegral x) (fromIntegral y)

  regionContainsRectangle reg (Box64F box) = unsafePerformIO $
    fmap toOverlap $
    withConstPtr reg $ \reg' ->
    with box $
      US.pixman_region64f_contains_rectangle reg' . ConstPtr

  regionRectangles reg n = unsafePerformIO $
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
      throwPixmanUnless1 "region_copy" $ US.pixman_region64f_copy p reg'
      US.pixman_region64f_translate p (fromIntegral x) (fromIntegral y)

  regionIntersect reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_intersect" $
      US.pixman_region64f_intersect p reg1' reg2'

  regionSubtract reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_subtract" $
      US.pixman_region64f_subtract p reg1' reg2'

  regionUnion reg1 reg2 = unsafePerformIO $
    withNewForeignPtr mkRegion64F $ \p ->
    withConstPtr reg1 $ \reg1' ->
    withConstPtr reg2 $ \reg2' ->
    throwPixmanUnless1 "region_union" $
      US.pixman_region64f_union p reg1' reg2'

  regionUnionRect reg (x, y) (w, h) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion64F $ \p ->
    throwPixmanUnless1 "region_union_rect" $
      US.pixman_region64f_union_rect p reg' (fromIntegral x) (fromIntegral y) (fromIntegral w) (fromIntegral h)

  regionIntersectRect reg (x, y) (w, h) = unsafePerformIO $
    withConstPtr reg $ \reg' ->
    withNewForeignPtr mkRegion64F $ \p ->
    throwPixmanUnless1 "region_intersect_rect" $
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

-- * Boxes

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

-- | @rectangle16 x y w h@
rectangle16 :: Int16 -> Int16 -> Word16 -> Word16 -> Rectangle16
rectangle16 = G.Pixman_rectangle16_t

-- | @rectangle32 x y w h@
rectangle32 :: Int32 -> Int32 -> Word32 -> Word32 -> Rectangle32
rectangle32 = G.Pixman_rectangle32_t

-- | @rectangle64F x y w h@
rectangle64F :: Double -> Double -> Double -> Double -> Rectangle64F
rectangle64F x1 y1 x2 y2 =  G.Pixman_rectangle64f_t (coerce x1) (coerce y1) (coerce x2) (coerce y2)

-- * Functions

-- | Blit the src into the dst with the specified values
blt :: Ptr Word32 -- ^ src
    -> Ptr Word32 -- ^ dest
    -> Int -- ^ src_stride
    -> Int -- ^ dest_stride
    -> Int -- ^ src_bpp
    -> Int -- ^ dest_bpp
    -> (Int, Int) -- ^ (src_x, src_y)
    -> (Int, Int) -- ^ (dest_x, dest_y)
    -> (Int, Int) -- ^ (width, height)
    -> IO ()
blt src dst s_stride d_stride s_bpp d_bpp (s_x, s_y) (d_x, d_y) (w, h) =
    throwPixmanUnless1 "blt" $ US.pixman_blt src dst
      (fromIntegral s_stride) (fromIntegral d_stride)
      (fromIntegral s_bpp) (fromIntegral d_bpp)
      (fromIntegral s_x) (fromIntegral s_y)
      (fromIntegral d_x) (fromIntegral d_y)
      (fromIntegral w) (fromIntegral h)

-- | Fill the provided bits with the provided values
fill :: Ptr Word32 -- ^ bits
     -> Int -- ^ stride
     -> Int -- ^ bpp
     -> (Int, Int) -- ^ x, y
     -> (Int, Int) -- ^ width, height
     -> Word32 -- ^ Filler
     -> IO ()
fill bits stride bpp (x, y) (w, h) filler =
    throwPixmanUnless1 "fill" $ US.pixman_fill bits (fromIntegral stride)
      (fromIntegral bpp)
      (fromIntegral x) (fromIntegral y)
      (fromIntegral w) (fromIntegral h)
      filler

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

withConstPtr :: HasField "unwrap" r (ForeignPtr a) => r -> (ConstPtr a -> IO b) -> IO b
withConstPtr x f = withForeignPtr (getField @"unwrap" x) $ f . ConstPtr

fromPixmanBool :: G.Pixman_bool_t -> Bool
fromPixmanBool x = getField @"unwrap" x == 1

toPixmanBool :: Bool -> G.Pixman_bool_t
toPixmanBool b = if b then 1 else 0

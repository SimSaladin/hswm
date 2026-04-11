{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE UndecidableInstances #-}

module Bindings.Pixman.Generated
    ( Bindings.Pixman.Generated.pIXMAN_VERSION_MAJOR
    , Bindings.Pixman.Generated.pIXMAN_VERSION_MINOR
    , Bindings.Pixman.Generated.pIXMAN_VERSION_MICRO
    , Bindings.Pixman.Generated.pIXMAN_VERSION_STRING
    , Bindings.Pixman.Generated.pIXMAN_VERSION_ENCODE
    , Bindings.Pixman.Generated.pIXMAN_VERSION
    , Bindings.Pixman.Generated.Pixman_bool_t(..)
    , Bindings.Pixman.Generated.Pixman_fixed_32_32_t(..)
    , Bindings.Pixman.Generated.Pixman_fixed_48_16_t(..)
    , Bindings.Pixman.Generated.Pixman_fixed_1_31_t(..)
    , Bindings.Pixman.Generated.Pixman_fixed_1_16_t(..)
    , Bindings.Pixman.Generated.Pixman_fixed_16_16_t(..)
    , Bindings.Pixman.Generated.Pixman_fixed_t(..)
    , Bindings.Pixman.Generated.Pixman_color_t(..)
    , Bindings.Pixman.Generated.Pixman_point_fixed_t(..)
    , Bindings.Pixman.Generated.Pixman_line_fixed_t(..)
    , Bindings.Pixman.Generated.Pixman_vector(..)
    , Bindings.Pixman.Generated.Pixman_vector_t(..)
    , Bindings.Pixman.Generated.Pixman_transform(..)
    , Bindings.Pixman.Generated.Pixman_transform_t(..)
    , Bindings.Pixman.Generated.Pixman_image_t
    , Bindings.Pixman.Generated.Pixman_f_transform(..)
    , Bindings.Pixman.Generated.Pixman_f_transform_t(..)
    , Bindings.Pixman.Generated.Pixman_f_vector(..)
    , Bindings.Pixman.Generated.Pixman_f_vector_t(..)
    , Bindings.Pixman.Generated.Pixman_repeat_t(..)
    , pattern Bindings.Pixman.Generated.PIXMAN_REPEAT_NONE
    , pattern Bindings.Pixman.Generated.PIXMAN_REPEAT_NORMAL
    , pattern Bindings.Pixman.Generated.PIXMAN_REPEAT_PAD
    , pattern Bindings.Pixman.Generated.PIXMAN_REPEAT_REFLECT
    , Bindings.Pixman.Generated.Pixman_dither_t(..)
    , pattern Bindings.Pixman.Generated.PIXMAN_DITHER_NONE
    , pattern Bindings.Pixman.Generated.PIXMAN_DITHER_FAST
    , pattern Bindings.Pixman.Generated.PIXMAN_DITHER_GOOD
    , pattern Bindings.Pixman.Generated.PIXMAN_DITHER_BEST
    , pattern Bindings.Pixman.Generated.PIXMAN_DITHER_ORDERED_BAYER_8
    , pattern Bindings.Pixman.Generated.PIXMAN_DITHER_ORDERED_BLUE_NOISE_64
    , Bindings.Pixman.Generated.Pixman_filter_t(..)
    , pattern Bindings.Pixman.Generated.PIXMAN_FILTER_FAST
    , pattern Bindings.Pixman.Generated.PIXMAN_FILTER_GOOD
    , pattern Bindings.Pixman.Generated.PIXMAN_FILTER_BEST
    , pattern Bindings.Pixman.Generated.PIXMAN_FILTER_NEAREST
    , pattern Bindings.Pixman.Generated.PIXMAN_FILTER_BILINEAR
    , pattern Bindings.Pixman.Generated.PIXMAN_FILTER_CONVOLUTION
    , pattern Bindings.Pixman.Generated.PIXMAN_FILTER_SEPARABLE_CONVOLUTION
    , Bindings.Pixman.Generated.Pixman_op_t(..)
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CLEAR
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_SRC
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DST
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_OVER
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_OVER_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_IN
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_IN_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_OUT
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_OUT_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_ATOP
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_ATOP_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_XOR
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_ADD
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_SATURATE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_CLEAR
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_SRC
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_DST
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_OVER
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_OVER_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_IN
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_IN_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_OUT
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_OUT_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_ATOP
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_ATOP_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DISJOINT_XOR
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_CLEAR
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_SRC
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_DST
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_OVER
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_OVER_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_IN
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_IN_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_OUT
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_OUT_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_ATOP
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_ATOP_REVERSE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_CONJOINT_XOR
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_MULTIPLY
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_SCREEN
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_OVERLAY
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DARKEN
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_LIGHTEN
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_COLOR_DODGE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_COLOR_BURN
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_HARD_LIGHT
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_SOFT_LIGHT
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_DIFFERENCE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_EXCLUSION
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_HSL_HUE
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_HSL_SATURATION
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_HSL_COLOR
    , pattern Bindings.Pixman.Generated.PIXMAN_OP_HSL_LUMINOSITY
    , Bindings.Pixman.Generated.Pixman_region16_data_t(..)
    , Bindings.Pixman.Generated.Pixman_box16(..)
    , Bindings.Pixman.Generated.Pixman_box16_t(..)
    , Bindings.Pixman.Generated.Pixman_rectangle16_t(..)
    , Bindings.Pixman.Generated.Pixman_region16_t(..)
    , Bindings.Pixman.Generated.Pixman_region_overlap_t(..)
    , pattern Bindings.Pixman.Generated.PIXMAN_REGION_OUT
    , pattern Bindings.Pixman.Generated.PIXMAN_REGION_IN
    , pattern Bindings.Pixman.Generated.PIXMAN_REGION_PART
    , Bindings.Pixman.Generated.Pixman_region32_data_t(..)
    , Bindings.Pixman.Generated.Pixman_box32_t(..)
    , Bindings.Pixman.Generated.Pixman_rectangle32_t(..)
    , Bindings.Pixman.Generated.Pixman_region32_t(..)
    , Bindings.Pixman.Generated.Pixman_region64f_data_t(..)
    , Bindings.Pixman.Generated.Pixman_box64f_t(..)
    , Bindings.Pixman.Generated.Pixman_rectangle64f_t(..)
    , Bindings.Pixman.Generated.Pixman_region64f_t(..)
    , Bindings.Pixman.Generated.Pixman_index_type(..)
    , Bindings.Pixman.Generated.Pixman_indexed_t(..)
    , Bindings.Pixman.Generated.Pixman_gradient_stop_t(..)
    , Bindings.Pixman.Generated.Pixman_read_memory_func_t_Aux(..)
    , Bindings.Pixman.Generated.Pixman_read_memory_func_t(..)
    , Bindings.Pixman.Generated.Pixman_write_memory_func_t_Aux(..)
    , Bindings.Pixman.Generated.Pixman_write_memory_func_t(..)
    , Bindings.Pixman.Generated.Pixman_image_destroy_func_t_Aux(..)
    , Bindings.Pixman.Generated.Pixman_image_destroy_func_t(..)
    , Bindings.Pixman.Generated.pIXMAN_MAX_INDEXED
    , Bindings.Pixman.Generated.pIXMAN_FORMAT
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_BYTE
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_RESHIFT
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_BPP
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_TYPE
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_A
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_R
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_G
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_B
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_RGB
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_VIS
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_DEPTH
    , Bindings.Pixman.Generated.pIXMAN_TYPE_OTHER
    , Bindings.Pixman.Generated.pIXMAN_TYPE_A
    , Bindings.Pixman.Generated.pIXMAN_TYPE_ARGB
    , Bindings.Pixman.Generated.pIXMAN_TYPE_ABGR
    , Bindings.Pixman.Generated.pIXMAN_TYPE_COLOR
    , Bindings.Pixman.Generated.pIXMAN_TYPE_GRAY
    , Bindings.Pixman.Generated.pIXMAN_TYPE_YUY2
    , Bindings.Pixman.Generated.pIXMAN_TYPE_YV12
    , Bindings.Pixman.Generated.pIXMAN_TYPE_BGRA
    , Bindings.Pixman.Generated.pIXMAN_TYPE_RGBA
    , Bindings.Pixman.Generated.pIXMAN_TYPE_ARGB_SRGB
    , Bindings.Pixman.Generated.pIXMAN_TYPE_RGBA_FLOAT
    , Bindings.Pixman.Generated.pIXMAN_FORMAT_COLOR
    , Bindings.Pixman.Generated.Pixman_format_code_t(..)
    , pattern Bindings.Pixman.Generated.PIXMAN_rgba_float
    , pattern Bindings.Pixman.Generated.PIXMAN_rgb_float
    , pattern Bindings.Pixman.Generated.PIXMAN_a16b16g16r16
    , pattern Bindings.Pixman.Generated.PIXMAN_a8r8g8b8
    , pattern Bindings.Pixman.Generated.PIXMAN_x8r8g8b8
    , pattern Bindings.Pixman.Generated.PIXMAN_a8b8g8r8
    , pattern Bindings.Pixman.Generated.PIXMAN_x8b8g8r8
    , pattern Bindings.Pixman.Generated.PIXMAN_b8g8r8a8
    , pattern Bindings.Pixman.Generated.PIXMAN_b8g8r8x8
    , pattern Bindings.Pixman.Generated.PIXMAN_r8g8b8a8
    , pattern Bindings.Pixman.Generated.PIXMAN_r8g8b8x8
    , pattern Bindings.Pixman.Generated.PIXMAN_x14r6g6b6
    , pattern Bindings.Pixman.Generated.PIXMAN_x2r10g10b10
    , pattern Bindings.Pixman.Generated.PIXMAN_a2r10g10b10
    , pattern Bindings.Pixman.Generated.PIXMAN_x2b10g10r10
    , pattern Bindings.Pixman.Generated.PIXMAN_a2b10g10r10
    , pattern Bindings.Pixman.Generated.PIXMAN_a8r8g8b8_sRGB
    , pattern Bindings.Pixman.Generated.PIXMAN_r8g8b8_sRGB
    , pattern Bindings.Pixman.Generated.PIXMAN_r8g8b8
    , pattern Bindings.Pixman.Generated.PIXMAN_b8g8r8
    , pattern Bindings.Pixman.Generated.PIXMAN_r5g6b5
    , pattern Bindings.Pixman.Generated.PIXMAN_b5g6r5
    , pattern Bindings.Pixman.Generated.PIXMAN_a1r5g5b5
    , pattern Bindings.Pixman.Generated.PIXMAN_x1r5g5b5
    , pattern Bindings.Pixman.Generated.PIXMAN_a1b5g5r5
    , pattern Bindings.Pixman.Generated.PIXMAN_x1b5g5r5
    , pattern Bindings.Pixman.Generated.PIXMAN_a4r4g4b4
    , pattern Bindings.Pixman.Generated.PIXMAN_x4r4g4b4
    , pattern Bindings.Pixman.Generated.PIXMAN_a4b4g4r4
    , pattern Bindings.Pixman.Generated.PIXMAN_x4b4g4r4
    , pattern Bindings.Pixman.Generated.PIXMAN_a8
    , pattern Bindings.Pixman.Generated.PIXMAN_r3g3b2
    , pattern Bindings.Pixman.Generated.PIXMAN_b2g3r3
    , pattern Bindings.Pixman.Generated.PIXMAN_a2r2g2b2
    , pattern Bindings.Pixman.Generated.PIXMAN_a2b2g2r2
    , pattern Bindings.Pixman.Generated.PIXMAN_c8
    , pattern Bindings.Pixman.Generated.PIXMAN_g8
    , pattern Bindings.Pixman.Generated.PIXMAN_x4a4
    , pattern Bindings.Pixman.Generated.PIXMAN_x4c4
    , pattern Bindings.Pixman.Generated.PIXMAN_x4g4
    , pattern Bindings.Pixman.Generated.PIXMAN_a4
    , pattern Bindings.Pixman.Generated.PIXMAN_r1g2b1
    , pattern Bindings.Pixman.Generated.PIXMAN_b1g2r1
    , pattern Bindings.Pixman.Generated.PIXMAN_a1r1g1b1
    , pattern Bindings.Pixman.Generated.PIXMAN_a1b1g1r1
    , pattern Bindings.Pixman.Generated.PIXMAN_c4
    , pattern Bindings.Pixman.Generated.PIXMAN_g4
    , pattern Bindings.Pixman.Generated.PIXMAN_a1
    , pattern Bindings.Pixman.Generated.PIXMAN_g1
    , pattern Bindings.Pixman.Generated.PIXMAN_yuy2
    , pattern Bindings.Pixman.Generated.PIXMAN_yv12
    , Bindings.Pixman.Generated.Pixman_kernel_t(..)
    , pattern Bindings.Pixman.Generated.PIXMAN_KERNEL_IMPULSE
    , pattern Bindings.Pixman.Generated.PIXMAN_KERNEL_BOX
    , pattern Bindings.Pixman.Generated.PIXMAN_KERNEL_LINEAR
    , pattern Bindings.Pixman.Generated.PIXMAN_KERNEL_CUBIC
    , pattern Bindings.Pixman.Generated.PIXMAN_KERNEL_GAUSSIAN
    , pattern Bindings.Pixman.Generated.PIXMAN_KERNEL_LANCZOS2
    , pattern Bindings.Pixman.Generated.PIXMAN_KERNEL_LANCZOS3
    , pattern Bindings.Pixman.Generated.PIXMAN_KERNEL_LANCZOS3_STRETCHED
    , Bindings.Pixman.Generated.Pixman_glyph_cache_t
    , Bindings.Pixman.Generated.Pixman_glyph_t(..)
    , Bindings.Pixman.Generated.Pixman_edge_t(..)
    , Bindings.Pixman.Generated.Pixman_trapezoid_t(..)
    , Bindings.Pixman.Generated.Pixman_span_fix_t(..)
    , Bindings.Pixman.Generated.Pixman_trap_t(..)
    , Bindings.Pixman.Generated.Pixman_triangle_t(..)
    )
  where

import qualified C.Expr.HostPlatform
import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.ConstantArray as CA
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-| __C declaration:__ @macro PIXMAN_VERSION_MAJOR@

    __defined at:__ @pixman-version.h 34:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_VERSION_MAJOR :: RIP.CInt
pIXMAN_VERSION_MAJOR = (0 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_VERSION_MINOR@

    __defined at:__ @pixman-version.h 35:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_VERSION_MINOR :: RIP.CInt
pIXMAN_VERSION_MINOR = (46 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_VERSION_MICRO@

    __defined at:__ @pixman-version.h 36:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_VERSION_MICRO :: RIP.CInt
pIXMAN_VERSION_MICRO = (4 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_VERSION_STRING@

    __defined at:__ @pixman-version.h 38:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_VERSION_STRING :: (RIP.Ptr RIP.CChar, Int)
pIXMAN_VERSION_STRING =
  ((RIP.Ptr "0.46.4"#, 6) :: RIP.CStringLen)

{-| __C declaration:__ @macro PIXMAN_VERSION_ENCODE@

    __defined at:__ @pixman-version.h 40:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_VERSION_ENCODE :: forall a0 b1 c2. (C.Expr.HostPlatform.Add ((C.Expr.HostPlatform.MultRes a0) RIP.CInt)) ((C.Expr.HostPlatform.MultRes b1) RIP.CInt) => (C.Expr.HostPlatform.Add ((C.Expr.HostPlatform.AddRes ((C.Expr.HostPlatform.MultRes a0) RIP.CInt)) ((C.Expr.HostPlatform.MultRes b1) RIP.CInt))) ((C.Expr.HostPlatform.MultRes c2) RIP.CInt) => (C.Expr.HostPlatform.Mult c2) RIP.CInt => (C.Expr.HostPlatform.Mult b1) RIP.CInt => (C.Expr.HostPlatform.Mult a0) RIP.CInt => a0 -> b1 -> c2 -> (C.Expr.HostPlatform.AddRes ((C.Expr.HostPlatform.AddRes ((C.Expr.HostPlatform.MultRes a0) RIP.CInt)) ((C.Expr.HostPlatform.MultRes b1) RIP.CInt))) ((C.Expr.HostPlatform.MultRes c2) RIP.CInt)
pIXMAN_VERSION_ENCODE =
  \major0 ->
    \minor1 ->
      \micro2 ->
        (C.Expr.HostPlatform.+) ((C.Expr.HostPlatform.+) ((C.Expr.HostPlatform.*) major0 (10000 :: RIP.CInt)) ((C.Expr.HostPlatform.*) minor1 (100 :: RIP.CInt))) ((C.Expr.HostPlatform.*) micro2 (1 :: RIP.CInt))

{-| __C declaration:__ @macro PIXMAN_VERSION@

    __defined at:__ @pixman-version.h 45:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_VERSION :: RIP.CInt
pIXMAN_VERSION =
  pIXMAN_VERSION_ENCODE pIXMAN_VERSION_MAJOR pIXMAN_VERSION_MINOR pIXMAN_VERSION_MICRO

{-| __C declaration:__ @pixman_bool_t@

    __defined at:__ @pixman.h 113:13@

    __exported by:__ @pixman.h@
-}
newtype Pixman_bool_t = Pixman_bool_t
  { unwrap :: RIP.CInt
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_bool_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_bool_t "unwrap" where

  type CFieldType Pixman_bool_t "unwrap" = RIP.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_fixed_32_32_t@

    __defined at:__ @pixman.h 118:19@

    __exported by:__ @pixman.h@
-}
newtype Pixman_fixed_32_32_t = Pixman_fixed_32_32_t
  { unwrap :: HsBindgen.Runtime.LibC.Int64
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int64
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_fixed_32_32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_fixed_32_32_t "unwrap" where

  type CFieldType Pixman_fixed_32_32_t "unwrap" =
    HsBindgen.Runtime.LibC.Int64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_fixed_48_16_t@

    __defined at:__ @pixman.h 119:30@

    __exported by:__ @pixman.h@
-}
newtype Pixman_fixed_48_16_t = Pixman_fixed_48_16_t
  { unwrap :: Pixman_fixed_32_32_t
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) Pixman_fixed_32_32_t
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_fixed_48_16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_fixed_48_16_t "unwrap" where

  type CFieldType Pixman_fixed_48_16_t "unwrap" =
    Pixman_fixed_32_32_t

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_fixed_1_31_t@

    __defined at:__ @pixman.h 120:19@

    __exported by:__ @pixman.h@
-}
newtype Pixman_fixed_1_31_t = Pixman_fixed_1_31_t
  { unwrap :: HsBindgen.Runtime.LibC.Word32
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_fixed_1_31_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_fixed_1_31_t "unwrap" where

  type CFieldType Pixman_fixed_1_31_t "unwrap" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_fixed_1_16_t@

    __defined at:__ @pixman.h 121:19@

    __exported by:__ @pixman.h@
-}
newtype Pixman_fixed_1_16_t = Pixman_fixed_1_16_t
  { unwrap :: HsBindgen.Runtime.LibC.Word32
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_fixed_1_16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_fixed_1_16_t "unwrap" where

  type CFieldType Pixman_fixed_1_16_t "unwrap" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_fixed_16_16_t@

    __defined at:__ @pixman.h 122:19@

    __exported by:__ @pixman.h@
-}
newtype Pixman_fixed_16_16_t = Pixman_fixed_16_16_t
  { unwrap :: HsBindgen.Runtime.LibC.Int32
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_fixed_16_16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_fixed_16_16_t "unwrap" where

  type CFieldType Pixman_fixed_16_16_t "unwrap" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_fixed_t@

    __defined at:__ @pixman.h 123:30@

    __exported by:__ @pixman.h@
-}
newtype Pixman_fixed_t = Pixman_fixed_t
  { unwrap :: Pixman_fixed_16_16_t
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) Pixman_fixed_16_16_t
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_fixed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_fixed_t "unwrap" where

  type CFieldType Pixman_fixed_t "unwrap" =
    Pixman_fixed_16_16_t

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct pixman_color@

    __defined at:__ @pixman.h 150:8@

    __exported by:__ @pixman.h@
-}
data Pixman_color_t = Pixman_color_t
  { red :: HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @red@

         __defined at:__ @pixman.h 152:14@

         __exported by:__ @pixman.h@
    -}
  , green :: HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @green@

         __defined at:__ @pixman.h 153:17@

         __exported by:__ @pixman.h@
    -}
  , blue :: HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @blue@

         __defined at:__ @pixman.h 154:17@

         __exported by:__ @pixman.h@
    -}
  , alpha :: HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @alpha@

         __defined at:__ @pixman.h 155:17@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_color_t where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (2 :: Int)

instance Marshal.ReadRaw Pixman_color_t where

  readRaw =
    \ptr0 ->
          pure Pixman_color_t
      <*> HasCField.readRaw (RIP.Proxy @"red") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"green") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"blue") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"alpha") ptr0

instance Marshal.WriteRaw Pixman_color_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_color_t red2 green3 blue4 alpha5 ->
               HasCField.writeRaw (RIP.Proxy @"red") ptr0 red2
            >> HasCField.writeRaw (RIP.Proxy @"green") ptr0 green3
            >> HasCField.writeRaw (RIP.Proxy @"blue") ptr0 blue4
            >> HasCField.writeRaw (RIP.Proxy @"alpha") ptr0 alpha5

deriving via Marshal.EquivStorable Pixman_color_t instance RIP.Storable Pixman_color_t

instance HasCField.HasCField Pixman_color_t "red" where

  type CFieldType Pixman_color_t "red" =
    HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word16
         ) => RIP.HasField "red" (RIP.Ptr Pixman_color_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"red")

instance HasCField.HasCField Pixman_color_t "green" where

  type CFieldType Pixman_color_t "green" =
    HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 2

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word16
         ) => RIP.HasField "green" (RIP.Ptr Pixman_color_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"green")

instance HasCField.HasCField Pixman_color_t "blue" where

  type CFieldType Pixman_color_t "blue" =
    HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word16
         ) => RIP.HasField "blue" (RIP.Ptr Pixman_color_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"blue")

instance HasCField.HasCField Pixman_color_t "alpha" where

  type CFieldType Pixman_color_t "alpha" =
    HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 6

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word16
         ) => RIP.HasField "alpha" (RIP.Ptr Pixman_color_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"alpha")

{-| __C declaration:__ @struct pixman_point_fixed@

    __defined at:__ @pixman.h 158:8@

    __exported by:__ @pixman.h@
-}
data Pixman_point_fixed_t = Pixman_point_fixed_t
  { x :: Pixman_fixed_t
    {- ^ __C declaration:__ @x@

         __defined at:__ @pixman.h 160:20@

         __exported by:__ @pixman.h@
    -}
  , y :: Pixman_fixed_t
    {- ^ __C declaration:__ @y@

         __defined at:__ @pixman.h 161:20@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_point_fixed_t where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_point_fixed_t where

  readRaw =
    \ptr0 ->
          pure Pixman_point_fixed_t
      <*> HasCField.readRaw (RIP.Proxy @"x") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y") ptr0

instance Marshal.WriteRaw Pixman_point_fixed_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_point_fixed_t x2 y3 ->
               HasCField.writeRaw (RIP.Proxy @"x") ptr0 x2
            >> HasCField.writeRaw (RIP.Proxy @"y") ptr0 y3

deriving via Marshal.EquivStorable Pixman_point_fixed_t instance RIP.Storable Pixman_point_fixed_t

instance HasCField.HasCField Pixman_point_fixed_t "x" where

  type CFieldType Pixman_point_fixed_t "x" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "x" (RIP.Ptr Pixman_point_fixed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x")

instance HasCField.HasCField Pixman_point_fixed_t "y" where

  type CFieldType Pixman_point_fixed_t "y" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "y" (RIP.Ptr Pixman_point_fixed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y")

{-| __C declaration:__ @struct pixman_line_fixed@

    __defined at:__ @pixman.h 164:8@

    __exported by:__ @pixman.h@
-}
data Pixman_line_fixed_t = Pixman_line_fixed_t
  { p1 :: Pixman_point_fixed_t
    {- ^ __C declaration:__ @p1@

         __defined at:__ @pixman.h 166:26@

         __exported by:__ @pixman.h@
    -}
  , p2 :: Pixman_point_fixed_t
    {- ^ __C declaration:__ @p2@

         __defined at:__ @pixman.h 166:30@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_line_fixed_t where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_line_fixed_t where

  readRaw =
    \ptr0 ->
          pure Pixman_line_fixed_t
      <*> HasCField.readRaw (RIP.Proxy @"p1") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"p2") ptr0

instance Marshal.WriteRaw Pixman_line_fixed_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_line_fixed_t p12 p23 ->
               HasCField.writeRaw (RIP.Proxy @"p1") ptr0 p12
            >> HasCField.writeRaw (RIP.Proxy @"p2") ptr0 p23

deriving via Marshal.EquivStorable Pixman_line_fixed_t instance RIP.Storable Pixman_line_fixed_t

instance HasCField.HasCField Pixman_line_fixed_t "p1" where

  type CFieldType Pixman_line_fixed_t "p1" =
    Pixman_point_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_point_fixed_t
         ) => RIP.HasField "p1" (RIP.Ptr Pixman_line_fixed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"p1")

instance HasCField.HasCField Pixman_line_fixed_t "p2" where

  type CFieldType Pixman_line_fixed_t "p2" =
    Pixman_point_fixed_t

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) Pixman_point_fixed_t
         ) => RIP.HasField "p2" (RIP.Ptr Pixman_line_fixed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"p2")

{-| __C declaration:__ @struct pixman_vector@

    __defined at:__ @pixman.h 173:8@

    __exported by:__ @pixman.h@
-}
data Pixman_vector = Pixman_vector
  { vector :: (CA.ConstantArray 3) Pixman_fixed_t
    {- ^ __C declaration:__ @vector@

         __defined at:__ @pixman.h 175:20@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_vector where

  staticSizeOf = \_ -> (12 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_vector where

  readRaw =
    \ptr0 ->
          pure Pixman_vector
      <*> HasCField.readRaw (RIP.Proxy @"vector") ptr0

instance Marshal.WriteRaw Pixman_vector where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_vector vector2 ->
            HasCField.writeRaw (RIP.Proxy @"vector") ptr0 vector2

deriving via Marshal.EquivStorable Pixman_vector instance RIP.Storable Pixman_vector

instance HasCField.HasCField Pixman_vector "vector" where

  type CFieldType Pixman_vector "vector" =
    (CA.ConstantArray 3) Pixman_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) ((CA.ConstantArray 3) Pixman_fixed_t)
         ) => RIP.HasField "vector" (RIP.Ptr Pixman_vector) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"vector")

{-| __C declaration:__ @pixman_vector_t@

    __defined at:__ @pixman.h 147:30@

    __exported by:__ @pixman.h@
-}
newtype Pixman_vector_t = Pixman_vector_t
  { unwrap :: Pixman_vector
  }
  deriving stock (Eq, RIP.Generic, Show)
  deriving newtype
    ( Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) Pixman_vector
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_vector_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_vector_t "unwrap" where

  type CFieldType Pixman_vector_t "unwrap" =
    Pixman_vector

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct pixman_transform@

    __defined at:__ @pixman.h 178:8@

    __exported by:__ @pixman.h@
-}
data Pixman_transform = Pixman_transform
  { matrix :: (CA.ConstantArray 3) ((CA.ConstantArray 3) Pixman_fixed_t)
    {- ^ __C declaration:__ @matrix@

         __defined at:__ @pixman.h 180:20@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_transform where

  staticSizeOf = \_ -> (36 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_transform where

  readRaw =
    \ptr0 ->
          pure Pixman_transform
      <*> HasCField.readRaw (RIP.Proxy @"matrix") ptr0

instance Marshal.WriteRaw Pixman_transform where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_transform matrix2 ->
            HasCField.writeRaw (RIP.Proxy @"matrix") ptr0 matrix2

deriving via Marshal.EquivStorable Pixman_transform instance RIP.Storable Pixman_transform

instance HasCField.HasCField Pixman_transform "matrix" where

  type CFieldType Pixman_transform "matrix" =
    (CA.ConstantArray 3) ((CA.ConstantArray 3) Pixman_fixed_t)

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) ((CA.ConstantArray 3) ((CA.ConstantArray 3) Pixman_fixed_t))
         ) => RIP.HasField "matrix" (RIP.Ptr Pixman_transform) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"matrix")

{-| __C declaration:__ @pixman_transform_t@

    __defined at:__ @pixman.h 148:33@

    __exported by:__ @pixman.h@
-}
newtype Pixman_transform_t = Pixman_transform_t
  { unwrap :: Pixman_transform
  }
  deriving stock (Eq, RIP.Generic, Show)
  deriving newtype
    ( Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) Pixman_transform
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_transform_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_transform_t "unwrap" where

  type CFieldType Pixman_transform_t "unwrap" =
    Pixman_transform

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @union pixman_image@

    __defined at:__ @pixman.h 185:16@

    __exported by:__ @pixman.h@
-}
data Pixman_image_t

{-| __C declaration:__ @struct pixman_f_transform@

    __defined at:__ @pixman.h 268:8@

    __exported by:__ @pixman.h@
-}
data Pixman_f_transform = Pixman_f_transform
  { m :: (CA.ConstantArray 3) ((CA.ConstantArray 3) RIP.CDouble)
    {- ^ __C declaration:__ @m@

         __defined at:__ @pixman.h 270:13@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_f_transform where

  staticSizeOf = \_ -> (72 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_f_transform where

  readRaw =
    \ptr0 ->
          pure Pixman_f_transform
      <*> HasCField.readRaw (RIP.Proxy @"m") ptr0

instance Marshal.WriteRaw Pixman_f_transform where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_f_transform m2 ->
            HasCField.writeRaw (RIP.Proxy @"m") ptr0 m2

deriving via Marshal.EquivStorable Pixman_f_transform instance RIP.Storable Pixman_f_transform

instance HasCField.HasCField Pixman_f_transform "m" where

  type CFieldType Pixman_f_transform "m" =
    (CA.ConstantArray 3) ((CA.ConstantArray 3) RIP.CDouble)

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) ((CA.ConstantArray 3) ((CA.ConstantArray 3) RIP.CDouble))
         ) => RIP.HasField "m" (RIP.Ptr Pixman_f_transform) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"m")

{-| __C declaration:__ @pixman_f_transform_t@

    __defined at:__ @pixman.h 260:35@

    __exported by:__ @pixman.h@
-}
newtype Pixman_f_transform_t = Pixman_f_transform_t
  { unwrap :: Pixman_f_transform
  }
  deriving stock (Eq, RIP.Generic, Show)
  deriving newtype
    ( Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) Pixman_f_transform
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_f_transform_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_f_transform_t "unwrap" where

  type CFieldType Pixman_f_transform_t "unwrap" =
    Pixman_f_transform

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct pixman_f_vector@

    __defined at:__ @pixman.h 263:8@

    __exported by:__ @pixman.h@
-}
data Pixman_f_vector = Pixman_f_vector
  { v :: (CA.ConstantArray 3) RIP.CDouble
    {- ^ __C declaration:__ @v@

         __defined at:__ @pixman.h 265:13@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_f_vector where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_f_vector where

  readRaw =
    \ptr0 ->
          pure Pixman_f_vector
      <*> HasCField.readRaw (RIP.Proxy @"v") ptr0

instance Marshal.WriteRaw Pixman_f_vector where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_f_vector v2 ->
            HasCField.writeRaw (RIP.Proxy @"v") ptr0 v2

deriving via Marshal.EquivStorable Pixman_f_vector instance RIP.Storable Pixman_f_vector

instance HasCField.HasCField Pixman_f_vector "v" where

  type CFieldType Pixman_f_vector "v" =
    (CA.ConstantArray 3) RIP.CDouble

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) ((CA.ConstantArray 3) RIP.CDouble)
         ) => RIP.HasField "v" (RIP.Ptr Pixman_f_vector) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"v")

{-| __C declaration:__ @pixman_f_vector_t@

    __defined at:__ @pixman.h 261:32@

    __exported by:__ @pixman.h@
-}
newtype Pixman_f_vector_t = Pixman_f_vector_t
  { unwrap :: Pixman_f_vector
  }
  deriving stock (Eq, RIP.Generic, Show)
  deriving newtype
    ( Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) Pixman_f_vector
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_f_vector_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_f_vector_t "unwrap" where

  type CFieldType Pixman_f_vector_t "unwrap" =
    Pixman_f_vector

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @enum pixman_repeat_t@

    __defined at:__ @pixman.h 339:9@

    __exported by:__ @pixman.h@
-}
newtype Pixman_repeat_t = Pixman_repeat_t
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Pixman_repeat_t where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_repeat_t where

  readRaw =
    \ptr0 ->
          pure Pixman_repeat_t
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Pixman_repeat_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_repeat_t unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Pixman_repeat_t instance RIP.Storable Pixman_repeat_t

deriving via RIP.CUInt instance RIP.Prim Pixman_repeat_t

instance CEnum.CEnum Pixman_repeat_t where

  type CEnumZ Pixman_repeat_t = RIP.CUInt

  toCEnum = Pixman_repeat_t

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "PIXMAN_REPEAT_NONE")
                                   , (1, RIP.singleton "PIXMAN_REPEAT_NORMAL")
                                   , (2, RIP.singleton "PIXMAN_REPEAT_PAD")
                                   , (3, RIP.singleton "PIXMAN_REPEAT_REFLECT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Pixman_repeat_t"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Pixman_repeat_t"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Pixman_repeat_t where

  minDeclaredValue = PIXMAN_REPEAT_NONE

  maxDeclaredValue = PIXMAN_REPEAT_REFLECT

instance Show Pixman_repeat_t where

  showsPrec = CEnum.shows

instance Read Pixman_repeat_t where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_repeat_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_repeat_t "unwrap" where

  type CFieldType Pixman_repeat_t "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @PIXMAN_REPEAT_NONE@

    __defined at:__ @pixman.h 341:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_REPEAT_NONE :: Pixman_repeat_t
pattern PIXMAN_REPEAT_NONE = Pixman_repeat_t 0

{-| __C declaration:__ @PIXMAN_REPEAT_NORMAL@

    __defined at:__ @pixman.h 342:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_REPEAT_NORMAL :: Pixman_repeat_t
pattern PIXMAN_REPEAT_NORMAL = Pixman_repeat_t 1

{-| __C declaration:__ @PIXMAN_REPEAT_PAD@

    __defined at:__ @pixman.h 343:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_REPEAT_PAD :: Pixman_repeat_t
pattern PIXMAN_REPEAT_PAD = Pixman_repeat_t 2

{-| __C declaration:__ @PIXMAN_REPEAT_REFLECT@

    __defined at:__ @pixman.h 344:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_REPEAT_REFLECT :: Pixman_repeat_t
pattern PIXMAN_REPEAT_REFLECT = Pixman_repeat_t 3

{-| __C declaration:__ @enum pixman_dither_t@

    __defined at:__ @pixman.h 347:9@

    __exported by:__ @pixman.h@
-}
newtype Pixman_dither_t = Pixman_dither_t
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Pixman_dither_t where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_dither_t where

  readRaw =
    \ptr0 ->
          pure Pixman_dither_t
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Pixman_dither_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_dither_t unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Pixman_dither_t instance RIP.Storable Pixman_dither_t

deriving via RIP.CUInt instance RIP.Prim Pixman_dither_t

instance CEnum.CEnum Pixman_dither_t where

  type CEnumZ Pixman_dither_t = RIP.CUInt

  toCEnum = Pixman_dither_t

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "PIXMAN_DITHER_NONE")
                                   , (1, RIP.singleton "PIXMAN_DITHER_FAST")
                                   , (2, RIP.singleton "PIXMAN_DITHER_GOOD")
                                   , (3, RIP.singleton "PIXMAN_DITHER_BEST")
                                   , (4, RIP.singleton "PIXMAN_DITHER_ORDERED_BAYER_8")
                                   , (5, RIP.singleton "PIXMAN_DITHER_ORDERED_BLUE_NOISE_64")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Pixman_dither_t"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Pixman_dither_t"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Pixman_dither_t where

  minDeclaredValue = PIXMAN_DITHER_NONE

  maxDeclaredValue =
    PIXMAN_DITHER_ORDERED_BLUE_NOISE_64

instance Show Pixman_dither_t where

  showsPrec = CEnum.shows

instance Read Pixman_dither_t where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_dither_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_dither_t "unwrap" where

  type CFieldType Pixman_dither_t "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @PIXMAN_DITHER_NONE@

    __defined at:__ @pixman.h 349:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_DITHER_NONE :: Pixman_dither_t
pattern PIXMAN_DITHER_NONE = Pixman_dither_t 0

{-| __C declaration:__ @PIXMAN_DITHER_FAST@

    __defined at:__ @pixman.h 350:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_DITHER_FAST :: Pixman_dither_t
pattern PIXMAN_DITHER_FAST = Pixman_dither_t 1

{-| __C declaration:__ @PIXMAN_DITHER_GOOD@

    __defined at:__ @pixman.h 351:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_DITHER_GOOD :: Pixman_dither_t
pattern PIXMAN_DITHER_GOOD = Pixman_dither_t 2

{-| __C declaration:__ @PIXMAN_DITHER_BEST@

    __defined at:__ @pixman.h 352:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_DITHER_BEST :: Pixman_dither_t
pattern PIXMAN_DITHER_BEST = Pixman_dither_t 3

{-| __C declaration:__ @PIXMAN_DITHER_ORDERED_BAYER_8@

    __defined at:__ @pixman.h 353:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_DITHER_ORDERED_BAYER_8 :: Pixman_dither_t
pattern PIXMAN_DITHER_ORDERED_BAYER_8 = Pixman_dither_t 4

{-| __C declaration:__ @PIXMAN_DITHER_ORDERED_BLUE_NOISE_64@

    __defined at:__ @pixman.h 354:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_DITHER_ORDERED_BLUE_NOISE_64 :: Pixman_dither_t
pattern PIXMAN_DITHER_ORDERED_BLUE_NOISE_64 = Pixman_dither_t 5

{-| __C declaration:__ @enum pixman_filter_t@

    __defined at:__ @pixman.h 357:9@

    __exported by:__ @pixman.h@
-}
newtype Pixman_filter_t = Pixman_filter_t
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Pixman_filter_t where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_filter_t where

  readRaw =
    \ptr0 ->
          pure Pixman_filter_t
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Pixman_filter_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_filter_t unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Pixman_filter_t instance RIP.Storable Pixman_filter_t

deriving via RIP.CUInt instance RIP.Prim Pixman_filter_t

instance CEnum.CEnum Pixman_filter_t where

  type CEnumZ Pixman_filter_t = RIP.CUInt

  toCEnum = Pixman_filter_t

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "PIXMAN_FILTER_FAST")
                                   , (1, RIP.singleton "PIXMAN_FILTER_GOOD")
                                   , (2, RIP.singleton "PIXMAN_FILTER_BEST")
                                   , (3, RIP.singleton "PIXMAN_FILTER_NEAREST")
                                   , (4, RIP.singleton "PIXMAN_FILTER_BILINEAR")
                                   , (5, RIP.singleton "PIXMAN_FILTER_CONVOLUTION")
                                   , (6, RIP.singleton "PIXMAN_FILTER_SEPARABLE_CONVOLUTION")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Pixman_filter_t"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Pixman_filter_t"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Pixman_filter_t where

  minDeclaredValue = PIXMAN_FILTER_FAST

  maxDeclaredValue =
    PIXMAN_FILTER_SEPARABLE_CONVOLUTION

instance Show Pixman_filter_t where

  showsPrec = CEnum.shows

instance Read Pixman_filter_t where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_filter_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_filter_t "unwrap" where

  type CFieldType Pixman_filter_t "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @PIXMAN_FILTER_FAST@

    __defined at:__ @pixman.h 359:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_FILTER_FAST :: Pixman_filter_t
pattern PIXMAN_FILTER_FAST = Pixman_filter_t 0

{-| __C declaration:__ @PIXMAN_FILTER_GOOD@

    __defined at:__ @pixman.h 360:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_FILTER_GOOD :: Pixman_filter_t
pattern PIXMAN_FILTER_GOOD = Pixman_filter_t 1

{-| __C declaration:__ @PIXMAN_FILTER_BEST@

    __defined at:__ @pixman.h 361:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_FILTER_BEST :: Pixman_filter_t
pattern PIXMAN_FILTER_BEST = Pixman_filter_t 2

{-| __C declaration:__ @PIXMAN_FILTER_NEAREST@

    __defined at:__ @pixman.h 362:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_FILTER_NEAREST :: Pixman_filter_t
pattern PIXMAN_FILTER_NEAREST = Pixman_filter_t 3

{-| __C declaration:__ @PIXMAN_FILTER_BILINEAR@

    __defined at:__ @pixman.h 363:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_FILTER_BILINEAR :: Pixman_filter_t
pattern PIXMAN_FILTER_BILINEAR = Pixman_filter_t 4

{-| __C declaration:__ @PIXMAN_FILTER_CONVOLUTION@

    __defined at:__ @pixman.h 364:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_FILTER_CONVOLUTION :: Pixman_filter_t
pattern PIXMAN_FILTER_CONVOLUTION = Pixman_filter_t 5

{-| __C declaration:__ @PIXMAN_FILTER_SEPARABLE_CONVOLUTION@

    __defined at:__ @pixman.h 385:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_FILTER_SEPARABLE_CONVOLUTION :: Pixman_filter_t
pattern PIXMAN_FILTER_SEPARABLE_CONVOLUTION = Pixman_filter_t 6

{-| __C declaration:__ @enum pixman_op_t@

    __defined at:__ @pixman.h 388:9@

    __exported by:__ @pixman.h@
-}
newtype Pixman_op_t = Pixman_op_t
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Pixman_op_t where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_op_t where

  readRaw =
    \ptr0 ->
          pure Pixman_op_t
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Pixman_op_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_op_t unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Pixman_op_t instance RIP.Storable Pixman_op_t

deriving via RIP.CUInt instance RIP.Prim Pixman_op_t

instance CEnum.CEnum Pixman_op_t where

  type CEnumZ Pixman_op_t = RIP.CUInt

  toCEnum = Pixman_op_t

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "PIXMAN_OP_CLEAR")
                                   , (1, RIP.singleton "PIXMAN_OP_SRC")
                                   , (2, RIP.singleton "PIXMAN_OP_DST")
                                   , (3, RIP.singleton "PIXMAN_OP_OVER")
                                   , (4, RIP.singleton "PIXMAN_OP_OVER_REVERSE")
                                   , (5, RIP.singleton "PIXMAN_OP_IN")
                                   , (6, RIP.singleton "PIXMAN_OP_IN_REVERSE")
                                   , (7, RIP.singleton "PIXMAN_OP_OUT")
                                   , (8, RIP.singleton "PIXMAN_OP_OUT_REVERSE")
                                   , (9, RIP.singleton "PIXMAN_OP_ATOP")
                                   , (10, RIP.singleton "PIXMAN_OP_ATOP_REVERSE")
                                   , (11, RIP.singleton "PIXMAN_OP_XOR")
                                   , (12, RIP.singleton "PIXMAN_OP_ADD")
                                   , (13, RIP.singleton "PIXMAN_OP_SATURATE")
                                   , (16, RIP.singleton "PIXMAN_OP_DISJOINT_CLEAR")
                                   , (17, RIP.singleton "PIXMAN_OP_DISJOINT_SRC")
                                   , (18, RIP.singleton "PIXMAN_OP_DISJOINT_DST")
                                   , (19, RIP.singleton "PIXMAN_OP_DISJOINT_OVER")
                                   , (20, RIP.singleton "PIXMAN_OP_DISJOINT_OVER_REVERSE")
                                   , (21, RIP.singleton "PIXMAN_OP_DISJOINT_IN")
                                   , (22, RIP.singleton "PIXMAN_OP_DISJOINT_IN_REVERSE")
                                   , (23, RIP.singleton "PIXMAN_OP_DISJOINT_OUT")
                                   , (24, RIP.singleton "PIXMAN_OP_DISJOINT_OUT_REVERSE")
                                   , (25, RIP.singleton "PIXMAN_OP_DISJOINT_ATOP")
                                   , (26, RIP.singleton "PIXMAN_OP_DISJOINT_ATOP_REVERSE")
                                   , (27, RIP.singleton "PIXMAN_OP_DISJOINT_XOR")
                                   , (32, RIP.singleton "PIXMAN_OP_CONJOINT_CLEAR")
                                   , (33, RIP.singleton "PIXMAN_OP_CONJOINT_SRC")
                                   , (34, RIP.singleton "PIXMAN_OP_CONJOINT_DST")
                                   , (35, RIP.singleton "PIXMAN_OP_CONJOINT_OVER")
                                   , (36, RIP.singleton "PIXMAN_OP_CONJOINT_OVER_REVERSE")
                                   , (37, RIP.singleton "PIXMAN_OP_CONJOINT_IN")
                                   , (38, RIP.singleton "PIXMAN_OP_CONJOINT_IN_REVERSE")
                                   , (39, RIP.singleton "PIXMAN_OP_CONJOINT_OUT")
                                   , (40, RIP.singleton "PIXMAN_OP_CONJOINT_OUT_REVERSE")
                                   , (41, RIP.singleton "PIXMAN_OP_CONJOINT_ATOP")
                                   , (42, RIP.singleton "PIXMAN_OP_CONJOINT_ATOP_REVERSE")
                                   , (43, RIP.singleton "PIXMAN_OP_CONJOINT_XOR")
                                   , (48, RIP.singleton "PIXMAN_OP_MULTIPLY")
                                   , (49, RIP.singleton "PIXMAN_OP_SCREEN")
                                   , (50, RIP.singleton "PIXMAN_OP_OVERLAY")
                                   , (51, RIP.singleton "PIXMAN_OP_DARKEN")
                                   , (52, RIP.singleton "PIXMAN_OP_LIGHTEN")
                                   , (53, RIP.singleton "PIXMAN_OP_COLOR_DODGE")
                                   , (54, RIP.singleton "PIXMAN_OP_COLOR_BURN")
                                   , (55, RIP.singleton "PIXMAN_OP_HARD_LIGHT")
                                   , (56, RIP.singleton "PIXMAN_OP_SOFT_LIGHT")
                                   , (57, RIP.singleton "PIXMAN_OP_DIFFERENCE")
                                   , (58, RIP.singleton "PIXMAN_OP_EXCLUSION")
                                   , (59, RIP.singleton "PIXMAN_OP_HSL_HUE")
                                   , (60, RIP.singleton "PIXMAN_OP_HSL_SATURATION")
                                   , (61, RIP.singleton "PIXMAN_OP_HSL_COLOR")
                                   , (62, RIP.singleton "PIXMAN_OP_HSL_LUMINOSITY")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Pixman_op_t"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Pixman_op_t"

instance Show Pixman_op_t where

  showsPrec = CEnum.shows

instance Read Pixman_op_t where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_op_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_op_t "unwrap" where

  type CFieldType Pixman_op_t "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @PIXMAN_OP_CLEAR@

    __defined at:__ @pixman.h 390:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CLEAR :: Pixman_op_t
pattern PIXMAN_OP_CLEAR = Pixman_op_t 0

{-| __C declaration:__ @PIXMAN_OP_SRC@

    __defined at:__ @pixman.h 391:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_SRC :: Pixman_op_t
pattern PIXMAN_OP_SRC = Pixman_op_t 1

{-| __C declaration:__ @PIXMAN_OP_DST@

    __defined at:__ @pixman.h 392:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DST :: Pixman_op_t
pattern PIXMAN_OP_DST = Pixman_op_t 2

{-| __C declaration:__ @PIXMAN_OP_OVER@

    __defined at:__ @pixman.h 393:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_OVER :: Pixman_op_t
pattern PIXMAN_OP_OVER = Pixman_op_t 3

{-| __C declaration:__ @PIXMAN_OP_OVER_REVERSE@

    __defined at:__ @pixman.h 394:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_OVER_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_OVER_REVERSE = Pixman_op_t 4

{-| __C declaration:__ @PIXMAN_OP_IN@

    __defined at:__ @pixman.h 395:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_IN :: Pixman_op_t
pattern PIXMAN_OP_IN = Pixman_op_t 5

{-| __C declaration:__ @PIXMAN_OP_IN_REVERSE@

    __defined at:__ @pixman.h 396:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_IN_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_IN_REVERSE = Pixman_op_t 6

{-| __C declaration:__ @PIXMAN_OP_OUT@

    __defined at:__ @pixman.h 397:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_OUT :: Pixman_op_t
pattern PIXMAN_OP_OUT = Pixman_op_t 7

{-| __C declaration:__ @PIXMAN_OP_OUT_REVERSE@

    __defined at:__ @pixman.h 398:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_OUT_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_OUT_REVERSE = Pixman_op_t 8

{-| __C declaration:__ @PIXMAN_OP_ATOP@

    __defined at:__ @pixman.h 399:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_ATOP :: Pixman_op_t
pattern PIXMAN_OP_ATOP = Pixman_op_t 9

{-| __C declaration:__ @PIXMAN_OP_ATOP_REVERSE@

    __defined at:__ @pixman.h 400:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_ATOP_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_ATOP_REVERSE = Pixman_op_t 10

{-| __C declaration:__ @PIXMAN_OP_XOR@

    __defined at:__ @pixman.h 401:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_XOR :: Pixman_op_t
pattern PIXMAN_OP_XOR = Pixman_op_t 11

{-| __C declaration:__ @PIXMAN_OP_ADD@

    __defined at:__ @pixman.h 402:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_ADD :: Pixman_op_t
pattern PIXMAN_OP_ADD = Pixman_op_t 12

{-| __C declaration:__ @PIXMAN_OP_SATURATE@

    __defined at:__ @pixman.h 403:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_SATURATE :: Pixman_op_t
pattern PIXMAN_OP_SATURATE = Pixman_op_t 13

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_CLEAR@

    __defined at:__ @pixman.h 405:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_CLEAR :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_CLEAR = Pixman_op_t 16

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_SRC@

    __defined at:__ @pixman.h 406:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_SRC :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_SRC = Pixman_op_t 17

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_DST@

    __defined at:__ @pixman.h 407:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_DST :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_DST = Pixman_op_t 18

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_OVER@

    __defined at:__ @pixman.h 408:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_OVER :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_OVER = Pixman_op_t 19

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_OVER_REVERSE@

    __defined at:__ @pixman.h 409:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_OVER_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_OVER_REVERSE = Pixman_op_t 20

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_IN@

    __defined at:__ @pixman.h 410:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_IN :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_IN = Pixman_op_t 21

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_IN_REVERSE@

    __defined at:__ @pixman.h 411:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_IN_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_IN_REVERSE = Pixman_op_t 22

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_OUT@

    __defined at:__ @pixman.h 412:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_OUT :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_OUT = Pixman_op_t 23

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_OUT_REVERSE@

    __defined at:__ @pixman.h 413:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_OUT_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_OUT_REVERSE = Pixman_op_t 24

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_ATOP@

    __defined at:__ @pixman.h 414:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_ATOP :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_ATOP = Pixman_op_t 25

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_ATOP_REVERSE@

    __defined at:__ @pixman.h 415:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_ATOP_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_ATOP_REVERSE = Pixman_op_t 26

{-| __C declaration:__ @PIXMAN_OP_DISJOINT_XOR@

    __defined at:__ @pixman.h 416:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DISJOINT_XOR :: Pixman_op_t
pattern PIXMAN_OP_DISJOINT_XOR = Pixman_op_t 27

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_CLEAR@

    __defined at:__ @pixman.h 418:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_CLEAR :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_CLEAR = Pixman_op_t 32

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_SRC@

    __defined at:__ @pixman.h 419:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_SRC :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_SRC = Pixman_op_t 33

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_DST@

    __defined at:__ @pixman.h 420:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_DST :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_DST = Pixman_op_t 34

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_OVER@

    __defined at:__ @pixman.h 421:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_OVER :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_OVER = Pixman_op_t 35

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_OVER_REVERSE@

    __defined at:__ @pixman.h 422:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_OVER_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_OVER_REVERSE = Pixman_op_t 36

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_IN@

    __defined at:__ @pixman.h 423:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_IN :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_IN = Pixman_op_t 37

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_IN_REVERSE@

    __defined at:__ @pixman.h 424:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_IN_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_IN_REVERSE = Pixman_op_t 38

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_OUT@

    __defined at:__ @pixman.h 425:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_OUT :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_OUT = Pixman_op_t 39

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_OUT_REVERSE@

    __defined at:__ @pixman.h 426:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_OUT_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_OUT_REVERSE = Pixman_op_t 40

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_ATOP@

    __defined at:__ @pixman.h 427:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_ATOP :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_ATOP = Pixman_op_t 41

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_ATOP_REVERSE@

    __defined at:__ @pixman.h 428:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_ATOP_REVERSE :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_ATOP_REVERSE = Pixman_op_t 42

{-| __C declaration:__ @PIXMAN_OP_CONJOINT_XOR@

    __defined at:__ @pixman.h 429:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_CONJOINT_XOR :: Pixman_op_t
pattern PIXMAN_OP_CONJOINT_XOR = Pixman_op_t 43

{-| __C declaration:__ @PIXMAN_OP_MULTIPLY@

    __defined at:__ @pixman.h 431:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_MULTIPLY :: Pixman_op_t
pattern PIXMAN_OP_MULTIPLY = Pixman_op_t 48

{-| __C declaration:__ @PIXMAN_OP_SCREEN@

    __defined at:__ @pixman.h 432:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_SCREEN :: Pixman_op_t
pattern PIXMAN_OP_SCREEN = Pixman_op_t 49

{-| __C declaration:__ @PIXMAN_OP_OVERLAY@

    __defined at:__ @pixman.h 433:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_OVERLAY :: Pixman_op_t
pattern PIXMAN_OP_OVERLAY = Pixman_op_t 50

{-| __C declaration:__ @PIXMAN_OP_DARKEN@

    __defined at:__ @pixman.h 434:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DARKEN :: Pixman_op_t
pattern PIXMAN_OP_DARKEN = Pixman_op_t 51

{-| __C declaration:__ @PIXMAN_OP_LIGHTEN@

    __defined at:__ @pixman.h 435:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_LIGHTEN :: Pixman_op_t
pattern PIXMAN_OP_LIGHTEN = Pixman_op_t 52

{-| __C declaration:__ @PIXMAN_OP_COLOR_DODGE@

    __defined at:__ @pixman.h 436:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_COLOR_DODGE :: Pixman_op_t
pattern PIXMAN_OP_COLOR_DODGE = Pixman_op_t 53

{-| __C declaration:__ @PIXMAN_OP_COLOR_BURN@

    __defined at:__ @pixman.h 437:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_COLOR_BURN :: Pixman_op_t
pattern PIXMAN_OP_COLOR_BURN = Pixman_op_t 54

{-| __C declaration:__ @PIXMAN_OP_HARD_LIGHT@

    __defined at:__ @pixman.h 438:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_HARD_LIGHT :: Pixman_op_t
pattern PIXMAN_OP_HARD_LIGHT = Pixman_op_t 55

{-| __C declaration:__ @PIXMAN_OP_SOFT_LIGHT@

    __defined at:__ @pixman.h 439:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_SOFT_LIGHT :: Pixman_op_t
pattern PIXMAN_OP_SOFT_LIGHT = Pixman_op_t 56

{-| __C declaration:__ @PIXMAN_OP_DIFFERENCE@

    __defined at:__ @pixman.h 440:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_DIFFERENCE :: Pixman_op_t
pattern PIXMAN_OP_DIFFERENCE = Pixman_op_t 57

{-| __C declaration:__ @PIXMAN_OP_EXCLUSION@

    __defined at:__ @pixman.h 441:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_EXCLUSION :: Pixman_op_t
pattern PIXMAN_OP_EXCLUSION = Pixman_op_t 58

{-| __C declaration:__ @PIXMAN_OP_HSL_HUE@

    __defined at:__ @pixman.h 442:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_HSL_HUE :: Pixman_op_t
pattern PIXMAN_OP_HSL_HUE = Pixman_op_t 59

{-| __C declaration:__ @PIXMAN_OP_HSL_SATURATION@

    __defined at:__ @pixman.h 443:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_HSL_SATURATION :: Pixman_op_t
pattern PIXMAN_OP_HSL_SATURATION = Pixman_op_t 60

{-| __C declaration:__ @PIXMAN_OP_HSL_COLOR@

    __defined at:__ @pixman.h 444:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_HSL_COLOR :: Pixman_op_t
pattern PIXMAN_OP_HSL_COLOR = Pixman_op_t 61

{-| __C declaration:__ @PIXMAN_OP_HSL_LUMINOSITY@

    __defined at:__ @pixman.h 445:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_OP_HSL_LUMINOSITY :: Pixman_op_t
pattern PIXMAN_OP_HSL_LUMINOSITY = Pixman_op_t 62

{-| __C declaration:__ @struct pixman_region16_data@

    __defined at:__ @pixman.h 462:8@

    __exported by:__ @pixman.h@
-}
data Pixman_region16_data_t = Pixman_region16_data_t
  { size :: RIP.CLong
    {- ^ __C declaration:__ @size@

         __defined at:__ @pixman.h 463:11@

         __exported by:__ @pixman.h@
    -}
  , numRects :: RIP.CLong
    {- ^ __C declaration:__ @numRects@

         __defined at:__ @pixman.h 464:11@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_region16_data_t where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_region16_data_t where

  readRaw =
    \ptr0 ->
          pure Pixman_region16_data_t
      <*> HasCField.readRaw (RIP.Proxy @"size") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"numRects") ptr0

instance Marshal.WriteRaw Pixman_region16_data_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_region16_data_t size2 numRects3 ->
               HasCField.writeRaw (RIP.Proxy @"size") ptr0 size2
            >> HasCField.writeRaw (RIP.Proxy @"numRects") ptr0 numRects3

deriving via Marshal.EquivStorable Pixman_region16_data_t instance RIP.Storable Pixman_region16_data_t

instance HasCField.HasCField Pixman_region16_data_t "size" where

  type CFieldType Pixman_region16_data_t "size" =
    RIP.CLong

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) RIP.CLong
         ) => RIP.HasField "size" (RIP.Ptr Pixman_region16_data_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"size")

instance HasCField.HasCField Pixman_region16_data_t "numRects" where

  type CFieldType Pixman_region16_data_t "numRects" =
    RIP.CLong

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) RIP.CLong
         ) => RIP.HasField "numRects" (RIP.Ptr Pixman_region16_data_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"numRects")

{-| __C declaration:__ @struct pixman_box16@

    __defined at:__ @pixman.h 474:8@

    __exported by:__ @pixman.h@
-}
data Pixman_box16 = Pixman_box16
  { x1 :: HsBindgen.Runtime.LibC.Int16
    {- ^ __C declaration:__ @x1@

         __defined at:__ @pixman.h 476:13@

         __exported by:__ @pixman.h@
    -}
  , y1 :: HsBindgen.Runtime.LibC.Int16
    {- ^ __C declaration:__ @y1@

         __defined at:__ @pixman.h 476:17@

         __exported by:__ @pixman.h@
    -}
  , x2 :: HsBindgen.Runtime.LibC.Int16
    {- ^ __C declaration:__ @x2@

         __defined at:__ @pixman.h 476:21@

         __exported by:__ @pixman.h@
    -}
  , y2 :: HsBindgen.Runtime.LibC.Int16
    {- ^ __C declaration:__ @y2@

         __defined at:__ @pixman.h 476:25@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_box16 where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (2 :: Int)

instance Marshal.ReadRaw Pixman_box16 where

  readRaw =
    \ptr0 ->
          pure Pixman_box16
      <*> HasCField.readRaw (RIP.Proxy @"x1") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y1") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"x2") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y2") ptr0

instance Marshal.WriteRaw Pixman_box16 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_box16 x12 y13 x24 y25 ->
               HasCField.writeRaw (RIP.Proxy @"x1") ptr0 x12
            >> HasCField.writeRaw (RIP.Proxy @"y1") ptr0 y13
            >> HasCField.writeRaw (RIP.Proxy @"x2") ptr0 x24
            >> HasCField.writeRaw (RIP.Proxy @"y2") ptr0 y25

deriving via Marshal.EquivStorable Pixman_box16 instance RIP.Storable Pixman_box16

instance HasCField.HasCField Pixman_box16 "x1" where

  type CFieldType Pixman_box16 "x1" =
    HsBindgen.Runtime.LibC.Int16

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int16
         ) => RIP.HasField "x1" (RIP.Ptr Pixman_box16) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x1")

instance HasCField.HasCField Pixman_box16 "y1" where

  type CFieldType Pixman_box16 "y1" =
    HsBindgen.Runtime.LibC.Int16

  offset# = \_ -> \_ -> 2

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int16
         ) => RIP.HasField "y1" (RIP.Ptr Pixman_box16) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y1")

instance HasCField.HasCField Pixman_box16 "x2" where

  type CFieldType Pixman_box16 "x2" =
    HsBindgen.Runtime.LibC.Int16

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int16
         ) => RIP.HasField "x2" (RIP.Ptr Pixman_box16) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x2")

instance HasCField.HasCField Pixman_box16 "y2" where

  type CFieldType Pixman_box16 "y2" =
    HsBindgen.Runtime.LibC.Int16

  offset# = \_ -> \_ -> 6

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int16
         ) => RIP.HasField "y2" (RIP.Ptr Pixman_box16) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y2")

{-| __C declaration:__ @pixman_box16_t@

    __defined at:__ @pixman.h 458:30@

    __exported by:__ @pixman.h@
-}
newtype Pixman_box16_t = Pixman_box16_t
  { unwrap :: Pixman_box16
  }
  deriving stock (Eq, RIP.Generic, Show)
  deriving newtype
    ( Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) Pixman_box16
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_box16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_box16_t "unwrap" where

  type CFieldType Pixman_box16_t "unwrap" =
    Pixman_box16

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct pixman_rectangle16@

    __defined at:__ @pixman.h 468:8@

    __exported by:__ @pixman.h@
-}
data Pixman_rectangle16_t = Pixman_rectangle16_t
  { x :: HsBindgen.Runtime.LibC.Int16
    {- ^ __C declaration:__ @x@

         __defined at:__ @pixman.h 470:13@

         __exported by:__ @pixman.h@
    -}
  , y :: HsBindgen.Runtime.LibC.Int16
    {- ^ __C declaration:__ @y@

         __defined at:__ @pixman.h 470:16@

         __exported by:__ @pixman.h@
    -}
  , width :: HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @width@

         __defined at:__ @pixman.h 471:14@

         __exported by:__ @pixman.h@
    -}
  , height :: HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @height@

         __defined at:__ @pixman.h 471:21@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_rectangle16_t where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (2 :: Int)

instance Marshal.ReadRaw Pixman_rectangle16_t where

  readRaw =
    \ptr0 ->
          pure Pixman_rectangle16_t
      <*> HasCField.readRaw (RIP.Proxy @"x") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"width") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"height") ptr0

instance Marshal.WriteRaw Pixman_rectangle16_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_rectangle16_t x2 y3 width4 height5 ->
               HasCField.writeRaw (RIP.Proxy @"x") ptr0 x2
            >> HasCField.writeRaw (RIP.Proxy @"y") ptr0 y3
            >> HasCField.writeRaw (RIP.Proxy @"width") ptr0 width4
            >> HasCField.writeRaw (RIP.Proxy @"height") ptr0 height5

deriving via Marshal.EquivStorable Pixman_rectangle16_t instance RIP.Storable Pixman_rectangle16_t

instance HasCField.HasCField Pixman_rectangle16_t "x" where

  type CFieldType Pixman_rectangle16_t "x" =
    HsBindgen.Runtime.LibC.Int16

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int16
         ) => RIP.HasField "x" (RIP.Ptr Pixman_rectangle16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x")

instance HasCField.HasCField Pixman_rectangle16_t "y" where

  type CFieldType Pixman_rectangle16_t "y" =
    HsBindgen.Runtime.LibC.Int16

  offset# = \_ -> \_ -> 2

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int16
         ) => RIP.HasField "y" (RIP.Ptr Pixman_rectangle16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y")

instance HasCField.HasCField Pixman_rectangle16_t "width" where

  type CFieldType Pixman_rectangle16_t "width" =
    HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word16
         ) => RIP.HasField "width" (RIP.Ptr Pixman_rectangle16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"width")

instance HasCField.HasCField Pixman_rectangle16_t "height" where

  type CFieldType Pixman_rectangle16_t "height" =
    HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 6

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word16
         ) => RIP.HasField "height" (RIP.Ptr Pixman_rectangle16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"height")

{-| __C declaration:__ @struct pixman_region16@

    __defined at:__ @pixman.h 479:8@

    __exported by:__ @pixman.h@
-}
data Pixman_region16_t = Pixman_region16_t
  { extents :: Pixman_box16_t
    {- ^ __C declaration:__ @extents@

         __defined at:__ @pixman.h 481:29@

         __exported by:__ @pixman.h@
    -}
  , data' :: RIP.Ptr Pixman_region16_data_t
    {- ^ __C declaration:__ @data@

         __defined at:__ @pixman.h 482:29@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_region16_t where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_region16_t where

  readRaw =
    \ptr0 ->
          pure Pixman_region16_t
      <*> HasCField.readRaw (RIP.Proxy @"extents") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"data'") ptr0

instance Marshal.WriteRaw Pixman_region16_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_region16_t extents2 data'3 ->
               HasCField.writeRaw (RIP.Proxy @"extents") ptr0 extents2
            >> HasCField.writeRaw (RIP.Proxy @"data'") ptr0 data'3

deriving via Marshal.EquivStorable Pixman_region16_t instance RIP.Storable Pixman_region16_t

instance HasCField.HasCField Pixman_region16_t "extents" where

  type CFieldType Pixman_region16_t "extents" =
    Pixman_box16_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_box16_t
         ) => RIP.HasField "extents" (RIP.Ptr Pixman_region16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"extents")

instance HasCField.HasCField Pixman_region16_t "data'" where

  type CFieldType Pixman_region16_t "data'" =
    RIP.Ptr Pixman_region16_data_t

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.Ptr Pixman_region16_data_t)
         ) => RIP.HasField "data'" (RIP.Ptr Pixman_region16_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"data'")

{-| __C declaration:__ @enum pixman_region_overlap_t@

    __defined at:__ @pixman.h 485:9@

    __exported by:__ @pixman.h@
-}
newtype Pixman_region_overlap_t = Pixman_region_overlap_t
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Pixman_region_overlap_t where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_region_overlap_t where

  readRaw =
    \ptr0 ->
          pure Pixman_region_overlap_t
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Pixman_region_overlap_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_region_overlap_t unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Pixman_region_overlap_t instance RIP.Storable Pixman_region_overlap_t

deriving via RIP.CUInt instance RIP.Prim Pixman_region_overlap_t

instance CEnum.CEnum Pixman_region_overlap_t where

  type CEnumZ Pixman_region_overlap_t = RIP.CUInt

  toCEnum = Pixman_region_overlap_t

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "PIXMAN_REGION_OUT")
                                   , (1, RIP.singleton "PIXMAN_REGION_IN")
                                   , (2, RIP.singleton "PIXMAN_REGION_PART")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Pixman_region_overlap_t"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Pixman_region_overlap_t"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Pixman_region_overlap_t where

  minDeclaredValue = PIXMAN_REGION_OUT

  maxDeclaredValue = PIXMAN_REGION_PART

instance Show Pixman_region_overlap_t where

  showsPrec = CEnum.shows

instance Read Pixman_region_overlap_t where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_region_overlap_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_region_overlap_t "unwrap" where

  type CFieldType Pixman_region_overlap_t "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @PIXMAN_REGION_OUT@

    __defined at:__ @pixman.h 487:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_REGION_OUT :: Pixman_region_overlap_t
pattern PIXMAN_REGION_OUT = Pixman_region_overlap_t 0

{-| __C declaration:__ @PIXMAN_REGION_IN@

    __defined at:__ @pixman.h 488:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_REGION_IN :: Pixman_region_overlap_t
pattern PIXMAN_REGION_IN = Pixman_region_overlap_t 1

{-| __C declaration:__ @PIXMAN_REGION_PART@

    __defined at:__ @pixman.h 489:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_REGION_PART :: Pixman_region_overlap_t
pattern PIXMAN_REGION_PART = Pixman_region_overlap_t 2

{-| __C declaration:__ @struct pixman_region32_data@

    __defined at:__ @pixman.h 621:8@

    __exported by:__ @pixman.h@
-}
data Pixman_region32_data_t = Pixman_region32_data_t
  { size :: RIP.CLong
    {- ^ __C declaration:__ @size@

         __defined at:__ @pixman.h 622:11@

         __exported by:__ @pixman.h@
    -}
  , numRects :: RIP.CLong
    {- ^ __C declaration:__ @numRects@

         __defined at:__ @pixman.h 623:11@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_region32_data_t where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_region32_data_t where

  readRaw =
    \ptr0 ->
          pure Pixman_region32_data_t
      <*> HasCField.readRaw (RIP.Proxy @"size") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"numRects") ptr0

instance Marshal.WriteRaw Pixman_region32_data_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_region32_data_t size2 numRects3 ->
               HasCField.writeRaw (RIP.Proxy @"size") ptr0 size2
            >> HasCField.writeRaw (RIP.Proxy @"numRects") ptr0 numRects3

deriving via Marshal.EquivStorable Pixman_region32_data_t instance RIP.Storable Pixman_region32_data_t

instance HasCField.HasCField Pixman_region32_data_t "size" where

  type CFieldType Pixman_region32_data_t "size" =
    RIP.CLong

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) RIP.CLong
         ) => RIP.HasField "size" (RIP.Ptr Pixman_region32_data_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"size")

instance HasCField.HasCField Pixman_region32_data_t "numRects" where

  type CFieldType Pixman_region32_data_t "numRects" =
    RIP.CLong

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) RIP.CLong
         ) => RIP.HasField "numRects" (RIP.Ptr Pixman_region32_data_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"numRects")

{-| __C declaration:__ @struct pixman_box32@

    __defined at:__ @pixman.h 633:8@

    __exported by:__ @pixman.h@
-}
data Pixman_box32_t = Pixman_box32_t
  { x1 :: HsBindgen.Runtime.LibC.Int32
    {- ^ __C declaration:__ @x1@

         __defined at:__ @pixman.h 635:13@

         __exported by:__ @pixman.h@
    -}
  , y1 :: HsBindgen.Runtime.LibC.Int32
    {- ^ __C declaration:__ @y1@

         __defined at:__ @pixman.h 635:17@

         __exported by:__ @pixman.h@
    -}
  , x2 :: HsBindgen.Runtime.LibC.Int32
    {- ^ __C declaration:__ @x2@

         __defined at:__ @pixman.h 635:21@

         __exported by:__ @pixman.h@
    -}
  , y2 :: HsBindgen.Runtime.LibC.Int32
    {- ^ __C declaration:__ @y2@

         __defined at:__ @pixman.h 635:25@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_box32_t where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_box32_t where

  readRaw =
    \ptr0 ->
          pure Pixman_box32_t
      <*> HasCField.readRaw (RIP.Proxy @"x1") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y1") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"x2") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y2") ptr0

instance Marshal.WriteRaw Pixman_box32_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_box32_t x12 y13 x24 y25 ->
               HasCField.writeRaw (RIP.Proxy @"x1") ptr0 x12
            >> HasCField.writeRaw (RIP.Proxy @"y1") ptr0 y13
            >> HasCField.writeRaw (RIP.Proxy @"x2") ptr0 x24
            >> HasCField.writeRaw (RIP.Proxy @"y2") ptr0 y25

deriving via Marshal.EquivStorable Pixman_box32_t instance RIP.Storable Pixman_box32_t

instance HasCField.HasCField Pixman_box32_t "x1" where

  type CFieldType Pixman_box32_t "x1" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "x1" (RIP.Ptr Pixman_box32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x1")

instance HasCField.HasCField Pixman_box32_t "y1" where

  type CFieldType Pixman_box32_t "y1" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "y1" (RIP.Ptr Pixman_box32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y1")

instance HasCField.HasCField Pixman_box32_t "x2" where

  type CFieldType Pixman_box32_t "x2" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "x2" (RIP.Ptr Pixman_box32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x2")

instance HasCField.HasCField Pixman_box32_t "y2" where

  type CFieldType Pixman_box32_t "y2" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 12

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "y2" (RIP.Ptr Pixman_box32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y2")

{-| __C declaration:__ @struct pixman_rectangle32@

    __defined at:__ @pixman.h 627:8@

    __exported by:__ @pixman.h@
-}
data Pixman_rectangle32_t = Pixman_rectangle32_t
  { x :: HsBindgen.Runtime.LibC.Int32
    {- ^ __C declaration:__ @x@

         __defined at:__ @pixman.h 629:13@

         __exported by:__ @pixman.h@
    -}
  , y :: HsBindgen.Runtime.LibC.Int32
    {- ^ __C declaration:__ @y@

         __defined at:__ @pixman.h 629:16@

         __exported by:__ @pixman.h@
    -}
  , width :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @width@

         __defined at:__ @pixman.h 630:14@

         __exported by:__ @pixman.h@
    -}
  , height :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @height@

         __defined at:__ @pixman.h 630:21@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_rectangle32_t where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_rectangle32_t where

  readRaw =
    \ptr0 ->
          pure Pixman_rectangle32_t
      <*> HasCField.readRaw (RIP.Proxy @"x") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"width") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"height") ptr0

instance Marshal.WriteRaw Pixman_rectangle32_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_rectangle32_t x2 y3 width4 height5 ->
               HasCField.writeRaw (RIP.Proxy @"x") ptr0 x2
            >> HasCField.writeRaw (RIP.Proxy @"y") ptr0 y3
            >> HasCField.writeRaw (RIP.Proxy @"width") ptr0 width4
            >> HasCField.writeRaw (RIP.Proxy @"height") ptr0 height5

deriving via Marshal.EquivStorable Pixman_rectangle32_t instance RIP.Storable Pixman_rectangle32_t

instance HasCField.HasCField Pixman_rectangle32_t "x" where

  type CFieldType Pixman_rectangle32_t "x" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "x" (RIP.Ptr Pixman_rectangle32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x")

instance HasCField.HasCField Pixman_rectangle32_t "y" where

  type CFieldType Pixman_rectangle32_t "y" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "y" (RIP.Ptr Pixman_rectangle32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y")

instance HasCField.HasCField Pixman_rectangle32_t "width" where

  type CFieldType Pixman_rectangle32_t "width" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "width" (RIP.Ptr Pixman_rectangle32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"width")

instance HasCField.HasCField Pixman_rectangle32_t "height" where

  type CFieldType Pixman_rectangle32_t "height" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 12

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "height" (RIP.Ptr Pixman_rectangle32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"height")

{-| __C declaration:__ @struct pixman_region32@

    __defined at:__ @pixman.h 638:8@

    __exported by:__ @pixman.h@
-}
data Pixman_region32_t = Pixman_region32_t
  { extents :: Pixman_box32_t
    {- ^ __C declaration:__ @extents@

         __defined at:__ @pixman.h 640:29@

         __exported by:__ @pixman.h@
    -}
  , data' :: RIP.Ptr Pixman_region32_data_t
    {- ^ __C declaration:__ @data@

         __defined at:__ @pixman.h 641:30@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_region32_t where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_region32_t where

  readRaw =
    \ptr0 ->
          pure Pixman_region32_t
      <*> HasCField.readRaw (RIP.Proxy @"extents") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"data'") ptr0

instance Marshal.WriteRaw Pixman_region32_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_region32_t extents2 data'3 ->
               HasCField.writeRaw (RIP.Proxy @"extents") ptr0 extents2
            >> HasCField.writeRaw (RIP.Proxy @"data'") ptr0 data'3

deriving via Marshal.EquivStorable Pixman_region32_t instance RIP.Storable Pixman_region32_t

instance HasCField.HasCField Pixman_region32_t "extents" where

  type CFieldType Pixman_region32_t "extents" =
    Pixman_box32_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_box32_t
         ) => RIP.HasField "extents" (RIP.Ptr Pixman_region32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"extents")

instance HasCField.HasCField Pixman_region32_t "data'" where

  type CFieldType Pixman_region32_t "data'" =
    RIP.Ptr Pixman_region32_data_t

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.Ptr Pixman_region32_data_t)
         ) => RIP.HasField "data'" (RIP.Ptr Pixman_region32_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"data'")

{-| __C declaration:__ @struct pixman_region64f_data@

    __defined at:__ @pixman.h 765:8@

    __exported by:__ @pixman.h@
-}
data Pixman_region64f_data_t = Pixman_region64f_data_t
  { size :: RIP.CLong
    {- ^ __C declaration:__ @size@

         __defined at:__ @pixman.h 766:11@

         __exported by:__ @pixman.h@
    -}
  , numRects :: RIP.CLong
    {- ^ __C declaration:__ @numRects@

         __defined at:__ @pixman.h 767:11@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_region64f_data_t where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_region64f_data_t where

  readRaw =
    \ptr0 ->
          pure Pixman_region64f_data_t
      <*> HasCField.readRaw (RIP.Proxy @"size") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"numRects") ptr0

instance Marshal.WriteRaw Pixman_region64f_data_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_region64f_data_t size2 numRects3 ->
               HasCField.writeRaw (RIP.Proxy @"size") ptr0 size2
            >> HasCField.writeRaw (RIP.Proxy @"numRects") ptr0 numRects3

deriving via Marshal.EquivStorable Pixman_region64f_data_t instance RIP.Storable Pixman_region64f_data_t

instance HasCField.HasCField Pixman_region64f_data_t "size" where

  type CFieldType Pixman_region64f_data_t "size" =
    RIP.CLong

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) RIP.CLong
         ) => RIP.HasField "size" (RIP.Ptr Pixman_region64f_data_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"size")

instance HasCField.HasCField Pixman_region64f_data_t "numRects" where

  type CFieldType Pixman_region64f_data_t "numRects" =
    RIP.CLong

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) RIP.CLong
         ) => RIP.HasField "numRects" (RIP.Ptr Pixman_region64f_data_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"numRects")

{-| __C declaration:__ @struct pixman_box64f@

    __defined at:__ @pixman.h 777:8@

    __exported by:__ @pixman.h@
-}
data Pixman_box64f_t = Pixman_box64f_t
  { x1 :: RIP.CDouble
    {- ^ __C declaration:__ @x1@

         __defined at:__ @pixman.h 779:12@

         __exported by:__ @pixman.h@
    -}
  , y1 :: RIP.CDouble
    {- ^ __C declaration:__ @y1@

         __defined at:__ @pixman.h 779:16@

         __exported by:__ @pixman.h@
    -}
  , x2 :: RIP.CDouble
    {- ^ __C declaration:__ @x2@

         __defined at:__ @pixman.h 779:20@

         __exported by:__ @pixman.h@
    -}
  , y2 :: RIP.CDouble
    {- ^ __C declaration:__ @y2@

         __defined at:__ @pixman.h 779:24@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_box64f_t where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_box64f_t where

  readRaw =
    \ptr0 ->
          pure Pixman_box64f_t
      <*> HasCField.readRaw (RIP.Proxy @"x1") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y1") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"x2") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y2") ptr0

instance Marshal.WriteRaw Pixman_box64f_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_box64f_t x12 y13 x24 y25 ->
               HasCField.writeRaw (RIP.Proxy @"x1") ptr0 x12
            >> HasCField.writeRaw (RIP.Proxy @"y1") ptr0 y13
            >> HasCField.writeRaw (RIP.Proxy @"x2") ptr0 x24
            >> HasCField.writeRaw (RIP.Proxy @"y2") ptr0 y25

deriving via Marshal.EquivStorable Pixman_box64f_t instance RIP.Storable Pixman_box64f_t

instance HasCField.HasCField Pixman_box64f_t "x1" where

  type CFieldType Pixman_box64f_t "x1" = RIP.CDouble

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) RIP.CDouble
         ) => RIP.HasField "x1" (RIP.Ptr Pixman_box64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x1")

instance HasCField.HasCField Pixman_box64f_t "y1" where

  type CFieldType Pixman_box64f_t "y1" = RIP.CDouble

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) RIP.CDouble
         ) => RIP.HasField "y1" (RIP.Ptr Pixman_box64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y1")

instance HasCField.HasCField Pixman_box64f_t "x2" where

  type CFieldType Pixman_box64f_t "x2" = RIP.CDouble

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) RIP.CDouble
         ) => RIP.HasField "x2" (RIP.Ptr Pixman_box64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x2")

instance HasCField.HasCField Pixman_box64f_t "y2" where

  type CFieldType Pixman_box64f_t "y2" = RIP.CDouble

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) RIP.CDouble
         ) => RIP.HasField "y2" (RIP.Ptr Pixman_box64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y2")

{-| __C declaration:__ @struct pixman_rectangle64f@

    __defined at:__ @pixman.h 771:8@

    __exported by:__ @pixman.h@
-}
data Pixman_rectangle64f_t = Pixman_rectangle64f_t
  { x :: RIP.CDouble
    {- ^ __C declaration:__ @x@

         __defined at:__ @pixman.h 773:12@

         __exported by:__ @pixman.h@
    -}
  , y :: RIP.CDouble
    {- ^ __C declaration:__ @y@

         __defined at:__ @pixman.h 773:15@

         __exported by:__ @pixman.h@
    -}
  , width :: RIP.CDouble
    {- ^ __C declaration:__ @width@

         __defined at:__ @pixman.h 774:12@

         __exported by:__ @pixman.h@
    -}
  , height :: RIP.CDouble
    {- ^ __C declaration:__ @height@

         __defined at:__ @pixman.h 774:19@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_rectangle64f_t where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_rectangle64f_t where

  readRaw =
    \ptr0 ->
          pure Pixman_rectangle64f_t
      <*> HasCField.readRaw (RIP.Proxy @"x") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"width") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"height") ptr0

instance Marshal.WriteRaw Pixman_rectangle64f_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_rectangle64f_t x2 y3 width4 height5 ->
               HasCField.writeRaw (RIP.Proxy @"x") ptr0 x2
            >> HasCField.writeRaw (RIP.Proxy @"y") ptr0 y3
            >> HasCField.writeRaw (RIP.Proxy @"width") ptr0 width4
            >> HasCField.writeRaw (RIP.Proxy @"height") ptr0 height5

deriving via Marshal.EquivStorable Pixman_rectangle64f_t instance RIP.Storable Pixman_rectangle64f_t

instance HasCField.HasCField Pixman_rectangle64f_t "x" where

  type CFieldType Pixman_rectangle64f_t "x" =
    RIP.CDouble

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) RIP.CDouble
         ) => RIP.HasField "x" (RIP.Ptr Pixman_rectangle64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x")

instance HasCField.HasCField Pixman_rectangle64f_t "y" where

  type CFieldType Pixman_rectangle64f_t "y" =
    RIP.CDouble

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) RIP.CDouble
         ) => RIP.HasField "y" (RIP.Ptr Pixman_rectangle64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y")

instance HasCField.HasCField Pixman_rectangle64f_t "width" where

  type CFieldType Pixman_rectangle64f_t "width" =
    RIP.CDouble

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) RIP.CDouble
         ) => RIP.HasField "width" (RIP.Ptr Pixman_rectangle64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"width")

instance HasCField.HasCField Pixman_rectangle64f_t "height" where

  type CFieldType Pixman_rectangle64f_t "height" =
    RIP.CDouble

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) RIP.CDouble
         ) => RIP.HasField "height" (RIP.Ptr Pixman_rectangle64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"height")

{-| __C declaration:__ @struct pixman_region64f@

    __defined at:__ @pixman.h 782:8@

    __exported by:__ @pixman.h@
-}
data Pixman_region64f_t = Pixman_region64f_t
  { extents :: Pixman_box64f_t
    {- ^ __C declaration:__ @extents@

         __defined at:__ @pixman.h 784:30@

         __exported by:__ @pixman.h@
    -}
  , data' :: RIP.Ptr Pixman_region64f_data_t
    {- ^ __C declaration:__ @data@

         __defined at:__ @pixman.h 785:31@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_region64f_t where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_region64f_t where

  readRaw =
    \ptr0 ->
          pure Pixman_region64f_t
      <*> HasCField.readRaw (RIP.Proxy @"extents") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"data'") ptr0

instance Marshal.WriteRaw Pixman_region64f_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_region64f_t extents2 data'3 ->
               HasCField.writeRaw (RIP.Proxy @"extents") ptr0 extents2
            >> HasCField.writeRaw (RIP.Proxy @"data'") ptr0 data'3

deriving via Marshal.EquivStorable Pixman_region64f_t instance RIP.Storable Pixman_region64f_t

instance HasCField.HasCField Pixman_region64f_t "extents" where

  type CFieldType Pixman_region64f_t "extents" =
    Pixman_box64f_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_box64f_t
         ) => RIP.HasField "extents" (RIP.Ptr Pixman_region64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"extents")

instance HasCField.HasCField Pixman_region64f_t "data'" where

  type CFieldType Pixman_region64f_t "data'" =
    RIP.Ptr Pixman_region64f_data_t

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.Ptr Pixman_region64f_data_t)
         ) => RIP.HasField "data'" (RIP.Ptr Pixman_region64f_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"data'")

{-| __C declaration:__ @pixman_index_type@

    __defined at:__ @pixman.h 988:17@

    __exported by:__ @pixman.h@
-}
newtype Pixman_index_type = Pixman_index_type
  { unwrap :: HsBindgen.Runtime.LibC.Word8
  }
  deriving stock (Eq, RIP.Generic, Ord, Read, Show)
  deriving newtype
    ( RIP.Bitfield
    , RIP.Bits
    , Bounded
    , Enum
    , RIP.FiniteBits
    , RIP.HasFFIType
    , Integral
    , RIP.Ix
    , Num
    , RIP.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word8
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_index_type) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_index_type "unwrap" where

  type CFieldType Pixman_index_type "unwrap" =
    HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct pixman_indexed@

    __defined at:__ @pixman.h 991:8@

    __exported by:__ @pixman.h@
-}
data Pixman_indexed_t = Pixman_indexed_t
  { color :: Pixman_bool_t
    {- ^ __C declaration:__ @color@

         __defined at:__ @pixman.h 993:25@

         __exported by:__ @pixman.h@
    -}
  , rgba :: (CA.ConstantArray 256) HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @rgba@

         __defined at:__ @pixman.h 994:15@

         __exported by:__ @pixman.h@
    -}
  , ent :: (CA.ConstantArray 32768) Pixman_index_type
    {- ^ __C declaration:__ @ent@

         __defined at:__ @pixman.h 995:23@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_indexed_t where

  staticSizeOf = \_ -> (33796 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_indexed_t where

  readRaw =
    \ptr0 ->
          pure Pixman_indexed_t
      <*> HasCField.readRaw (RIP.Proxy @"color") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"rgba") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"ent") ptr0

instance Marshal.WriteRaw Pixman_indexed_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_indexed_t color2 rgba3 ent4 ->
               HasCField.writeRaw (RIP.Proxy @"color") ptr0 color2
            >> HasCField.writeRaw (RIP.Proxy @"rgba") ptr0 rgba3
            >> HasCField.writeRaw (RIP.Proxy @"ent") ptr0 ent4

deriving via Marshal.EquivStorable Pixman_indexed_t instance RIP.Storable Pixman_indexed_t

instance HasCField.HasCField Pixman_indexed_t "color" where

  type CFieldType Pixman_indexed_t "color" =
    Pixman_bool_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_bool_t
         ) => RIP.HasField "color" (RIP.Ptr Pixman_indexed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"color")

instance HasCField.HasCField Pixman_indexed_t "rgba" where

  type CFieldType Pixman_indexed_t "rgba" =
    (CA.ConstantArray 256) HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) ((CA.ConstantArray 256) HsBindgen.Runtime.LibC.Word32)
         ) => RIP.HasField "rgba" (RIP.Ptr Pixman_indexed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"rgba")

instance HasCField.HasCField Pixman_indexed_t "ent" where

  type CFieldType Pixman_indexed_t "ent" =
    (CA.ConstantArray 32768) Pixman_index_type

  offset# = \_ -> \_ -> 1028

instance ( ((~) ty) ((CA.ConstantArray 32768) Pixman_index_type)
         ) => RIP.HasField "ent" (RIP.Ptr Pixman_indexed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"ent")

{-| __C declaration:__ @struct pixman_gradient_stop@

    __defined at:__ @pixman.h 980:8@

    __exported by:__ @pixman.h@
-}
data Pixman_gradient_stop_t = Pixman_gradient_stop_t
  { x :: Pixman_fixed_t
    {- ^ __C declaration:__ @x@

         __defined at:__ @pixman.h 981:20@

         __exported by:__ @pixman.h@
    -}
  , color :: Pixman_color_t
    {- ^ __C declaration:__ @color@

         __defined at:__ @pixman.h 982:20@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_gradient_stop_t where

  staticSizeOf = \_ -> (12 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_gradient_stop_t where

  readRaw =
    \ptr0 ->
          pure Pixman_gradient_stop_t
      <*> HasCField.readRaw (RIP.Proxy @"x") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"color") ptr0

instance Marshal.WriteRaw Pixman_gradient_stop_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_gradient_stop_t x2 color3 ->
               HasCField.writeRaw (RIP.Proxy @"x") ptr0 x2
            >> HasCField.writeRaw (RIP.Proxy @"color") ptr0 color3

deriving via Marshal.EquivStorable Pixman_gradient_stop_t instance RIP.Storable Pixman_gradient_stop_t

instance HasCField.HasCField Pixman_gradient_stop_t "x" where

  type CFieldType Pixman_gradient_stop_t "x" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "x" (RIP.Ptr Pixman_gradient_stop_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x")

instance HasCField.HasCField Pixman_gradient_stop_t "color" where

  type CFieldType Pixman_gradient_stop_t "color" =
    Pixman_color_t

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) Pixman_color_t
         ) => RIP.HasField "color" (RIP.Ptr Pixman_gradient_stop_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"color")

{-| Auxiliary type used by 'Pixman_read_memory_func_t'

__C declaration:__ @pixman_read_memory_func_t@

__defined at:__ @pixman.h 975:21@

__exported by:__ @pixman.h@
-}
newtype Pixman_read_memory_func_t_Aux = Pixman_read_memory_func_t_Aux
  { unwrap :: (PtrConst.PtrConst RIP.Void) -> RIP.CInt -> IO HsBindgen.Runtime.LibC.Word32
  }
  deriving stock (RIP.Generic)
  deriving newtype (RIP.HasFFIType)

foreign import ccall safe "wrapper" hs_bindgen_51326a51b8c35a14_base ::
     ((RIP.Ptr RIP.Void) -> RIP.Int32 -> IO RIP.Word32)
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> RIP.Int32 -> IO RIP.Word32))

-- __unique:__ @toPixman_read_memory_func_t_Aux@
hs_bindgen_51326a51b8c35a14 ::
     Pixman_read_memory_func_t_Aux
  -> IO (RIP.FunPtr Pixman_read_memory_func_t_Aux)
hs_bindgen_51326a51b8c35a14 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_51326a51b8c35a14_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_51728ff679dcc0c5_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> RIP.Int32 -> IO RIP.Word32)
  -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO RIP.Word32

-- __unique:__ @fromPixman_read_memory_func_t_Aux@
hs_bindgen_51728ff679dcc0c5 ::
     RIP.FunPtr Pixman_read_memory_func_t_Aux
  -> Pixman_read_memory_func_t_Aux
hs_bindgen_51728ff679dcc0c5 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_51728ff679dcc0c5_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr Pixman_read_memory_func_t_Aux where

  toFunPtr = hs_bindgen_51326a51b8c35a14

instance RIP.FromFunPtr Pixman_read_memory_func_t_Aux where

  fromFunPtr = hs_bindgen_51728ff679dcc0c5

instance ( ((~) ty) ((PtrConst.PtrConst RIP.Void) -> RIP.CInt -> IO HsBindgen.Runtime.LibC.Word32)
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_read_memory_func_t_Aux) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_read_memory_func_t_Aux "unwrap" where

  type CFieldType Pixman_read_memory_func_t_Aux "unwrap" =
    (PtrConst.PtrConst RIP.Void) -> RIP.CInt -> IO HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_read_memory_func_t@

    __defined at:__ @pixman.h 975:21@

    __exported by:__ @pixman.h@
-}
newtype Pixman_read_memory_func_t = Pixman_read_memory_func_t
  { unwrap :: RIP.FunPtr Pixman_read_memory_func_t_Aux
  }
  deriving stock (Eq, RIP.Generic, Ord, Show)
  deriving newtype
    ( RIP.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) (RIP.FunPtr Pixman_read_memory_func_t_Aux)
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_read_memory_func_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_read_memory_func_t "unwrap" where

  type CFieldType Pixman_read_memory_func_t "unwrap" =
    RIP.FunPtr Pixman_read_memory_func_t_Aux

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Pixman_write_memory_func_t'

__C declaration:__ @pixman_write_memory_func_t@

__defined at:__ @pixman.h 976:21@

__exported by:__ @pixman.h@
-}
newtype Pixman_write_memory_func_t_Aux = Pixman_write_memory_func_t_Aux
  { unwrap :: (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> IO ()
  }
  deriving stock (RIP.Generic)
  deriving newtype (RIP.HasFFIType)

foreign import ccall safe "wrapper" hs_bindgen_0d14a8fca82bcab0_base ::
     ((RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ()))

-- __unique:__ @toPixman_write_memory_func_t_Aux@
hs_bindgen_0d14a8fca82bcab0 ::
     Pixman_write_memory_func_t_Aux
  -> IO (RIP.FunPtr Pixman_write_memory_func_t_Aux)
hs_bindgen_0d14a8fca82bcab0 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0d14a8fca82bcab0_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_f8dd2e91e8d45935_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ()

-- __unique:__ @fromPixman_write_memory_func_t_Aux@
hs_bindgen_f8dd2e91e8d45935 ::
     RIP.FunPtr Pixman_write_memory_func_t_Aux
  -> Pixman_write_memory_func_t_Aux
hs_bindgen_f8dd2e91e8d45935 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_f8dd2e91e8d45935_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr Pixman_write_memory_func_t_Aux where

  toFunPtr = hs_bindgen_0d14a8fca82bcab0

instance RIP.FromFunPtr Pixman_write_memory_func_t_Aux where

  fromFunPtr = hs_bindgen_f8dd2e91e8d45935

instance ( ((~) ty) ((RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> IO ())
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_write_memory_func_t_Aux) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_write_memory_func_t_Aux "unwrap" where

  type CFieldType Pixman_write_memory_func_t_Aux "unwrap" =
    (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> RIP.CInt -> IO ()

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_write_memory_func_t@

    __defined at:__ @pixman.h 976:21@

    __exported by:__ @pixman.h@
-}
newtype Pixman_write_memory_func_t = Pixman_write_memory_func_t
  { unwrap :: RIP.FunPtr Pixman_write_memory_func_t_Aux
  }
  deriving stock (Eq, RIP.Generic, Ord, Show)
  deriving newtype
    ( RIP.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) (RIP.FunPtr Pixman_write_memory_func_t_Aux)
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_write_memory_func_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_write_memory_func_t "unwrap" where

  type CFieldType Pixman_write_memory_func_t "unwrap" =
    RIP.FunPtr Pixman_write_memory_func_t_Aux

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Pixman_image_destroy_func_t'

__C declaration:__ @pixman_image_destroy_func_t@

__defined at:__ @pixman.h 978:21@

__exported by:__ @pixman.h@
-}
newtype Pixman_image_destroy_func_t_Aux = Pixman_image_destroy_func_t_Aux
  { unwrap :: (RIP.Ptr Pixman_image_t) -> (RIP.Ptr RIP.Void) -> IO ()
  }
  deriving stock (RIP.Generic)
  deriving newtype (RIP.HasFFIType)

foreign import ccall safe "wrapper" hs_bindgen_b37df2dde220b04b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @toPixman_image_destroy_func_t_Aux@
hs_bindgen_b37df2dde220b04b ::
     Pixman_image_destroy_func_t_Aux
  -> IO (RIP.FunPtr Pixman_image_destroy_func_t_Aux)
hs_bindgen_b37df2dde220b04b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_b37df2dde220b04b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_175c0e20f9395cab_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @fromPixman_image_destroy_func_t_Aux@
hs_bindgen_175c0e20f9395cab ::
     RIP.FunPtr Pixman_image_destroy_func_t_Aux
  -> Pixman_image_destroy_func_t_Aux
hs_bindgen_175c0e20f9395cab =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_175c0e20f9395cab_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr Pixman_image_destroy_func_t_Aux where

  toFunPtr = hs_bindgen_b37df2dde220b04b

instance RIP.FromFunPtr Pixman_image_destroy_func_t_Aux where

  fromFunPtr = hs_bindgen_175c0e20f9395cab

instance ( ((~) ty) ((RIP.Ptr Pixman_image_t) -> (RIP.Ptr RIP.Void) -> IO ())
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_image_destroy_func_t_Aux) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_image_destroy_func_t_Aux "unwrap" where

  type CFieldType Pixman_image_destroy_func_t_Aux "unwrap" =
    (RIP.Ptr Pixman_image_t) -> (RIP.Ptr RIP.Void) -> IO ()

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixman_image_destroy_func_t@

    __defined at:__ @pixman.h 978:21@

    __exported by:__ @pixman.h@
-}
newtype Pixman_image_destroy_func_t = Pixman_image_destroy_func_t
  { unwrap :: RIP.FunPtr Pixman_image_destroy_func_t_Aux
  }
  deriving stock (Eq, RIP.Generic, Ord, Show)
  deriving newtype
    ( RIP.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) (RIP.FunPtr Pixman_image_destroy_func_t_Aux)
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_image_destroy_func_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_image_destroy_func_t "unwrap" where

  type CFieldType Pixman_image_destroy_func_t "unwrap" =
    RIP.FunPtr Pixman_image_destroy_func_t_Aux

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @macro PIXMAN_MAX_INDEXED@

    __defined at:__ @pixman.h 985:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_MAX_INDEXED :: RIP.CInt
pIXMAN_MAX_INDEXED = (256 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT@

    __defined at:__ @pixman.h 1003:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT :: forall a10 a21 a32 a43 a54 a65. (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a10)) (C.Expr.HostPlatform.ShiftRes a21) => (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a10)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes a32) => (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a10)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes a32))) (C.Expr.HostPlatform.ShiftRes a43) => (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a10)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes a32))) (C.Expr.HostPlatform.ShiftRes a43))) (C.Expr.HostPlatform.ShiftRes a54) => (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a10)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes a32))) (C.Expr.HostPlatform.ShiftRes a43))) (C.Expr.HostPlatform.ShiftRes a54))) a65 => (C.Expr.HostPlatform.Shift a54) RIP.CInt => (C.Expr.HostPlatform.Shift a43) RIP.CInt => (C.Expr.HostPlatform.Shift a32) RIP.CInt => (C.Expr.HostPlatform.Shift a21) RIP.CInt => (C.Expr.HostPlatform.Shift a10) RIP.CInt => a10 -> a21 -> a32 -> a43 -> a54 -> a65 -> (C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a10)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes a32))) (C.Expr.HostPlatform.ShiftRes a43))) (C.Expr.HostPlatform.ShiftRes a54))) a65
pIXMAN_FORMAT =
  \bpp0 ->
    \type1 ->
      \a2 ->
        \r3 ->
          \g4 ->
            \b5 ->
              (C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform.<<) bpp0 (24 :: RIP.CInt)) ((C.Expr.HostPlatform.<<) type1 (16 :: RIP.CInt))) ((C.Expr.HostPlatform.<<) a2 (12 :: RIP.CInt))) ((C.Expr.HostPlatform.<<) r3 (8 :: RIP.CInt))) ((C.Expr.HostPlatform.<<) g4 (4 :: RIP.CInt))) b5

{-| __C declaration:__ @macro PIXMAN_FORMAT_BYTE@

    __defined at:__ @pixman.h 1010:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_BYTE :: forall a10 a21 a32 a43 a54 a65. (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a10))) RIP.CInt)) (C.Expr.HostPlatform.ShiftRes a21) => (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a10))) RIP.CInt)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a32)) => (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a10))) RIP.CInt)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a32)))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a43)) => (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a10))) RIP.CInt)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a32)))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a43)))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a54)) => (C.Expr.HostPlatform.Bitwise ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a10))) RIP.CInt)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a32)))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a43)))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a54)))) (C.Expr.HostPlatform.ShiftRes a65) => (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a10))) RIP.CInt => (C.Expr.HostPlatform.Shift a65) RIP.CInt => (C.Expr.HostPlatform.Shift a54) RIP.CInt => (C.Expr.HostPlatform.Shift (C.Expr.HostPlatform.ShiftRes a54)) RIP.CInt => (C.Expr.HostPlatform.Shift a43) RIP.CInt => (C.Expr.HostPlatform.Shift (C.Expr.HostPlatform.ShiftRes a43)) RIP.CInt => (C.Expr.HostPlatform.Shift a32) RIP.CInt => (C.Expr.HostPlatform.Shift (C.Expr.HostPlatform.ShiftRes a32)) RIP.CInt => (C.Expr.HostPlatform.Shift a21) RIP.CInt => (C.Expr.HostPlatform.Shift a10) RIP.CInt => (C.Expr.HostPlatform.Shift (C.Expr.HostPlatform.ShiftRes a10)) RIP.CInt => a10 -> a21 -> a32 -> a43 -> a54 -> a65 -> (C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a10))) RIP.CInt)) (C.Expr.HostPlatform.ShiftRes a21))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a32)))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a43)))) (C.Expr.HostPlatform.ShiftRes (C.Expr.HostPlatform.ShiftRes a54)))) (C.Expr.HostPlatform.ShiftRes a65)
pIXMAN_FORMAT_BYTE =
  \bpp0 ->
    \type1 ->
      \a2 ->
        \r3 ->
          \g4 ->
            \b5 ->
              (C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform..|.) ((C.Expr.HostPlatform.<<) ((C.Expr.HostPlatform.>>) bpp0 (3 :: RIP.CInt)) (24 :: RIP.CInt)) ((C.Expr.HostPlatform.<<) (3 :: RIP.CInt) (22 :: RIP.CInt))) ((C.Expr.HostPlatform.<<) type1 (16 :: RIP.CInt))) ((C.Expr.HostPlatform.<<) ((C.Expr.HostPlatform.>>) a2 (3 :: RIP.CInt)) (12 :: RIP.CInt))) ((C.Expr.HostPlatform.<<) ((C.Expr.HostPlatform.>>) r3 (3 :: RIP.CInt)) (8 :: RIP.CInt))) ((C.Expr.HostPlatform.<<) ((C.Expr.HostPlatform.>>) g4 (3 :: RIP.CInt)) (4 :: RIP.CInt))) ((C.Expr.HostPlatform.>>) b5 (3 :: RIP.CInt))

{-| __C declaration:__ @macro PIXMAN_FORMAT_RESHIFT@

    __defined at:__ @pixman.h 1018:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_RESHIFT :: forall a0 b1 c2. (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift a0) b1 => (C.Expr.HostPlatform.Shift ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt) => (C.Expr.HostPlatform.Shift a0) RIP.CInt => (C.Expr.HostPlatform.Shift RIP.CInt) c2 => a0 -> b1 -> c2 -> C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)
pIXMAN_FORMAT_RESHIFT =
  \val0 ->
    \ofs1 ->
      \num2 ->
        (C.Expr.HostPlatform.<<) ((C.Expr.HostPlatform..&.) ((C.Expr.HostPlatform.>>) val0 ofs1) ((C.Expr.HostPlatform.-) ((C.Expr.HostPlatform.<<) (1 :: RIP.CInt) num2) (1 :: RIP.CInt))) ((C.Expr.HostPlatform..&.) ((C.Expr.HostPlatform.>>) val0 (22 :: RIP.CInt)) (3 :: RIP.CInt))

{-| __C declaration:__ @macro PIXMAN_FORMAT_BPP@

    __defined at:__ @pixman.h 1021:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_BPP :: forall a0. (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt) => (C.Expr.HostPlatform.Shift a0) RIP.CInt => a0 -> C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)
pIXMAN_FORMAT_BPP =
  \f0 ->
    pIXMAN_FORMAT_RESHIFT f0 (24 :: RIP.CInt) (8 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_TYPE@

    __defined at:__ @pixman.h 1023:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_TYPE :: forall a0. (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift a0) RIP.CInt => a0 -> (C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt
pIXMAN_FORMAT_TYPE =
  \f0 ->
    (C.Expr.HostPlatform..&.) ((C.Expr.HostPlatform.>>) f0 (16 :: RIP.CInt)) (63 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_A@

    __defined at:__ @pixman.h 1024:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_A :: forall a0. (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt) => (C.Expr.HostPlatform.Shift a0) RIP.CInt => a0 -> C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)
pIXMAN_FORMAT_A =
  \f0 ->
    pIXMAN_FORMAT_RESHIFT f0 (12 :: RIP.CInt) (4 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_R@

    __defined at:__ @pixman.h 1025:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_R :: forall a0. (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt) => (C.Expr.HostPlatform.Shift a0) RIP.CInt => a0 -> C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)
pIXMAN_FORMAT_R =
  \f0 ->
    pIXMAN_FORMAT_RESHIFT f0 (8 :: RIP.CInt) (4 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_G@

    __defined at:__ @pixman.h 1026:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_G :: forall a0. (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt) => (C.Expr.HostPlatform.Shift a0) RIP.CInt => a0 -> C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)
pIXMAN_FORMAT_G =
  \f0 ->
    pIXMAN_FORMAT_RESHIFT f0 (4 :: RIP.CInt) (4 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_B@

    __defined at:__ @pixman.h 1027:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_B :: forall a0. (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt) => (C.Expr.HostPlatform.Shift a0) RIP.CInt => a0 -> C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)
pIXMAN_FORMAT_B =
  \f0 ->
    pIXMAN_FORMAT_RESHIFT f0 (0 :: RIP.CInt) (4 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_RGB@

    __defined at:__ @pixman.h 1028:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_RGB :: forall a0. (C.Expr.HostPlatform.Bitwise a0) RIP.CInt => a0 -> (C.Expr.HostPlatform.BitsRes a0) RIP.CInt
pIXMAN_FORMAT_RGB =
  \f0 ->
    (C.Expr.HostPlatform..&.) f0 (4095 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_VIS@

    __defined at:__ @pixman.h 1029:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_VIS :: forall a0. (C.Expr.HostPlatform.Bitwise a0) RIP.CInt => a0 -> (C.Expr.HostPlatform.BitsRes a0) RIP.CInt
pIXMAN_FORMAT_VIS =
  \f0 ->
    (C.Expr.HostPlatform..&.) f0 (65535 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_DEPTH@

    __defined at:__ @pixman.h 1030:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_DEPTH :: forall a0. (C.Expr.HostPlatform.Add (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) => (C.Expr.HostPlatform.Add ((C.Expr.HostPlatform.AddRes (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) => (C.Expr.HostPlatform.Add ((C.Expr.HostPlatform.AddRes ((C.Expr.HostPlatform.AddRes (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) => (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt) => (C.Expr.HostPlatform.Shift a0) RIP.CInt => a0 -> (C.Expr.HostPlatform.AddRes ((C.Expr.HostPlatform.AddRes ((C.Expr.HostPlatform.AddRes (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)))) (C.Expr.HostPlatform.ShiftRes ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt))
pIXMAN_FORMAT_DEPTH =
  \f0 ->
    (C.Expr.HostPlatform.+) ((C.Expr.HostPlatform.+) ((C.Expr.HostPlatform.+) (pIXMAN_FORMAT_A f0) (pIXMAN_FORMAT_R f0)) (pIXMAN_FORMAT_G f0)) (pIXMAN_FORMAT_B f0)

{-| __C declaration:__ @macro PIXMAN_TYPE_OTHER@

    __defined at:__ @pixman.h 1035:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_OTHER :: RIP.CInt
pIXMAN_TYPE_OTHER = (0 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_A@

    __defined at:__ @pixman.h 1036:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_A :: RIP.CInt
pIXMAN_TYPE_A = (1 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_ARGB@

    __defined at:__ @pixman.h 1037:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_ARGB :: RIP.CInt
pIXMAN_TYPE_ARGB = (2 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_ABGR@

    __defined at:__ @pixman.h 1038:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_ABGR :: RIP.CInt
pIXMAN_TYPE_ABGR = (3 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_COLOR@

    __defined at:__ @pixman.h 1039:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_COLOR :: RIP.CInt
pIXMAN_TYPE_COLOR = (4 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_GRAY@

    __defined at:__ @pixman.h 1040:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_GRAY :: RIP.CInt
pIXMAN_TYPE_GRAY = (5 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_YUY2@

    __defined at:__ @pixman.h 1041:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_YUY2 :: RIP.CInt
pIXMAN_TYPE_YUY2 = (6 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_YV12@

    __defined at:__ @pixman.h 1042:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_YV12 :: RIP.CInt
pIXMAN_TYPE_YV12 = (7 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_BGRA@

    __defined at:__ @pixman.h 1043:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_BGRA :: RIP.CInt
pIXMAN_TYPE_BGRA = (8 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_RGBA@

    __defined at:__ @pixman.h 1044:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_RGBA :: RIP.CInt
pIXMAN_TYPE_RGBA = (9 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_ARGB_SRGB@

    __defined at:__ @pixman.h 1045:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_ARGB_SRGB :: RIP.CInt
pIXMAN_TYPE_ARGB_SRGB = (10 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_TYPE_RGBA_FLOAT@

    __defined at:__ @pixman.h 1046:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_TYPE_RGBA_FLOAT :: RIP.CInt
pIXMAN_TYPE_RGBA_FLOAT = (11 :: RIP.CInt)

{-| __C declaration:__ @macro PIXMAN_FORMAT_COLOR@

    __defined at:__ @pixman.h 1048:9@

    __exported by:__ @pixman.h@
-}
pIXMAN_FORMAT_COLOR :: forall a0. (C.Expr.HostPlatform.RelEq ((C.Expr.HostPlatform.BitsRes (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt)) RIP.CInt => (C.Expr.HostPlatform.Bitwise (C.Expr.HostPlatform.ShiftRes a0)) RIP.CInt => (C.Expr.HostPlatform.Shift a0) RIP.CInt => a0 -> RIP.CInt
pIXMAN_FORMAT_COLOR =
  \f0 ->
    (C.Expr.HostPlatform.||) ((C.Expr.HostPlatform.||) ((C.Expr.HostPlatform.||) ((C.Expr.HostPlatform.||) ((C.Expr.HostPlatform.==) (pIXMAN_FORMAT_TYPE f0) pIXMAN_TYPE_ARGB) ((C.Expr.HostPlatform.==) (pIXMAN_FORMAT_TYPE f0) pIXMAN_TYPE_ABGR)) ((C.Expr.HostPlatform.==) (pIXMAN_FORMAT_TYPE f0) pIXMAN_TYPE_BGRA)) ((C.Expr.HostPlatform.==) (pIXMAN_FORMAT_TYPE f0) pIXMAN_TYPE_RGBA)) ((C.Expr.HostPlatform.==) (pIXMAN_FORMAT_TYPE f0) pIXMAN_TYPE_RGBA_FLOAT)

{-| __C declaration:__ @enum pixman_format_code_t@

    __defined at:__ @pixman.h 1055:9@

    __exported by:__ @pixman.h@
-}
newtype Pixman_format_code_t = Pixman_format_code_t
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Pixman_format_code_t where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_format_code_t where

  readRaw =
    \ptr0 ->
          pure Pixman_format_code_t
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Pixman_format_code_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_format_code_t unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Pixman_format_code_t instance RIP.Storable Pixman_format_code_t

deriving via RIP.CUInt instance RIP.Prim Pixman_format_code_t

instance CEnum.CEnum Pixman_format_code_t where

  type CEnumZ Pixman_format_code_t = RIP.CUInt

  toCEnum = Pixman_format_code_t

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (16846848, RIP.singleton "PIXMAN_a1")
                                   , (17104896, RIP.singleton "PIXMAN_g1")
                                   , (67190784, RIP.singleton "PIXMAN_a4")
                                   , (67240225, RIP.singleton "PIXMAN_r1g2b1")
                                   , (67244305, RIP.singleton "PIXMAN_a1r1g1b1")
                                   , (67305761, RIP.singleton "PIXMAN_b1g2r1")
                                   , (67309841, RIP.singleton "PIXMAN_a1b1g1r1")
                                   , (67371008, RIP.singleton "PIXMAN_c4")
                                   , (67436544, RIP.singleton "PIXMAN_g4")
                                   , (134299648, RIP.singleton "PIXMAN_x4a4")
                                   , (134316032, RIP.singleton "PIXMAN_a8")
                                   , (134349618, RIP.singleton "PIXMAN_r3g3b2")
                                   , (134357538, RIP.singleton "PIXMAN_a2r2g2b2")
                                   , (134415154, RIP.singleton "PIXMAN_b2g3r3")
                                   , (134423074, RIP.singleton "PIXMAN_a2b2g2r2")
                                   , (134479872, ("PIXMAN_c8" RIP.:| ["PIXMAN_x4c4"]))
                                   , (134545408, ("PIXMAN_g8" RIP.:| ["PIXMAN_x4g4"]))
                                   , (147005986, RIP.singleton "PIXMAN_a16b16g16r16")
                                   , (201785344, RIP.singleton "PIXMAN_yv12")
                                   , (214631492, RIP.singleton "PIXMAN_rgb_float")
                                   , (268567620, RIP.singleton "PIXMAN_x4r4g4b4")
                                   , (268567893, RIP.singleton "PIXMAN_x1r5g5b5")
                                   , (268567909, RIP.singleton "PIXMAN_r5g6b5")
                                   , (268571989, RIP.singleton "PIXMAN_a1r5g5b5")
                                   , (268584004, RIP.singleton "PIXMAN_a4r4g4b4")
                                   , (268633156, RIP.singleton "PIXMAN_x4b4g4r4")
                                   , (268633429, RIP.singleton "PIXMAN_x1b5g5r5")
                                   , (268633445, RIP.singleton "PIXMAN_b5g6r5")
                                   , (268637525, RIP.singleton "PIXMAN_a1b5g5r5")
                                   , (268649540, RIP.singleton "PIXMAN_a4b4g4r4")
                                   , (268828672, RIP.singleton "PIXMAN_yuy2")
                                   , (281756740, RIP.singleton "PIXMAN_rgba_float")
                                   , (402786440, RIP.singleton "PIXMAN_r8g8b8")
                                   , (402851976, RIP.singleton "PIXMAN_b8g8r8")
                                   , (403310728, RIP.singleton "PIXMAN_r8g8b8_sRGB")
                                   , (537003622, RIP.singleton "PIXMAN_x14r6g6b6")
                                   , (537004168, RIP.singleton "PIXMAN_x8r8g8b8")
                                   , (537004714, RIP.singleton "PIXMAN_x2r10g10b10")
                                   , (537012906, RIP.singleton "PIXMAN_a2r10g10b10")
                                   , (537036936, RIP.singleton "PIXMAN_a8r8g8b8")
                                   , (537069704, RIP.singleton "PIXMAN_x8b8g8r8")
                                   , (537070250, RIP.singleton "PIXMAN_x2b10g10r10")
                                   , (537078442, RIP.singleton "PIXMAN_a2b10g10r10")
                                   , (537102472, RIP.singleton "PIXMAN_a8b8g8r8")
                                   , (537397384, RIP.singleton "PIXMAN_b8g8r8x8")
                                   , (537430152, RIP.singleton "PIXMAN_b8g8r8a8")
                                   , (537462920, RIP.singleton "PIXMAN_r8g8b8x8")
                                   , (537495688, RIP.singleton "PIXMAN_r8g8b8a8")
                                   , (537561224, RIP.singleton "PIXMAN_a8r8g8b8_sRGB")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Pixman_format_code_t"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Pixman_format_code_t"

instance Show Pixman_format_code_t where

  showsPrec = CEnum.shows

instance Read Pixman_format_code_t where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_format_code_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_format_code_t "unwrap" where

  type CFieldType Pixman_format_code_t "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @PIXMAN_rgba_float@

    __defined at:__ @pixman.h 1057:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_rgba_float :: Pixman_format_code_t
pattern PIXMAN_rgba_float = Pixman_format_code_t 281756740

{-| __C declaration:__ @PIXMAN_rgb_float@

    __defined at:__ @pixman.h 1059:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_rgb_float :: Pixman_format_code_t
pattern PIXMAN_rgb_float = Pixman_format_code_t 214631492

{-| __C declaration:__ @PIXMAN_a16b16g16r16@

    __defined at:__ @pixman.h 1063:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a16b16g16r16 :: Pixman_format_code_t
pattern PIXMAN_a16b16g16r16 = Pixman_format_code_t 147005986

{-| __C declaration:__ @PIXMAN_a8r8g8b8@

    __defined at:__ @pixman.h 1066:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a8r8g8b8 :: Pixman_format_code_t
pattern PIXMAN_a8r8g8b8 = Pixman_format_code_t 537036936

{-| __C declaration:__ @PIXMAN_x8r8g8b8@

    __defined at:__ @pixman.h 1067:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x8r8g8b8 :: Pixman_format_code_t
pattern PIXMAN_x8r8g8b8 = Pixman_format_code_t 537004168

{-| __C declaration:__ @PIXMAN_a8b8g8r8@

    __defined at:__ @pixman.h 1068:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a8b8g8r8 :: Pixman_format_code_t
pattern PIXMAN_a8b8g8r8 = Pixman_format_code_t 537102472

{-| __C declaration:__ @PIXMAN_x8b8g8r8@

    __defined at:__ @pixman.h 1069:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x8b8g8r8 :: Pixman_format_code_t
pattern PIXMAN_x8b8g8r8 = Pixman_format_code_t 537069704

{-| __C declaration:__ @PIXMAN_b8g8r8a8@

    __defined at:__ @pixman.h 1070:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_b8g8r8a8 :: Pixman_format_code_t
pattern PIXMAN_b8g8r8a8 = Pixman_format_code_t 537430152

{-| __C declaration:__ @PIXMAN_b8g8r8x8@

    __defined at:__ @pixman.h 1071:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_b8g8r8x8 :: Pixman_format_code_t
pattern PIXMAN_b8g8r8x8 = Pixman_format_code_t 537397384

{-| __C declaration:__ @PIXMAN_r8g8b8a8@

    __defined at:__ @pixman.h 1072:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_r8g8b8a8 :: Pixman_format_code_t
pattern PIXMAN_r8g8b8a8 = Pixman_format_code_t 537495688

{-| __C declaration:__ @PIXMAN_r8g8b8x8@

    __defined at:__ @pixman.h 1073:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_r8g8b8x8 :: Pixman_format_code_t
pattern PIXMAN_r8g8b8x8 = Pixman_format_code_t 537462920

{-| __C declaration:__ @PIXMAN_x14r6g6b6@

    __defined at:__ @pixman.h 1074:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x14r6g6b6 :: Pixman_format_code_t
pattern PIXMAN_x14r6g6b6 = Pixman_format_code_t 537003622

{-| __C declaration:__ @PIXMAN_x2r10g10b10@

    __defined at:__ @pixman.h 1075:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x2r10g10b10 :: Pixman_format_code_t
pattern PIXMAN_x2r10g10b10 = Pixman_format_code_t 537004714

{-| __C declaration:__ @PIXMAN_a2r10g10b10@

    __defined at:__ @pixman.h 1076:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a2r10g10b10 :: Pixman_format_code_t
pattern PIXMAN_a2r10g10b10 = Pixman_format_code_t 537012906

{-| __C declaration:__ @PIXMAN_x2b10g10r10@

    __defined at:__ @pixman.h 1077:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x2b10g10r10 :: Pixman_format_code_t
pattern PIXMAN_x2b10g10r10 = Pixman_format_code_t 537070250

{-| __C declaration:__ @PIXMAN_a2b10g10r10@

    __defined at:__ @pixman.h 1078:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a2b10g10r10 :: Pixman_format_code_t
pattern PIXMAN_a2b10g10r10 = Pixman_format_code_t 537078442

{-| __C declaration:__ @PIXMAN_a8r8g8b8_sRGB@

    __defined at:__ @pixman.h 1081:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a8r8g8b8_sRGB :: Pixman_format_code_t
pattern PIXMAN_a8r8g8b8_sRGB = Pixman_format_code_t 537561224

{-| __C declaration:__ @PIXMAN_r8g8b8_sRGB@

    __defined at:__ @pixman.h 1082:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_r8g8b8_sRGB :: Pixman_format_code_t
pattern PIXMAN_r8g8b8_sRGB = Pixman_format_code_t 403310728

{-| __C declaration:__ @PIXMAN_r8g8b8@

    __defined at:__ @pixman.h 1085:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_r8g8b8 :: Pixman_format_code_t
pattern PIXMAN_r8g8b8 = Pixman_format_code_t 402786440

{-| __C declaration:__ @PIXMAN_b8g8r8@

    __defined at:__ @pixman.h 1086:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_b8g8r8 :: Pixman_format_code_t
pattern PIXMAN_b8g8r8 = Pixman_format_code_t 402851976

{-| __C declaration:__ @PIXMAN_r5g6b5@

    __defined at:__ @pixman.h 1089:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_r5g6b5 :: Pixman_format_code_t
pattern PIXMAN_r5g6b5 = Pixman_format_code_t 268567909

{-| __C declaration:__ @PIXMAN_b5g6r5@

    __defined at:__ @pixman.h 1090:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_b5g6r5 :: Pixman_format_code_t
pattern PIXMAN_b5g6r5 = Pixman_format_code_t 268633445

{-| __C declaration:__ @PIXMAN_a1r5g5b5@

    __defined at:__ @pixman.h 1092:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a1r5g5b5 :: Pixman_format_code_t
pattern PIXMAN_a1r5g5b5 = Pixman_format_code_t 268571989

{-| __C declaration:__ @PIXMAN_x1r5g5b5@

    __defined at:__ @pixman.h 1093:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x1r5g5b5 :: Pixman_format_code_t
pattern PIXMAN_x1r5g5b5 = Pixman_format_code_t 268567893

{-| __C declaration:__ @PIXMAN_a1b5g5r5@

    __defined at:__ @pixman.h 1094:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a1b5g5r5 :: Pixman_format_code_t
pattern PIXMAN_a1b5g5r5 = Pixman_format_code_t 268637525

{-| __C declaration:__ @PIXMAN_x1b5g5r5@

    __defined at:__ @pixman.h 1095:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x1b5g5r5 :: Pixman_format_code_t
pattern PIXMAN_x1b5g5r5 = Pixman_format_code_t 268633429

{-| __C declaration:__ @PIXMAN_a4r4g4b4@

    __defined at:__ @pixman.h 1096:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a4r4g4b4 :: Pixman_format_code_t
pattern PIXMAN_a4r4g4b4 = Pixman_format_code_t 268584004

{-| __C declaration:__ @PIXMAN_x4r4g4b4@

    __defined at:__ @pixman.h 1097:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x4r4g4b4 :: Pixman_format_code_t
pattern PIXMAN_x4r4g4b4 = Pixman_format_code_t 268567620

{-| __C declaration:__ @PIXMAN_a4b4g4r4@

    __defined at:__ @pixman.h 1098:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a4b4g4r4 :: Pixman_format_code_t
pattern PIXMAN_a4b4g4r4 = Pixman_format_code_t 268649540

{-| __C declaration:__ @PIXMAN_x4b4g4r4@

    __defined at:__ @pixman.h 1099:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x4b4g4r4 :: Pixman_format_code_t
pattern PIXMAN_x4b4g4r4 = Pixman_format_code_t 268633156

{-| __C declaration:__ @PIXMAN_a8@

    __defined at:__ @pixman.h 1102:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a8 :: Pixman_format_code_t
pattern PIXMAN_a8 = Pixman_format_code_t 134316032

{-| __C declaration:__ @PIXMAN_r3g3b2@

    __defined at:__ @pixman.h 1103:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_r3g3b2 :: Pixman_format_code_t
pattern PIXMAN_r3g3b2 = Pixman_format_code_t 134349618

{-| __C declaration:__ @PIXMAN_b2g3r3@

    __defined at:__ @pixman.h 1104:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_b2g3r3 :: Pixman_format_code_t
pattern PIXMAN_b2g3r3 = Pixman_format_code_t 134415154

{-| __C declaration:__ @PIXMAN_a2r2g2b2@

    __defined at:__ @pixman.h 1105:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a2r2g2b2 :: Pixman_format_code_t
pattern PIXMAN_a2r2g2b2 = Pixman_format_code_t 134357538

{-| __C declaration:__ @PIXMAN_a2b2g2r2@

    __defined at:__ @pixman.h 1106:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a2b2g2r2 :: Pixman_format_code_t
pattern PIXMAN_a2b2g2r2 = Pixman_format_code_t 134423074

{-| __C declaration:__ @PIXMAN_c8@

    __defined at:__ @pixman.h 1108:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_c8 :: Pixman_format_code_t
pattern PIXMAN_c8 = Pixman_format_code_t 134479872

{-| __C declaration:__ @PIXMAN_g8@

    __defined at:__ @pixman.h 1109:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_g8 :: Pixman_format_code_t
pattern PIXMAN_g8 = Pixman_format_code_t 134545408

{-| __C declaration:__ @PIXMAN_x4a4@

    __defined at:__ @pixman.h 1111:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x4a4 :: Pixman_format_code_t
pattern PIXMAN_x4a4 = Pixman_format_code_t 134299648

{-| __C declaration:__ @PIXMAN_x4c4@

    __defined at:__ @pixman.h 1113:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x4c4 :: Pixman_format_code_t
pattern PIXMAN_x4c4 = Pixman_format_code_t 134479872

{-| __C declaration:__ @PIXMAN_x4g4@

    __defined at:__ @pixman.h 1114:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_x4g4 :: Pixman_format_code_t
pattern PIXMAN_x4g4 = Pixman_format_code_t 134545408

{-| __C declaration:__ @PIXMAN_a4@

    __defined at:__ @pixman.h 1117:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a4 :: Pixman_format_code_t
pattern PIXMAN_a4 = Pixman_format_code_t 67190784

{-| __C declaration:__ @PIXMAN_r1g2b1@

    __defined at:__ @pixman.h 1118:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_r1g2b1 :: Pixman_format_code_t
pattern PIXMAN_r1g2b1 = Pixman_format_code_t 67240225

{-| __C declaration:__ @PIXMAN_b1g2r1@

    __defined at:__ @pixman.h 1119:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_b1g2r1 :: Pixman_format_code_t
pattern PIXMAN_b1g2r1 = Pixman_format_code_t 67305761

{-| __C declaration:__ @PIXMAN_a1r1g1b1@

    __defined at:__ @pixman.h 1120:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a1r1g1b1 :: Pixman_format_code_t
pattern PIXMAN_a1r1g1b1 = Pixman_format_code_t 67244305

{-| __C declaration:__ @PIXMAN_a1b1g1r1@

    __defined at:__ @pixman.h 1121:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a1b1g1r1 :: Pixman_format_code_t
pattern PIXMAN_a1b1g1r1 = Pixman_format_code_t 67309841

{-| __C declaration:__ @PIXMAN_c4@

    __defined at:__ @pixman.h 1123:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_c4 :: Pixman_format_code_t
pattern PIXMAN_c4 = Pixman_format_code_t 67371008

{-| __C declaration:__ @PIXMAN_g4@

    __defined at:__ @pixman.h 1124:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_g4 :: Pixman_format_code_t
pattern PIXMAN_g4 = Pixman_format_code_t 67436544

{-| __C declaration:__ @PIXMAN_a1@

    __defined at:__ @pixman.h 1127:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_a1 :: Pixman_format_code_t
pattern PIXMAN_a1 = Pixman_format_code_t 16846848

{-| __C declaration:__ @PIXMAN_g1@

    __defined at:__ @pixman.h 1129:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_g1 :: Pixman_format_code_t
pattern PIXMAN_g1 = Pixman_format_code_t 17104896

{-| __C declaration:__ @PIXMAN_yuy2@

    __defined at:__ @pixman.h 1132:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_yuy2 :: Pixman_format_code_t
pattern PIXMAN_yuy2 = Pixman_format_code_t 268828672

{-| __C declaration:__ @PIXMAN_yv12@

    __defined at:__ @pixman.h 1133:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_yv12 :: Pixman_format_code_t
pattern PIXMAN_yv12 = Pixman_format_code_t 201785344

{-| __C declaration:__ @enum pixman_kernel_t@

    __defined at:__ @pixman.h 1281:9@

    __exported by:__ @pixman.h@
-}
newtype Pixman_kernel_t = Pixman_kernel_t
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Pixman_kernel_t where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_kernel_t where

  readRaw =
    \ptr0 ->
          pure Pixman_kernel_t
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Pixman_kernel_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_kernel_t unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Pixman_kernel_t instance RIP.Storable Pixman_kernel_t

deriving via RIP.CUInt instance RIP.Prim Pixman_kernel_t

instance CEnum.CEnum Pixman_kernel_t where

  type CEnumZ Pixman_kernel_t = RIP.CUInt

  toCEnum = Pixman_kernel_t

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "PIXMAN_KERNEL_IMPULSE")
                                   , (1, RIP.singleton "PIXMAN_KERNEL_BOX")
                                   , (2, RIP.singleton "PIXMAN_KERNEL_LINEAR")
                                   , (3, RIP.singleton "PIXMAN_KERNEL_CUBIC")
                                   , (4, RIP.singleton "PIXMAN_KERNEL_GAUSSIAN")
                                   , (5, RIP.singleton "PIXMAN_KERNEL_LANCZOS2")
                                   , (6, RIP.singleton "PIXMAN_KERNEL_LANCZOS3")
                                   , (7, RIP.singleton "PIXMAN_KERNEL_LANCZOS3_STRETCHED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Pixman_kernel_t"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Pixman_kernel_t"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Pixman_kernel_t where

  minDeclaredValue = PIXMAN_KERNEL_IMPULSE

  maxDeclaredValue = PIXMAN_KERNEL_LANCZOS3_STRETCHED

instance Show Pixman_kernel_t where

  showsPrec = CEnum.shows

instance Read Pixman_kernel_t where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Pixman_kernel_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Pixman_kernel_t "unwrap" where

  type CFieldType Pixman_kernel_t "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @PIXMAN_KERNEL_IMPULSE@

    __defined at:__ @pixman.h 1283:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_KERNEL_IMPULSE :: Pixman_kernel_t
pattern PIXMAN_KERNEL_IMPULSE = Pixman_kernel_t 0

{-| __C declaration:__ @PIXMAN_KERNEL_BOX@

    __defined at:__ @pixman.h 1284:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_KERNEL_BOX :: Pixman_kernel_t
pattern PIXMAN_KERNEL_BOX = Pixman_kernel_t 1

{-| __C declaration:__ @PIXMAN_KERNEL_LINEAR@

    __defined at:__ @pixman.h 1285:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_KERNEL_LINEAR :: Pixman_kernel_t
pattern PIXMAN_KERNEL_LINEAR = Pixman_kernel_t 2

{-| __C declaration:__ @PIXMAN_KERNEL_CUBIC@

    __defined at:__ @pixman.h 1286:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_KERNEL_CUBIC :: Pixman_kernel_t
pattern PIXMAN_KERNEL_CUBIC = Pixman_kernel_t 3

{-| __C declaration:__ @PIXMAN_KERNEL_GAUSSIAN@

    __defined at:__ @pixman.h 1287:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_KERNEL_GAUSSIAN :: Pixman_kernel_t
pattern PIXMAN_KERNEL_GAUSSIAN = Pixman_kernel_t 4

{-| __C declaration:__ @PIXMAN_KERNEL_LANCZOS2@

    __defined at:__ @pixman.h 1288:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_KERNEL_LANCZOS2 :: Pixman_kernel_t
pattern PIXMAN_KERNEL_LANCZOS2 = Pixman_kernel_t 5

{-| __C declaration:__ @PIXMAN_KERNEL_LANCZOS3@

    __defined at:__ @pixman.h 1289:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_KERNEL_LANCZOS3 :: Pixman_kernel_t
pattern PIXMAN_KERNEL_LANCZOS3 = Pixman_kernel_t 6

{-| __C declaration:__ @PIXMAN_KERNEL_LANCZOS3_STRETCHED@

    __defined at:__ @pixman.h 1290:5@

    __exported by:__ @pixman.h@
-}
pattern PIXMAN_KERNEL_LANCZOS3_STRETCHED :: Pixman_kernel_t
pattern PIXMAN_KERNEL_LANCZOS3_STRETCHED = Pixman_kernel_t 7

{-| __C declaration:__ @struct pixman_glyph_cache_t@

    __defined at:__ @pixman.h 1404:16@

    __exported by:__ @pixman.h@
-}
data Pixman_glyph_cache_t

{-| __C declaration:__ @struct pixman_glyph_t@

    __defined at:__ @pixman.h 1405:9@

    __exported by:__ @pixman.h@
-}
data Pixman_glyph_t = Pixman_glyph_t
  { x :: RIP.CInt
    {- ^ __C declaration:__ @x@

         __defined at:__ @pixman.h 1407:10@

         __exported by:__ @pixman.h@
    -}
  , y :: RIP.CInt
    {- ^ __C declaration:__ @y@

         __defined at:__ @pixman.h 1407:13@

         __exported by:__ @pixman.h@
    -}
  , glyph :: PtrConst.PtrConst RIP.Void
    {- ^ __C declaration:__ @glyph@

         __defined at:__ @pixman.h 1408:17@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_glyph_t where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Pixman_glyph_t where

  readRaw =
    \ptr0 ->
          pure Pixman_glyph_t
      <*> HasCField.readRaw (RIP.Proxy @"x") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"glyph") ptr0

instance Marshal.WriteRaw Pixman_glyph_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_glyph_t x2 y3 glyph4 ->
               HasCField.writeRaw (RIP.Proxy @"x") ptr0 x2
            >> HasCField.writeRaw (RIP.Proxy @"y") ptr0 y3
            >> HasCField.writeRaw (RIP.Proxy @"glyph") ptr0 glyph4

deriving via Marshal.EquivStorable Pixman_glyph_t instance RIP.Storable Pixman_glyph_t

instance HasCField.HasCField Pixman_glyph_t "x" where

  type CFieldType Pixman_glyph_t "x" = RIP.CInt

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "x" (RIP.Ptr Pixman_glyph_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x")

instance HasCField.HasCField Pixman_glyph_t "y" where

  type CFieldType Pixman_glyph_t "y" = RIP.CInt

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "y" (RIP.Ptr Pixman_glyph_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y")

instance HasCField.HasCField Pixman_glyph_t "glyph" where

  type CFieldType Pixman_glyph_t "glyph" =
    PtrConst.PtrConst RIP.Void

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (PtrConst.PtrConst RIP.Void)
         ) => RIP.HasField "glyph" (RIP.Ptr Pixman_glyph_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"glyph")

{-| __C declaration:__ @struct pixman_edge@

    __defined at:__ @pixman.h 1495:8@

    __exported by:__ @pixman.h@
-}
data Pixman_edge_t = Pixman_edge_t
  { x :: Pixman_fixed_t
    {- ^ __C declaration:__ @x@

         __defined at:__ @pixman.h 1497:20@

         __exported by:__ @pixman.h@
    -}
  , e :: Pixman_fixed_t
    {- ^ __C declaration:__ @e@

         __defined at:__ @pixman.h 1498:20@

         __exported by:__ @pixman.h@
    -}
  , stepx :: Pixman_fixed_t
    {- ^ __C declaration:__ @stepx@

         __defined at:__ @pixman.h 1499:20@

         __exported by:__ @pixman.h@
    -}
  , signdx :: Pixman_fixed_t
    {- ^ __C declaration:__ @signdx@

         __defined at:__ @pixman.h 1500:20@

         __exported by:__ @pixman.h@
    -}
  , dy :: Pixman_fixed_t
    {- ^ __C declaration:__ @dy@

         __defined at:__ @pixman.h 1501:20@

         __exported by:__ @pixman.h@
    -}
  , dx :: Pixman_fixed_t
    {- ^ __C declaration:__ @dx@

         __defined at:__ @pixman.h 1502:20@

         __exported by:__ @pixman.h@
    -}
  , stepx_small :: Pixman_fixed_t
    {- ^ __C declaration:__ @stepx_small@

         __defined at:__ @pixman.h 1504:20@

         __exported by:__ @pixman.h@
    -}
  , stepx_big :: Pixman_fixed_t
    {- ^ __C declaration:__ @stepx_big@

         __defined at:__ @pixman.h 1505:20@

         __exported by:__ @pixman.h@
    -}
  , dx_small :: Pixman_fixed_t
    {- ^ __C declaration:__ @dx_small@

         __defined at:__ @pixman.h 1506:20@

         __exported by:__ @pixman.h@
    -}
  , dx_big :: Pixman_fixed_t
    {- ^ __C declaration:__ @dx_big@

         __defined at:__ @pixman.h 1507:20@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_edge_t where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_edge_t where

  readRaw =
    \ptr0 ->
          pure Pixman_edge_t
      <*> HasCField.readRaw (RIP.Proxy @"x") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"e") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"stepx") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"signdx") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dy") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dx") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"stepx_small") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"stepx_big") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dx_small") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dx_big") ptr0

instance Marshal.WriteRaw Pixman_edge_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_edge_t
            x2
            e3
            stepx4
            signdx5
            dy6
            dx7
            stepx_small8
            stepx_big9
            dx_small10
            dx_big11 ->
                 HasCField.writeRaw (RIP.Proxy @"x") ptr0 x2
              >> HasCField.writeRaw (RIP.Proxy @"e") ptr0 e3
              >> HasCField.writeRaw (RIP.Proxy @"stepx") ptr0 stepx4
              >> HasCField.writeRaw (RIP.Proxy @"signdx") ptr0 signdx5
              >> HasCField.writeRaw (RIP.Proxy @"dy") ptr0 dy6
              >> HasCField.writeRaw (RIP.Proxy @"dx") ptr0 dx7
              >> HasCField.writeRaw (RIP.Proxy @"stepx_small") ptr0 stepx_small8
              >> HasCField.writeRaw (RIP.Proxy @"stepx_big") ptr0 stepx_big9
              >> HasCField.writeRaw (RIP.Proxy @"dx_small") ptr0 dx_small10
              >> HasCField.writeRaw (RIP.Proxy @"dx_big") ptr0 dx_big11

deriving via Marshal.EquivStorable Pixman_edge_t instance RIP.Storable Pixman_edge_t

instance HasCField.HasCField Pixman_edge_t "x" where

  type CFieldType Pixman_edge_t "x" = Pixman_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "x" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"x")

instance HasCField.HasCField Pixman_edge_t "e" where

  type CFieldType Pixman_edge_t "e" = Pixman_fixed_t

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "e" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"e")

instance HasCField.HasCField Pixman_edge_t "stepx" where

  type CFieldType Pixman_edge_t "stepx" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "stepx" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"stepx")

instance HasCField.HasCField Pixman_edge_t "signdx" where

  type CFieldType Pixman_edge_t "signdx" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 12

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "signdx" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"signdx")

instance HasCField.HasCField Pixman_edge_t "dy" where

  type CFieldType Pixman_edge_t "dy" = Pixman_fixed_t

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "dy" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"dy")

instance HasCField.HasCField Pixman_edge_t "dx" where

  type CFieldType Pixman_edge_t "dx" = Pixman_fixed_t

  offset# = \_ -> \_ -> 20

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "dx" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"dx")

instance HasCField.HasCField Pixman_edge_t "stepx_small" where

  type CFieldType Pixman_edge_t "stepx_small" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "stepx_small" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"stepx_small")

instance HasCField.HasCField Pixman_edge_t "stepx_big" where

  type CFieldType Pixman_edge_t "stepx_big" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 28

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "stepx_big" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"stepx_big")

instance HasCField.HasCField Pixman_edge_t "dx_small" where

  type CFieldType Pixman_edge_t "dx_small" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "dx_small" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"dx_small")

instance HasCField.HasCField Pixman_edge_t "dx_big" where

  type CFieldType Pixman_edge_t "dx_big" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 36

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "dx_big" (RIP.Ptr Pixman_edge_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"dx_big")

{-| __C declaration:__ @struct pixman_trapezoid@

    __defined at:__ @pixman.h 1510:8@

    __exported by:__ @pixman.h@
-}
data Pixman_trapezoid_t = Pixman_trapezoid_t
  { top :: Pixman_fixed_t
    {- ^ __C declaration:__ @top@

         __defined at:__ @pixman.h 1512:20@

         __exported by:__ @pixman.h@
    -}
  , bottom :: Pixman_fixed_t
    {- ^ __C declaration:__ @bottom@

         __defined at:__ @pixman.h 1512:25@

         __exported by:__ @pixman.h@
    -}
  , left :: Pixman_line_fixed_t
    {- ^ __C declaration:__ @left@

         __defined at:__ @pixman.h 1513:25@

         __exported by:__ @pixman.h@
    -}
  , right :: Pixman_line_fixed_t
    {- ^ __C declaration:__ @right@

         __defined at:__ @pixman.h 1513:31@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_trapezoid_t where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_trapezoid_t where

  readRaw =
    \ptr0 ->
          pure Pixman_trapezoid_t
      <*> HasCField.readRaw (RIP.Proxy @"top") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"bottom") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"left") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"right") ptr0

instance Marshal.WriteRaw Pixman_trapezoid_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_trapezoid_t top2 bottom3 left4 right5 ->
               HasCField.writeRaw (RIP.Proxy @"top") ptr0 top2
            >> HasCField.writeRaw (RIP.Proxy @"bottom") ptr0 bottom3
            >> HasCField.writeRaw (RIP.Proxy @"left") ptr0 left4
            >> HasCField.writeRaw (RIP.Proxy @"right") ptr0 right5

deriving via Marshal.EquivStorable Pixman_trapezoid_t instance RIP.Storable Pixman_trapezoid_t

instance HasCField.HasCField Pixman_trapezoid_t "top" where

  type CFieldType Pixman_trapezoid_t "top" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "top" (RIP.Ptr Pixman_trapezoid_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"top")

instance HasCField.HasCField Pixman_trapezoid_t "bottom" where

  type CFieldType Pixman_trapezoid_t "bottom" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "bottom" (RIP.Ptr Pixman_trapezoid_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"bottom")

instance HasCField.HasCField Pixman_trapezoid_t "left" where

  type CFieldType Pixman_trapezoid_t "left" =
    Pixman_line_fixed_t

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) Pixman_line_fixed_t
         ) => RIP.HasField "left" (RIP.Ptr Pixman_trapezoid_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"left")

instance HasCField.HasCField Pixman_trapezoid_t "right" where

  type CFieldType Pixman_trapezoid_t "right" =
    Pixman_line_fixed_t

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) Pixman_line_fixed_t
         ) => RIP.HasField "right" (RIP.Ptr Pixman_trapezoid_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"right")

{-| __C declaration:__ @struct pixman_span_fix@

    __defined at:__ @pixman.h 1527:8@

    __exported by:__ @pixman.h@
-}
data Pixman_span_fix_t = Pixman_span_fix_t
  { l :: Pixman_fixed_t
    {- ^ __C declaration:__ @l@

         __defined at:__ @pixman.h 1529:20@

         __exported by:__ @pixman.h@
    -}
  , r :: Pixman_fixed_t
    {- ^ __C declaration:__ @r@

         __defined at:__ @pixman.h 1529:23@

         __exported by:__ @pixman.h@
    -}
  , y :: Pixman_fixed_t
    {- ^ __C declaration:__ @y@

         __defined at:__ @pixman.h 1529:26@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_span_fix_t where

  staticSizeOf = \_ -> (12 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_span_fix_t where

  readRaw =
    \ptr0 ->
          pure Pixman_span_fix_t
      <*> HasCField.readRaw (RIP.Proxy @"l") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"r") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"y") ptr0

instance Marshal.WriteRaw Pixman_span_fix_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_span_fix_t l2 r3 y4 ->
               HasCField.writeRaw (RIP.Proxy @"l") ptr0 l2
            >> HasCField.writeRaw (RIP.Proxy @"r") ptr0 r3
            >> HasCField.writeRaw (RIP.Proxy @"y") ptr0 y4

deriving via Marshal.EquivStorable Pixman_span_fix_t instance RIP.Storable Pixman_span_fix_t

instance HasCField.HasCField Pixman_span_fix_t "l" where

  type CFieldType Pixman_span_fix_t "l" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "l" (RIP.Ptr Pixman_span_fix_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"l")

instance HasCField.HasCField Pixman_span_fix_t "r" where

  type CFieldType Pixman_span_fix_t "r" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 4

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "r" (RIP.Ptr Pixman_span_fix_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"r")

instance HasCField.HasCField Pixman_span_fix_t "y" where

  type CFieldType Pixman_span_fix_t "y" =
    Pixman_fixed_t

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) Pixman_fixed_t
         ) => RIP.HasField "y" (RIP.Ptr Pixman_span_fix_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"y")

{-| __C declaration:__ @struct pixman_trap@

    __defined at:__ @pixman.h 1532:8@

    __exported by:__ @pixman.h@
-}
data Pixman_trap_t = Pixman_trap_t
  { top :: Pixman_span_fix_t
    {- ^ __C declaration:__ @top@

         __defined at:__ @pixman.h 1534:23@

         __exported by:__ @pixman.h@
    -}
  , bot :: Pixman_span_fix_t
    {- ^ __C declaration:__ @bot@

         __defined at:__ @pixman.h 1534:28@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_trap_t where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_trap_t where

  readRaw =
    \ptr0 ->
          pure Pixman_trap_t
      <*> HasCField.readRaw (RIP.Proxy @"top") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"bot") ptr0

instance Marshal.WriteRaw Pixman_trap_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_trap_t top2 bot3 ->
               HasCField.writeRaw (RIP.Proxy @"top") ptr0 top2
            >> HasCField.writeRaw (RIP.Proxy @"bot") ptr0 bot3

deriving via Marshal.EquivStorable Pixman_trap_t instance RIP.Storable Pixman_trap_t

instance HasCField.HasCField Pixman_trap_t "top" where

  type CFieldType Pixman_trap_t "top" =
    Pixman_span_fix_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_span_fix_t
         ) => RIP.HasField "top" (RIP.Ptr Pixman_trap_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"top")

instance HasCField.HasCField Pixman_trap_t "bot" where

  type CFieldType Pixman_trap_t "bot" =
    Pixman_span_fix_t

  offset# = \_ -> \_ -> 12

instance ( ((~) ty) Pixman_span_fix_t
         ) => RIP.HasField "bot" (RIP.Ptr Pixman_trap_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"bot")

{-| __C declaration:__ @struct pixman_triangle@

    __defined at:__ @pixman.h 1516:8@

    __exported by:__ @pixman.h@
-}
data Pixman_triangle_t = Pixman_triangle_t
  { p1 :: Pixman_point_fixed_t
    {- ^ __C declaration:__ @p1@

         __defined at:__ @pixman.h 1518:26@

         __exported by:__ @pixman.h@
    -}
  , p2 :: Pixman_point_fixed_t
    {- ^ __C declaration:__ @p2@

         __defined at:__ @pixman.h 1518:30@

         __exported by:__ @pixman.h@
    -}
  , p3 :: Pixman_point_fixed_t
    {- ^ __C declaration:__ @p3@

         __defined at:__ @pixman.h 1518:34@

         __exported by:__ @pixman.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Pixman_triangle_t where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Pixman_triangle_t where

  readRaw =
    \ptr0 ->
          pure Pixman_triangle_t
      <*> HasCField.readRaw (RIP.Proxy @"p1") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"p2") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"p3") ptr0

instance Marshal.WriteRaw Pixman_triangle_t where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Pixman_triangle_t p12 p23 p34 ->
               HasCField.writeRaw (RIP.Proxy @"p1") ptr0 p12
            >> HasCField.writeRaw (RIP.Proxy @"p2") ptr0 p23
            >> HasCField.writeRaw (RIP.Proxy @"p3") ptr0 p34

deriving via Marshal.EquivStorable Pixman_triangle_t instance RIP.Storable Pixman_triangle_t

instance HasCField.HasCField Pixman_triangle_t "p1" where

  type CFieldType Pixman_triangle_t "p1" =
    Pixman_point_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Pixman_point_fixed_t
         ) => RIP.HasField "p1" (RIP.Ptr Pixman_triangle_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"p1")

instance HasCField.HasCField Pixman_triangle_t "p2" where

  type CFieldType Pixman_triangle_t "p2" =
    Pixman_point_fixed_t

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) Pixman_point_fixed_t
         ) => RIP.HasField "p2" (RIP.Ptr Pixman_triangle_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"p2")

instance HasCField.HasCField Pixman_triangle_t "p3" where

  type CFieldType Pixman_triangle_t "p3" =
    Pixman_point_fixed_t

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) Pixman_point_fixed_t
         ) => RIP.HasField "p3" (RIP.Ptr Pixman_triangle_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"p3")

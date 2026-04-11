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

module Bindings.Wayland.FractionalScaleV1.Generated
    ( Bindings.Wayland.FractionalScaleV1.Generated.Wp_fractional_scale_manager_v1
    , Bindings.Wayland.FractionalScaleV1.Generated.Wp_fractional_scale_v1
    , Bindings.Wayland.FractionalScaleV1.Generated.Wp_fractional_scale_manager_v1_error(..)
    , pattern Bindings.Wayland.FractionalScaleV1.Generated.WP_FRACTIONAL_SCALE_MANAGER_V1_ERROR_FRACTIONAL_SCALE_EXISTS
    , Bindings.Wayland.FractionalScaleV1.Generated.wP_FRACTIONAL_SCALE_MANAGER_V1_DESTROY
    , Bindings.Wayland.FractionalScaleV1.Generated.wP_FRACTIONAL_SCALE_MANAGER_V1_GET_FRACTIONAL_SCALE
    , Bindings.Wayland.FractionalScaleV1.Generated.wP_FRACTIONAL_SCALE_MANAGER_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.FractionalScaleV1.Generated.wP_FRACTIONAL_SCALE_MANAGER_V1_GET_FRACTIONAL_SCALE_SINCE_VERSION
    , Bindings.Wayland.FractionalScaleV1.Generated.Wp_fractional_scale_v1_listener(..)
    , Bindings.Wayland.FractionalScaleV1.Generated.wP_FRACTIONAL_SCALE_V1_DESTROY
    , Bindings.Wayland.FractionalScaleV1.Generated.wP_FRACTIONAL_SCALE_V1_PREFERRED_SCALE_SINCE_VERSION
    , Bindings.Wayland.FractionalScaleV1.Generated.wP_FRACTIONAL_SCALE_V1_DESTROY_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct wp_fractional_scale_manager_v1@

    __defined at:__ @fractional-scale-v1-client-protocol.h 68:8@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
data Wp_fractional_scale_manager_v1

{-| __C declaration:__ @struct wp_fractional_scale_v1@

    __defined at:__ @fractional-scale-v1-client-protocol.h 69:8@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
data Wp_fractional_scale_v1

{-| __C declaration:__ @enum wp_fractional_scale_manager_v1_error@

    __defined at:__ @fractional-scale-v1-client-protocol.h 110:6@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
newtype Wp_fractional_scale_manager_v1_error = Wp_fractional_scale_manager_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wp_fractional_scale_manager_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wp_fractional_scale_manager_v1_error where

  readRaw =
    \ptr0 ->
          pure Wp_fractional_scale_manager_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wp_fractional_scale_manager_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wp_fractional_scale_manager_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wp_fractional_scale_manager_v1_error instance RIP.Storable Wp_fractional_scale_manager_v1_error

deriving via RIP.CUInt instance RIP.Prim Wp_fractional_scale_manager_v1_error

instance CEnum.CEnum Wp_fractional_scale_manager_v1_error where

  type CEnumZ Wp_fractional_scale_manager_v1_error =
    RIP.CUInt

  toCEnum = Wp_fractional_scale_manager_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ ( 0
                                     , RIP.singleton "WP_FRACTIONAL_SCALE_MANAGER_V1_ERROR_FRACTIONAL_SCALE_EXISTS"
                                     )
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wp_fractional_scale_manager_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wp_fractional_scale_manager_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wp_fractional_scale_manager_v1_error where

  minDeclaredValue =
    WP_FRACTIONAL_SCALE_MANAGER_V1_ERROR_FRACTIONAL_SCALE_EXISTS

  maxDeclaredValue =
    WP_FRACTIONAL_SCALE_MANAGER_V1_ERROR_FRACTIONAL_SCALE_EXISTS

instance Show Wp_fractional_scale_manager_v1_error where

  showsPrec = CEnum.shows

instance Read Wp_fractional_scale_manager_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wp_fractional_scale_manager_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wp_fractional_scale_manager_v1_error "unwrap" where

  type CFieldType Wp_fractional_scale_manager_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| the surface already has a fractional_scale object associated

__C declaration:__ @WP_FRACTIONAL_SCALE_MANAGER_V1_ERROR_FRACTIONAL_SCALE_EXISTS@

__defined at:__ @fractional-scale-v1-client-protocol.h 114:2@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
pattern WP_FRACTIONAL_SCALE_MANAGER_V1_ERROR_FRACTIONAL_SCALE_EXISTS :: Wp_fractional_scale_manager_v1_error
pattern WP_FRACTIONAL_SCALE_MANAGER_V1_ERROR_FRACTIONAL_SCALE_EXISTS = Wp_fractional_scale_manager_v1_error 0

{-| __C declaration:__ @macro WP_FRACTIONAL_SCALE_MANAGER_V1_DESTROY@

    __defined at:__ @fractional-scale-v1-client-protocol.h 118:9@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wP_FRACTIONAL_SCALE_MANAGER_V1_DESTROY :: RIP.CInt
wP_FRACTIONAL_SCALE_MANAGER_V1_DESTROY =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro WP_FRACTIONAL_SCALE_MANAGER_V1_GET_FRACTIONAL_SCALE@

    __defined at:__ @fractional-scale-v1-client-protocol.h 119:9@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wP_FRACTIONAL_SCALE_MANAGER_V1_GET_FRACTIONAL_SCALE :: RIP.CInt
wP_FRACTIONAL_SCALE_MANAGER_V1_GET_FRACTIONAL_SCALE =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WP_FRACTIONAL_SCALE_MANAGER_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @fractional-scale-v1-client-protocol.h 125:9@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wP_FRACTIONAL_SCALE_MANAGER_V1_DESTROY_SINCE_VERSION :: RIP.CInt
wP_FRACTIONAL_SCALE_MANAGER_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WP_FRACTIONAL_SCALE_MANAGER_V1_GET_FRACTIONAL_SCALE_SINCE_VERSION@

    __defined at:__ @fractional-scale-v1-client-protocol.h 129:9@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wP_FRACTIONAL_SCALE_MANAGER_V1_GET_FRACTIONAL_SCALE_SINCE_VERSION :: RIP.CInt
wP_FRACTIONAL_SCALE_MANAGER_V1_GET_FRACTIONAL_SCALE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_wp_fractional_scale_v1

  > wp_fractional_scale_v1_listener

__C declaration:__ @struct wp_fractional_scale_v1_listener@

__defined at:__ @fractional-scale-v1-client-protocol.h 188:8@

__exported by:__ @fractional-scale-v1-client-protocol.h@
-}
data Wp_fractional_scale_v1_listener = Wp_fractional_scale_v1_listener
  { preferred_scale :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ notify of new preferred scale

       Notification of a new preferred scale for this surface that the compositor suggests that the client should use.

       The sent scale is the numerator of a fraction with a denominator of 120.

       [__@scale@ /(input)/__]: the new preferred scale

    __C declaration:__ @preferred_scale@

    __defined at:__ @fractional-scale-v1-client-protocol.h 199:9@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wp_fractional_scale_v1_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wp_fractional_scale_v1_listener where

  readRaw =
    \ptr0 ->
          pure Wp_fractional_scale_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"preferred_scale") ptr0

instance Marshal.WriteRaw Wp_fractional_scale_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wp_fractional_scale_v1_listener preferred_scale2 ->
            HasCField.writeRaw (RIP.Proxy @"preferred_scale") ptr0 preferred_scale2

deriving via Marshal.EquivStorable Wp_fractional_scale_v1_listener instance RIP.Storable Wp_fractional_scale_v1_listener

instance HasCField.HasCField Wp_fractional_scale_v1_listener "preferred_scale" where

  type CFieldType Wp_fractional_scale_v1_listener "preferred_scale" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "preferred_scale" (RIP.Ptr Wp_fractional_scale_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"preferred_scale")

{-| __C declaration:__ @macro WP_FRACTIONAL_SCALE_V1_DESTROY@

    __defined at:__ @fractional-scale-v1-client-protocol.h 215:9@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wP_FRACTIONAL_SCALE_V1_DESTROY :: RIP.CInt
wP_FRACTIONAL_SCALE_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WP_FRACTIONAL_SCALE_V1_PREFERRED_SCALE_SINCE_VERSION@

    __defined at:__ @fractional-scale-v1-client-protocol.h 220:9@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wP_FRACTIONAL_SCALE_V1_PREFERRED_SCALE_SINCE_VERSION :: RIP.CInt
wP_FRACTIONAL_SCALE_V1_PREFERRED_SCALE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WP_FRACTIONAL_SCALE_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @fractional-scale-v1-client-protocol.h 225:9@

    __exported by:__ @fractional-scale-v1-client-protocol.h@
-}
wP_FRACTIONAL_SCALE_V1_DESTROY_SINCE_VERSION :: RIP.CInt
wP_FRACTIONAL_SCALE_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_7f177a058ba2211f_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_7f177a058ba2211f ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_7f177a058ba2211f =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_7f177a058ba2211f_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3ed18b3e547fe42d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_3ed18b3e547fe42d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_3ed18b3e547fe42d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3ed18b3e547fe42d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_7f177a058ba2211f

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wp_fractional_scale_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_3ed18b3e547fe42d

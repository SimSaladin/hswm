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

module Bindings.Wayland.Viewporter.Generated
    ( Bindings.Wayland.Viewporter.Generated.Wp_viewport
    , Bindings.Wayland.Viewporter.Generated.Wp_viewporter
    , Bindings.Wayland.Viewporter.Generated.Wp_viewporter_error(..)
    , pattern Bindings.Wayland.Viewporter.Generated.WP_VIEWPORTER_ERROR_VIEWPORT_EXISTS
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORTER_DESTROY
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORTER_GET_VIEWPORT
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORTER_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORTER_GET_VIEWPORT_SINCE_VERSION
    , Bindings.Wayland.Viewporter.Generated.Wp_viewport_error(..)
    , pattern Bindings.Wayland.Viewporter.Generated.WP_VIEWPORT_ERROR_BAD_VALUE
    , pattern Bindings.Wayland.Viewporter.Generated.WP_VIEWPORT_ERROR_BAD_SIZE
    , pattern Bindings.Wayland.Viewporter.Generated.WP_VIEWPORT_ERROR_OUT_OF_BUFFER
    , pattern Bindings.Wayland.Viewporter.Generated.WP_VIEWPORT_ERROR_NO_SURFACE
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORT_DESTROY
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORT_SET_SOURCE
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORT_SET_DESTINATION
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORT_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORT_SET_SOURCE_SINCE_VERSION
    , Bindings.Wayland.Viewporter.Generated.wP_VIEWPORT_SET_DESTINATION_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct wp_viewport@

    __defined at:__ @viewporter-client-protocol.h 45:8@

    __exported by:__ @viewporter-client-protocol.h@
-}
data Wp_viewport

{-| __C declaration:__ @struct wp_viewporter@

    __defined at:__ @viewporter-client-protocol.h 46:8@

    __exported by:__ @viewporter-client-protocol.h@
-}
data Wp_viewporter

{-| __C declaration:__ @enum wp_viewporter_error@

    __defined at:__ @viewporter-client-protocol.h 201:6@

    __exported by:__ @viewporter-client-protocol.h@
-}
newtype Wp_viewporter_error = Wp_viewporter_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wp_viewporter_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wp_viewporter_error where

  readRaw =
    \ptr0 ->
          pure Wp_viewporter_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wp_viewporter_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wp_viewporter_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wp_viewporter_error instance RIP.Storable Wp_viewporter_error

deriving via RIP.CUInt instance RIP.Prim Wp_viewporter_error

instance CEnum.CEnum Wp_viewporter_error where

  type CEnumZ Wp_viewporter_error = RIP.CUInt

  toCEnum = Wp_viewporter_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WP_VIEWPORTER_ERROR_VIEWPORT_EXISTS")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wp_viewporter_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wp_viewporter_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wp_viewporter_error where

  minDeclaredValue =
    WP_VIEWPORTER_ERROR_VIEWPORT_EXISTS

  maxDeclaredValue =
    WP_VIEWPORTER_ERROR_VIEWPORT_EXISTS

instance Show Wp_viewporter_error where

  showsPrec = CEnum.shows

instance Read Wp_viewporter_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wp_viewporter_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wp_viewporter_error "unwrap" where

  type CFieldType Wp_viewporter_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| the surface already has a viewport object associated

__C declaration:__ @WP_VIEWPORTER_ERROR_VIEWPORT_EXISTS@

__defined at:__ @viewporter-client-protocol.h 205:2@

__exported by:__ @viewporter-client-protocol.h@
-}
pattern WP_VIEWPORTER_ERROR_VIEWPORT_EXISTS :: Wp_viewporter_error
pattern WP_VIEWPORTER_ERROR_VIEWPORT_EXISTS = Wp_viewporter_error 0

{-| __C declaration:__ @macro WP_VIEWPORTER_DESTROY@

    __defined at:__ @viewporter-client-protocol.h 209:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORTER_DESTROY :: RIP.CInt
wP_VIEWPORTER_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WP_VIEWPORTER_GET_VIEWPORT@

    __defined at:__ @viewporter-client-protocol.h 210:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORTER_GET_VIEWPORT :: RIP.CInt
wP_VIEWPORTER_GET_VIEWPORT = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WP_VIEWPORTER_DESTROY_SINCE_VERSION@

    __defined at:__ @viewporter-client-protocol.h 216:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORTER_DESTROY_SINCE_VERSION :: RIP.CInt
wP_VIEWPORTER_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WP_VIEWPORTER_GET_VIEWPORT_SINCE_VERSION@

    __defined at:__ @viewporter-client-protocol.h 220:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORTER_GET_VIEWPORT_SINCE_VERSION :: RIP.CInt
wP_VIEWPORTER_GET_VIEWPORT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum wp_viewport_error@

    __defined at:__ @viewporter-client-protocol.h 277:6@

    __exported by:__ @viewporter-client-protocol.h@
-}
newtype Wp_viewport_error = Wp_viewport_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wp_viewport_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wp_viewport_error where

  readRaw =
    \ptr0 ->
          pure Wp_viewport_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wp_viewport_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wp_viewport_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wp_viewport_error instance RIP.Storable Wp_viewport_error

deriving via RIP.CUInt instance RIP.Prim Wp_viewport_error

instance CEnum.CEnum Wp_viewport_error where

  type CEnumZ Wp_viewport_error = RIP.CUInt

  toCEnum = Wp_viewport_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WP_VIEWPORT_ERROR_BAD_VALUE")
                                   , (1, RIP.singleton "WP_VIEWPORT_ERROR_BAD_SIZE")
                                   , (2, RIP.singleton "WP_VIEWPORT_ERROR_OUT_OF_BUFFER")
                                   , (3, RIP.singleton "WP_VIEWPORT_ERROR_NO_SURFACE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wp_viewport_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wp_viewport_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wp_viewport_error where

  minDeclaredValue = WP_VIEWPORT_ERROR_BAD_VALUE

  maxDeclaredValue = WP_VIEWPORT_ERROR_NO_SURFACE

instance Show Wp_viewport_error where

  showsPrec = CEnum.shows

instance Read Wp_viewport_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wp_viewport_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wp_viewport_error "unwrap" where

  type CFieldType Wp_viewport_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| negative or zero values in width or height

__C declaration:__ @WP_VIEWPORT_ERROR_BAD_VALUE@

__defined at:__ @viewporter-client-protocol.h 281:2@

__exported by:__ @viewporter-client-protocol.h@
-}
pattern WP_VIEWPORT_ERROR_BAD_VALUE :: Wp_viewport_error
pattern WP_VIEWPORT_ERROR_BAD_VALUE = Wp_viewport_error 0

{-| destination size is not integer

__C declaration:__ @WP_VIEWPORT_ERROR_BAD_SIZE@

__defined at:__ @viewporter-client-protocol.h 285:2@

__exported by:__ @viewporter-client-protocol.h@
-}
pattern WP_VIEWPORT_ERROR_BAD_SIZE :: Wp_viewport_error
pattern WP_VIEWPORT_ERROR_BAD_SIZE = Wp_viewport_error 1

{-| source rectangle extends outside of the content area

__C declaration:__ @WP_VIEWPORT_ERROR_OUT_OF_BUFFER@

__defined at:__ @viewporter-client-protocol.h 289:2@

__exported by:__ @viewporter-client-protocol.h@
-}
pattern WP_VIEWPORT_ERROR_OUT_OF_BUFFER :: Wp_viewport_error
pattern WP_VIEWPORT_ERROR_OUT_OF_BUFFER = Wp_viewport_error 2

{-| the wl_surface was destroyed

__C declaration:__ @WP_VIEWPORT_ERROR_NO_SURFACE@

__defined at:__ @viewporter-client-protocol.h 293:2@

__exported by:__ @viewporter-client-protocol.h@
-}
pattern WP_VIEWPORT_ERROR_NO_SURFACE :: Wp_viewport_error
pattern WP_VIEWPORT_ERROR_NO_SURFACE = Wp_viewport_error 3

{-| __C declaration:__ @macro WP_VIEWPORT_DESTROY@

    __defined at:__ @viewporter-client-protocol.h 297:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORT_DESTROY :: RIP.CInt
wP_VIEWPORT_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WP_VIEWPORT_SET_SOURCE@

    __defined at:__ @viewporter-client-protocol.h 298:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORT_SET_SOURCE :: RIP.CInt
wP_VIEWPORT_SET_SOURCE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WP_VIEWPORT_SET_DESTINATION@

    __defined at:__ @viewporter-client-protocol.h 299:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORT_SET_DESTINATION :: RIP.CInt
wP_VIEWPORT_SET_DESTINATION = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WP_VIEWPORT_DESTROY_SINCE_VERSION@

    __defined at:__ @viewporter-client-protocol.h 305:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORT_DESTROY_SINCE_VERSION :: RIP.CInt
wP_VIEWPORT_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WP_VIEWPORT_SET_SOURCE_SINCE_VERSION@

    __defined at:__ @viewporter-client-protocol.h 309:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORT_SET_SOURCE_SINCE_VERSION :: RIP.CInt
wP_VIEWPORT_SET_SOURCE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WP_VIEWPORT_SET_DESTINATION_SINCE_VERSION@

    __defined at:__ @viewporter-client-protocol.h 313:9@

    __exported by:__ @viewporter-client-protocol.h@
-}
wP_VIEWPORT_SET_DESTINATION_SINCE_VERSION :: RIP.CInt
wP_VIEWPORT_SET_DESTINATION_SINCE_VERSION =
  (1 :: RIP.CInt)

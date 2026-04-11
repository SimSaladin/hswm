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

module Bindings.Wayland.WlrLayerShellUnstableV1.Generated
    ( Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Xdg_popup
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Zwlr_layer_shell_v1
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Zwlr_layer_surface_v1
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Zwlr_layer_shell_v1_error(..)
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SHELL_V1_ERROR_ROLE
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SHELL_V1_ERROR_INVALID_LAYER
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SHELL_V1_ERROR_ALREADY_CONSTRUCTED
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Zwlr_layer_shell_v1_layer(..)
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SHELL_V1_LAYER_TOP
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SHELL_V1_GET_LAYER_SURFACE
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SHELL_V1_GET_LAYER_SURFACE_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Zwlr_layer_surface_v1_error(..)
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SURFACE_STATE
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SIZE
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_ANCHOR
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Zwlr_layer_surface_v1_anchor(..)
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT
    , pattern Bindings.Wayland.WlrLayerShellUnstableV1.Generated.ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Zwlr_layer_surface_v1_listener(..)
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_SIZE
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_ANCHOR
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_EXCLUSIVE_ZONE
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_MARGIN
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_KEYBOARD_INTERACTIVITY
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_GET_POPUP
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_ACK_CONFIGURE
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_DESTROY
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_CLOSED_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_SIZE_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_ANCHOR_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_EXCLUSIVE_ZONE_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_MARGIN_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_SET_KEYBOARD_INTERACTIVITY_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_GET_POPUP_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_ACK_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.zWLR_LAYER_SURFACE_V1_DESTROY_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct xdg_popup@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 48:8@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
data Xdg_popup

{-| __C declaration:__ @struct zwlr_layer_shell_v1@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 49:8@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
data Zwlr_layer_shell_v1

{-| __C declaration:__ @struct zwlr_layer_surface_v1@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 50:8@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
data Zwlr_layer_surface_v1

{-| __C declaration:__ @enum zwlr_layer_shell_v1_error@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 113:6@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
newtype Zwlr_layer_shell_v1_error = Zwlr_layer_shell_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_layer_shell_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_layer_shell_v1_error where

  readRaw =
    \ptr0 ->
          pure Zwlr_layer_shell_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_layer_shell_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_layer_shell_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_layer_shell_v1_error instance RIP.Storable Zwlr_layer_shell_v1_error

deriving via RIP.CUInt instance RIP.Prim Zwlr_layer_shell_v1_error

instance CEnum.CEnum Zwlr_layer_shell_v1_error where

  type CEnumZ Zwlr_layer_shell_v1_error = RIP.CUInt

  toCEnum = Zwlr_layer_shell_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "ZWLR_LAYER_SHELL_V1_ERROR_ROLE")
                                   , (1, RIP.singleton "ZWLR_LAYER_SHELL_V1_ERROR_INVALID_LAYER")
                                   , (2, RIP.singleton "ZWLR_LAYER_SHELL_V1_ERROR_ALREADY_CONSTRUCTED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_layer_shell_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_layer_shell_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwlr_layer_shell_v1_error where

  minDeclaredValue = ZWLR_LAYER_SHELL_V1_ERROR_ROLE

  maxDeclaredValue =
    ZWLR_LAYER_SHELL_V1_ERROR_ALREADY_CONSTRUCTED

instance Show Zwlr_layer_shell_v1_error where

  showsPrec = CEnum.shows

instance Read Zwlr_layer_shell_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_layer_shell_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_layer_shell_v1_error "unwrap" where

  type CFieldType Zwlr_layer_shell_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| wl_surface has another role

__C declaration:__ @ZWLR_LAYER_SHELL_V1_ERROR_ROLE@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 117:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SHELL_V1_ERROR_ROLE :: Zwlr_layer_shell_v1_error
pattern ZWLR_LAYER_SHELL_V1_ERROR_ROLE = Zwlr_layer_shell_v1_error 0

{-| layer value is invalid

__C declaration:__ @ZWLR_LAYER_SHELL_V1_ERROR_INVALID_LAYER@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 121:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SHELL_V1_ERROR_INVALID_LAYER :: Zwlr_layer_shell_v1_error
pattern ZWLR_LAYER_SHELL_V1_ERROR_INVALID_LAYER = Zwlr_layer_shell_v1_error 1

{-| wl_surface has a buffer attached or committed

__C declaration:__ @ZWLR_LAYER_SHELL_V1_ERROR_ALREADY_CONSTRUCTED@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 125:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SHELL_V1_ERROR_ALREADY_CONSTRUCTED :: Zwlr_layer_shell_v1_error
pattern ZWLR_LAYER_SHELL_V1_ERROR_ALREADY_CONSTRUCTED = Zwlr_layer_shell_v1_error 2

{-|

  > iface_zwlr_layer_shell_v1

  available layers for surfaces

  These values indicate which layers a surface can be rendered in. They are ordered by z depth, bottom-most first. Traditional shell surfaces will typically be rendered between the bottom and top layers. Fullscreen shell surfaces are typically rendered at the top layer. Multiple surfaces can share a single layer, and ordering within a single layer is undefined.

__C declaration:__ @enum zwlr_layer_shell_v1_layer@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 142:6@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
newtype Zwlr_layer_shell_v1_layer = Zwlr_layer_shell_v1_layer
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_layer_shell_v1_layer where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_layer_shell_v1_layer where

  readRaw =
    \ptr0 ->
          pure Zwlr_layer_shell_v1_layer
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_layer_shell_v1_layer where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_layer_shell_v1_layer unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_layer_shell_v1_layer instance RIP.Storable Zwlr_layer_shell_v1_layer

deriving via RIP.CUInt instance RIP.Prim Zwlr_layer_shell_v1_layer

instance CEnum.CEnum Zwlr_layer_shell_v1_layer where

  type CEnumZ Zwlr_layer_shell_v1_layer = RIP.CUInt

  toCEnum = Zwlr_layer_shell_v1_layer

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND")
                                   , (1, RIP.singleton "ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM")
                                   , (2, RIP.singleton "ZWLR_LAYER_SHELL_V1_LAYER_TOP")
                                   , (3, RIP.singleton "ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_layer_shell_v1_layer"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_layer_shell_v1_layer"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwlr_layer_shell_v1_layer where

  minDeclaredValue =
    ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND

  maxDeclaredValue = ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY

instance Show Zwlr_layer_shell_v1_layer where

  showsPrec = CEnum.shows

instance Read Zwlr_layer_shell_v1_layer where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_layer_shell_v1_layer) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_layer_shell_v1_layer "unwrap" where

  type CFieldType Zwlr_layer_shell_v1_layer "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 143:2@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND :: Zwlr_layer_shell_v1_layer
pattern ZWLR_LAYER_SHELL_V1_LAYER_BACKGROUND = Zwlr_layer_shell_v1_layer 0

{-| __C declaration:__ @ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 144:2@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM :: Zwlr_layer_shell_v1_layer
pattern ZWLR_LAYER_SHELL_V1_LAYER_BOTTOM = Zwlr_layer_shell_v1_layer 1

{-| __C declaration:__ @ZWLR_LAYER_SHELL_V1_LAYER_TOP@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 145:2@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SHELL_V1_LAYER_TOP :: Zwlr_layer_shell_v1_layer
pattern ZWLR_LAYER_SHELL_V1_LAYER_TOP = Zwlr_layer_shell_v1_layer 2

{-| __C declaration:__ @ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 146:2@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY :: Zwlr_layer_shell_v1_layer
pattern ZWLR_LAYER_SHELL_V1_LAYER_OVERLAY = Zwlr_layer_shell_v1_layer 3

{-| __C declaration:__ @macro ZWLR_LAYER_SHELL_V1_GET_LAYER_SURFACE@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 150:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SHELL_V1_GET_LAYER_SURFACE :: RIP.CInt
zWLR_LAYER_SHELL_V1_GET_LAYER_SURFACE =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SHELL_V1_GET_LAYER_SURFACE_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 156:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SHELL_V1_GET_LAYER_SURFACE_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SHELL_V1_GET_LAYER_SURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum zwlr_layer_surface_v1_error@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 217:6@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
newtype Zwlr_layer_surface_v1_error = Zwlr_layer_surface_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_layer_surface_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_layer_surface_v1_error where

  readRaw =
    \ptr0 ->
          pure Zwlr_layer_surface_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_layer_surface_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_layer_surface_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_layer_surface_v1_error instance RIP.Storable Zwlr_layer_surface_v1_error

deriving via RIP.CUInt instance RIP.Prim Zwlr_layer_surface_v1_error

instance CEnum.CEnum Zwlr_layer_surface_v1_error where

  type CEnumZ Zwlr_layer_surface_v1_error = RIP.CUInt

  toCEnum = Zwlr_layer_surface_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SURFACE_STATE")
                                   , (1, RIP.singleton "ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SIZE")
                                   , (2, RIP.singleton "ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_ANCHOR")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_layer_surface_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_layer_surface_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwlr_layer_surface_v1_error where

  minDeclaredValue =
    ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SURFACE_STATE

  maxDeclaredValue =
    ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_ANCHOR

instance Show Zwlr_layer_surface_v1_error where

  showsPrec = CEnum.shows

instance Read Zwlr_layer_surface_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_layer_surface_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_layer_surface_v1_error "unwrap" where

  type CFieldType Zwlr_layer_surface_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| provided surface state is invalid

__C declaration:__ @ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SURFACE_STATE@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 221:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SURFACE_STATE :: Zwlr_layer_surface_v1_error
pattern ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SURFACE_STATE = Zwlr_layer_surface_v1_error 0

{-| size is invalid

__C declaration:__ @ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SIZE@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 225:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SIZE :: Zwlr_layer_surface_v1_error
pattern ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_SIZE = Zwlr_layer_surface_v1_error 1

{-| anchor bitfield is invalid

__C declaration:__ @ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_ANCHOR@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 229:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_ANCHOR :: Zwlr_layer_surface_v1_error
pattern ZWLR_LAYER_SURFACE_V1_ERROR_INVALID_ANCHOR = Zwlr_layer_surface_v1_error 2

{-| __C declaration:__ @enum zwlr_layer_surface_v1_anchor@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 235:6@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
newtype Zwlr_layer_surface_v1_anchor = Zwlr_layer_surface_v1_anchor
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_layer_surface_v1_anchor where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_layer_surface_v1_anchor where

  readRaw =
    \ptr0 ->
          pure Zwlr_layer_surface_v1_anchor
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_layer_surface_v1_anchor where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_layer_surface_v1_anchor unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_layer_surface_v1_anchor instance RIP.Storable Zwlr_layer_surface_v1_anchor

deriving via RIP.CUInt instance RIP.Prim Zwlr_layer_surface_v1_anchor

instance CEnum.CEnum Zwlr_layer_surface_v1_anchor where

  type CEnumZ Zwlr_layer_surface_v1_anchor = RIP.CUInt

  toCEnum = Zwlr_layer_surface_v1_anchor

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP")
                                   , (2, RIP.singleton "ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM")
                                   , (4, RIP.singleton "ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT")
                                   , (8, RIP.singleton "ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_layer_surface_v1_anchor"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_layer_surface_v1_anchor"

instance Show Zwlr_layer_surface_v1_anchor where

  showsPrec = CEnum.shows

instance Read Zwlr_layer_surface_v1_anchor where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_layer_surface_v1_anchor) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_layer_surface_v1_anchor "unwrap" where

  type CFieldType Zwlr_layer_surface_v1_anchor "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| the top edge of the anchor rectangle

__C declaration:__ @ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 239:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP :: Zwlr_layer_surface_v1_anchor
pattern ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP = Zwlr_layer_surface_v1_anchor 1

{-| the bottom edge of the anchor rectangle

__C declaration:__ @ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 243:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM :: Zwlr_layer_surface_v1_anchor
pattern ZWLR_LAYER_SURFACE_V1_ANCHOR_BOTTOM = Zwlr_layer_surface_v1_anchor 2

{-| the left edge of the anchor rectangle

__C declaration:__ @ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 247:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT :: Zwlr_layer_surface_v1_anchor
pattern ZWLR_LAYER_SURFACE_V1_ANCHOR_LEFT = Zwlr_layer_surface_v1_anchor 4

{-| the right edge of the anchor rectangle

__C declaration:__ @ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 251:2@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
pattern ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT :: Zwlr_layer_surface_v1_anchor
pattern ZWLR_LAYER_SURFACE_V1_ANCHOR_RIGHT = Zwlr_layer_surface_v1_anchor 8

{-|

  > iface_zwlr_layer_surface_v1

  > zwlr_layer_surface_v1_listener

__C declaration:__ @struct zwlr_layer_surface_v1_listener@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 259:8@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
data Zwlr_layer_surface_v1_listener = Zwlr_layer_surface_v1_listener
  { configure :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ suggest a surface change

       The configure event asks the client to resize its surface.

       Clients should arrange their surface for the new states, and then send an ack_configure request with the serial sent in this configure event at some point before committing the new surface.

       The client is free to dismiss all but the last configure event it received.

       The width and height arguments specify the size of the window in surface-local coordinates.

       The size is a hint, in the sense that the client is free to ignore it if it doesn't resize, pick a smaller size (to satisfy aspect ratio or resize in steps of NxM pixels). If the client picks a smaller size and is anchored to two opposite anchors (e.g. 'top' and 'bottom'), the surface will be centered on this axis.

       If the width or height arguments are zero, it means the client should decide its own window dimension.

    __C declaration:__ @configure@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 285:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
    -}
  , closed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ())
    {- ^ surface should be closed

       The closed event is sent by the compositor when the surface will no longer be shown. The output may have been destroyed or the user may have asked for it to be removed. Further changes to the surface will be ignored. The client should destroy the resource after receiving this event, and create a new surface if they so choose.

    __C declaration:__ @closed@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 300:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwlr_layer_surface_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwlr_layer_surface_v1_listener where

  readRaw =
    \ptr0 ->
          pure Zwlr_layer_surface_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"configure") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"closed") ptr0

instance Marshal.WriteRaw Zwlr_layer_surface_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_layer_surface_v1_listener configure2 closed3 ->
               HasCField.writeRaw (RIP.Proxy @"configure") ptr0 configure2
            >> HasCField.writeRaw (RIP.Proxy @"closed") ptr0 closed3

deriving via Marshal.EquivStorable Zwlr_layer_surface_v1_listener instance RIP.Storable Zwlr_layer_surface_v1_listener

instance HasCField.HasCField Zwlr_layer_surface_v1_listener "configure" where

  type CFieldType Zwlr_layer_surface_v1_listener "configure" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "configure" (RIP.Ptr Zwlr_layer_surface_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"configure")

instance HasCField.HasCField Zwlr_layer_surface_v1_listener "closed" where

  type CFieldType Zwlr_layer_surface_v1_listener "closed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ()))
         ) => RIP.HasField "closed" (RIP.Ptr Zwlr_layer_surface_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"closed")

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_SIZE@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 315:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_SIZE :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_SIZE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_ANCHOR@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 316:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_ANCHOR :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_ANCHOR = (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_EXCLUSIVE_ZONE@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 317:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_EXCLUSIVE_ZONE :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_EXCLUSIVE_ZONE =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_MARGIN@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 318:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_MARGIN :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_MARGIN = (3 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_KEYBOARD_INTERACTIVITY@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 319:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_KEYBOARD_INTERACTIVITY :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_KEYBOARD_INTERACTIVITY =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_GET_POPUP@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 320:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_GET_POPUP :: RIP.CInt
zWLR_LAYER_SURFACE_V1_GET_POPUP = (5 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_ACK_CONFIGURE@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 321:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_ACK_CONFIGURE :: RIP.CInt
zWLR_LAYER_SURFACE_V1_ACK_CONFIGURE = (6 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_DESTROY@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 322:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_DESTROY :: RIP.CInt
zWLR_LAYER_SURFACE_V1_DESTROY = (7 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_CONFIGURE_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 327:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_CONFIGURE_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_CONFIGURE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_CLOSED_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 331:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_CLOSED_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_CLOSED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_SIZE_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 336:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_SIZE_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_SIZE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_ANCHOR_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 340:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_ANCHOR_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_ANCHOR_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_EXCLUSIVE_ZONE_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 344:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_EXCLUSIVE_ZONE_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_EXCLUSIVE_ZONE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_MARGIN_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 348:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_MARGIN_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_MARGIN_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_SET_KEYBOARD_INTERACTIVITY_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 352:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_SET_KEYBOARD_INTERACTIVITY_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_SET_KEYBOARD_INTERACTIVITY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_GET_POPUP_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 356:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_GET_POPUP_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_GET_POPUP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_ACK_CONFIGURE_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 360:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_ACK_CONFIGURE_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_ACK_CONFIGURE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_LAYER_SURFACE_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 364:9@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zWLR_LAYER_SURFACE_V1_DESTROY_SINCE_VERSION :: RIP.CInt
zWLR_LAYER_SURFACE_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_7b1bc94f28557aeb_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ())@
hs_bindgen_7b1bc94f28557aeb ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ()))
hs_bindgen_7b1bc94f28557aeb =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_7b1bc94f28557aeb_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_734b46017e67326b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ())@
hs_bindgen_734b46017e67326b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ()
hs_bindgen_734b46017e67326b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_734b46017e67326b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ()) where

  toFunPtr = hs_bindgen_7b1bc94f28557aeb

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_734b46017e67326b

foreign import ccall safe "wrapper" hs_bindgen_12bb0c573c73319f_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_12bb0c573c73319f ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_12bb0c573c73319f =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_12bb0c573c73319f_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e5bcb88bcc1668b0_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_e5bcb88bcc1668b0 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_e5bcb88bcc1668b0 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e5bcb88bcc1668b0_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_12bb0c573c73319f

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_e5bcb88bcc1668b0

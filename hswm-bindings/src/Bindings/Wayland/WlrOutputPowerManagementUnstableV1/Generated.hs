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

module Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated
    ( Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Zwlr_output_power_manager_v1
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Zwlr_output_power_v1
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_MANAGER_V1_GET_OUTPUT_POWER
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_MANAGER_V1_DESTROY
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_MANAGER_V1_GET_OUTPUT_POWER_SINCE_VERSION
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_MANAGER_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Zwlr_output_power_v1_mode(..)
    , pattern Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.ZWLR_OUTPUT_POWER_V1_MODE_OFF
    , pattern Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.ZWLR_OUTPUT_POWER_V1_MODE_ON
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Zwlr_output_power_v1_error(..)
    , pattern Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.ZWLR_OUTPUT_POWER_V1_ERROR_INVALID_MODE
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Zwlr_output_power_v1_listener(..)
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_V1_SET_MODE
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_V1_DESTROY
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_V1_MODE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_V1_FAILED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_V1_SET_MODE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.zWLR_OUTPUT_POWER_V1_DESTROY_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct zwlr_output_power_manager_v1@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 66:8@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_power_manager_v1

{-| __C declaration:__ @struct zwlr_output_power_v1@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 67:8@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_power_v1

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_MANAGER_V1_GET_OUTPUT_POWER@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 108:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_MANAGER_V1_GET_OUTPUT_POWER :: RIP.CInt
zWLR_OUTPUT_POWER_MANAGER_V1_GET_OUTPUT_POWER =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_MANAGER_V1_DESTROY@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 109:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_MANAGER_V1_DESTROY :: RIP.CInt
zWLR_OUTPUT_POWER_MANAGER_V1_DESTROY =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_MANAGER_V1_GET_OUTPUT_POWER_SINCE_VERSION@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 115:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_MANAGER_V1_GET_OUTPUT_POWER_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_POWER_MANAGER_V1_GET_OUTPUT_POWER_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_MANAGER_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 119:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_MANAGER_V1_DESTROY_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_POWER_MANAGER_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum zwlr_output_power_v1_mode@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 173:6@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
newtype Zwlr_output_power_v1_mode = Zwlr_output_power_v1_mode
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_output_power_v1_mode where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_output_power_v1_mode where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_power_v1_mode
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_output_power_v1_mode where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_power_v1_mode unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_output_power_v1_mode instance RIP.Storable Zwlr_output_power_v1_mode

deriving via RIP.CUInt instance RIP.Prim Zwlr_output_power_v1_mode

instance CEnum.CEnum Zwlr_output_power_v1_mode where

  type CEnumZ Zwlr_output_power_v1_mode = RIP.CUInt

  toCEnum = Zwlr_output_power_v1_mode

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "ZWLR_OUTPUT_POWER_V1_MODE_OFF")
                                   , (1, RIP.singleton "ZWLR_OUTPUT_POWER_V1_MODE_ON")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_output_power_v1_mode"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_output_power_v1_mode"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwlr_output_power_v1_mode where

  minDeclaredValue = ZWLR_OUTPUT_POWER_V1_MODE_OFF

  maxDeclaredValue = ZWLR_OUTPUT_POWER_V1_MODE_ON

instance Show Zwlr_output_power_v1_mode where

  showsPrec = CEnum.shows

instance Read Zwlr_output_power_v1_mode where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_output_power_v1_mode) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_output_power_v1_mode "unwrap" where

  type CFieldType Zwlr_output_power_v1_mode "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| Output is turned off.

__C declaration:__ @ZWLR_OUTPUT_POWER_V1_MODE_OFF@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 177:2@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_POWER_V1_MODE_OFF :: Zwlr_output_power_v1_mode
pattern ZWLR_OUTPUT_POWER_V1_MODE_OFF = Zwlr_output_power_v1_mode 0

{-| Output is turned on, no power saving

__C declaration:__ @ZWLR_OUTPUT_POWER_V1_MODE_ON@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 181:2@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_POWER_V1_MODE_ON :: Zwlr_output_power_v1_mode
pattern ZWLR_OUTPUT_POWER_V1_MODE_ON = Zwlr_output_power_v1_mode 1

{-| __C declaration:__ @enum zwlr_output_power_v1_error@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 187:6@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
newtype Zwlr_output_power_v1_error = Zwlr_output_power_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_output_power_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_output_power_v1_error where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_power_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_output_power_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_power_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_output_power_v1_error instance RIP.Storable Zwlr_output_power_v1_error

deriving via RIP.CUInt instance RIP.Prim Zwlr_output_power_v1_error

instance CEnum.CEnum Zwlr_output_power_v1_error where

  type CEnumZ Zwlr_output_power_v1_error = RIP.CUInt

  toCEnum = Zwlr_output_power_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(1, RIP.singleton "ZWLR_OUTPUT_POWER_V1_ERROR_INVALID_MODE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_output_power_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_output_power_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwlr_output_power_v1_error where

  minDeclaredValue =
    ZWLR_OUTPUT_POWER_V1_ERROR_INVALID_MODE

  maxDeclaredValue =
    ZWLR_OUTPUT_POWER_V1_ERROR_INVALID_MODE

instance Show Zwlr_output_power_v1_error where

  showsPrec = CEnum.shows

instance Read Zwlr_output_power_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_output_power_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_output_power_v1_error "unwrap" where

  type CFieldType Zwlr_output_power_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| nonexistent power save mode

__C declaration:__ @ZWLR_OUTPUT_POWER_V1_ERROR_INVALID_MODE@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 191:2@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_POWER_V1_ERROR_INVALID_MODE :: Zwlr_output_power_v1_error
pattern ZWLR_OUTPUT_POWER_V1_ERROR_INVALID_MODE = Zwlr_output_power_v1_error 1

{-|

  > iface_zwlr_output_power_v1

  > zwlr_output_power_v1_listener

__C declaration:__ @struct zwlr_output_power_v1_listener@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 199:8@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_power_v1_listener = Zwlr_output_power_v1_listener
  { mode :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ Report a power management mode change

       Report the power management mode change of an output.

       The mode event is sent after an output changed its power management mode. The reason can be a client using set_mode or the compositor deciding to change an output's mode. This event is also sent immediately when the object is created so the client is informed about the current power management mode.

       [__@mode@ /(input)/__]: the output's new power management mode

    __C declaration:__ @mode@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 212:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
    -}
  , failed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ())
    {- ^ object no longer valid

       This event indicates that the output power management mode control is no longer valid. This can happen for a number of reasons, including: - The output doesn't support power management - Another client already has exclusive power management mode control for this output - The output disappeared

       Upon receiving this event, the client should destroy this object.

    __C declaration:__ @failed@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 227:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwlr_output_power_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwlr_output_power_v1_listener where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_power_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"mode") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"failed") ptr0

instance Marshal.WriteRaw Zwlr_output_power_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_power_v1_listener mode2 failed3 ->
               HasCField.writeRaw (RIP.Proxy @"mode") ptr0 mode2
            >> HasCField.writeRaw (RIP.Proxy @"failed") ptr0 failed3

deriving via Marshal.EquivStorable Zwlr_output_power_v1_listener instance RIP.Storable Zwlr_output_power_v1_listener

instance HasCField.HasCField Zwlr_output_power_v1_listener "mode" where

  type CFieldType Zwlr_output_power_v1_listener "mode" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "mode" (RIP.Ptr Zwlr_output_power_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"mode")

instance HasCField.HasCField Zwlr_output_power_v1_listener "failed" where

  type CFieldType Zwlr_output_power_v1_listener "failed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ()))
         ) => RIP.HasField "failed" (RIP.Ptr Zwlr_output_power_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"failed")

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_V1_SET_MODE@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 242:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_V1_SET_MODE :: RIP.CInt
zWLR_OUTPUT_POWER_V1_SET_MODE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_V1_DESTROY@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 243:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_V1_DESTROY :: RIP.CInt
zWLR_OUTPUT_POWER_V1_DESTROY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_V1_MODE_SINCE_VERSION@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 248:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_V1_MODE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_POWER_V1_MODE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_V1_FAILED_SINCE_VERSION@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 252:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_V1_FAILED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_POWER_V1_FAILED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_V1_SET_MODE_SINCE_VERSION@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 257:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_V1_SET_MODE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_POWER_V1_SET_MODE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_POWER_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 261:9@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_POWER_V1_DESTROY_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_POWER_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_ab60574ca1e169a1_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ())@
hs_bindgen_ab60574ca1e169a1 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ()))
hs_bindgen_ab60574ca1e169a1 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ab60574ca1e169a1_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_781868ed9b577b42_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ())@
hs_bindgen_781868ed9b577b42 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ()
hs_bindgen_781868ed9b577b42 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_781868ed9b577b42_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ()) where

  toFunPtr = hs_bindgen_ab60574ca1e169a1

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_781868ed9b577b42

foreign import ccall safe "wrapper" hs_bindgen_3c1371497f1401f2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_3c1371497f1401f2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_3c1371497f1401f2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_3c1371497f1401f2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_cc36e14225db201f_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_cc36e14225db201f ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_cc36e14225db201f =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_cc36e14225db201f_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_3c1371497f1401f2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_cc36e14225db201f

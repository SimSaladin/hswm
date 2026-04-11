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

module Bindings.River.XkbBindingsV1.Generated
    ( Bindings.River.XkbBindingsV1.Generated.River_xkb_binding_v1
    , Bindings.River.XkbBindingsV1.Generated.River_xkb_bindings_seat_v1
    , Bindings.River.XkbBindingsV1.Generated.River_xkb_bindings_v1
    , Bindings.River.XkbBindingsV1.Generated.River_xkb_bindings_v1_error(..)
    , pattern Bindings.River.XkbBindingsV1.Generated.RIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_V1_DESTROY
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_V1_GET_XKB_BINDING
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_V1_GET_SEAT
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_V1_DESTROY_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_V1_GET_XKB_BINDING_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_V1_GET_SEAT_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.River_xkb_binding_v1_listener(..)
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_DESTROY
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_ENABLE
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_DISABLE
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_PRESSED_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_RELEASED_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_STOP_REPEAT_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_DESTROY_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_ENABLE_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDING_V1_DISABLE_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.River_xkb_bindings_seat_v1_listener(..)
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_SEAT_V1_DESTROY
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_SEAT_V1_ENSURE_NEXT_KEY_EATEN
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_SEAT_V1_CANCEL_ENSURE_NEXT_KEY_EATEN
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_SEAT_V1_ATE_UNBOUND_KEY_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_SEAT_V1_DESTROY_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_SEAT_V1_ENSURE_NEXT_KEY_EATEN_SINCE_VERSION
    , Bindings.River.XkbBindingsV1.Generated.rIVER_XKB_BINDINGS_SEAT_V1_CANCEL_ENSURE_NEXT_KEY_EATEN_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct river_xkb_binding_v1@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 58:8@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
data River_xkb_binding_v1

{-| __C declaration:__ @struct river_xkb_bindings_seat_v1@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 59:8@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
data River_xkb_bindings_seat_v1

{-| __C declaration:__ @struct river_xkb_bindings_v1@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 60:8@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
data River_xkb_bindings_v1

{-| __C declaration:__ @enum river_xkb_bindings_v1_error@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 154:6@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
newtype River_xkb_bindings_v1_error = River_xkb_bindings_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_xkb_bindings_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_xkb_bindings_v1_error where

  readRaw =
    \ptr0 ->
          pure River_xkb_bindings_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_xkb_bindings_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_bindings_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_xkb_bindings_v1_error instance RIP.Storable River_xkb_bindings_v1_error

deriving via RIP.CUInt instance RIP.Prim River_xkb_bindings_v1_error

instance CEnum.CEnum River_xkb_bindings_v1_error where

  type CEnumZ River_xkb_bindings_v1_error = RIP.CUInt

  toCEnum = River_xkb_bindings_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "RIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_xkb_bindings_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_xkb_bindings_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_xkb_bindings_v1_error where

  minDeclaredValue =
    RIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED

  maxDeclaredValue =
    RIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED

instance Show River_xkb_bindings_v1_error where

  showsPrec = CEnum.shows

instance Read River_xkb_bindings_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_xkb_bindings_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_xkb_bindings_v1_error "unwrap" where

  type CFieldType River_xkb_bindings_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-|

  @since:  2

__C declaration:__ @RIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 158:2@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
pattern RIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED :: River_xkb_bindings_v1_error
pattern RIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED = River_xkb_bindings_v1_error 0

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 163:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDINGS_V1_ERROR_OBJECT_ALREADY_CREATED_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_V1_DESTROY@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 166:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_V1_DESTROY :: RIP.CInt
rIVER_XKB_BINDINGS_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_V1_GET_XKB_BINDING@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 167:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_V1_GET_XKB_BINDING :: RIP.CInt
rIVER_XKB_BINDINGS_V1_GET_XKB_BINDING =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_V1_GET_SEAT@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 168:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_V1_GET_SEAT :: RIP.CInt
rIVER_XKB_BINDINGS_V1_GET_SEAT = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 174:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDINGS_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_V1_GET_XKB_BINDING_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 178:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_V1_GET_XKB_BINDING_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDINGS_V1_GET_XKB_BINDING_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_V1_GET_SEAT_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 182:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_V1_GET_SEAT_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDINGS_V1_GET_SEAT_SINCE_VERSION =
  (2 :: RIP.CInt)

{-|

  > iface_river_xkb_binding_v1

  > river_xkb_binding_v1_listener

__C declaration:__ @struct river_xkb_binding_v1_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 260:8@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
data River_xkb_binding_v1_listener = River_xkb_binding_v1_listener
  { pressed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())
    {- ^ the key triggering the binding has been pressed

       This event indicates that the physical key triggering the binding has been pressed.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       The compositor should wait for the manage sequence to complete before processing further input events. This allows the window manager client to, for example, modify key bindings and keyboard focus without racing against future input events. The window manager should of course respond as soon as possible as the capacity of the compositor to buffer incoming input events is finite.

    __C declaration:__ @pressed@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 278:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
    -}
  , released :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())
    {- ^ the key triggering the binding has been released

       This event indicates that the physical key triggering the binding has been released.

       Releasing the modifiers for the binding without releasing the "main" physical key that produces the bound keysym does not trigger the release event. This event is sent when the "main" key is released, even if the modifiers have changed since the pressed event.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       The compositor should wait for the manage sequence to complete before processing further input events. This allows the window manager client to, for example, modify key bindings and keyboard focus without racing against future input events. The window manager should of course respond as soon as possible as the capacity of the compositor to buffer incoming input events is finite.

    __C declaration:__ @released@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 303:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
    -}
  , stop_repeat :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())
    {- ^ repeating should be stopped

       This event indicates that repeating should be stopped for the binding if the window manager has been repeating some action since the pressed event.

       This event is generally sent when some other (possible unbound) key is pressed after the pressed event is sent and before the released event is sent for this binding.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       @since:  2

    __C declaration:__ @stop_repeat@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 320:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_xkb_binding_v1_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_xkb_binding_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_xkb_binding_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"pressed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"released") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"stop_repeat") ptr0

instance Marshal.WriteRaw River_xkb_binding_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_binding_v1_listener pressed2 released3 stop_repeat4 ->
               HasCField.writeRaw (RIP.Proxy @"pressed") ptr0 pressed2
            >> HasCField.writeRaw (RIP.Proxy @"released") ptr0 released3
            >> HasCField.writeRaw (RIP.Proxy @"stop_repeat") ptr0 stop_repeat4

deriving via Marshal.EquivStorable River_xkb_binding_v1_listener instance RIP.Storable River_xkb_binding_v1_listener

instance HasCField.HasCField River_xkb_binding_v1_listener "pressed" where

  type CFieldType River_xkb_binding_v1_listener "pressed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ()))
         ) => RIP.HasField "pressed" (RIP.Ptr River_xkb_binding_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"pressed")

instance HasCField.HasCField River_xkb_binding_v1_listener "released" where

  type CFieldType River_xkb_binding_v1_listener "released" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ()))
         ) => RIP.HasField "released" (RIP.Ptr River_xkb_binding_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"released")

instance HasCField.HasCField River_xkb_binding_v1_listener "stop_repeat" where

  type CFieldType River_xkb_binding_v1_listener "stop_repeat" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ()))
         ) => RIP.HasField "stop_repeat" (RIP.Ptr River_xkb_binding_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"stop_repeat")

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_DESTROY@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 335:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_DESTROY :: RIP.CInt
rIVER_XKB_BINDING_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 336:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE :: RIP.CInt
rIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_ENABLE@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 337:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_ENABLE :: RIP.CInt
rIVER_XKB_BINDING_V1_ENABLE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_DISABLE@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 338:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_DISABLE :: RIP.CInt
rIVER_XKB_BINDING_V1_DISABLE = (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_PRESSED_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 343:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_PRESSED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDING_V1_PRESSED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_RELEASED_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 347:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_RELEASED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDING_V1_RELEASED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_STOP_REPEAT_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 351:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_STOP_REPEAT_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDING_V1_STOP_REPEAT_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 356:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDING_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 360:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDING_V1_SET_LAYOUT_OVERRIDE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_ENABLE_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 364:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_ENABLE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDING_V1_ENABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDING_V1_DISABLE_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 368:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDING_V1_DISABLE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDING_V1_DISABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_river_xkb_bindings_seat_v1

  > river_xkb_bindings_seat_v1_listener

__C declaration:__ @struct river_xkb_bindings_seat_v1_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 463:8@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
data River_xkb_bindings_seat_v1_listener = River_xkb_bindings_seat_v1_listener
  { ate_unbound_key :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())
    {- ^ an unbound key press event was eaten

       An unbound key press event was eaten due to the ensure_next_key_eaten request.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       @since:  2

    __C declaration:__ @ate_unbound_key@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 474:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_xkb_bindings_seat_v1_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_xkb_bindings_seat_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_xkb_bindings_seat_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"ate_unbound_key") ptr0

instance Marshal.WriteRaw River_xkb_bindings_seat_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_bindings_seat_v1_listener ate_unbound_key2 ->
            HasCField.writeRaw (RIP.Proxy @"ate_unbound_key") ptr0 ate_unbound_key2

deriving via Marshal.EquivStorable River_xkb_bindings_seat_v1_listener instance RIP.Storable River_xkb_bindings_seat_v1_listener

instance HasCField.HasCField River_xkb_bindings_seat_v1_listener "ate_unbound_key" where

  type CFieldType River_xkb_bindings_seat_v1_listener "ate_unbound_key" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
         ) => RIP.HasField "ate_unbound_key" (RIP.Ptr River_xkb_bindings_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"ate_unbound_key")

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_SEAT_V1_DESTROY@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 489:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_SEAT_V1_DESTROY :: RIP.CInt
rIVER_XKB_BINDINGS_SEAT_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_SEAT_V1_ENSURE_NEXT_KEY_EATEN@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 490:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_SEAT_V1_ENSURE_NEXT_KEY_EATEN :: RIP.CInt
rIVER_XKB_BINDINGS_SEAT_V1_ENSURE_NEXT_KEY_EATEN =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_SEAT_V1_CANCEL_ENSURE_NEXT_KEY_EATEN@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 491:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_SEAT_V1_CANCEL_ENSURE_NEXT_KEY_EATEN :: RIP.CInt
rIVER_XKB_BINDINGS_SEAT_V1_CANCEL_ENSURE_NEXT_KEY_EATEN =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_SEAT_V1_ATE_UNBOUND_KEY_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 496:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_SEAT_V1_ATE_UNBOUND_KEY_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDINGS_SEAT_V1_ATE_UNBOUND_KEY_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_SEAT_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 501:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_SEAT_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDINGS_SEAT_V1_DESTROY_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_SEAT_V1_ENSURE_NEXT_KEY_EATEN_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 505:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_SEAT_V1_ENSURE_NEXT_KEY_EATEN_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDINGS_SEAT_V1_ENSURE_NEXT_KEY_EATEN_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_BINDINGS_SEAT_V1_CANCEL_ENSURE_NEXT_KEY_EATEN_SINCE_VERSION@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 509:9@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
rIVER_XKB_BINDINGS_SEAT_V1_CANCEL_ENSURE_NEXT_KEY_EATEN_SINCE_VERSION :: RIP.CInt
rIVER_XKB_BINDINGS_SEAT_V1_CANCEL_ENSURE_NEXT_KEY_EATEN_SINCE_VERSION =
  (2 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_ee6b40765debab99_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())@
hs_bindgen_ee6b40765debab99 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_ee6b40765debab99 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ee6b40765debab99_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_b1be695d6785a235_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())@
hs_bindgen_b1be695d6785a235 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ()
hs_bindgen_b1be695d6785a235 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_b1be695d6785a235_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ()) where

  toFunPtr = hs_bindgen_ee6b40765debab99

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_binding_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_b1be695d6785a235

foreign import ccall safe "wrapper" hs_bindgen_0f528cf5e3453d26_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())@
hs_bindgen_0f528cf5e3453d26 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_0f528cf5e3453d26 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0f528cf5e3453d26_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_11cdc0355c7b165b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())@
hs_bindgen_11cdc0355c7b165b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()
hs_bindgen_11cdc0355c7b165b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_11cdc0355c7b165b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()) where

  toFunPtr = hs_bindgen_0f528cf5e3453d26

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_11cdc0355c7b165b

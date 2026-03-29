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

module Generated.River.InputManagementV1
    ( Generated.River.InputManagementV1.Wl_message(..)
    , Generated.River.InputManagementV1.Wl_interface(..)
    , Generated.River.InputManagementV1.River_input_device_v1
    , Generated.River.InputManagementV1.River_input_manager_v1
    , Generated.River.InputManagementV1.Wl_output
    , Generated.River.InputManagementV1.River_input_manager_v1_error(..)
    , pattern Generated.River.InputManagementV1.RIVER_INPUT_MANAGER_V1_ERROR_INVALID_DESTROY
    , Generated.River.InputManagementV1.River_input_manager_v1_listener(..)
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_STOP
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_DESTROY
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_CREATE_SEAT
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_DESTROY_SEAT
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_FINISHED_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_INPUT_DEVICE_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_STOP_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_DESTROY_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_CREATE_SEAT_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_MANAGER_V1_DESTROY_SEAT_SINCE_VERSION
    , Generated.River.InputManagementV1.River_input_device_v1_error(..)
    , pattern Generated.River.InputManagementV1.RIVER_INPUT_DEVICE_V1_ERROR_INVALID_REPEAT_INFO
    , pattern Generated.River.InputManagementV1.RIVER_INPUT_DEVICE_V1_ERROR_INVALID_SCROLL_FACTOR
    , pattern Generated.River.InputManagementV1.RIVER_INPUT_DEVICE_V1_ERROR_INVALID_MAP_TO_RECTANGLE
    , Generated.River.InputManagementV1.River_input_device_v1_type(..)
    , pattern Generated.River.InputManagementV1.RIVER_INPUT_DEVICE_V1_TYPE_KEYBOARD
    , pattern Generated.River.InputManagementV1.RIVER_INPUT_DEVICE_V1_TYPE_POINTER
    , pattern Generated.River.InputManagementV1.RIVER_INPUT_DEVICE_V1_TYPE_TOUCH
    , pattern Generated.River.InputManagementV1.RIVER_INPUT_DEVICE_V1_TYPE_TABLET
    , Generated.River.InputManagementV1.River_input_device_v1_listener(..)
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_DESTROY
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_ASSIGN_TO_SEAT
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_SET_REPEAT_INFO
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_SET_SCROLL_FACTOR
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_MAP_TO_OUTPUT
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_MAP_TO_RECTANGLE
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_REMOVED_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_TYPE_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_NAME_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_DESTROY_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_ASSIGN_TO_SEAT_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_SET_REPEAT_INFO_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_SET_SCROLL_FACTOR_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_MAP_TO_OUTPUT_SINCE_VERSION
    , Generated.River.InputManagementV1.rIVER_INPUT_DEVICE_V1_MAP_TO_RECTANGLE_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-| __C declaration:__ @struct wl_message@

    __defined at:__ @wayland-util.h 177:8@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
data Wl_message = Wl_message
  { name :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-util.h 179:14@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , signature :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @signature@

         __defined at:__ @wayland-util.h 181:14@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , types :: RIP.Ptr (PtrConst.PtrConst Wl_interface)
    {- ^ __C declaration:__ @types@

         __defined at:__ @wayland-util.h 183:30@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_message where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_message where

  readRaw =
    \ptr0 ->
          pure Wl_message
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"signature") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"types") ptr0

instance Marshal.WriteRaw Wl_message where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_message name2 signature3 types4 ->
               HasCField.writeRaw (RIP.Proxy @"name") ptr0 name2
            >> HasCField.writeRaw (RIP.Proxy @"signature") ptr0 signature3
            >> HasCField.writeRaw (RIP.Proxy @"types") ptr0 types4

deriving via Marshal.EquivStorable Wl_message instance RIP.Storable Wl_message

instance HasCField.HasCField Wl_message "name" where

  type CFieldType Wl_message "name" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (PtrConst.PtrConst RIP.CChar)
         ) => RIP.HasField "name" (RIP.Ptr Wl_message) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField Wl_message "signature" where

  type CFieldType Wl_message "signature" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (PtrConst.PtrConst RIP.CChar)
         ) => RIP.HasField "signature" (RIP.Ptr Wl_message) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"signature")

instance HasCField.HasCField Wl_message "types" where

  type CFieldType Wl_message "types" =
    RIP.Ptr (PtrConst.PtrConst Wl_interface)

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.Ptr (PtrConst.PtrConst Wl_interface))
         ) => RIP.HasField "types" (RIP.Ptr Wl_message) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"types")

{-| __C declaration:__ @struct wl_interface@

    __defined at:__ @wayland-util.h 232:8@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
data Wl_interface = Wl_interface
  { name :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-util.h 234:14@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , version :: RIP.CInt
    {- ^ __C declaration:__ @version@

         __defined at:__ @wayland-util.h 236:6@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , method_count :: RIP.CInt
    {- ^ __C declaration:__ @method_count@

         __defined at:__ @wayland-util.h 238:6@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , methods :: PtrConst.PtrConst Wl_message
    {- ^ __C declaration:__ @methods@

         __defined at:__ @wayland-util.h 240:27@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , event_count :: RIP.CInt
    {- ^ __C declaration:__ @event_count@

         __defined at:__ @wayland-util.h 242:6@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , events :: PtrConst.PtrConst Wl_message
    {- ^ __C declaration:__ @events@

         __defined at:__ @wayland-util.h 244:27@

         __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_interface where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_interface where

  readRaw =
    \ptr0 ->
          pure Wl_interface
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"version") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"method_count") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"methods") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"event_count") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"events") ptr0

instance Marshal.WriteRaw Wl_interface where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_interface name2 version3 method_count4 methods5 event_count6 events7 ->
               HasCField.writeRaw (RIP.Proxy @"name") ptr0 name2
            >> HasCField.writeRaw (RIP.Proxy @"version") ptr0 version3
            >> HasCField.writeRaw (RIP.Proxy @"method_count") ptr0 method_count4
            >> HasCField.writeRaw (RIP.Proxy @"methods") ptr0 methods5
            >> HasCField.writeRaw (RIP.Proxy @"event_count") ptr0 event_count6
            >> HasCField.writeRaw (RIP.Proxy @"events") ptr0 events7

deriving via Marshal.EquivStorable Wl_interface instance RIP.Storable Wl_interface

instance HasCField.HasCField Wl_interface "name" where

  type CFieldType Wl_interface "name" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (PtrConst.PtrConst RIP.CChar)
         ) => RIP.HasField "name" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField Wl_interface "version" where

  type CFieldType Wl_interface "version" = RIP.CInt

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "version" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"version")

instance HasCField.HasCField Wl_interface "method_count" where

  type CFieldType Wl_interface "method_count" =
    RIP.CInt

  offset# = \_ -> \_ -> 12

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "method_count" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"method_count")

instance HasCField.HasCField Wl_interface "methods" where

  type CFieldType Wl_interface "methods" =
    PtrConst.PtrConst Wl_message

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (PtrConst.PtrConst Wl_message)
         ) => RIP.HasField "methods" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"methods")

instance HasCField.HasCField Wl_interface "event_count" where

  type CFieldType Wl_interface "event_count" = RIP.CInt

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "event_count" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"event_count")

instance HasCField.HasCField Wl_interface "events" where

  type CFieldType Wl_interface "events" =
    PtrConst.PtrConst Wl_message

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (PtrConst.PtrConst Wl_message)
         ) => RIP.HasField "events" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"events")

{-|

  > page_river_input_management_v1 The river_input_management_v1 protocol

  manage seats and input devices

  > page_desc_river_input_management_v1 Description

  This protocol supports creating/destroying seats, assigning input devices to seats, and configuring input devices (e.g. setting keyboard repeat rate).

  The key words "must", "must not", "required", "shall", "shall not", "should", "should not", "recommended", "may", and "optional" in this document are to be interpreted as described in IETF RFC 2119.

  > page_ifaces_river_input_management_v1 Interfaces

  -

  > page_iface_river_input_manager_v1 - input manager global interface

  -

  > page_iface_river_input_device_v1 - an input device

  > page_copyright_river_input_management_v1 Copyright

  SPDX-FileCopyrightText: © 2025 Isaac Freund SPDX-License-Identifier: MIT

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

__C declaration:__ @struct river_input_device_v1@

__defined at:__ @river-input-management-v1-client-protocol.h 55:8@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
data River_input_device_v1

{-| __C declaration:__ @struct river_input_manager_v1@

    __defined at:__ @river-input-management-v1-client-protocol.h 56:8@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
data River_input_manager_v1

{-| __C declaration:__ @struct wl_output@

    __defined at:__ @river-input-management-v1-client-protocol.h 57:8@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
data Wl_output

{-| __C declaration:__ @enum river_input_manager_v1_error@

    __defined at:__ @river-input-management-v1-client-protocol.h 100:6@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
newtype River_input_manager_v1_error = River_input_manager_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_input_manager_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_input_manager_v1_error where

  readRaw =
    \ptr0 ->
          pure River_input_manager_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_input_manager_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_input_manager_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_input_manager_v1_error instance RIP.Storable River_input_manager_v1_error

deriving via RIP.CUInt instance RIP.Prim River_input_manager_v1_error

instance CEnum.CEnum River_input_manager_v1_error where

  type CEnumZ River_input_manager_v1_error = RIP.CUInt

  toCEnum = River_input_manager_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "RIVER_INPUT_MANAGER_V1_ERROR_INVALID_DESTROY")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_input_manager_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_input_manager_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_input_manager_v1_error where

  minDeclaredValue =
    RIVER_INPUT_MANAGER_V1_ERROR_INVALID_DESTROY

  maxDeclaredValue =
    RIVER_INPUT_MANAGER_V1_ERROR_INVALID_DESTROY

instance Show River_input_manager_v1_error where

  showsPrec = CEnum.shows

instance Read River_input_manager_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_input_manager_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_input_manager_v1_error "unwrap" where

  type CFieldType River_input_manager_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_INPUT_MANAGER_V1_ERROR_INVALID_DESTROY@

    __defined at:__ @river-input-management-v1-client-protocol.h 101:2@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
pattern RIVER_INPUT_MANAGER_V1_ERROR_INVALID_DESTROY :: River_input_manager_v1_error
pattern RIVER_INPUT_MANAGER_V1_ERROR_INVALID_DESTROY = River_input_manager_v1_error 0

{-|

  > iface_river_input_manager_v1

  > river_input_manager_v1_listener

__C declaration:__ @struct river_input_manager_v1_listener@

__defined at:__ @river-input-management-v1-client-protocol.h 109:8@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
data River_input_manager_v1_listener = River_input_manager_v1_listener
  { finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ())
    {- ^ the server has finished with the input manager

       This event indicates that the server will send no further events on this object. The client should destroy the object. See river_input_manager_v1.destroy for more information.

    __C declaration:__ @finished@

    __defined at:__ @river-input-management-v1-client-protocol.h 117:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , input_device :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
    {- ^ new input device

       A new input device has been created.

    __C declaration:__ @input_device@

    __defined at:__ @river-input-management-v1-client-protocol.h 124:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_input_manager_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_input_manager_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_input_manager_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"input_device") ptr0

instance Marshal.WriteRaw River_input_manager_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_input_manager_v1_listener finished2 input_device3 ->
               HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished2
            >> HasCField.writeRaw (RIP.Proxy @"input_device") ptr0 input_device3

deriving via Marshal.EquivStorable River_input_manager_v1_listener instance RIP.Storable River_input_manager_v1_listener

instance HasCField.HasCField River_input_manager_v1_listener "finished" where

  type CFieldType River_input_manager_v1_listener "finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ()))
         ) => RIP.HasField "finished" (RIP.Ptr River_input_manager_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

instance HasCField.HasCField River_input_manager_v1_listener "input_device" where

  type CFieldType River_input_manager_v1_listener "input_device" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()))
         ) => RIP.HasField "input_device" (RIP.Ptr River_input_manager_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"input_device")

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_STOP@

    __defined at:__ @river-input-management-v1-client-protocol.h 140:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_STOP :: RIP.CInt
rIVER_INPUT_MANAGER_V1_STOP = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_DESTROY@

    __defined at:__ @river-input-management-v1-client-protocol.h 141:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_DESTROY :: RIP.CInt
rIVER_INPUT_MANAGER_V1_DESTROY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_CREATE_SEAT@

    __defined at:__ @river-input-management-v1-client-protocol.h 142:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_CREATE_SEAT :: RIP.CInt
rIVER_INPUT_MANAGER_V1_CREATE_SEAT = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_DESTROY_SEAT@

    __defined at:__ @river-input-management-v1-client-protocol.h 143:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_DESTROY_SEAT :: RIP.CInt
rIVER_INPUT_MANAGER_V1_DESTROY_SEAT = (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 148:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_FINISHED_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_MANAGER_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_INPUT_DEVICE_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 152:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_INPUT_DEVICE_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_MANAGER_V1_INPUT_DEVICE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_STOP_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 157:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_STOP_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_MANAGER_V1_STOP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 161:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_MANAGER_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_CREATE_SEAT_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 165:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_CREATE_SEAT_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_MANAGER_V1_CREATE_SEAT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_MANAGER_V1_DESTROY_SEAT_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 169:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_MANAGER_V1_DESTROY_SEAT_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_MANAGER_V1_DESTROY_SEAT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum river_input_device_v1_error@

    __defined at:__ @river-input-management-v1-client-protocol.h 268:6@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
newtype River_input_device_v1_error = River_input_device_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_input_device_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_input_device_v1_error where

  readRaw =
    \ptr0 ->
          pure River_input_device_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_input_device_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_input_device_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_input_device_v1_error instance RIP.Storable River_input_device_v1_error

deriving via RIP.CUInt instance RIP.Prim River_input_device_v1_error

instance CEnum.CEnum River_input_device_v1_error where

  type CEnumZ River_input_device_v1_error = RIP.CUInt

  toCEnum = River_input_device_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_INPUT_DEVICE_V1_ERROR_INVALID_REPEAT_INFO")
                                   , (1, RIP.singleton "RIVER_INPUT_DEVICE_V1_ERROR_INVALID_SCROLL_FACTOR")
                                   , (2, RIP.singleton "RIVER_INPUT_DEVICE_V1_ERROR_INVALID_MAP_TO_RECTANGLE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_input_device_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_input_device_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_input_device_v1_error where

  minDeclaredValue =
    RIVER_INPUT_DEVICE_V1_ERROR_INVALID_REPEAT_INFO

  maxDeclaredValue =
    RIVER_INPUT_DEVICE_V1_ERROR_INVALID_MAP_TO_RECTANGLE

instance Show River_input_device_v1_error where

  showsPrec = CEnum.shows

instance Read River_input_device_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_input_device_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_input_device_v1_error "unwrap" where

  type CFieldType River_input_device_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_INPUT_DEVICE_V1_ERROR_INVALID_REPEAT_INFO@

    __defined at:__ @river-input-management-v1-client-protocol.h 269:2@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
pattern RIVER_INPUT_DEVICE_V1_ERROR_INVALID_REPEAT_INFO :: River_input_device_v1_error
pattern RIVER_INPUT_DEVICE_V1_ERROR_INVALID_REPEAT_INFO = River_input_device_v1_error 0

{-| __C declaration:__ @RIVER_INPUT_DEVICE_V1_ERROR_INVALID_SCROLL_FACTOR@

    __defined at:__ @river-input-management-v1-client-protocol.h 270:2@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
pattern RIVER_INPUT_DEVICE_V1_ERROR_INVALID_SCROLL_FACTOR :: River_input_device_v1_error
pattern RIVER_INPUT_DEVICE_V1_ERROR_INVALID_SCROLL_FACTOR = River_input_device_v1_error 1

{-| __C declaration:__ @RIVER_INPUT_DEVICE_V1_ERROR_INVALID_MAP_TO_RECTANGLE@

    __defined at:__ @river-input-management-v1-client-protocol.h 271:2@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
pattern RIVER_INPUT_DEVICE_V1_ERROR_INVALID_MAP_TO_RECTANGLE :: River_input_device_v1_error
pattern RIVER_INPUT_DEVICE_V1_ERROR_INVALID_MAP_TO_RECTANGLE = River_input_device_v1_error 2

{-| __C declaration:__ @enum river_input_device_v1_type@

    __defined at:__ @river-input-management-v1-client-protocol.h 277:6@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
newtype River_input_device_v1_type = River_input_device_v1_type
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_input_device_v1_type where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_input_device_v1_type where

  readRaw =
    \ptr0 ->
          pure River_input_device_v1_type
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_input_device_v1_type where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_input_device_v1_type unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_input_device_v1_type instance RIP.Storable River_input_device_v1_type

deriving via RIP.CUInt instance RIP.Prim River_input_device_v1_type

instance CEnum.CEnum River_input_device_v1_type where

  type CEnumZ River_input_device_v1_type = RIP.CUInt

  toCEnum = River_input_device_v1_type

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_INPUT_DEVICE_V1_TYPE_KEYBOARD")
                                   , (1, RIP.singleton "RIVER_INPUT_DEVICE_V1_TYPE_POINTER")
                                   , (2, RIP.singleton "RIVER_INPUT_DEVICE_V1_TYPE_TOUCH")
                                   , (3, RIP.singleton "RIVER_INPUT_DEVICE_V1_TYPE_TABLET")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_input_device_v1_type"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_input_device_v1_type"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_input_device_v1_type where

  minDeclaredValue =
    RIVER_INPUT_DEVICE_V1_TYPE_KEYBOARD

  maxDeclaredValue = RIVER_INPUT_DEVICE_V1_TYPE_TABLET

instance Show River_input_device_v1_type where

  showsPrec = CEnum.shows

instance Read River_input_device_v1_type where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_input_device_v1_type) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_input_device_v1_type "unwrap" where

  type CFieldType River_input_device_v1_type "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_INPUT_DEVICE_V1_TYPE_KEYBOARD@

    __defined at:__ @river-input-management-v1-client-protocol.h 278:2@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
pattern RIVER_INPUT_DEVICE_V1_TYPE_KEYBOARD :: River_input_device_v1_type
pattern RIVER_INPUT_DEVICE_V1_TYPE_KEYBOARD = River_input_device_v1_type 0

{-| __C declaration:__ @RIVER_INPUT_DEVICE_V1_TYPE_POINTER@

    __defined at:__ @river-input-management-v1-client-protocol.h 279:2@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
pattern RIVER_INPUT_DEVICE_V1_TYPE_POINTER :: River_input_device_v1_type
pattern RIVER_INPUT_DEVICE_V1_TYPE_POINTER = River_input_device_v1_type 1

{-| __C declaration:__ @RIVER_INPUT_DEVICE_V1_TYPE_TOUCH@

    __defined at:__ @river-input-management-v1-client-protocol.h 280:2@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
pattern RIVER_INPUT_DEVICE_V1_TYPE_TOUCH :: River_input_device_v1_type
pattern RIVER_INPUT_DEVICE_V1_TYPE_TOUCH = River_input_device_v1_type 2

{-| __C declaration:__ @RIVER_INPUT_DEVICE_V1_TYPE_TABLET@

    __defined at:__ @river-input-management-v1-client-protocol.h 281:2@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
pattern RIVER_INPUT_DEVICE_V1_TYPE_TABLET :: River_input_device_v1_type
pattern RIVER_INPUT_DEVICE_V1_TYPE_TABLET = River_input_device_v1_type 3

{-|

  > iface_river_input_device_v1

  > river_input_device_v1_listener

__C declaration:__ @struct river_input_device_v1_listener@

__defined at:__ @river-input-management-v1-client-protocol.h 289:8@

__exported by:__ @river-input-management-v1-client-protocol.h@
-}
data River_input_device_v1_listener = River_input_device_v1_listener
  { removed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ())
    {- ^ the input device is removed

       This event indicates that the input device has been removed.

       The server will send no further events on this object and ignore any request (other than river_input_device_v1.destroy) made after this event is sent. The client should destroy this object with the river_input_device_v1.destroy request to free up resources.

    __C declaration:__ @removed@

    __defined at:__ @river-input-management-v1-client-protocol.h 301:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , type' :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ the type of the input device

       The type of the input device. This event is sent once when the river_input_device_v1 object is created. The device type cannot change during the lifetime of the object.

    __C declaration:__ @type@

    __defined at:__ @river-input-management-v1-client-protocol.h 310:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  , name :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ the name of the input device

       The name of the input device. This event is sent once when the river_input_device_v1 object is created. The device name cannot change during the lifetime of the object.

    __C declaration:__ @name@

    __defined at:__ @river-input-management-v1-client-protocol.h 320:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_input_device_v1_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_input_device_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_input_device_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"removed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"type'") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0

instance Marshal.WriteRaw River_input_device_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_input_device_v1_listener removed2 type'3 name4 ->
               HasCField.writeRaw (RIP.Proxy @"removed") ptr0 removed2
            >> HasCField.writeRaw (RIP.Proxy @"type'") ptr0 type'3
            >> HasCField.writeRaw (RIP.Proxy @"name") ptr0 name4

deriving via Marshal.EquivStorable River_input_device_v1_listener instance RIP.Storable River_input_device_v1_listener

instance HasCField.HasCField River_input_device_v1_listener "removed" where

  type CFieldType River_input_device_v1_listener "removed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ()))
         ) => RIP.HasField "removed" (RIP.Ptr River_input_device_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"removed")

instance HasCField.HasCField River_input_device_v1_listener "type'" where

  type CFieldType River_input_device_v1_listener "type'" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "type'" (RIP.Ptr River_input_device_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"type'")

instance HasCField.HasCField River_input_device_v1_listener "name" where

  type CFieldType River_input_device_v1_listener "name" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "name" (RIP.Ptr River_input_device_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_DESTROY@

    __defined at:__ @river-input-management-v1-client-protocol.h 336:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_DESTROY :: RIP.CInt
rIVER_INPUT_DEVICE_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_ASSIGN_TO_SEAT@

    __defined at:__ @river-input-management-v1-client-protocol.h 337:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_ASSIGN_TO_SEAT :: RIP.CInt
rIVER_INPUT_DEVICE_V1_ASSIGN_TO_SEAT =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_SET_REPEAT_INFO@

    __defined at:__ @river-input-management-v1-client-protocol.h 338:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_SET_REPEAT_INFO :: RIP.CInt
rIVER_INPUT_DEVICE_V1_SET_REPEAT_INFO =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_SET_SCROLL_FACTOR@

    __defined at:__ @river-input-management-v1-client-protocol.h 339:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_SET_SCROLL_FACTOR :: RIP.CInt
rIVER_INPUT_DEVICE_V1_SET_SCROLL_FACTOR =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_MAP_TO_OUTPUT@

    __defined at:__ @river-input-management-v1-client-protocol.h 340:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_MAP_TO_OUTPUT :: RIP.CInt
rIVER_INPUT_DEVICE_V1_MAP_TO_OUTPUT = (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_MAP_TO_RECTANGLE@

    __defined at:__ @river-input-management-v1-client-protocol.h 341:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_MAP_TO_RECTANGLE :: RIP.CInt
rIVER_INPUT_DEVICE_V1_MAP_TO_RECTANGLE =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_REMOVED_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 346:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_REMOVED_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_REMOVED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_TYPE_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 350:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_TYPE_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_TYPE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_NAME_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 354:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_NAME_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_NAME_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 359:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_ASSIGN_TO_SEAT_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 363:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_ASSIGN_TO_SEAT_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_ASSIGN_TO_SEAT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_SET_REPEAT_INFO_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 367:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_SET_REPEAT_INFO_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_SET_REPEAT_INFO_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_SET_SCROLL_FACTOR_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 371:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_SET_SCROLL_FACTOR_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_SET_SCROLL_FACTOR_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_MAP_TO_OUTPUT_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 375:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_MAP_TO_OUTPUT_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_MAP_TO_OUTPUT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_INPUT_DEVICE_V1_MAP_TO_RECTANGLE_SINCE_VERSION@

    __defined at:__ @river-input-management-v1-client-protocol.h 379:9@

    __exported by:__ @river-input-management-v1-client-protocol.h@
-}
rIVER_INPUT_DEVICE_V1_MAP_TO_RECTANGLE_SINCE_VERSION :: RIP.CInt
rIVER_INPUT_DEVICE_V1_MAP_TO_RECTANGLE_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_0a3b825c854fdb0b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ())@
hs_bindgen_0a3b825c854fdb0b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ()))
hs_bindgen_0a3b825c854fdb0b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0a3b825c854fdb0b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_a20acc2f6323de82_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ())@
hs_bindgen_a20acc2f6323de82 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ()
hs_bindgen_a20acc2f6323de82 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_a20acc2f6323de82_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ()) where

  toFunPtr = hs_bindgen_0a3b825c854fdb0b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_a20acc2f6323de82

foreign import ccall safe "wrapper" hs_bindgen_58419936d87ebf4e_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_58419936d87ebf4e ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_58419936d87ebf4e =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_58419936d87ebf4e_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_72d174005b48fdd2_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_72d174005b48fdd2 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_72d174005b48fdd2 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_72d174005b48fdd2_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_58419936d87ebf4e

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_72d174005b48fdd2

foreign import ccall safe "wrapper" hs_bindgen_7297099aef3714ca_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_7297099aef3714ca ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_7297099aef3714ca =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_7297099aef3714ca_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5197b110e3a140ce_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_5197b110e3a140ce ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_5197b110e3a140ce =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5197b110e3a140ce_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_7297099aef3714ca

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_5197b110e3a140ce

foreign import ccall safe "wrapper" hs_bindgen_a3aa706b42fea7d4_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ())@
hs_bindgen_a3aa706b42fea7d4 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ()))
hs_bindgen_a3aa706b42fea7d4 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_a3aa706b42fea7d4_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ba70e28e7b0fa586_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ())@
hs_bindgen_ba70e28e7b0fa586 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ()
hs_bindgen_ba70e28e7b0fa586 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ba70e28e7b0fa586_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ()) where

  toFunPtr = hs_bindgen_a3aa706b42fea7d4

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_ba70e28e7b0fa586

foreign import ccall safe "wrapper" hs_bindgen_47962fb6d8b63d41_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())@
hs_bindgen_47962fb6d8b63d41 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()))
hs_bindgen_47962fb6d8b63d41 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_47962fb6d8b63d41_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_28ba6f97d03cf736_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())@
hs_bindgen_28ba6f97d03cf736 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()
hs_bindgen_28ba6f97d03cf736 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_28ba6f97d03cf736_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()) where

  toFunPtr = hs_bindgen_47962fb6d8b63d41

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_input_manager_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_28ba6f97d03cf736

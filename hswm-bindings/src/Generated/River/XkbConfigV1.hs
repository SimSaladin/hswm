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

module Generated.River.XkbConfigV1
    ( Generated.River.XkbConfigV1.Wl_message(..)
    , Generated.River.XkbConfigV1.Wl_interface(..)
    , Generated.River.XkbConfigV1.River_input_device_v1
    , Generated.River.XkbConfigV1.River_xkb_config_v1
    , Generated.River.XkbConfigV1.River_xkb_keyboard_v1
    , Generated.River.XkbConfigV1.River_xkb_keymap_v1
    , Generated.River.XkbConfigV1.River_xkb_config_v1_error(..)
    , pattern Generated.River.XkbConfigV1.RIVER_XKB_CONFIG_V1_ERROR_INVALID_DESTROY
    , pattern Generated.River.XkbConfigV1.RIVER_XKB_CONFIG_V1_ERROR_INVALID_FORMAT
    , Generated.River.XkbConfigV1.River_xkb_config_v1_keymap_format(..)
    , pattern Generated.River.XkbConfigV1.RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1
    , pattern Generated.River.XkbConfigV1.RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V2
    , Generated.River.XkbConfigV1.River_xkb_config_v1_listener(..)
    , Generated.River.XkbConfigV1.rIVER_XKB_CONFIG_V1_STOP
    , Generated.River.XkbConfigV1.rIVER_XKB_CONFIG_V1_DESTROY
    , Generated.River.XkbConfigV1.rIVER_XKB_CONFIG_V1_CREATE_KEYMAP
    , Generated.River.XkbConfigV1.rIVER_XKB_CONFIG_V1_FINISHED_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_CONFIG_V1_XKB_KEYBOARD_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_CONFIG_V1_STOP_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_CONFIG_V1_DESTROY_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_CONFIG_V1_CREATE_KEYMAP_SINCE_VERSION
    , Generated.River.XkbConfigV1.River_xkb_keymap_v1_listener(..)
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYMAP_V1_DESTROY
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYMAP_V1_SUCCESS_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYMAP_V1_FAILURE_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYMAP_V1_DESTROY_SINCE_VERSION
    , Generated.River.XkbConfigV1.River_xkb_keyboard_v1_error(..)
    , pattern Generated.River.XkbConfigV1.RIVER_XKB_KEYBOARD_V1_ERROR_INVALID_KEYMAP
    , Generated.River.XkbConfigV1.River_xkb_keyboard_v1_listener(..)
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_DESTROY
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_SET_KEYMAP
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_REMOVED_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_INPUT_DEVICE_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_LAYOUT_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLED_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLED_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLED_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLED_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_DESTROY_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_SET_KEYMAP_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE_SINCE_VERSION
    , Generated.River.XkbConfigV1.rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE_SINCE_VERSION
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

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data Wl_message = Wl_message
  { name :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-util.h 179:14@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , signature :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @signature@

         __defined at:__ @wayland-util.h 181:14@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , types :: RIP.Ptr (PtrConst.PtrConst Wl_interface)
    {- ^ __C declaration:__ @types@

         __defined at:__ @wayland-util.h 183:30@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
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

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data Wl_interface = Wl_interface
  { name :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-util.h 234:14@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , version :: RIP.CInt
    {- ^ __C declaration:__ @version@

         __defined at:__ @wayland-util.h 236:6@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , method_count :: RIP.CInt
    {- ^ __C declaration:__ @method_count@

         __defined at:__ @wayland-util.h 238:6@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , methods :: PtrConst.PtrConst Wl_message
    {- ^ __C declaration:__ @methods@

         __defined at:__ @wayland-util.h 240:27@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , event_count :: RIP.CInt
    {- ^ __C declaration:__ @event_count@

         __defined at:__ @wayland-util.h 242:6@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , events :: PtrConst.PtrConst Wl_message
    {- ^ __C declaration:__ @events@

         __defined at:__ @wayland-util.h 244:27@

         __exported by:__ @river-xkb-config-v1-client-protocol.h@
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

  > page_river_xkb_config_v1 The river_xkb_config_v1 protocol

  configure xkbcommon keyboards

  > page_desc_river_xkb_config_v1 Description

  This protocol allow a client to set the xkbcommon keymap of individual keyboard input devices. It also allows switching between the layouts of a keymap and toggling capslock/numlock state.

  The key words "must", "must not", "required", "shall", "shall not", "should", "should not", "recommended", "may", and "optional" in this document are to be interpreted as described in IETF RFC 2119.

  > page_ifaces_river_xkb_config_v1 Interfaces

  -

  > page_iface_river_xkb_config_v1 - xkb config global interface

  -

  > page_iface_river_xkb_keymap_v1 - xkbcommon keymap

  -

  > page_iface_river_xkb_keyboard_v1 - xkbcommon keyboard device

  > page_copyright_river_xkb_config_v1 Copyright

  SPDX-FileCopyrightText: © 2026 Isaac Freund SPDX-License-Identifier: MIT

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

__C declaration:__ @struct river_input_device_v1@

__defined at:__ @river-xkb-config-v1-client-protocol.h 57:8@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data River_input_device_v1

{-| __C declaration:__ @struct river_xkb_config_v1@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 58:8@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data River_xkb_config_v1

{-| __C declaration:__ @struct river_xkb_keyboard_v1@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 59:8@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data River_xkb_keyboard_v1

{-| __C declaration:__ @struct river_xkb_keymap_v1@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 60:8@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data River_xkb_keymap_v1

{-| __C declaration:__ @enum river_xkb_config_v1_error@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 124:6@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
newtype River_xkb_config_v1_error = River_xkb_config_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_xkb_config_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_xkb_config_v1_error where

  readRaw =
    \ptr0 ->
          pure River_xkb_config_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_xkb_config_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_config_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_xkb_config_v1_error instance RIP.Storable River_xkb_config_v1_error

deriving via RIP.CUInt instance RIP.Prim River_xkb_config_v1_error

instance CEnum.CEnum River_xkb_config_v1_error where

  type CEnumZ River_xkb_config_v1_error = RIP.CUInt

  toCEnum = River_xkb_config_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "RIVER_XKB_CONFIG_V1_ERROR_INVALID_DESTROY")
                                   , (1, RIP.singleton "RIVER_XKB_CONFIG_V1_ERROR_INVALID_FORMAT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_xkb_config_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_xkb_config_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_xkb_config_v1_error where

  minDeclaredValue =
    RIVER_XKB_CONFIG_V1_ERROR_INVALID_DESTROY

  maxDeclaredValue =
    RIVER_XKB_CONFIG_V1_ERROR_INVALID_FORMAT

instance Show River_xkb_config_v1_error where

  showsPrec = CEnum.shows

instance Read River_xkb_config_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_xkb_config_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_xkb_config_v1_error "unwrap" where

  type CFieldType River_xkb_config_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_XKB_CONFIG_V1_ERROR_INVALID_DESTROY@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 125:2@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
pattern RIVER_XKB_CONFIG_V1_ERROR_INVALID_DESTROY :: River_xkb_config_v1_error
pattern RIVER_XKB_CONFIG_V1_ERROR_INVALID_DESTROY = River_xkb_config_v1_error 0

{-| __C declaration:__ @RIVER_XKB_CONFIG_V1_ERROR_INVALID_FORMAT@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 126:2@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
pattern RIVER_XKB_CONFIG_V1_ERROR_INVALID_FORMAT :: River_xkb_config_v1_error
pattern RIVER_XKB_CONFIG_V1_ERROR_INVALID_FORMAT = River_xkb_config_v1_error 1

{-| __C declaration:__ @enum river_xkb_config_v1_keymap_format@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 132:6@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
newtype River_xkb_config_v1_keymap_format = River_xkb_config_v1_keymap_format
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_xkb_config_v1_keymap_format where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_xkb_config_v1_keymap_format where

  readRaw =
    \ptr0 ->
          pure River_xkb_config_v1_keymap_format
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_xkb_config_v1_keymap_format where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_config_v1_keymap_format unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_xkb_config_v1_keymap_format instance RIP.Storable River_xkb_config_v1_keymap_format

deriving via RIP.CUInt instance RIP.Prim River_xkb_config_v1_keymap_format

instance CEnum.CEnum River_xkb_config_v1_keymap_format where

  type CEnumZ River_xkb_config_v1_keymap_format =
    RIP.CUInt

  toCEnum = River_xkb_config_v1_keymap_format

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1")
                                   , (2, RIP.singleton "RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V2")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_xkb_config_v1_keymap_format"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_xkb_config_v1_keymap_format"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_xkb_config_v1_keymap_format where

  minDeclaredValue =
    RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1

  maxDeclaredValue =
    RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V2

instance Show River_xkb_config_v1_keymap_format where

  showsPrec = CEnum.shows

instance Read River_xkb_config_v1_keymap_format where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_xkb_config_v1_keymap_format) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_xkb_config_v1_keymap_format "unwrap" where

  type CFieldType River_xkb_config_v1_keymap_format "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| XKB_KEYMAP_FORMAT_TEXT_V1

__C declaration:__ @RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1@

__defined at:__ @river-xkb-config-v1-client-protocol.h 136:2@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
pattern RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1 :: River_xkb_config_v1_keymap_format
pattern RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V1 = River_xkb_config_v1_keymap_format 1

{-| XKB_KEYMAP_FORMAT_TEXT_V2

__C declaration:__ @RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V2@

__defined at:__ @river-xkb-config-v1-client-protocol.h 140:2@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
pattern RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V2 :: River_xkb_config_v1_keymap_format
pattern RIVER_XKB_CONFIG_V1_KEYMAP_FORMAT_TEXT_V2 = River_xkb_config_v1_keymap_format 2

{-|

  > iface_river_xkb_config_v1

  > river_xkb_config_v1_listener

__C declaration:__ @struct river_xkb_config_v1_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 148:8@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data River_xkb_config_v1_listener = River_xkb_config_v1_listener
  { finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ())
    {- ^ the server has finished with the object

       This event indicates that the server will send no further events on this object. The client should destroy the object. See river_xkb_config_v1.destroy for more information.

    __C declaration:__ @finished@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 156:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , xkb_keyboard :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
    {- ^ new xkb keyboard

       A new xkbcommon keyboard has been created. Not every river_input_device_v1 is necessarily an xkbcommon keyboard as well.

    __C declaration:__ @xkb_keyboard@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 165:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_xkb_config_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_xkb_config_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_xkb_config_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"xkb_keyboard") ptr0

instance Marshal.WriteRaw River_xkb_config_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_config_v1_listener finished2 xkb_keyboard3 ->
               HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished2
            >> HasCField.writeRaw (RIP.Proxy @"xkb_keyboard") ptr0 xkb_keyboard3

deriving via Marshal.EquivStorable River_xkb_config_v1_listener instance RIP.Storable River_xkb_config_v1_listener

instance HasCField.HasCField River_xkb_config_v1_listener "finished" where

  type CFieldType River_xkb_config_v1_listener "finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ()))
         ) => RIP.HasField "finished" (RIP.Ptr River_xkb_config_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

instance HasCField.HasCField River_xkb_config_v1_listener "xkb_keyboard" where

  type CFieldType River_xkb_config_v1_listener "xkb_keyboard" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
         ) => RIP.HasField "xkb_keyboard" (RIP.Ptr River_xkb_config_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"xkb_keyboard")

{-| __C declaration:__ @macro RIVER_XKB_CONFIG_V1_STOP@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 181:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_CONFIG_V1_STOP :: RIP.CInt
rIVER_XKB_CONFIG_V1_STOP = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_CONFIG_V1_DESTROY@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 182:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_CONFIG_V1_DESTROY :: RIP.CInt
rIVER_XKB_CONFIG_V1_DESTROY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_CONFIG_V1_CREATE_KEYMAP@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 183:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_CONFIG_V1_CREATE_KEYMAP :: RIP.CInt
rIVER_XKB_CONFIG_V1_CREATE_KEYMAP = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_CONFIG_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 188:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_CONFIG_V1_FINISHED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_CONFIG_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_CONFIG_V1_XKB_KEYBOARD_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 192:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_CONFIG_V1_XKB_KEYBOARD_SINCE_VERSION :: RIP.CInt
rIVER_XKB_CONFIG_V1_XKB_KEYBOARD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_CONFIG_V1_STOP_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 197:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_CONFIG_V1_STOP_SINCE_VERSION :: RIP.CInt
rIVER_XKB_CONFIG_V1_STOP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_CONFIG_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 201:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_CONFIG_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_XKB_CONFIG_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_CONFIG_V1_CREATE_KEYMAP_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 205:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_CONFIG_V1_CREATE_KEYMAP_SINCE_VERSION :: RIP.CInt
rIVER_XKB_CONFIG_V1_CREATE_KEYMAP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_river_xkb_keymap_v1

  > river_xkb_keymap_v1_listener

__C declaration:__ @struct river_xkb_keymap_v1_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 289:8@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data River_xkb_keymap_v1_listener = River_xkb_keymap_v1_listener
  { success :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ())
    {- ^ keymap creation succeeded

       The keymap object was successfully created and may be used with the river_xkb_keyboard_v1.set_keymap request.

    __C declaration:__ @success@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 296:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , failure :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ keymap creation failed

       The compositor failed to create a keymap from the given parameters.

       It is a protocol error to use this keymap object with river_xkb_keyboard_v1.set_keymap.

    __C declaration:__ @failure@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 307:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_xkb_keymap_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_xkb_keymap_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_xkb_keymap_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"success") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"failure") ptr0

instance Marshal.WriteRaw River_xkb_keymap_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_keymap_v1_listener success2 failure3 ->
               HasCField.writeRaw (RIP.Proxy @"success") ptr0 success2
            >> HasCField.writeRaw (RIP.Proxy @"failure") ptr0 failure3

deriving via Marshal.EquivStorable River_xkb_keymap_v1_listener instance RIP.Storable River_xkb_keymap_v1_listener

instance HasCField.HasCField River_xkb_keymap_v1_listener "success" where

  type CFieldType River_xkb_keymap_v1_listener "success" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ()))
         ) => RIP.HasField "success" (RIP.Ptr River_xkb_keymap_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"success")

instance HasCField.HasCField River_xkb_keymap_v1_listener "failure" where

  type CFieldType River_xkb_keymap_v1_listener "failure" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "failure" (RIP.Ptr River_xkb_keymap_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"failure")

{-| __C declaration:__ @macro RIVER_XKB_KEYMAP_V1_DESTROY@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 323:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYMAP_V1_DESTROY :: RIP.CInt
rIVER_XKB_KEYMAP_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYMAP_V1_SUCCESS_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 328:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYMAP_V1_SUCCESS_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYMAP_V1_SUCCESS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYMAP_V1_FAILURE_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 332:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYMAP_V1_FAILURE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYMAP_V1_FAILURE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYMAP_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 337:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYMAP_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYMAP_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum river_xkb_keyboard_v1_error@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 374:6@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
newtype River_xkb_keyboard_v1_error = River_xkb_keyboard_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_xkb_keyboard_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_xkb_keyboard_v1_error where

  readRaw =
    \ptr0 ->
          pure River_xkb_keyboard_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_xkb_keyboard_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_keyboard_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_xkb_keyboard_v1_error instance RIP.Storable River_xkb_keyboard_v1_error

deriving via RIP.CUInt instance RIP.Prim River_xkb_keyboard_v1_error

instance CEnum.CEnum River_xkb_keyboard_v1_error where

  type CEnumZ River_xkb_keyboard_v1_error = RIP.CUInt

  toCEnum = River_xkb_keyboard_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "RIVER_XKB_KEYBOARD_V1_ERROR_INVALID_KEYMAP")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_xkb_keyboard_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_xkb_keyboard_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_xkb_keyboard_v1_error where

  minDeclaredValue =
    RIVER_XKB_KEYBOARD_V1_ERROR_INVALID_KEYMAP

  maxDeclaredValue =
    RIVER_XKB_KEYBOARD_V1_ERROR_INVALID_KEYMAP

instance Show River_xkb_keyboard_v1_error where

  showsPrec = CEnum.shows

instance Read River_xkb_keyboard_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_xkb_keyboard_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_xkb_keyboard_v1_error "unwrap" where

  type CFieldType River_xkb_keyboard_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @RIVER_XKB_KEYBOARD_V1_ERROR_INVALID_KEYMAP@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 375:2@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
pattern RIVER_XKB_KEYBOARD_V1_ERROR_INVALID_KEYMAP :: River_xkb_keyboard_v1_error
pattern RIVER_XKB_KEYBOARD_V1_ERROR_INVALID_KEYMAP = River_xkb_keyboard_v1_error 0

{-|

  > iface_river_xkb_keyboard_v1

  > river_xkb_keyboard_v1_listener

__C declaration:__ @struct river_xkb_keyboard_v1_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 383:8@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
data River_xkb_keyboard_v1_listener = River_xkb_keyboard_v1_listener
  { removed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
    {- ^ the xkb keyboard is removed

       This event indicates that the xkb keyboard has been removed.

       The server will send no further events on this object and ignore any request (other than river_xkb_keyboard_v1.destroy) made after this event is sent. The client should destroy this object with the river_xkb_keyboard_v1.destroy request to free up resources.

    __C declaration:__ @removed@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 395:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , input_device :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
    {- ^ corresponding river input device

       The river_input_device_v1 corresponding to this xkb keyboard. This event will always be the first event sent on the river_xkb_keyboard_v1 object, and it will be sent exactly once.

    __C declaration:__ @input_device@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 404:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , layout :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ currently active layout

       The currently active layout index and name. The name arg may be null if the active layout does not have a name.

       This event is sent once when the river_xkb_keyboard_v1 is created and again whenever the layout changes.

    __C declaration:__ @layout@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 416:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , capslock_enabled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
    {- ^ capslock is currently enabled

       Capslock is currently enabled for the keyboard.

       This event is sent once when the river_xkb_keyboard_v1 is created and again whenever the capslock state changes.

    __C declaration:__ @capslock_enabled@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 428:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , capslock_disabled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
    {- ^ capslock is currently disabled

       Capslock is currently disabled for the keyboard.

       This event is sent once when the river_xkb_keyboard_v1 is created and again whenever the capslock state changes.

    __C declaration:__ @capslock_disabled@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 438:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , numlock_enabled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
    {- ^ numlock is currently enabled

       Numlock is currently enabled for the keyboard.

       This event is sent once when the river_xkb_keyboard_v1 is created and again whenever the numlock state changes.

    __C declaration:__ @numlock_enabled@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 448:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  , numlock_disabled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
    {- ^ numlock is currently disabled

       Numlock is currently disabled for the keyboard.

       This event is sent once when the river_xkb_keyboard_v1 is created and again whenever the numlock state changes.

    __C declaration:__ @numlock_disabled@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 458:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_xkb_keyboard_v1_listener where

  staticSizeOf = \_ -> (56 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_xkb_keyboard_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_xkb_keyboard_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"removed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"input_device") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"layout") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"capslock_enabled") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"capslock_disabled") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"numlock_enabled") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"numlock_disabled") ptr0

instance Marshal.WriteRaw River_xkb_keyboard_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_xkb_keyboard_v1_listener
            removed2
            input_device3
            layout4
            capslock_enabled5
            capslock_disabled6
            numlock_enabled7
            numlock_disabled8 ->
                 HasCField.writeRaw (RIP.Proxy @"removed") ptr0 removed2
              >> HasCField.writeRaw (RIP.Proxy @"input_device") ptr0 input_device3
              >> HasCField.writeRaw (RIP.Proxy @"layout") ptr0 layout4
              >> HasCField.writeRaw (RIP.Proxy @"capslock_enabled") ptr0 capslock_enabled5
              >> HasCField.writeRaw (RIP.Proxy @"capslock_disabled") ptr0 capslock_disabled6
              >> HasCField.writeRaw (RIP.Proxy @"numlock_enabled") ptr0 numlock_enabled7
              >> HasCField.writeRaw (RIP.Proxy @"numlock_disabled") ptr0 numlock_disabled8

deriving via Marshal.EquivStorable River_xkb_keyboard_v1_listener instance RIP.Storable River_xkb_keyboard_v1_listener

instance HasCField.HasCField River_xkb_keyboard_v1_listener "removed" where

  type CFieldType River_xkb_keyboard_v1_listener "removed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
         ) => RIP.HasField "removed" (RIP.Ptr River_xkb_keyboard_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"removed")

instance HasCField.HasCField River_xkb_keyboard_v1_listener "input_device" where

  type CFieldType River_xkb_keyboard_v1_listener "input_device" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()))
         ) => RIP.HasField "input_device" (RIP.Ptr River_xkb_keyboard_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"input_device")

instance HasCField.HasCField River_xkb_keyboard_v1_listener "layout" where

  type CFieldType River_xkb_keyboard_v1_listener "layout" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "layout" (RIP.Ptr River_xkb_keyboard_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"layout")

instance HasCField.HasCField River_xkb_keyboard_v1_listener "capslock_enabled" where

  type CFieldType River_xkb_keyboard_v1_listener "capslock_enabled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
         ) => RIP.HasField "capslock_enabled" (RIP.Ptr River_xkb_keyboard_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"capslock_enabled")

instance HasCField.HasCField River_xkb_keyboard_v1_listener "capslock_disabled" where

  type CFieldType River_xkb_keyboard_v1_listener "capslock_disabled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
         ) => RIP.HasField "capslock_disabled" (RIP.Ptr River_xkb_keyboard_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"capslock_disabled")

instance HasCField.HasCField River_xkb_keyboard_v1_listener "numlock_enabled" where

  type CFieldType River_xkb_keyboard_v1_listener "numlock_enabled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
         ) => RIP.HasField "numlock_enabled" (RIP.Ptr River_xkb_keyboard_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"numlock_enabled")

instance HasCField.HasCField River_xkb_keyboard_v1_listener "numlock_disabled" where

  type CFieldType River_xkb_keyboard_v1_listener "numlock_disabled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
         ) => RIP.HasField "numlock_disabled" (RIP.Ptr River_xkb_keyboard_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"numlock_disabled")

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_DESTROY@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 473:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_DESTROY :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_SET_KEYMAP@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 474:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_SET_KEYMAP :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_SET_KEYMAP = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 475:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 476:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 477:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 478:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 479:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE =
  (6 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 480:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE =
  (7 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_REMOVED_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 485:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_REMOVED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_REMOVED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_INPUT_DEVICE_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 489:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_INPUT_DEVICE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_INPUT_DEVICE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_LAYOUT_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 493:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_LAYOUT_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_LAYOUT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLED_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 497:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLED_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 501:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLED_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 505:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLED_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 509:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLED_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 514:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_SET_KEYMAP_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 518:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_SET_KEYMAP_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_SET_KEYMAP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 522:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_INDEX_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 526:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_SET_LAYOUT_BY_NAME_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 530:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_ENABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 534:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_CAPSLOCK_DISABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 538:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_NUMLOCK_ENABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE_SINCE_VERSION@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 542:9@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE_SINCE_VERSION :: RIP.CInt
rIVER_XKB_KEYBOARD_V1_NUMLOCK_DISABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_0849f5454b7c5dc0_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ())@
hs_bindgen_0849f5454b7c5dc0 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ()))
hs_bindgen_0849f5454b7c5dc0 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0849f5454b7c5dc0_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_c906d31a208a4ab9_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ())@
hs_bindgen_c906d31a208a4ab9 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ()
hs_bindgen_c906d31a208a4ab9 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_c906d31a208a4ab9_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ()) where

  toFunPtr = hs_bindgen_0849f5454b7c5dc0

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_c906d31a208a4ab9

foreign import ccall safe "wrapper" hs_bindgen_097d1c85d5fab570_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())@
hs_bindgen_097d1c85d5fab570 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_097d1c85d5fab570 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_097d1c85d5fab570_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_4b4de0df2a0e9263_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())@
hs_bindgen_4b4de0df2a0e9263 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()
hs_bindgen_4b4de0df2a0e9263 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_4b4de0df2a0e9263_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()) where

  toFunPtr = hs_bindgen_097d1c85d5fab570

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_4b4de0df2a0e9263

foreign import ccall safe "wrapper" hs_bindgen_b443124a02247f7d_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())@
hs_bindgen_b443124a02247f7d ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_b443124a02247f7d =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_b443124a02247f7d_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_a703ad695b8c4fc7_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())@
hs_bindgen_a703ad695b8c4fc7 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()
hs_bindgen_a703ad695b8c4fc7 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_a703ad695b8c4fc7_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()) where

  toFunPtr = hs_bindgen_b443124a02247f7d

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_a703ad695b8c4fc7

foreign import ccall safe "wrapper" hs_bindgen_f6a71c50ef08d243_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())@
hs_bindgen_f6a71c50ef08d243 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()))
hs_bindgen_f6a71c50ef08d243 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f6a71c50ef08d243_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_1df7fa1cb2586f56_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())@
hs_bindgen_1df7fa1cb2586f56 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()
hs_bindgen_1df7fa1cb2586f56 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_1df7fa1cb2586f56_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()) where

  toFunPtr = hs_bindgen_f6a71c50ef08d243

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_input_device_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_1df7fa1cb2586f56

foreign import ccall safe "wrapper" hs_bindgen_d30132c9b6d4f2d2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_d30132c9b6d4f2d2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_d30132c9b6d4f2d2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d30132c9b6d4f2d2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_86668cf2d5f92b0b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_86668cf2d5f92b0b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_86668cf2d5f92b0b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_86668cf2d5f92b0b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_d30132c9b6d4f2d2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_86668cf2d5f92b0b

foreign import ccall safe "wrapper" hs_bindgen_ddbc1faed84e42c6_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ())@
hs_bindgen_ddbc1faed84e42c6 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ()))
hs_bindgen_ddbc1faed84e42c6 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ddbc1faed84e42c6_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_50813d4af24fb55d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ())@
hs_bindgen_50813d4af24fb55d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ()
hs_bindgen_50813d4af24fb55d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_50813d4af24fb55d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ()) where

  toFunPtr = hs_bindgen_ddbc1faed84e42c6

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_50813d4af24fb55d

foreign import ccall safe "wrapper" hs_bindgen_beb085141a87661e_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_beb085141a87661e ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_beb085141a87661e =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_beb085141a87661e_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_a975671e40584a28_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_a975671e40584a28 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_a975671e40584a28 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_a975671e40584a28_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_beb085141a87661e

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_a975671e40584a28

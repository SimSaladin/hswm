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

module Generated.River.LayoutShellV1
    ( Generated.River.LayoutShellV1.River_layer_shell_output_v1
    , Generated.River.LayoutShellV1.River_layer_shell_seat_v1
    , Generated.River.LayoutShellV1.River_layer_shell_v1
    , Generated.River.LayoutShellV1.River_output_v1
    , Generated.River.LayoutShellV1.River_seat_v1
    , Generated.River.LayoutShellV1.River_layer_shell_v1_error(..)
    , pattern Generated.River.LayoutShellV1.RIVER_LAYER_SHELL_V1_ERROR_OBJECT_ALREADY_CREATED
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_V1_DESTROY
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_V1_GET_OUTPUT
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_V1_GET_SEAT
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_V1_DESTROY_SINCE_VERSION
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_V1_GET_OUTPUT_SINCE_VERSION
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_V1_GET_SEAT_SINCE_VERSION
    , Generated.River.LayoutShellV1.River_layer_shell_output_v1_listener(..)
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_OUTPUT_V1_DESTROY
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_OUTPUT_V1_SET_DEFAULT
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_OUTPUT_V1_NON_EXCLUSIVE_AREA_SINCE_VERSION
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_OUTPUT_V1_DESTROY_SINCE_VERSION
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_OUTPUT_V1_SET_DEFAULT_SINCE_VERSION
    , Generated.River.LayoutShellV1.River_layer_shell_seat_v1_listener(..)
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_SEAT_V1_DESTROY
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_SEAT_V1_FOCUS_EXCLUSIVE_SINCE_VERSION
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_SEAT_V1_FOCUS_NON_EXCLUSIVE_SINCE_VERSION
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_SEAT_V1_FOCUS_NONE_SINCE_VERSION
    , Generated.River.LayoutShellV1.rIVER_LAYER_SHELL_SEAT_V1_DESTROY_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-|

  > page_river_layer_shell_v1 The river_layer_shell_v1 protocol

  optional layer shell support

  > page_desc_river_layer_shell_v1 Description

  This protocol allows the river-window-management-v1 window manager to support the wlr-layer-shell-unstable-v1 protocol.

  The key words "must", "must not", "required", "shall", "shall not", "should", "should not", "recommended", "may", and "optional" in this document are to be interpreted as described in IETF RFC 2119.

  > page_ifaces_river_layer_shell_v1 Interfaces

  -

  > page_iface_river_layer_shell_v1 - river layer shell global interface

  -

  > page_iface_river_layer_shell_output_v1 - layer shell output state

  -

  > page_iface_river_layer_shell_seat_v1 - layer shell seat state

  > page_copyright_river_layer_shell_v1 Copyright

  SPDX-FileCopyrightText: © 2025 Isaac Freund SPDX-License-Identifier: MIT

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

__C declaration:__ @struct river_layer_shell_output_v1@

__defined at:__ @river-layer-shell-v1-client-protocol.h 56:8@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
data River_layer_shell_output_v1

{-| __C declaration:__ @struct river_layer_shell_seat_v1@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 57:8@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
data River_layer_shell_seat_v1

{-| __C declaration:__ @struct river_layer_shell_v1@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 58:8@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
data River_layer_shell_v1

{-| __C declaration:__ @struct river_output_v1@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 59:8@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
data River_output_v1

{-| __C declaration:__ @struct river_seat_v1@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 60:8@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
data River_seat_v1

{-| __C declaration:__ @enum river_layer_shell_v1_error@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 136:6@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
newtype River_layer_shell_v1_error = River_layer_shell_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize River_layer_shell_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw River_layer_shell_v1_error where

  readRaw =
    \ptr0 ->
          pure River_layer_shell_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw River_layer_shell_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_layer_shell_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable River_layer_shell_v1_error instance RIP.Storable River_layer_shell_v1_error

deriving via RIP.CUInt instance RIP.Prim River_layer_shell_v1_error

instance CEnum.CEnum River_layer_shell_v1_error where

  type CEnumZ River_layer_shell_v1_error = RIP.CUInt

  toCEnum = River_layer_shell_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "RIVER_LAYER_SHELL_V1_ERROR_OBJECT_ALREADY_CREATED")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "River_layer_shell_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "River_layer_shell_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum River_layer_shell_v1_error where

  minDeclaredValue =
    RIVER_LAYER_SHELL_V1_ERROR_OBJECT_ALREADY_CREATED

  maxDeclaredValue =
    RIVER_LAYER_SHELL_V1_ERROR_OBJECT_ALREADY_CREATED

instance Show River_layer_shell_v1_error where

  showsPrec = CEnum.shows

instance Read River_layer_shell_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr River_layer_shell_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField River_layer_shell_v1_error "unwrap" where

  type CFieldType River_layer_shell_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| the layer_shell_output/seat object was already created.

__C declaration:__ @RIVER_LAYER_SHELL_V1_ERROR_OBJECT_ALREADY_CREATED@

__defined at:__ @river-layer-shell-v1-client-protocol.h 140:2@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
pattern RIVER_LAYER_SHELL_V1_ERROR_OBJECT_ALREADY_CREATED :: River_layer_shell_v1_error
pattern RIVER_LAYER_SHELL_V1_ERROR_OBJECT_ALREADY_CREATED = River_layer_shell_v1_error 0

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_V1_DESTROY@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 144:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_V1_DESTROY :: RIP.CInt
rIVER_LAYER_SHELL_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_V1_GET_OUTPUT@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 145:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_V1_GET_OUTPUT :: RIP.CInt
rIVER_LAYER_SHELL_V1_GET_OUTPUT = (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_V1_GET_SEAT@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 146:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_V1_GET_SEAT :: RIP.CInt
rIVER_LAYER_SHELL_V1_GET_SEAT = (2 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 152:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_V1_GET_OUTPUT_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 156:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_V1_GET_OUTPUT_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_V1_GET_OUTPUT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_V1_GET_SEAT_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 160:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_V1_GET_SEAT_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_V1_GET_SEAT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_river_layer_shell_output_v1

  > river_layer_shell_output_v1_listener

__C declaration:__ @struct river_layer_shell_output_v1_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 233:8@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
data River_layer_shell_output_v1_listener = River_layer_shell_output_v1_listener
  { non_exclusive_area :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ area left after subtracting exclusive zones

       This event indicates the area of the output remaining after subtracting the exclusive zones of layer surfaces. Exclusive zones are a hint, the window manager is free to ignore this area hint if it wishes.

       The x and y values are in the global coordinate space, not relative to the position of the output.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

       [__@x@ /(input)/__]: global x coordinate

       [__@y@ /(input)/__]: global y coordinate

       [__@width@ /(input)/__]: area width

       [__@height@ /(input)/__]: area height

    __C declaration:__ @non_exclusive_area@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 252:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_layer_shell_output_v1_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_layer_shell_output_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_layer_shell_output_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"non_exclusive_area") ptr0

instance Marshal.WriteRaw River_layer_shell_output_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_layer_shell_output_v1_listener non_exclusive_area2 ->
            HasCField.writeRaw (RIP.Proxy @"non_exclusive_area") ptr0 non_exclusive_area2

deriving via Marshal.EquivStorable River_layer_shell_output_v1_listener instance RIP.Storable River_layer_shell_output_v1_listener

instance HasCField.HasCField River_layer_shell_output_v1_listener "non_exclusive_area" where

  type CFieldType River_layer_shell_output_v1_listener "non_exclusive_area" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "non_exclusive_area" (RIP.Ptr River_layer_shell_output_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"non_exclusive_area")

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_OUTPUT_V1_DESTROY@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 271:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_OUTPUT_V1_DESTROY :: RIP.CInt
rIVER_LAYER_SHELL_OUTPUT_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_OUTPUT_V1_SET_DEFAULT@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 272:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_OUTPUT_V1_SET_DEFAULT :: RIP.CInt
rIVER_LAYER_SHELL_OUTPUT_V1_SET_DEFAULT =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_OUTPUT_V1_NON_EXCLUSIVE_AREA_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 277:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_OUTPUT_V1_NON_EXCLUSIVE_AREA_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_OUTPUT_V1_NON_EXCLUSIVE_AREA_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_OUTPUT_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 282:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_OUTPUT_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_OUTPUT_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_OUTPUT_V1_SET_DEFAULT_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 286:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_OUTPUT_V1_SET_DEFAULT_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_OUTPUT_V1_SET_DEFAULT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_river_layer_shell_seat_v1

  > river_layer_shell_seat_v1_listener

__C declaration:__ @struct river_layer_shell_seat_v1_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 348:8@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
data River_layer_shell_seat_v1_listener = River_layer_shell_seat_v1_listener
  { focus_exclusive :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())
    {- ^ layer shell surface has exclusive focus

       A layer shell surface will be given exclusive keyboard focus at the end of the manage sequence in which this event is sent. The window manager may want to update window decorations or similar to indicate that no window is focused.

       Until the focus_non_exclusive or focus_none event is sent, all window manager requests to change focus are ignored.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @focus_exclusive@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 363:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
    -}
  , focus_non_exclusive :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())
    {- ^ layer shell surface wants non-exclusive focus

       A layer shell surface will be given non-exclusive keyboard focus at the end of the manage sequence in which this event is sent. The window manager may want to update window decorations or similar to indicate that no window is focused.

       The window manager continues to control focus and may choose to focus a different window/shell surface at any time. If the window manager sets focus during the same manage sequence in which this event is sent, the layer surface will not be focused.

       If the layer surface with non-exclusive focus is closed or the window manager chooses to move focus away from the layer surface, a focus_none event will be sent in the next manage sequence.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @focus_non_exclusive@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 386:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
    -}
  , focus_none :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())
    {- ^ no layer shell surface has focus

       No layer shell surface will have keyboard focus at the end of the manage sequence in which this event is sent. The window manager may want to return focus to whichever window last had focus, for example.

       This event will be followed by a manage_start event after all other new state has been sent by the server.

    __C declaration:__ @focus_none@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 399:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize River_layer_shell_seat_v1_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw River_layer_shell_seat_v1_listener where

  readRaw =
    \ptr0 ->
          pure River_layer_shell_seat_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"focus_exclusive") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"focus_non_exclusive") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"focus_none") ptr0

instance Marshal.WriteRaw River_layer_shell_seat_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          River_layer_shell_seat_v1_listener
            focus_exclusive2
            focus_non_exclusive3
            focus_none4 ->
                 HasCField.writeRaw (RIP.Proxy @"focus_exclusive") ptr0 focus_exclusive2
              >> HasCField.writeRaw (RIP.Proxy @"focus_non_exclusive") ptr0 focus_non_exclusive3
              >> HasCField.writeRaw (RIP.Proxy @"focus_none") ptr0 focus_none4

deriving via Marshal.EquivStorable River_layer_shell_seat_v1_listener instance RIP.Storable River_layer_shell_seat_v1_listener

instance HasCField.HasCField River_layer_shell_seat_v1_listener "focus_exclusive" where

  type CFieldType River_layer_shell_seat_v1_listener "focus_exclusive" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ()))
         ) => RIP.HasField "focus_exclusive" (RIP.Ptr River_layer_shell_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"focus_exclusive")

instance HasCField.HasCField River_layer_shell_seat_v1_listener "focus_non_exclusive" where

  type CFieldType River_layer_shell_seat_v1_listener "focus_non_exclusive" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ()))
         ) => RIP.HasField "focus_non_exclusive" (RIP.Ptr River_layer_shell_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"focus_non_exclusive")

instance HasCField.HasCField River_layer_shell_seat_v1_listener "focus_none" where

  type CFieldType River_layer_shell_seat_v1_listener "focus_none" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ()))
         ) => RIP.HasField "focus_none" (RIP.Ptr River_layer_shell_seat_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"focus_none")

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_SEAT_V1_DESTROY@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 414:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_SEAT_V1_DESTROY :: RIP.CInt
rIVER_LAYER_SHELL_SEAT_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_SEAT_V1_FOCUS_EXCLUSIVE_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 419:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_SEAT_V1_FOCUS_EXCLUSIVE_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_SEAT_V1_FOCUS_EXCLUSIVE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_SEAT_V1_FOCUS_NON_EXCLUSIVE_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 423:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_SEAT_V1_FOCUS_NON_EXCLUSIVE_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_SEAT_V1_FOCUS_NON_EXCLUSIVE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_SEAT_V1_FOCUS_NONE_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 427:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_SEAT_V1_FOCUS_NONE_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_SEAT_V1_FOCUS_NONE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro RIVER_LAYER_SHELL_SEAT_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 432:9@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
rIVER_LAYER_SHELL_SEAT_V1_DESTROY_SINCE_VERSION :: RIP.CInt
rIVER_LAYER_SHELL_SEAT_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_1c86ba5c79011b2b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_1c86ba5c79011b2b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_1c86ba5c79011b2b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_1c86ba5c79011b2b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_a11f3c6cb62fabb7_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_a11f3c6cb62fabb7 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_a11f3c6cb62fabb7 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_a11f3c6cb62fabb7_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_1c86ba5c79011b2b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_output_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_a11f3c6cb62fabb7

foreign import ccall safe "wrapper" hs_bindgen_9d691eba045c6633_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())@
hs_bindgen_9d691eba045c6633 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ()))
hs_bindgen_9d691eba045c6633 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_9d691eba045c6633_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_82c477f42489d3eb_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())@
hs_bindgen_82c477f42489d3eb ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ()
hs_bindgen_82c477f42489d3eb =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_82c477f42489d3eb_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ()) where

  toFunPtr = hs_bindgen_9d691eba045c6633

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr River_layer_shell_seat_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_82c477f42489d3eb

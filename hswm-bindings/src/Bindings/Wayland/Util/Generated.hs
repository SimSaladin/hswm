{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
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

module Bindings.Wayland.Util.Generated
    ( Bindings.Wayland.Util.Generated.Wl_object
    , Bindings.Wayland.Util.Generated.wL_MAX_MESSAGE_SIZE
    , Bindings.Wayland.Util.Generated.Wl_message(..)
    , Bindings.Wayland.Util.Generated.Wl_interface(..)
    , Bindings.Wayland.Util.Generated.Wl_list(..)
    , Bindings.Wayland.Util.Generated.Wl_array(..)
    , Bindings.Wayland.Util.Generated.Wl_fixed_t(..)
    , Bindings.Wayland.Util.Generated.Wl_argument(..)
    , Bindings.Wayland.Util.Generated.get_wl_argument_i
    , Bindings.Wayland.Util.Generated.set_wl_argument_i
    , Bindings.Wayland.Util.Generated.get_wl_argument_u
    , Bindings.Wayland.Util.Generated.set_wl_argument_u
    , Bindings.Wayland.Util.Generated.get_wl_argument_f
    , Bindings.Wayland.Util.Generated.set_wl_argument_f
    , Bindings.Wayland.Util.Generated.get_wl_argument_s
    , Bindings.Wayland.Util.Generated.set_wl_argument_s
    , Bindings.Wayland.Util.Generated.get_wl_argument_o
    , Bindings.Wayland.Util.Generated.set_wl_argument_o
    , Bindings.Wayland.Util.Generated.get_wl_argument_n
    , Bindings.Wayland.Util.Generated.set_wl_argument_n
    , Bindings.Wayland.Util.Generated.get_wl_argument_a
    , Bindings.Wayland.Util.Generated.set_wl_argument_a
    , Bindings.Wayland.Util.Generated.get_wl_argument_h
    , Bindings.Wayland.Util.Generated.set_wl_argument_h
    , Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t_Aux(..)
    , Bindings.Wayland.Util.Generated.Wl_dispatcher_func_t(..)
    , Bindings.Wayland.Util.Generated.Wl_iterator_result(..)
    , pattern Bindings.Wayland.Util.Generated.WL_ITERATOR_STOP
    , pattern Bindings.Wayland.Util.Generated.WL_ITERATOR_CONTINUE
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-| __C declaration:__ @struct wl_object@

    __defined at:__ @wayland-util.h 91:8@

    __exported by:__ @wayland-util.h@
-}
data Wl_object

{-| The maximum size of a protocol message.

    If a message size exceeds this value, the connection will be dropped. Servers will send an invalid_method error before disconnecting.

    __C declaration:__ @macro WL_MAX_MESSAGE_SIZE@

    __defined at:__ @wayland-util.h 99:9@

    __exported by:__ @wayland-util.h@
-}
wL_MAX_MESSAGE_SIZE :: RIP.CInt
wL_MAX_MESSAGE_SIZE = (4096 :: RIP.CInt)

{-| Protocol message signature

    A 'Wl_message' describes the signature of an actual protocol message, such as a request or event, that adheres to the Wayland protocol wire format. The protocol implementation uses a 'Wl_message' within its demarshal machinery for decoding messages between a compositor and its clients. In a sense, a 'Wl_message' is to a protocol message like a class is to an object.

    The @@name@@ of a 'Wl_message' is the name of the corresponding protocol message.

    The @@signature@@ is an ordered list of symbols representing the data types of message arguments and, optionally, a protocol version and indicators for nullability. A leading integer in the @@signature@@ indicates the /since/ version of the protocol message. A @?@ preceding a data type symbol indicates that the following argument type is nullable. While it is a protocol violation to send messages with non-nullable arguments set to @NULL@ , event handlers in clients might still get called with non-nullable object arguments set to @NULL@ . This can happen when the client destroyed the object being used as argument on its side and an event referencing that object was sent before the server knew about its destruction. As this race cannot be prevented, clients should - as a general rule - program their event handlers such that they can handle object arguments declared non-nullable being @NULL@ gracefully.

    When no arguments accompany a message, @@signature@@ is an empty string.

    Symbols:

    * @i@ : int

    * @u@ : uint

    * @f@ : fixed

    * @s@ : string

    * @o@ : object

    * @n@ : new_id

    * @a@ : array

    * @h@ : fd

    * @?@ : following argument ( @o@ or @s@ ) is nullable

    While demarshaling primitive arguments is straightforward, when demarshaling messages containing @object@ or @new_id@ arguments, the protocol implementation often must determine the type of the object. The @@types@@ of a 'Wl_message' is an array of 'Wl_interface' references that correspond to @o@ and @n@ arguments in @@signature@@ , with @NULL@ placeholders for arguments with non-object types.

    Consider the protocol event wl_display @delete_id@ that has a single @uint@ argument. The 'Wl_message' is:

    @
    { "delete_id", "u", [NULL] }
    @

    Here, the message @@name@@ is @"delete_id"@ , the @@signature@@ is @"u"@ , and the argument @@types@@ is @[NULL]@ , indicating that the @uint@ argument has no corresponding 'Wl_interface' since it is a primitive argument.

    In contrast, consider a @wl_foo@ interface supporting protocol request @bar@ that has existed since version 2, and has two arguments: a @uint@ and an object of type @wl_baz_interface@ that may be @NULL@ . Such a @'Wl_message'@ might be:

    @
    { "bar", "2u?o", [NULL, &wl_baz_interface] }
    @

    Here, the message @@name@@ is @"bar"@ , and the @@signature@@ is @"2u?o"@ . Notice how the @2@ indicates the protocol version, the @u@ indicates the first argument type is @uint@ , and the @?o@ indicates that the second argument is an object that may be @NULL@ . Lastly, the argument @@types@@ array indicates that no 'Wl_interface' corresponds to the first argument, while the type @wl_baz_interface@ corresponds to the second argument.

    __See:__ 'Wl_argument'

    __See:__ 'Wl_interface'

    __See:__ [Wire Format](https://wayland.freedesktop.org/docs/html/ch04.html#sect-Protocol-Wire-Format)

    __C declaration:__ @struct wl_message@

    __defined at:__ @wayland-util.h 177:8@

    __exported by:__ @wayland-util.h@
-}
data Wl_message = Wl_message
  { name :: PtrConst.PtrConst RIP.CChar
    {- ^ Message name

         __C declaration:__ @name@

         __defined at:__ @wayland-util.h 179:14@

         __exported by:__ @wayland-util.h@
    -}
  , signature :: PtrConst.PtrConst RIP.CChar
    {- ^ Message signature

         __C declaration:__ @signature@

         __defined at:__ @wayland-util.h 181:14@

         __exported by:__ @wayland-util.h@
    -}
  , types :: RIP.Ptr (PtrConst.PtrConst Wl_interface)
    {- ^ Object argument interfaces

         __C declaration:__ @types@

         __defined at:__ @wayland-util.h 183:30@

         __exported by:__ @wayland-util.h@
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

instance ( ty ~ PtrConst.PtrConst RIP.CChar
         ) => RIP.HasField "name" (RIP.Ptr Wl_message) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField Wl_message "signature" where

  type CFieldType Wl_message "signature" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 8

instance ( ty ~ PtrConst.PtrConst RIP.CChar
         ) => RIP.HasField "signature" (RIP.Ptr Wl_message) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"signature")

instance HasCField.HasCField Wl_message "types" where

  type CFieldType Wl_message "types" =
    RIP.Ptr (PtrConst.PtrConst Wl_interface)

  offset# = \_ -> \_ -> 16

instance ( ty ~ RIP.Ptr (PtrConst.PtrConst Wl_interface)
         ) => RIP.HasField "types" (RIP.Ptr Wl_message) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"types")

{-| Protocol object interface

    A 'Wl_interface' describes the API of a protocol object defined in the Wayland protocol specification. The protocol implementation uses a 'Wl_interface' within its marshalling machinery for encoding client requests.

    The @@name@@ of a 'Wl_interface' is the name of the corresponding protocol interface, and @@version@@ represents the version of the interface. The members @@method_count@@ and @@event_count@@ represent the number of @@methods@@ (requests) and @@events@@ in the respective 'Wl_message' members.

    For example, consider a protocol interface @foo@ , marked as version @1@ , with two requests and one event.

    @
    <interface name="foo" version="1">
      <request name="a"></request>
      <request name="b"></request>
      <event name="c"></event>
    </interface>
    @

    Given two 'Wl_message' arrays @foo_requests@ and @foo_events@ , a 'Wl_interface' for @foo@ might be:

    @
    struct wl_interface foo_interface = {
            "foo", 1,
            2, foo_requests,
            1, foo_events
    };
    @

    __Note:__ The server side of the protocol may define interface /implementation types/ that incorporate the term @interface@ in their name. Take care to not confuse these server-side @struct@ s with a 'Wl_interface' variable whose name also ends in @interface@ . For example, while the server may define a type @struct wl_foo_interface@ , the client may define a @struct 'Wl_interface' wl_foo_interface@ .

    __See:__ 'Wl_message'

    __See:__ wl_proxy

    __See:__ [Interfaces](https://wayland.freedesktop.org/docs/html/ch04.html#sect-Protocol-Interfaces)

    __See:__ [Versioning](https://wayland.freedesktop.org/docs/html/ch04.html#sect-Protocol-Versioning)

    __C declaration:__ @struct wl_interface@

    __defined at:__ @wayland-util.h 232:8@

    __exported by:__ @wayland-util.h@
-}
data Wl_interface = Wl_interface
  { name :: PtrConst.PtrConst RIP.CChar
    {- ^ Interface name

         __C declaration:__ @name@

         __defined at:__ @wayland-util.h 234:14@

         __exported by:__ @wayland-util.h@
    -}
  , version :: RIP.CInt
    {- ^ Interface version

         __C declaration:__ @version@

         __defined at:__ @wayland-util.h 236:6@

         __exported by:__ @wayland-util.h@
    -}
  , method_count :: RIP.CInt
    {- ^ Number of methods (requests)

         __C declaration:__ @method_count@

         __defined at:__ @wayland-util.h 238:6@

         __exported by:__ @wayland-util.h@
    -}
  , methods :: PtrConst.PtrConst Wl_message
    {- ^ Method (request) signatures

         __C declaration:__ @methods@

         __defined at:__ @wayland-util.h 240:27@

         __exported by:__ @wayland-util.h@
    -}
  , event_count :: RIP.CInt
    {- ^ Number of events

         __C declaration:__ @event_count@

         __defined at:__ @wayland-util.h 242:6@

         __exported by:__ @wayland-util.h@
    -}
  , events :: PtrConst.PtrConst Wl_message
    {- ^ Event signatures

         __C declaration:__ @events@

         __defined at:__ @wayland-util.h 244:27@

         __exported by:__ @wayland-util.h@
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

instance ( ty ~ PtrConst.PtrConst RIP.CChar
         ) => RIP.HasField "name" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField Wl_interface "version" where

  type CFieldType Wl_interface "version" = RIP.CInt

  offset# = \_ -> \_ -> 8

instance ( ty ~ RIP.CInt
         ) => RIP.HasField "version" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"version")

instance HasCField.HasCField Wl_interface "method_count" where

  type CFieldType Wl_interface "method_count" =
    RIP.CInt

  offset# = \_ -> \_ -> 12

instance ( ty ~ RIP.CInt
         ) => RIP.HasField "method_count" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"method_count")

instance HasCField.HasCField Wl_interface "methods" where

  type CFieldType Wl_interface "methods" =
    PtrConst.PtrConst Wl_message

  offset# = \_ -> \_ -> 16

instance ( ty ~ PtrConst.PtrConst Wl_message
         ) => RIP.HasField "methods" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"methods")

instance HasCField.HasCField Wl_interface "event_count" where

  type CFieldType Wl_interface "event_count" = RIP.CInt

  offset# = \_ -> \_ -> 24

instance ( ty ~ RIP.CInt
         ) => RIP.HasField "event_count" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"event_count")

instance HasCField.HasCField Wl_interface "events" where

  type CFieldType Wl_interface "events" =
    PtrConst.PtrConst Wl_message

  offset# = \_ -> \_ -> 32

instance ( ty ~ PtrConst.PtrConst Wl_message
         ) => RIP.HasField "events" (RIP.Ptr Wl_interface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"events")

{-| __C declaration:__ @struct wl_list@

    __defined at:__ @wayland-util.h 304:8@

    __exported by:__ @wayland-util.h@
-}
data Wl_list = Wl_list
  { prev :: RIP.Ptr Wl_list
    {- ^ Previous list element

         __C declaration:__ @prev@

         __defined at:__ @wayland-util.h 306:18@

         __exported by:__ @wayland-util.h@
    -}
  , next :: RIP.Ptr Wl_list
    {- ^ Next list element

         __C declaration:__ @next@

         __defined at:__ @wayland-util.h 308:18@

         __exported by:__ @wayland-util.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_list where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_list where

  readRaw =
    \ptr0 ->
          pure Wl_list
      <*> HasCField.readRaw (RIP.Proxy @"prev") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"next") ptr0

instance Marshal.WriteRaw Wl_list where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_list prev2 next3 ->
               HasCField.writeRaw (RIP.Proxy @"prev") ptr0 prev2
            >> HasCField.writeRaw (RIP.Proxy @"next") ptr0 next3

deriving via Marshal.EquivStorable Wl_list instance RIP.Storable Wl_list

instance HasCField.HasCField Wl_list "prev" where

  type CFieldType Wl_list "prev" = RIP.Ptr Wl_list

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.Ptr Wl_list
         ) => RIP.HasField "prev" (RIP.Ptr Wl_list) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"prev")

instance HasCField.HasCField Wl_list "next" where

  type CFieldType Wl_list "next" = RIP.Ptr Wl_list

  offset# = \_ -> \_ -> 8

instance ( ty ~ RIP.Ptr Wl_list
         ) => RIP.HasField "next" (RIP.Ptr Wl_list) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"next")

{-| __C declaration:__ @struct wl_array@

    __defined at:__ @wayland-util.h 535:8@

    __exported by:__ @wayland-util.h@
-}
data Wl_array = Wl_array
  { size :: HsBindgen.Runtime.LibC.CSize
    {- ^ Array size

         __C declaration:__ @size@

         __defined at:__ @wayland-util.h 537:9@

         __exported by:__ @wayland-util.h@
    -}
  , alloc :: HsBindgen.Runtime.LibC.CSize
    {- ^ Allocated space

         __C declaration:__ @alloc@

         __defined at:__ @wayland-util.h 539:9@

         __exported by:__ @wayland-util.h@
    -}
  , data' :: RIP.Ptr RIP.Void
    {- ^ Array data

         __C declaration:__ @data@

         __defined at:__ @wayland-util.h 541:8@

         __exported by:__ @wayland-util.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_array where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_array where

  readRaw =
    \ptr0 ->
          pure Wl_array
      <*> HasCField.readRaw (RIP.Proxy @"size") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"alloc") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"data'") ptr0

instance Marshal.WriteRaw Wl_array where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_array size2 alloc3 data'4 ->
               HasCField.writeRaw (RIP.Proxy @"size") ptr0 size2
            >> HasCField.writeRaw (RIP.Proxy @"alloc") ptr0 alloc3
            >> HasCField.writeRaw (RIP.Proxy @"data'") ptr0 data'4

deriving via Marshal.EquivStorable Wl_array instance RIP.Storable Wl_array

instance HasCField.HasCField Wl_array "size" where

  type CFieldType Wl_array "size" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 0

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => RIP.HasField "size" (RIP.Ptr Wl_array) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"size")

instance HasCField.HasCField Wl_array "alloc" where

  type CFieldType Wl_array "alloc" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => RIP.HasField "alloc" (RIP.Ptr Wl_array) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"alloc")

instance HasCField.HasCField Wl_array "data'" where

  type CFieldType Wl_array "data'" = RIP.Ptr RIP.Void

  offset# = \_ -> \_ -> 16

instance ( ty ~ RIP.Ptr RIP.Void
         ) => RIP.HasField "data'" (RIP.Ptr Wl_array) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"data'")

{-| Fixed-point number

    A @'Wl_fixed_t'@ is a 24.8 signed fixed-point number with a sign bit, 23 bits of integer precision and 8 bits of decimal precision. Consider @'Wl_fixed_t'@ as an opaque struct with methods that facilitate conversion to and from @double@ and @int@ types.

    __C declaration:__ @wl_fixed_t@

    __defined at:__ @wayland-util.h 621:17@

    __exported by:__ @wayland-util.h@
-}
newtype Wl_fixed_t = Wl_fixed_t
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

instance ( ty ~ HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_fixed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_fixed_t "unwrap" where

  type CFieldType Wl_fixed_t "unwrap" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

{-| Protocol message argument data types

    This union represents all of the argument types in the Wayland protocol wire format. The protocol implementation uses 'Wl_argument' within its marshalling machinery for dispatching messages between a client and a compositor.

    __See:__ 'Wl_message'

    __See:__ 'Wl_interface'

    __See:__ [Wire Format](https://wayland.freedesktop.org/docs/html/ch04.html#sect-Protocol-wire-Format)

    __C declaration:__ @union wl_argument@

    __defined at:__ @wayland-util.h 686:7@

    __exported by:__ @wayland-util.h@
-}
newtype Wl_argument = Wl_argument
  { unwrap :: RIP.ByteArray
  }
  deriving stock (RIP.Generic)

deriving via RIP.SizedByteArray 8 8 instance Marshal.StaticSize Wl_argument

deriving via RIP.SizedByteArray 8 8 instance Marshal.ReadRaw Wl_argument

deriving via RIP.SizedByteArray 8 8 instance Marshal.WriteRaw Wl_argument

deriving via Marshal.EquivStorable Wl_argument instance RIP.Storable Wl_argument

{-| @int@

    __See:__ 'set_wl_argument_i'

    __C declaration:__ @i@

    __defined at:__ @wayland-util.h 687:10@

    __exported by:__ @wayland-util.h@
-}
get_wl_argument_i ::
     Wl_argument
  -> HsBindgen.Runtime.LibC.Int32
get_wl_argument_i = RIP.getUnionPayload

{-|

    __See:__ 'get_wl_argument_i'

-}
set_wl_argument_i ::
     HsBindgen.Runtime.LibC.Int32
  -> Wl_argument
set_wl_argument_i = RIP.setUnionPayload

{-| @uint@

    __See:__ 'set_wl_argument_u'

    __C declaration:__ @u@

    __defined at:__ @wayland-util.h 688:11@

    __exported by:__ @wayland-util.h@
-}
get_wl_argument_u ::
     Wl_argument
  -> HsBindgen.Runtime.LibC.Word32
get_wl_argument_u = RIP.getUnionPayload

{-|

    __See:__ 'get_wl_argument_u'

-}
set_wl_argument_u ::
     HsBindgen.Runtime.LibC.Word32
  -> Wl_argument
set_wl_argument_u = RIP.setUnionPayload

{-| @fixed@

    __See:__ 'set_wl_argument_f'

    __C declaration:__ @f@

    __defined at:__ @wayland-util.h 689:13@

    __exported by:__ @wayland-util.h@
-}
get_wl_argument_f ::
     Wl_argument
  -> Wl_fixed_t
get_wl_argument_f = RIP.getUnionPayload

{-|

    __See:__ 'get_wl_argument_f'

-}
set_wl_argument_f ::
     Wl_fixed_t
  -> Wl_argument
set_wl_argument_f = RIP.setUnionPayload

{-| @string@

    __See:__ 'set_wl_argument_s'

    __C declaration:__ @s@

    __defined at:__ @wayland-util.h 690:14@

    __exported by:__ @wayland-util.h@
-}
get_wl_argument_s ::
     Wl_argument
  -> PtrConst.PtrConst RIP.CChar
get_wl_argument_s = RIP.getUnionPayload

{-|

    __See:__ 'get_wl_argument_s'

-}
set_wl_argument_s ::
     PtrConst.PtrConst RIP.CChar
  -> Wl_argument
set_wl_argument_s = RIP.setUnionPayload

{-| @object@

    __See:__ 'set_wl_argument_o'

    __C declaration:__ @o@

    __defined at:__ @wayland-util.h 691:20@

    __exported by:__ @wayland-util.h@
-}
get_wl_argument_o ::
     Wl_argument
  -> RIP.Ptr Wl_object
get_wl_argument_o = RIP.getUnionPayload

{-|

    __See:__ 'get_wl_argument_o'

-}
set_wl_argument_o ::
     RIP.Ptr Wl_object
  -> Wl_argument
set_wl_argument_o = RIP.setUnionPayload

{-| @new_id@

    __See:__ 'set_wl_argument_n'

    __C declaration:__ @n@

    __defined at:__ @wayland-util.h 692:11@

    __exported by:__ @wayland-util.h@
-}
get_wl_argument_n ::
     Wl_argument
  -> HsBindgen.Runtime.LibC.Word32
get_wl_argument_n = RIP.getUnionPayload

{-|

    __See:__ 'get_wl_argument_n'

-}
set_wl_argument_n ::
     HsBindgen.Runtime.LibC.Word32
  -> Wl_argument
set_wl_argument_n = RIP.setUnionPayload

{-| @array@

    __See:__ 'set_wl_argument_a'

    __C declaration:__ @a@

    __defined at:__ @wayland-util.h 693:19@

    __exported by:__ @wayland-util.h@
-}
get_wl_argument_a ::
     Wl_argument
  -> RIP.Ptr Wl_array
get_wl_argument_a = RIP.getUnionPayload

{-|

    __See:__ 'get_wl_argument_a'

-}
set_wl_argument_a ::
     RIP.Ptr Wl_array
  -> Wl_argument
set_wl_argument_a = RIP.setUnionPayload

{-| @fd@

    __See:__ 'set_wl_argument_h'

    __C declaration:__ @h@

    __defined at:__ @wayland-util.h 694:10@

    __exported by:__ @wayland-util.h@
-}
get_wl_argument_h ::
     Wl_argument
  -> HsBindgen.Runtime.LibC.Int32
get_wl_argument_h = RIP.getUnionPayload

{-|

    __See:__ 'get_wl_argument_h'

-}
set_wl_argument_h ::
     HsBindgen.Runtime.LibC.Int32
  -> Wl_argument
set_wl_argument_h = RIP.setUnionPayload

instance HasCField.HasCField Wl_argument "i" where

  type CFieldType Wl_argument "i" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

instance ( ty ~ HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "i" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"i")

instance HasCField.HasCField Wl_argument "u" where

  type CFieldType Wl_argument "u" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "u" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"u")

instance HasCField.HasCField Wl_argument "f" where

  type CFieldType Wl_argument "f" = Wl_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ty ~ Wl_fixed_t
         ) => RIP.HasField "f" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"f")

instance HasCField.HasCField Wl_argument "s" where

  type CFieldType Wl_argument "s" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 0

instance ( ty ~ PtrConst.PtrConst RIP.CChar
         ) => RIP.HasField "s" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"s")

instance HasCField.HasCField Wl_argument "o" where

  type CFieldType Wl_argument "o" = RIP.Ptr Wl_object

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.Ptr Wl_object
         ) => RIP.HasField "o" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"o")

instance HasCField.HasCField Wl_argument "n" where

  type CFieldType Wl_argument "n" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "n" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"n")

instance HasCField.HasCField Wl_argument "a" where

  type CFieldType Wl_argument "a" = RIP.Ptr Wl_array

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.Ptr Wl_array
         ) => RIP.HasField "a" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"a")

instance HasCField.HasCField Wl_argument "h" where

  type CFieldType Wl_argument "h" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

instance ( ty ~ HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "h" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"h")

{-| Auxiliary type used by 'Wl_dispatcher_func_t'

    __C declaration:__ @wl_dispatcher_func_t@

    __defined at:__ @wayland-util.h 721:15@

    __exported by:__ @wayland-util.h@
-}
newtype Wl_dispatcher_func_t_Aux = Wl_dispatcher_func_t_Aux
  { unwrap :: PtrConst.PtrConst RIP.Void -> RIP.Ptr RIP.Void -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst Wl_message -> RIP.Ptr Wl_argument -> IO RIP.CInt
  }
  deriving stock (RIP.Generic)
  deriving newtype (RIP.HasFFIType)

foreign import ccall safe "wrapper" hs_bindgen_9d6bd6644ff7c6e3_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO RIP.Int32)
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO RIP.Int32))

-- __unique:__ @toWl_dispatcher_func_t_Aux@
hs_bindgen_9d6bd6644ff7c6e3 ::
     Wl_dispatcher_func_t_Aux
  -> IO (RIP.FunPtr Wl_dispatcher_func_t_Aux)
hs_bindgen_9d6bd6644ff7c6e3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_9d6bd6644ff7c6e3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_71d19b7e32a1b09a_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO RIP.Int32)
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO RIP.Int32

-- __unique:__ @fromWl_dispatcher_func_t_Aux@
hs_bindgen_71d19b7e32a1b09a ::
     RIP.FunPtr Wl_dispatcher_func_t_Aux
  -> Wl_dispatcher_func_t_Aux
hs_bindgen_71d19b7e32a1b09a =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_71d19b7e32a1b09a_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr Wl_dispatcher_func_t_Aux where

  toFunPtr = hs_bindgen_9d6bd6644ff7c6e3

instance RIP.FromFunPtr Wl_dispatcher_func_t_Aux where

  fromFunPtr = hs_bindgen_71d19b7e32a1b09a

instance ( ty ~ (PtrConst.PtrConst RIP.Void -> RIP.Ptr RIP.Void -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst Wl_message -> RIP.Ptr Wl_argument -> IO RIP.CInt)
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_dispatcher_func_t_Aux) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_dispatcher_func_t_Aux "unwrap" where

  type CFieldType Wl_dispatcher_func_t_Aux "unwrap" =
    PtrConst.PtrConst RIP.Void -> RIP.Ptr RIP.Void -> HsBindgen.Runtime.LibC.Word32 -> PtrConst.PtrConst Wl_message -> RIP.Ptr Wl_argument -> IO RIP.CInt

  offset# = \_ -> \_ -> 0

{-| Dispatcher function type alias

    A dispatcher is a function that handles the emitting of callbacks in client code. For programs directly using the C library, this is done by using libffi to call function pointers. When binding to languages other than C, dispatchers provide a way to abstract the function calling process to be friendlier to other function calling systems.

    A dispatcher takes five arguments: The first is the dispatcher-specific implementation associated with the target object. The second is the object upon which the callback is being invoked (either wl_proxy or wl_resource). The third and fourth arguments are the opcode and the 'Wl_message' corresponding to the callback. The final argument is an array of arguments received from the other process via the wire protocol.

    [__@user_data@__]: Dispatcher-specific implementation data

    [__@target@__]: Callback invocation target (wl_proxy or @wl_resource@ )

    [__@opcode@__]: Callback opcode

    [__@msg@__]: Callback message signature

    [__@args@__]: Array of received arguments

    __Returns:__ 0 on success, or -1 on failure

    __C declaration:__ @wl_dispatcher_func_t@

    __defined at:__ @wayland-util.h 721:15@

    __exported by:__ @wayland-util.h@
-}
newtype Wl_dispatcher_func_t = Wl_dispatcher_func_t
  { unwrap :: RIP.FunPtr Wl_dispatcher_func_t_Aux
  }
  deriving stock (Eq, RIP.Generic, Ord, Show)
  deriving newtype
    ( RIP.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ RIP.FunPtr Wl_dispatcher_func_t_Aux
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_dispatcher_func_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_dispatcher_func_t "unwrap" where

  type CFieldType Wl_dispatcher_func_t "unwrap" =
    RIP.FunPtr Wl_dispatcher_func_t_Aux

  offset# = \_ -> \_ -> 0

{-| Return value of an iterator function

    __See:__ wl_client_for_each_resource_iterator_func_t

    __See:__ wl_client_for_each_resource

    __C declaration:__ @enum wl_iterator_result@

    __defined at:__ @wayland-util.h 757:6@

    __exported by:__ @wayland-util.h@
-}
newtype Wl_iterator_result = Wl_iterator_result
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_iterator_result where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_iterator_result where

  readRaw =
    \ptr0 ->
          pure Wl_iterator_result
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_iterator_result where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_iterator_result unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_iterator_result instance RIP.Storable Wl_iterator_result

deriving via RIP.CUInt instance RIP.Prim Wl_iterator_result

instance CEnum.CEnum Wl_iterator_result where

  type CEnumZ Wl_iterator_result = RIP.CUInt

  toCEnum = Wl_iterator_result

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_ITERATOR_STOP")
                                   , (1, RIP.singleton "WL_ITERATOR_CONTINUE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_iterator_result"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_iterator_result"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_iterator_result where

  minDeclaredValue = WL_ITERATOR_STOP

  maxDeclaredValue = WL_ITERATOR_CONTINUE

instance Show Wl_iterator_result where

  showsPrec = CEnum.shows

instance Read Wl_iterator_result where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_iterator_result) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_iterator_result "unwrap" where

  type CFieldType Wl_iterator_result "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| Stop the iteration

    __C declaration:__ @WL_ITERATOR_STOP@

    __defined at:__ @wayland-util.h 759:2@

    __exported by:__ @wayland-util.h@
-}
pattern WL_ITERATOR_STOP :: Wl_iterator_result
pattern WL_ITERATOR_STOP = Wl_iterator_result 0

{-| Continue the iteration

    __C declaration:__ @WL_ITERATOR_CONTINUE@

    __defined at:__ @wayland-util.h 761:2@

    __exported by:__ @wayland-util.h@
-}
pattern WL_ITERATOR_CONTINUE :: Wl_iterator_result
pattern WL_ITERATOR_CONTINUE = Wl_iterator_result 1

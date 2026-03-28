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

module Generated.Wayland.Util
    ( Generated.Wayland.Util.Wl_object
    , Generated.Wayland.Util.wL_MAX_MESSAGE_SIZE
    , Generated.Wayland.Util.Wl_message(..)
    , Generated.Wayland.Util.Wl_interface(..)
    , Generated.Wayland.Util.Wl_list(..)
    , Generated.Wayland.Util.Wl_array(..)
    , Generated.Wayland.Util.Wl_fixed_t(..)
    , Generated.Wayland.Util.Wl_argument(..)
    , Generated.Wayland.Util.get_wl_argument_i
    , Generated.Wayland.Util.set_wl_argument_i
    , Generated.Wayland.Util.get_wl_argument_u
    , Generated.Wayland.Util.set_wl_argument_u
    , Generated.Wayland.Util.get_wl_argument_f
    , Generated.Wayland.Util.set_wl_argument_f
    , Generated.Wayland.Util.get_wl_argument_s
    , Generated.Wayland.Util.set_wl_argument_s
    , Generated.Wayland.Util.get_wl_argument_o
    , Generated.Wayland.Util.set_wl_argument_o
    , Generated.Wayland.Util.get_wl_argument_n
    , Generated.Wayland.Util.set_wl_argument_n
    , Generated.Wayland.Util.get_wl_argument_a
    , Generated.Wayland.Util.set_wl_argument_a
    , Generated.Wayland.Util.get_wl_argument_h
    , Generated.Wayland.Util.set_wl_argument_h
    , Generated.Wayland.Util.Wl_dispatcher_func_t_Aux(..)
    , Generated.Wayland.Util.Wl_dispatcher_func_t(..)
    , Generated.Wayland.Util.Wl_iterator_result(..)
    , pattern Generated.Wayland.Util.WL_ITERATOR_STOP
    , pattern Generated.Wayland.Util.WL_ITERATOR_CONTINUE
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

{-| __C declaration:__ @macro WL_MAX_MESSAGE_SIZE@

    __defined at:__ @wayland-util.h 99:9@

    __exported by:__ @wayland-util.h@
-}
wL_MAX_MESSAGE_SIZE :: RIP.CInt
wL_MAX_MESSAGE_SIZE = (4096 :: RIP.CInt)

{-| __C declaration:__ @struct wl_message@

    __defined at:__ @wayland-util.h 177:8@

    __exported by:__ @wayland-util.h@
-}
data Wl_message = Wl_message
  { name :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-util.h 179:14@

         __exported by:__ @wayland-util.h@
    -}
  , signature :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @signature@

         __defined at:__ @wayland-util.h 181:14@

         __exported by:__ @wayland-util.h@
    -}
  , types :: RIP.Ptr (PtrConst.PtrConst Wl_interface)
    {- ^ __C declaration:__ @types@

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

    __exported by:__ @wayland-util.h@
-}
data Wl_interface = Wl_interface
  { name :: PtrConst.PtrConst RIP.CChar
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-util.h 234:14@

         __exported by:__ @wayland-util.h@
    -}
  , version :: RIP.CInt
    {- ^ __C declaration:__ @version@

         __defined at:__ @wayland-util.h 236:6@

         __exported by:__ @wayland-util.h@
    -}
  , method_count :: RIP.CInt
    {- ^ __C declaration:__ @method_count@

         __defined at:__ @wayland-util.h 238:6@

         __exported by:__ @wayland-util.h@
    -}
  , methods :: PtrConst.PtrConst Wl_message
    {- ^ __C declaration:__ @methods@

         __defined at:__ @wayland-util.h 240:27@

         __exported by:__ @wayland-util.h@
    -}
  , event_count :: RIP.CInt
    {- ^ __C declaration:__ @event_count@

         __defined at:__ @wayland-util.h 242:6@

         __exported by:__ @wayland-util.h@
    -}
  , events :: PtrConst.PtrConst Wl_message
    {- ^ __C declaration:__ @events@

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

{-| __C declaration:__ @struct wl_list@

    __defined at:__ @wayland-util.h 304:8@

    __exported by:__ @wayland-util.h@
-}
data Wl_list = Wl_list
  { prev :: RIP.Ptr Wl_list
    {- ^ __C declaration:__ @prev@

         __defined at:__ @wayland-util.h 306:18@

         __exported by:__ @wayland-util.h@
    -}
  , next :: RIP.Ptr Wl_list
    {- ^ __C declaration:__ @next@

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

instance ( ((~) ty) (RIP.Ptr Wl_list)
         ) => RIP.HasField "prev" (RIP.Ptr Wl_list) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"prev")

instance HasCField.HasCField Wl_list "next" where

  type CFieldType Wl_list "next" = RIP.Ptr Wl_list

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.Ptr Wl_list)
         ) => RIP.HasField "next" (RIP.Ptr Wl_list) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"next")

{-| __C declaration:__ @struct wl_array@

    __defined at:__ @wayland-util.h 535:8@

    __exported by:__ @wayland-util.h@
-}
data Wl_array = Wl_array
  { size :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @size@

         __defined at:__ @wayland-util.h 537:9@

         __exported by:__ @wayland-util.h@
    -}
  , alloc :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @alloc@

         __defined at:__ @wayland-util.h 539:9@

         __exported by:__ @wayland-util.h@
    -}
  , data' :: RIP.Ptr RIP.Void
    {- ^ __C declaration:__ @data@

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

instance ( ((~) ty) HsBindgen.Runtime.LibC.CSize
         ) => RIP.HasField "size" (RIP.Ptr Wl_array) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"size")

instance HasCField.HasCField Wl_array "alloc" where

  type CFieldType Wl_array "alloc" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) HsBindgen.Runtime.LibC.CSize
         ) => RIP.HasField "alloc" (RIP.Ptr Wl_array) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"alloc")

instance HasCField.HasCField Wl_array "data'" where

  type CFieldType Wl_array "data'" = RIP.Ptr RIP.Void

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.Ptr RIP.Void)
         ) => RIP.HasField "data'" (RIP.Ptr Wl_array) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"data'")

{-| __C declaration:__ @wl_fixed_t@

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

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_fixed_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_fixed_t "unwrap" where

  type CFieldType Wl_fixed_t "unwrap" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @union wl_argument@

    __defined at:__ @wayland-util.h 686:7@

    __exported by:__ @wayland-util.h@
-}
newtype Wl_argument = Wl_argument
  { unwrap :: RIP.ByteArray
  }
  deriving stock (RIP.Generic)

deriving via (RIP.SizedByteArray 8) 8 instance Marshal.StaticSize Wl_argument

deriving via (RIP.SizedByteArray 8) 8 instance Marshal.ReadRaw Wl_argument

deriving via (RIP.SizedByteArray 8) 8 instance Marshal.WriteRaw Wl_argument

deriving via Marshal.EquivStorable Wl_argument instance RIP.Storable Wl_argument

{-|

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

{-|

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

{-|

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

{-|

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

{-|

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

{-|

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

{-|

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

{-|

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

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "i" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"i")

instance HasCField.HasCField Wl_argument "u" where

  type CFieldType Wl_argument "u" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "u" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"u")

instance HasCField.HasCField Wl_argument "f" where

  type CFieldType Wl_argument "f" = Wl_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Wl_fixed_t
         ) => RIP.HasField "f" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"f")

instance HasCField.HasCField Wl_argument "s" where

  type CFieldType Wl_argument "s" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (PtrConst.PtrConst RIP.CChar)
         ) => RIP.HasField "s" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"s")

instance HasCField.HasCField Wl_argument "o" where

  type CFieldType Wl_argument "o" = RIP.Ptr Wl_object

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.Ptr Wl_object)
         ) => RIP.HasField "o" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"o")

instance HasCField.HasCField Wl_argument "n" where

  type CFieldType Wl_argument "n" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "n" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"n")

instance HasCField.HasCField Wl_argument "a" where

  type CFieldType Wl_argument "a" = RIP.Ptr Wl_array

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.Ptr Wl_array)
         ) => RIP.HasField "a" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"a")

instance HasCField.HasCField Wl_argument "h" where

  type CFieldType Wl_argument "h" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "h" (RIP.Ptr Wl_argument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"h")

{-| Auxiliary type used by 'Wl_dispatcher_func_t'

__C declaration:__ @wl_dispatcher_func_t@

__defined at:__ @wayland-util.h 721:15@

__exported by:__ @wayland-util.h@
-}
newtype Wl_dispatcher_func_t_Aux = Wl_dispatcher_func_t_Aux
  { unwrap :: (PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Wl_message) -> (RIP.Ptr Wl_argument) -> IO RIP.CInt
  }
  deriving stock (RIP.Generic)
  deriving newtype (RIP.HasFFIType)

foreign import ccall safe "wrapper" hs_bindgen_9d6bd6644ff7c6e3_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.Int32)
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.Int32))

-- __unique:__ @toWl_dispatcher_func_t_Aux@
hs_bindgen_9d6bd6644ff7c6e3 ::
     Wl_dispatcher_func_t_Aux
  -> IO (RIP.FunPtr Wl_dispatcher_func_t_Aux)
hs_bindgen_9d6bd6644ff7c6e3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_9d6bd6644ff7c6e3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_71d19b7e32a1b09a_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.Int32)
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.Int32

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

instance ( ((~) ty) ((PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Wl_message) -> (RIP.Ptr Wl_argument) -> IO RIP.CInt)
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_dispatcher_func_t_Aux) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_dispatcher_func_t_Aux "unwrap" where

  type CFieldType Wl_dispatcher_func_t_Aux "unwrap" =
    (PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst Wl_message) -> (RIP.Ptr Wl_argument) -> IO RIP.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @wl_dispatcher_func_t@

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

instance ( ((~) ty) (RIP.FunPtr Wl_dispatcher_func_t_Aux)
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_dispatcher_func_t) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_dispatcher_func_t "unwrap" where

  type CFieldType Wl_dispatcher_func_t "unwrap" =
    RIP.FunPtr Wl_dispatcher_func_t_Aux

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @enum wl_iterator_result@

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

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_iterator_result) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_iterator_result "unwrap" where

  type CFieldType Wl_iterator_result "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_ITERATOR_STOP@

    __defined at:__ @wayland-util.h 759:2@

    __exported by:__ @wayland-util.h@
-}
pattern WL_ITERATOR_STOP :: Wl_iterator_result
pattern WL_ITERATOR_STOP = Wl_iterator_result 0

{-| __C declaration:__ @WL_ITERATOR_CONTINUE@

    __defined at:__ @wayland-util.h 761:2@

    __exported by:__ @wayland-util.h@
-}
pattern WL_ITERATOR_CONTINUE :: Wl_iterator_result
pattern WL_ITERATOR_CONTINUE = Wl_iterator_result 1

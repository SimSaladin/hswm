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
    ( Generated.Wayland.Util.WlObject
    , Generated.Wayland.Util.wL_MAX_MESSAGE_SIZE
    , Generated.Wayland.Util.WlMessage(..)
    , Generated.Wayland.Util.WlInterface(..)
    , Generated.Wayland.Util.WlList(..)
    , Generated.Wayland.Util.WlArray(..)
    , Generated.Wayland.Util.Wl_fixed_t(..)
    , Generated.Wayland.Util.WlArgument(..)
    , Generated.Wayland.Util.get_wlArgument_i
    , Generated.Wayland.Util.set_wlArgument_i
    , Generated.Wayland.Util.get_wlArgument_u
    , Generated.Wayland.Util.set_wlArgument_u
    , Generated.Wayland.Util.get_wlArgument_f
    , Generated.Wayland.Util.set_wlArgument_f
    , Generated.Wayland.Util.get_wlArgument_s
    , Generated.Wayland.Util.set_wlArgument_s
    , Generated.Wayland.Util.get_wlArgument_o
    , Generated.Wayland.Util.set_wlArgument_o
    , Generated.Wayland.Util.get_wlArgument_n
    , Generated.Wayland.Util.set_wlArgument_n
    , Generated.Wayland.Util.get_wlArgument_a
    , Generated.Wayland.Util.set_wlArgument_a
    , Generated.Wayland.Util.get_wlArgument_h
    , Generated.Wayland.Util.set_wlArgument_h
    , Generated.Wayland.Util.WlDispatcherFuncT_Aux(..)
    , Generated.Wayland.Util.WlDispatcherFuncT(..)
    , Generated.Wayland.Util.WlIteratorResult(..)
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
data WlObject

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
data WlMessage = WlMessage
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
  , types :: RIP.Ptr (PtrConst.PtrConst WlInterface)
    {- ^ __C declaration:__ @types@

         __defined at:__ @wayland-util.h 183:30@

         __exported by:__ @wayland-util.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlMessage where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlMessage where

  readRaw =
    \ptr0 ->
          pure WlMessage
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"signature") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"types") ptr0

instance Marshal.WriteRaw WlMessage where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlMessage name2 signature3 types4 ->
               HasCField.writeRaw (RIP.Proxy @"name") ptr0 name2
            >> HasCField.writeRaw (RIP.Proxy @"signature") ptr0 signature3
            >> HasCField.writeRaw (RIP.Proxy @"types") ptr0 types4

deriving via Marshal.EquivStorable WlMessage instance RIP.Storable WlMessage

instance HasCField.HasCField WlMessage "name" where

  type CFieldType WlMessage "name" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (PtrConst.PtrConst RIP.CChar)
         ) => RIP.HasField "name" (RIP.Ptr WlMessage) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField WlMessage "signature" where

  type CFieldType WlMessage "signature" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (PtrConst.PtrConst RIP.CChar)
         ) => RIP.HasField "signature" (RIP.Ptr WlMessage) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"signature")

instance HasCField.HasCField WlMessage "types" where

  type CFieldType WlMessage "types" =
    RIP.Ptr (PtrConst.PtrConst WlInterface)

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.Ptr (PtrConst.PtrConst WlInterface))
         ) => RIP.HasField "types" (RIP.Ptr WlMessage) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"types")

{-| __C declaration:__ @struct wl_interface@

    __defined at:__ @wayland-util.h 232:8@

    __exported by:__ @wayland-util.h@
-}
data WlInterface = WlInterface
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
  , methods :: PtrConst.PtrConst WlMessage
    {- ^ __C declaration:__ @methods@

         __defined at:__ @wayland-util.h 240:27@

         __exported by:__ @wayland-util.h@
    -}
  , event_count :: RIP.CInt
    {- ^ __C declaration:__ @event_count@

         __defined at:__ @wayland-util.h 242:6@

         __exported by:__ @wayland-util.h@
    -}
  , events :: PtrConst.PtrConst WlMessage
    {- ^ __C declaration:__ @events@

         __defined at:__ @wayland-util.h 244:27@

         __exported by:__ @wayland-util.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlInterface where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlInterface where

  readRaw =
    \ptr0 ->
          pure WlInterface
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"version") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"method_count") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"methods") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"event_count") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"events") ptr0

instance Marshal.WriteRaw WlInterface where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlInterface name2 version3 method_count4 methods5 event_count6 events7 ->
               HasCField.writeRaw (RIP.Proxy @"name") ptr0 name2
            >> HasCField.writeRaw (RIP.Proxy @"version") ptr0 version3
            >> HasCField.writeRaw (RIP.Proxy @"method_count") ptr0 method_count4
            >> HasCField.writeRaw (RIP.Proxy @"methods") ptr0 methods5
            >> HasCField.writeRaw (RIP.Proxy @"event_count") ptr0 event_count6
            >> HasCField.writeRaw (RIP.Proxy @"events") ptr0 events7

deriving via Marshal.EquivStorable WlInterface instance RIP.Storable WlInterface

instance HasCField.HasCField WlInterface "name" where

  type CFieldType WlInterface "name" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (PtrConst.PtrConst RIP.CChar)
         ) => RIP.HasField "name" (RIP.Ptr WlInterface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField WlInterface "version" where

  type CFieldType WlInterface "version" = RIP.CInt

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "version" (RIP.Ptr WlInterface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"version")

instance HasCField.HasCField WlInterface "method_count" where

  type CFieldType WlInterface "method_count" = RIP.CInt

  offset# = \_ -> \_ -> 12

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "method_count" (RIP.Ptr WlInterface) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"method_count")

instance HasCField.HasCField WlInterface "methods" where

  type CFieldType WlInterface "methods" =
    PtrConst.PtrConst WlMessage

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (PtrConst.PtrConst WlMessage)
         ) => RIP.HasField "methods" (RIP.Ptr WlInterface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"methods")

instance HasCField.HasCField WlInterface "event_count" where

  type CFieldType WlInterface "event_count" = RIP.CInt

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) RIP.CInt
         ) => RIP.HasField "event_count" (RIP.Ptr WlInterface) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"event_count")

instance HasCField.HasCField WlInterface "events" where

  type CFieldType WlInterface "events" =
    PtrConst.PtrConst WlMessage

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (PtrConst.PtrConst WlMessage)
         ) => RIP.HasField "events" (RIP.Ptr WlInterface) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"events")

{-| __C declaration:__ @struct wl_list@

    __defined at:__ @wayland-util.h 304:8@

    __exported by:__ @wayland-util.h@
-}
data WlList = WlList
  { prev :: RIP.Ptr WlList
    {- ^ __C declaration:__ @prev@

         __defined at:__ @wayland-util.h 306:18@

         __exported by:__ @wayland-util.h@
    -}
  , next :: RIP.Ptr WlList
    {- ^ __C declaration:__ @next@

         __defined at:__ @wayland-util.h 308:18@

         __exported by:__ @wayland-util.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlList where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlList where

  readRaw =
    \ptr0 ->
          pure WlList
      <*> HasCField.readRaw (RIP.Proxy @"prev") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"next") ptr0

instance Marshal.WriteRaw WlList where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlList prev2 next3 ->
               HasCField.writeRaw (RIP.Proxy @"prev") ptr0 prev2
            >> HasCField.writeRaw (RIP.Proxy @"next") ptr0 next3

deriving via Marshal.EquivStorable WlList instance RIP.Storable WlList

instance HasCField.HasCField WlList "prev" where

  type CFieldType WlList "prev" = RIP.Ptr WlList

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.Ptr WlList)
         ) => RIP.HasField "prev" (RIP.Ptr WlList) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"prev")

instance HasCField.HasCField WlList "next" where

  type CFieldType WlList "next" = RIP.Ptr WlList

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.Ptr WlList)
         ) => RIP.HasField "next" (RIP.Ptr WlList) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"next")

{-| __C declaration:__ @struct wl_array@

    __defined at:__ @wayland-util.h 535:8@

    __exported by:__ @wayland-util.h@
-}
data WlArray = WlArray
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

instance Marshal.StaticSize WlArray where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlArray where

  readRaw =
    \ptr0 ->
          pure WlArray
      <*> HasCField.readRaw (RIP.Proxy @"size") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"alloc") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"data'") ptr0

instance Marshal.WriteRaw WlArray where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlArray size2 alloc3 data'4 ->
               HasCField.writeRaw (RIP.Proxy @"size") ptr0 size2
            >> HasCField.writeRaw (RIP.Proxy @"alloc") ptr0 alloc3
            >> HasCField.writeRaw (RIP.Proxy @"data'") ptr0 data'4

deriving via Marshal.EquivStorable WlArray instance RIP.Storable WlArray

instance HasCField.HasCField WlArray "size" where

  type CFieldType WlArray "size" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.CSize
         ) => RIP.HasField "size" (RIP.Ptr WlArray) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"size")

instance HasCField.HasCField WlArray "alloc" where

  type CFieldType WlArray "alloc" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) HsBindgen.Runtime.LibC.CSize
         ) => RIP.HasField "alloc" (RIP.Ptr WlArray) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"alloc")

instance HasCField.HasCField WlArray "data'" where

  type CFieldType WlArray "data'" = RIP.Ptr RIP.Void

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.Ptr RIP.Void)
         ) => RIP.HasField "data'" (RIP.Ptr WlArray) (RIP.Ptr ty) where

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
newtype WlArgument = WlArgument
  { unwrap :: RIP.ByteArray
  }
  deriving stock (RIP.Generic)

deriving via (RIP.SizedByteArray 8) 8 instance Marshal.StaticSize WlArgument

deriving via (RIP.SizedByteArray 8) 8 instance Marshal.ReadRaw WlArgument

deriving via (RIP.SizedByteArray 8) 8 instance Marshal.WriteRaw WlArgument

deriving via Marshal.EquivStorable WlArgument instance RIP.Storable WlArgument

{-|

  __See:__ 'set_wlArgument_i'

__C declaration:__ @i@

__defined at:__ @wayland-util.h 687:10@

__exported by:__ @wayland-util.h@
-}
get_wlArgument_i ::
     WlArgument
  -> HsBindgen.Runtime.LibC.Int32
get_wlArgument_i = RIP.getUnionPayload

{-|

  __See:__ 'get_wlArgument_i'

-}
set_wlArgument_i ::
     HsBindgen.Runtime.LibC.Int32
  -> WlArgument
set_wlArgument_i = RIP.setUnionPayload

{-|

  __See:__ 'set_wlArgument_u'

__C declaration:__ @u@

__defined at:__ @wayland-util.h 688:11@

__exported by:__ @wayland-util.h@
-}
get_wlArgument_u ::
     WlArgument
  -> HsBindgen.Runtime.LibC.Word32
get_wlArgument_u = RIP.getUnionPayload

{-|

  __See:__ 'get_wlArgument_u'

-}
set_wlArgument_u ::
     HsBindgen.Runtime.LibC.Word32
  -> WlArgument
set_wlArgument_u = RIP.setUnionPayload

{-|

  __See:__ 'set_wlArgument_f'

__C declaration:__ @f@

__defined at:__ @wayland-util.h 689:13@

__exported by:__ @wayland-util.h@
-}
get_wlArgument_f ::
     WlArgument
  -> Wl_fixed_t
get_wlArgument_f = RIP.getUnionPayload

{-|

  __See:__ 'get_wlArgument_f'

-}
set_wlArgument_f ::
     Wl_fixed_t
  -> WlArgument
set_wlArgument_f = RIP.setUnionPayload

{-|

  __See:__ 'set_wlArgument_s'

__C declaration:__ @s@

__defined at:__ @wayland-util.h 690:14@

__exported by:__ @wayland-util.h@
-}
get_wlArgument_s ::
     WlArgument
  -> PtrConst.PtrConst RIP.CChar
get_wlArgument_s = RIP.getUnionPayload

{-|

  __See:__ 'get_wlArgument_s'

-}
set_wlArgument_s ::
     PtrConst.PtrConst RIP.CChar
  -> WlArgument
set_wlArgument_s = RIP.setUnionPayload

{-|

  __See:__ 'set_wlArgument_o'

__C declaration:__ @o@

__defined at:__ @wayland-util.h 691:20@

__exported by:__ @wayland-util.h@
-}
get_wlArgument_o ::
     WlArgument
  -> RIP.Ptr WlObject
get_wlArgument_o = RIP.getUnionPayload

{-|

  __See:__ 'get_wlArgument_o'

-}
set_wlArgument_o ::
     RIP.Ptr WlObject
  -> WlArgument
set_wlArgument_o = RIP.setUnionPayload

{-|

  __See:__ 'set_wlArgument_n'

__C declaration:__ @n@

__defined at:__ @wayland-util.h 692:11@

__exported by:__ @wayland-util.h@
-}
get_wlArgument_n ::
     WlArgument
  -> HsBindgen.Runtime.LibC.Word32
get_wlArgument_n = RIP.getUnionPayload

{-|

  __See:__ 'get_wlArgument_n'

-}
set_wlArgument_n ::
     HsBindgen.Runtime.LibC.Word32
  -> WlArgument
set_wlArgument_n = RIP.setUnionPayload

{-|

  __See:__ 'set_wlArgument_a'

__C declaration:__ @a@

__defined at:__ @wayland-util.h 693:19@

__exported by:__ @wayland-util.h@
-}
get_wlArgument_a ::
     WlArgument
  -> RIP.Ptr WlArray
get_wlArgument_a = RIP.getUnionPayload

{-|

  __See:__ 'get_wlArgument_a'

-}
set_wlArgument_a ::
     RIP.Ptr WlArray
  -> WlArgument
set_wlArgument_a = RIP.setUnionPayload

{-|

  __See:__ 'set_wlArgument_h'

__C declaration:__ @h@

__defined at:__ @wayland-util.h 694:10@

__exported by:__ @wayland-util.h@
-}
get_wlArgument_h ::
     WlArgument
  -> HsBindgen.Runtime.LibC.Int32
get_wlArgument_h = RIP.getUnionPayload

{-|

  __See:__ 'get_wlArgument_h'

-}
set_wlArgument_h ::
     HsBindgen.Runtime.LibC.Int32
  -> WlArgument
set_wlArgument_h = RIP.setUnionPayload

instance HasCField.HasCField WlArgument "i" where

  type CFieldType WlArgument "i" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "i" (RIP.Ptr WlArgument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"i")

instance HasCField.HasCField WlArgument "u" where

  type CFieldType WlArgument "u" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "u" (RIP.Ptr WlArgument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"u")

instance HasCField.HasCField WlArgument "f" where

  type CFieldType WlArgument "f" = Wl_fixed_t

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) Wl_fixed_t
         ) => RIP.HasField "f" (RIP.Ptr WlArgument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"f")

instance HasCField.HasCField WlArgument "s" where

  type CFieldType WlArgument "s" =
    PtrConst.PtrConst RIP.CChar

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (PtrConst.PtrConst RIP.CChar)
         ) => RIP.HasField "s" (RIP.Ptr WlArgument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"s")

instance HasCField.HasCField WlArgument "o" where

  type CFieldType WlArgument "o" = RIP.Ptr WlObject

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.Ptr WlObject)
         ) => RIP.HasField "o" (RIP.Ptr WlArgument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"o")

instance HasCField.HasCField WlArgument "n" where

  type CFieldType WlArgument "n" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Word32
         ) => RIP.HasField "n" (RIP.Ptr WlArgument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"n")

instance HasCField.HasCField WlArgument "a" where

  type CFieldType WlArgument "a" = RIP.Ptr WlArray

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.Ptr WlArray)
         ) => RIP.HasField "a" (RIP.Ptr WlArgument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"a")

instance HasCField.HasCField WlArgument "h" where

  type CFieldType WlArgument "h" =
    HsBindgen.Runtime.LibC.Int32

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) HsBindgen.Runtime.LibC.Int32
         ) => RIP.HasField "h" (RIP.Ptr WlArgument) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"h")

{-| Auxiliary type used by 'WlDispatcherFuncT'

__C declaration:__ @wl_dispatcher_func_t@

__defined at:__ @wayland-util.h 721:15@

__exported by:__ @wayland-util.h@
-}
newtype WlDispatcherFuncT_Aux = WlDispatcherFuncT_Aux
  { unwrap :: (PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst WlMessage) -> (RIP.Ptr WlArgument) -> IO RIP.CInt
  }
  deriving stock (RIP.Generic)
  deriving newtype (RIP.HasFFIType)

foreign import ccall safe "wrapper" hs_bindgen_170c805c4d6f56fe_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.Int32)
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.Int32))

-- __unique:__ @toWlDispatcherFuncT_Aux@
hs_bindgen_170c805c4d6f56fe ::
     WlDispatcherFuncT_Aux
  -> IO (RIP.FunPtr WlDispatcherFuncT_Aux)
hs_bindgen_170c805c4d6f56fe =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_170c805c4d6f56fe_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5ca3fcbb7186e068_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.Int32)
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO RIP.Int32

-- __unique:__ @fromWlDispatcherFuncT_Aux@
hs_bindgen_5ca3fcbb7186e068 ::
     RIP.FunPtr WlDispatcherFuncT_Aux
  -> WlDispatcherFuncT_Aux
hs_bindgen_5ca3fcbb7186e068 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5ca3fcbb7186e068_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr WlDispatcherFuncT_Aux where

  toFunPtr = hs_bindgen_170c805c4d6f56fe

instance RIP.FromFunPtr WlDispatcherFuncT_Aux where

  fromFunPtr = hs_bindgen_5ca3fcbb7186e068

instance ( ((~) ty) ((PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst WlMessage) -> (RIP.Ptr WlArgument) -> IO RIP.CInt)
         ) => RIP.HasField "unwrap" (RIP.Ptr WlDispatcherFuncT_Aux) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlDispatcherFuncT_Aux "unwrap" where

  type CFieldType WlDispatcherFuncT_Aux "unwrap" =
    (PtrConst.PtrConst RIP.Void) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst WlMessage) -> (RIP.Ptr WlArgument) -> IO RIP.CInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @wl_dispatcher_func_t@

    __defined at:__ @wayland-util.h 721:15@

    __exported by:__ @wayland-util.h@
-}
newtype WlDispatcherFuncT = WlDispatcherFuncT
  { unwrap :: RIP.FunPtr WlDispatcherFuncT_Aux
  }
  deriving stock (Eq, RIP.Generic, Ord, Show)
  deriving newtype
    ( RIP.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , RIP.Storable
    , Marshal.WriteRaw
    )

instance ( ((~) ty) (RIP.FunPtr WlDispatcherFuncT_Aux)
         ) => RIP.HasField "unwrap" (RIP.Ptr WlDispatcherFuncT) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlDispatcherFuncT "unwrap" where

  type CFieldType WlDispatcherFuncT "unwrap" =
    RIP.FunPtr WlDispatcherFuncT_Aux

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @enum wl_iterator_result@

    __defined at:__ @wayland-util.h 757:6@

    __exported by:__ @wayland-util.h@
-}
newtype WlIteratorResult = WlIteratorResult
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlIteratorResult where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlIteratorResult where

  readRaw =
    \ptr0 ->
          pure WlIteratorResult
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlIteratorResult where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlIteratorResult unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlIteratorResult instance RIP.Storable WlIteratorResult

deriving via RIP.CUInt instance RIP.Prim WlIteratorResult

instance CEnum.CEnum WlIteratorResult where

  type CEnumZ WlIteratorResult = RIP.CUInt

  toCEnum = WlIteratorResult

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_ITERATOR_STOP")
                                   , (1, RIP.singleton "WL_ITERATOR_CONTINUE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlIteratorResult"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlIteratorResult"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlIteratorResult where

  minDeclaredValue = WL_ITERATOR_STOP

  maxDeclaredValue = WL_ITERATOR_CONTINUE

instance Show WlIteratorResult where

  showsPrec = CEnum.shows

instance Read WlIteratorResult where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlIteratorResult) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlIteratorResult "unwrap" where

  type CFieldType WlIteratorResult "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_ITERATOR_STOP@

    __defined at:__ @wayland-util.h 759:2@

    __exported by:__ @wayland-util.h@
-}
pattern WL_ITERATOR_STOP :: WlIteratorResult
pattern WL_ITERATOR_STOP = WlIteratorResult 0

{-| __C declaration:__ @WL_ITERATOR_CONTINUE@

    __defined at:__ @wayland-util.h 761:2@

    __exported by:__ @wayland-util.h@
-}
pattern WL_ITERATOR_CONTINUE :: WlIteratorResult
pattern WL_ITERATOR_CONTINUE = WlIteratorResult 1

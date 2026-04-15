{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Bindings.Wayland.ExtIdleNotifyV1.Generated
    ( Bindings.Wayland.ExtIdleNotifyV1.Generated.Ext_idle_notification_v1
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Ext_idle_notifier_v1
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFIER_V1_DESTROY
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFIER_V1_GET_IDLE_NOTIFICATION
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFIER_V1_GET_INPUT_IDLE_NOTIFICATION
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFIER_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFIER_V1_GET_IDLE_NOTIFICATION_SINCE_VERSION
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFIER_V1_GET_INPUT_IDLE_NOTIFICATION_SINCE_VERSION
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Ext_idle_notification_v1_listener(..)
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFICATION_V1_DESTROY
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFICATION_V1_IDLED_SINCE_VERSION
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFICATION_V1_RESUMED_SINCE_VERSION
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.eXT_IDLE_NOTIFICATION_V1_DESTROY_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.Marshal as Marshal

{-|

  > page_ext_idle_notify_v1 The ext_idle_notify_v1 protocol

  > page_ifaces_ext_idle_notify_v1 Interfaces

  -

  > page_iface_ext_idle_notifier_v1 - idle notification manager

  -

  > page_iface_ext_idle_notification_v1 - idle notification

  > page_copyright_ext_idle_notify_v1 Copyright

  Copyright © 2015 Martin Gräßlin Copyright © 2022 Simon Ser

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice (including the next paragraph) shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

__C declaration:__ @struct ext_idle_notification_v1@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 45:8@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
data Ext_idle_notification_v1

{-| __C declaration:__ @struct ext_idle_notifier_v1@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 46:8@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
data Ext_idle_notifier_v1

{-| __C declaration:__ @macro EXT_IDLE_NOTIFIER_V1_DESTROY@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 132:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFIER_V1_DESTROY :: RIP.CInt
eXT_IDLE_NOTIFIER_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_IDLE_NOTIFIER_V1_GET_IDLE_NOTIFICATION@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 133:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFIER_V1_GET_IDLE_NOTIFICATION :: RIP.CInt
eXT_IDLE_NOTIFIER_V1_GET_IDLE_NOTIFICATION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_IDLE_NOTIFIER_V1_GET_INPUT_IDLE_NOTIFICATION@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 134:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFIER_V1_GET_INPUT_IDLE_NOTIFICATION :: RIP.CInt
eXT_IDLE_NOTIFIER_V1_GET_INPUT_IDLE_NOTIFICATION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_IDLE_NOTIFIER_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 140:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFIER_V1_DESTROY_SINCE_VERSION :: RIP.CInt
eXT_IDLE_NOTIFIER_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_IDLE_NOTIFIER_V1_GET_IDLE_NOTIFICATION_SINCE_VERSION@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 144:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFIER_V1_GET_IDLE_NOTIFICATION_SINCE_VERSION :: RIP.CInt
eXT_IDLE_NOTIFIER_V1_GET_IDLE_NOTIFICATION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_IDLE_NOTIFIER_V1_GET_INPUT_IDLE_NOTIFICATION_SINCE_VERSION@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 148:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFIER_V1_GET_INPUT_IDLE_NOTIFICATION_SINCE_VERSION :: RIP.CInt
eXT_IDLE_NOTIFIER_V1_GET_INPUT_IDLE_NOTIFICATION_SINCE_VERSION =
  (2 :: RIP.CInt)

{-|

  > iface_ext_idle_notification_v1

  > ext_idle_notification_v1_listener

__C declaration:__ @struct ext_idle_notification_v1_listener@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 235:8@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
data Ext_idle_notification_v1_listener = Ext_idle_notification_v1_listener
  { idled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ())
    {- ^ notification object is idle

       This event is sent when the notification object becomes idle.

       It's a compositor protocol error to send this event twice without a resumed event in-between.

    __C declaration:__ @idled@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 244:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
    -}
  , resumed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ())
    {- ^ notification object is no longer idle

       This event is sent when the notification object stops being idle.

       It's a compositor protocol error to send this event twice without an idled event in-between. It's a compositor protocol error to send this event prior to any idled event.

    __C declaration:__ @resumed@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 256:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Ext_idle_notification_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Ext_idle_notification_v1_listener where

  readRaw =
    \ptr0 ->
          pure Ext_idle_notification_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"idled") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"resumed") ptr0

instance Marshal.WriteRaw Ext_idle_notification_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Ext_idle_notification_v1_listener idled2 resumed3 ->
               HasCField.writeRaw (RIP.Proxy @"idled") ptr0 idled2
            >> HasCField.writeRaw (RIP.Proxy @"resumed") ptr0 resumed3

deriving via Marshal.EquivStorable Ext_idle_notification_v1_listener instance RIP.Storable Ext_idle_notification_v1_listener

instance HasCField.HasCField Ext_idle_notification_v1_listener "idled" where

  type CFieldType Ext_idle_notification_v1_listener "idled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ()))
         ) => RIP.HasField "idled" (RIP.Ptr Ext_idle_notification_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"idled")

instance HasCField.HasCField Ext_idle_notification_v1_listener "resumed" where

  type CFieldType Ext_idle_notification_v1_listener "resumed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ()))
         ) => RIP.HasField "resumed" (RIP.Ptr Ext_idle_notification_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"resumed")

{-| __C declaration:__ @macro EXT_IDLE_NOTIFICATION_V1_DESTROY@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 271:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFICATION_V1_DESTROY :: RIP.CInt
eXT_IDLE_NOTIFICATION_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_IDLE_NOTIFICATION_V1_IDLED_SINCE_VERSION@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 276:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFICATION_V1_IDLED_SINCE_VERSION :: RIP.CInt
eXT_IDLE_NOTIFICATION_V1_IDLED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_IDLE_NOTIFICATION_V1_RESUMED_SINCE_VERSION@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 280:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFICATION_V1_RESUMED_SINCE_VERSION :: RIP.CInt
eXT_IDLE_NOTIFICATION_V1_RESUMED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_IDLE_NOTIFICATION_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 285:9@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
eXT_IDLE_NOTIFICATION_V1_DESTROY_SINCE_VERSION :: RIP.CInt
eXT_IDLE_NOTIFICATION_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_2e4f7ed4d0a5a205_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ())@
hs_bindgen_2e4f7ed4d0a5a205 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ()))
hs_bindgen_2e4f7ed4d0a5a205 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_2e4f7ed4d0a5a205_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_efa1a2c635a220c2_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ())@
hs_bindgen_efa1a2c635a220c2 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ()
hs_bindgen_efa1a2c635a220c2 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_efa1a2c635a220c2_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ()) where

  toFunPtr = hs_bindgen_2e4f7ed4d0a5a205

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_idle_notification_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_efa1a2c635a220c2

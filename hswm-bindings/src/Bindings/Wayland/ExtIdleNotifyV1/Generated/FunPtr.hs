{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr
    ( Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notifier_v1_set_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notifier_v1_get_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notifier_v1_get_version
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notifier_v1_destroy
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notifier_v1_get_idle_notification
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notifier_v1_get_input_idle_notification
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notification_v1_add_listener
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notification_v1_set_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notification_v1_get_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notification_v1_get_version
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.FunPtr.ext_idle_notification_v1_destroy
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.ExtIdleNotifyV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-idle-notify-v1-client-protocol.h>"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_38be5d418cc1391d (void)) ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_idle_notifier_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_db3da0eb94ec2c01 (void)) ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_idle_notifier_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_75c2fc7d183c375a (void)) ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_idle_notifier_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bb396f0d802e0ccb (void)) ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_idle_notifier_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_idle_notification */"
  , "__attribute__ ((const))"
  , "struct ext_idle_notification_v1 *(*hs_bindgen_e78058f8438bcc41 (void)) ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_seat *arg3"
  , ")"
  , "{"
  , "  return &ext_idle_notifier_v1_get_idle_notification;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_input_idle_notification */"
  , "__attribute__ ((const))"
  , "struct ext_idle_notification_v1 *(*hs_bindgen_2e3462657ca622d9 (void)) ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_seat *arg3"
  , ")"
  , "{"
  , "  return &ext_idle_notifier_v1_get_input_idle_notification;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5ba4d4ea68f21af2 (void)) ("
  , "  struct ext_idle_notification_v1 *arg1,"
  , "  struct ext_idle_notification_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &ext_idle_notification_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7c549166ca88ac6c (void)) ("
  , "  struct ext_idle_notification_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_idle_notification_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_849587193c1f0591 (void)) ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_idle_notification_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_dfcfe9a8e4dc351b (void)) ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_idle_notification_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_66c6065ca27fcb20 (void)) ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_idle_notification_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_38be5d418cc1391d" hs_bindgen_38be5d418cc1391d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_set_user_data@
hs_bindgen_38be5d418cc1391d :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_38be5d418cc1391d =
  RIP.fromFFIType hs_bindgen_38be5d418cc1391d_base

{-# NOINLINE ext_idle_notifier_v1_set_user_data #-}
{-|

  > iface_ext_idle_notifier_v1

__C declaration:__ @ext_idle_notifier_v1_set_user_data@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 152:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_idle_notifier_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_38be5d418cc1391d

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_db3da0eb94ec2c01" hs_bindgen_db3da0eb94ec2c01_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_user_data@
hs_bindgen_db3da0eb94ec2c01 :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_db3da0eb94ec2c01 =
  RIP.fromFFIType hs_bindgen_db3da0eb94ec2c01_base

{-# NOINLINE ext_idle_notifier_v1_get_user_data #-}
{-|

  > iface_ext_idle_notifier_v1

__C declaration:__ @ext_idle_notifier_v1_get_user_data@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 159:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> IO (RIP.Ptr RIP.Void))
ext_idle_notifier_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_db3da0eb94ec2c01

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_version@
foreign import ccall unsafe "hs_bindgen_75c2fc7d183c375a" hs_bindgen_75c2fc7d183c375a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_version@
hs_bindgen_75c2fc7d183c375a :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_75c2fc7d183c375a =
  RIP.fromFFIType hs_bindgen_75c2fc7d183c375a_base

{-# NOINLINE ext_idle_notifier_v1_get_version #-}
{-| __C declaration:__ @ext_idle_notifier_v1_get_version@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 165:1@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_idle_notifier_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_75c2fc7d183c375a

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_destroy@
foreign import ccall unsafe "hs_bindgen_bb396f0d802e0ccb" hs_bindgen_bb396f0d802e0ccb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_destroy@
hs_bindgen_bb396f0d802e0ccb :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> IO ()))
hs_bindgen_bb396f0d802e0ccb =
  RIP.fromFFIType hs_bindgen_bb396f0d802e0ccb_base

{-# NOINLINE ext_idle_notifier_v1_destroy #-}
{-|

  > iface_ext_idle_notifier_v1

  Destroy the manager object. All objects created via this interface remain valid.

__C declaration:__ @ext_idle_notifier_v1_destroy@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 177:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_destroy :: RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> IO ())
ext_idle_notifier_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_bb396f0d802e0ccb

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_idle_notification@
foreign import ccall unsafe "hs_bindgen_e78058f8438bcc41" hs_bindgen_e78058f8438bcc41_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_idle_notification@
hs_bindgen_e78058f8438bcc41 :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat) -> IO (RIP.Ptr Ext_idle_notification_v1)))
hs_bindgen_e78058f8438bcc41 =
  RIP.fromFFIType hs_bindgen_e78058f8438bcc41_base

{-# NOINLINE ext_idle_notifier_v1_get_idle_notification #-}
{-|

  > iface_ext_idle_notifier_v1

  Create a new idle notification object.

  The notification object has a minimum timeout duration and is tied to a seat. The client will be notified if the seat is inactive for at least the provided timeout. See ext_idle_notification_v1 for more details.

  A zero timeout is valid and means the client wants to be notified as soon as possible when the seat is inactive.

__C declaration:__ @ext_idle_notifier_v1_get_idle_notification@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 196:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_idle_notification :: RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat) -> IO (RIP.Ptr Ext_idle_notification_v1))
ext_idle_notifier_v1_get_idle_notification =
  RIP.unsafePerformIO hs_bindgen_e78058f8438bcc41

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_input_idle_notification@
foreign import ccall unsafe "hs_bindgen_2e3462657ca622d9" hs_bindgen_2e3462657ca622d9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_get_input_idle_notification@
hs_bindgen_2e3462657ca622d9 :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat) -> IO (RIP.Ptr Ext_idle_notification_v1)))
hs_bindgen_2e3462657ca622d9 =
  RIP.fromFFIType hs_bindgen_2e3462657ca622d9_base

{-# NOINLINE ext_idle_notifier_v1_get_input_idle_notification #-}
{-|

  > iface_ext_idle_notifier_v1

  Create a new idle notification object to track input from the user, such as keyboard and mouse movement. Because this object is meant to track user input alone, it ignores idle inhibitors.

  The notification object has a minimum timeout duration and is tied to a seat. The client will be notified if the seat is inactive for at least the provided timeout. See ext_idle_notification_v1 for more details.

  A zero timeout is valid and means the client wants to be notified as soon as possible when the seat is inactive.

__C declaration:__ @ext_idle_notifier_v1_get_input_idle_notification@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 221:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_input_idle_notification :: RIP.FunPtr ((RIP.Ptr Ext_idle_notifier_v1) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat) -> IO (RIP.Ptr Ext_idle_notification_v1))
ext_idle_notifier_v1_get_input_idle_notification =
  RIP.unsafePerformIO hs_bindgen_2e3462657ca622d9

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_5ba4d4ea68f21af2" hs_bindgen_5ba4d4ea68f21af2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_add_listener@
hs_bindgen_5ba4d4ea68f21af2 :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> (PtrConst.PtrConst Ext_idle_notification_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_5ba4d4ea68f21af2 =
  RIP.fromFFIType hs_bindgen_5ba4d4ea68f21af2_base

{-# NOINLINE ext_idle_notification_v1_add_listener #-}
{-|

  > iface_ext_idle_notification_v1

__C declaration:__ @ext_idle_notification_v1_add_listener@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 264:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> (PtrConst.PtrConst Ext_idle_notification_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
ext_idle_notification_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_5ba4d4ea68f21af2

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_7c549166ca88ac6c" hs_bindgen_7c549166ca88ac6c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_set_user_data@
hs_bindgen_7c549166ca88ac6c :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_7c549166ca88ac6c =
  RIP.fromFFIType hs_bindgen_7c549166ca88ac6c_base

{-# NOINLINE ext_idle_notification_v1_set_user_data #-}
{-|

  > iface_ext_idle_notification_v1

__C declaration:__ @ext_idle_notification_v1_set_user_data@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 289:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_idle_notification_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_7c549166ca88ac6c

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_849587193c1f0591" hs_bindgen_849587193c1f0591_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_get_user_data@
hs_bindgen_849587193c1f0591 :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_849587193c1f0591 =
  RIP.fromFFIType hs_bindgen_849587193c1f0591_base

{-# NOINLINE ext_idle_notification_v1_get_user_data #-}
{-|

  > iface_ext_idle_notification_v1

__C declaration:__ @ext_idle_notification_v1_get_user_data@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 296:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> IO (RIP.Ptr RIP.Void))
ext_idle_notification_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_849587193c1f0591

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_get_version@
foreign import ccall unsafe "hs_bindgen_dfcfe9a8e4dc351b" hs_bindgen_dfcfe9a8e4dc351b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_get_version@
hs_bindgen_dfcfe9a8e4dc351b :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_dfcfe9a8e4dc351b =
  RIP.fromFFIType hs_bindgen_dfcfe9a8e4dc351b_base

{-# NOINLINE ext_idle_notification_v1_get_version #-}
{-| __C declaration:__ @ext_idle_notification_v1_get_version@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 302:1@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_idle_notification_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_dfcfe9a8e4dc351b

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_destroy@
foreign import ccall unsafe "hs_bindgen_66c6065ca27fcb20" hs_bindgen_66c6065ca27fcb20_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_destroy@
hs_bindgen_66c6065ca27fcb20 :: IO (RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> IO ()))
hs_bindgen_66c6065ca27fcb20 =
  RIP.fromFFIType hs_bindgen_66c6065ca27fcb20_base

{-# NOINLINE ext_idle_notification_v1_destroy #-}
{-|

  > iface_ext_idle_notification_v1

  Destroy the notification object.

__C declaration:__ @ext_idle_notification_v1_destroy@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 313:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_destroy :: RIP.FunPtr ((RIP.Ptr Ext_idle_notification_v1) -> IO ())
ext_idle_notification_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_66c6065ca27fcb20

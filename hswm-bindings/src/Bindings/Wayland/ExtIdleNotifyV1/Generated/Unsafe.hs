{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe
    ( Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notifier_v1_set_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notifier_v1_get_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notifier_v1_get_version
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notifier_v1_destroy
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notifier_v1_get_idle_notification
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notifier_v1_get_input_idle_notification
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notification_v1_add_listener
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notification_v1_set_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notification_v1_get_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notification_v1_get_version
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Unsafe.ext_idle_notification_v1_destroy
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
  , "void hs_bindgen_05b27cbb6e9599bf ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_idle_notifier_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3b102bdb3ce925bb ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_idle_notifier_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2ce1332efa2adf87 ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_idle_notifier_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_a0ce53930bc7c910 ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_idle_notifier_v1_destroy)(arg1);"
  , "}"
  , "struct ext_idle_notification_v1 *hs_bindgen_9233595e4d0b0725 ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_seat *arg3"
  , ")"
  , "{"
  , "  return (ext_idle_notifier_v1_get_idle_notification)(arg1, arg2, arg3);"
  , "}"
  , "struct ext_idle_notification_v1 *hs_bindgen_cd92a7b6a062ab6e ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_seat *arg3"
  , ")"
  , "{"
  , "  return (ext_idle_notifier_v1_get_input_idle_notification)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_44f714988bd138a7 ("
  , "  struct ext_idle_notification_v1 *arg1,"
  , "  struct ext_idle_notification_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_idle_notification_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9d6be30c6e69bbec ("
  , "  struct ext_idle_notification_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_idle_notification_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_8751bbb82fe07db5 ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_idle_notification_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6e79f81208ac542d ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_idle_notification_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_59ce2d8b71972e4f ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_idle_notification_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_05b27cbb6e9599bf" hs_bindgen_05b27cbb6e9599bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_set_user_data@
hs_bindgen_05b27cbb6e9599bf ::
     RIP.Ptr Ext_idle_notifier_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_05b27cbb6e9599bf =
  RIP.fromFFIType hs_bindgen_05b27cbb6e9599bf_base

{-|

  > iface_ext_idle_notifier_v1

__C declaration:__ @ext_idle_notifier_v1_set_user_data@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 152:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_set_user_data ::
     RIP.Ptr Ext_idle_notifier_v1
     -- ^ __C declaration:__ @ext_idle_notifier_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
ext_idle_notifier_v1_set_user_data =
  hs_bindgen_05b27cbb6e9599bf

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_3b102bdb3ce925bb" hs_bindgen_3b102bdb3ce925bb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_get_user_data@
hs_bindgen_3b102bdb3ce925bb ::
     RIP.Ptr Ext_idle_notifier_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3b102bdb3ce925bb =
  RIP.fromFFIType hs_bindgen_3b102bdb3ce925bb_base

{-|

  > iface_ext_idle_notifier_v1

__C declaration:__ @ext_idle_notifier_v1_get_user_data@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 159:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_user_data ::
     RIP.Ptr Ext_idle_notifier_v1
     -- ^ __C declaration:__ @ext_idle_notifier_v1@
  -> IO (RIP.Ptr RIP.Void)
ext_idle_notifier_v1_get_user_data =
  hs_bindgen_3b102bdb3ce925bb

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_get_version@
foreign import ccall unsafe "hs_bindgen_2ce1332efa2adf87" hs_bindgen_2ce1332efa2adf87_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_get_version@
hs_bindgen_2ce1332efa2adf87 ::
     RIP.Ptr Ext_idle_notifier_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2ce1332efa2adf87 =
  RIP.fromFFIType hs_bindgen_2ce1332efa2adf87_base

{-| __C declaration:__ @ext_idle_notifier_v1_get_version@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 165:1@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_version ::
     RIP.Ptr Ext_idle_notifier_v1
     -- ^ __C declaration:__ @ext_idle_notifier_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_idle_notifier_v1_get_version =
  hs_bindgen_2ce1332efa2adf87

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a0ce53930bc7c910" hs_bindgen_a0ce53930bc7c910_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_destroy@
hs_bindgen_a0ce53930bc7c910 ::
     RIP.Ptr Ext_idle_notifier_v1
  -> IO ()
hs_bindgen_a0ce53930bc7c910 =
  RIP.fromFFIType hs_bindgen_a0ce53930bc7c910_base

{-|

  > iface_ext_idle_notifier_v1

  Destroy the manager object. All objects created via this interface remain valid.

__C declaration:__ @ext_idle_notifier_v1_destroy@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 177:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_destroy ::
     RIP.Ptr Ext_idle_notifier_v1
     -- ^ __C declaration:__ @ext_idle_notifier_v1@
  -> IO ()
ext_idle_notifier_v1_destroy =
  hs_bindgen_a0ce53930bc7c910

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_get_idle_notification@
foreign import ccall unsafe "hs_bindgen_9233595e4d0b0725" hs_bindgen_9233595e4d0b0725_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_get_idle_notification@
hs_bindgen_9233595e4d0b0725 ::
     RIP.Ptr Ext_idle_notifier_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> IO (RIP.Ptr Ext_idle_notification_v1)
hs_bindgen_9233595e4d0b0725 =
  RIP.fromFFIType hs_bindgen_9233595e4d0b0725_base

{-|

  > iface_ext_idle_notifier_v1

  Create a new idle notification object.

  The notification object has a minimum timeout duration and is tied to a seat. The client will be notified if the seat is inactive for at least the provided timeout. See ext_idle_notification_v1 for more details.

  A zero timeout is valid and means the client wants to be notified as soon as possible when the seat is inactive.

__C declaration:__ @ext_idle_notifier_v1_get_idle_notification@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 196:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_idle_notification ::
     RIP.Ptr Ext_idle_notifier_v1
     -- ^ __C declaration:__ @ext_idle_notifier_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @timeout@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr Ext_idle_notification_v1)
ext_idle_notifier_v1_get_idle_notification =
  hs_bindgen_9233595e4d0b0725

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_get_input_idle_notification@
foreign import ccall unsafe "hs_bindgen_cd92a7b6a062ab6e" hs_bindgen_cd92a7b6a062ab6e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notifier_v1_get_input_idle_notification@
hs_bindgen_cd92a7b6a062ab6e ::
     RIP.Ptr Ext_idle_notifier_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> IO (RIP.Ptr Ext_idle_notification_v1)
hs_bindgen_cd92a7b6a062ab6e =
  RIP.fromFFIType hs_bindgen_cd92a7b6a062ab6e_base

{-|

  > iface_ext_idle_notifier_v1

  Create a new idle notification object to track input from the user, such as keyboard and mouse movement. Because this object is meant to track user input alone, it ignores idle inhibitors.

  The notification object has a minimum timeout duration and is tied to a seat. The client will be notified if the seat is inactive for at least the provided timeout. See ext_idle_notification_v1 for more details.

  A zero timeout is valid and means the client wants to be notified as soon as possible when the seat is inactive.

__C declaration:__ @ext_idle_notifier_v1_get_input_idle_notification@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 221:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_input_idle_notification ::
     RIP.Ptr Ext_idle_notifier_v1
     -- ^ __C declaration:__ @ext_idle_notifier_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @timeout@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr Ext_idle_notification_v1)
ext_idle_notifier_v1_get_input_idle_notification =
  hs_bindgen_cd92a7b6a062ab6e

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_44f714988bd138a7" hs_bindgen_44f714988bd138a7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_add_listener@
hs_bindgen_44f714988bd138a7 ::
     RIP.Ptr Ext_idle_notification_v1
  -> PtrConst.PtrConst Ext_idle_notification_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_44f714988bd138a7 =
  RIP.fromFFIType hs_bindgen_44f714988bd138a7_base

{-|

  > iface_ext_idle_notification_v1

__C declaration:__ @ext_idle_notification_v1_add_listener@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 264:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_add_listener ::
     RIP.Ptr Ext_idle_notification_v1
     -- ^ __C declaration:__ @ext_idle_notification_v1@
  -> PtrConst.PtrConst Ext_idle_notification_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
ext_idle_notification_v1_add_listener =
  hs_bindgen_44f714988bd138a7

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_9d6be30c6e69bbec" hs_bindgen_9d6be30c6e69bbec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_set_user_data@
hs_bindgen_9d6be30c6e69bbec ::
     RIP.Ptr Ext_idle_notification_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9d6be30c6e69bbec =
  RIP.fromFFIType hs_bindgen_9d6be30c6e69bbec_base

{-|

  > iface_ext_idle_notification_v1

__C declaration:__ @ext_idle_notification_v1_set_user_data@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 289:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_set_user_data ::
     RIP.Ptr Ext_idle_notification_v1
     -- ^ __C declaration:__ @ext_idle_notification_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
ext_idle_notification_v1_set_user_data =
  hs_bindgen_9d6be30c6e69bbec

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_8751bbb82fe07db5" hs_bindgen_8751bbb82fe07db5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_get_user_data@
hs_bindgen_8751bbb82fe07db5 ::
     RIP.Ptr Ext_idle_notification_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_8751bbb82fe07db5 =
  RIP.fromFFIType hs_bindgen_8751bbb82fe07db5_base

{-|

  > iface_ext_idle_notification_v1

__C declaration:__ @ext_idle_notification_v1_get_user_data@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 296:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_get_user_data ::
     RIP.Ptr Ext_idle_notification_v1
     -- ^ __C declaration:__ @ext_idle_notification_v1@
  -> IO (RIP.Ptr RIP.Void)
ext_idle_notification_v1_get_user_data =
  hs_bindgen_8751bbb82fe07db5

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_get_version@
foreign import ccall unsafe "hs_bindgen_6e79f81208ac542d" hs_bindgen_6e79f81208ac542d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_get_version@
hs_bindgen_6e79f81208ac542d ::
     RIP.Ptr Ext_idle_notification_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6e79f81208ac542d =
  RIP.fromFFIType hs_bindgen_6e79f81208ac542d_base

{-| __C declaration:__ @ext_idle_notification_v1_get_version@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 302:1@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_get_version ::
     RIP.Ptr Ext_idle_notification_v1
     -- ^ __C declaration:__ @ext_idle_notification_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_idle_notification_v1_get_version =
  hs_bindgen_6e79f81208ac542d

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_destroy@
foreign import ccall unsafe "hs_bindgen_59ce2d8b71972e4f" hs_bindgen_59ce2d8b71972e4f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Unsafe_ext_idle_notification_v1_destroy@
hs_bindgen_59ce2d8b71972e4f ::
     RIP.Ptr Ext_idle_notification_v1
  -> IO ()
hs_bindgen_59ce2d8b71972e4f =
  RIP.fromFFIType hs_bindgen_59ce2d8b71972e4f_base

{-|

  > iface_ext_idle_notification_v1

  Destroy the notification object.

__C declaration:__ @ext_idle_notification_v1_destroy@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 313:1@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_destroy ::
     RIP.Ptr Ext_idle_notification_v1
     -- ^ __C declaration:__ @ext_idle_notification_v1@
  -> IO ()
ext_idle_notification_v1_destroy =
  hs_bindgen_59ce2d8b71972e4f

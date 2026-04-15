{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe
    ( Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notifier_v1_set_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notifier_v1_get_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notifier_v1_get_version
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notifier_v1_destroy
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notifier_v1_get_idle_notification
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notifier_v1_get_input_idle_notification
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notification_v1_add_listener
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notification_v1_set_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notification_v1_get_user_data
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notification_v1_get_version
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe.ext_idle_notification_v1_destroy
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
  , "void hs_bindgen_701f704089214a2f ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_idle_notifier_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e204c81e21efa0d5 ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_idle_notifier_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a925a1ca5e1af870 ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_idle_notifier_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9e8def318bd5f8c3 ("
  , "  struct ext_idle_notifier_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_idle_notifier_v1_destroy)(arg1);"
  , "}"
  , "struct ext_idle_notification_v1 *hs_bindgen_e39152346e44df01 ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_seat *arg3"
  , ")"
  , "{"
  , "  return (ext_idle_notifier_v1_get_idle_notification)(arg1, arg2, arg3);"
  , "}"
  , "struct ext_idle_notification_v1 *hs_bindgen_f9ebd0aa4fc7625d ("
  , "  struct ext_idle_notifier_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_seat *arg3"
  , ")"
  , "{"
  , "  return (ext_idle_notifier_v1_get_input_idle_notification)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2a917520652baa3f ("
  , "  struct ext_idle_notification_v1 *arg1,"
  , "  struct ext_idle_notification_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_idle_notification_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_8de5acb9d47cc725 ("
  , "  struct ext_idle_notification_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_idle_notification_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_143dc3a948dcd5a6 ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_idle_notification_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ed0e41003f650bb5 ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_idle_notification_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_67a6fef945a679a2 ("
  , "  struct ext_idle_notification_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_idle_notification_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_set_user_data@
foreign import ccall safe "hs_bindgen_701f704089214a2f" hs_bindgen_701f704089214a2f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_set_user_data@
hs_bindgen_701f704089214a2f ::
     RIP.Ptr Ext_idle_notifier_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_701f704089214a2f =
  RIP.fromFFIType hs_bindgen_701f704089214a2f_base

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
  hs_bindgen_701f704089214a2f

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_get_user_data@
foreign import ccall safe "hs_bindgen_e204c81e21efa0d5" hs_bindgen_e204c81e21efa0d5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_get_user_data@
hs_bindgen_e204c81e21efa0d5 ::
     RIP.Ptr Ext_idle_notifier_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e204c81e21efa0d5 =
  RIP.fromFFIType hs_bindgen_e204c81e21efa0d5_base

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
  hs_bindgen_e204c81e21efa0d5

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_get_version@
foreign import ccall safe "hs_bindgen_a925a1ca5e1af870" hs_bindgen_a925a1ca5e1af870_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_get_version@
hs_bindgen_a925a1ca5e1af870 ::
     RIP.Ptr Ext_idle_notifier_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a925a1ca5e1af870 =
  RIP.fromFFIType hs_bindgen_a925a1ca5e1af870_base

{-| __C declaration:__ @ext_idle_notifier_v1_get_version@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 165:1@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notifier_v1_get_version ::
     RIP.Ptr Ext_idle_notifier_v1
     -- ^ __C declaration:__ @ext_idle_notifier_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_idle_notifier_v1_get_version =
  hs_bindgen_a925a1ca5e1af870

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_destroy@
foreign import ccall safe "hs_bindgen_9e8def318bd5f8c3" hs_bindgen_9e8def318bd5f8c3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_destroy@
hs_bindgen_9e8def318bd5f8c3 ::
     RIP.Ptr Ext_idle_notifier_v1
  -> IO ()
hs_bindgen_9e8def318bd5f8c3 =
  RIP.fromFFIType hs_bindgen_9e8def318bd5f8c3_base

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
  hs_bindgen_9e8def318bd5f8c3

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_get_idle_notification@
foreign import ccall safe "hs_bindgen_e39152346e44df01" hs_bindgen_e39152346e44df01_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_get_idle_notification@
hs_bindgen_e39152346e44df01 ::
     RIP.Ptr Ext_idle_notifier_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> IO (RIP.Ptr Ext_idle_notification_v1)
hs_bindgen_e39152346e44df01 =
  RIP.fromFFIType hs_bindgen_e39152346e44df01_base

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
  hs_bindgen_e39152346e44df01

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_get_input_idle_notification@
foreign import ccall safe "hs_bindgen_f9ebd0aa4fc7625d" hs_bindgen_f9ebd0aa4fc7625d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notifier_v1_get_input_idle_notification@
hs_bindgen_f9ebd0aa4fc7625d ::
     RIP.Ptr Ext_idle_notifier_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> IO (RIP.Ptr Ext_idle_notification_v1)
hs_bindgen_f9ebd0aa4fc7625d =
  RIP.fromFFIType hs_bindgen_f9ebd0aa4fc7625d_base

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
  hs_bindgen_f9ebd0aa4fc7625d

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_add_listener@
foreign import ccall safe "hs_bindgen_2a917520652baa3f" hs_bindgen_2a917520652baa3f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_add_listener@
hs_bindgen_2a917520652baa3f ::
     RIP.Ptr Ext_idle_notification_v1
  -> PtrConst.PtrConst Ext_idle_notification_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_2a917520652baa3f =
  RIP.fromFFIType hs_bindgen_2a917520652baa3f_base

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
  hs_bindgen_2a917520652baa3f

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_set_user_data@
foreign import ccall safe "hs_bindgen_8de5acb9d47cc725" hs_bindgen_8de5acb9d47cc725_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_set_user_data@
hs_bindgen_8de5acb9d47cc725 ::
     RIP.Ptr Ext_idle_notification_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8de5acb9d47cc725 =
  RIP.fromFFIType hs_bindgen_8de5acb9d47cc725_base

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
  hs_bindgen_8de5acb9d47cc725

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_get_user_data@
foreign import ccall safe "hs_bindgen_143dc3a948dcd5a6" hs_bindgen_143dc3a948dcd5a6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_get_user_data@
hs_bindgen_143dc3a948dcd5a6 ::
     RIP.Ptr Ext_idle_notification_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_143dc3a948dcd5a6 =
  RIP.fromFFIType hs_bindgen_143dc3a948dcd5a6_base

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
  hs_bindgen_143dc3a948dcd5a6

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_get_version@
foreign import ccall safe "hs_bindgen_ed0e41003f650bb5" hs_bindgen_ed0e41003f650bb5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_get_version@
hs_bindgen_ed0e41003f650bb5 ::
     RIP.Ptr Ext_idle_notification_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ed0e41003f650bb5 =
  RIP.fromFFIType hs_bindgen_ed0e41003f650bb5_base

{-| __C declaration:__ @ext_idle_notification_v1_get_version@

    __defined at:__ @ext-idle-notify-v1-client-protocol.h 302:1@

    __exported by:__ @ext-idle-notify-v1-client-protocol.h@
-}
ext_idle_notification_v1_get_version ::
     RIP.Ptr Ext_idle_notification_v1
     -- ^ __C declaration:__ @ext_idle_notification_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_idle_notification_v1_get_version =
  hs_bindgen_ed0e41003f650bb5

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_destroy@
foreign import ccall safe "hs_bindgen_67a6fef945a679a2" hs_bindgen_67a6fef945a679a2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_Safe_ext_idle_notification_v1_destroy@
hs_bindgen_67a6fef945a679a2 ::
     RIP.Ptr Ext_idle_notification_v1
  -> IO ()
hs_bindgen_67a6fef945a679a2 =
  RIP.fromFFIType hs_bindgen_67a6fef945a679a2_base

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
  hs_bindgen_67a6fef945a679a2

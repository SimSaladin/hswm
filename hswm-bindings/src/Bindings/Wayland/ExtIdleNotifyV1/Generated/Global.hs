{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.ExtIdleNotifyV1.Generated.Global
    ( Bindings.Wayland.ExtIdleNotifyV1.Generated.Global.ext_idle_notifier_v1_interface
    , Bindings.Wayland.ExtIdleNotifyV1.Generated.Global.ext_idle_notification_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-idle-notify-v1-client-protocol.h>"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_b239101b21e53313 (void)"
  , "{"
  , "  return &ext_idle_notifier_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_308a88bd9ef0316d (void)"
  , "{"
  , "  return &ext_idle_notification_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_interface@
foreign import ccall unsafe "hs_bindgen_b239101b21e53313" hs_bindgen_b239101b21e53313_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notifier_v1_interface@
hs_bindgen_b239101b21e53313 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_b239101b21e53313 =
  RIP.fromFFIType hs_bindgen_b239101b21e53313_base

{-# NOINLINE hs_bindgen_84d07ba0f4b20920 #-}
{-|

  > page_iface_ext_idle_notifier_v1 ext_idle_notifier_v1

  > page_iface_ext_idle_notifier_v1_desc Description

  This interface allows clients to monitor user idle status.

  After binding to this global, clients can create ext_idle_notification_v1 objects to get notified when the user is idle for a given amount of time.

  > page_iface_ext_idle_notifier_v1_api API

  See @iface_ext_idle_notifier_v1@ .

  > iface_ext_idle_notifier_v1 The ext_idle_notifier_v1 interface

  This interface allows clients to monitor user idle status.

  After binding to this global, clients can create ext_idle_notification_v1 objects to get notified when the user is idle for a given amount of time.

__C declaration:__ @ext_idle_notifier_v1_interface@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 70:34@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_ext_idle_notifier_v1_interface@
-}
hs_bindgen_84d07ba0f4b20920 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_84d07ba0f4b20920 =
  RIP.unsafePerformIO hs_bindgen_b239101b21e53313

{-# NOINLINE ext_idle_notifier_v1_interface #-}
ext_idle_notifier_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
ext_idle_notifier_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_84d07ba0f4b20920)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_interface@
foreign import ccall unsafe "hs_bindgen_308a88bd9ef0316d" hs_bindgen_308a88bd9ef0316d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_get_ext_idle_notification_v1_interface@
hs_bindgen_308a88bd9ef0316d :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_308a88bd9ef0316d =
  RIP.fromFFIType hs_bindgen_308a88bd9ef0316d_base

{-# NOINLINE hs_bindgen_ac0eae3ecb395831 #-}
{-|

  > page_iface_ext_idle_notification_v1 ext_idle_notification_v1

  > page_iface_ext_idle_notification_v1_desc Description

  This interface is used by the compositor to send idle notification events to clients.

  Initially the notification object is not idle. The notification object becomes idle when no user activity has happened for at least the timeout duration, starting from the creation of the notification object. User activity may include input events or a presence sensor, but is compositor-specific.

  How this notification responds to idle inhibitors depends on how it was constructed. If constructed from the get_idle_notification request, then if an idle inhibitor is active (e.g. another client has created a zwp_idle_inhibitor_v1 on a visible surface), the compositor must not make the notification object idle. However, if constructed from the get_input_idle_notification request, then idle inhibitors are ignored, and only input from the user, e.g. from a keyboard or mouse, counts as activity.

  When the notification object becomes idle, an idled event is sent. When user activity starts again, the notification object stops being idle, a resumed event is sent and the timeout is restarted.

  > page_iface_ext_idle_notification_v1_api API

  See @iface_ext_idle_notification_v1@ .

  > iface_ext_idle_notification_v1 The ext_idle_notification_v1 interface

  This interface is used by the compositor to send idle notification events to clients.

  Initially the notification object is not idle. The notification object becomes idle when no user activity has happened for at least the timeout duration, starting from the creation of the notification object. User activity may include input events or a presence sensor, but is compositor-specific.

  How this notification responds to idle inhibitors depends on how it was constructed. If constructed from the get_idle_notification request, then if an idle inhibitor is active (e.g. another client has created a zwp_idle_inhibitor_v1 on a visible surface), the compositor must not make the notification object idle. However, if constructed from the get_input_idle_notification request, then idle inhibitors are ignored, and only input from the user, e.g. from a keyboard or mouse, counts as activity.

  When the notification object becomes idle, an idled event is sent. When user activity starts again, the notification object stops being idle, a resumed event is sent and the timeout is restarted.

__C declaration:__ @ext_idle_notification_v1_interface@

__defined at:__ @ext-idle-notify-v1-client-protocol.h 129:34@

__exported by:__ @ext-idle-notify-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_ExtIdleNotifyV1_Generated_Bindings.Wayland.ExtIdleNotifyV1.Generated_ext_idle_notification_v1_interface@
-}
hs_bindgen_ac0eae3ecb395831 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_ac0eae3ecb395831 =
  RIP.unsafePerformIO hs_bindgen_308a88bd9ef0316d

{-# NOINLINE ext_idle_notification_v1_interface #-}
ext_idle_notification_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
ext_idle_notification_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_ac0eae3ecb395831)

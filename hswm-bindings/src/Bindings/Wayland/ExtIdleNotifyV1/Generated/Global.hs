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
{-| __C declaration:__ @ext_idle_notifier_v1_interface@

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
{-| __C declaration:__ @ext_idle_notification_v1_interface@

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

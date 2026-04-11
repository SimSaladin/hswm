{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Client.Generated.Global
    ( Bindings.Wayland.Client.Generated.Global.wl_display_interface
    , Bindings.Wayland.Client.Generated.Global.wl_registry_interface
    , Bindings.Wayland.Client.Generated.Global.wl_callback_interface
    , Bindings.Wayland.Client.Generated.Global.wl_compositor_interface
    , Bindings.Wayland.Client.Generated.Global.wl_shm_pool_interface
    , Bindings.Wayland.Client.Generated.Global.wl_shm_interface
    , Bindings.Wayland.Client.Generated.Global.wl_buffer_interface
    , Bindings.Wayland.Client.Generated.Global.wl_data_offer_interface
    , Bindings.Wayland.Client.Generated.Global.wl_data_source_interface
    , Bindings.Wayland.Client.Generated.Global.wl_data_device_interface
    , Bindings.Wayland.Client.Generated.Global.wl_data_device_manager_interface
    , Bindings.Wayland.Client.Generated.Global.wl_shell_interface
    , Bindings.Wayland.Client.Generated.Global.wl_shell_surface_interface
    , Bindings.Wayland.Client.Generated.Global.wl_surface_interface
    , Bindings.Wayland.Client.Generated.Global.wl_seat_interface
    , Bindings.Wayland.Client.Generated.Global.wl_pointer_interface
    , Bindings.Wayland.Client.Generated.Global.wl_keyboard_interface
    , Bindings.Wayland.Client.Generated.Global.wl_touch_interface
    , Bindings.Wayland.Client.Generated.Global.wl_output_interface
    , Bindings.Wayland.Client.Generated.Global.wl_region_interface
    , Bindings.Wayland.Client.Generated.Global.wl_subcompositor_interface
    , Bindings.Wayland.Client.Generated.Global.wl_subsurface_interface
    , Bindings.Wayland.Client.Generated.Global.wl_fixes_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-client.h>"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_00884d12faf72d79 (void)"
  , "{"
  , "  return &wl_display_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_00c8436d8aa6240d (void)"
  , "{"
  , "  return &wl_registry_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_e0c4d02c6af845d0 (void)"
  , "{"
  , "  return &wl_callback_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_34fb82b7a8871fb9 (void)"
  , "{"
  , "  return &wl_compositor_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_e72944e77f237467 (void)"
  , "{"
  , "  return &wl_shm_pool_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_63d2304848e8fd45 (void)"
  , "{"
  , "  return &wl_shm_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_81a71f2fb328c027 (void)"
  , "{"
  , "  return &wl_buffer_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_def5e16d89a3ac2b (void)"
  , "{"
  , "  return &wl_data_offer_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_0d5905be99c7912d (void)"
  , "{"
  , "  return &wl_data_source_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_3a825588b5daa949 (void)"
  , "{"
  , "  return &wl_data_device_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_f7525348eb485cc1 (void)"
  , "{"
  , "  return &wl_data_device_manager_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_6b595719c12bf4ee (void)"
  , "{"
  , "  return &wl_shell_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_25bee64f2a94dead (void)"
  , "{"
  , "  return &wl_shell_surface_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_1e8086e2a77491ed (void)"
  , "{"
  , "  return &wl_surface_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_f65bfca9347eb2bc (void)"
  , "{"
  , "  return &wl_seat_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_9f1a896ec070d287 (void)"
  , "{"
  , "  return &wl_pointer_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_a6da77fd6c66fe9a (void)"
  , "{"
  , "  return &wl_keyboard_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_ac842fb5c1ac4afc (void)"
  , "{"
  , "  return &wl_touch_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_83451d2cc86e4dc1 (void)"
  , "{"
  , "  return &wl_output_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_acf9464f910deae0 (void)"
  , "{"
  , "  return &wl_region_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_fa438a7997de9ada (void)"
  , "{"
  , "  return &wl_subcompositor_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_07b46b414d777d49 (void)"
  , "{"
  , "  return &wl_subsurface_interface;"
  , "}"
  , "/* hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_ca67d096411cc7ef (void)"
  , "{"
  , "  return &wl_fixes_interface;"
  , "}"
  ]))

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_interface@
foreign import ccall unsafe "hs_bindgen_00884d12faf72d79" hs_bindgen_00884d12faf72d79_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_display_interface@
hs_bindgen_00884d12faf72d79 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_00884d12faf72d79 =
  RIP.fromFFIType hs_bindgen_00884d12faf72d79_base

{-# NOINLINE hs_bindgen_3dbb7aa2d8b91484 #-}
{-| __C declaration:__ @wl_display_interface@

    __defined at:__ @wayland-client-protocol.h 110:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_display_interface@
-}
hs_bindgen_3dbb7aa2d8b91484 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_3dbb7aa2d8b91484 =
  RIP.unsafePerformIO hs_bindgen_00884d12faf72d79

{-# NOINLINE wl_display_interface #-}
wl_display_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_display_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_3dbb7aa2d8b91484)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_interface@
foreign import ccall unsafe "hs_bindgen_00c8436d8aa6240d" hs_bindgen_00c8436d8aa6240d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_registry_interface@
hs_bindgen_00c8436d8aa6240d :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_00c8436d8aa6240d =
  RIP.fromFFIType hs_bindgen_00c8436d8aa6240d_base

{-# NOINLINE hs_bindgen_a8b1356176663daf #-}
{-| __C declaration:__ @wl_registry_interface@

    __defined at:__ @wayland-client-protocol.h 165:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_registry_interface@
-}
hs_bindgen_a8b1356176663daf :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_a8b1356176663daf =
  RIP.unsafePerformIO hs_bindgen_00c8436d8aa6240d

{-# NOINLINE wl_registry_interface #-}
wl_registry_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_registry_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a8b1356176663daf)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_interface@
foreign import ccall unsafe "hs_bindgen_e0c4d02c6af845d0" hs_bindgen_e0c4d02c6af845d0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_callback_interface@
hs_bindgen_e0c4d02c6af845d0 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_e0c4d02c6af845d0 =
  RIP.fromFFIType hs_bindgen_e0c4d02c6af845d0_base

{-# NOINLINE hs_bindgen_73b58d1653df0a57 #-}
{-| __C declaration:__ @wl_callback_interface@

    __defined at:__ @wayland-client-protocol.h 190:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_callback_interface@
-}
hs_bindgen_73b58d1653df0a57 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_73b58d1653df0a57 =
  RIP.unsafePerformIO hs_bindgen_e0c4d02c6af845d0

{-# NOINLINE wl_callback_interface #-}
wl_callback_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_callback_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_73b58d1653df0a57)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_interface@
foreign import ccall unsafe "hs_bindgen_34fb82b7a8871fb9" hs_bindgen_34fb82b7a8871fb9_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_compositor_interface@
hs_bindgen_34fb82b7a8871fb9 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_34fb82b7a8871fb9 =
  RIP.fromFFIType hs_bindgen_34fb82b7a8871fb9_base

{-# NOINLINE hs_bindgen_9ad46a986056c9e0 #-}
{-| __C declaration:__ @wl_compositor_interface@

    __defined at:__ @wayland-client-protocol.h 211:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_compositor_interface@
-}
hs_bindgen_9ad46a986056c9e0 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_9ad46a986056c9e0 =
  RIP.unsafePerformIO hs_bindgen_34fb82b7a8871fb9

{-# NOINLINE wl_compositor_interface #-}
wl_compositor_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_compositor_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_9ad46a986056c9e0)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_interface@
foreign import ccall unsafe "hs_bindgen_e72944e77f237467" hs_bindgen_e72944e77f237467_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_pool_interface@
hs_bindgen_e72944e77f237467 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_e72944e77f237467 =
  RIP.fromFFIType hs_bindgen_e72944e77f237467_base

{-# NOINLINE hs_bindgen_b5d692f00a02a1ed #-}
{-| __C declaration:__ @wl_shm_pool_interface@

    __defined at:__ @wayland-client-protocol.h 240:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_shm_pool_interface@
-}
hs_bindgen_b5d692f00a02a1ed :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_b5d692f00a02a1ed =
  RIP.unsafePerformIO hs_bindgen_e72944e77f237467

{-# NOINLINE wl_shm_pool_interface #-}
wl_shm_pool_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_shm_pool_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_b5d692f00a02a1ed)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_interface@
foreign import ccall unsafe "hs_bindgen_63d2304848e8fd45" hs_bindgen_63d2304848e8fd45_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shm_interface@
hs_bindgen_63d2304848e8fd45 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_63d2304848e8fd45 =
  RIP.fromFFIType hs_bindgen_63d2304848e8fd45_base

{-# NOINLINE hs_bindgen_ad689ded4e84882d #-}
{-| __C declaration:__ @wl_shm_interface@

    __defined at:__ @wayland-client-protocol.h 273:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_shm_interface@
-}
hs_bindgen_ad689ded4e84882d :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_ad689ded4e84882d =
  RIP.unsafePerformIO hs_bindgen_63d2304848e8fd45

{-# NOINLINE wl_shm_interface #-}
wl_shm_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_shm_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_ad689ded4e84882d)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_interface@
foreign import ccall unsafe "hs_bindgen_81a71f2fb328c027" hs_bindgen_81a71f2fb328c027_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_buffer_interface@
hs_bindgen_81a71f2fb328c027 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_81a71f2fb328c027 =
  RIP.fromFFIType hs_bindgen_81a71f2fb328c027_base

{-# NOINLINE hs_bindgen_d4d0a1b34235bb1a #-}
{-| __C declaration:__ @wl_buffer_interface@

    __defined at:__ @wayland-client-protocol.h 318:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_buffer_interface@
-}
hs_bindgen_d4d0a1b34235bb1a :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_d4d0a1b34235bb1a =
  RIP.unsafePerformIO hs_bindgen_81a71f2fb328c027

{-# NOINLINE wl_buffer_interface #-}
wl_buffer_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_buffer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d4d0a1b34235bb1a)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_interface@
foreign import ccall unsafe "hs_bindgen_def5e16d89a3ac2b" hs_bindgen_def5e16d89a3ac2b_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_offer_interface@
hs_bindgen_def5e16d89a3ac2b :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_def5e16d89a3ac2b =
  RIP.fromFFIType hs_bindgen_def5e16d89a3ac2b_base

{-# NOINLINE hs_bindgen_681c0be1cf41a040 #-}
{-| __C declaration:__ @wl_data_offer_interface@

    __defined at:__ @wayland-client-protocol.h 345:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_data_offer_interface@
-}
hs_bindgen_681c0be1cf41a040 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_681c0be1cf41a040 =
  RIP.unsafePerformIO hs_bindgen_def5e16d89a3ac2b

{-# NOINLINE wl_data_offer_interface #-}
wl_data_offer_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_data_offer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_681c0be1cf41a040)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_interface@
foreign import ccall unsafe "hs_bindgen_0d5905be99c7912d" hs_bindgen_0d5905be99c7912d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_source_interface@
hs_bindgen_0d5905be99c7912d :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_0d5905be99c7912d =
  RIP.fromFFIType hs_bindgen_0d5905be99c7912d_base

{-# NOINLINE hs_bindgen_f79c8ae3fc881359 #-}
{-| __C declaration:__ @wl_data_source_interface@

    __defined at:__ @wayland-client-protocol.h 368:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_data_source_interface@
-}
hs_bindgen_f79c8ae3fc881359 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_f79c8ae3fc881359 =
  RIP.unsafePerformIO hs_bindgen_0d5905be99c7912d

{-# NOINLINE wl_data_source_interface #-}
wl_data_source_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_data_source_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_f79c8ae3fc881359)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_interface@
foreign import ccall unsafe "hs_bindgen_3a825588b5daa949" hs_bindgen_3a825588b5daa949_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_interface@
hs_bindgen_3a825588b5daa949 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_3a825588b5daa949 =
  RIP.fromFFIType hs_bindgen_3a825588b5daa949_base

{-# NOINLINE hs_bindgen_73e152b748027571 #-}
{-| __C declaration:__ @wl_data_device_interface@

    __defined at:__ @wayland-client-protocol.h 393:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_data_device_interface@
-}
hs_bindgen_73e152b748027571 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_73e152b748027571 =
  RIP.unsafePerformIO hs_bindgen_3a825588b5daa949

{-# NOINLINE wl_data_device_interface #-}
wl_data_device_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_data_device_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_73e152b748027571)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_interface@
foreign import ccall unsafe "hs_bindgen_f7525348eb485cc1" hs_bindgen_f7525348eb485cc1_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_interface@
hs_bindgen_f7525348eb485cc1 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_f7525348eb485cc1 =
  RIP.fromFFIType hs_bindgen_f7525348eb485cc1_base

{-# NOINLINE hs_bindgen_1608e3d2f40e481a #-}
{-| __C declaration:__ @wl_data_device_manager_interface@

    __defined at:__ @wayland-client-protocol.h 428:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_data_device_manager_interface@
-}
hs_bindgen_1608e3d2f40e481a :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_1608e3d2f40e481a =
  RIP.unsafePerformIO hs_bindgen_f7525348eb485cc1

{-# NOINLINE wl_data_device_manager_interface #-}
wl_data_device_manager_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_data_device_manager_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_1608e3d2f40e481a)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_interface@
foreign import ccall unsafe "hs_bindgen_6b595719c12bf4ee" hs_bindgen_6b595719c12bf4ee_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_interface@
hs_bindgen_6b595719c12bf4ee :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_6b595719c12bf4ee =
  RIP.fromFFIType hs_bindgen_6b595719c12bf4ee_base

{-# NOINLINE hs_bindgen_27f4ee567adacf72 #-}
{-| __C declaration:__ @wl_shell_interface@

    __defined at:__ @wayland-client-protocol.h 461:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_shell_interface@
-}
hs_bindgen_27f4ee567adacf72 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_27f4ee567adacf72 =
  RIP.unsafePerformIO hs_bindgen_6b595719c12bf4ee

{-# NOINLINE wl_shell_interface #-}
wl_shell_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_shell_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_27f4ee567adacf72)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_interface@
foreign import ccall unsafe "hs_bindgen_25bee64f2a94dead" hs_bindgen_25bee64f2a94dead_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_shell_surface_interface@
hs_bindgen_25bee64f2a94dead :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_25bee64f2a94dead =
  RIP.fromFFIType hs_bindgen_25bee64f2a94dead_base

{-# NOINLINE hs_bindgen_1aee0b26b0726548 #-}
{-| __C declaration:__ @wl_shell_surface_interface@

    __defined at:__ @wayland-client-protocol.h 498:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_shell_surface_interface@
-}
hs_bindgen_1aee0b26b0726548 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_1aee0b26b0726548 =
  RIP.unsafePerformIO hs_bindgen_25bee64f2a94dead

{-# NOINLINE wl_shell_surface_interface #-}
wl_shell_surface_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_shell_surface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_1aee0b26b0726548)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_interface@
foreign import ccall unsafe "hs_bindgen_1e8086e2a77491ed" hs_bindgen_1e8086e2a77491ed_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_surface_interface@
hs_bindgen_1e8086e2a77491ed :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_1e8086e2a77491ed =
  RIP.fromFFIType hs_bindgen_1e8086e2a77491ed_base

{-# NOINLINE hs_bindgen_65dd4a53d13dea9d #-}
{-| __C declaration:__ @wl_surface_interface@

    __defined at:__ @wayland-client-protocol.h 597:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_surface_interface@
-}
hs_bindgen_65dd4a53d13dea9d :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_65dd4a53d13dea9d =
  RIP.unsafePerformIO hs_bindgen_1e8086e2a77491ed

{-# NOINLINE wl_surface_interface #-}
wl_surface_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_surface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_65dd4a53d13dea9d)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_interface@
foreign import ccall unsafe "hs_bindgen_f65bfca9347eb2bc" hs_bindgen_f65bfca9347eb2bc_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_seat_interface@
hs_bindgen_f65bfca9347eb2bc :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_f65bfca9347eb2bc =
  RIP.fromFFIType hs_bindgen_f65bfca9347eb2bc_base

{-# NOINLINE hs_bindgen_0d56362ac943191e #-}
{-| __C declaration:__ @wl_seat_interface@

    __defined at:__ @wayland-client-protocol.h 620:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_seat_interface@
-}
hs_bindgen_0d56362ac943191e :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_0d56362ac943191e =
  RIP.unsafePerformIO hs_bindgen_f65bfca9347eb2bc

{-# NOINLINE wl_seat_interface #-}
wl_seat_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_seat_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0d56362ac943191e)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_interface@
foreign import ccall unsafe "hs_bindgen_9f1a896ec070d287" hs_bindgen_9f1a896ec070d287_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_pointer_interface@
hs_bindgen_9f1a896ec070d287 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_9f1a896ec070d287 =
  RIP.fromFFIType hs_bindgen_9f1a896ec070d287_base

{-# NOINLINE hs_bindgen_c627493291103cdb #-}
{-| __C declaration:__ @wl_pointer_interface@

    __defined at:__ @wayland-client-protocol.h 651:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_pointer_interface@
-}
hs_bindgen_c627493291103cdb :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_c627493291103cdb =
  RIP.unsafePerformIO hs_bindgen_9f1a896ec070d287

{-# NOINLINE wl_pointer_interface #-}
wl_pointer_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_pointer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_c627493291103cdb)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_interface@
foreign import ccall unsafe "hs_bindgen_a6da77fd6c66fe9a" hs_bindgen_a6da77fd6c66fe9a_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_keyboard_interface@
hs_bindgen_a6da77fd6c66fe9a :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_a6da77fd6c66fe9a =
  RIP.fromFFIType hs_bindgen_a6da77fd6c66fe9a_base

{-# NOINLINE hs_bindgen_239e8054da9929fc #-}
{-| __C declaration:__ @wl_keyboard_interface@

    __defined at:__ @wayland-client-protocol.h 690:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_keyboard_interface@
-}
hs_bindgen_239e8054da9929fc :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_239e8054da9929fc =
  RIP.unsafePerformIO hs_bindgen_a6da77fd6c66fe9a

{-# NOINLINE wl_keyboard_interface #-}
wl_keyboard_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_keyboard_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_239e8054da9929fc)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_interface@
foreign import ccall unsafe "hs_bindgen_ac842fb5c1ac4afc" hs_bindgen_ac842fb5c1ac4afc_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_touch_interface@
hs_bindgen_ac842fb5c1ac4afc :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_ac842fb5c1ac4afc =
  RIP.fromFFIType hs_bindgen_ac842fb5c1ac4afc_base

{-# NOINLINE hs_bindgen_41b73f2be745c240 #-}
{-| __C declaration:__ @wl_touch_interface@

    __defined at:__ @wayland-client-protocol.h 721:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_touch_interface@
-}
hs_bindgen_41b73f2be745c240 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_41b73f2be745c240 =
  RIP.unsafePerformIO hs_bindgen_ac842fb5c1ac4afc

{-# NOINLINE wl_touch_interface #-}
wl_touch_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_touch_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_41b73f2be745c240)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_interface@
foreign import ccall unsafe "hs_bindgen_83451d2cc86e4dc1" hs_bindgen_83451d2cc86e4dc1_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_output_interface@
hs_bindgen_83451d2cc86e4dc1 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_83451d2cc86e4dc1 =
  RIP.fromFFIType hs_bindgen_83451d2cc86e4dc1_base

{-# NOINLINE hs_bindgen_5de234722f41aed2 #-}
{-| __C declaration:__ @wl_output_interface@

    __defined at:__ @wayland-client-protocol.h 748:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_output_interface@
-}
hs_bindgen_5de234722f41aed2 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_5de234722f41aed2 =
  RIP.unsafePerformIO hs_bindgen_83451d2cc86e4dc1

{-# NOINLINE wl_output_interface #-}
wl_output_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_output_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5de234722f41aed2)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_interface@
foreign import ccall unsafe "hs_bindgen_acf9464f910deae0" hs_bindgen_acf9464f910deae0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_region_interface@
hs_bindgen_acf9464f910deae0 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_acf9464f910deae0 =
  RIP.fromFFIType hs_bindgen_acf9464f910deae0_base

{-# NOINLINE hs_bindgen_379facbefd0ba3bf #-}
{-| __C declaration:__ @wl_region_interface@

    __defined at:__ @wayland-client-protocol.h 771:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_region_interface@
-}
hs_bindgen_379facbefd0ba3bf :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_379facbefd0ba3bf =
  RIP.unsafePerformIO hs_bindgen_acf9464f910deae0

{-# NOINLINE wl_region_interface #-}
wl_region_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_region_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_379facbefd0ba3bf)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_interface@
foreign import ccall unsafe "hs_bindgen_fa438a7997de9ada" hs_bindgen_fa438a7997de9ada_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subcompositor_interface@
hs_bindgen_fa438a7997de9ada :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_fa438a7997de9ada =
  RIP.fromFFIType hs_bindgen_fa438a7997de9ada_base

{-# NOINLINE hs_bindgen_5a980eb6b4928e90 #-}
{-| __C declaration:__ @wl_subcompositor_interface@

    __defined at:__ @wayland-client-protocol.h 824:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_subcompositor_interface@
-}
hs_bindgen_5a980eb6b4928e90 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_5a980eb6b4928e90 =
  RIP.unsafePerformIO hs_bindgen_fa438a7997de9ada

{-# NOINLINE wl_subcompositor_interface #-}
wl_subcompositor_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_subcompositor_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5a980eb6b4928e90)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_interface@
foreign import ccall unsafe "hs_bindgen_07b46b414d777d49" hs_bindgen_07b46b414d777d49_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_subsurface_interface@
hs_bindgen_07b46b414d777d49 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_07b46b414d777d49 =
  RIP.fromFFIType hs_bindgen_07b46b414d777d49_base

{-# NOINLINE hs_bindgen_0bc84357cc7ab8aa #-}
{-| __C declaration:__ @wl_subsurface_interface@

    __defined at:__ @wayland-client-protocol.h 943:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_subsurface_interface@
-}
hs_bindgen_0bc84357cc7ab8aa :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_0bc84357cc7ab8aa =
  RIP.unsafePerformIO hs_bindgen_07b46b414d777d49

{-# NOINLINE wl_subsurface_interface #-}
wl_subsurface_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_subsurface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0bc84357cc7ab8aa)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_interface@
foreign import ccall unsafe "hs_bindgen_ca67d096411cc7ef" hs_bindgen_ca67d096411cc7ef_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_get_wl_fixes_interface@
hs_bindgen_ca67d096411cc7ef :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_ca67d096411cc7ef =
  RIP.fromFFIType hs_bindgen_ca67d096411cc7ef_base

{-# NOINLINE hs_bindgen_f54a5ff037db81a1 #-}
{-| __C declaration:__ @wl_fixes_interface@

    __defined at:__ @wayland-client-protocol.h 962:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Bindings.Wayland.Client.Generated_wl_fixes_interface@
-}
hs_bindgen_f54a5ff037db81a1 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_f54a5ff037db81a1 =
  RIP.unsafePerformIO hs_bindgen_ca67d096411cc7ef

{-# NOINLINE wl_fixes_interface #-}
wl_fixes_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_fixes_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_f54a5ff037db81a1)

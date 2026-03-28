{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Client.Global
    ( Generated.Wayland.Client.Global.wl_display_interface
    , Generated.Wayland.Client.Global.wl_registry_interface
    , Generated.Wayland.Client.Global.wl_callback_interface
    , Generated.Wayland.Client.Global.wl_compositor_interface
    , Generated.Wayland.Client.Global.wl_shm_pool_interface
    , Generated.Wayland.Client.Global.wl_shm_interface
    , Generated.Wayland.Client.Global.wl_buffer_interface
    , Generated.Wayland.Client.Global.wl_data_offer_interface
    , Generated.Wayland.Client.Global.wl_data_source_interface
    , Generated.Wayland.Client.Global.wl_data_device_interface
    , Generated.Wayland.Client.Global.wl_data_device_manager_interface
    , Generated.Wayland.Client.Global.wl_shell_interface
    , Generated.Wayland.Client.Global.wl_shell_surface_interface
    , Generated.Wayland.Client.Global.wl_surface_interface
    , Generated.Wayland.Client.Global.wl_seat_interface
    , Generated.Wayland.Client.Global.wl_pointer_interface
    , Generated.Wayland.Client.Global.wl_keyboard_interface
    , Generated.Wayland.Client.Global.wl_touch_interface
    , Generated.Wayland.Client.Global.wl_output_interface
    , Generated.Wayland.Client.Global.wl_region_interface
    , Generated.Wayland.Client.Global.wl_subcompositor_interface
    , Generated.Wayland.Client.Global.wl_subsurface_interface
    , Generated.Wayland.Client.Global.wl_fixes_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wayland-client.h>"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_display_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_4d546738db749d0e (void)"
  , "{"
  , "  return &wl_display_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_registry_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_4758cd52ffb855d5 (void)"
  , "{"
  , "  return &wl_registry_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_callback_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_27294c6e6c551695 (void)"
  , "{"
  , "  return &wl_callback_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_718bd82034b7dc65 (void)"
  , "{"
  , "  return &wl_compositor_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_7b6814b37e4119c6 (void)"
  , "{"
  , "  return &wl_shm_pool_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shm_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_1c20b924590a769d (void)"
  , "{"
  , "  return &wl_shm_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_fc8ba431d36f8228 (void)"
  , "{"
  , "  return &wl_buffer_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_08ac8d858edd750b (void)"
  , "{"
  , "  return &wl_data_offer_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_27c3a24c7e526d41 (void)"
  , "{"
  , "  return &wl_data_source_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_05430fc27c09ff76 (void)"
  , "{"
  , "  return &wl_data_device_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_39e64ed956d1a5ac (void)"
  , "{"
  , "  return &wl_data_device_manager_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_7b5ba71f44e33b7b (void)"
  , "{"
  , "  return &wl_shell_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_acb4115559ab3bd0 (void)"
  , "{"
  , "  return &wl_shell_surface_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_surface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_a422819a4c132005 (void)"
  , "{"
  , "  return &wl_surface_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_seat_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_85b51fcdbc7508a7 (void)"
  , "{"
  , "  return &wl_seat_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_b2e385dd9bd0d7e7 (void)"
  , "{"
  , "  return &wl_pointer_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_3bd636cf8a21acd4 (void)"
  , "{"
  , "  return &wl_keyboard_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_touch_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_b2f777f046a34ab6 (void)"
  , "{"
  , "  return &wl_touch_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_output_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_7d417a8c092fe706 (void)"
  , "{"
  , "  return &wl_output_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_region_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_7b105e3b5da7212f (void)"
  , "{"
  , "  return &wl_region_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_99636dc415cceb20 (void)"
  , "{"
  , "  return &wl_subcompositor_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c3bdb63aed6047ed (void)"
  , "{"
  , "  return &wl_subsurface_interface;"
  , "}"
  , "/* hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_235db5ac0c8d3930 (void)"
  , "{"
  , "  return &wl_fixes_interface;"
  , "}"
  ]))

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_interface@
foreign import ccall unsafe "hs_bindgen_4d546738db749d0e" hs_bindgen_4d546738db749d0e_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_display_interface@
hs_bindgen_4d546738db749d0e :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_4d546738db749d0e =
  RIP.fromFFIType hs_bindgen_4d546738db749d0e_base

{-# NOINLINE hs_bindgen_747cd284738aa0f4 #-}
{-| __C declaration:__ @wl_display_interface@

    __defined at:__ @wayland-client-protocol.h 110:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_display_interface@
-}
hs_bindgen_747cd284738aa0f4 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_747cd284738aa0f4 =
  RIP.unsafePerformIO hs_bindgen_4d546738db749d0e

{-# NOINLINE wl_display_interface #-}
wl_display_interface :: Generated.Wayland.Util.Wl_interface
wl_display_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_747cd284738aa0f4)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_interface@
foreign import ccall unsafe "hs_bindgen_4758cd52ffb855d5" hs_bindgen_4758cd52ffb855d5_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_registry_interface@
hs_bindgen_4758cd52ffb855d5 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_4758cd52ffb855d5 =
  RIP.fromFFIType hs_bindgen_4758cd52ffb855d5_base

{-# NOINLINE hs_bindgen_917c248ac76f068b #-}
{-| __C declaration:__ @wl_registry_interface@

    __defined at:__ @wayland-client-protocol.h 165:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_registry_interface@
-}
hs_bindgen_917c248ac76f068b :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_917c248ac76f068b =
  RIP.unsafePerformIO hs_bindgen_4758cd52ffb855d5

{-# NOINLINE wl_registry_interface #-}
wl_registry_interface :: Generated.Wayland.Util.Wl_interface
wl_registry_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_917c248ac76f068b)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_interface@
foreign import ccall unsafe "hs_bindgen_27294c6e6c551695" hs_bindgen_27294c6e6c551695_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_callback_interface@
hs_bindgen_27294c6e6c551695 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_27294c6e6c551695 =
  RIP.fromFFIType hs_bindgen_27294c6e6c551695_base

{-# NOINLINE hs_bindgen_a02219a6ef9bf33f #-}
{-| __C declaration:__ @wl_callback_interface@

    __defined at:__ @wayland-client-protocol.h 190:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_callback_interface@
-}
hs_bindgen_a02219a6ef9bf33f :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_a02219a6ef9bf33f =
  RIP.unsafePerformIO hs_bindgen_27294c6e6c551695

{-# NOINLINE wl_callback_interface #-}
wl_callback_interface :: Generated.Wayland.Util.Wl_interface
wl_callback_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a02219a6ef9bf33f)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_interface@
foreign import ccall unsafe "hs_bindgen_718bd82034b7dc65" hs_bindgen_718bd82034b7dc65_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_compositor_interface@
hs_bindgen_718bd82034b7dc65 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_718bd82034b7dc65 =
  RIP.fromFFIType hs_bindgen_718bd82034b7dc65_base

{-# NOINLINE hs_bindgen_0543725ab8b7726e #-}
{-| __C declaration:__ @wl_compositor_interface@

    __defined at:__ @wayland-client-protocol.h 211:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_compositor_interface@
-}
hs_bindgen_0543725ab8b7726e :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_0543725ab8b7726e =
  RIP.unsafePerformIO hs_bindgen_718bd82034b7dc65

{-# NOINLINE wl_compositor_interface #-}
wl_compositor_interface :: Generated.Wayland.Util.Wl_interface
wl_compositor_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0543725ab8b7726e)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_interface@
foreign import ccall unsafe "hs_bindgen_7b6814b37e4119c6" hs_bindgen_7b6814b37e4119c6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_pool_interface@
hs_bindgen_7b6814b37e4119c6 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_7b6814b37e4119c6 =
  RIP.fromFFIType hs_bindgen_7b6814b37e4119c6_base

{-# NOINLINE hs_bindgen_e045b2ff110e9d13 #-}
{-| __C declaration:__ @wl_shm_pool_interface@

    __defined at:__ @wayland-client-protocol.h 240:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_shm_pool_interface@
-}
hs_bindgen_e045b2ff110e9d13 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_e045b2ff110e9d13 =
  RIP.unsafePerformIO hs_bindgen_7b6814b37e4119c6

{-# NOINLINE wl_shm_pool_interface #-}
wl_shm_pool_interface :: Generated.Wayland.Util.Wl_interface
wl_shm_pool_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_e045b2ff110e9d13)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_interface@
foreign import ccall unsafe "hs_bindgen_1c20b924590a769d" hs_bindgen_1c20b924590a769d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shm_interface@
hs_bindgen_1c20b924590a769d :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_1c20b924590a769d =
  RIP.fromFFIType hs_bindgen_1c20b924590a769d_base

{-# NOINLINE hs_bindgen_5f929ef1c9f7a301 #-}
{-| __C declaration:__ @wl_shm_interface@

    __defined at:__ @wayland-client-protocol.h 273:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_shm_interface@
-}
hs_bindgen_5f929ef1c9f7a301 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_5f929ef1c9f7a301 =
  RIP.unsafePerformIO hs_bindgen_1c20b924590a769d

{-# NOINLINE wl_shm_interface #-}
wl_shm_interface :: Generated.Wayland.Util.Wl_interface
wl_shm_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5f929ef1c9f7a301)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_interface@
foreign import ccall unsafe "hs_bindgen_fc8ba431d36f8228" hs_bindgen_fc8ba431d36f8228_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_buffer_interface@
hs_bindgen_fc8ba431d36f8228 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_fc8ba431d36f8228 =
  RIP.fromFFIType hs_bindgen_fc8ba431d36f8228_base

{-# NOINLINE hs_bindgen_c361b5d2509f69c6 #-}
{-| __C declaration:__ @wl_buffer_interface@

    __defined at:__ @wayland-client-protocol.h 318:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_buffer_interface@
-}
hs_bindgen_c361b5d2509f69c6 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_c361b5d2509f69c6 =
  RIP.unsafePerformIO hs_bindgen_fc8ba431d36f8228

{-# NOINLINE wl_buffer_interface #-}
wl_buffer_interface :: Generated.Wayland.Util.Wl_interface
wl_buffer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_c361b5d2509f69c6)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_interface@
foreign import ccall unsafe "hs_bindgen_08ac8d858edd750b" hs_bindgen_08ac8d858edd750b_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_offer_interface@
hs_bindgen_08ac8d858edd750b :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_08ac8d858edd750b =
  RIP.fromFFIType hs_bindgen_08ac8d858edd750b_base

{-# NOINLINE hs_bindgen_179a819da9ff5978 #-}
{-| __C declaration:__ @wl_data_offer_interface@

    __defined at:__ @wayland-client-protocol.h 345:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_data_offer_interface@
-}
hs_bindgen_179a819da9ff5978 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_179a819da9ff5978 =
  RIP.unsafePerformIO hs_bindgen_08ac8d858edd750b

{-# NOINLINE wl_data_offer_interface #-}
wl_data_offer_interface :: Generated.Wayland.Util.Wl_interface
wl_data_offer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_179a819da9ff5978)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_interface@
foreign import ccall unsafe "hs_bindgen_27c3a24c7e526d41" hs_bindgen_27c3a24c7e526d41_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_source_interface@
hs_bindgen_27c3a24c7e526d41 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_27c3a24c7e526d41 =
  RIP.fromFFIType hs_bindgen_27c3a24c7e526d41_base

{-# NOINLINE hs_bindgen_990ecc1558bbfa9e #-}
{-| __C declaration:__ @wl_data_source_interface@

    __defined at:__ @wayland-client-protocol.h 368:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_data_source_interface@
-}
hs_bindgen_990ecc1558bbfa9e :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_990ecc1558bbfa9e =
  RIP.unsafePerformIO hs_bindgen_27c3a24c7e526d41

{-# NOINLINE wl_data_source_interface #-}
wl_data_source_interface :: Generated.Wayland.Util.Wl_interface
wl_data_source_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_990ecc1558bbfa9e)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_interface@
foreign import ccall unsafe "hs_bindgen_05430fc27c09ff76" hs_bindgen_05430fc27c09ff76_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_interface@
hs_bindgen_05430fc27c09ff76 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_05430fc27c09ff76 =
  RIP.fromFFIType hs_bindgen_05430fc27c09ff76_base

{-# NOINLINE hs_bindgen_bf18975f5e8e93ed #-}
{-| __C declaration:__ @wl_data_device_interface@

    __defined at:__ @wayland-client-protocol.h 393:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_data_device_interface@
-}
hs_bindgen_bf18975f5e8e93ed :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_bf18975f5e8e93ed =
  RIP.unsafePerformIO hs_bindgen_05430fc27c09ff76

{-# NOINLINE wl_data_device_interface #-}
wl_data_device_interface :: Generated.Wayland.Util.Wl_interface
wl_data_device_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_bf18975f5e8e93ed)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_interface@
foreign import ccall unsafe "hs_bindgen_39e64ed956d1a5ac" hs_bindgen_39e64ed956d1a5ac_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_data_device_manager_interface@
hs_bindgen_39e64ed956d1a5ac :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_39e64ed956d1a5ac =
  RIP.fromFFIType hs_bindgen_39e64ed956d1a5ac_base

{-# NOINLINE hs_bindgen_017ef37ae340e154 #-}
{-| __C declaration:__ @wl_data_device_manager_interface@

    __defined at:__ @wayland-client-protocol.h 428:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_data_device_manager_interface@
-}
hs_bindgen_017ef37ae340e154 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_017ef37ae340e154 =
  RIP.unsafePerformIO hs_bindgen_39e64ed956d1a5ac

{-# NOINLINE wl_data_device_manager_interface #-}
wl_data_device_manager_interface :: Generated.Wayland.Util.Wl_interface
wl_data_device_manager_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_017ef37ae340e154)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_interface@
foreign import ccall unsafe "hs_bindgen_7b5ba71f44e33b7b" hs_bindgen_7b5ba71f44e33b7b_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_interface@
hs_bindgen_7b5ba71f44e33b7b :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_7b5ba71f44e33b7b =
  RIP.fromFFIType hs_bindgen_7b5ba71f44e33b7b_base

{-# NOINLINE hs_bindgen_675ef67384cd6c76 #-}
{-| __C declaration:__ @wl_shell_interface@

    __defined at:__ @wayland-client-protocol.h 461:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_shell_interface@
-}
hs_bindgen_675ef67384cd6c76 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_675ef67384cd6c76 =
  RIP.unsafePerformIO hs_bindgen_7b5ba71f44e33b7b

{-# NOINLINE wl_shell_interface #-}
wl_shell_interface :: Generated.Wayland.Util.Wl_interface
wl_shell_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_675ef67384cd6c76)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_interface@
foreign import ccall unsafe "hs_bindgen_acb4115559ab3bd0" hs_bindgen_acb4115559ab3bd0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_shell_surface_interface@
hs_bindgen_acb4115559ab3bd0 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_acb4115559ab3bd0 =
  RIP.fromFFIType hs_bindgen_acb4115559ab3bd0_base

{-# NOINLINE hs_bindgen_1b7f9b6e7ca31e05 #-}
{-| __C declaration:__ @wl_shell_surface_interface@

    __defined at:__ @wayland-client-protocol.h 498:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_shell_surface_interface@
-}
hs_bindgen_1b7f9b6e7ca31e05 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_1b7f9b6e7ca31e05 =
  RIP.unsafePerformIO hs_bindgen_acb4115559ab3bd0

{-# NOINLINE wl_shell_surface_interface #-}
wl_shell_surface_interface :: Generated.Wayland.Util.Wl_interface
wl_shell_surface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_1b7f9b6e7ca31e05)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_interface@
foreign import ccall unsafe "hs_bindgen_a422819a4c132005" hs_bindgen_a422819a4c132005_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_surface_interface@
hs_bindgen_a422819a4c132005 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_a422819a4c132005 =
  RIP.fromFFIType hs_bindgen_a422819a4c132005_base

{-# NOINLINE hs_bindgen_0f731eb69fb781bd #-}
{-| __C declaration:__ @wl_surface_interface@

    __defined at:__ @wayland-client-protocol.h 597:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_surface_interface@
-}
hs_bindgen_0f731eb69fb781bd :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_0f731eb69fb781bd =
  RIP.unsafePerformIO hs_bindgen_a422819a4c132005

{-# NOINLINE wl_surface_interface #-}
wl_surface_interface :: Generated.Wayland.Util.Wl_interface
wl_surface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0f731eb69fb781bd)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_interface@
foreign import ccall unsafe "hs_bindgen_85b51fcdbc7508a7" hs_bindgen_85b51fcdbc7508a7_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_seat_interface@
hs_bindgen_85b51fcdbc7508a7 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_85b51fcdbc7508a7 =
  RIP.fromFFIType hs_bindgen_85b51fcdbc7508a7_base

{-# NOINLINE hs_bindgen_0a6e14cb4944b5a3 #-}
{-| __C declaration:__ @wl_seat_interface@

    __defined at:__ @wayland-client-protocol.h 620:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_seat_interface@
-}
hs_bindgen_0a6e14cb4944b5a3 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_0a6e14cb4944b5a3 =
  RIP.unsafePerformIO hs_bindgen_85b51fcdbc7508a7

{-# NOINLINE wl_seat_interface #-}
wl_seat_interface :: Generated.Wayland.Util.Wl_interface
wl_seat_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0a6e14cb4944b5a3)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_interface@
foreign import ccall unsafe "hs_bindgen_b2e385dd9bd0d7e7" hs_bindgen_b2e385dd9bd0d7e7_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_pointer_interface@
hs_bindgen_b2e385dd9bd0d7e7 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_b2e385dd9bd0d7e7 =
  RIP.fromFFIType hs_bindgen_b2e385dd9bd0d7e7_base

{-# NOINLINE hs_bindgen_0637211becc9f22b #-}
{-| __C declaration:__ @wl_pointer_interface@

    __defined at:__ @wayland-client-protocol.h 651:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_pointer_interface@
-}
hs_bindgen_0637211becc9f22b :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_0637211becc9f22b =
  RIP.unsafePerformIO hs_bindgen_b2e385dd9bd0d7e7

{-# NOINLINE wl_pointer_interface #-}
wl_pointer_interface :: Generated.Wayland.Util.Wl_interface
wl_pointer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0637211becc9f22b)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_interface@
foreign import ccall unsafe "hs_bindgen_3bd636cf8a21acd4" hs_bindgen_3bd636cf8a21acd4_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_keyboard_interface@
hs_bindgen_3bd636cf8a21acd4 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_3bd636cf8a21acd4 =
  RIP.fromFFIType hs_bindgen_3bd636cf8a21acd4_base

{-# NOINLINE hs_bindgen_e3a83c1e41097599 #-}
{-| __C declaration:__ @wl_keyboard_interface@

    __defined at:__ @wayland-client-protocol.h 690:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_keyboard_interface@
-}
hs_bindgen_e3a83c1e41097599 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_e3a83c1e41097599 =
  RIP.unsafePerformIO hs_bindgen_3bd636cf8a21acd4

{-# NOINLINE wl_keyboard_interface #-}
wl_keyboard_interface :: Generated.Wayland.Util.Wl_interface
wl_keyboard_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_e3a83c1e41097599)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_interface@
foreign import ccall unsafe "hs_bindgen_b2f777f046a34ab6" hs_bindgen_b2f777f046a34ab6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_touch_interface@
hs_bindgen_b2f777f046a34ab6 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_b2f777f046a34ab6 =
  RIP.fromFFIType hs_bindgen_b2f777f046a34ab6_base

{-# NOINLINE hs_bindgen_d39348a5a71a0d67 #-}
{-| __C declaration:__ @wl_touch_interface@

    __defined at:__ @wayland-client-protocol.h 721:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_touch_interface@
-}
hs_bindgen_d39348a5a71a0d67 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_d39348a5a71a0d67 =
  RIP.unsafePerformIO hs_bindgen_b2f777f046a34ab6

{-# NOINLINE wl_touch_interface #-}
wl_touch_interface :: Generated.Wayland.Util.Wl_interface
wl_touch_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d39348a5a71a0d67)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_interface@
foreign import ccall unsafe "hs_bindgen_7d417a8c092fe706" hs_bindgen_7d417a8c092fe706_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_output_interface@
hs_bindgen_7d417a8c092fe706 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_7d417a8c092fe706 =
  RIP.fromFFIType hs_bindgen_7d417a8c092fe706_base

{-# NOINLINE hs_bindgen_71054bf99f218714 #-}
{-| __C declaration:__ @wl_output_interface@

    __defined at:__ @wayland-client-protocol.h 748:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_output_interface@
-}
hs_bindgen_71054bf99f218714 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_71054bf99f218714 =
  RIP.unsafePerformIO hs_bindgen_7d417a8c092fe706

{-# NOINLINE wl_output_interface #-}
wl_output_interface :: Generated.Wayland.Util.Wl_interface
wl_output_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_71054bf99f218714)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_interface@
foreign import ccall unsafe "hs_bindgen_7b105e3b5da7212f" hs_bindgen_7b105e3b5da7212f_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_region_interface@
hs_bindgen_7b105e3b5da7212f :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_7b105e3b5da7212f =
  RIP.fromFFIType hs_bindgen_7b105e3b5da7212f_base

{-# NOINLINE hs_bindgen_baac51fa4c03028d #-}
{-| __C declaration:__ @wl_region_interface@

    __defined at:__ @wayland-client-protocol.h 771:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_region_interface@
-}
hs_bindgen_baac51fa4c03028d :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_baac51fa4c03028d =
  RIP.unsafePerformIO hs_bindgen_7b105e3b5da7212f

{-# NOINLINE wl_region_interface #-}
wl_region_interface :: Generated.Wayland.Util.Wl_interface
wl_region_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_baac51fa4c03028d)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_interface@
foreign import ccall unsafe "hs_bindgen_99636dc415cceb20" hs_bindgen_99636dc415cceb20_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subcompositor_interface@
hs_bindgen_99636dc415cceb20 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_99636dc415cceb20 =
  RIP.fromFFIType hs_bindgen_99636dc415cceb20_base

{-# NOINLINE hs_bindgen_333704f3b6d2aa1e #-}
{-| __C declaration:__ @wl_subcompositor_interface@

    __defined at:__ @wayland-client-protocol.h 824:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_subcompositor_interface@
-}
hs_bindgen_333704f3b6d2aa1e :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_333704f3b6d2aa1e =
  RIP.unsafePerformIO hs_bindgen_99636dc415cceb20

{-# NOINLINE wl_subcompositor_interface #-}
wl_subcompositor_interface :: Generated.Wayland.Util.Wl_interface
wl_subcompositor_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_333704f3b6d2aa1e)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_interface@
foreign import ccall unsafe "hs_bindgen_c3bdb63aed6047ed" hs_bindgen_c3bdb63aed6047ed_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_subsurface_interface@
hs_bindgen_c3bdb63aed6047ed :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_c3bdb63aed6047ed =
  RIP.fromFFIType hs_bindgen_c3bdb63aed6047ed_base

{-# NOINLINE hs_bindgen_360f6ca72002cd7c #-}
{-| __C declaration:__ @wl_subsurface_interface@

    __defined at:__ @wayland-client-protocol.h 943:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_subsurface_interface@
-}
hs_bindgen_360f6ca72002cd7c :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_360f6ca72002cd7c =
  RIP.unsafePerformIO hs_bindgen_c3bdb63aed6047ed

{-# NOINLINE wl_subsurface_interface #-}
wl_subsurface_interface :: Generated.Wayland.Util.Wl_interface
wl_subsurface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_360f6ca72002cd7c)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_interface@
foreign import ccall unsafe "hs_bindgen_235db5ac0c8d3930" hs_bindgen_235db5ac0c8d3930_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_wl_client_Generated.Wayland.Client_get_wl_fixes_interface@
hs_bindgen_235db5ac0c8d3930 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_235db5ac0c8d3930 =
  RIP.fromFFIType hs_bindgen_235db5ac0c8d3930_base

{-# NOINLINE hs_bindgen_475df8db58766b82 #-}
{-| __C declaration:__ @wl_fixes_interface@

    __defined at:__ @wayland-client-protocol.h 962:34@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@

    __unique:__ @hswm_wl_client_Generated.Wayland.Client_wl_fixes_interface@
-}
hs_bindgen_475df8db58766b82 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_475df8db58766b82 =
  RIP.unsafePerformIO hs_bindgen_235db5ac0c8d3930

{-# NOINLINE wl_fixes_interface #-}
wl_fixes_interface :: Generated.Wayland.Util.Wl_interface
wl_fixes_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_475df8db58766b82)

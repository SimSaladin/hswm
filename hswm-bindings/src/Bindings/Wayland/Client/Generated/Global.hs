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
  [ "#include <wayland-client-protocol.h>"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_5bca9df8710e6a7e (void)"
  , "{"
  , "  return &wl_display_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_92c77ea3533154cc (void)"
  , "{"
  , "  return &wl_registry_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_4dc5a6c9d679d232 (void)"
  , "{"
  , "  return &wl_callback_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_b9bfbbea506dacd2 (void)"
  , "{"
  , "  return &wl_compositor_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c0086b396ae072ee (void)"
  , "{"
  , "  return &wl_shm_pool_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_1dbe7af6233d4f94 (void)"
  , "{"
  , "  return &wl_shm_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_68c9979ec16f8fb7 (void)"
  , "{"
  , "  return &wl_buffer_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_ccf872579548e998 (void)"
  , "{"
  , "  return &wl_data_offer_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_0d9e4192f2530306 (void)"
  , "{"
  , "  return &wl_data_source_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_217b0131df65fa7d (void)"
  , "{"
  , "  return &wl_data_device_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_08a84c6de1835b43 (void)"
  , "{"
  , "  return &wl_data_device_manager_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_b224adb789396fca (void)"
  , "{"
  , "  return &wl_shell_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c8be7273879c9474 (void)"
  , "{"
  , "  return &wl_shell_surface_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_fe9c458d2c2d0188 (void)"
  , "{"
  , "  return &wl_surface_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_bbffd2a7a7d3f819 (void)"
  , "{"
  , "  return &wl_seat_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_01f4381ed9ab418e (void)"
  , "{"
  , "  return &wl_pointer_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_19afabf7d1af5746 (void)"
  , "{"
  , "  return &wl_keyboard_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_628eb5e2fb2eef8f (void)"
  , "{"
  , "  return &wl_touch_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_a21c43ba0feba183 (void)"
  , "{"
  , "  return &wl_output_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_d40b887d2bade940 (void)"
  , "{"
  , "  return &wl_region_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_341346cccd6acb17 (void)"
  , "{"
  , "  return &wl_subcompositor_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_dfe3004359d73de6 (void)"
  , "{"
  , "  return &wl_subsurface_interface;"
  , "}"
  , "/* Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c581dac03d0bed84 (void)"
  , "{"
  , "  return &wl_fixes_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_interface@
foreign import ccall unsafe "hs_bindgen_5bca9df8710e6a7e" hs_bindgen_5bca9df8710e6a7e_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_display_interface@
hs_bindgen_5bca9df8710e6a7e :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_5bca9df8710e6a7e =
  RIP.fromFFIType hs_bindgen_5bca9df8710e6a7e_base

{-# NOINLINE hs_bindgen_f55d6ae5f9905f04 #-}
{-| __C declaration:__ @wl_display_interface@

    __defined at:__ @wayland-client-protocol.h 110:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_display_interface@
-}
hs_bindgen_f55d6ae5f9905f04 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_f55d6ae5f9905f04 =
  RIP.unsafePerformIO hs_bindgen_5bca9df8710e6a7e

{-# NOINLINE wl_display_interface #-}
wl_display_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_display_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_f55d6ae5f9905f04)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_interface@
foreign import ccall unsafe "hs_bindgen_92c77ea3533154cc" hs_bindgen_92c77ea3533154cc_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_registry_interface@
hs_bindgen_92c77ea3533154cc :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_92c77ea3533154cc =
  RIP.fromFFIType hs_bindgen_92c77ea3533154cc_base

{-# NOINLINE hs_bindgen_a999511c4efcf6b7 #-}
{-| __C declaration:__ @wl_registry_interface@

    __defined at:__ @wayland-client-protocol.h 165:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_registry_interface@
-}
hs_bindgen_a999511c4efcf6b7 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_a999511c4efcf6b7 =
  RIP.unsafePerformIO hs_bindgen_92c77ea3533154cc

{-# NOINLINE wl_registry_interface #-}
wl_registry_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_registry_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a999511c4efcf6b7)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_interface@
foreign import ccall unsafe "hs_bindgen_4dc5a6c9d679d232" hs_bindgen_4dc5a6c9d679d232_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_callback_interface@
hs_bindgen_4dc5a6c9d679d232 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_4dc5a6c9d679d232 =
  RIP.fromFFIType hs_bindgen_4dc5a6c9d679d232_base

{-# NOINLINE hs_bindgen_31f1dbbf5d9962c0 #-}
{-| __C declaration:__ @wl_callback_interface@

    __defined at:__ @wayland-client-protocol.h 190:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_callback_interface@
-}
hs_bindgen_31f1dbbf5d9962c0 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_31f1dbbf5d9962c0 =
  RIP.unsafePerformIO hs_bindgen_4dc5a6c9d679d232

{-# NOINLINE wl_callback_interface #-}
wl_callback_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_callback_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_31f1dbbf5d9962c0)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_interface@
foreign import ccall unsafe "hs_bindgen_b9bfbbea506dacd2" hs_bindgen_b9bfbbea506dacd2_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_compositor_interface@
hs_bindgen_b9bfbbea506dacd2 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_b9bfbbea506dacd2 =
  RIP.fromFFIType hs_bindgen_b9bfbbea506dacd2_base

{-# NOINLINE hs_bindgen_7c49c8f7c609872f #-}
{-| __C declaration:__ @wl_compositor_interface@

    __defined at:__ @wayland-client-protocol.h 211:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_compositor_interface@
-}
hs_bindgen_7c49c8f7c609872f :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_7c49c8f7c609872f =
  RIP.unsafePerformIO hs_bindgen_b9bfbbea506dacd2

{-# NOINLINE wl_compositor_interface #-}
wl_compositor_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_compositor_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_7c49c8f7c609872f)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_interface@
foreign import ccall unsafe "hs_bindgen_c0086b396ae072ee" hs_bindgen_c0086b396ae072ee_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_pool_interface@
hs_bindgen_c0086b396ae072ee :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_c0086b396ae072ee =
  RIP.fromFFIType hs_bindgen_c0086b396ae072ee_base

{-# NOINLINE hs_bindgen_80d1614ba7b0ef62 #-}
{-| __C declaration:__ @wl_shm_pool_interface@

    __defined at:__ @wayland-client-protocol.h 240:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_shm_pool_interface@
-}
hs_bindgen_80d1614ba7b0ef62 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_80d1614ba7b0ef62 =
  RIP.unsafePerformIO hs_bindgen_c0086b396ae072ee

{-# NOINLINE wl_shm_pool_interface #-}
wl_shm_pool_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_shm_pool_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_80d1614ba7b0ef62)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_interface@
foreign import ccall unsafe "hs_bindgen_1dbe7af6233d4f94" hs_bindgen_1dbe7af6233d4f94_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shm_interface@
hs_bindgen_1dbe7af6233d4f94 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_1dbe7af6233d4f94 =
  RIP.fromFFIType hs_bindgen_1dbe7af6233d4f94_base

{-# NOINLINE hs_bindgen_7e58d7e2489ccf59 #-}
{-| __C declaration:__ @wl_shm_interface@

    __defined at:__ @wayland-client-protocol.h 273:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_shm_interface@
-}
hs_bindgen_7e58d7e2489ccf59 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_7e58d7e2489ccf59 =
  RIP.unsafePerformIO hs_bindgen_1dbe7af6233d4f94

{-# NOINLINE wl_shm_interface #-}
wl_shm_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_shm_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_7e58d7e2489ccf59)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_interface@
foreign import ccall unsafe "hs_bindgen_68c9979ec16f8fb7" hs_bindgen_68c9979ec16f8fb7_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_buffer_interface@
hs_bindgen_68c9979ec16f8fb7 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_68c9979ec16f8fb7 =
  RIP.fromFFIType hs_bindgen_68c9979ec16f8fb7_base

{-# NOINLINE hs_bindgen_552965a10e406770 #-}
{-| __C declaration:__ @wl_buffer_interface@

    __defined at:__ @wayland-client-protocol.h 318:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_buffer_interface@
-}
hs_bindgen_552965a10e406770 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_552965a10e406770 =
  RIP.unsafePerformIO hs_bindgen_68c9979ec16f8fb7

{-# NOINLINE wl_buffer_interface #-}
wl_buffer_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_buffer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_552965a10e406770)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_interface@
foreign import ccall unsafe "hs_bindgen_ccf872579548e998" hs_bindgen_ccf872579548e998_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_offer_interface@
hs_bindgen_ccf872579548e998 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_ccf872579548e998 =
  RIP.fromFFIType hs_bindgen_ccf872579548e998_base

{-# NOINLINE hs_bindgen_e704b3d5ae287532 #-}
{-| __C declaration:__ @wl_data_offer_interface@

    __defined at:__ @wayland-client-protocol.h 345:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_data_offer_interface@
-}
hs_bindgen_e704b3d5ae287532 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_e704b3d5ae287532 =
  RIP.unsafePerformIO hs_bindgen_ccf872579548e998

{-# NOINLINE wl_data_offer_interface #-}
wl_data_offer_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_data_offer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_e704b3d5ae287532)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_interface@
foreign import ccall unsafe "hs_bindgen_0d9e4192f2530306" hs_bindgen_0d9e4192f2530306_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_source_interface@
hs_bindgen_0d9e4192f2530306 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_0d9e4192f2530306 =
  RIP.fromFFIType hs_bindgen_0d9e4192f2530306_base

{-# NOINLINE hs_bindgen_1423d6316ff21aa6 #-}
{-| __C declaration:__ @wl_data_source_interface@

    __defined at:__ @wayland-client-protocol.h 368:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_data_source_interface@
-}
hs_bindgen_1423d6316ff21aa6 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_1423d6316ff21aa6 =
  RIP.unsafePerformIO hs_bindgen_0d9e4192f2530306

{-# NOINLINE wl_data_source_interface #-}
wl_data_source_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_data_source_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_1423d6316ff21aa6)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_interface@
foreign import ccall unsafe "hs_bindgen_217b0131df65fa7d" hs_bindgen_217b0131df65fa7d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_interface@
hs_bindgen_217b0131df65fa7d :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_217b0131df65fa7d =
  RIP.fromFFIType hs_bindgen_217b0131df65fa7d_base

{-# NOINLINE hs_bindgen_a265550849d12e36 #-}
{-| __C declaration:__ @wl_data_device_interface@

    __defined at:__ @wayland-client-protocol.h 393:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_data_device_interface@
-}
hs_bindgen_a265550849d12e36 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_a265550849d12e36 =
  RIP.unsafePerformIO hs_bindgen_217b0131df65fa7d

{-# NOINLINE wl_data_device_interface #-}
wl_data_device_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_data_device_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a265550849d12e36)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_interface@
foreign import ccall unsafe "hs_bindgen_08a84c6de1835b43" hs_bindgen_08a84c6de1835b43_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_data_device_manager_interface@
hs_bindgen_08a84c6de1835b43 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_08a84c6de1835b43 =
  RIP.fromFFIType hs_bindgen_08a84c6de1835b43_base

{-# NOINLINE hs_bindgen_2b52560310c85ba4 #-}
{-| __C declaration:__ @wl_data_device_manager_interface@

    __defined at:__ @wayland-client-protocol.h 428:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_data_device_manager_interface@
-}
hs_bindgen_2b52560310c85ba4 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_2b52560310c85ba4 =
  RIP.unsafePerformIO hs_bindgen_08a84c6de1835b43

{-# NOINLINE wl_data_device_manager_interface #-}
wl_data_device_manager_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_data_device_manager_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_2b52560310c85ba4)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_interface@
foreign import ccall unsafe "hs_bindgen_b224adb789396fca" hs_bindgen_b224adb789396fca_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_interface@
hs_bindgen_b224adb789396fca :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_b224adb789396fca =
  RIP.fromFFIType hs_bindgen_b224adb789396fca_base

{-# NOINLINE hs_bindgen_2dce363061d53712 #-}
{-| __C declaration:__ @wl_shell_interface@

    __defined at:__ @wayland-client-protocol.h 461:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_shell_interface@
-}
hs_bindgen_2dce363061d53712 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_2dce363061d53712 =
  RIP.unsafePerformIO hs_bindgen_b224adb789396fca

{-# NOINLINE wl_shell_interface #-}
wl_shell_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_shell_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_2dce363061d53712)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_interface@
foreign import ccall unsafe "hs_bindgen_c8be7273879c9474" hs_bindgen_c8be7273879c9474_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_shell_surface_interface@
hs_bindgen_c8be7273879c9474 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_c8be7273879c9474 =
  RIP.fromFFIType hs_bindgen_c8be7273879c9474_base

{-# NOINLINE hs_bindgen_1f00f0013c4b2197 #-}
{-| __C declaration:__ @wl_shell_surface_interface@

    __defined at:__ @wayland-client-protocol.h 498:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_shell_surface_interface@
-}
hs_bindgen_1f00f0013c4b2197 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_1f00f0013c4b2197 =
  RIP.unsafePerformIO hs_bindgen_c8be7273879c9474

{-# NOINLINE wl_shell_surface_interface #-}
wl_shell_surface_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_shell_surface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_1f00f0013c4b2197)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_interface@
foreign import ccall unsafe "hs_bindgen_fe9c458d2c2d0188" hs_bindgen_fe9c458d2c2d0188_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_surface_interface@
hs_bindgen_fe9c458d2c2d0188 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_fe9c458d2c2d0188 =
  RIP.fromFFIType hs_bindgen_fe9c458d2c2d0188_base

{-# NOINLINE hs_bindgen_b6285b4f620c46d2 #-}
{-| __C declaration:__ @wl_surface_interface@

    __defined at:__ @wayland-client-protocol.h 597:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_surface_interface@
-}
hs_bindgen_b6285b4f620c46d2 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_b6285b4f620c46d2 =
  RIP.unsafePerformIO hs_bindgen_fe9c458d2c2d0188

{-# NOINLINE wl_surface_interface #-}
wl_surface_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_surface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_b6285b4f620c46d2)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_interface@
foreign import ccall unsafe "hs_bindgen_bbffd2a7a7d3f819" hs_bindgen_bbffd2a7a7d3f819_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_seat_interface@
hs_bindgen_bbffd2a7a7d3f819 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_bbffd2a7a7d3f819 =
  RIP.fromFFIType hs_bindgen_bbffd2a7a7d3f819_base

{-# NOINLINE hs_bindgen_63b1ea66ffec6105 #-}
{-| __C declaration:__ @wl_seat_interface@

    __defined at:__ @wayland-client-protocol.h 620:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_seat_interface@
-}
hs_bindgen_63b1ea66ffec6105 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_63b1ea66ffec6105 =
  RIP.unsafePerformIO hs_bindgen_bbffd2a7a7d3f819

{-# NOINLINE wl_seat_interface #-}
wl_seat_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_seat_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_63b1ea66ffec6105)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_interface@
foreign import ccall unsafe "hs_bindgen_01f4381ed9ab418e" hs_bindgen_01f4381ed9ab418e_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_pointer_interface@
hs_bindgen_01f4381ed9ab418e :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_01f4381ed9ab418e =
  RIP.fromFFIType hs_bindgen_01f4381ed9ab418e_base

{-# NOINLINE hs_bindgen_462aa20ed6d242b6 #-}
{-| __C declaration:__ @wl_pointer_interface@

    __defined at:__ @wayland-client-protocol.h 651:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_pointer_interface@
-}
hs_bindgen_462aa20ed6d242b6 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_462aa20ed6d242b6 =
  RIP.unsafePerformIO hs_bindgen_01f4381ed9ab418e

{-# NOINLINE wl_pointer_interface #-}
wl_pointer_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_pointer_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_462aa20ed6d242b6)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_interface@
foreign import ccall unsafe "hs_bindgen_19afabf7d1af5746" hs_bindgen_19afabf7d1af5746_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_keyboard_interface@
hs_bindgen_19afabf7d1af5746 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_19afabf7d1af5746 =
  RIP.fromFFIType hs_bindgen_19afabf7d1af5746_base

{-# NOINLINE hs_bindgen_f9b387dcfaf5fc8c #-}
{-| __C declaration:__ @wl_keyboard_interface@

    __defined at:__ @wayland-client-protocol.h 690:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_keyboard_interface@
-}
hs_bindgen_f9b387dcfaf5fc8c :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_f9b387dcfaf5fc8c =
  RIP.unsafePerformIO hs_bindgen_19afabf7d1af5746

{-# NOINLINE wl_keyboard_interface #-}
wl_keyboard_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_keyboard_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_f9b387dcfaf5fc8c)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_interface@
foreign import ccall unsafe "hs_bindgen_628eb5e2fb2eef8f" hs_bindgen_628eb5e2fb2eef8f_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_touch_interface@
hs_bindgen_628eb5e2fb2eef8f :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_628eb5e2fb2eef8f =
  RIP.fromFFIType hs_bindgen_628eb5e2fb2eef8f_base

{-# NOINLINE hs_bindgen_d97c4c9ac5f1b95f #-}
{-| __C declaration:__ @wl_touch_interface@

    __defined at:__ @wayland-client-protocol.h 721:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_touch_interface@
-}
hs_bindgen_d97c4c9ac5f1b95f :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_d97c4c9ac5f1b95f =
  RIP.unsafePerformIO hs_bindgen_628eb5e2fb2eef8f

{-# NOINLINE wl_touch_interface #-}
wl_touch_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_touch_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d97c4c9ac5f1b95f)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_interface@
foreign import ccall unsafe "hs_bindgen_a21c43ba0feba183" hs_bindgen_a21c43ba0feba183_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_output_interface@
hs_bindgen_a21c43ba0feba183 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_a21c43ba0feba183 =
  RIP.fromFFIType hs_bindgen_a21c43ba0feba183_base

{-# NOINLINE hs_bindgen_4fecbbf3ed076a86 #-}
{-| __C declaration:__ @wl_output_interface@

    __defined at:__ @wayland-client-protocol.h 748:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_output_interface@
-}
hs_bindgen_4fecbbf3ed076a86 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_4fecbbf3ed076a86 =
  RIP.unsafePerformIO hs_bindgen_a21c43ba0feba183

{-# NOINLINE wl_output_interface #-}
wl_output_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_output_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_4fecbbf3ed076a86)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_interface@
foreign import ccall unsafe "hs_bindgen_d40b887d2bade940" hs_bindgen_d40b887d2bade940_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_region_interface@
hs_bindgen_d40b887d2bade940 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_d40b887d2bade940 =
  RIP.fromFFIType hs_bindgen_d40b887d2bade940_base

{-# NOINLINE hs_bindgen_1540357ecbbe872d #-}
{-| __C declaration:__ @wl_region_interface@

    __defined at:__ @wayland-client-protocol.h 771:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_region_interface@
-}
hs_bindgen_1540357ecbbe872d :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_1540357ecbbe872d =
  RIP.unsafePerformIO hs_bindgen_d40b887d2bade940

{-# NOINLINE wl_region_interface #-}
wl_region_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_region_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_1540357ecbbe872d)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_interface@
foreign import ccall unsafe "hs_bindgen_341346cccd6acb17" hs_bindgen_341346cccd6acb17_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subcompositor_interface@
hs_bindgen_341346cccd6acb17 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_341346cccd6acb17 =
  RIP.fromFFIType hs_bindgen_341346cccd6acb17_base

{-# NOINLINE hs_bindgen_5245d2b24d37eb6e #-}
{-| __C declaration:__ @wl_subcompositor_interface@

    __defined at:__ @wayland-client-protocol.h 824:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_subcompositor_interface@
-}
hs_bindgen_5245d2b24d37eb6e :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_5245d2b24d37eb6e =
  RIP.unsafePerformIO hs_bindgen_341346cccd6acb17

{-# NOINLINE wl_subcompositor_interface #-}
wl_subcompositor_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_subcompositor_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5245d2b24d37eb6e)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_interface@
foreign import ccall unsafe "hs_bindgen_dfe3004359d73de6" hs_bindgen_dfe3004359d73de6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_subsurface_interface@
hs_bindgen_dfe3004359d73de6 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_dfe3004359d73de6 =
  RIP.fromFFIType hs_bindgen_dfe3004359d73de6_base

{-# NOINLINE hs_bindgen_5ffac2d59c11732a #-}
{-| __C declaration:__ @wl_subsurface_interface@

    __defined at:__ @wayland-client-protocol.h 943:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_subsurface_interface@
-}
hs_bindgen_5ffac2d59c11732a :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_5ffac2d59c11732a =
  RIP.unsafePerformIO hs_bindgen_dfe3004359d73de6

{-# NOINLINE wl_subsurface_interface #-}
wl_subsurface_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_subsurface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5ffac2d59c11732a)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_interface@
foreign import ccall unsafe "hs_bindgen_c581dac03d0bed84" hs_bindgen_c581dac03d0bed84_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_get_wl_fixes_interface@
hs_bindgen_c581dac03d0bed84 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_c581dac03d0bed84 =
  RIP.fromFFIType hs_bindgen_c581dac03d0bed84_base

{-# NOINLINE hs_bindgen_a976f2f027c3f39a #-}
{-| __C declaration:__ @wl_fixes_interface@

    __defined at:__ @wayland-client-protocol.h 962:34@

    __exported by:__ @wayland-client-protocol.h@, @wayland-client.h@, @wayland-client-protocol.h@

    __unique:__ @Bindings_Wayland_Client_Generated_Bindings.Wayland.Client.Generated_wl_fixes_interface@
-}
hs_bindgen_a976f2f027c3f39a :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_a976f2f027c3f39a =
  RIP.unsafePerformIO hs_bindgen_c581dac03d0bed84

{-# NOINLINE wl_fixes_interface #-}
wl_fixes_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wl_fixes_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a976f2f027c3f39a)

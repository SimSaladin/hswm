{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.LibinputConfigV1.Generated.Unsafe
    ( Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_config_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_config_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_config_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_config_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_config_v1_stop
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_config_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_config_v1_create_accel_config
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_send_events
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_tap
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_tap_button_map
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_drag
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_drag_lock
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_three_finger_drag
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_calibration_matrix
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_accel_profile
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_accel_speed
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_apply_accel_config
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_natural_scroll
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_left_handed
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_click_method
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_clickfinger_button_map
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_middle_emulation
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_scroll_method
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_scroll_button
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_scroll_button_lock
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_dwt
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_dwtp
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_device_v1_set_rotation
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_accel_config_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_accel_config_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_accel_config_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_accel_config_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_accel_config_v1_set_points
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_result_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_result_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_result_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_result_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.Unsafe.river_libinput_result_v1_destroy
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.LibinputConfigV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-libinput-config-v1-client-protocol.h>"
  , "signed int hs_bindgen_d8cee7edd398293d ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  struct river_libinput_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d9d60818deb52117 ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5bf91ce73884726a ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_66d35f5ff8afc655 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7f37918535cbade6 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_f2602403c0437845 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_accel_config_v1 *hs_bindgen_1e401dff14420c5f ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_create_accel_config)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8c5d40a944948097 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4d8e684911042edf ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_device_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7639ca485db18b1b ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ea18766efd9892ed ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_caa585a27f8b9ba1 ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_device_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_635e794387203069 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_send_events)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_45bfba699b466418 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_tap)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_7bdbd19e55a727a1 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_tap_button_map)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_1ce9049eed3853a5 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_drag)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_2199871e942d1237 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_drag_lock)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_47b9899d174388b9 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_three_finger_drag)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_08e943e1fa106be1 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_calibration_matrix)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_863b7583e14647cf ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_accel_profile)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_874e37f0a734e7b3 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_accel_speed)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_0c609b7594cd7bde ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_accel_config_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_apply_accel_config)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_6d3ef528ca4bece8 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_natural_scroll)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_fe7bff24da67e25a ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_left_handed)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_abbb76bc33b76d18 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_click_method)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_35add3de86c90fee ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_clickfinger_button_map)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_8d08550c1c8a4a43 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_middle_emulation)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_71a1b4e6303ee3a7 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_method)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_b028fdfbf5b35466 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_button)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_a025624649e4cbbb ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_button_lock)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_59581c3c8923d05e ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_dwt)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_727d1f788d682473 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_dwtp)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_99370fc667de8532 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_rotation)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4321f1a815daa41f ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_accel_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_348bd910ec4c2aea ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7dcc34a58344c85b ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_0bf1474936610b3d ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_accel_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_aea0bcdf9088c9c8 ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_array *arg3,"
  , "  struct wl_array *arg4"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_set_points)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_b86f92921f51460b ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  struct river_libinput_result_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_92e6d03a59e8e684 ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_result_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_504c58a6758df39f ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_0c9b854ba07d6abe ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d8687179bb4c76eb ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_result_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_d8cee7edd398293d" hs_bindgen_d8cee7edd398293d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_add_listener@
hs_bindgen_d8cee7edd398293d ::
     RIP.Ptr River_libinput_config_v1
  -> PtrConst.PtrConst River_libinput_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d8cee7edd398293d =
  RIP.fromFFIType hs_bindgen_d8cee7edd398293d_base

{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 197:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_add_listener ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> PtrConst.PtrConst River_libinput_config_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_libinput_config_v1_add_listener =
  hs_bindgen_d8cee7edd398293d

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_d9d60818deb52117" hs_bindgen_d9d60818deb52117_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_set_user_data@
hs_bindgen_d9d60818deb52117 ::
     RIP.Ptr River_libinput_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d9d60818deb52117 =
  RIP.fromFFIType hs_bindgen_d9d60818deb52117_base

{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 232:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_set_user_data ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_libinput_config_v1_set_user_data =
  hs_bindgen_d9d60818deb52117

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_5bf91ce73884726a" hs_bindgen_5bf91ce73884726a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_get_user_data@
hs_bindgen_5bf91ce73884726a ::
     RIP.Ptr River_libinput_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5bf91ce73884726a =
  RIP.fromFFIType hs_bindgen_5bf91ce73884726a_base

{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 239:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_user_data ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> IO (RIP.Ptr RIP.Void)
river_libinput_config_v1_get_user_data =
  hs_bindgen_5bf91ce73884726a

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_66d35f5ff8afc655" hs_bindgen_66d35f5ff8afc655_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_get_version@
hs_bindgen_66d35f5ff8afc655 ::
     RIP.Ptr River_libinput_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_66d35f5ff8afc655 =
  RIP.fromFFIType hs_bindgen_66d35f5ff8afc655_base

{-| __C declaration:__ @river_libinput_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 245:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_version ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_config_v1_get_version =
  hs_bindgen_66d35f5ff8afc655

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_7f37918535cbade6" hs_bindgen_7f37918535cbade6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_stop@
hs_bindgen_7f37918535cbade6 ::
     RIP.Ptr River_libinput_config_v1
  -> IO ()
hs_bindgen_7f37918535cbade6 =
  RIP.fromFFIType hs_bindgen_7f37918535cbade6_base

{-|

  > iface_river_libinput_config_v1

  This request indicates that the client no longer wishes to receive events on this object.

  The Wayland protocol is asynchronous, which means the server may send further events until the stop request is processed. The client must wait for a river_libinput_config_v1.finished event before destroying this object.

__C declaration:__ @river_libinput_config_v1_stop@

__defined at:__ @river-libinput-config-v1-client-protocol.h 262:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_stop ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> IO ()
river_libinput_config_v1_stop =
  hs_bindgen_7f37918535cbade6

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_f2602403c0437845" hs_bindgen_f2602403c0437845_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_destroy@
hs_bindgen_f2602403c0437845 ::
     RIP.Ptr River_libinput_config_v1
  -> IO ()
hs_bindgen_f2602403c0437845 =
  RIP.fromFFIType hs_bindgen_f2602403c0437845_base

{-|

  > iface_river_libinput_config_v1

  This request should be called after the finished event has been received to complete destruction of the object.

  It is a protocol error to make this request before the finished event has been received.

  If a client wishes to destroy this object it should send a river_libinput_config_v1.stop request and wait for a river_libinput_config_v1.finished event. Once the finished event is received it is safe to destroy this object and any other objects created through this interface.

__C declaration:__ @river_libinput_config_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 284:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_destroy ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> IO ()
river_libinput_config_v1_destroy =
  hs_bindgen_f2602403c0437845

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_create_accel_config@
foreign import ccall unsafe "hs_bindgen_1e401dff14420c5f" hs_bindgen_1e401dff14420c5f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_config_v1_create_accel_config@
hs_bindgen_1e401dff14420c5f ::
     RIP.Ptr River_libinput_config_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_accel_config_v1)
hs_bindgen_1e401dff14420c5f =
  RIP.fromFFIType hs_bindgen_1e401dff14420c5f_base

{-|

  > iface_river_libinput_config_v1

  Create a acceleration config which can be applied with river_libinput_device_v1.apply_accel_config.

__C declaration:__ @river_libinput_config_v1_create_accel_config@

__defined at:__ @river-libinput-config-v1-client-protocol.h 297:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_create_accel_config ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @profile@
  -> IO (RIP.Ptr River_libinput_accel_config_v1)
river_libinput_config_v1_create_accel_config =
  hs_bindgen_1e401dff14420c5f

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_8c5d40a944948097" hs_bindgen_8c5d40a944948097_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_add_listener@
hs_bindgen_8c5d40a944948097 ::
     RIP.Ptr River_libinput_device_v1
  -> PtrConst.PtrConst River_libinput_device_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8c5d40a944948097 =
  RIP.fromFFIType hs_bindgen_8c5d40a944948097_base

{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 973:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_add_listener ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> PtrConst.PtrConst River_libinput_device_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_libinput_device_v1_add_listener =
  hs_bindgen_8c5d40a944948097

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_4d8e684911042edf" hs_bindgen_4d8e684911042edf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_user_data@
hs_bindgen_4d8e684911042edf ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4d8e684911042edf =
  RIP.fromFFIType hs_bindgen_4d8e684911042edf_base

{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1315:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_user_data ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_libinput_device_v1_set_user_data =
  hs_bindgen_4d8e684911042edf

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_7639ca485db18b1b" hs_bindgen_7639ca485db18b1b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_get_user_data@
hs_bindgen_7639ca485db18b1b ::
     RIP.Ptr River_libinput_device_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7639ca485db18b1b =
  RIP.fromFFIType hs_bindgen_7639ca485db18b1b_base

{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1322:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_user_data ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> IO (RIP.Ptr RIP.Void)
river_libinput_device_v1_get_user_data =
  hs_bindgen_7639ca485db18b1b

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ea18766efd9892ed" hs_bindgen_ea18766efd9892ed_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_get_version@
hs_bindgen_ea18766efd9892ed ::
     RIP.Ptr River_libinput_device_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ea18766efd9892ed =
  RIP.fromFFIType hs_bindgen_ea18766efd9892ed_base

{-| __C declaration:__ @river_libinput_device_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1328:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_version ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_device_v1_get_version =
  hs_bindgen_ea18766efd9892ed

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_destroy@
foreign import ccall unsafe "hs_bindgen_caa585a27f8b9ba1" hs_bindgen_caa585a27f8b9ba1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_destroy@
hs_bindgen_caa585a27f8b9ba1 ::
     RIP.Ptr River_libinput_device_v1
  -> IO ()
hs_bindgen_caa585a27f8b9ba1 =
  RIP.fromFFIType hs_bindgen_caa585a27f8b9ba1_base

{-|

  > iface_river_libinput_device_v1

  This request indicates that the client will no longer use the input device object and that it may be safely destroyed.

__C declaration:__ @river_libinput_device_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1340:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_destroy ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> IO ()
river_libinput_device_v1_destroy =
  hs_bindgen_caa585a27f8b9ba1

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_send_events@
foreign import ccall unsafe "hs_bindgen_635e794387203069" hs_bindgen_635e794387203069_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_send_events@
hs_bindgen_635e794387203069 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_635e794387203069 =
  RIP.fromFFIType hs_bindgen_635e794387203069_base

{-|

  > iface_river_libinput_device_v1

  Set the send events mode for the device.

__C declaration:__ @river_libinput_device_v1_set_send_events@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1352:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_send_events ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @mode@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_send_events =
  hs_bindgen_635e794387203069

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_tap@
foreign import ccall unsafe "hs_bindgen_45bfba699b466418" hs_bindgen_45bfba699b466418_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_tap@
hs_bindgen_45bfba699b466418 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_45bfba699b466418 =
  RIP.fromFFIType hs_bindgen_45bfba699b466418_base

{-|

  > iface_river_libinput_device_v1

  Configure tap-to-click on this device, with a default mapping of 1, 2, 3 finger tap mapping to left, right, middle click, respectively.

__C declaration:__ @river_libinput_device_v1_set_tap@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1369:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_tap ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_tap =
  hs_bindgen_45bfba699b466418

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_tap_button_map@
foreign import ccall unsafe "hs_bindgen_7bdbd19e55a727a1" hs_bindgen_7bdbd19e55a727a1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_tap_button_map@
hs_bindgen_7bdbd19e55a727a1 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_7bdbd19e55a727a1 =
  RIP.fromFFIType hs_bindgen_7bdbd19e55a727a1_base

{-|

  > iface_river_libinput_device_v1

  Set the finger number to button number mapping for tap-to-click. The default mapping on most devices is to have a 1, 2 and 3 finger tap to map to the left, right and middle button, respectively.

__C declaration:__ @river_libinput_device_v1_set_tap_button_map@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1387:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_tap_button_map ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @button_map@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_tap_button_map =
  hs_bindgen_7bdbd19e55a727a1

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_drag@
foreign import ccall unsafe "hs_bindgen_1ce9049eed3853a5" hs_bindgen_1ce9049eed3853a5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_drag@
hs_bindgen_1ce9049eed3853a5 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_1ce9049eed3853a5 =
  RIP.fromFFIType hs_bindgen_1ce9049eed3853a5_base

{-|

  > iface_river_libinput_device_v1

  Configure tap-and-drag functionality on the device.

__C declaration:__ @river_libinput_device_v1_set_drag@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1403:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_drag ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_drag =
  hs_bindgen_1ce9049eed3853a5

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_drag_lock@
foreign import ccall unsafe "hs_bindgen_2199871e942d1237" hs_bindgen_2199871e942d1237_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_drag_lock@
hs_bindgen_2199871e942d1237 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_2199871e942d1237 =
  RIP.fromFFIType hs_bindgen_2199871e942d1237_base

{-|

  > iface_river_libinput_device_v1

  Configure drag-lock during tapping on this device. When enabled, a finger may be lifted and put back on the touchpad and the drag process continues. A timeout for lifting the finger is optional. When disabled, lifting the finger during a tap-and-drag will immediately stop the drag. See the libinput documentation for more details.

__C declaration:__ @river_libinput_device_v1_set_drag_lock@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1423:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_drag_lock ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_drag_lock =
  hs_bindgen_2199871e942d1237

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_three_finger_drag@
foreign import ccall unsafe "hs_bindgen_47b9899d174388b9" hs_bindgen_47b9899d174388b9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_three_finger_drag@
hs_bindgen_47b9899d174388b9 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_47b9899d174388b9 =
  RIP.fromFFIType hs_bindgen_47b9899d174388b9_base

{-|

  > iface_river_libinput_device_v1

  Configure three finger drag functionality for the device.

__C declaration:__ @river_libinput_device_v1_set_three_finger_drag@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1439:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_three_finger_drag ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_three_finger_drag =
  hs_bindgen_47b9899d174388b9

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_calibration_matrix@
foreign import ccall unsafe "hs_bindgen_08e943e1fa106be1" hs_bindgen_08e943e1fa106be1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_calibration_matrix@
hs_bindgen_08e943e1fa106be1 ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_08e943e1fa106be1 =
  RIP.fromFFIType hs_bindgen_08e943e1fa106be1_base

{-|

  > iface_river_libinput_device_v1

  Set calibration matrix.

__C declaration:__ @river_libinput_device_v1_set_calibration_matrix@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1455:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_calibration_matrix ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
     -- ^ __C declaration:__ @matrix@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_calibration_matrix =
  hs_bindgen_08e943e1fa106be1

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_accel_profile@
foreign import ccall unsafe "hs_bindgen_863b7583e14647cf" hs_bindgen_863b7583e14647cf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_accel_profile@
hs_bindgen_863b7583e14647cf ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_863b7583e14647cf =
  RIP.fromFFIType hs_bindgen_863b7583e14647cf_base

{-|

  > iface_river_libinput_device_v1

  Set the acceleration profile.

__C declaration:__ @river_libinput_device_v1_set_accel_profile@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1471:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_accel_profile ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @profile@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_accel_profile =
  hs_bindgen_863b7583e14647cf

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_accel_speed@
foreign import ccall unsafe "hs_bindgen_874e37f0a734e7b3" hs_bindgen_874e37f0a734e7b3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_accel_speed@
hs_bindgen_874e37f0a734e7b3 ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_874e37f0a734e7b3 =
  RIP.fromFFIType hs_bindgen_874e37f0a734e7b3_base

{-|

  > iface_river_libinput_device_v1

  Set the acceleration speed within a range of [-1, 1], where 0 is the default acceleration for this device, -1 is the slowest acceleration and 1 is the maximum acceleration available on this device.

__C declaration:__ @river_libinput_device_v1_set_accel_speed@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1489:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_accel_speed ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
     -- ^ __C declaration:__ @speed@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_accel_speed =
  hs_bindgen_874e37f0a734e7b3

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_apply_accel_config@
foreign import ccall unsafe "hs_bindgen_0c609b7594cd7bde" hs_bindgen_0c609b7594cd7bde_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_apply_accel_config@
hs_bindgen_0c609b7594cd7bde ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr River_libinput_accel_config_v1
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_0c609b7594cd7bde =
  RIP.fromFFIType hs_bindgen_0c609b7594cd7bde_base

{-|

  > iface_river_libinput_device_v1

  Apply a pointer accleration config.

__C declaration:__ @river_libinput_device_v1_apply_accel_config@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1505:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_apply_accel_config ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @config@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_apply_accel_config =
  hs_bindgen_0c609b7594cd7bde

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_natural_scroll@
foreign import ccall unsafe "hs_bindgen_6d3ef528ca4bece8" hs_bindgen_6d3ef528ca4bece8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_natural_scroll@
hs_bindgen_6d3ef528ca4bece8 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_6d3ef528ca4bece8 =
  RIP.fromFFIType hs_bindgen_6d3ef528ca4bece8_base

{-|

  > iface_river_libinput_device_v1

  Set natural scroll state.

__C declaration:__ @river_libinput_device_v1_set_natural_scroll@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1521:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_natural_scroll ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_natural_scroll =
  hs_bindgen_6d3ef528ca4bece8

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_left_handed@
foreign import ccall unsafe "hs_bindgen_fe7bff24da67e25a" hs_bindgen_fe7bff24da67e25a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_left_handed@
hs_bindgen_fe7bff24da67e25a ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_fe7bff24da67e25a =
  RIP.fromFFIType hs_bindgen_fe7bff24da67e25a_base

{-|

  > iface_river_libinput_device_v1

  Set left-handed mode state.

__C declaration:__ @river_libinput_device_v1_set_left_handed@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1537:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_left_handed ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_left_handed =
  hs_bindgen_fe7bff24da67e25a

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_click_method@
foreign import ccall unsafe "hs_bindgen_abbb76bc33b76d18" hs_bindgen_abbb76bc33b76d18_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_click_method@
hs_bindgen_abbb76bc33b76d18 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_abbb76bc33b76d18 =
  RIP.fromFFIType hs_bindgen_abbb76bc33b76d18_base

{-|

  > iface_river_libinput_device_v1

  Set click method.

__C declaration:__ @river_libinput_device_v1_set_click_method@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1553:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_click_method ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @method@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_click_method =
  hs_bindgen_abbb76bc33b76d18

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_clickfinger_button_map@
foreign import ccall unsafe "hs_bindgen_35add3de86c90fee" hs_bindgen_35add3de86c90fee_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_clickfinger_button_map@
hs_bindgen_35add3de86c90fee ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_35add3de86c90fee =
  RIP.fromFFIType hs_bindgen_35add3de86c90fee_base

{-|

  > iface_river_libinput_device_v1

  Set clickfinger button map. Supported if click_methods.clickfinger is supported.

__C declaration:__ @river_libinput_device_v1_set_clickfinger_button_map@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1570:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_clickfinger_button_map ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @button_map@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_clickfinger_button_map =
  hs_bindgen_35add3de86c90fee

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_middle_emulation@
foreign import ccall unsafe "hs_bindgen_8d08550c1c8a4a43" hs_bindgen_8d08550c1c8a4a43_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_middle_emulation@
hs_bindgen_8d08550c1c8a4a43 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_8d08550c1c8a4a43 =
  RIP.fromFFIType hs_bindgen_8d08550c1c8a4a43_base

{-|

  > iface_river_libinput_device_v1

  Set middle mouse button emulation state.

__C declaration:__ @river_libinput_device_v1_set_middle_emulation@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1586:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_middle_emulation ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_middle_emulation =
  hs_bindgen_8d08550c1c8a4a43

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_scroll_method@
foreign import ccall unsafe "hs_bindgen_71a1b4e6303ee3a7" hs_bindgen_71a1b4e6303ee3a7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_scroll_method@
hs_bindgen_71a1b4e6303ee3a7 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_71a1b4e6303ee3a7 =
  RIP.fromFFIType hs_bindgen_71a1b4e6303ee3a7_base

{-|

  > iface_river_libinput_device_v1

  Set scroll method.

__C declaration:__ @river_libinput_device_v1_set_scroll_method@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1602:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_scroll_method ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @method@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_scroll_method =
  hs_bindgen_71a1b4e6303ee3a7

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_scroll_button@
foreign import ccall unsafe "hs_bindgen_b028fdfbf5b35466" hs_bindgen_b028fdfbf5b35466_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_scroll_button@
hs_bindgen_b028fdfbf5b35466 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_b028fdfbf5b35466 =
  RIP.fromFFIType hs_bindgen_b028fdfbf5b35466_base

{-|

  > iface_river_libinput_device_v1

  Set scroll button. Supported if scroll_methods.on_button_down is supported.

__C declaration:__ @river_libinput_device_v1_set_scroll_button@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1619:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_scroll_button ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @button@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_scroll_button =
  hs_bindgen_b028fdfbf5b35466

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_scroll_button_lock@
foreign import ccall unsafe "hs_bindgen_a025624649e4cbbb" hs_bindgen_a025624649e4cbbb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_scroll_button_lock@
hs_bindgen_a025624649e4cbbb ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_a025624649e4cbbb =
  RIP.fromFFIType hs_bindgen_a025624649e4cbbb_base

{-|

  > iface_river_libinput_device_v1

  Set scroll button lock state. Supported if scroll_methods.on_button_down is supported.

__C declaration:__ @river_libinput_device_v1_set_scroll_button_lock@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1636:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_scroll_button_lock ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_scroll_button_lock =
  hs_bindgen_a025624649e4cbbb

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_dwt@
foreign import ccall unsafe "hs_bindgen_59581c3c8923d05e" hs_bindgen_59581c3c8923d05e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_dwt@
hs_bindgen_59581c3c8923d05e ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_59581c3c8923d05e =
  RIP.fromFFIType hs_bindgen_59581c3c8923d05e_base

{-|

  > iface_river_libinput_device_v1

  Set disable-while-typing state.

__C declaration:__ @river_libinput_device_v1_set_dwt@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1652:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_dwt ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_dwt =
  hs_bindgen_59581c3c8923d05e

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_dwtp@
foreign import ccall unsafe "hs_bindgen_727d1f788d682473" hs_bindgen_727d1f788d682473_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_dwtp@
hs_bindgen_727d1f788d682473 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_727d1f788d682473 =
  RIP.fromFFIType hs_bindgen_727d1f788d682473_base

{-|

  > iface_river_libinput_device_v1

  Set disable-while-trackpointing state.

__C declaration:__ @river_libinput_device_v1_set_dwtp@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1668:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_dwtp ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_dwtp =
  hs_bindgen_727d1f788d682473

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_rotation@
foreign import ccall unsafe "hs_bindgen_99370fc667de8532" hs_bindgen_99370fc667de8532_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_device_v1_set_rotation@
hs_bindgen_99370fc667de8532 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_99370fc667de8532 =
  RIP.fromFFIType hs_bindgen_99370fc667de8532_base

{-|

  > iface_river_libinput_device_v1

  Set rotation angle in degrees clockwise off the logical neutral position. Angle must be in the range [0-360).

__C declaration:__ @river_libinput_device_v1_set_rotation@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1685:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_rotation ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @angle@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_rotation =
  hs_bindgen_99370fc667de8532

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_4321f1a815daa41f" hs_bindgen_4321f1a815daa41f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_set_user_data@
hs_bindgen_4321f1a815daa41f ::
     RIP.Ptr River_libinput_accel_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4321f1a815daa41f =
  RIP.fromFFIType hs_bindgen_4321f1a815daa41f_base

{-|

  > iface_river_libinput_accel_config_v1

__C declaration:__ @river_libinput_accel_config_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1729:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_set_user_data ::
     RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @river_libinput_accel_config_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_libinput_accel_config_v1_set_user_data =
  hs_bindgen_4321f1a815daa41f

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_348bd910ec4c2aea" hs_bindgen_348bd910ec4c2aea_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_get_user_data@
hs_bindgen_348bd910ec4c2aea ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_348bd910ec4c2aea =
  RIP.fromFFIType hs_bindgen_348bd910ec4c2aea_base

{-|

  > iface_river_libinput_accel_config_v1

__C declaration:__ @river_libinput_accel_config_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1736:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_user_data ::
     RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @river_libinput_accel_config_v1@
  -> IO (RIP.Ptr RIP.Void)
river_libinput_accel_config_v1_get_user_data =
  hs_bindgen_348bd910ec4c2aea

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_7dcc34a58344c85b" hs_bindgen_7dcc34a58344c85b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_get_version@
hs_bindgen_7dcc34a58344c85b ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7dcc34a58344c85b =
  RIP.fromFFIType hs_bindgen_7dcc34a58344c85b_base

{-| __C declaration:__ @river_libinput_accel_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1742:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_version ::
     RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @river_libinput_accel_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_accel_config_v1_get_version =
  hs_bindgen_7dcc34a58344c85b

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_0bf1474936610b3d" hs_bindgen_0bf1474936610b3d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_destroy@
hs_bindgen_0bf1474936610b3d ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO ()
hs_bindgen_0bf1474936610b3d =
  RIP.fromFFIType hs_bindgen_0bf1474936610b3d_base

{-|

  > iface_river_libinput_accel_config_v1

  This request indicates that the client will no longer use the accel config object and that it may be safely destroyed.

__C declaration:__ @river_libinput_accel_config_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1754:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_destroy ::
     RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @river_libinput_accel_config_v1@
  -> IO ()
river_libinput_accel_config_v1_destroy =
  hs_bindgen_0bf1474936610b3d

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_set_points@
foreign import ccall unsafe "hs_bindgen_aea0bcdf9088c9c8" hs_bindgen_aea0bcdf9088c9c8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_accel_config_v1_set_points@
hs_bindgen_aea0bcdf9088c9c8 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_aea0bcdf9088c9c8 =
  RIP.fromFFIType hs_bindgen_aea0bcdf9088c9c8_base

{-|

  > iface_river_libinput_accel_config_v1

  Defines the acceleration function for a given movement type in an acceleration configuration with custom accel profile.

__C declaration:__ @river_libinput_accel_config_v1_set_points@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1767:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_set_points ::
     RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @river_libinput_accel_config_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @type@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
     -- ^ __C declaration:__ @step@
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
     -- ^ __C declaration:__ @points@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_accel_config_v1_set_points =
  hs_bindgen_aea0bcdf9088c9c8

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_b86f92921f51460b" hs_bindgen_b86f92921f51460b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_add_listener@
hs_bindgen_b86f92921f51460b ::
     RIP.Ptr River_libinput_result_v1
  -> PtrConst.PtrConst River_libinput_result_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b86f92921f51460b =
  RIP.fromFFIType hs_bindgen_b86f92921f51460b_base

{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1810:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_add_listener ::
     RIP.Ptr River_libinput_result_v1
     -- ^ __C declaration:__ @river_libinput_result_v1@
  -> PtrConst.PtrConst River_libinput_result_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_libinput_result_v1_add_listener =
  hs_bindgen_b86f92921f51460b

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_92e6d03a59e8e684" hs_bindgen_92e6d03a59e8e684_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_set_user_data@
hs_bindgen_92e6d03a59e8e684 ::
     RIP.Ptr River_libinput_result_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_92e6d03a59e8e684 =
  RIP.fromFFIType hs_bindgen_92e6d03a59e8e684_base

{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1833:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_set_user_data ::
     RIP.Ptr River_libinput_result_v1
     -- ^ __C declaration:__ @river_libinput_result_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_libinput_result_v1_set_user_data =
  hs_bindgen_92e6d03a59e8e684

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_504c58a6758df39f" hs_bindgen_504c58a6758df39f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_get_user_data@
hs_bindgen_504c58a6758df39f ::
     RIP.Ptr River_libinput_result_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_504c58a6758df39f =
  RIP.fromFFIType hs_bindgen_504c58a6758df39f_base

{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1840:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_user_data ::
     RIP.Ptr River_libinput_result_v1
     -- ^ __C declaration:__ @river_libinput_result_v1@
  -> IO (RIP.Ptr RIP.Void)
river_libinput_result_v1_get_user_data =
  hs_bindgen_504c58a6758df39f

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_get_version@
foreign import ccall unsafe "hs_bindgen_0c9b854ba07d6abe" hs_bindgen_0c9b854ba07d6abe_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_get_version@
hs_bindgen_0c9b854ba07d6abe ::
     RIP.Ptr River_libinput_result_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_0c9b854ba07d6abe =
  RIP.fromFFIType hs_bindgen_0c9b854ba07d6abe_base

{-| __C declaration:__ @river_libinput_result_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1846:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_version ::
     RIP.Ptr River_libinput_result_v1
     -- ^ __C declaration:__ @river_libinput_result_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_result_v1_get_version =
  hs_bindgen_0c9b854ba07d6abe

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_destroy@
foreign import ccall unsafe "hs_bindgen_d8687179bb4c76eb" hs_bindgen_d8687179bb4c76eb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Unsafe_river_libinput_result_v1_destroy@
hs_bindgen_d8687179bb4c76eb ::
     RIP.Ptr River_libinput_result_v1
  -> IO ()
hs_bindgen_d8687179bb4c76eb =
  RIP.fromFFIType hs_bindgen_d8687179bb4c76eb_base

{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1853:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_destroy ::
     RIP.Ptr River_libinput_result_v1
     -- ^ __C declaration:__ @river_libinput_result_v1@
  -> IO ()
river_libinput_result_v1_destroy =
  hs_bindgen_d8687179bb4c76eb

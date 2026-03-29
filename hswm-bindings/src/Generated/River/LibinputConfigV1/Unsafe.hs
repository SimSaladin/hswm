{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LibinputConfigV1.Unsafe
    ( Generated.River.LibinputConfigV1.Unsafe.river_libinput_config_v1_add_listener
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_config_v1_set_user_data
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_config_v1_get_user_data
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_config_v1_get_version
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_config_v1_stop
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_config_v1_destroy
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_config_v1_create_accel_config
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_add_listener
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_user_data
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_get_user_data
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_get_version
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_destroy
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_send_events
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_tap
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_tap_button_map
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_drag
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_drag_lock
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_three_finger_drag
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_calibration_matrix
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_accel_profile
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_accel_speed
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_apply_accel_config
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_natural_scroll
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_left_handed
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_click_method
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_clickfinger_button_map
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_middle_emulation
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_scroll_method
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_scroll_button
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_scroll_button_lock
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_dwt
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_dwtp
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_device_v1_set_rotation
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_accel_config_v1_set_user_data
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_accel_config_v1_get_user_data
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_accel_config_v1_get_version
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_accel_config_v1_destroy
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_accel_config_v1_set_points
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_result_v1_add_listener
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_result_v1_set_user_data
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_result_v1_get_user_data
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_result_v1_get_version
    , Generated.River.LibinputConfigV1.Unsafe.river_libinput_result_v1_destroy
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.LibinputConfigV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-libinput-config-v1-client-protocol.h>"
  , "signed int hs_bindgen_3e7362e4195e0558 ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  struct river_libinput_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_273ead4e3e31afff ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_853e3750ff96dd89 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7380c523cf516df1 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ff1cd329c66a66f9 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_76ddf1273f0413cf ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_accel_config_v1 *hs_bindgen_f60cb048873d9da9 ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_create_accel_config)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c0cd34fe0708ff85 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6e77b9804ec2c4ae ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_device_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e55a536e1e571976 ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_0376bb2f0b6478cc ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e343218b7a6c963b ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_device_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_a9ac8fbfe6b1ce27 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_send_events)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_44f5586c396d7596 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_tap)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_28cf35fc6ce981c8 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_tap_button_map)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_426a10d487093068 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_drag)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_260a0164373b54cd ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_drag_lock)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_a53afd440a6a4115 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_three_finger_drag)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_23e9d8073847c02a ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_calibration_matrix)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_d0f3ed479feb3100 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_accel_profile)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_010ac964bfa81001 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_accel_speed)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_4b5ff2ba42d88c1d ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_accel_config_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_apply_accel_config)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_f537d6f2e7240612 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_natural_scroll)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_e8aea67de22d3ddc ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_left_handed)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_b0392053d63ababa ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_click_method)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_34434edafe1c8f68 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_clickfinger_button_map)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_13a8c9d489babb1d ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_middle_emulation)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_967b0e3481c7a36b ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_method)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_0c9e5fc723f64092 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_button)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_2a434c091bf1d2d6 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_button_lock)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_f71aac663654ba53 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_dwt)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_888441df077c6a3d ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_dwtp)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_ecf73d7660b6b7e7 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_rotation)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_80b2826771fc61c7 ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_accel_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_84a27b36db5bb156 ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_921e3ec7028f339e ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_57474375fe85705d ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_accel_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_6611fa15c4d46a1c ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_array *arg3,"
  , "  struct wl_array *arg4"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_set_points)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_d93c206b9004ba0b ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  struct river_libinput_result_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5d8f2a5ec3fcd2b7 ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_result_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_75cfb1a18ca9916c ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_fbefb4672424034b ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7c0169a8e175eb68 ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_result_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_3e7362e4195e0558" hs_bindgen_3e7362e4195e0558_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_add_listener@
hs_bindgen_3e7362e4195e0558 ::
     RIP.Ptr River_libinput_config_v1
  -> PtrConst.PtrConst River_libinput_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_3e7362e4195e0558 =
  RIP.fromFFIType hs_bindgen_3e7362e4195e0558_base

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
  hs_bindgen_3e7362e4195e0558

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_273ead4e3e31afff" hs_bindgen_273ead4e3e31afff_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_set_user_data@
hs_bindgen_273ead4e3e31afff ::
     RIP.Ptr River_libinput_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_273ead4e3e31afff =
  RIP.fromFFIType hs_bindgen_273ead4e3e31afff_base

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
  hs_bindgen_273ead4e3e31afff

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_853e3750ff96dd89" hs_bindgen_853e3750ff96dd89_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_get_user_data@
hs_bindgen_853e3750ff96dd89 ::
     RIP.Ptr River_libinput_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_853e3750ff96dd89 =
  RIP.fromFFIType hs_bindgen_853e3750ff96dd89_base

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
  hs_bindgen_853e3750ff96dd89

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_7380c523cf516df1" hs_bindgen_7380c523cf516df1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_get_version@
hs_bindgen_7380c523cf516df1 ::
     RIP.Ptr River_libinput_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7380c523cf516df1 =
  RIP.fromFFIType hs_bindgen_7380c523cf516df1_base

{-| __C declaration:__ @river_libinput_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 245:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_version ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_config_v1_get_version =
  hs_bindgen_7380c523cf516df1

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_ff1cd329c66a66f9" hs_bindgen_ff1cd329c66a66f9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_stop@
hs_bindgen_ff1cd329c66a66f9 ::
     RIP.Ptr River_libinput_config_v1
  -> IO ()
hs_bindgen_ff1cd329c66a66f9 =
  RIP.fromFFIType hs_bindgen_ff1cd329c66a66f9_base

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
  hs_bindgen_ff1cd329c66a66f9

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_76ddf1273f0413cf" hs_bindgen_76ddf1273f0413cf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_destroy@
hs_bindgen_76ddf1273f0413cf ::
     RIP.Ptr River_libinput_config_v1
  -> IO ()
hs_bindgen_76ddf1273f0413cf =
  RIP.fromFFIType hs_bindgen_76ddf1273f0413cf_base

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
  hs_bindgen_76ddf1273f0413cf

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_create_accel_config@
foreign import ccall unsafe "hs_bindgen_f60cb048873d9da9" hs_bindgen_f60cb048873d9da9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_config_v1_create_accel_config@
hs_bindgen_f60cb048873d9da9 ::
     RIP.Ptr River_libinput_config_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_accel_config_v1)
hs_bindgen_f60cb048873d9da9 =
  RIP.fromFFIType hs_bindgen_f60cb048873d9da9_base

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
  hs_bindgen_f60cb048873d9da9

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_c0cd34fe0708ff85" hs_bindgen_c0cd34fe0708ff85_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_add_listener@
hs_bindgen_c0cd34fe0708ff85 ::
     RIP.Ptr River_libinput_device_v1
  -> PtrConst.PtrConst River_libinput_device_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_c0cd34fe0708ff85 =
  RIP.fromFFIType hs_bindgen_c0cd34fe0708ff85_base

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
  hs_bindgen_c0cd34fe0708ff85

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_6e77b9804ec2c4ae" hs_bindgen_6e77b9804ec2c4ae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_user_data@
hs_bindgen_6e77b9804ec2c4ae ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6e77b9804ec2c4ae =
  RIP.fromFFIType hs_bindgen_6e77b9804ec2c4ae_base

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
  hs_bindgen_6e77b9804ec2c4ae

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e55a536e1e571976" hs_bindgen_e55a536e1e571976_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_get_user_data@
hs_bindgen_e55a536e1e571976 ::
     RIP.Ptr River_libinput_device_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e55a536e1e571976 =
  RIP.fromFFIType hs_bindgen_e55a536e1e571976_base

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
  hs_bindgen_e55a536e1e571976

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_get_version@
foreign import ccall unsafe "hs_bindgen_0376bb2f0b6478cc" hs_bindgen_0376bb2f0b6478cc_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_get_version@
hs_bindgen_0376bb2f0b6478cc ::
     RIP.Ptr River_libinput_device_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_0376bb2f0b6478cc =
  RIP.fromFFIType hs_bindgen_0376bb2f0b6478cc_base

{-| __C declaration:__ @river_libinput_device_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1328:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_version ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_device_v1_get_version =
  hs_bindgen_0376bb2f0b6478cc

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_destroy@
foreign import ccall unsafe "hs_bindgen_e343218b7a6c963b" hs_bindgen_e343218b7a6c963b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_destroy@
hs_bindgen_e343218b7a6c963b ::
     RIP.Ptr River_libinput_device_v1
  -> IO ()
hs_bindgen_e343218b7a6c963b =
  RIP.fromFFIType hs_bindgen_e343218b7a6c963b_base

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
  hs_bindgen_e343218b7a6c963b

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_send_events@
foreign import ccall unsafe "hs_bindgen_a9ac8fbfe6b1ce27" hs_bindgen_a9ac8fbfe6b1ce27_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_send_events@
hs_bindgen_a9ac8fbfe6b1ce27 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_a9ac8fbfe6b1ce27 =
  RIP.fromFFIType hs_bindgen_a9ac8fbfe6b1ce27_base

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
  hs_bindgen_a9ac8fbfe6b1ce27

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_tap@
foreign import ccall unsafe "hs_bindgen_44f5586c396d7596" hs_bindgen_44f5586c396d7596_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_tap@
hs_bindgen_44f5586c396d7596 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_44f5586c396d7596 =
  RIP.fromFFIType hs_bindgen_44f5586c396d7596_base

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
  hs_bindgen_44f5586c396d7596

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_tap_button_map@
foreign import ccall unsafe "hs_bindgen_28cf35fc6ce981c8" hs_bindgen_28cf35fc6ce981c8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_tap_button_map@
hs_bindgen_28cf35fc6ce981c8 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_28cf35fc6ce981c8 =
  RIP.fromFFIType hs_bindgen_28cf35fc6ce981c8_base

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
  hs_bindgen_28cf35fc6ce981c8

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_drag@
foreign import ccall unsafe "hs_bindgen_426a10d487093068" hs_bindgen_426a10d487093068_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_drag@
hs_bindgen_426a10d487093068 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_426a10d487093068 =
  RIP.fromFFIType hs_bindgen_426a10d487093068_base

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
  hs_bindgen_426a10d487093068

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_drag_lock@
foreign import ccall unsafe "hs_bindgen_260a0164373b54cd" hs_bindgen_260a0164373b54cd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_drag_lock@
hs_bindgen_260a0164373b54cd ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_260a0164373b54cd =
  RIP.fromFFIType hs_bindgen_260a0164373b54cd_base

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
  hs_bindgen_260a0164373b54cd

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_three_finger_drag@
foreign import ccall unsafe "hs_bindgen_a53afd440a6a4115" hs_bindgen_a53afd440a6a4115_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_three_finger_drag@
hs_bindgen_a53afd440a6a4115 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_a53afd440a6a4115 =
  RIP.fromFFIType hs_bindgen_a53afd440a6a4115_base

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
  hs_bindgen_a53afd440a6a4115

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_calibration_matrix@
foreign import ccall unsafe "hs_bindgen_23e9d8073847c02a" hs_bindgen_23e9d8073847c02a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_calibration_matrix@
hs_bindgen_23e9d8073847c02a ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_23e9d8073847c02a =
  RIP.fromFFIType hs_bindgen_23e9d8073847c02a_base

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
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
     -- ^ __C declaration:__ @matrix@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_calibration_matrix =
  hs_bindgen_23e9d8073847c02a

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_accel_profile@
foreign import ccall unsafe "hs_bindgen_d0f3ed479feb3100" hs_bindgen_d0f3ed479feb3100_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_accel_profile@
hs_bindgen_d0f3ed479feb3100 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_d0f3ed479feb3100 =
  RIP.fromFFIType hs_bindgen_d0f3ed479feb3100_base

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
  hs_bindgen_d0f3ed479feb3100

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_accel_speed@
foreign import ccall unsafe "hs_bindgen_010ac964bfa81001" hs_bindgen_010ac964bfa81001_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_accel_speed@
hs_bindgen_010ac964bfa81001 ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_010ac964bfa81001 =
  RIP.fromFFIType hs_bindgen_010ac964bfa81001_base

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
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
     -- ^ __C declaration:__ @speed@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_device_v1_set_accel_speed =
  hs_bindgen_010ac964bfa81001

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_apply_accel_config@
foreign import ccall unsafe "hs_bindgen_4b5ff2ba42d88c1d" hs_bindgen_4b5ff2ba42d88c1d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_apply_accel_config@
hs_bindgen_4b5ff2ba42d88c1d ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr River_libinput_accel_config_v1
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_4b5ff2ba42d88c1d =
  RIP.fromFFIType hs_bindgen_4b5ff2ba42d88c1d_base

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
  hs_bindgen_4b5ff2ba42d88c1d

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_natural_scroll@
foreign import ccall unsafe "hs_bindgen_f537d6f2e7240612" hs_bindgen_f537d6f2e7240612_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_natural_scroll@
hs_bindgen_f537d6f2e7240612 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_f537d6f2e7240612 =
  RIP.fromFFIType hs_bindgen_f537d6f2e7240612_base

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
  hs_bindgen_f537d6f2e7240612

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_left_handed@
foreign import ccall unsafe "hs_bindgen_e8aea67de22d3ddc" hs_bindgen_e8aea67de22d3ddc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_left_handed@
hs_bindgen_e8aea67de22d3ddc ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_e8aea67de22d3ddc =
  RIP.fromFFIType hs_bindgen_e8aea67de22d3ddc_base

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
  hs_bindgen_e8aea67de22d3ddc

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_click_method@
foreign import ccall unsafe "hs_bindgen_b0392053d63ababa" hs_bindgen_b0392053d63ababa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_click_method@
hs_bindgen_b0392053d63ababa ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_b0392053d63ababa =
  RIP.fromFFIType hs_bindgen_b0392053d63ababa_base

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
  hs_bindgen_b0392053d63ababa

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_clickfinger_button_map@
foreign import ccall unsafe "hs_bindgen_34434edafe1c8f68" hs_bindgen_34434edafe1c8f68_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_clickfinger_button_map@
hs_bindgen_34434edafe1c8f68 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_34434edafe1c8f68 =
  RIP.fromFFIType hs_bindgen_34434edafe1c8f68_base

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
  hs_bindgen_34434edafe1c8f68

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_middle_emulation@
foreign import ccall unsafe "hs_bindgen_13a8c9d489babb1d" hs_bindgen_13a8c9d489babb1d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_middle_emulation@
hs_bindgen_13a8c9d489babb1d ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_13a8c9d489babb1d =
  RIP.fromFFIType hs_bindgen_13a8c9d489babb1d_base

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
  hs_bindgen_13a8c9d489babb1d

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_scroll_method@
foreign import ccall unsafe "hs_bindgen_967b0e3481c7a36b" hs_bindgen_967b0e3481c7a36b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_scroll_method@
hs_bindgen_967b0e3481c7a36b ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_967b0e3481c7a36b =
  RIP.fromFFIType hs_bindgen_967b0e3481c7a36b_base

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
  hs_bindgen_967b0e3481c7a36b

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_scroll_button@
foreign import ccall unsafe "hs_bindgen_0c9e5fc723f64092" hs_bindgen_0c9e5fc723f64092_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_scroll_button@
hs_bindgen_0c9e5fc723f64092 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_0c9e5fc723f64092 =
  RIP.fromFFIType hs_bindgen_0c9e5fc723f64092_base

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
  hs_bindgen_0c9e5fc723f64092

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_scroll_button_lock@
foreign import ccall unsafe "hs_bindgen_2a434c091bf1d2d6" hs_bindgen_2a434c091bf1d2d6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_scroll_button_lock@
hs_bindgen_2a434c091bf1d2d6 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_2a434c091bf1d2d6 =
  RIP.fromFFIType hs_bindgen_2a434c091bf1d2d6_base

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
  hs_bindgen_2a434c091bf1d2d6

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_dwt@
foreign import ccall unsafe "hs_bindgen_f71aac663654ba53" hs_bindgen_f71aac663654ba53_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_dwt@
hs_bindgen_f71aac663654ba53 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_f71aac663654ba53 =
  RIP.fromFFIType hs_bindgen_f71aac663654ba53_base

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
  hs_bindgen_f71aac663654ba53

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_dwtp@
foreign import ccall unsafe "hs_bindgen_888441df077c6a3d" hs_bindgen_888441df077c6a3d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_dwtp@
hs_bindgen_888441df077c6a3d ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_888441df077c6a3d =
  RIP.fromFFIType hs_bindgen_888441df077c6a3d_base

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
  hs_bindgen_888441df077c6a3d

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_rotation@
foreign import ccall unsafe "hs_bindgen_ecf73d7660b6b7e7" hs_bindgen_ecf73d7660b6b7e7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_device_v1_set_rotation@
hs_bindgen_ecf73d7660b6b7e7 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_ecf73d7660b6b7e7 =
  RIP.fromFFIType hs_bindgen_ecf73d7660b6b7e7_base

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
  hs_bindgen_ecf73d7660b6b7e7

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_80b2826771fc61c7" hs_bindgen_80b2826771fc61c7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_set_user_data@
hs_bindgen_80b2826771fc61c7 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_80b2826771fc61c7 =
  RIP.fromFFIType hs_bindgen_80b2826771fc61c7_base

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
  hs_bindgen_80b2826771fc61c7

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_84a27b36db5bb156" hs_bindgen_84a27b36db5bb156_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_get_user_data@
hs_bindgen_84a27b36db5bb156 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_84a27b36db5bb156 =
  RIP.fromFFIType hs_bindgen_84a27b36db5bb156_base

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
  hs_bindgen_84a27b36db5bb156

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_921e3ec7028f339e" hs_bindgen_921e3ec7028f339e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_get_version@
hs_bindgen_921e3ec7028f339e ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_921e3ec7028f339e =
  RIP.fromFFIType hs_bindgen_921e3ec7028f339e_base

{-| __C declaration:__ @river_libinput_accel_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1742:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_version ::
     RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @river_libinput_accel_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_accel_config_v1_get_version =
  hs_bindgen_921e3ec7028f339e

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_57474375fe85705d" hs_bindgen_57474375fe85705d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_destroy@
hs_bindgen_57474375fe85705d ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO ()
hs_bindgen_57474375fe85705d =
  RIP.fromFFIType hs_bindgen_57474375fe85705d_base

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
  hs_bindgen_57474375fe85705d

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_set_points@
foreign import ccall unsafe "hs_bindgen_6611fa15c4d46a1c" hs_bindgen_6611fa15c4d46a1c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_accel_config_v1_set_points@
hs_bindgen_6611fa15c4d46a1c ::
     RIP.Ptr River_libinput_accel_config_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_6611fa15c4d46a1c =
  RIP.fromFFIType hs_bindgen_6611fa15c4d46a1c_base

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
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
     -- ^ __C declaration:__ @step@
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
     -- ^ __C declaration:__ @points@
  -> IO (RIP.Ptr River_libinput_result_v1)
river_libinput_accel_config_v1_set_points =
  hs_bindgen_6611fa15c4d46a1c

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_d93c206b9004ba0b" hs_bindgen_d93c206b9004ba0b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_add_listener@
hs_bindgen_d93c206b9004ba0b ::
     RIP.Ptr River_libinput_result_v1
  -> PtrConst.PtrConst River_libinput_result_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d93c206b9004ba0b =
  RIP.fromFFIType hs_bindgen_d93c206b9004ba0b_base

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
  hs_bindgen_d93c206b9004ba0b

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_5d8f2a5ec3fcd2b7" hs_bindgen_5d8f2a5ec3fcd2b7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_set_user_data@
hs_bindgen_5d8f2a5ec3fcd2b7 ::
     RIP.Ptr River_libinput_result_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_5d8f2a5ec3fcd2b7 =
  RIP.fromFFIType hs_bindgen_5d8f2a5ec3fcd2b7_base

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
  hs_bindgen_5d8f2a5ec3fcd2b7

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_75cfb1a18ca9916c" hs_bindgen_75cfb1a18ca9916c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_get_user_data@
hs_bindgen_75cfb1a18ca9916c ::
     RIP.Ptr River_libinput_result_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_75cfb1a18ca9916c =
  RIP.fromFFIType hs_bindgen_75cfb1a18ca9916c_base

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
  hs_bindgen_75cfb1a18ca9916c

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_get_version@
foreign import ccall unsafe "hs_bindgen_fbefb4672424034b" hs_bindgen_fbefb4672424034b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_get_version@
hs_bindgen_fbefb4672424034b ::
     RIP.Ptr River_libinput_result_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_fbefb4672424034b =
  RIP.fromFFIType hs_bindgen_fbefb4672424034b_base

{-| __C declaration:__ @river_libinput_result_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1846:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_version ::
     RIP.Ptr River_libinput_result_v1
     -- ^ __C declaration:__ @river_libinput_result_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_result_v1_get_version =
  hs_bindgen_fbefb4672424034b

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_destroy@
foreign import ccall unsafe "hs_bindgen_7c0169a8e175eb68" hs_bindgen_7c0169a8e175eb68_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Unsafe_river_libinput_result_v1_destroy@
hs_bindgen_7c0169a8e175eb68 ::
     RIP.Ptr River_libinput_result_v1
  -> IO ()
hs_bindgen_7c0169a8e175eb68 =
  RIP.fromFFIType hs_bindgen_7c0169a8e175eb68_base

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
  hs_bindgen_7c0169a8e175eb68

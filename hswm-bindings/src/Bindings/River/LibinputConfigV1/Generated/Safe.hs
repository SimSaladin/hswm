{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.LibinputConfigV1.Generated.Safe
    ( Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_config_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_config_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_config_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_config_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_config_v1_stop
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_config_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_config_v1_create_accel_config
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_send_events
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_tap
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_tap_button_map
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_drag
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_drag_lock
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_three_finger_drag
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_calibration_matrix
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_accel_profile
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_accel_speed
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_apply_accel_config
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_natural_scroll
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_left_handed
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_click_method
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_clickfinger_button_map
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_middle_emulation
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_scroll_method
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_scroll_button
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_scroll_button_lock
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_dwt
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_dwtp
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_device_v1_set_rotation
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_accel_config_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_accel_config_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_accel_config_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_accel_config_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_accel_config_v1_set_points
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_result_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_result_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_result_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_result_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.Safe.river_libinput_result_v1_destroy
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
  , "signed int hs_bindgen_ff51bc2a60b62a4d ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  struct river_libinput_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_8769d13b44bf3c70 ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a39b117aabe8f9bc ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3e7d713bc2136562 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b98bb0918803dc1d ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_0a4b7f42d6373f90 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_accel_config_v1 *hs_bindgen_0143dd8731d4481c ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_create_accel_config)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_c3ef91505ffc3568 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_cdb7761449a052d7 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_device_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_085bf9b1b7a9ac5c ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7d51c286063e2069 ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4de4e2b782efa86c ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_device_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_b97dc044aa9333f1 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_send_events)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_0849cb1db54b09fc ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_tap)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_d1557260d2406c3a ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_tap_button_map)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_2c4d464817b213ce ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_drag)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_5d471b1f3b0b8029 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_drag_lock)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_cc5035d08806acb5 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_three_finger_drag)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_77126f8d41cd13d2 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_calibration_matrix)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_c855630bdca89425 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_accel_profile)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_8d0b4b02452aad24 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_accel_speed)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_b1d27652a9f15f10 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_accel_config_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_apply_accel_config)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_2fe985f6ed2efa4d ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_natural_scroll)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_6f03814656ee58a0 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_left_handed)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_09b6d087396a979c ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_click_method)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_68f3b75e58511c52 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_clickfinger_button_map)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_301bbc23f7aaca69 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_middle_emulation)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_cff7e52fc303663e ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_method)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_82349eee22972b16 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_button)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_ec97b3fea2f71776 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_button_lock)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_0504ec4ef5abca8d ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_dwt)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_6a85a202201fc375 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_dwtp)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_658f91a0a1345878 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_rotation)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_177ed16f0fbee1b4 ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_accel_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7905b95ed6e9e3a1 ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_96931dd31f67d13f ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_89033991f0010306 ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_accel_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_6e0fb9984e0a7a06 ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_array *arg3,"
  , "  struct wl_array *arg4"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_set_points)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_72e5c64db559b5ec ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  struct river_libinput_result_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_09cbfd4acc599a90 ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_result_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_01f613215f696260 ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_86c78347e3569d95 ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_230d3b8f63df5c95 ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_result_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_add_listener@
foreign import ccall safe "hs_bindgen_ff51bc2a60b62a4d" hs_bindgen_ff51bc2a60b62a4d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_add_listener@
hs_bindgen_ff51bc2a60b62a4d ::
     RIP.Ptr River_libinput_config_v1
  -> PtrConst.PtrConst River_libinput_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ff51bc2a60b62a4d =
  RIP.fromFFIType hs_bindgen_ff51bc2a60b62a4d_base

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
  hs_bindgen_ff51bc2a60b62a4d

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_set_user_data@
foreign import ccall safe "hs_bindgen_8769d13b44bf3c70" hs_bindgen_8769d13b44bf3c70_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_set_user_data@
hs_bindgen_8769d13b44bf3c70 ::
     RIP.Ptr River_libinput_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8769d13b44bf3c70 =
  RIP.fromFFIType hs_bindgen_8769d13b44bf3c70_base

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
  hs_bindgen_8769d13b44bf3c70

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_get_user_data@
foreign import ccall safe "hs_bindgen_a39b117aabe8f9bc" hs_bindgen_a39b117aabe8f9bc_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_get_user_data@
hs_bindgen_a39b117aabe8f9bc ::
     RIP.Ptr River_libinput_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a39b117aabe8f9bc =
  RIP.fromFFIType hs_bindgen_a39b117aabe8f9bc_base

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
  hs_bindgen_a39b117aabe8f9bc

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_get_version@
foreign import ccall safe "hs_bindgen_3e7d713bc2136562" hs_bindgen_3e7d713bc2136562_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_get_version@
hs_bindgen_3e7d713bc2136562 ::
     RIP.Ptr River_libinput_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3e7d713bc2136562 =
  RIP.fromFFIType hs_bindgen_3e7d713bc2136562_base

{-| __C declaration:__ @river_libinput_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 245:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_version ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_config_v1_get_version =
  hs_bindgen_3e7d713bc2136562

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_stop@
foreign import ccall safe "hs_bindgen_b98bb0918803dc1d" hs_bindgen_b98bb0918803dc1d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_stop@
hs_bindgen_b98bb0918803dc1d ::
     RIP.Ptr River_libinput_config_v1
  -> IO ()
hs_bindgen_b98bb0918803dc1d =
  RIP.fromFFIType hs_bindgen_b98bb0918803dc1d_base

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
  hs_bindgen_b98bb0918803dc1d

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_destroy@
foreign import ccall safe "hs_bindgen_0a4b7f42d6373f90" hs_bindgen_0a4b7f42d6373f90_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_destroy@
hs_bindgen_0a4b7f42d6373f90 ::
     RIP.Ptr River_libinput_config_v1
  -> IO ()
hs_bindgen_0a4b7f42d6373f90 =
  RIP.fromFFIType hs_bindgen_0a4b7f42d6373f90_base

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
  hs_bindgen_0a4b7f42d6373f90

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_create_accel_config@
foreign import ccall safe "hs_bindgen_0143dd8731d4481c" hs_bindgen_0143dd8731d4481c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_config_v1_create_accel_config@
hs_bindgen_0143dd8731d4481c ::
     RIP.Ptr River_libinput_config_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_accel_config_v1)
hs_bindgen_0143dd8731d4481c =
  RIP.fromFFIType hs_bindgen_0143dd8731d4481c_base

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
  hs_bindgen_0143dd8731d4481c

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_add_listener@
foreign import ccall safe "hs_bindgen_c3ef91505ffc3568" hs_bindgen_c3ef91505ffc3568_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_add_listener@
hs_bindgen_c3ef91505ffc3568 ::
     RIP.Ptr River_libinput_device_v1
  -> PtrConst.PtrConst River_libinput_device_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_c3ef91505ffc3568 =
  RIP.fromFFIType hs_bindgen_c3ef91505ffc3568_base

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
  hs_bindgen_c3ef91505ffc3568

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_user_data@
foreign import ccall safe "hs_bindgen_cdb7761449a052d7" hs_bindgen_cdb7761449a052d7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_user_data@
hs_bindgen_cdb7761449a052d7 ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_cdb7761449a052d7 =
  RIP.fromFFIType hs_bindgen_cdb7761449a052d7_base

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
  hs_bindgen_cdb7761449a052d7

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_get_user_data@
foreign import ccall safe "hs_bindgen_085bf9b1b7a9ac5c" hs_bindgen_085bf9b1b7a9ac5c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_get_user_data@
hs_bindgen_085bf9b1b7a9ac5c ::
     RIP.Ptr River_libinput_device_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_085bf9b1b7a9ac5c =
  RIP.fromFFIType hs_bindgen_085bf9b1b7a9ac5c_base

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
  hs_bindgen_085bf9b1b7a9ac5c

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_get_version@
foreign import ccall safe "hs_bindgen_7d51c286063e2069" hs_bindgen_7d51c286063e2069_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_get_version@
hs_bindgen_7d51c286063e2069 ::
     RIP.Ptr River_libinput_device_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7d51c286063e2069 =
  RIP.fromFFIType hs_bindgen_7d51c286063e2069_base

{-| __C declaration:__ @river_libinput_device_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1328:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_version ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_device_v1_get_version =
  hs_bindgen_7d51c286063e2069

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_destroy@
foreign import ccall safe "hs_bindgen_4de4e2b782efa86c" hs_bindgen_4de4e2b782efa86c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_destroy@
hs_bindgen_4de4e2b782efa86c ::
     RIP.Ptr River_libinput_device_v1
  -> IO ()
hs_bindgen_4de4e2b782efa86c =
  RIP.fromFFIType hs_bindgen_4de4e2b782efa86c_base

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
  hs_bindgen_4de4e2b782efa86c

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_send_events@
foreign import ccall safe "hs_bindgen_b97dc044aa9333f1" hs_bindgen_b97dc044aa9333f1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_send_events@
hs_bindgen_b97dc044aa9333f1 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_b97dc044aa9333f1 =
  RIP.fromFFIType hs_bindgen_b97dc044aa9333f1_base

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
  hs_bindgen_b97dc044aa9333f1

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_tap@
foreign import ccall safe "hs_bindgen_0849cb1db54b09fc" hs_bindgen_0849cb1db54b09fc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_tap@
hs_bindgen_0849cb1db54b09fc ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_0849cb1db54b09fc =
  RIP.fromFFIType hs_bindgen_0849cb1db54b09fc_base

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
  hs_bindgen_0849cb1db54b09fc

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_tap_button_map@
foreign import ccall safe "hs_bindgen_d1557260d2406c3a" hs_bindgen_d1557260d2406c3a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_tap_button_map@
hs_bindgen_d1557260d2406c3a ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_d1557260d2406c3a =
  RIP.fromFFIType hs_bindgen_d1557260d2406c3a_base

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
  hs_bindgen_d1557260d2406c3a

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_drag@
foreign import ccall safe "hs_bindgen_2c4d464817b213ce" hs_bindgen_2c4d464817b213ce_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_drag@
hs_bindgen_2c4d464817b213ce ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_2c4d464817b213ce =
  RIP.fromFFIType hs_bindgen_2c4d464817b213ce_base

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
  hs_bindgen_2c4d464817b213ce

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_drag_lock@
foreign import ccall safe "hs_bindgen_5d471b1f3b0b8029" hs_bindgen_5d471b1f3b0b8029_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_drag_lock@
hs_bindgen_5d471b1f3b0b8029 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_5d471b1f3b0b8029 =
  RIP.fromFFIType hs_bindgen_5d471b1f3b0b8029_base

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
  hs_bindgen_5d471b1f3b0b8029

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_three_finger_drag@
foreign import ccall safe "hs_bindgen_cc5035d08806acb5" hs_bindgen_cc5035d08806acb5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_three_finger_drag@
hs_bindgen_cc5035d08806acb5 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_cc5035d08806acb5 =
  RIP.fromFFIType hs_bindgen_cc5035d08806acb5_base

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
  hs_bindgen_cc5035d08806acb5

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_calibration_matrix@
foreign import ccall safe "hs_bindgen_77126f8d41cd13d2" hs_bindgen_77126f8d41cd13d2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_calibration_matrix@
hs_bindgen_77126f8d41cd13d2 ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_77126f8d41cd13d2 =
  RIP.fromFFIType hs_bindgen_77126f8d41cd13d2_base

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
  hs_bindgen_77126f8d41cd13d2

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_accel_profile@
foreign import ccall safe "hs_bindgen_c855630bdca89425" hs_bindgen_c855630bdca89425_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_accel_profile@
hs_bindgen_c855630bdca89425 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_c855630bdca89425 =
  RIP.fromFFIType hs_bindgen_c855630bdca89425_base

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
  hs_bindgen_c855630bdca89425

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_accel_speed@
foreign import ccall safe "hs_bindgen_8d0b4b02452aad24" hs_bindgen_8d0b4b02452aad24_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_accel_speed@
hs_bindgen_8d0b4b02452aad24 ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_8d0b4b02452aad24 =
  RIP.fromFFIType hs_bindgen_8d0b4b02452aad24_base

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
  hs_bindgen_8d0b4b02452aad24

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_apply_accel_config@
foreign import ccall safe "hs_bindgen_b1d27652a9f15f10" hs_bindgen_b1d27652a9f15f10_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_apply_accel_config@
hs_bindgen_b1d27652a9f15f10 ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr River_libinput_accel_config_v1
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_b1d27652a9f15f10 =
  RIP.fromFFIType hs_bindgen_b1d27652a9f15f10_base

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
  hs_bindgen_b1d27652a9f15f10

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_natural_scroll@
foreign import ccall safe "hs_bindgen_2fe985f6ed2efa4d" hs_bindgen_2fe985f6ed2efa4d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_natural_scroll@
hs_bindgen_2fe985f6ed2efa4d ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_2fe985f6ed2efa4d =
  RIP.fromFFIType hs_bindgen_2fe985f6ed2efa4d_base

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
  hs_bindgen_2fe985f6ed2efa4d

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_left_handed@
foreign import ccall safe "hs_bindgen_6f03814656ee58a0" hs_bindgen_6f03814656ee58a0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_left_handed@
hs_bindgen_6f03814656ee58a0 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_6f03814656ee58a0 =
  RIP.fromFFIType hs_bindgen_6f03814656ee58a0_base

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
  hs_bindgen_6f03814656ee58a0

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_click_method@
foreign import ccall safe "hs_bindgen_09b6d087396a979c" hs_bindgen_09b6d087396a979c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_click_method@
hs_bindgen_09b6d087396a979c ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_09b6d087396a979c =
  RIP.fromFFIType hs_bindgen_09b6d087396a979c_base

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
  hs_bindgen_09b6d087396a979c

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_clickfinger_button_map@
foreign import ccall safe "hs_bindgen_68f3b75e58511c52" hs_bindgen_68f3b75e58511c52_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_clickfinger_button_map@
hs_bindgen_68f3b75e58511c52 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_68f3b75e58511c52 =
  RIP.fromFFIType hs_bindgen_68f3b75e58511c52_base

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
  hs_bindgen_68f3b75e58511c52

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_middle_emulation@
foreign import ccall safe "hs_bindgen_301bbc23f7aaca69" hs_bindgen_301bbc23f7aaca69_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_middle_emulation@
hs_bindgen_301bbc23f7aaca69 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_301bbc23f7aaca69 =
  RIP.fromFFIType hs_bindgen_301bbc23f7aaca69_base

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
  hs_bindgen_301bbc23f7aaca69

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_scroll_method@
foreign import ccall safe "hs_bindgen_cff7e52fc303663e" hs_bindgen_cff7e52fc303663e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_scroll_method@
hs_bindgen_cff7e52fc303663e ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_cff7e52fc303663e =
  RIP.fromFFIType hs_bindgen_cff7e52fc303663e_base

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
  hs_bindgen_cff7e52fc303663e

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_scroll_button@
foreign import ccall safe "hs_bindgen_82349eee22972b16" hs_bindgen_82349eee22972b16_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_scroll_button@
hs_bindgen_82349eee22972b16 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_82349eee22972b16 =
  RIP.fromFFIType hs_bindgen_82349eee22972b16_base

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
  hs_bindgen_82349eee22972b16

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_scroll_button_lock@
foreign import ccall safe "hs_bindgen_ec97b3fea2f71776" hs_bindgen_ec97b3fea2f71776_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_scroll_button_lock@
hs_bindgen_ec97b3fea2f71776 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_ec97b3fea2f71776 =
  RIP.fromFFIType hs_bindgen_ec97b3fea2f71776_base

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
  hs_bindgen_ec97b3fea2f71776

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_dwt@
foreign import ccall safe "hs_bindgen_0504ec4ef5abca8d" hs_bindgen_0504ec4ef5abca8d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_dwt@
hs_bindgen_0504ec4ef5abca8d ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_0504ec4ef5abca8d =
  RIP.fromFFIType hs_bindgen_0504ec4ef5abca8d_base

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
  hs_bindgen_0504ec4ef5abca8d

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_dwtp@
foreign import ccall safe "hs_bindgen_6a85a202201fc375" hs_bindgen_6a85a202201fc375_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_dwtp@
hs_bindgen_6a85a202201fc375 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_6a85a202201fc375 =
  RIP.fromFFIType hs_bindgen_6a85a202201fc375_base

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
  hs_bindgen_6a85a202201fc375

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_rotation@
foreign import ccall safe "hs_bindgen_658f91a0a1345878" hs_bindgen_658f91a0a1345878_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_device_v1_set_rotation@
hs_bindgen_658f91a0a1345878 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_658f91a0a1345878 =
  RIP.fromFFIType hs_bindgen_658f91a0a1345878_base

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
  hs_bindgen_658f91a0a1345878

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_set_user_data@
foreign import ccall safe "hs_bindgen_177ed16f0fbee1b4" hs_bindgen_177ed16f0fbee1b4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_set_user_data@
hs_bindgen_177ed16f0fbee1b4 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_177ed16f0fbee1b4 =
  RIP.fromFFIType hs_bindgen_177ed16f0fbee1b4_base

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
  hs_bindgen_177ed16f0fbee1b4

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_get_user_data@
foreign import ccall safe "hs_bindgen_7905b95ed6e9e3a1" hs_bindgen_7905b95ed6e9e3a1_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_get_user_data@
hs_bindgen_7905b95ed6e9e3a1 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7905b95ed6e9e3a1 =
  RIP.fromFFIType hs_bindgen_7905b95ed6e9e3a1_base

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
  hs_bindgen_7905b95ed6e9e3a1

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_get_version@
foreign import ccall safe "hs_bindgen_96931dd31f67d13f" hs_bindgen_96931dd31f67d13f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_get_version@
hs_bindgen_96931dd31f67d13f ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_96931dd31f67d13f =
  RIP.fromFFIType hs_bindgen_96931dd31f67d13f_base

{-| __C declaration:__ @river_libinput_accel_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1742:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_version ::
     RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @river_libinput_accel_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_accel_config_v1_get_version =
  hs_bindgen_96931dd31f67d13f

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_destroy@
foreign import ccall safe "hs_bindgen_89033991f0010306" hs_bindgen_89033991f0010306_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_destroy@
hs_bindgen_89033991f0010306 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO ()
hs_bindgen_89033991f0010306 =
  RIP.fromFFIType hs_bindgen_89033991f0010306_base

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
  hs_bindgen_89033991f0010306

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_set_points@
foreign import ccall safe "hs_bindgen_6e0fb9984e0a7a06" hs_bindgen_6e0fb9984e0a7a06_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_accel_config_v1_set_points@
hs_bindgen_6e0fb9984e0a7a06 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
  -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_6e0fb9984e0a7a06 =
  RIP.fromFFIType hs_bindgen_6e0fb9984e0a7a06_base

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
  hs_bindgen_6e0fb9984e0a7a06

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_add_listener@
foreign import ccall safe "hs_bindgen_72e5c64db559b5ec" hs_bindgen_72e5c64db559b5ec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_add_listener@
hs_bindgen_72e5c64db559b5ec ::
     RIP.Ptr River_libinput_result_v1
  -> PtrConst.PtrConst River_libinput_result_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_72e5c64db559b5ec =
  RIP.fromFFIType hs_bindgen_72e5c64db559b5ec_base

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
  hs_bindgen_72e5c64db559b5ec

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_set_user_data@
foreign import ccall safe "hs_bindgen_09cbfd4acc599a90" hs_bindgen_09cbfd4acc599a90_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_set_user_data@
hs_bindgen_09cbfd4acc599a90 ::
     RIP.Ptr River_libinput_result_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_09cbfd4acc599a90 =
  RIP.fromFFIType hs_bindgen_09cbfd4acc599a90_base

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
  hs_bindgen_09cbfd4acc599a90

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_get_user_data@
foreign import ccall safe "hs_bindgen_01f613215f696260" hs_bindgen_01f613215f696260_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_get_user_data@
hs_bindgen_01f613215f696260 ::
     RIP.Ptr River_libinput_result_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_01f613215f696260 =
  RIP.fromFFIType hs_bindgen_01f613215f696260_base

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
  hs_bindgen_01f613215f696260

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_get_version@
foreign import ccall safe "hs_bindgen_86c78347e3569d95" hs_bindgen_86c78347e3569d95_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_get_version@
hs_bindgen_86c78347e3569d95 ::
     RIP.Ptr River_libinput_result_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_86c78347e3569d95 =
  RIP.fromFFIType hs_bindgen_86c78347e3569d95_base

{-| __C declaration:__ @river_libinput_result_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1846:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_version ::
     RIP.Ptr River_libinput_result_v1
     -- ^ __C declaration:__ @river_libinput_result_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_result_v1_get_version =
  hs_bindgen_86c78347e3569d95

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_destroy@
foreign import ccall safe "hs_bindgen_230d3b8f63df5c95" hs_bindgen_230d3b8f63df5c95_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_Safe_river_libinput_result_v1_destroy@
hs_bindgen_230d3b8f63df5c95 ::
     RIP.Ptr River_libinput_result_v1
  -> IO ()
hs_bindgen_230d3b8f63df5c95 =
  RIP.fromFFIType hs_bindgen_230d3b8f63df5c95_base

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
  hs_bindgen_230d3b8f63df5c95

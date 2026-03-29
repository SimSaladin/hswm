{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LibinputConfigV1.Safe
    ( Generated.River.LibinputConfigV1.Safe.river_libinput_config_v1_add_listener
    , Generated.River.LibinputConfigV1.Safe.river_libinput_config_v1_set_user_data
    , Generated.River.LibinputConfigV1.Safe.river_libinput_config_v1_get_user_data
    , Generated.River.LibinputConfigV1.Safe.river_libinput_config_v1_get_version
    , Generated.River.LibinputConfigV1.Safe.river_libinput_config_v1_stop
    , Generated.River.LibinputConfigV1.Safe.river_libinput_config_v1_destroy
    , Generated.River.LibinputConfigV1.Safe.river_libinput_config_v1_create_accel_config
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_add_listener
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_user_data
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_get_user_data
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_get_version
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_destroy
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_send_events
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_tap
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_tap_button_map
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_drag
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_drag_lock
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_three_finger_drag
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_calibration_matrix
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_accel_profile
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_accel_speed
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_apply_accel_config
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_natural_scroll
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_left_handed
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_click_method
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_clickfinger_button_map
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_middle_emulation
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_scroll_method
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_scroll_button
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_scroll_button_lock
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_dwt
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_dwtp
    , Generated.River.LibinputConfigV1.Safe.river_libinput_device_v1_set_rotation
    , Generated.River.LibinputConfigV1.Safe.river_libinput_accel_config_v1_set_user_data
    , Generated.River.LibinputConfigV1.Safe.river_libinput_accel_config_v1_get_user_data
    , Generated.River.LibinputConfigV1.Safe.river_libinput_accel_config_v1_get_version
    , Generated.River.LibinputConfigV1.Safe.river_libinput_accel_config_v1_destroy
    , Generated.River.LibinputConfigV1.Safe.river_libinput_accel_config_v1_set_points
    , Generated.River.LibinputConfigV1.Safe.river_libinput_result_v1_add_listener
    , Generated.River.LibinputConfigV1.Safe.river_libinput_result_v1_set_user_data
    , Generated.River.LibinputConfigV1.Safe.river_libinput_result_v1_get_user_data
    , Generated.River.LibinputConfigV1.Safe.river_libinput_result_v1_get_version
    , Generated.River.LibinputConfigV1.Safe.river_libinput_result_v1_destroy
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
  , "signed int hs_bindgen_9fdc1e1dba3643cb ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  struct river_libinput_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_aa29f45b47d7c4bd ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1da79fdabf64522e ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c101bc867e956f5b ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e29cee07786dfd25 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_c306223ed6567351 ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_accel_config_v1 *hs_bindgen_00d7baae8ff717ef ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_config_v1_create_accel_config)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_aa27220575335fec ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_de5069ca00015a5f ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_device_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_649c49a4e0e44c49 ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c8707f1cbd503cb9 ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8bdcd14b45923973 ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_device_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_e36342838be4f900 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_send_events)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_4411de43a6230e0f ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_tap)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_e4a8674837c81d36 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_tap_button_map)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_ee68fa14b42650e5 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_drag)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_7b037ed61ed0e4bd ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_drag_lock)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_26c0df95482b0589 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_three_finger_drag)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_42e414219074a38c ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_calibration_matrix)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_ae3a96735cee1339 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_accel_profile)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_e34fbcc81054c702 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_accel_speed)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_a7af4f1b0ca0361c ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_accel_config_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_apply_accel_config)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_59d92b6a7f9a0b28 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_natural_scroll)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_4096b1a9f2336e70 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_left_handed)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_71d0248ecffcba3d ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_click_method)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_da69ce13aeee5c60 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_clickfinger_button_map)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_6fbadc58e44bca2a ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_middle_emulation)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_da3d654ef2b8126d ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_method)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_b95fa196ab9cf802 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_button)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_9f0113140979246a ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_scroll_button_lock)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_23182052c627dc10 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_dwt)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_27697786b2d4e8b6 ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_dwtp)(arg1, arg2);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_63e845f4653fbd3b ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (river_libinput_device_v1_set_rotation)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_bfa397fbb2839ec6 ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_accel_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_01db2e2378ba7e6b ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f33b697d8b074bf5 ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_44bc8f58a837df15 ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_accel_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_libinput_result_v1 *hs_bindgen_9c7154190f4cdd44 ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_array *arg3,"
  , "  struct wl_array *arg4"
  , ")"
  , "{"
  , "  return (river_libinput_accel_config_v1_set_points)(arg1, arg2, arg3, arg4);"
  , "}"
  , "signed int hs_bindgen_096b2650064c6cc4 ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  struct river_libinput_result_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_8ba0aa7c315fe08e ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_libinput_result_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_614d85dd04db207f ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7030daa79821bad3 ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_libinput_result_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_1946af4b1a3ecc47 ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  (river_libinput_result_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_add_listener@
foreign import ccall safe "hs_bindgen_9fdc1e1dba3643cb" hs_bindgen_9fdc1e1dba3643cb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_add_listener@
hs_bindgen_9fdc1e1dba3643cb ::
     RIP.Ptr River_libinput_config_v1
  -> PtrConst.PtrConst River_libinput_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_9fdc1e1dba3643cb =
  RIP.fromFFIType hs_bindgen_9fdc1e1dba3643cb_base

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
  hs_bindgen_9fdc1e1dba3643cb

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_set_user_data@
foreign import ccall safe "hs_bindgen_aa29f45b47d7c4bd" hs_bindgen_aa29f45b47d7c4bd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_set_user_data@
hs_bindgen_aa29f45b47d7c4bd ::
     RIP.Ptr River_libinput_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_aa29f45b47d7c4bd =
  RIP.fromFFIType hs_bindgen_aa29f45b47d7c4bd_base

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
  hs_bindgen_aa29f45b47d7c4bd

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_get_user_data@
foreign import ccall safe "hs_bindgen_1da79fdabf64522e" hs_bindgen_1da79fdabf64522e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_get_user_data@
hs_bindgen_1da79fdabf64522e ::
     RIP.Ptr River_libinput_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1da79fdabf64522e =
  RIP.fromFFIType hs_bindgen_1da79fdabf64522e_base

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
  hs_bindgen_1da79fdabf64522e

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_get_version@
foreign import ccall safe "hs_bindgen_c101bc867e956f5b" hs_bindgen_c101bc867e956f5b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_get_version@
hs_bindgen_c101bc867e956f5b ::
     RIP.Ptr River_libinput_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c101bc867e956f5b =
  RIP.fromFFIType hs_bindgen_c101bc867e956f5b_base

{-| __C declaration:__ @river_libinput_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 245:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_version ::
     RIP.Ptr River_libinput_config_v1
     -- ^ __C declaration:__ @river_libinput_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_config_v1_get_version =
  hs_bindgen_c101bc867e956f5b

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_stop@
foreign import ccall safe "hs_bindgen_e29cee07786dfd25" hs_bindgen_e29cee07786dfd25_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_stop@
hs_bindgen_e29cee07786dfd25 ::
     RIP.Ptr River_libinput_config_v1
  -> IO ()
hs_bindgen_e29cee07786dfd25 =
  RIP.fromFFIType hs_bindgen_e29cee07786dfd25_base

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
  hs_bindgen_e29cee07786dfd25

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_destroy@
foreign import ccall safe "hs_bindgen_c306223ed6567351" hs_bindgen_c306223ed6567351_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_destroy@
hs_bindgen_c306223ed6567351 ::
     RIP.Ptr River_libinput_config_v1
  -> IO ()
hs_bindgen_c306223ed6567351 =
  RIP.fromFFIType hs_bindgen_c306223ed6567351_base

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
  hs_bindgen_c306223ed6567351

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_create_accel_config@
foreign import ccall safe "hs_bindgen_00d7baae8ff717ef" hs_bindgen_00d7baae8ff717ef_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_config_v1_create_accel_config@
hs_bindgen_00d7baae8ff717ef ::
     RIP.Ptr River_libinput_config_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_accel_config_v1)
hs_bindgen_00d7baae8ff717ef =
  RIP.fromFFIType hs_bindgen_00d7baae8ff717ef_base

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
  hs_bindgen_00d7baae8ff717ef

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_add_listener@
foreign import ccall safe "hs_bindgen_aa27220575335fec" hs_bindgen_aa27220575335fec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_add_listener@
hs_bindgen_aa27220575335fec ::
     RIP.Ptr River_libinput_device_v1
  -> PtrConst.PtrConst River_libinput_device_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_aa27220575335fec =
  RIP.fromFFIType hs_bindgen_aa27220575335fec_base

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
  hs_bindgen_aa27220575335fec

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_user_data@
foreign import ccall safe "hs_bindgen_de5069ca00015a5f" hs_bindgen_de5069ca00015a5f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_user_data@
hs_bindgen_de5069ca00015a5f ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_de5069ca00015a5f =
  RIP.fromFFIType hs_bindgen_de5069ca00015a5f_base

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
  hs_bindgen_de5069ca00015a5f

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_get_user_data@
foreign import ccall safe "hs_bindgen_649c49a4e0e44c49" hs_bindgen_649c49a4e0e44c49_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_get_user_data@
hs_bindgen_649c49a4e0e44c49 ::
     RIP.Ptr River_libinput_device_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_649c49a4e0e44c49 =
  RIP.fromFFIType hs_bindgen_649c49a4e0e44c49_base

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
  hs_bindgen_649c49a4e0e44c49

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_get_version@
foreign import ccall safe "hs_bindgen_c8707f1cbd503cb9" hs_bindgen_c8707f1cbd503cb9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_get_version@
hs_bindgen_c8707f1cbd503cb9 ::
     RIP.Ptr River_libinput_device_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c8707f1cbd503cb9 =
  RIP.fromFFIType hs_bindgen_c8707f1cbd503cb9_base

{-| __C declaration:__ @river_libinput_device_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1328:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_version ::
     RIP.Ptr River_libinput_device_v1
     -- ^ __C declaration:__ @river_libinput_device_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_device_v1_get_version =
  hs_bindgen_c8707f1cbd503cb9

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_destroy@
foreign import ccall safe "hs_bindgen_8bdcd14b45923973" hs_bindgen_8bdcd14b45923973_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_destroy@
hs_bindgen_8bdcd14b45923973 ::
     RIP.Ptr River_libinput_device_v1
  -> IO ()
hs_bindgen_8bdcd14b45923973 =
  RIP.fromFFIType hs_bindgen_8bdcd14b45923973_base

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
  hs_bindgen_8bdcd14b45923973

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_send_events@
foreign import ccall safe "hs_bindgen_e36342838be4f900" hs_bindgen_e36342838be4f900_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_send_events@
hs_bindgen_e36342838be4f900 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_e36342838be4f900 =
  RIP.fromFFIType hs_bindgen_e36342838be4f900_base

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
  hs_bindgen_e36342838be4f900

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_tap@
foreign import ccall safe "hs_bindgen_4411de43a6230e0f" hs_bindgen_4411de43a6230e0f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_tap@
hs_bindgen_4411de43a6230e0f ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_4411de43a6230e0f =
  RIP.fromFFIType hs_bindgen_4411de43a6230e0f_base

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
  hs_bindgen_4411de43a6230e0f

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_tap_button_map@
foreign import ccall safe "hs_bindgen_e4a8674837c81d36" hs_bindgen_e4a8674837c81d36_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_tap_button_map@
hs_bindgen_e4a8674837c81d36 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_e4a8674837c81d36 =
  RIP.fromFFIType hs_bindgen_e4a8674837c81d36_base

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
  hs_bindgen_e4a8674837c81d36

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_drag@
foreign import ccall safe "hs_bindgen_ee68fa14b42650e5" hs_bindgen_ee68fa14b42650e5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_drag@
hs_bindgen_ee68fa14b42650e5 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_ee68fa14b42650e5 =
  RIP.fromFFIType hs_bindgen_ee68fa14b42650e5_base

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
  hs_bindgen_ee68fa14b42650e5

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_drag_lock@
foreign import ccall safe "hs_bindgen_7b037ed61ed0e4bd" hs_bindgen_7b037ed61ed0e4bd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_drag_lock@
hs_bindgen_7b037ed61ed0e4bd ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_7b037ed61ed0e4bd =
  RIP.fromFFIType hs_bindgen_7b037ed61ed0e4bd_base

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
  hs_bindgen_7b037ed61ed0e4bd

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_three_finger_drag@
foreign import ccall safe "hs_bindgen_26c0df95482b0589" hs_bindgen_26c0df95482b0589_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_three_finger_drag@
hs_bindgen_26c0df95482b0589 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_26c0df95482b0589 =
  RIP.fromFFIType hs_bindgen_26c0df95482b0589_base

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
  hs_bindgen_26c0df95482b0589

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_calibration_matrix@
foreign import ccall safe "hs_bindgen_42e414219074a38c" hs_bindgen_42e414219074a38c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_calibration_matrix@
hs_bindgen_42e414219074a38c ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_42e414219074a38c =
  RIP.fromFFIType hs_bindgen_42e414219074a38c_base

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
  hs_bindgen_42e414219074a38c

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_accel_profile@
foreign import ccall safe "hs_bindgen_ae3a96735cee1339" hs_bindgen_ae3a96735cee1339_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_accel_profile@
hs_bindgen_ae3a96735cee1339 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_ae3a96735cee1339 =
  RIP.fromFFIType hs_bindgen_ae3a96735cee1339_base

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
  hs_bindgen_ae3a96735cee1339

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_accel_speed@
foreign import ccall safe "hs_bindgen_e34fbcc81054c702" hs_bindgen_e34fbcc81054c702_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_accel_speed@
hs_bindgen_e34fbcc81054c702 ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_e34fbcc81054c702 =
  RIP.fromFFIType hs_bindgen_e34fbcc81054c702_base

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
  hs_bindgen_e34fbcc81054c702

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_apply_accel_config@
foreign import ccall safe "hs_bindgen_a7af4f1b0ca0361c" hs_bindgen_a7af4f1b0ca0361c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_apply_accel_config@
hs_bindgen_a7af4f1b0ca0361c ::
     RIP.Ptr River_libinput_device_v1
  -> RIP.Ptr River_libinput_accel_config_v1
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_a7af4f1b0ca0361c =
  RIP.fromFFIType hs_bindgen_a7af4f1b0ca0361c_base

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
  hs_bindgen_a7af4f1b0ca0361c

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_natural_scroll@
foreign import ccall safe "hs_bindgen_59d92b6a7f9a0b28" hs_bindgen_59d92b6a7f9a0b28_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_natural_scroll@
hs_bindgen_59d92b6a7f9a0b28 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_59d92b6a7f9a0b28 =
  RIP.fromFFIType hs_bindgen_59d92b6a7f9a0b28_base

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
  hs_bindgen_59d92b6a7f9a0b28

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_left_handed@
foreign import ccall safe "hs_bindgen_4096b1a9f2336e70" hs_bindgen_4096b1a9f2336e70_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_left_handed@
hs_bindgen_4096b1a9f2336e70 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_4096b1a9f2336e70 =
  RIP.fromFFIType hs_bindgen_4096b1a9f2336e70_base

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
  hs_bindgen_4096b1a9f2336e70

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_click_method@
foreign import ccall safe "hs_bindgen_71d0248ecffcba3d" hs_bindgen_71d0248ecffcba3d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_click_method@
hs_bindgen_71d0248ecffcba3d ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_71d0248ecffcba3d =
  RIP.fromFFIType hs_bindgen_71d0248ecffcba3d_base

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
  hs_bindgen_71d0248ecffcba3d

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_clickfinger_button_map@
foreign import ccall safe "hs_bindgen_da69ce13aeee5c60" hs_bindgen_da69ce13aeee5c60_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_clickfinger_button_map@
hs_bindgen_da69ce13aeee5c60 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_da69ce13aeee5c60 =
  RIP.fromFFIType hs_bindgen_da69ce13aeee5c60_base

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
  hs_bindgen_da69ce13aeee5c60

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_middle_emulation@
foreign import ccall safe "hs_bindgen_6fbadc58e44bca2a" hs_bindgen_6fbadc58e44bca2a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_middle_emulation@
hs_bindgen_6fbadc58e44bca2a ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_6fbadc58e44bca2a =
  RIP.fromFFIType hs_bindgen_6fbadc58e44bca2a_base

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
  hs_bindgen_6fbadc58e44bca2a

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_scroll_method@
foreign import ccall safe "hs_bindgen_da3d654ef2b8126d" hs_bindgen_da3d654ef2b8126d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_scroll_method@
hs_bindgen_da3d654ef2b8126d ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_da3d654ef2b8126d =
  RIP.fromFFIType hs_bindgen_da3d654ef2b8126d_base

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
  hs_bindgen_da3d654ef2b8126d

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_scroll_button@
foreign import ccall safe "hs_bindgen_b95fa196ab9cf802" hs_bindgen_b95fa196ab9cf802_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_scroll_button@
hs_bindgen_b95fa196ab9cf802 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_b95fa196ab9cf802 =
  RIP.fromFFIType hs_bindgen_b95fa196ab9cf802_base

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
  hs_bindgen_b95fa196ab9cf802

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_scroll_button_lock@
foreign import ccall safe "hs_bindgen_9f0113140979246a" hs_bindgen_9f0113140979246a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_scroll_button_lock@
hs_bindgen_9f0113140979246a ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_9f0113140979246a =
  RIP.fromFFIType hs_bindgen_9f0113140979246a_base

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
  hs_bindgen_9f0113140979246a

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_dwt@
foreign import ccall safe "hs_bindgen_23182052c627dc10" hs_bindgen_23182052c627dc10_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_dwt@
hs_bindgen_23182052c627dc10 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_23182052c627dc10 =
  RIP.fromFFIType hs_bindgen_23182052c627dc10_base

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
  hs_bindgen_23182052c627dc10

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_dwtp@
foreign import ccall safe "hs_bindgen_27697786b2d4e8b6" hs_bindgen_27697786b2d4e8b6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_dwtp@
hs_bindgen_27697786b2d4e8b6 ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_27697786b2d4e8b6 =
  RIP.fromFFIType hs_bindgen_27697786b2d4e8b6_base

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
  hs_bindgen_27697786b2d4e8b6

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_rotation@
foreign import ccall safe "hs_bindgen_63e845f4653fbd3b" hs_bindgen_63e845f4653fbd3b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_device_v1_set_rotation@
hs_bindgen_63e845f4653fbd3b ::
     RIP.Ptr River_libinput_device_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_63e845f4653fbd3b =
  RIP.fromFFIType hs_bindgen_63e845f4653fbd3b_base

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
  hs_bindgen_63e845f4653fbd3b

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_set_user_data@
foreign import ccall safe "hs_bindgen_bfa397fbb2839ec6" hs_bindgen_bfa397fbb2839ec6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_set_user_data@
hs_bindgen_bfa397fbb2839ec6 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_bfa397fbb2839ec6 =
  RIP.fromFFIType hs_bindgen_bfa397fbb2839ec6_base

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
  hs_bindgen_bfa397fbb2839ec6

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_get_user_data@
foreign import ccall safe "hs_bindgen_01db2e2378ba7e6b" hs_bindgen_01db2e2378ba7e6b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_get_user_data@
hs_bindgen_01db2e2378ba7e6b ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_01db2e2378ba7e6b =
  RIP.fromFFIType hs_bindgen_01db2e2378ba7e6b_base

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
  hs_bindgen_01db2e2378ba7e6b

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_get_version@
foreign import ccall safe "hs_bindgen_f33b697d8b074bf5" hs_bindgen_f33b697d8b074bf5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_get_version@
hs_bindgen_f33b697d8b074bf5 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f33b697d8b074bf5 =
  RIP.fromFFIType hs_bindgen_f33b697d8b074bf5_base

{-| __C declaration:__ @river_libinput_accel_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1742:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_version ::
     RIP.Ptr River_libinput_accel_config_v1
     -- ^ __C declaration:__ @river_libinput_accel_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_accel_config_v1_get_version =
  hs_bindgen_f33b697d8b074bf5

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_destroy@
foreign import ccall safe "hs_bindgen_44bc8f58a837df15" hs_bindgen_44bc8f58a837df15_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_destroy@
hs_bindgen_44bc8f58a837df15 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> IO ()
hs_bindgen_44bc8f58a837df15 =
  RIP.fromFFIType hs_bindgen_44bc8f58a837df15_base

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
  hs_bindgen_44bc8f58a837df15

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_set_points@
foreign import ccall safe "hs_bindgen_9c7154190f4cdd44" hs_bindgen_9c7154190f4cdd44_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_accel_config_v1_set_points@
hs_bindgen_9c7154190f4cdd44 ::
     RIP.Ptr River_libinput_accel_config_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
  -> RIP.Ptr Generated.Wayland.Util.Wl_array
  -> IO (RIP.Ptr River_libinput_result_v1)
hs_bindgen_9c7154190f4cdd44 =
  RIP.fromFFIType hs_bindgen_9c7154190f4cdd44_base

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
  hs_bindgen_9c7154190f4cdd44

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_add_listener@
foreign import ccall safe "hs_bindgen_096b2650064c6cc4" hs_bindgen_096b2650064c6cc4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_add_listener@
hs_bindgen_096b2650064c6cc4 ::
     RIP.Ptr River_libinput_result_v1
  -> PtrConst.PtrConst River_libinput_result_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_096b2650064c6cc4 =
  RIP.fromFFIType hs_bindgen_096b2650064c6cc4_base

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
  hs_bindgen_096b2650064c6cc4

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_set_user_data@
foreign import ccall safe "hs_bindgen_8ba0aa7c315fe08e" hs_bindgen_8ba0aa7c315fe08e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_set_user_data@
hs_bindgen_8ba0aa7c315fe08e ::
     RIP.Ptr River_libinput_result_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8ba0aa7c315fe08e =
  RIP.fromFFIType hs_bindgen_8ba0aa7c315fe08e_base

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
  hs_bindgen_8ba0aa7c315fe08e

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_get_user_data@
foreign import ccall safe "hs_bindgen_614d85dd04db207f" hs_bindgen_614d85dd04db207f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_get_user_data@
hs_bindgen_614d85dd04db207f ::
     RIP.Ptr River_libinput_result_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_614d85dd04db207f =
  RIP.fromFFIType hs_bindgen_614d85dd04db207f_base

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
  hs_bindgen_614d85dd04db207f

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_get_version@
foreign import ccall safe "hs_bindgen_7030daa79821bad3" hs_bindgen_7030daa79821bad3_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_get_version@
hs_bindgen_7030daa79821bad3 ::
     RIP.Ptr River_libinput_result_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7030daa79821bad3 =
  RIP.fromFFIType hs_bindgen_7030daa79821bad3_base

{-| __C declaration:__ @river_libinput_result_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1846:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_version ::
     RIP.Ptr River_libinput_result_v1
     -- ^ __C declaration:__ @river_libinput_result_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_libinput_result_v1_get_version =
  hs_bindgen_7030daa79821bad3

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_destroy@
foreign import ccall safe "hs_bindgen_1946af4b1a3ecc47" hs_bindgen_1946af4b1a3ecc47_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_Safe_river_libinput_result_v1_destroy@
hs_bindgen_1946af4b1a3ecc47 ::
     RIP.Ptr River_libinput_result_v1
  -> IO ()
hs_bindgen_1946af4b1a3ecc47 =
  RIP.fromFFIType hs_bindgen_1946af4b1a3ecc47_base

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
  hs_bindgen_1946af4b1a3ecc47

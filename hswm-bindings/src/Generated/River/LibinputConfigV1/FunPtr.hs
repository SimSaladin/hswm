{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LibinputConfigV1.FunPtr
    ( Generated.River.LibinputConfigV1.FunPtr.river_libinput_config_v1_add_listener
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_config_v1_set_user_data
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_config_v1_get_user_data
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_config_v1_get_version
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_config_v1_stop
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_config_v1_destroy
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_config_v1_create_accel_config
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_add_listener
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_user_data
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_get_user_data
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_get_version
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_destroy
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_send_events
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_tap
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_tap_button_map
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_drag
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_drag_lock
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_three_finger_drag
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_calibration_matrix
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_accel_profile
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_accel_speed
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_apply_accel_config
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_natural_scroll
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_left_handed
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_click_method
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_clickfinger_button_map
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_middle_emulation
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_scroll_method
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_scroll_button
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_scroll_button_lock
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_dwt
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_dwtp
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_device_v1_set_rotation
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_accel_config_v1_set_user_data
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_accel_config_v1_get_user_data
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_accel_config_v1_get_version
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_accel_config_v1_destroy
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_accel_config_v1_set_points
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_result_v1_add_listener
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_result_v1_set_user_data
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_result_v1_get_user_data
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_result_v1_get_version
    , Generated.River.LibinputConfigV1.FunPtr.river_libinput_result_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.LibinputConfigV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-libinput-config-v1-client-protocol.h>"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_2b7f62918ef8368a (void)) ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  struct river_libinput_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_add_listener;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b09310ec4c6d92d1 (void)) ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_set_user_data;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_30d33aea223f990a (void)) ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_get_user_data;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_f658af33ea2b5065 (void)) ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_get_version;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_06dc08bf9d457af2 (void)) ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_stop;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_22855773ccc9b86a (void)) ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_destroy;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_create_accel_config */"
  , "__attribute__ ((const))"
  , "struct river_libinput_accel_config_v1 *(*hs_bindgen_54146646f97e8f6d (void)) ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_create_accel_config;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_dd98c7559e4ca848 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_add_listener;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_24da8dd9b00100af (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_user_data;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_6ff806698e2a8db0 (void)) ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_get_user_data;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_81e41731a00df7fa (void)) ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_get_version;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_72a87ed0bb6f38a0 (void)) ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_destroy;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_send_events */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_04343d9d1c070ee3 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_send_events;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_tap */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_94b1b85eecf89e6a (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_tap;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_tap_button_map */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_58ef201c08692537 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_tap_button_map;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_drag */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_3b70c081e5a572fe (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_drag;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_drag_lock */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_0e894388d5e1f93b (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_drag_lock;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_three_finger_drag */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_694990ef77c2a399 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_three_finger_drag;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_calibration_matrix */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_f4a535fd03f900a1 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_calibration_matrix;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_accel_profile */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_89158c5f0993b9ea (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_accel_profile;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_accel_speed */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_02f5235ca262634a (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_accel_speed;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_apply_accel_config */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_0a3cffd64fca2fba (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_accel_config_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_apply_accel_config;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_natural_scroll */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_388e7b075b0bcb01 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_natural_scroll;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_left_handed */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_a62f2daea9288716 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_left_handed;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_click_method */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_b4b71ffc6a6b8f48 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_click_method;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_clickfinger_button_map */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_1349e08c57e3bde6 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_clickfinger_button_map;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_middle_emulation */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_39766101d2a85014 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_middle_emulation;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_method */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_2534f162f0e49de4 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_scroll_method;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_button */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_770ed62327483135 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_scroll_button;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_button_lock */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_46c129aff0255d1c (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_scroll_button_lock;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_dwt */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_224086add808b3cd (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_dwt;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_dwtp */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_4e140415d1fe7ff8 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_dwtp;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_rotation */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_26265c5cc2772942 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_rotation;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6181eaff3de2a922 (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_set_user_data;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_bddd68b69a74dfaf (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_get_user_data;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_e970afc07c458254 (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_get_version;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bb513db571739ada (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_destroy;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_set_points */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_210a0d5f8a5e4d0c (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_array *arg3,"
  , "  struct wl_array *arg4"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_set_points;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e5f4c314131b5819 (void)) ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  struct river_libinput_result_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_add_listener;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1fef333e630cefc2 (void)) ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_set_user_data;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_ed2feb19e863d179 (void)) ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_get_user_data;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_c4b05eeaf346573f (void)) ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_get_version;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d23a4453c220c07c (void)) ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_2b7f62918ef8368a" hs_bindgen_2b7f62918ef8368a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_add_listener@
hs_bindgen_2b7f62918ef8368a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> (PtrConst.PtrConst River_libinput_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_2b7f62918ef8368a =
  RIP.fromFFIType hs_bindgen_2b7f62918ef8368a_base

{-# NOINLINE river_libinput_config_v1_add_listener #-}
{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 197:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> (PtrConst.PtrConst River_libinput_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_libinput_config_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_2b7f62918ef8368a

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_b09310ec4c6d92d1" hs_bindgen_b09310ec4c6d92d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_set_user_data@
hs_bindgen_b09310ec4c6d92d1 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b09310ec4c6d92d1 =
  RIP.fromFFIType hs_bindgen_b09310ec4c6d92d1_base

{-# NOINLINE river_libinput_config_v1_set_user_data #-}
{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 232:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_libinput_config_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b09310ec4c6d92d1

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_30d33aea223f990a" hs_bindgen_30d33aea223f990a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_get_user_data@
hs_bindgen_30d33aea223f990a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_30d33aea223f990a =
  RIP.fromFFIType hs_bindgen_30d33aea223f990a_base

{-# NOINLINE river_libinput_config_v1_get_user_data #-}
{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 239:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO (RIP.Ptr RIP.Void))
river_libinput_config_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_30d33aea223f990a

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_f658af33ea2b5065" hs_bindgen_f658af33ea2b5065_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_get_version@
hs_bindgen_f658af33ea2b5065 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_f658af33ea2b5065 =
  RIP.fromFFIType hs_bindgen_f658af33ea2b5065_base

{-# NOINLINE river_libinput_config_v1_get_version #-}
{-| __C declaration:__ @river_libinput_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 245:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_libinput_config_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_f658af33ea2b5065

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_06dc08bf9d457af2" hs_bindgen_06dc08bf9d457af2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_stop@
hs_bindgen_06dc08bf9d457af2 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO ()))
hs_bindgen_06dc08bf9d457af2 =
  RIP.fromFFIType hs_bindgen_06dc08bf9d457af2_base

{-# NOINLINE river_libinput_config_v1_stop #-}
{-|

  > iface_river_libinput_config_v1

  This request indicates that the client no longer wishes to receive events on this object.

  The Wayland protocol is asynchronous, which means the server may send further events until the stop request is processed. The client must wait for a river_libinput_config_v1.finished event before destroying this object.

__C declaration:__ @river_libinput_config_v1_stop@

__defined at:__ @river-libinput-config-v1-client-protocol.h 262:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_stop :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO ())
river_libinput_config_v1_stop =
  RIP.unsafePerformIO hs_bindgen_06dc08bf9d457af2

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_22855773ccc9b86a" hs_bindgen_22855773ccc9b86a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_destroy@
hs_bindgen_22855773ccc9b86a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO ()))
hs_bindgen_22855773ccc9b86a =
  RIP.fromFFIType hs_bindgen_22855773ccc9b86a_base

{-# NOINLINE river_libinput_config_v1_destroy #-}
{-|

  > iface_river_libinput_config_v1

  This request should be called after the finished event has been received to complete destruction of the object.

  It is a protocol error to make this request before the finished event has been received.

  If a client wishes to destroy this object it should send a river_libinput_config_v1.stop request and wait for a river_libinput_config_v1.finished event. Once the finished event is received it is safe to destroy this object and any other objects created through this interface.

__C declaration:__ @river_libinput_config_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 284:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO ())
river_libinput_config_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_22855773ccc9b86a

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_create_accel_config@
foreign import ccall unsafe "hs_bindgen_54146646f97e8f6d" hs_bindgen_54146646f97e8f6d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_create_accel_config@
hs_bindgen_54146646f97e8f6d :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_accel_config_v1)))
hs_bindgen_54146646f97e8f6d =
  RIP.fromFFIType hs_bindgen_54146646f97e8f6d_base

{-# NOINLINE river_libinput_config_v1_create_accel_config #-}
{-|

  > iface_river_libinput_config_v1

  Create a acceleration config which can be applied with river_libinput_device_v1.apply_accel_config.

__C declaration:__ @river_libinput_config_v1_create_accel_config@

__defined at:__ @river-libinput-config-v1-client-protocol.h 297:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_create_accel_config :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_accel_config_v1))
river_libinput_config_v1_create_accel_config =
  RIP.unsafePerformIO hs_bindgen_54146646f97e8f6d

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_dd98c7559e4ca848" hs_bindgen_dd98c7559e4ca848_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_add_listener@
hs_bindgen_dd98c7559e4ca848 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (PtrConst.PtrConst River_libinput_device_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_dd98c7559e4ca848 =
  RIP.fromFFIType hs_bindgen_dd98c7559e4ca848_base

{-# NOINLINE river_libinput_device_v1_add_listener #-}
{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 973:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (PtrConst.PtrConst River_libinput_device_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_libinput_device_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_dd98c7559e4ca848

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_24da8dd9b00100af" hs_bindgen_24da8dd9b00100af_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_user_data@
hs_bindgen_24da8dd9b00100af :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_24da8dd9b00100af =
  RIP.fromFFIType hs_bindgen_24da8dd9b00100af_base

{-# NOINLINE river_libinput_device_v1_set_user_data #-}
{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1315:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_libinput_device_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_24da8dd9b00100af

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_6ff806698e2a8db0" hs_bindgen_6ff806698e2a8db0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_get_user_data@
hs_bindgen_6ff806698e2a8db0 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_6ff806698e2a8db0 =
  RIP.fromFFIType hs_bindgen_6ff806698e2a8db0_base

{-# NOINLINE river_libinput_device_v1_get_user_data #-}
{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1322:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO (RIP.Ptr RIP.Void))
river_libinput_device_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_6ff806698e2a8db0

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_get_version@
foreign import ccall unsafe "hs_bindgen_81e41731a00df7fa" hs_bindgen_81e41731a00df7fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_get_version@
hs_bindgen_81e41731a00df7fa :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_81e41731a00df7fa =
  RIP.fromFFIType hs_bindgen_81e41731a00df7fa_base

{-# NOINLINE river_libinput_device_v1_get_version #-}
{-| __C declaration:__ @river_libinput_device_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1328:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_libinput_device_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_81e41731a00df7fa

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_destroy@
foreign import ccall unsafe "hs_bindgen_72a87ed0bb6f38a0" hs_bindgen_72a87ed0bb6f38a0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_destroy@
hs_bindgen_72a87ed0bb6f38a0 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO ()))
hs_bindgen_72a87ed0bb6f38a0 =
  RIP.fromFFIType hs_bindgen_72a87ed0bb6f38a0_base

{-# NOINLINE river_libinput_device_v1_destroy #-}
{-|

  > iface_river_libinput_device_v1

  This request indicates that the client will no longer use the input device object and that it may be safely destroyed.

__C declaration:__ @river_libinput_device_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1340:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO ())
river_libinput_device_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_72a87ed0bb6f38a0

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_send_events@
foreign import ccall unsafe "hs_bindgen_04343d9d1c070ee3" hs_bindgen_04343d9d1c070ee3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_send_events@
hs_bindgen_04343d9d1c070ee3 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_04343d9d1c070ee3 =
  RIP.fromFFIType hs_bindgen_04343d9d1c070ee3_base

{-# NOINLINE river_libinput_device_v1_set_send_events #-}
{-|

  > iface_river_libinput_device_v1

  Set the send events mode for the device.

__C declaration:__ @river_libinput_device_v1_set_send_events@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1352:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_send_events :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_send_events =
  RIP.unsafePerformIO hs_bindgen_04343d9d1c070ee3

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_tap@
foreign import ccall unsafe "hs_bindgen_94b1b85eecf89e6a" hs_bindgen_94b1b85eecf89e6a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_tap@
hs_bindgen_94b1b85eecf89e6a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_94b1b85eecf89e6a =
  RIP.fromFFIType hs_bindgen_94b1b85eecf89e6a_base

{-# NOINLINE river_libinput_device_v1_set_tap #-}
{-|

  > iface_river_libinput_device_v1

  Configure tap-to-click on this device, with a default mapping of 1, 2, 3 finger tap mapping to left, right, middle click, respectively.

__C declaration:__ @river_libinput_device_v1_set_tap@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1369:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_tap :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_tap =
  RIP.unsafePerformIO hs_bindgen_94b1b85eecf89e6a

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_tap_button_map@
foreign import ccall unsafe "hs_bindgen_58ef201c08692537" hs_bindgen_58ef201c08692537_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_tap_button_map@
hs_bindgen_58ef201c08692537 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_58ef201c08692537 =
  RIP.fromFFIType hs_bindgen_58ef201c08692537_base

{-# NOINLINE river_libinput_device_v1_set_tap_button_map #-}
{-|

  > iface_river_libinput_device_v1

  Set the finger number to button number mapping for tap-to-click. The default mapping on most devices is to have a 1, 2 and 3 finger tap to map to the left, right and middle button, respectively.

__C declaration:__ @river_libinput_device_v1_set_tap_button_map@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1387:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_tap_button_map :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_tap_button_map =
  RIP.unsafePerformIO hs_bindgen_58ef201c08692537

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_drag@
foreign import ccall unsafe "hs_bindgen_3b70c081e5a572fe" hs_bindgen_3b70c081e5a572fe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_drag@
hs_bindgen_3b70c081e5a572fe :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_3b70c081e5a572fe =
  RIP.fromFFIType hs_bindgen_3b70c081e5a572fe_base

{-# NOINLINE river_libinput_device_v1_set_drag #-}
{-|

  > iface_river_libinput_device_v1

  Configure tap-and-drag functionality on the device.

__C declaration:__ @river_libinput_device_v1_set_drag@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1403:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_drag :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_drag =
  RIP.unsafePerformIO hs_bindgen_3b70c081e5a572fe

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_drag_lock@
foreign import ccall unsafe "hs_bindgen_0e894388d5e1f93b" hs_bindgen_0e894388d5e1f93b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_drag_lock@
hs_bindgen_0e894388d5e1f93b :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_0e894388d5e1f93b =
  RIP.fromFFIType hs_bindgen_0e894388d5e1f93b_base

{-# NOINLINE river_libinput_device_v1_set_drag_lock #-}
{-|

  > iface_river_libinput_device_v1

  Configure drag-lock during tapping on this device. When enabled, a finger may be lifted and put back on the touchpad and the drag process continues. A timeout for lifting the finger is optional. When disabled, lifting the finger during a tap-and-drag will immediately stop the drag. See the libinput documentation for more details.

__C declaration:__ @river_libinput_device_v1_set_drag_lock@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1423:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_drag_lock :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_drag_lock =
  RIP.unsafePerformIO hs_bindgen_0e894388d5e1f93b

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_three_finger_drag@
foreign import ccall unsafe "hs_bindgen_694990ef77c2a399" hs_bindgen_694990ef77c2a399_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_three_finger_drag@
hs_bindgen_694990ef77c2a399 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_694990ef77c2a399 =
  RIP.fromFFIType hs_bindgen_694990ef77c2a399_base

{-# NOINLINE river_libinput_device_v1_set_three_finger_drag #-}
{-|

  > iface_river_libinput_device_v1

  Configure three finger drag functionality for the device.

__C declaration:__ @river_libinput_device_v1_set_three_finger_drag@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1439:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_three_finger_drag :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_three_finger_drag =
  RIP.unsafePerformIO hs_bindgen_694990ef77c2a399

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_calibration_matrix@
foreign import ccall unsafe "hs_bindgen_f4a535fd03f900a1" hs_bindgen_f4a535fd03f900a1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_calibration_matrix@
hs_bindgen_f4a535fd03f900a1 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Wl_array) -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_f4a535fd03f900a1 =
  RIP.fromFFIType hs_bindgen_f4a535fd03f900a1_base

{-# NOINLINE river_libinput_device_v1_set_calibration_matrix #-}
{-|

  > iface_river_libinput_device_v1

  Set calibration matrix.

__C declaration:__ @river_libinput_device_v1_set_calibration_matrix@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1455:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_calibration_matrix :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Wl_array) -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_calibration_matrix =
  RIP.unsafePerformIO hs_bindgen_f4a535fd03f900a1

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_accel_profile@
foreign import ccall unsafe "hs_bindgen_89158c5f0993b9ea" hs_bindgen_89158c5f0993b9ea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_accel_profile@
hs_bindgen_89158c5f0993b9ea :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_89158c5f0993b9ea =
  RIP.fromFFIType hs_bindgen_89158c5f0993b9ea_base

{-# NOINLINE river_libinput_device_v1_set_accel_profile #-}
{-|

  > iface_river_libinput_device_v1

  Set the acceleration profile.

__C declaration:__ @river_libinput_device_v1_set_accel_profile@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1471:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_accel_profile :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_accel_profile =
  RIP.unsafePerformIO hs_bindgen_89158c5f0993b9ea

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_accel_speed@
foreign import ccall unsafe "hs_bindgen_02f5235ca262634a" hs_bindgen_02f5235ca262634a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_accel_speed@
hs_bindgen_02f5235ca262634a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Wl_array) -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_02f5235ca262634a =
  RIP.fromFFIType hs_bindgen_02f5235ca262634a_base

{-# NOINLINE river_libinput_device_v1_set_accel_speed #-}
{-|

  > iface_river_libinput_device_v1

  Set the acceleration speed within a range of [-1, 1], where 0 is the default acceleration for this device, -1 is the slowest acceleration and 1 is the maximum acceleration available on this device.

__C declaration:__ @river_libinput_device_v1_set_accel_speed@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1489:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_accel_speed :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Wl_array) -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_accel_speed =
  RIP.unsafePerformIO hs_bindgen_02f5235ca262634a

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_apply_accel_config@
foreign import ccall unsafe "hs_bindgen_0a3cffd64fca2fba" hs_bindgen_0a3cffd64fca2fba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_apply_accel_config@
hs_bindgen_0a3cffd64fca2fba :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_libinput_accel_config_v1) -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_0a3cffd64fca2fba =
  RIP.fromFFIType hs_bindgen_0a3cffd64fca2fba_base

{-# NOINLINE river_libinput_device_v1_apply_accel_config #-}
{-|

  > iface_river_libinput_device_v1

  Apply a pointer accleration config.

__C declaration:__ @river_libinput_device_v1_apply_accel_config@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1505:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_apply_accel_config :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_libinput_accel_config_v1) -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_apply_accel_config =
  RIP.unsafePerformIO hs_bindgen_0a3cffd64fca2fba

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_natural_scroll@
foreign import ccall unsafe "hs_bindgen_388e7b075b0bcb01" hs_bindgen_388e7b075b0bcb01_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_natural_scroll@
hs_bindgen_388e7b075b0bcb01 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_388e7b075b0bcb01 =
  RIP.fromFFIType hs_bindgen_388e7b075b0bcb01_base

{-# NOINLINE river_libinput_device_v1_set_natural_scroll #-}
{-|

  > iface_river_libinput_device_v1

  Set natural scroll state.

__C declaration:__ @river_libinput_device_v1_set_natural_scroll@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1521:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_natural_scroll :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_natural_scroll =
  RIP.unsafePerformIO hs_bindgen_388e7b075b0bcb01

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_left_handed@
foreign import ccall unsafe "hs_bindgen_a62f2daea9288716" hs_bindgen_a62f2daea9288716_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_left_handed@
hs_bindgen_a62f2daea9288716 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_a62f2daea9288716 =
  RIP.fromFFIType hs_bindgen_a62f2daea9288716_base

{-# NOINLINE river_libinput_device_v1_set_left_handed #-}
{-|

  > iface_river_libinput_device_v1

  Set left-handed mode state.

__C declaration:__ @river_libinput_device_v1_set_left_handed@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1537:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_left_handed :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_left_handed =
  RIP.unsafePerformIO hs_bindgen_a62f2daea9288716

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_click_method@
foreign import ccall unsafe "hs_bindgen_b4b71ffc6a6b8f48" hs_bindgen_b4b71ffc6a6b8f48_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_click_method@
hs_bindgen_b4b71ffc6a6b8f48 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_b4b71ffc6a6b8f48 =
  RIP.fromFFIType hs_bindgen_b4b71ffc6a6b8f48_base

{-# NOINLINE river_libinput_device_v1_set_click_method #-}
{-|

  > iface_river_libinput_device_v1

  Set click method.

__C declaration:__ @river_libinput_device_v1_set_click_method@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1553:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_click_method :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_click_method =
  RIP.unsafePerformIO hs_bindgen_b4b71ffc6a6b8f48

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_clickfinger_button_map@
foreign import ccall unsafe "hs_bindgen_1349e08c57e3bde6" hs_bindgen_1349e08c57e3bde6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_clickfinger_button_map@
hs_bindgen_1349e08c57e3bde6 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_1349e08c57e3bde6 =
  RIP.fromFFIType hs_bindgen_1349e08c57e3bde6_base

{-# NOINLINE river_libinput_device_v1_set_clickfinger_button_map #-}
{-|

  > iface_river_libinput_device_v1

  Set clickfinger button map. Supported if click_methods.clickfinger is supported.

__C declaration:__ @river_libinput_device_v1_set_clickfinger_button_map@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1570:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_clickfinger_button_map :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_clickfinger_button_map =
  RIP.unsafePerformIO hs_bindgen_1349e08c57e3bde6

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_middle_emulation@
foreign import ccall unsafe "hs_bindgen_39766101d2a85014" hs_bindgen_39766101d2a85014_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_middle_emulation@
hs_bindgen_39766101d2a85014 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_39766101d2a85014 =
  RIP.fromFFIType hs_bindgen_39766101d2a85014_base

{-# NOINLINE river_libinput_device_v1_set_middle_emulation #-}
{-|

  > iface_river_libinput_device_v1

  Set middle mouse button emulation state.

__C declaration:__ @river_libinput_device_v1_set_middle_emulation@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1586:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_middle_emulation :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_middle_emulation =
  RIP.unsafePerformIO hs_bindgen_39766101d2a85014

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_method@
foreign import ccall unsafe "hs_bindgen_2534f162f0e49de4" hs_bindgen_2534f162f0e49de4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_method@
hs_bindgen_2534f162f0e49de4 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_2534f162f0e49de4 =
  RIP.fromFFIType hs_bindgen_2534f162f0e49de4_base

{-# NOINLINE river_libinput_device_v1_set_scroll_method #-}
{-|

  > iface_river_libinput_device_v1

  Set scroll method.

__C declaration:__ @river_libinput_device_v1_set_scroll_method@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1602:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_scroll_method :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_scroll_method =
  RIP.unsafePerformIO hs_bindgen_2534f162f0e49de4

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_button@
foreign import ccall unsafe "hs_bindgen_770ed62327483135" hs_bindgen_770ed62327483135_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_button@
hs_bindgen_770ed62327483135 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_770ed62327483135 =
  RIP.fromFFIType hs_bindgen_770ed62327483135_base

{-# NOINLINE river_libinput_device_v1_set_scroll_button #-}
{-|

  > iface_river_libinput_device_v1

  Set scroll button. Supported if scroll_methods.on_button_down is supported.

__C declaration:__ @river_libinput_device_v1_set_scroll_button@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1619:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_scroll_button :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_scroll_button =
  RIP.unsafePerformIO hs_bindgen_770ed62327483135

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_button_lock@
foreign import ccall unsafe "hs_bindgen_46c129aff0255d1c" hs_bindgen_46c129aff0255d1c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_scroll_button_lock@
hs_bindgen_46c129aff0255d1c :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_46c129aff0255d1c =
  RIP.fromFFIType hs_bindgen_46c129aff0255d1c_base

{-# NOINLINE river_libinput_device_v1_set_scroll_button_lock #-}
{-|

  > iface_river_libinput_device_v1

  Set scroll button lock state. Supported if scroll_methods.on_button_down is supported.

__C declaration:__ @river_libinput_device_v1_set_scroll_button_lock@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1636:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_scroll_button_lock :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_scroll_button_lock =
  RIP.unsafePerformIO hs_bindgen_46c129aff0255d1c

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_dwt@
foreign import ccall unsafe "hs_bindgen_224086add808b3cd" hs_bindgen_224086add808b3cd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_dwt@
hs_bindgen_224086add808b3cd :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_224086add808b3cd =
  RIP.fromFFIType hs_bindgen_224086add808b3cd_base

{-# NOINLINE river_libinput_device_v1_set_dwt #-}
{-|

  > iface_river_libinput_device_v1

  Set disable-while-typing state.

__C declaration:__ @river_libinput_device_v1_set_dwt@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1652:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_dwt :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_dwt =
  RIP.unsafePerformIO hs_bindgen_224086add808b3cd

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_dwtp@
foreign import ccall unsafe "hs_bindgen_4e140415d1fe7ff8" hs_bindgen_4e140415d1fe7ff8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_dwtp@
hs_bindgen_4e140415d1fe7ff8 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_4e140415d1fe7ff8 =
  RIP.fromFFIType hs_bindgen_4e140415d1fe7ff8_base

{-# NOINLINE river_libinput_device_v1_set_dwtp #-}
{-|

  > iface_river_libinput_device_v1

  Set disable-while-trackpointing state.

__C declaration:__ @river_libinput_device_v1_set_dwtp@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1668:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_dwtp :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_dwtp =
  RIP.unsafePerformIO hs_bindgen_4e140415d1fe7ff8

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_rotation@
foreign import ccall unsafe "hs_bindgen_26265c5cc2772942" hs_bindgen_26265c5cc2772942_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_set_rotation@
hs_bindgen_26265c5cc2772942 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_26265c5cc2772942 =
  RIP.fromFFIType hs_bindgen_26265c5cc2772942_base

{-# NOINLINE river_libinput_device_v1_set_rotation #-}
{-|

  > iface_river_libinput_device_v1

  Set rotation angle in degrees clockwise off the logical neutral position. Angle must be in the range [0-360).

__C declaration:__ @river_libinput_device_v1_set_rotation@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1685:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_rotation :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_rotation =
  RIP.unsafePerformIO hs_bindgen_26265c5cc2772942

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_6181eaff3de2a922" hs_bindgen_6181eaff3de2a922_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_set_user_data@
hs_bindgen_6181eaff3de2a922 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_6181eaff3de2a922 =
  RIP.fromFFIType hs_bindgen_6181eaff3de2a922_base

{-# NOINLINE river_libinput_accel_config_v1_set_user_data #-}
{-|

  > iface_river_libinput_accel_config_v1

__C declaration:__ @river_libinput_accel_config_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1729:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_libinput_accel_config_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_6181eaff3de2a922

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_bddd68b69a74dfaf" hs_bindgen_bddd68b69a74dfaf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_get_user_data@
hs_bindgen_bddd68b69a74dfaf :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_bddd68b69a74dfaf =
  RIP.fromFFIType hs_bindgen_bddd68b69a74dfaf_base

{-# NOINLINE river_libinput_accel_config_v1_get_user_data #-}
{-|

  > iface_river_libinput_accel_config_v1

__C declaration:__ @river_libinput_accel_config_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1736:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO (RIP.Ptr RIP.Void))
river_libinput_accel_config_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_bddd68b69a74dfaf

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_e970afc07c458254" hs_bindgen_e970afc07c458254_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_get_version@
hs_bindgen_e970afc07c458254 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_e970afc07c458254 =
  RIP.fromFFIType hs_bindgen_e970afc07c458254_base

{-# NOINLINE river_libinput_accel_config_v1_get_version #-}
{-| __C declaration:__ @river_libinput_accel_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1742:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_libinput_accel_config_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_e970afc07c458254

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_bb513db571739ada" hs_bindgen_bb513db571739ada_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_destroy@
hs_bindgen_bb513db571739ada :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO ()))
hs_bindgen_bb513db571739ada =
  RIP.fromFFIType hs_bindgen_bb513db571739ada_base

{-# NOINLINE river_libinput_accel_config_v1_destroy #-}
{-|

  > iface_river_libinput_accel_config_v1

  This request indicates that the client will no longer use the accel config object and that it may be safely destroyed.

__C declaration:__ @river_libinput_accel_config_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1754:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO ())
river_libinput_accel_config_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_bb513db571739ada

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_set_points@
foreign import ccall unsafe "hs_bindgen_210a0d5f8a5e4d0c" hs_bindgen_210a0d5f8a5e4d0c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_set_points@
hs_bindgen_210a0d5f8a5e4d0c :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_array) -> (RIP.Ptr Wl_array) -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_210a0d5f8a5e4d0c =
  RIP.fromFFIType hs_bindgen_210a0d5f8a5e4d0c_base

{-# NOINLINE river_libinput_accel_config_v1_set_points #-}
{-|

  > iface_river_libinput_accel_config_v1

  Defines the acceleration function for a given movement type in an acceleration configuration with custom accel profile.

__C declaration:__ @river_libinput_accel_config_v1_set_points@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1767:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_set_points :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_array) -> (RIP.Ptr Wl_array) -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_accel_config_v1_set_points =
  RIP.unsafePerformIO hs_bindgen_210a0d5f8a5e4d0c

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_e5f4c314131b5819" hs_bindgen_e5f4c314131b5819_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_add_listener@
hs_bindgen_e5f4c314131b5819 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> (PtrConst.PtrConst River_libinput_result_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_e5f4c314131b5819 =
  RIP.fromFFIType hs_bindgen_e5f4c314131b5819_base

{-# NOINLINE river_libinput_result_v1_add_listener #-}
{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1810:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> (PtrConst.PtrConst River_libinput_result_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_libinput_result_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_e5f4c314131b5819

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_1fef333e630cefc2" hs_bindgen_1fef333e630cefc2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_set_user_data@
hs_bindgen_1fef333e630cefc2 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_1fef333e630cefc2 =
  RIP.fromFFIType hs_bindgen_1fef333e630cefc2_base

{-# NOINLINE river_libinput_result_v1_set_user_data #-}
{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1833:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_libinput_result_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_1fef333e630cefc2

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ed2feb19e863d179" hs_bindgen_ed2feb19e863d179_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_get_user_data@
hs_bindgen_ed2feb19e863d179 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_ed2feb19e863d179 =
  RIP.fromFFIType hs_bindgen_ed2feb19e863d179_base

{-# NOINLINE river_libinput_result_v1_get_user_data #-}
{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1840:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO (RIP.Ptr RIP.Void))
river_libinput_result_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_ed2feb19e863d179

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_get_version@
foreign import ccall unsafe "hs_bindgen_c4b05eeaf346573f" hs_bindgen_c4b05eeaf346573f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_get_version@
hs_bindgen_c4b05eeaf346573f :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_c4b05eeaf346573f =
  RIP.fromFFIType hs_bindgen_c4b05eeaf346573f_base

{-# NOINLINE river_libinput_result_v1_get_version #-}
{-| __C declaration:__ @river_libinput_result_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1846:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_libinput_result_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_c4b05eeaf346573f

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_destroy@
foreign import ccall unsafe "hs_bindgen_d23a4453c220c07c" hs_bindgen_d23a4453c220c07c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_destroy@
hs_bindgen_d23a4453c220c07c :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO ()))
hs_bindgen_d23a4453c220c07c =
  RIP.fromFFIType hs_bindgen_d23a4453c220c07c_base

{-# NOINLINE river_libinput_result_v1_destroy #-}
{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1853:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO ())
river_libinput_result_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_d23a4453c220c07c

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.LibinputConfigV1.Generated.FunPtr
    ( Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_config_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_config_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_config_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_config_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_config_v1_stop
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_config_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_config_v1_create_accel_config
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_send_events
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_tap
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_tap_button_map
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_drag
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_drag_lock
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_three_finger_drag
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_calibration_matrix
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_accel_profile
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_accel_speed
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_apply_accel_config
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_natural_scroll
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_left_handed
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_click_method
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_clickfinger_button_map
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_middle_emulation
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_scroll_method
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_scroll_button
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_scroll_button_lock
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_dwt
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_dwtp
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_device_v1_set_rotation
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_accel_config_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_accel_config_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_accel_config_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_accel_config_v1_destroy
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_accel_config_v1_set_points
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_result_v1_add_listener
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_result_v1_set_user_data
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_result_v1_get_user_data
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_result_v1_get_version
    , Bindings.River.LibinputConfigV1.Generated.FunPtr.river_libinput_result_v1_destroy
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
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8069eb74a7d5d4b8 (void)) ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  struct river_libinput_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_add_listener;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ee6455b87064d9dc (void)) ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_1c38f4656e2406f4 (void)) ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_a3b8cf3bd7152460 (void)) ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_get_version;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f6fa5337c12346e3 (void)) ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_stop;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bf51fd68ece8efdd (void)) ("
  , "  struct river_libinput_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_destroy;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_create_accel_config */"
  , "__attribute__ ((const))"
  , "struct river_libinput_accel_config_v1 *(*hs_bindgen_906a0aaab41633d3 (void)) ("
  , "  struct river_libinput_config_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_config_v1_create_accel_config;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e7e83ba9210cb107 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_device_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_add_listener;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_04630bcde4b09ac0 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_e5a806f2e097de17 (void)) ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_f9a724b27e9895b3 (void)) ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_get_version;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ad7a23249bb87f83 (void)) ("
  , "  struct river_libinput_device_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_destroy;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_send_events */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_0c654bbfb05d788a (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_send_events;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_tap */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_101861ea79b9099a (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_tap;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_tap_button_map */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_8d1bb0935c231ae0 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_tap_button_map;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_drag */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_465112b028bc8af6 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_drag;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_drag_lock */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_52275fd07fa85c1a (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_drag_lock;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_three_finger_drag */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_0ba504ae73c718bd (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_three_finger_drag;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_calibration_matrix */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_2d94708d83b78ce0 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_calibration_matrix;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_accel_profile */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_04903700d67fc34b (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_accel_profile;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_accel_speed */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_ffa093250452a275 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct wl_array *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_accel_speed;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_apply_accel_config */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_d7583f9c928281a7 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  struct river_libinput_accel_config_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_apply_accel_config;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_natural_scroll */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_de7b4bb92f96259e (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_natural_scroll;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_left_handed */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_0c53a1a581acb5a3 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_left_handed;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_click_method */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_85fa060fdf66805b (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_click_method;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_clickfinger_button_map */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_e0c3ca8eef19bb73 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_clickfinger_button_map;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_middle_emulation */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_a08dd2ccfde7000f (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_middle_emulation;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_method */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_f7575589f7d1a2fa (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_scroll_method;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_button */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_b027af6fda5c14eb (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_scroll_button;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_button_lock */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_a6d33313582598b9 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_scroll_button_lock;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_dwt */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_1b241ecaa3059fc2 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_dwt;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_dwtp */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_babcd49669dd14c0 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_dwtp;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_rotation */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_e7ed44c8c7e607a4 (void)) ("
  , "  struct river_libinput_device_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_libinput_device_v1_set_rotation;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5667190c1ebf818b (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_de1960c313c81e00 (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_985c6e830be202b9 (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_get_version;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a2021b5cfe65a565 (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_destroy;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_set_points */"
  , "__attribute__ ((const))"
  , "struct river_libinput_result_v1 *(*hs_bindgen_0bed3ec537bfd589 (void)) ("
  , "  struct river_libinput_accel_config_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  struct wl_array *arg3,"
  , "  struct wl_array *arg4"
  , ")"
  , "{"
  , "  return &river_libinput_accel_config_v1_set_points;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3d2b227ac0e8d76a (void)) ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  struct river_libinput_result_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_add_listener;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_16764760c7c0f5d4 (void)) ("
  , "  struct river_libinput_result_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_78f8dd2e144d18f3 (void)) ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_f18004473f1366f2 (void)) ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_get_version;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f8f979068b43f11f (void)) ("
  , "  struct river_libinput_result_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_libinput_result_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_8069eb74a7d5d4b8" hs_bindgen_8069eb74a7d5d4b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_add_listener@
hs_bindgen_8069eb74a7d5d4b8 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> (PtrConst.PtrConst River_libinput_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_8069eb74a7d5d4b8 =
  RIP.fromFFIType hs_bindgen_8069eb74a7d5d4b8_base

{-# NOINLINE river_libinput_config_v1_add_listener #-}
{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 197:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> (PtrConst.PtrConst River_libinput_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_libinput_config_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_8069eb74a7d5d4b8

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_ee6455b87064d9dc" hs_bindgen_ee6455b87064d9dc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_set_user_data@
hs_bindgen_ee6455b87064d9dc :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_ee6455b87064d9dc =
  RIP.fromFFIType hs_bindgen_ee6455b87064d9dc_base

{-# NOINLINE river_libinput_config_v1_set_user_data #-}
{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 232:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_libinput_config_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_ee6455b87064d9dc

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_1c38f4656e2406f4" hs_bindgen_1c38f4656e2406f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_get_user_data@
hs_bindgen_1c38f4656e2406f4 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_1c38f4656e2406f4 =
  RIP.fromFFIType hs_bindgen_1c38f4656e2406f4_base

{-# NOINLINE river_libinput_config_v1_get_user_data #-}
{-|

  > iface_river_libinput_config_v1

__C declaration:__ @river_libinput_config_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 239:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO (RIP.Ptr RIP.Void))
river_libinput_config_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_1c38f4656e2406f4

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_a3b8cf3bd7152460" hs_bindgen_a3b8cf3bd7152460_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_get_version@
hs_bindgen_a3b8cf3bd7152460 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_a3b8cf3bd7152460 =
  RIP.fromFFIType hs_bindgen_a3b8cf3bd7152460_base

{-# NOINLINE river_libinput_config_v1_get_version #-}
{-| __C declaration:__ @river_libinput_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 245:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_config_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_libinput_config_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_a3b8cf3bd7152460

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_f6fa5337c12346e3" hs_bindgen_f6fa5337c12346e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_stop@
hs_bindgen_f6fa5337c12346e3 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO ()))
hs_bindgen_f6fa5337c12346e3 =
  RIP.fromFFIType hs_bindgen_f6fa5337c12346e3_base

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
  RIP.unsafePerformIO hs_bindgen_f6fa5337c12346e3

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_bf51fd68ece8efdd" hs_bindgen_bf51fd68ece8efdd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_destroy@
hs_bindgen_bf51fd68ece8efdd :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> IO ()))
hs_bindgen_bf51fd68ece8efdd =
  RIP.fromFFIType hs_bindgen_bf51fd68ece8efdd_base

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
  RIP.unsafePerformIO hs_bindgen_bf51fd68ece8efdd

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_create_accel_config@
foreign import ccall unsafe "hs_bindgen_906a0aaab41633d3" hs_bindgen_906a0aaab41633d3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_create_accel_config@
hs_bindgen_906a0aaab41633d3 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_config_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_accel_config_v1)))
hs_bindgen_906a0aaab41633d3 =
  RIP.fromFFIType hs_bindgen_906a0aaab41633d3_base

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
  RIP.unsafePerformIO hs_bindgen_906a0aaab41633d3

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_e7e83ba9210cb107" hs_bindgen_e7e83ba9210cb107_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_add_listener@
hs_bindgen_e7e83ba9210cb107 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (PtrConst.PtrConst River_libinput_device_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_e7e83ba9210cb107 =
  RIP.fromFFIType hs_bindgen_e7e83ba9210cb107_base

{-# NOINLINE river_libinput_device_v1_add_listener #-}
{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 973:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (PtrConst.PtrConst River_libinput_device_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_libinput_device_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_e7e83ba9210cb107

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_04630bcde4b09ac0" hs_bindgen_04630bcde4b09ac0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_user_data@
hs_bindgen_04630bcde4b09ac0 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_04630bcde4b09ac0 =
  RIP.fromFFIType hs_bindgen_04630bcde4b09ac0_base

{-# NOINLINE river_libinput_device_v1_set_user_data #-}
{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1315:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_libinput_device_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_04630bcde4b09ac0

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e5a806f2e097de17" hs_bindgen_e5a806f2e097de17_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_get_user_data@
hs_bindgen_e5a806f2e097de17 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_e5a806f2e097de17 =
  RIP.fromFFIType hs_bindgen_e5a806f2e097de17_base

{-# NOINLINE river_libinput_device_v1_get_user_data #-}
{-|

  > iface_river_libinput_device_v1

__C declaration:__ @river_libinput_device_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1322:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO (RIP.Ptr RIP.Void))
river_libinput_device_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_e5a806f2e097de17

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_get_version@
foreign import ccall unsafe "hs_bindgen_f9a724b27e9895b3" hs_bindgen_f9a724b27e9895b3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_get_version@
hs_bindgen_f9a724b27e9895b3 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_f9a724b27e9895b3 =
  RIP.fromFFIType hs_bindgen_f9a724b27e9895b3_base

{-# NOINLINE river_libinput_device_v1_get_version #-}
{-| __C declaration:__ @river_libinput_device_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1328:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_libinput_device_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_f9a724b27e9895b3

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_destroy@
foreign import ccall unsafe "hs_bindgen_ad7a23249bb87f83" hs_bindgen_ad7a23249bb87f83_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_destroy@
hs_bindgen_ad7a23249bb87f83 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> IO ()))
hs_bindgen_ad7a23249bb87f83 =
  RIP.fromFFIType hs_bindgen_ad7a23249bb87f83_base

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
  RIP.unsafePerformIO hs_bindgen_ad7a23249bb87f83

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_send_events@
foreign import ccall unsafe "hs_bindgen_0c654bbfb05d788a" hs_bindgen_0c654bbfb05d788a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_send_events@
hs_bindgen_0c654bbfb05d788a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_0c654bbfb05d788a =
  RIP.fromFFIType hs_bindgen_0c654bbfb05d788a_base

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
  RIP.unsafePerformIO hs_bindgen_0c654bbfb05d788a

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_tap@
foreign import ccall unsafe "hs_bindgen_101861ea79b9099a" hs_bindgen_101861ea79b9099a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_tap@
hs_bindgen_101861ea79b9099a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_101861ea79b9099a =
  RIP.fromFFIType hs_bindgen_101861ea79b9099a_base

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
  RIP.unsafePerformIO hs_bindgen_101861ea79b9099a

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_tap_button_map@
foreign import ccall unsafe "hs_bindgen_8d1bb0935c231ae0" hs_bindgen_8d1bb0935c231ae0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_tap_button_map@
hs_bindgen_8d1bb0935c231ae0 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_8d1bb0935c231ae0 =
  RIP.fromFFIType hs_bindgen_8d1bb0935c231ae0_base

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
  RIP.unsafePerformIO hs_bindgen_8d1bb0935c231ae0

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_drag@
foreign import ccall unsafe "hs_bindgen_465112b028bc8af6" hs_bindgen_465112b028bc8af6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_drag@
hs_bindgen_465112b028bc8af6 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_465112b028bc8af6 =
  RIP.fromFFIType hs_bindgen_465112b028bc8af6_base

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
  RIP.unsafePerformIO hs_bindgen_465112b028bc8af6

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_drag_lock@
foreign import ccall unsafe "hs_bindgen_52275fd07fa85c1a" hs_bindgen_52275fd07fa85c1a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_drag_lock@
hs_bindgen_52275fd07fa85c1a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_52275fd07fa85c1a =
  RIP.fromFFIType hs_bindgen_52275fd07fa85c1a_base

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
  RIP.unsafePerformIO hs_bindgen_52275fd07fa85c1a

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_three_finger_drag@
foreign import ccall unsafe "hs_bindgen_0ba504ae73c718bd" hs_bindgen_0ba504ae73c718bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_three_finger_drag@
hs_bindgen_0ba504ae73c718bd :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_0ba504ae73c718bd =
  RIP.fromFFIType hs_bindgen_0ba504ae73c718bd_base

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
  RIP.unsafePerformIO hs_bindgen_0ba504ae73c718bd

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_calibration_matrix@
foreign import ccall unsafe "hs_bindgen_2d94708d83b78ce0" hs_bindgen_2d94708d83b78ce0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_calibration_matrix@
hs_bindgen_2d94708d83b78ce0 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_2d94708d83b78ce0 =
  RIP.fromFFIType hs_bindgen_2d94708d83b78ce0_base

{-# NOINLINE river_libinput_device_v1_set_calibration_matrix #-}
{-|

  > iface_river_libinput_device_v1

  Set calibration matrix.

__C declaration:__ @river_libinput_device_v1_set_calibration_matrix@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1455:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_calibration_matrix :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_calibration_matrix =
  RIP.unsafePerformIO hs_bindgen_2d94708d83b78ce0

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_accel_profile@
foreign import ccall unsafe "hs_bindgen_04903700d67fc34b" hs_bindgen_04903700d67fc34b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_accel_profile@
hs_bindgen_04903700d67fc34b :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_04903700d67fc34b =
  RIP.fromFFIType hs_bindgen_04903700d67fc34b_base

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
  RIP.unsafePerformIO hs_bindgen_04903700d67fc34b

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_accel_speed@
foreign import ccall unsafe "hs_bindgen_ffa093250452a275" hs_bindgen_ffa093250452a275_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_accel_speed@
hs_bindgen_ffa093250452a275 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_ffa093250452a275 =
  RIP.fromFFIType hs_bindgen_ffa093250452a275_base

{-# NOINLINE river_libinput_device_v1_set_accel_speed #-}
{-|

  > iface_river_libinput_device_v1

  Set the acceleration speed within a range of [-1, 1], where 0 is the default acceleration for this device, -1 is the slowest acceleration and 1 is the maximum acceleration available on this device.

__C declaration:__ @river_libinput_device_v1_set_accel_speed@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1489:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_device_v1_set_accel_speed :: RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_device_v1_set_accel_speed =
  RIP.unsafePerformIO hs_bindgen_ffa093250452a275

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_apply_accel_config@
foreign import ccall unsafe "hs_bindgen_d7583f9c928281a7" hs_bindgen_d7583f9c928281a7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_apply_accel_config@
hs_bindgen_d7583f9c928281a7 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> (RIP.Ptr River_libinput_accel_config_v1) -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_d7583f9c928281a7 =
  RIP.fromFFIType hs_bindgen_d7583f9c928281a7_base

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
  RIP.unsafePerformIO hs_bindgen_d7583f9c928281a7

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_natural_scroll@
foreign import ccall unsafe "hs_bindgen_de7b4bb92f96259e" hs_bindgen_de7b4bb92f96259e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_natural_scroll@
hs_bindgen_de7b4bb92f96259e :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_de7b4bb92f96259e =
  RIP.fromFFIType hs_bindgen_de7b4bb92f96259e_base

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
  RIP.unsafePerformIO hs_bindgen_de7b4bb92f96259e

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_left_handed@
foreign import ccall unsafe "hs_bindgen_0c53a1a581acb5a3" hs_bindgen_0c53a1a581acb5a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_left_handed@
hs_bindgen_0c53a1a581acb5a3 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_0c53a1a581acb5a3 =
  RIP.fromFFIType hs_bindgen_0c53a1a581acb5a3_base

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
  RIP.unsafePerformIO hs_bindgen_0c53a1a581acb5a3

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_click_method@
foreign import ccall unsafe "hs_bindgen_85fa060fdf66805b" hs_bindgen_85fa060fdf66805b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_click_method@
hs_bindgen_85fa060fdf66805b :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_85fa060fdf66805b =
  RIP.fromFFIType hs_bindgen_85fa060fdf66805b_base

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
  RIP.unsafePerformIO hs_bindgen_85fa060fdf66805b

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_clickfinger_button_map@
foreign import ccall unsafe "hs_bindgen_e0c3ca8eef19bb73" hs_bindgen_e0c3ca8eef19bb73_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_clickfinger_button_map@
hs_bindgen_e0c3ca8eef19bb73 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_e0c3ca8eef19bb73 =
  RIP.fromFFIType hs_bindgen_e0c3ca8eef19bb73_base

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
  RIP.unsafePerformIO hs_bindgen_e0c3ca8eef19bb73

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_middle_emulation@
foreign import ccall unsafe "hs_bindgen_a08dd2ccfde7000f" hs_bindgen_a08dd2ccfde7000f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_middle_emulation@
hs_bindgen_a08dd2ccfde7000f :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_a08dd2ccfde7000f =
  RIP.fromFFIType hs_bindgen_a08dd2ccfde7000f_base

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
  RIP.unsafePerformIO hs_bindgen_a08dd2ccfde7000f

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_method@
foreign import ccall unsafe "hs_bindgen_f7575589f7d1a2fa" hs_bindgen_f7575589f7d1a2fa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_method@
hs_bindgen_f7575589f7d1a2fa :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_f7575589f7d1a2fa =
  RIP.fromFFIType hs_bindgen_f7575589f7d1a2fa_base

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
  RIP.unsafePerformIO hs_bindgen_f7575589f7d1a2fa

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_button@
foreign import ccall unsafe "hs_bindgen_b027af6fda5c14eb" hs_bindgen_b027af6fda5c14eb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_button@
hs_bindgen_b027af6fda5c14eb :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_b027af6fda5c14eb =
  RIP.fromFFIType hs_bindgen_b027af6fda5c14eb_base

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
  RIP.unsafePerformIO hs_bindgen_b027af6fda5c14eb

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_button_lock@
foreign import ccall unsafe "hs_bindgen_a6d33313582598b9" hs_bindgen_a6d33313582598b9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_scroll_button_lock@
hs_bindgen_a6d33313582598b9 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_a6d33313582598b9 =
  RIP.fromFFIType hs_bindgen_a6d33313582598b9_base

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
  RIP.unsafePerformIO hs_bindgen_a6d33313582598b9

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_dwt@
foreign import ccall unsafe "hs_bindgen_1b241ecaa3059fc2" hs_bindgen_1b241ecaa3059fc2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_dwt@
hs_bindgen_1b241ecaa3059fc2 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_1b241ecaa3059fc2 =
  RIP.fromFFIType hs_bindgen_1b241ecaa3059fc2_base

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
  RIP.unsafePerformIO hs_bindgen_1b241ecaa3059fc2

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_dwtp@
foreign import ccall unsafe "hs_bindgen_babcd49669dd14c0" hs_bindgen_babcd49669dd14c0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_dwtp@
hs_bindgen_babcd49669dd14c0 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_babcd49669dd14c0 =
  RIP.fromFFIType hs_bindgen_babcd49669dd14c0_base

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
  RIP.unsafePerformIO hs_bindgen_babcd49669dd14c0

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_rotation@
foreign import ccall unsafe "hs_bindgen_e7ed44c8c7e607a4" hs_bindgen_e7ed44c8c7e607a4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_set_rotation@
hs_bindgen_e7ed44c8c7e607a4 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_device_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_e7ed44c8c7e607a4 =
  RIP.fromFFIType hs_bindgen_e7ed44c8c7e607a4_base

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
  RIP.unsafePerformIO hs_bindgen_e7ed44c8c7e607a4

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_5667190c1ebf818b" hs_bindgen_5667190c1ebf818b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_set_user_data@
hs_bindgen_5667190c1ebf818b :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_5667190c1ebf818b =
  RIP.fromFFIType hs_bindgen_5667190c1ebf818b_base

{-# NOINLINE river_libinput_accel_config_v1_set_user_data #-}
{-|

  > iface_river_libinput_accel_config_v1

__C declaration:__ @river_libinput_accel_config_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1729:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_libinput_accel_config_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_5667190c1ebf818b

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_de1960c313c81e00" hs_bindgen_de1960c313c81e00_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_get_user_data@
hs_bindgen_de1960c313c81e00 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_de1960c313c81e00 =
  RIP.fromFFIType hs_bindgen_de1960c313c81e00_base

{-# NOINLINE river_libinput_accel_config_v1_get_user_data #-}
{-|

  > iface_river_libinput_accel_config_v1

__C declaration:__ @river_libinput_accel_config_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1736:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO (RIP.Ptr RIP.Void))
river_libinput_accel_config_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_de1960c313c81e00

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_985c6e830be202b9" hs_bindgen_985c6e830be202b9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_get_version@
hs_bindgen_985c6e830be202b9 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_985c6e830be202b9 =
  RIP.fromFFIType hs_bindgen_985c6e830be202b9_base

{-# NOINLINE river_libinput_accel_config_v1_get_version #-}
{-| __C declaration:__ @river_libinput_accel_config_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1742:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_libinput_accel_config_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_985c6e830be202b9

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a2021b5cfe65a565" hs_bindgen_a2021b5cfe65a565_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_destroy@
hs_bindgen_a2021b5cfe65a565 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> IO ()))
hs_bindgen_a2021b5cfe65a565 =
  RIP.fromFFIType hs_bindgen_a2021b5cfe65a565_base

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
  RIP.unsafePerformIO hs_bindgen_a2021b5cfe65a565

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_set_points@
foreign import ccall unsafe "hs_bindgen_0bed3ec537bfd589" hs_bindgen_0bed3ec537bfd589_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_set_points@
hs_bindgen_0bed3ec537bfd589 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO (RIP.Ptr River_libinput_result_v1)))
hs_bindgen_0bed3ec537bfd589 =
  RIP.fromFFIType hs_bindgen_0bed3ec537bfd589_base

{-# NOINLINE river_libinput_accel_config_v1_set_points #-}
{-|

  > iface_river_libinput_accel_config_v1

  Defines the acceleration function for a given movement type in an acceleration configuration with custom accel profile.

__C declaration:__ @river_libinput_accel_config_v1_set_points@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1767:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_accel_config_v1_set_points :: RIP.FunPtr ((RIP.Ptr River_libinput_accel_config_v1) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO (RIP.Ptr River_libinput_result_v1))
river_libinput_accel_config_v1_set_points =
  RIP.unsafePerformIO hs_bindgen_0bed3ec537bfd589

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_3d2b227ac0e8d76a" hs_bindgen_3d2b227ac0e8d76a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_add_listener@
hs_bindgen_3d2b227ac0e8d76a :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> (PtrConst.PtrConst River_libinput_result_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_3d2b227ac0e8d76a =
  RIP.fromFFIType hs_bindgen_3d2b227ac0e8d76a_base

{-# NOINLINE river_libinput_result_v1_add_listener #-}
{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_add_listener@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1810:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> (PtrConst.PtrConst River_libinput_result_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_libinput_result_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_3d2b227ac0e8d76a

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_16764760c7c0f5d4" hs_bindgen_16764760c7c0f5d4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_set_user_data@
hs_bindgen_16764760c7c0f5d4 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_16764760c7c0f5d4 =
  RIP.fromFFIType hs_bindgen_16764760c7c0f5d4_base

{-# NOINLINE river_libinput_result_v1_set_user_data #-}
{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_set_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1833:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_libinput_result_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_16764760c7c0f5d4

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_78f8dd2e144d18f3" hs_bindgen_78f8dd2e144d18f3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_get_user_data@
hs_bindgen_78f8dd2e144d18f3 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_78f8dd2e144d18f3 =
  RIP.fromFFIType hs_bindgen_78f8dd2e144d18f3_base

{-# NOINLINE river_libinput_result_v1_get_user_data #-}
{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_get_user_data@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1840:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO (RIP.Ptr RIP.Void))
river_libinput_result_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_78f8dd2e144d18f3

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_get_version@
foreign import ccall unsafe "hs_bindgen_f18004473f1366f2" hs_bindgen_f18004473f1366f2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_get_version@
hs_bindgen_f18004473f1366f2 :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_f18004473f1366f2 =
  RIP.fromFFIType hs_bindgen_f18004473f1366f2_base

{-# NOINLINE river_libinput_result_v1_get_version #-}
{-| __C declaration:__ @river_libinput_result_v1_get_version@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 1846:1@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_libinput_result_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_f18004473f1366f2

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_destroy@
foreign import ccall unsafe "hs_bindgen_f8f979068b43f11f" hs_bindgen_f8f979068b43f11f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_destroy@
hs_bindgen_f8f979068b43f11f :: IO (RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO ()))
hs_bindgen_f8f979068b43f11f =
  RIP.fromFFIType hs_bindgen_f8f979068b43f11f_base

{-# NOINLINE river_libinput_result_v1_destroy #-}
{-|

  > iface_river_libinput_result_v1

__C declaration:__ @river_libinput_result_v1_destroy@

__defined at:__ @river-libinput-config-v1-client-protocol.h 1853:1@

__exported by:__ @river-libinput-config-v1-client-protocol.h@
-}
river_libinput_result_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_libinput_result_v1) -> IO ())
river_libinput_result_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_f8f979068b43f11f

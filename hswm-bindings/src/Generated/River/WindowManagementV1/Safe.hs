{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.WindowManagementV1.Safe
    ( Generated.River.WindowManagementV1.Safe.river_window_manager_v1_add_listener
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_set_user_data
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_get_user_data
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_get_version
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_stop
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_destroy
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_manage_finish
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_manage_dirty
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_render_finish
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_get_shell_surface
    , Generated.River.WindowManagementV1.Safe.river_window_manager_v1_exit_session
    , Generated.River.WindowManagementV1.Safe.river_window_v1_add_listener
    , Generated.River.WindowManagementV1.Safe.river_window_v1_set_user_data
    , Generated.River.WindowManagementV1.Safe.river_window_v1_get_user_data
    , Generated.River.WindowManagementV1.Safe.river_window_v1_get_version
    , Generated.River.WindowManagementV1.Safe.river_window_v1_destroy
    , Generated.River.WindowManagementV1.Safe.river_window_v1_close
    , Generated.River.WindowManagementV1.Safe.river_window_v1_get_node
    , Generated.River.WindowManagementV1.Safe.river_window_v1_propose_dimensions
    , Generated.River.WindowManagementV1.Safe.river_window_v1_hide
    , Generated.River.WindowManagementV1.Safe.river_window_v1_show
    , Generated.River.WindowManagementV1.Safe.river_window_v1_use_csd
    , Generated.River.WindowManagementV1.Safe.river_window_v1_use_ssd
    , Generated.River.WindowManagementV1.Safe.river_window_v1_set_borders
    , Generated.River.WindowManagementV1.Safe.river_window_v1_set_tiled
    , Generated.River.WindowManagementV1.Safe.river_window_v1_get_decoration_above
    , Generated.River.WindowManagementV1.Safe.river_window_v1_get_decoration_below
    , Generated.River.WindowManagementV1.Safe.river_window_v1_inform_resize_start
    , Generated.River.WindowManagementV1.Safe.river_window_v1_inform_resize_end
    , Generated.River.WindowManagementV1.Safe.river_window_v1_set_capabilities
    , Generated.River.WindowManagementV1.Safe.river_window_v1_inform_maximized
    , Generated.River.WindowManagementV1.Safe.river_window_v1_inform_unmaximized
    , Generated.River.WindowManagementV1.Safe.river_window_v1_inform_fullscreen
    , Generated.River.WindowManagementV1.Safe.river_window_v1_inform_not_fullscreen
    , Generated.River.WindowManagementV1.Safe.river_window_v1_fullscreen
    , Generated.River.WindowManagementV1.Safe.river_window_v1_exit_fullscreen
    , Generated.River.WindowManagementV1.Safe.river_window_v1_set_clip_box
    , Generated.River.WindowManagementV1.Safe.river_window_v1_set_content_clip_box
    , Generated.River.WindowManagementV1.Safe.river_window_v1_set_dimension_bounds
    , Generated.River.WindowManagementV1.Safe.river_decoration_v1_set_user_data
    , Generated.River.WindowManagementV1.Safe.river_decoration_v1_get_user_data
    , Generated.River.WindowManagementV1.Safe.river_decoration_v1_get_version
    , Generated.River.WindowManagementV1.Safe.river_decoration_v1_destroy
    , Generated.River.WindowManagementV1.Safe.river_decoration_v1_set_offset
    , Generated.River.WindowManagementV1.Safe.river_decoration_v1_sync_next_commit
    , Generated.River.WindowManagementV1.Safe.river_shell_surface_v1_set_user_data
    , Generated.River.WindowManagementV1.Safe.river_shell_surface_v1_get_user_data
    , Generated.River.WindowManagementV1.Safe.river_shell_surface_v1_get_version
    , Generated.River.WindowManagementV1.Safe.river_shell_surface_v1_destroy
    , Generated.River.WindowManagementV1.Safe.river_shell_surface_v1_get_node
    , Generated.River.WindowManagementV1.Safe.river_shell_surface_v1_sync_next_commit
    , Generated.River.WindowManagementV1.Safe.river_node_v1_set_user_data
    , Generated.River.WindowManagementV1.Safe.river_node_v1_get_user_data
    , Generated.River.WindowManagementV1.Safe.river_node_v1_get_version
    , Generated.River.WindowManagementV1.Safe.river_node_v1_destroy
    , Generated.River.WindowManagementV1.Safe.river_node_v1_set_position
    , Generated.River.WindowManagementV1.Safe.river_node_v1_place_top
    , Generated.River.WindowManagementV1.Safe.river_node_v1_place_bottom
    , Generated.River.WindowManagementV1.Safe.river_node_v1_place_above
    , Generated.River.WindowManagementV1.Safe.river_node_v1_place_below
    , Generated.River.WindowManagementV1.Safe.river_output_v1_add_listener
    , Generated.River.WindowManagementV1.Safe.river_output_v1_set_user_data
    , Generated.River.WindowManagementV1.Safe.river_output_v1_get_user_data
    , Generated.River.WindowManagementV1.Safe.river_output_v1_get_version
    , Generated.River.WindowManagementV1.Safe.river_output_v1_destroy
    , Generated.River.WindowManagementV1.Safe.river_output_v1_set_presentation_mode
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_add_listener
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_set_user_data
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_get_user_data
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_get_version
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_destroy
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_focus_window
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_focus_shell_surface
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_clear_focus
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_op_start_pointer
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_op_end
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_get_pointer_binding
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_set_xcursor_theme
    , Generated.River.WindowManagementV1.Safe.river_seat_v1_pointer_warp
    , Generated.River.WindowManagementV1.Safe.river_pointer_binding_v1_add_listener
    , Generated.River.WindowManagementV1.Safe.river_pointer_binding_v1_set_user_data
    , Generated.River.WindowManagementV1.Safe.river_pointer_binding_v1_get_user_data
    , Generated.River.WindowManagementV1.Safe.river_pointer_binding_v1_get_version
    , Generated.River.WindowManagementV1.Safe.river_pointer_binding_v1_destroy
    , Generated.River.WindowManagementV1.Safe.river_pointer_binding_v1_enable
    , Generated.River.WindowManagementV1.Safe.river_pointer_binding_v1_disable
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.WindowManagementV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-window-management-v1-client-protocol.h>"
  , "signed int hs_bindgen_b495e5b487351ebc ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct river_window_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_88b8b421b2bf6b16 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_window_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_adeed6701b917c86 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a56fdf7ccfb47d79 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_254b1a7aca42d5e0 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_37bf17ea0278bcec ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f542f197ce487f7f ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_manage_finish)(arg1);"
  , "}"
  , "void hs_bindgen_baae5b16c912d676 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_manage_dirty)(arg1);"
  , "}"
  , "void hs_bindgen_34f08e5c99f636d8 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_render_finish)(arg1);"
  , "}"
  , "struct river_shell_surface_v1 *hs_bindgen_cb9aa9f011026d12 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_shell_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f7462d0047218a2f ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_exit_session)(arg1);"
  , "}"
  , "signed int hs_bindgen_3435aa4bad77f47f ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_window_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_window_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f4a9452ba6bcd4a2 ("
  , "  struct river_window_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_76f2834694a55c39 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_cf1efa66ee020551 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c1e088f2621a291c ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_47ed54245e4cd327 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_close)(arg1);"
  , "}"
  , "struct river_node_v1 *hs_bindgen_d42801cdf95af52a ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_node)(arg1);"
  , "}"
  , "void hs_bindgen_79d75dc199d4c821 ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_window_v1_propose_dimensions)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_eb47c05194304f8f ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_hide)(arg1);"
  , "}"
  , "void hs_bindgen_acb1710c5e6e9ab6 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_show)(arg1);"
  , "}"
  , "void hs_bindgen_d6309ad375bd258b ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_use_csd)(arg1);"
  , "}"
  , "void hs_bindgen_33dc69ecdf13cff8 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_use_ssd)(arg1);"
  , "}"
  , "void hs_bindgen_1f8435d14cc20a90 ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  int32_t arg3,"
  , "  uint32_t arg4,"
  , "  uint32_t arg5,"
  , "  uint32_t arg6,"
  , "  uint32_t arg7"
  , ")"
  , "{"
  , "  (river_window_v1_set_borders)(arg1, arg2, arg3, arg4, arg5, arg6, arg7);"
  , "}"
  , "void hs_bindgen_044e26fb3f61c072 ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_tiled)(arg1, arg2);"
  , "}"
  , "struct river_decoration_v1 *hs_bindgen_9ca4425dee7ee38b ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_v1_get_decoration_above)(arg1, arg2);"
  , "}"
  , "struct river_decoration_v1 *hs_bindgen_78fc1b541a0a2774 ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_v1_get_decoration_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_238b391d96dd5e94 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_resize_start)(arg1);"
  , "}"
  , "void hs_bindgen_611df2ad81d9da35 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_resize_end)(arg1);"
  , "}"
  , "void hs_bindgen_207a4cbb289fd28c ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_capabilities)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_81b0be82261f17de ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_maximized)(arg1);"
  , "}"
  , "void hs_bindgen_c9fd18e3bf78c8ad ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_unmaximized)(arg1);"
  , "}"
  , "void hs_bindgen_b6b8edd5c657f3f8 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_2677ceaa06db3fde ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_not_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_e5e6e476721fde9f ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  (river_window_v1_fullscreen)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2f16ff55921c1740 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_exit_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_fa8cac08c11c77fc ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_window_v1_set_clip_box)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_f8a61f3749da2435 ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_window_v1_set_content_clip_box)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_203429d8b24ea269 ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_window_v1_set_dimension_bounds)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_98895263641a4cf0 ("
  , "  struct river_decoration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_decoration_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f4d9a2809bde70ab ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_decoration_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c0eff4ef1969b1cd ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_decoration_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7ed739ff7fae7d01 ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  (river_decoration_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f8047c5ac563bebc ("
  , "  struct river_decoration_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_decoration_v1_set_offset)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_58343707d3c53d7c ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  (river_decoration_v1_sync_next_commit)(arg1);"
  , "}"
  , "void hs_bindgen_c3be94587d1becbf ("
  , "  struct river_shell_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e960bf51d10bea27 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_739ddff890f1254c ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_eb13510db6248428 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_destroy)(arg1);"
  , "}"
  , "struct river_node_v1 *hs_bindgen_021914af7e211fba ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_node)(arg1);"
  , "}"
  , "void hs_bindgen_02ef98a7f5f8797a ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_sync_next_commit)(arg1);"
  , "}"
  , "void hs_bindgen_6f918bff9fbc119a ("
  , "  struct river_node_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_9b590c578cf26ba4 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_node_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_211c34f1b89494c0 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_node_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9db7de893df2973f ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3bd3934567c96679 ("
  , "  struct river_node_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_node_v1_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_fa6bac9853ac0406 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_place_top)(arg1);"
  , "}"
  , "void hs_bindgen_65b915361b020f54 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_place_bottom)(arg1);"
  , "}"
  , "void hs_bindgen_8620751c77012bed ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_41d672372e81ef33 ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_place_below)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b20b8657d13ff13d ("
  , "  struct river_output_v1 *arg1,"
  , "  struct river_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0e37a66c82367689 ("
  , "  struct river_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b6ee3580949dbd7a ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_51a9f3df9d791fb4 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b384b4b04cfaa188 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_6bf3b66954cf6e5d ("
  , "  struct river_output_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_output_v1_set_presentation_mode)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6cddc0bb219565b6 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b3fd6f5622ec09e2 ("
  , "  struct river_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_851c2c2befda9bea ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d72f57dcbd97ad8b ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8c24385bf24f827f ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_8b8ebc47f4cec431 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_window_v1 *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_focus_window)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_9f9e7aac5748a3e9 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_shell_surface_v1 *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_focus_shell_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_74c75dd592c4bbc3 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_clear_focus)(arg1);"
  , "}"
  , "void hs_bindgen_41992ae1416a7377 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_op_start_pointer)(arg1);"
  , "}"
  , "void hs_bindgen_c0145b0a03d66c35 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_op_end)(arg1);"
  , "}"
  , "struct river_pointer_binding_v1 *hs_bindgen_53b1493cd51b5544 ("
  , "  struct river_seat_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_pointer_binding)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b5eaf12fee25c157 ("
  , "  struct river_seat_v1 *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (river_seat_v1_set_xcursor_theme)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_881ecfc4a6f762a3 ("
  , "  struct river_seat_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_seat_v1_pointer_warp)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5db200adfba58715 ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  struct river_pointer_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6e61fd151b877720 ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ab80cf8d9524a3b5 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9b9e20f4c08aec1e ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_effc8a04b3a346ec ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_441d773b8772a62b ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_f1e58cb645b5a706 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_add_listener@
foreign import ccall safe "hs_bindgen_b495e5b487351ebc" hs_bindgen_b495e5b487351ebc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_add_listener@
hs_bindgen_b495e5b487351ebc ::
     RIP.Ptr River_window_manager_v1
  -> PtrConst.PtrConst River_window_manager_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b495e5b487351ebc =
  RIP.fromFFIType hs_bindgen_b495e5b487351ebc_base

{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 612:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_add_listener ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> PtrConst.PtrConst River_window_manager_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_window_manager_v1_add_listener =
  hs_bindgen_b495e5b487351ebc

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_88b8b421b2bf6b16" hs_bindgen_88b8b421b2bf6b16_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_set_user_data@
hs_bindgen_88b8b421b2bf6b16 ::
     RIP.Ptr River_window_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_88b8b421b2bf6b16 =
  RIP.fromFFIType hs_bindgen_88b8b421b2bf6b16_base

{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 695:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_set_user_data ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_window_manager_v1_set_user_data =
  hs_bindgen_88b8b421b2bf6b16

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_adeed6701b917c86" hs_bindgen_adeed6701b917c86_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_user_data@
hs_bindgen_adeed6701b917c86 ::
     RIP.Ptr River_window_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_adeed6701b917c86 =
  RIP.fromFFIType hs_bindgen_adeed6701b917c86_base

{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 702:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_user_data ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO (RIP.Ptr RIP.Void)
river_window_manager_v1_get_user_data =
  hs_bindgen_adeed6701b917c86

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_a56fdf7ccfb47d79" hs_bindgen_a56fdf7ccfb47d79_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_version@
hs_bindgen_a56fdf7ccfb47d79 ::
     RIP.Ptr River_window_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a56fdf7ccfb47d79 =
  RIP.fromFFIType hs_bindgen_a56fdf7ccfb47d79_base

{-| __C declaration:__ @river_window_manager_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 708:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_version ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_window_manager_v1_get_version =
  hs_bindgen_a56fdf7ccfb47d79

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_stop@
foreign import ccall safe "hs_bindgen_254b1a7aca42d5e0" hs_bindgen_254b1a7aca42d5e0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_stop@
hs_bindgen_254b1a7aca42d5e0 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_254b1a7aca42d5e0 =
  RIP.fromFFIType hs_bindgen_254b1a7aca42d5e0_base

{-|

  > iface_river_window_manager_v1

  This request indicates that the client no longer wishes to receive events on this object.

  The Wayland protocol is asynchronous, which means the server may send further events until the stop request is processed. The client must wait for a river_window_manager_v1.finished event before destroying this object.

__C declaration:__ @river_window_manager_v1_stop@

__defined at:__ @river-window-management-v1-client-protocol.h 725:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_stop ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO ()
river_window_manager_v1_stop =
  hs_bindgen_254b1a7aca42d5e0

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_37bf17ea0278bcec" hs_bindgen_37bf17ea0278bcec_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_destroy@
hs_bindgen_37bf17ea0278bcec ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_37bf17ea0278bcec =
  RIP.fromFFIType hs_bindgen_37bf17ea0278bcec_base

{-|

  > iface_river_window_manager_v1

  This request should be called after the finished event has been received to complete destruction of the object.

  If a client wishes to destroy this object it should send a river_window_manager_v1.stop request and wait for a river_window_manager_v1.finished event. Once the finished event is received it is safe to destroy this object and any other objects created through this interface.

__C declaration:__ @river_window_manager_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 744:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_destroy ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO ()
river_window_manager_v1_destroy =
  hs_bindgen_37bf17ea0278bcec

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_manage_finish@
foreign import ccall safe "hs_bindgen_f542f197ce487f7f" hs_bindgen_f542f197ce487f7f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_manage_finish@
hs_bindgen_f542f197ce487f7f ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_f542f197ce487f7f =
  RIP.fromFFIType hs_bindgen_f542f197ce487f7f_base

{-|

  > iface_river_window_manager_v1

  This request indicates that the client has made all changes to window management state it wishes to include in the current manage sequence and that the server should atomically send these state changes to the windows and continue with the manage sequence.

  After sending this request, it is a protocol error for the client to make further changes to window management state until the next manage_start event is received.

  See the description of the river_window_manager_v1 interface for a complete overview of the manage/render sequence loop.

__C declaration:__ @river_window_manager_v1_manage_finish@

__defined at:__ @river-window-management-v1-client-protocol.h 766:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_manage_finish ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO ()
river_window_manager_v1_manage_finish =
  hs_bindgen_f542f197ce487f7f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_manage_dirty@
foreign import ccall safe "hs_bindgen_baae5b16c912d676" hs_bindgen_baae5b16c912d676_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_manage_dirty@
hs_bindgen_baae5b16c912d676 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_baae5b16c912d676 =
  RIP.fromFFIType hs_bindgen_baae5b16c912d676_base

{-|

  > iface_river_window_manager_v1

  This request ensures a manage sequence is started and that a manage_start event is sent by the server. If this request is made during an ongoing manage sequence, a new manage sequence will be started as soon as the current one is completed.

  The client may want to use this request due to an internal state change that the compositor is not aware of (e.g. a dbus event) which should affect window management or rendering state.

__C declaration:__ @river_window_manager_v1_manage_dirty@

__defined at:__ @river-window-management-v1-client-protocol.h 785:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_manage_dirty ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO ()
river_window_manager_v1_manage_dirty =
  hs_bindgen_baae5b16c912d676

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_render_finish@
foreign import ccall safe "hs_bindgen_34f08e5c99f636d8" hs_bindgen_34f08e5c99f636d8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_render_finish@
hs_bindgen_34f08e5c99f636d8 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_34f08e5c99f636d8 =
  RIP.fromFFIType hs_bindgen_34f08e5c99f636d8_base

{-|

  > iface_river_window_manager_v1

  This request indicates that the client has made all changes to rendering state it wishes to include in the current manage sequence and that the server should atomically apply and display these state changes to the user.

  After sending this request, it is a protocol error for the client to make further changes to rendering state until the next manage_start or render_start event is received, whichever comes first.

  See the description of the river_window_manager_v1 interface for a complete overview of the manage/render sequence loop.

__C declaration:__ @river_window_manager_v1_render_finish@

__defined at:__ @river-window-management-v1-client-protocol.h 807:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_render_finish ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO ()
river_window_manager_v1_render_finish =
  hs_bindgen_34f08e5c99f636d8

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_shell_surface@
foreign import ccall safe "hs_bindgen_cb9aa9f011026d12" hs_bindgen_cb9aa9f011026d12_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_shell_surface@
hs_bindgen_cb9aa9f011026d12 ::
     RIP.Ptr River_window_manager_v1
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr River_shell_surface_v1)
hs_bindgen_cb9aa9f011026d12 =
  RIP.fromFFIType hs_bindgen_cb9aa9f011026d12_base

{-|

  > iface_river_window_manager_v1

  Create a new shell surface for window manager UI and assign the river_shell_surface_v1 role to the surface.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_manager_v1_get_shell_surface@

__defined at:__ @river-window-management-v1-client-protocol.h 823:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_shell_surface ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr River_shell_surface_v1)
river_window_manager_v1_get_shell_surface =
  hs_bindgen_cb9aa9f011026d12

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_exit_session@
foreign import ccall safe "hs_bindgen_f7462d0047218a2f" hs_bindgen_f7462d0047218a2f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_exit_session@
hs_bindgen_f7462d0047218a2f ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_f7462d0047218a2f =
  RIP.fromFFIType hs_bindgen_f7462d0047218a2f_base

{-|

  > iface_river_window_manager_v1

  End the current Wayland session and exit the compositor. All Wayland clients running in the current session, including the window manager, will be disconnected.

  Window managers should only make this request if the user explicitly asks to exit the Wayland session, not for example on normal window manager termination.

__C declaration:__ @river_window_manager_v1_exit_session@

__defined at:__ @river-window-management-v1-client-protocol.h 845:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_exit_session ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO ()
river_window_manager_v1_exit_session =
  hs_bindgen_f7462d0047218a2f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_add_listener@
foreign import ccall safe "hs_bindgen_3435aa4bad77f47f" hs_bindgen_3435aa4bad77f47f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_add_listener@
hs_bindgen_3435aa4bad77f47f ::
     RIP.Ptr River_window_v1
  -> PtrConst.PtrConst River_window_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_3435aa4bad77f47f =
  RIP.fromFFIType hs_bindgen_3435aa4bad77f47f_base

{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 1285:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_add_listener ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> PtrConst.PtrConst River_window_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_window_v1_add_listener =
  hs_bindgen_3435aa4bad77f47f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_user_data@
foreign import ccall safe "hs_bindgen_f4a9452ba6bcd4a2" hs_bindgen_f4a9452ba6bcd4a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_user_data@
hs_bindgen_f4a9452ba6bcd4a2 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f4a9452ba6bcd4a2 =
  RIP.fromFFIType hs_bindgen_f4a9452ba6bcd4a2_base

{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 1489:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_user_data ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_window_v1_set_user_data =
  hs_bindgen_f4a9452ba6bcd4a2

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_user_data@
foreign import ccall safe "hs_bindgen_76f2834694a55c39" hs_bindgen_76f2834694a55c39_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_user_data@
hs_bindgen_76f2834694a55c39 ::
     RIP.Ptr River_window_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_76f2834694a55c39 =
  RIP.fromFFIType hs_bindgen_76f2834694a55c39_base

{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 1496:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_user_data ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO (RIP.Ptr RIP.Void)
river_window_v1_get_user_data =
  hs_bindgen_76f2834694a55c39

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_version@
foreign import ccall safe "hs_bindgen_cf1efa66ee020551" hs_bindgen_cf1efa66ee020551_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_version@
hs_bindgen_cf1efa66ee020551 ::
     RIP.Ptr River_window_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_cf1efa66ee020551 =
  RIP.fromFFIType hs_bindgen_cf1efa66ee020551_base

{-| __C declaration:__ @river_window_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 1502:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_version ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_window_v1_get_version =
  hs_bindgen_cf1efa66ee020551

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_destroy@
foreign import ccall safe "hs_bindgen_c1e088f2621a291c" hs_bindgen_c1e088f2621a291c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_destroy@
hs_bindgen_c1e088f2621a291c ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_c1e088f2621a291c =
  RIP.fromFFIType hs_bindgen_c1e088f2621a291c_base

{-|

  > iface_river_window_v1

  This request indicates that the client will no longer use the window object and that it may be safely destroyed.

  This request should be made after the river_window_v1.closed event or river_window_manager_v1.finished is received to complete destruction of the window.

__C declaration:__ @river_window_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 1518:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_destroy ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_destroy = hs_bindgen_c1e088f2621a291c

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_close@
foreign import ccall safe "hs_bindgen_47ed54245e4cd327" hs_bindgen_47ed54245e4cd327_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_close@
hs_bindgen_47ed54245e4cd327 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_47ed54245e4cd327 =
  RIP.fromFFIType hs_bindgen_47ed54245e4cd327_base

{-|

  > iface_river_window_v1

  Request that the window be closed. The window may ignore this request or only close after some delay, perhaps opening a dialog asking the user to save their work or similar.

  The server will send a river_window_v1.closed event if/when the window has been closed.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_close@

__defined at:__ @river-window-management-v1-client-protocol.h 1538:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_close ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_close = hs_bindgen_47ed54245e4cd327

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_node@
foreign import ccall safe "hs_bindgen_d42801cdf95af52a" hs_bindgen_d42801cdf95af52a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_node@
hs_bindgen_d42801cdf95af52a ::
     RIP.Ptr River_window_v1
  -> IO (RIP.Ptr River_node_v1)
hs_bindgen_d42801cdf95af52a =
  RIP.fromFFIType hs_bindgen_d42801cdf95af52a_base

{-|

  > iface_river_window_v1

  Get the node in the render list corresponding to the window.

  It is a protocol error to make this request more than once for a single window.

__C declaration:__ @river_window_v1_get_node@

__defined at:__ @river-window-management-v1-client-protocol.h 1553:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_node ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO (RIP.Ptr River_node_v1)
river_window_v1_get_node =
  hs_bindgen_d42801cdf95af52a

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_propose_dimensions@
foreign import ccall safe "hs_bindgen_79d75dc199d4c821" hs_bindgen_79d75dc199d4c821_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_propose_dimensions@
hs_bindgen_79d75dc199d4c821 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_79d75dc199d4c821 =
  RIP.fromFFIType hs_bindgen_79d75dc199d4c821_base

{-|

  > iface_river_window_v1

  This request proposes dimensions for the window in the compositor's logical coordinate space.

  The width and height must be greater than or equal to zero. If the width or height is zero the window will be allowed to decide its own dimensions.

  The window may not take the exact dimensions proposed. The actual dimensions taken by the window will be sent in a subsequent river_window_v1.dimensions event. For example, a terminal emulator may only allow dimensions that are multiple of the cell size.

  When a propose_dimensions request is made, the server must send a dimensions event in response as soon as possible. It may not be possible to send a dimensions event in the very next render sequence if, for example, the window takes too long to respond to the proposed dimensions. In this case, the server will send the dimensions event in a future render sequence.

  Note that the dimensions of a river_window_v1 refer to the dimensions of the window content and are unaffected by the presence of borders or decoration surfaces.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_propose_dimensions@

__defined at:__ @river-window-management-v1-client-protocol.h 1593:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_propose_dimensions ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
river_window_v1_propose_dimensions =
  hs_bindgen_79d75dc199d4c821

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_hide@
foreign import ccall safe "hs_bindgen_eb47c05194304f8f" hs_bindgen_eb47c05194304f8f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_hide@
hs_bindgen_eb47c05194304f8f ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_eb47c05194304f8f =
  RIP.fromFFIType hs_bindgen_eb47c05194304f8f_base

{-|

  > iface_river_window_v1

  Request that the window be hidden. Has no effect if the window is already hidden. Hides any window borders and decorations as well.

  Newly created windows are considered shown unless explicitly hidden with the hide request.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_hide@

__defined at:__ @river-window-management-v1-client-protocol.h 1612:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_hide ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_hide = hs_bindgen_eb47c05194304f8f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_show@
foreign import ccall safe "hs_bindgen_acb1710c5e6e9ab6" hs_bindgen_acb1710c5e6e9ab6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_show@
hs_bindgen_acb1710c5e6e9ab6 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_acb1710c5e6e9ab6 =
  RIP.fromFFIType hs_bindgen_acb1710c5e6e9ab6_base

{-|

  > iface_river_window_v1

  Request that the window be shown. Has no effect if the window is not hidden. Does not guarantee that the window is visible as it may be completely obscured by other windows placed above it for example.

  Newly created windows are considered shown unless explicitly hidden with the hide request.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_show@

__defined at:__ @river-window-management-v1-client-protocol.h 1632:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_show ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_show = hs_bindgen_acb1710c5e6e9ab6

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_use_csd@
foreign import ccall safe "hs_bindgen_d6309ad375bd258b" hs_bindgen_d6309ad375bd258b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_use_csd@
hs_bindgen_d6309ad375bd258b ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_d6309ad375bd258b =
  RIP.fromFFIType hs_bindgen_d6309ad375bd258b_base

{-|

  > iface_river_window_v1

  Tell the client to use client side decoration and draw its own title bar, borders, etc.

  This is the default if neither this request nor the use_ssd request is ever made.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_use_csd@

__defined at:__ @river-window-management-v1-client-protocol.h 1651:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_use_csd ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_use_csd = hs_bindgen_d6309ad375bd258b

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_use_ssd@
foreign import ccall safe "hs_bindgen_33dc69ecdf13cff8" hs_bindgen_33dc69ecdf13cff8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_use_ssd@
hs_bindgen_33dc69ecdf13cff8 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_33dc69ecdf13cff8 =
  RIP.fromFFIType hs_bindgen_33dc69ecdf13cff8_base

{-|

  > iface_river_window_v1

  Tell the client to use server side decoration and not draw any client side decorations.

  This request will have no effect if the client only supports client side decoration, see the decoration_hint event.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_use_ssd@

__defined at:__ @river-window-management-v1-client-protocol.h 1670:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_use_ssd ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_use_ssd = hs_bindgen_33dc69ecdf13cff8

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_borders@
foreign import ccall safe "hs_bindgen_1f8435d14cc20a90" hs_bindgen_1f8435d14cc20a90_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_borders@
hs_bindgen_1f8435d14cc20a90 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_1f8435d14cc20a90 =
  RIP.fromFFIType hs_bindgen_1f8435d14cc20a90_base

{-|

  > iface_river_window_v1

  This request decorates the window with borders drawn by the compositor on the specified edges of the window. Borders are drawn above the window content.

  Corners are drawn only between borders on adjacent edges. If e.g. the left edge has a border and the top edge does not, the border drawn on the left edge will not extend vertically beyond the top edge of the window.

  Borders are not drawn while the window is fullscreen.

  The color is defined by four 32-bit RGBA values. Unless specified in another protocol extension, the RGBA values use pre-multiplied alpha.

  Setting the edges to none or the width to 0 disables the borders. Setting a negative width is a protocol error.

  This request completely overrides all previous set_borders requests. Only the most recent set_borders request has an effect.

  Note that the position/dimensions of a river_window_v1 refer to the position/dimensions of the window content and are unaffected by the presence of borders or decoration surfaces.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_set_borders@

__defined at:__ @river-window-management-v1-client-protocol.h 1707:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_borders ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @edges@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @r@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @g@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @b@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @a@
  -> IO ()
river_window_v1_set_borders =
  hs_bindgen_1f8435d14cc20a90

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_tiled@
foreign import ccall safe "hs_bindgen_044e26fb3f61c072" hs_bindgen_044e26fb3f61c072_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_tiled@
hs_bindgen_044e26fb3f61c072 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_044e26fb3f61c072 =
  RIP.fromFFIType hs_bindgen_044e26fb3f61c072_base

{-|

  > iface_river_window_v1

  Inform the window that it is part of a tiled layout and adjacent to other elements in the tiled layout on the given edges.

  The window should use this information to change the style of its client side decorations and avoid drawing e.g. drop shadows outside of the window dimensions on the tiled edges.

  Setting the edges argument to none informs the window that it is not part of a tiled layout. If this request is never made, the window is informed that it is not part of a tiled layout.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_set_tiled@

__defined at:__ @river-window-management-v1-client-protocol.h 1731:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_tiled ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @edges@
  -> IO ()
river_window_v1_set_tiled =
  hs_bindgen_044e26fb3f61c072

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_decoration_above@
foreign import ccall safe "hs_bindgen_9ca4425dee7ee38b" hs_bindgen_9ca4425dee7ee38b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_decoration_above@
hs_bindgen_9ca4425dee7ee38b ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr River_decoration_v1)
hs_bindgen_9ca4425dee7ee38b =
  RIP.fromFFIType hs_bindgen_9ca4425dee7ee38b_base

{-|

  > iface_river_window_v1

  Create a decoration surface and assign the river_decoration_v1 role to the surface. The created decoration is placed above the window in rendering order, see the description of river_decoration_v1.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_v1_get_decoration_above@

__defined at:__ @river-window-management-v1-client-protocol.h 1748:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_decoration_above ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr River_decoration_v1)
river_window_v1_get_decoration_above =
  hs_bindgen_9ca4425dee7ee38b

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_decoration_below@
foreign import ccall safe "hs_bindgen_78fc1b541a0a2774" hs_bindgen_78fc1b541a0a2774_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_get_decoration_below@
hs_bindgen_78fc1b541a0a2774 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr River_decoration_v1)
hs_bindgen_78fc1b541a0a2774 =
  RIP.fromFFIType hs_bindgen_78fc1b541a0a2774_base

{-|

  > iface_river_window_v1

  Create a decoration surface and assign the river_decoration_v1 role to the surface. The created decoration is placed below the window in rendering order, see the description of river_decoration_v1.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_v1_get_decoration_below@

__defined at:__ @river-window-management-v1-client-protocol.h 1769:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_decoration_below ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> RIP.Ptr Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr River_decoration_v1)
river_window_v1_get_decoration_below =
  hs_bindgen_78fc1b541a0a2774

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_resize_start@
foreign import ccall safe "hs_bindgen_238b391d96dd5e94" hs_bindgen_238b391d96dd5e94_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_resize_start@
hs_bindgen_238b391d96dd5e94 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_238b391d96dd5e94 =
  RIP.fromFFIType hs_bindgen_238b391d96dd5e94_base

{-|

  > iface_river_window_v1

  Inform the window that it is being resized. The window manager should use this request to inform windows that are the target of an interactive resize for example.

  The window manager remains responsible for handling the position and dimensions of the window while it is resizing.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_resize_start@

__defined at:__ @river-window-management-v1-client-protocol.h 1793:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_resize_start ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_inform_resize_start =
  hs_bindgen_238b391d96dd5e94

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_resize_end@
foreign import ccall safe "hs_bindgen_611df2ad81d9da35" hs_bindgen_611df2ad81d9da35_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_resize_end@
hs_bindgen_611df2ad81d9da35 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_611df2ad81d9da35 =
  RIP.fromFFIType hs_bindgen_611df2ad81d9da35_base

{-|

  > iface_river_window_v1

  Inform the window that it is no longer being resized. The window manager should use this request to inform windows that are the target of an interactive resize that the interactive resize has ended for example.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_resize_end@

__defined at:__ @river-window-management-v1-client-protocol.h 1810:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_resize_end ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_inform_resize_end =
  hs_bindgen_611df2ad81d9da35

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_capabilities@
foreign import ccall safe "hs_bindgen_207a4cbb289fd28c" hs_bindgen_207a4cbb289fd28c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_capabilities@
hs_bindgen_207a4cbb289fd28c ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_207a4cbb289fd28c =
  RIP.fromFFIType hs_bindgen_207a4cbb289fd28c_base

{-|

  > iface_river_window_v1

  This request informs the window of the capabilities supported by the window manager. If the window manager, for example, ignores requests to be maximized from the window it should not tell the window that it supports the maximize capability.

  The window might use this information to, for example, only show a maximize button if the window manager supports the maximize capability.

  The window manager client should use this request to set capabilities for all new windows. If this request is never made, the compositor will inform windows that all capabilities are supported.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_set_capabilities@

__defined at:__ @river-window-management-v1-client-protocol.h 1835:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_capabilities ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @caps@
  -> IO ()
river_window_v1_set_capabilities =
  hs_bindgen_207a4cbb289fd28c

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_maximized@
foreign import ccall safe "hs_bindgen_81b0be82261f17de" hs_bindgen_81b0be82261f17de_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_maximized@
hs_bindgen_81b0be82261f17de ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_81b0be82261f17de =
  RIP.fromFFIType hs_bindgen_81b0be82261f17de_base

{-|

  > iface_river_window_v1

  Inform the window that it is maximized. The window might use this information to adapt the style of its client-side window decorations for example.

  The window manager remains responsible for handling the position and dimensions of the window while it is maximized.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_maximized@

__defined at:__ @river-window-management-v1-client-protocol.h 1855:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_maximized ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_inform_maximized =
  hs_bindgen_81b0be82261f17de

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_unmaximized@
foreign import ccall safe "hs_bindgen_c9fd18e3bf78c8ad" hs_bindgen_c9fd18e3bf78c8ad_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_unmaximized@
hs_bindgen_c9fd18e3bf78c8ad ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_c9fd18e3bf78c8ad =
  RIP.fromFFIType hs_bindgen_c9fd18e3bf78c8ad_base

{-|

  > iface_river_window_v1

  Inform the window that it is unmaximized. The window might use this information to adapt the style of its client-side window decorations for example.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_unmaximized@

__defined at:__ @river-window-management-v1-client-protocol.h 1872:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_unmaximized ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_inform_unmaximized =
  hs_bindgen_c9fd18e3bf78c8ad

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_fullscreen@
foreign import ccall safe "hs_bindgen_b6b8edd5c657f3f8" hs_bindgen_b6b8edd5c657f3f8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_fullscreen@
hs_bindgen_b6b8edd5c657f3f8 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_b6b8edd5c657f3f8 =
  RIP.fromFFIType hs_bindgen_b6b8edd5c657f3f8_base

{-|

  > iface_river_window_v1

  Inform the window that it is fullscreen. The window might use this information to adapt the style of its client-side window decorations for example.

  This request does not affect the size/position of the window or cause it to become the only window rendered, see the river_window_v1.fullscreen and exit_fullscreen requests for that.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_fullscreen@

__defined at:__ @river-window-management-v1-client-protocol.h 1893:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_fullscreen ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_inform_fullscreen =
  hs_bindgen_b6b8edd5c657f3f8

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_not_fullscreen@
foreign import ccall safe "hs_bindgen_2677ceaa06db3fde" hs_bindgen_2677ceaa06db3fde_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_not_fullscreen@
hs_bindgen_2677ceaa06db3fde ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_2677ceaa06db3fde =
  RIP.fromFFIType hs_bindgen_2677ceaa06db3fde_base

{-|

  > iface_river_window_v1

  Inform the window that it is not fullscreen. The window might use this information to adapt the style of its client-side window decorations for example.

  This request does not affect the size/position of the window or cause it to become the only window rendered, see the river_window_v1.fullscreen and exit_fullscreen requests for that.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_not_fullscreen@

__defined at:__ @river-window-management-v1-client-protocol.h 1914:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_not_fullscreen ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_inform_not_fullscreen =
  hs_bindgen_2677ceaa06db3fde

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_fullscreen@
foreign import ccall safe "hs_bindgen_e5e6e476721fde9f" hs_bindgen_e5e6e476721fde9f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_fullscreen@
hs_bindgen_e5e6e476721fde9f ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr River_output_v1
  -> IO ()
hs_bindgen_e5e6e476721fde9f =
  RIP.fromFFIType hs_bindgen_e5e6e476721fde9f_base

{-|

  > iface_river_window_v1

  Make the window fullscreen on the given output. If multiple windows are fullscreen on the same output at the same time only the "top" window in rendering order shall be displayed.

  All river_shell_surface_v1 objects above the top fullscreen window in the rendering order will continue to be rendered.

  The compositor will handle the position and dimensions of the window while it is fullscreen. The set_position and propose_dimensions requests shall not affect the current position and dimensions of a fullscreen window.

  When a fullscreen request is made, the server must send a dimensions event in response as soon as possible. It may not be possible to send a dimensions event in the very next render sequence if, for example, the window takes too long to respond. In this case, the server will send the dimensions event in a future render sequence.

  The compositor will clip window content, decoration surfaces, and borders to the given output's dimensions while the window is fullscreen. The effects of set_clip_box and set_content_clip_box are ignored while the window is fullscreen.

  If the output on which a window is currently fullscreen is removed, the windowing state is modified as if there were an exit_fullscreen request made in the same manage sequence as the river_output_v1.removed event.

  This request does not inform the window that it is fullscreen, see the river_window_v1.inform_fullscreen and inform_not_fullscreen requests.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_fullscreen@

__defined at:__ @river-window-management-v1-client-protocol.h 1957:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_fullscreen ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @output@
  -> IO ()
river_window_v1_fullscreen =
  hs_bindgen_e5e6e476721fde9f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_exit_fullscreen@
foreign import ccall safe "hs_bindgen_2f16ff55921c1740" hs_bindgen_2f16ff55921c1740_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_exit_fullscreen@
hs_bindgen_2f16ff55921c1740 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_2f16ff55921c1740 =
  RIP.fromFFIType hs_bindgen_2f16ff55921c1740_base

{-|

  > iface_river_window_v1

  Make the window not fullscreen.

  The position and dimensions are undefined after this request is made until a manage sequence in which the window manager makes the propose_dimensions and set_position requests is completed.

  The window manager should make propose_dimensions and set_position requests in the same manage sequence as the exit_fullscreen request for frame perfection.

  This request does not inform the window that it is fullscreen, see the river_window_v1.inform_fullscreen and inform_not_fullscreen requests.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_exit_fullscreen@

__defined at:__ @river-window-management-v1-client-protocol.h 1983:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_exit_fullscreen ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO ()
river_window_v1_exit_fullscreen =
  hs_bindgen_2f16ff55921c1740

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_clip_box@
foreign import ccall safe "hs_bindgen_fa8cac08c11c77fc" hs_bindgen_fa8cac08c11c77fc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_clip_box@
hs_bindgen_fa8cac08c11c77fc ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_fa8cac08c11c77fc =
  RIP.fromFFIType hs_bindgen_fa8cac08c11c77fc_base

{-|

  > iface_river_window_v1

  Clip the window, including borders and decoration surfaces, to the box specified by the x, y, width, and height arguments. The x/y position of the box is relative to the top left corner of the window.

  The width and height arguments must be greater than or equal to 0.

  Setting a clip box with 0 width or height disables clipping.

  The clip box is ignored while the window is fullscreen.

  Both set_clip_box and set_content_clip_box may be enabled simultaneously.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_set_clip_box@

__defined at:__ @river-window-management-v1-client-protocol.h 2008:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_clip_box ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
river_window_v1_set_clip_box =
  hs_bindgen_fa8cac08c11c77fc

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_content_clip_box@
foreign import ccall safe "hs_bindgen_f8a61f3749da2435" hs_bindgen_f8a61f3749da2435_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_content_clip_box@
hs_bindgen_f8a61f3749da2435 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f8a61f3749da2435 =
  RIP.fromFFIType hs_bindgen_f8a61f3749da2435_base

{-|

  > iface_river_window_v1

  Clip the content of the window, excluding borders and decoration surfaces, to the box specified by the x, y, width, and height arguments. The x/y position of the box is relative to the top left corner of the window.

  Borders drawn by the compositor (see set_borders) are placed around the intersection of the window content (as defined by the dimensions event) and the content clip box when content clipping is enabled.

  The width and height arguments must be greater than or equal to 0.

  Setting a box with 0 width or height disables content clipping.

  The content clip box is ignored while the window is fullscreen.

  Both set_clip_box and set_content_clip_box may be enabled simultaneously.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_set_content_clip_box@

__defined at:__ @river-window-management-v1-client-protocol.h 2038:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_content_clip_box ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
river_window_v1_set_content_clip_box =
  hs_bindgen_f8a61f3749da2435

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_dimension_bounds@
foreign import ccall safe "hs_bindgen_203429d8b24ea269" hs_bindgen_203429d8b24ea269_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_window_v1_set_dimension_bounds@
hs_bindgen_203429d8b24ea269 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_203429d8b24ea269 =
  RIP.fromFFIType hs_bindgen_203429d8b24ea269_base

{-|

  > iface_river_window_v1

  Recommend that the window keep its dimensions within a given maximum width/height. This recommendation is only a hint and the window may ignore it.

  Setting the width and height to 0 indicates that there are no bounds and is equivalent to having never made this request.

  Setting width or height to a negative value is a protocol error.

  The server should communicate this hint to an xdg_toplevel window with the xdg_toplevel.configure_bounds event for example.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_set_dimension_bounds@

__defined at:__ @river-window-management-v1-client-protocol.h 2063:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_dimension_bounds ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @max_width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @max_height@
  -> IO ()
river_window_v1_set_dimension_bounds =
  hs_bindgen_203429d8b24ea269

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_set_user_data@
foreign import ccall safe "hs_bindgen_98895263641a4cf0" hs_bindgen_98895263641a4cf0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_set_user_data@
hs_bindgen_98895263641a4cf0 ::
     RIP.Ptr River_decoration_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_98895263641a4cf0 =
  RIP.fromFFIType hs_bindgen_98895263641a4cf0_base

{-|

  > iface_river_decoration_v1

__C declaration:__ @river_decoration_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2099:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_set_user_data ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_decoration_v1_set_user_data =
  hs_bindgen_98895263641a4cf0

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_get_user_data@
foreign import ccall safe "hs_bindgen_f4d9a2809bde70ab" hs_bindgen_f4d9a2809bde70ab_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_get_user_data@
hs_bindgen_f4d9a2809bde70ab ::
     RIP.Ptr River_decoration_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f4d9a2809bde70ab =
  RIP.fromFFIType hs_bindgen_f4d9a2809bde70ab_base

{-|

  > iface_river_decoration_v1

__C declaration:__ @river_decoration_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2106:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_user_data ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> IO (RIP.Ptr RIP.Void)
river_decoration_v1_get_user_data =
  hs_bindgen_f4d9a2809bde70ab

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_get_version@
foreign import ccall safe "hs_bindgen_c0eff4ef1969b1cd" hs_bindgen_c0eff4ef1969b1cd_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_get_version@
hs_bindgen_c0eff4ef1969b1cd ::
     RIP.Ptr River_decoration_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c0eff4ef1969b1cd =
  RIP.fromFFIType hs_bindgen_c0eff4ef1969b1cd_base

{-| __C declaration:__ @river_decoration_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2112:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_version ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_decoration_v1_get_version =
  hs_bindgen_c0eff4ef1969b1cd

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_destroy@
foreign import ccall safe "hs_bindgen_7ed739ff7fae7d01" hs_bindgen_7ed739ff7fae7d01_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_destroy@
hs_bindgen_7ed739ff7fae7d01 ::
     RIP.Ptr River_decoration_v1
  -> IO ()
hs_bindgen_7ed739ff7fae7d01 =
  RIP.fromFFIType hs_bindgen_7ed739ff7fae7d01_base

{-|

  > iface_river_decoration_v1

  This request indicates that the client will no longer use the decoration object and that it may be safely destroyed.

__C declaration:__ @river_decoration_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 2124:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_destroy ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> IO ()
river_decoration_v1_destroy =
  hs_bindgen_7ed739ff7fae7d01

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_set_offset@
foreign import ccall safe "hs_bindgen_f8047c5ac563bebc" hs_bindgen_f8047c5ac563bebc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_set_offset@
hs_bindgen_f8047c5ac563bebc ::
     RIP.Ptr River_decoration_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f8047c5ac563bebc =
  RIP.fromFFIType hs_bindgen_f8047c5ac563bebc_base

{-|

  > iface_river_decoration_v1

  This request sets the offset of the decoration surface from the top left corner of the window.

  If this request is never sent, the x and y offsets are undefined by this protocol and left up to the compositor.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_decoration_v1_set_offset@

__defined at:__ @river-window-management-v1-client-protocol.h 2143:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_set_offset ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
river_decoration_v1_set_offset =
  hs_bindgen_f8047c5ac563bebc

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_sync_next_commit@
foreign import ccall safe "hs_bindgen_58343707d3c53d7c" hs_bindgen_58343707d3c53d7c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_decoration_v1_sync_next_commit@
hs_bindgen_58343707d3c53d7c ::
     RIP.Ptr River_decoration_v1
  -> IO ()
hs_bindgen_58343707d3c53d7c =
  RIP.fromFFIType hs_bindgen_58343707d3c53d7c_base

{-|

  > iface_river_decoration_v1

  Synchronize application of the next wl_surface.commit request on the decoration surface with rest of the state atomically applied with the next river_window_manager_v1.render_finish request.

  The client must make a wl_surface.commit request on the decoration surface after this request and before the render_finish request, failure to do so is a protocol error.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_decoration_v1_sync_next_commit@

__defined at:__ @river-window-management-v1-client-protocol.h 2164:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_sync_next_commit ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> IO ()
river_decoration_v1_sync_next_commit =
  hs_bindgen_58343707d3c53d7c

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_set_user_data@
foreign import ccall safe "hs_bindgen_c3be94587d1becbf" hs_bindgen_c3be94587d1becbf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_set_user_data@
hs_bindgen_c3be94587d1becbf ::
     RIP.Ptr River_shell_surface_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c3be94587d1becbf =
  RIP.fromFFIType hs_bindgen_c3be94587d1becbf_base

{-|

  > iface_river_shell_surface_v1

__C declaration:__ @river_shell_surface_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2204:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_set_user_data ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_shell_surface_v1_set_user_data =
  hs_bindgen_c3be94587d1becbf

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_user_data@
foreign import ccall safe "hs_bindgen_e960bf51d10bea27" hs_bindgen_e960bf51d10bea27_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_user_data@
hs_bindgen_e960bf51d10bea27 ::
     RIP.Ptr River_shell_surface_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e960bf51d10bea27 =
  RIP.fromFFIType hs_bindgen_e960bf51d10bea27_base

{-|

  > iface_river_shell_surface_v1

__C declaration:__ @river_shell_surface_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2211:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_user_data ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> IO (RIP.Ptr RIP.Void)
river_shell_surface_v1_get_user_data =
  hs_bindgen_e960bf51d10bea27

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_version@
foreign import ccall safe "hs_bindgen_739ddff890f1254c" hs_bindgen_739ddff890f1254c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_version@
hs_bindgen_739ddff890f1254c ::
     RIP.Ptr River_shell_surface_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_739ddff890f1254c =
  RIP.fromFFIType hs_bindgen_739ddff890f1254c_base

{-| __C declaration:__ @river_shell_surface_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2217:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_version ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_shell_surface_v1_get_version =
  hs_bindgen_739ddff890f1254c

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_destroy@
foreign import ccall safe "hs_bindgen_eb13510db6248428" hs_bindgen_eb13510db6248428_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_destroy@
hs_bindgen_eb13510db6248428 ::
     RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_eb13510db6248428 =
  RIP.fromFFIType hs_bindgen_eb13510db6248428_base

{-|

  > iface_river_shell_surface_v1

  This request indicates that the client will no longer use the shell surface object and that it may be safely destroyed.

__C declaration:__ @river_shell_surface_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 2229:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_destroy ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> IO ()
river_shell_surface_v1_destroy =
  hs_bindgen_eb13510db6248428

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_node@
foreign import ccall safe "hs_bindgen_021914af7e211fba" hs_bindgen_021914af7e211fba_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_node@
hs_bindgen_021914af7e211fba ::
     RIP.Ptr River_shell_surface_v1
  -> IO (RIP.Ptr River_node_v1)
hs_bindgen_021914af7e211fba =
  RIP.fromFFIType hs_bindgen_021914af7e211fba_base

{-|

  > iface_river_shell_surface_v1

  Get the node in the render list corresponding to the shell surface.

  It is a protocol error to make this request more than once for a single shell surface.

__C declaration:__ @river_shell_surface_v1_get_node@

__defined at:__ @river-window-management-v1-client-protocol.h 2244:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_node ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> IO (RIP.Ptr River_node_v1)
river_shell_surface_v1_get_node =
  hs_bindgen_021914af7e211fba

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_sync_next_commit@
foreign import ccall safe "hs_bindgen_02ef98a7f5f8797a" hs_bindgen_02ef98a7f5f8797a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_sync_next_commit@
hs_bindgen_02ef98a7f5f8797a ::
     RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_02ef98a7f5f8797a =
  RIP.fromFFIType hs_bindgen_02ef98a7f5f8797a_base

{-|

  > iface_river_shell_surface_v1

  Synchronize application of the next wl_surface.commit request on the shell surface with rest of the rendering state atomically applied with the next river_window_manager_v1.render_finish request.

  The client must make a wl_surface.commit request on the shell surface after this request and before the render_finish request, failure to do so is a protocol error.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_shell_surface_v1_sync_next_commit@

__defined at:__ @river-window-management-v1-client-protocol.h 2269:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_sync_next_commit ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> IO ()
river_shell_surface_v1_sync_next_commit =
  hs_bindgen_02ef98a7f5f8797a

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_set_user_data@
foreign import ccall safe "hs_bindgen_6f918bff9fbc119a" hs_bindgen_6f918bff9fbc119a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_set_user_data@
hs_bindgen_6f918bff9fbc119a ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6f918bff9fbc119a =
  RIP.fromFFIType hs_bindgen_6f918bff9fbc119a_base

{-|

  > iface_river_node_v1

__C declaration:__ @river_node_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2310:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_set_user_data ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_node_v1_set_user_data =
  hs_bindgen_6f918bff9fbc119a

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_get_user_data@
foreign import ccall safe "hs_bindgen_9b590c578cf26ba4" hs_bindgen_9b590c578cf26ba4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_get_user_data@
hs_bindgen_9b590c578cf26ba4 ::
     RIP.Ptr River_node_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_9b590c578cf26ba4 =
  RIP.fromFFIType hs_bindgen_9b590c578cf26ba4_base

{-|

  > iface_river_node_v1

__C declaration:__ @river_node_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2317:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_user_data ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> IO (RIP.Ptr RIP.Void)
river_node_v1_get_user_data =
  hs_bindgen_9b590c578cf26ba4

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_get_version@
foreign import ccall safe "hs_bindgen_211c34f1b89494c0" hs_bindgen_211c34f1b89494c0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_get_version@
hs_bindgen_211c34f1b89494c0 ::
     RIP.Ptr River_node_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_211c34f1b89494c0 =
  RIP.fromFFIType hs_bindgen_211c34f1b89494c0_base

{-| __C declaration:__ @river_node_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2323:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_version ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_node_v1_get_version =
  hs_bindgen_211c34f1b89494c0

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_destroy@
foreign import ccall safe "hs_bindgen_9db7de893df2973f" hs_bindgen_9db7de893df2973f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_destroy@
hs_bindgen_9db7de893df2973f ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_9db7de893df2973f =
  RIP.fromFFIType hs_bindgen_9db7de893df2973f_base

{-|

  > iface_river_node_v1

  This request indicates that the client will no longer use the node object and that it may be safely destroyed.

__C declaration:__ @river_node_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 2335:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_destroy ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> IO ()
river_node_v1_destroy = hs_bindgen_9db7de893df2973f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_set_position@
foreign import ccall safe "hs_bindgen_3bd3934567c96679" hs_bindgen_3bd3934567c96679_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_set_position@
hs_bindgen_3bd3934567c96679 ::
     RIP.Ptr River_node_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_3bd3934567c96679 =
  RIP.fromFFIType hs_bindgen_3bd3934567c96679_base

{-|

  > iface_river_node_v1

  Set the absolute position of the node in the compositor's logical coordinate space. The x and y coordinates may be positive or negative.

  Note that the position of a river_window_v1 refers to the position of the window content and is unaffected by the presence of borders or decoration surfaces.

  If this request is never sent, the position of the node is undefined by this protocol and left up to the compositor.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_set_position@

__defined at:__ @river-window-management-v1-client-protocol.h 2358:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_set_position ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
river_node_v1_set_position =
  hs_bindgen_3bd3934567c96679

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_place_top@
foreign import ccall safe "hs_bindgen_fa6bac9853ac0406" hs_bindgen_fa6bac9853ac0406_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_place_top@
hs_bindgen_fa6bac9853ac0406 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_fa6bac9853ac0406 =
  RIP.fromFFIType hs_bindgen_fa6bac9853ac0406_base

{-|

  > iface_river_node_v1

  This request places the node above all other nodes in the compositor's render list.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_place_top@

__defined at:__ @river-window-management-v1-client-protocol.h 2374:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_place_top ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> IO ()
river_node_v1_place_top = hs_bindgen_fa6bac9853ac0406

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_place_bottom@
foreign import ccall safe "hs_bindgen_65b915361b020f54" hs_bindgen_65b915361b020f54_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_place_bottom@
hs_bindgen_65b915361b020f54 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_65b915361b020f54 =
  RIP.fromFFIType hs_bindgen_65b915361b020f54_base

{-|

  > iface_river_node_v1

  This request places the node below all other nodes in the compositor's render list.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_place_bottom@

__defined at:__ @river-window-management-v1-client-protocol.h 2390:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_place_bottom ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> IO ()
river_node_v1_place_bottom =
  hs_bindgen_65b915361b020f54

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_place_above@
foreign import ccall safe "hs_bindgen_8620751c77012bed" hs_bindgen_8620751c77012bed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_place_above@
hs_bindgen_8620751c77012bed ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_8620751c77012bed =
  RIP.fromFFIType hs_bindgen_8620751c77012bed_base

{-|

  > iface_river_node_v1

  This request places the node directly above another node in the compositor's render list.

  Attempting to place a node above itself has no effect.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_place_above@

__defined at:__ @river-window-management-v1-client-protocol.h 2408:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_place_above ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @other@
  -> IO ()
river_node_v1_place_above =
  hs_bindgen_8620751c77012bed

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_place_below@
foreign import ccall safe "hs_bindgen_41d672372e81ef33" hs_bindgen_41d672372e81ef33_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_node_v1_place_below@
hs_bindgen_41d672372e81ef33 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_41d672372e81ef33 =
  RIP.fromFFIType hs_bindgen_41d672372e81ef33_base

{-|

  > iface_river_node_v1

  This request places the node directly below another node in the compositor's render list.

  Attempting to place a node below itself has no effect.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_place_below@

__defined at:__ @river-window-management-v1-client-protocol.h 2426:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_place_below ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @other@
  -> IO ()
river_node_v1_place_below =
  hs_bindgen_41d672372e81ef33

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_add_listener@
foreign import ccall safe "hs_bindgen_b20b8657d13ff13d" hs_bindgen_b20b8657d13ff13d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_add_listener@
hs_bindgen_b20b8657d13ff13d ::
     RIP.Ptr River_output_v1
  -> PtrConst.PtrConst River_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b20b8657d13ff13d =
  RIP.fromFFIType hs_bindgen_b20b8657d13ff13d_base

{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2573:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_add_listener ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> PtrConst.PtrConst River_output_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_output_v1_add_listener =
  hs_bindgen_b20b8657d13ff13d

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_set_user_data@
foreign import ccall safe "hs_bindgen_0e37a66c82367689" hs_bindgen_0e37a66c82367689_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_set_user_data@
hs_bindgen_0e37a66c82367689 ::
     RIP.Ptr River_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0e37a66c82367689 =
  RIP.fromFFIType hs_bindgen_0e37a66c82367689_base

{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2611:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_set_user_data ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_output_v1_set_user_data =
  hs_bindgen_0e37a66c82367689

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_get_user_data@
foreign import ccall safe "hs_bindgen_b6ee3580949dbd7a" hs_bindgen_b6ee3580949dbd7a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_get_user_data@
hs_bindgen_b6ee3580949dbd7a ::
     RIP.Ptr River_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b6ee3580949dbd7a =
  RIP.fromFFIType hs_bindgen_b6ee3580949dbd7a_base

{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2618:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_user_data ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> IO (RIP.Ptr RIP.Void)
river_output_v1_get_user_data =
  hs_bindgen_b6ee3580949dbd7a

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_get_version@
foreign import ccall safe "hs_bindgen_51a9f3df9d791fb4" hs_bindgen_51a9f3df9d791fb4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_get_version@
hs_bindgen_51a9f3df9d791fb4 ::
     RIP.Ptr River_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_51a9f3df9d791fb4 =
  RIP.fromFFIType hs_bindgen_51a9f3df9d791fb4_base

{-| __C declaration:__ @river_output_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2624:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_version ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_output_v1_get_version =
  hs_bindgen_51a9f3df9d791fb4

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_destroy@
foreign import ccall safe "hs_bindgen_b384b4b04cfaa188" hs_bindgen_b384b4b04cfaa188_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_destroy@
hs_bindgen_b384b4b04cfaa188 ::
     RIP.Ptr River_output_v1
  -> IO ()
hs_bindgen_b384b4b04cfaa188 =
  RIP.fromFFIType hs_bindgen_b384b4b04cfaa188_base

{-|

  > iface_river_output_v1

  This request indicates that the client will no longer use the output object and that it may be safely destroyed.

  This request should be made after the river_output_v1.removed event is received to complete destruction of the output.

__C declaration:__ @river_output_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 2639:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_destroy ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> IO ()
river_output_v1_destroy = hs_bindgen_b384b4b04cfaa188

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_set_presentation_mode@
foreign import ccall safe "hs_bindgen_6bf3b66954cf6e5d" hs_bindgen_6bf3b66954cf6e5d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_output_v1_set_presentation_mode@
hs_bindgen_6bf3b66954cf6e5d ::
     RIP.Ptr River_output_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_6bf3b66954cf6e5d =
  RIP.fromFFIType hs_bindgen_6bf3b66954cf6e5d_base

{-|

  > iface_river_output_v1

  Set the preferred presentation mode of the output. The compositor should always respect the preference of the window manager if possible. If this request is never made, the preferred presentation mode is vsync.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_output_v1_set_presentation_mode@

__defined at:__ @river-window-management-v1-client-protocol.h 2656:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_set_presentation_mode ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @mode@
  -> IO ()
river_output_v1_set_presentation_mode =
  hs_bindgen_6bf3b66954cf6e5d

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_6cddc0bb219565b6" hs_bindgen_6cddc0bb219565b6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_add_listener@
hs_bindgen_6cddc0bb219565b6 ::
     RIP.Ptr River_seat_v1
  -> PtrConst.PtrConst River_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_6cddc0bb219565b6 =
  RIP.fromFFIType hs_bindgen_6cddc0bb219565b6_base

{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2885:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_add_listener ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> PtrConst.PtrConst River_seat_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_seat_v1_add_listener =
  hs_bindgen_6cddc0bb219565b6

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_b3fd6f5622ec09e2" hs_bindgen_b3fd6f5622ec09e2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_set_user_data@
hs_bindgen_b3fd6f5622ec09e2 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b3fd6f5622ec09e2 =
  RIP.fromFFIType hs_bindgen_b3fd6f5622ec09e2_base

{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2978:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_set_user_data ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_seat_v1_set_user_data =
  hs_bindgen_b3fd6f5622ec09e2

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_851c2c2befda9bea" hs_bindgen_851c2c2befda9bea_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_user_data@
hs_bindgen_851c2c2befda9bea ::
     RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_851c2c2befda9bea =
  RIP.fromFFIType hs_bindgen_851c2c2befda9bea_base

{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2985:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_user_data ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO (RIP.Ptr RIP.Void)
river_seat_v1_get_user_data =
  hs_bindgen_851c2c2befda9bea

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_d72f57dcbd97ad8b" hs_bindgen_d72f57dcbd97ad8b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_version@
hs_bindgen_d72f57dcbd97ad8b ::
     RIP.Ptr River_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d72f57dcbd97ad8b =
  RIP.fromFFIType hs_bindgen_d72f57dcbd97ad8b_base

{-| __C declaration:__ @river_seat_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2991:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_version ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_seat_v1_get_version =
  hs_bindgen_d72f57dcbd97ad8b

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_8c24385bf24f827f" hs_bindgen_8c24385bf24f827f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_destroy@
hs_bindgen_8c24385bf24f827f ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_8c24385bf24f827f =
  RIP.fromFFIType hs_bindgen_8c24385bf24f827f_base

{-|

  > iface_river_seat_v1

  This request indicates that the client will no longer use the seat object and that it may be safely destroyed.

  This request should be made after the river_seat_v1.removed event is received to complete destruction of the seat.

__C declaration:__ @river_seat_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 3006:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_destroy ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO ()
river_seat_v1_destroy = hs_bindgen_8c24385bf24f827f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_focus_window@
foreign import ccall safe "hs_bindgen_8b8ebc47f4cec431" hs_bindgen_8b8ebc47f4cec431_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_focus_window@
hs_bindgen_8b8ebc47f4cec431 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_8b8ebc47f4cec431 =
  RIP.fromFFIType hs_bindgen_8b8ebc47f4cec431_base

{-|

  > iface_river_seat_v1

  Request that the compositor send keyboard input to the given window.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_focus_window@

__defined at:__ @river-window-management-v1-client-protocol.h 3021:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_focus_window ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @window@
  -> IO ()
river_seat_v1_focus_window =
  hs_bindgen_8b8ebc47f4cec431

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_focus_shell_surface@
foreign import ccall safe "hs_bindgen_9f9e7aac5748a3e9" hs_bindgen_9f9e7aac5748a3e9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_focus_shell_surface@
hs_bindgen_9f9e7aac5748a3e9 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_9f9e7aac5748a3e9 =
  RIP.fromFFIType hs_bindgen_9f9e7aac5748a3e9_base

{-|

  > iface_river_seat_v1

  Request that the compositor send keyboard input to the given shell surface.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_focus_shell_surface@

__defined at:__ @river-window-management-v1-client-protocol.h 3037:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_focus_shell_surface ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @shell_surface@
  -> IO ()
river_seat_v1_focus_shell_surface =
  hs_bindgen_9f9e7aac5748a3e9

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_clear_focus@
foreign import ccall safe "hs_bindgen_74c75dd592c4bbc3" hs_bindgen_74c75dd592c4bbc3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_clear_focus@
hs_bindgen_74c75dd592c4bbc3 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_74c75dd592c4bbc3 =
  RIP.fromFFIType hs_bindgen_74c75dd592c4bbc3_base

{-|

  > iface_river_seat_v1

  Request that the compositor not send keyboard input to any client.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_clear_focus@

__defined at:__ @river-window-management-v1-client-protocol.h 3052:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_clear_focus ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO ()
river_seat_v1_clear_focus =
  hs_bindgen_74c75dd592c4bbc3

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_op_start_pointer@
foreign import ccall safe "hs_bindgen_41992ae1416a7377" hs_bindgen_41992ae1416a7377_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_op_start_pointer@
hs_bindgen_41992ae1416a7377 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_41992ae1416a7377 =
  RIP.fromFFIType hs_bindgen_41992ae1416a7377_base

{-|

  > iface_river_seat_v1

  Start an interactive pointer operation. During the operation, op_delta events will be sent based on pointer input.

  When all pointer buttons are released, the op_release event is sent.

  The pointer operation continues until the op_end request is made during a manage sequence and that manage sequence is finished.

  The window manager may use this operation to implement interactive move/resize of windows by setting the position of windows and proposing dimensions based off of the op_delta events.

  This request is ignored if an operation is already in progress.

  The compositor must ensure that no client has pointer focus from this seat during the pointer operation. This means that the window manager has control over the pointer's cursor surface/shape during the pointer operation. See the river_seat_v1 description.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_op_start_pointer@

__defined at:__ @river-window-management-v1-client-protocol.h 3084:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_op_start_pointer ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO ()
river_seat_v1_op_start_pointer =
  hs_bindgen_41992ae1416a7377

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_op_end@
foreign import ccall safe "hs_bindgen_c0145b0a03d66c35" hs_bindgen_c0145b0a03d66c35_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_op_end@
hs_bindgen_c0145b0a03d66c35 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_c0145b0a03d66c35 =
  RIP.fromFFIType hs_bindgen_c0145b0a03d66c35_base

{-|

  > iface_river_seat_v1

  End an interactive operation.

  This request is ignored if there is no operation in progress.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_op_end@

__defined at:__ @river-window-management-v1-client-protocol.h 3101:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_op_end ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO ()
river_seat_v1_op_end = hs_bindgen_c0145b0a03d66c35

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_pointer_binding@
foreign import ccall safe "hs_bindgen_53b1493cd51b5544" hs_bindgen_53b1493cd51b5544_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_pointer_binding@
hs_bindgen_53b1493cd51b5544 ::
     RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_pointer_binding_v1)
hs_bindgen_53b1493cd51b5544 =
  RIP.fromFFIType hs_bindgen_53b1493cd51b5544_base

{-|

  > iface_river_seat_v1

  Define a pointer binding in terms of a pointer button, keyboard modifiers, and other configurable properties.

  The button argument is a Linux input event code defined in the linux/input-event-codes.h header file (e.g. BTN_RIGHT).

  The new pointer binding is not enabled until initial configuration is completed and the enable request is made during a manage sequence.

__C declaration:__ @river_seat_v1_get_pointer_binding@

__defined at:__ @river-window-management-v1-client-protocol.h 3120:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_pointer_binding ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @button@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @modifiers@
  -> IO (RIP.Ptr River_pointer_binding_v1)
river_seat_v1_get_pointer_binding =
  hs_bindgen_53b1493cd51b5544

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_set_xcursor_theme@
foreign import ccall safe "hs_bindgen_b5eaf12fee25c157" hs_bindgen_b5eaf12fee25c157_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_set_xcursor_theme@
hs_bindgen_b5eaf12fee25c157 ::
     RIP.Ptr River_seat_v1
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_b5eaf12fee25c157 =
  RIP.fromFFIType hs_bindgen_b5eaf12fee25c157_base

{-|

  > iface_river_seat_v1

  Set the XCursor theme for the seat. This theme is used for cursors rendered by the compositor, but not necessarily for cursors rendered by clients.

  Note: The window manager may also wish to set the XCURSOR_THEME and XCURSOR_SIZE environment variable for programs it starts.

__C declaration:__ @river_seat_v1_set_xcursor_theme@

__defined at:__ @river-window-management-v1-client-protocol.h 3141:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_set_xcursor_theme ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @size@
  -> IO ()
river_seat_v1_set_xcursor_theme =
  hs_bindgen_b5eaf12fee25c157

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_pointer_warp@
foreign import ccall safe "hs_bindgen_881ecfc4a6f762a3" hs_bindgen_881ecfc4a6f762a3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_seat_v1_pointer_warp@
hs_bindgen_881ecfc4a6f762a3 ::
     RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_881ecfc4a6f762a3 =
  RIP.fromFFIType hs_bindgen_881ecfc4a6f762a3_base

{-|

  > iface_river_seat_v1

  Warp the pointer to the given position in the compositor's logical coordinate space.

  If the given position is outside the bounds of all outputs, the pointer will be warped to the closest point inside an output instead.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_pointer_warp@

__defined at:__ @river-window-management-v1-client-protocol.h 3160:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_pointer_warp ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
river_seat_v1_pointer_warp =
  hs_bindgen_881ecfc4a6f762a3

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_add_listener@
foreign import ccall safe "hs_bindgen_5db200adfba58715" hs_bindgen_5db200adfba58715_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_add_listener@
hs_bindgen_5db200adfba58715 ::
     RIP.Ptr River_pointer_binding_v1
  -> PtrConst.PtrConst River_pointer_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_5db200adfba58715 =
  RIP.fromFFIType hs_bindgen_5db200adfba58715_base

{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 3220:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_add_listener ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> PtrConst.PtrConst River_pointer_binding_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_pointer_binding_v1_add_listener =
  hs_bindgen_5db200adfba58715

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_set_user_data@
foreign import ccall safe "hs_bindgen_6e61fd151b877720" hs_bindgen_6e61fd151b877720_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_set_user_data@
hs_bindgen_6e61fd151b877720 ::
     RIP.Ptr River_pointer_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6e61fd151b877720 =
  RIP.fromFFIType hs_bindgen_6e61fd151b877720_base

{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 3255:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_set_user_data ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_pointer_binding_v1_set_user_data =
  hs_bindgen_6e61fd151b877720

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_get_user_data@
foreign import ccall safe "hs_bindgen_ab80cf8d9524a3b5" hs_bindgen_ab80cf8d9524a3b5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_get_user_data@
hs_bindgen_ab80cf8d9524a3b5 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ab80cf8d9524a3b5 =
  RIP.fromFFIType hs_bindgen_ab80cf8d9524a3b5_base

{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 3262:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_user_data ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> IO (RIP.Ptr RIP.Void)
river_pointer_binding_v1_get_user_data =
  hs_bindgen_ab80cf8d9524a3b5

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_get_version@
foreign import ccall safe "hs_bindgen_9b9e20f4c08aec1e" hs_bindgen_9b9e20f4c08aec1e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_get_version@
hs_bindgen_9b9e20f4c08aec1e ::
     RIP.Ptr River_pointer_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9b9e20f4c08aec1e =
  RIP.fromFFIType hs_bindgen_9b9e20f4c08aec1e_base

{-| __C declaration:__ @river_pointer_binding_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 3268:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_version ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_pointer_binding_v1_get_version =
  hs_bindgen_9b9e20f4c08aec1e

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_destroy@
foreign import ccall safe "hs_bindgen_effc8a04b3a346ec" hs_bindgen_effc8a04b3a346ec_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_destroy@
hs_bindgen_effc8a04b3a346ec ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_effc8a04b3a346ec =
  RIP.fromFFIType hs_bindgen_effc8a04b3a346ec_base

{-|

  > iface_river_pointer_binding_v1

  This request indicates that the client will no longer use the pointer binding object and that it may be safely destroyed.

__C declaration:__ @river_pointer_binding_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 3280:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_destroy ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> IO ()
river_pointer_binding_v1_destroy =
  hs_bindgen_effc8a04b3a346ec

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_enable@
foreign import ccall safe "hs_bindgen_441d773b8772a62b" hs_bindgen_441d773b8772a62b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_enable@
hs_bindgen_441d773b8772a62b ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_441d773b8772a62b =
  RIP.fromFFIType hs_bindgen_441d773b8772a62b_base

{-|

  > iface_river_pointer_binding_v1

  This request should be made after all initial configuration has been completed and the window manager wishes the pointer binding to be able to be triggered.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_pointer_binding_v1_enable@

__defined at:__ @river-window-management-v1-client-protocol.h 3297:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_enable ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> IO ()
river_pointer_binding_v1_enable =
  hs_bindgen_441d773b8772a62b

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_disable@
foreign import ccall safe "hs_bindgen_f1e58cb645b5a706" hs_bindgen_f1e58cb645b5a706_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_disable@
hs_bindgen_f1e58cb645b5a706 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_f1e58cb645b5a706 =
  RIP.fromFFIType hs_bindgen_f1e58cb645b5a706_base

{-|

  > iface_river_pointer_binding_v1

  This request may be used to temporarily disable the pointer binding. It may be later re-enabled with the enable request.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_pointer_binding_v1_disable@

__defined at:__ @river-window-management-v1-client-protocol.h 3313:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_disable ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> IO ()
river_pointer_binding_v1_disable =
  hs_bindgen_f1e58cb645b5a706

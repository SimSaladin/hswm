{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.WindowManagementV1.Generated.Safe
    ( Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_stop
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_manage_finish
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_manage_dirty
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_render_finish
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_get_shell_surface
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_manager_v1_exit_session
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_close
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_get_node
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_propose_dimensions
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_hide
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_show
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_use_csd
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_use_ssd
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_set_borders
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_set_tiled
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_get_decoration_above
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_get_decoration_below
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_inform_resize_start
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_inform_resize_end
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_set_capabilities
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_inform_maximized
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_inform_unmaximized
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_inform_fullscreen
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_inform_not_fullscreen
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_fullscreen
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_exit_fullscreen
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_set_clip_box
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_set_content_clip_box
    , Bindings.River.WindowManagementV1.Generated.Safe.river_window_v1_set_dimension_bounds
    , Bindings.River.WindowManagementV1.Generated.Safe.river_decoration_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_decoration_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_decoration_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Safe.river_decoration_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Safe.river_decoration_v1_set_offset
    , Bindings.River.WindowManagementV1.Generated.Safe.river_decoration_v1_sync_next_commit
    , Bindings.River.WindowManagementV1.Generated.Safe.river_shell_surface_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_shell_surface_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_shell_surface_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Safe.river_shell_surface_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Safe.river_shell_surface_v1_get_node
    , Bindings.River.WindowManagementV1.Generated.Safe.river_shell_surface_v1_sync_next_commit
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_set_position
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_place_top
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_place_bottom
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_place_above
    , Bindings.River.WindowManagementV1.Generated.Safe.river_node_v1_place_below
    , Bindings.River.WindowManagementV1.Generated.Safe.river_output_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Safe.river_output_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_output_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_output_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Safe.river_output_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Safe.river_output_v1_set_presentation_mode
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_focus_window
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_focus_shell_surface
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_clear_focus
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_op_start_pointer
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_op_end
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_get_pointer_binding
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_set_xcursor_theme
    , Bindings.River.WindowManagementV1.Generated.Safe.river_seat_v1_pointer_warp
    , Bindings.River.WindowManagementV1.Generated.Safe.river_pointer_binding_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Safe.river_pointer_binding_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_pointer_binding_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Safe.river_pointer_binding_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Safe.river_pointer_binding_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Safe.river_pointer_binding_v1_enable
    , Bindings.River.WindowManagementV1.Generated.Safe.river_pointer_binding_v1_disable
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.WindowManagementV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-window-management-v1-client-protocol.h>"
  , "signed int hs_bindgen_84e59fecbd74e107 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct river_window_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_296bdb6eeb0873a5 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_window_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_70f05d0546645078 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7bc7221e105b6c80 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d08cbcaf4be000db ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_0a17be69a58d526c ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_da74092354fa709c ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_manage_finish)(arg1);"
  , "}"
  , "void hs_bindgen_b7019be23ce3ccab ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_manage_dirty)(arg1);"
  , "}"
  , "void hs_bindgen_b0b3b48d996875eb ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_render_finish)(arg1);"
  , "}"
  , "struct river_shell_surface_v1 *hs_bindgen_fbb0f1592d807ee4 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_shell_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_00b39ac8caf62cc6 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_exit_session)(arg1);"
  , "}"
  , "signed int hs_bindgen_35a2bd6fed3d893d ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_window_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_window_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_bb6dd815f3905865 ("
  , "  struct river_window_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_113e15f0593236c2 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_0c58cd4d28cf5ffb ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_93d56a25067741aa ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_c5da0b3665e1c65e ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_close)(arg1);"
  , "}"
  , "struct river_node_v1 *hs_bindgen_5b442f28739f2b11 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_node)(arg1);"
  , "}"
  , "void hs_bindgen_ec633c16297e219d ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_window_v1_propose_dimensions)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_bde75e5400d7ccc7 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_hide)(arg1);"
  , "}"
  , "void hs_bindgen_fba2ec8287bc1843 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_show)(arg1);"
  , "}"
  , "void hs_bindgen_113409cbffc9e47d ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_use_csd)(arg1);"
  , "}"
  , "void hs_bindgen_e4617bace3f46afe ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_use_ssd)(arg1);"
  , "}"
  , "void hs_bindgen_cd68bbb3e31f2e08 ("
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
  , "void hs_bindgen_5b9e10ed88a029b1 ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_tiled)(arg1, arg2);"
  , "}"
  , "struct river_decoration_v1 *hs_bindgen_41f7e37f1cde84b1 ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_v1_get_decoration_above)(arg1, arg2);"
  , "}"
  , "struct river_decoration_v1 *hs_bindgen_c423b328e3f93e9f ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_v1_get_decoration_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_cb866c21248ff5af ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_resize_start)(arg1);"
  , "}"
  , "void hs_bindgen_dac1c091078692fb ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_resize_end)(arg1);"
  , "}"
  , "void hs_bindgen_3f2536117d888347 ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_capabilities)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6ca2d09111716aae ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_maximized)(arg1);"
  , "}"
  , "void hs_bindgen_12b029dccebbad7f ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_unmaximized)(arg1);"
  , "}"
  , "void hs_bindgen_3850b233234ee09a ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_2219265bd9c108da ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_not_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_0a28ba7bf634ba17 ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  (river_window_v1_fullscreen)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ca97757567d4326e ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_exit_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_3b12e900c90be7bf ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_window_v1_set_clip_box)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_ed12b3b13a8d3964 ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_window_v1_set_content_clip_box)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_d8991446a20fa848 ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_window_v1_set_dimension_bounds)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_93ec3d920c34cb58 ("
  , "  struct river_decoration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_decoration_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ab3965ce4fde5491 ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_decoration_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_179a22d4768515b7 ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_decoration_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c65fb82dca5e273f ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  (river_decoration_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_2a283b399508ae78 ("
  , "  struct river_decoration_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_decoration_v1_set_offset)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5c0886bd425534bf ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  (river_decoration_v1_sync_next_commit)(arg1);"
  , "}"
  , "void hs_bindgen_b4093a38c76d99c6 ("
  , "  struct river_shell_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_70c8a0991ada3605 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a4d18e4d52fba081 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8dfbfc8fae2817e9 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_destroy)(arg1);"
  , "}"
  , "struct river_node_v1 *hs_bindgen_9b1adbb2e4345357 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_node)(arg1);"
  , "}"
  , "void hs_bindgen_90bc0ba60402e551 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_sync_next_commit)(arg1);"
  , "}"
  , "void hs_bindgen_6ac3a259092f6e13 ("
  , "  struct river_node_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f905bcda3d6d36e0 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_node_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b4cd3ca6c48a2b32 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_node_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8e0f4a87ca201794 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_6f8a92c43136bc29 ("
  , "  struct river_node_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_node_v1_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d6f32f3b91f966a1 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_place_top)(arg1);"
  , "}"
  , "void hs_bindgen_9405b95504f18dc0 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_place_bottom)(arg1);"
  , "}"
  , "void hs_bindgen_4e6d34e8c06a9af1 ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1d44d692b44fd84d ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_place_below)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_72bc304ec807828c ("
  , "  struct river_output_v1 *arg1,"
  , "  struct river_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c48096744bdf06f6 ("
  , "  struct river_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_6db08467b1b54e90 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_18213cdac25938f7 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_bf5402b04e381035 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_1508fddeba221eb7 ("
  , "  struct river_output_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_output_v1_set_presentation_mode)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_cc8aecb46e943f55 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_be045e74c0e6b556 ("
  , "  struct river_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_bd027a37ebf85c11 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_03ee7a127b98fd5e ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_3ee9a2fd3c1686bd ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_88c120b012a596f9 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_window_v1 *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_focus_window)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_145f114775d8d1b1 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_shell_surface_v1 *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_focus_shell_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0e93f481b919f55a ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_clear_focus)(arg1);"
  , "}"
  , "void hs_bindgen_c71a12899e9735bd ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_op_start_pointer)(arg1);"
  , "}"
  , "void hs_bindgen_07d8309d82be68dd ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_op_end)(arg1);"
  , "}"
  , "struct river_pointer_binding_v1 *hs_bindgen_90bdd43f2dd8badd ("
  , "  struct river_seat_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_pointer_binding)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_58c11449c85d661a ("
  , "  struct river_seat_v1 *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (river_seat_v1_set_xcursor_theme)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7d0af1c5bbd184b8 ("
  , "  struct river_seat_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_seat_v1_pointer_warp)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_085b3ff92617def4 ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  struct river_pointer_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9f451715747e97e9 ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0a1223a2725a3a80 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5c5975ad34ce4ffb ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_667e07d3e6fa9940 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_d9c9c1781a86422b ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_2030bf6a52464d20 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_add_listener@
foreign import ccall safe "hs_bindgen_84e59fecbd74e107" hs_bindgen_84e59fecbd74e107_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_add_listener@
hs_bindgen_84e59fecbd74e107 ::
     RIP.Ptr River_window_manager_v1
  -> PtrConst.PtrConst River_window_manager_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_84e59fecbd74e107 =
  RIP.fromFFIType hs_bindgen_84e59fecbd74e107_base

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
  hs_bindgen_84e59fecbd74e107

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_296bdb6eeb0873a5" hs_bindgen_296bdb6eeb0873a5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_set_user_data@
hs_bindgen_296bdb6eeb0873a5 ::
     RIP.Ptr River_window_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_296bdb6eeb0873a5 =
  RIP.fromFFIType hs_bindgen_296bdb6eeb0873a5_base

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
  hs_bindgen_296bdb6eeb0873a5

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_70f05d0546645078" hs_bindgen_70f05d0546645078_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_get_user_data@
hs_bindgen_70f05d0546645078 ::
     RIP.Ptr River_window_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_70f05d0546645078 =
  RIP.fromFFIType hs_bindgen_70f05d0546645078_base

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
  hs_bindgen_70f05d0546645078

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_7bc7221e105b6c80" hs_bindgen_7bc7221e105b6c80_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_get_version@
hs_bindgen_7bc7221e105b6c80 ::
     RIP.Ptr River_window_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7bc7221e105b6c80 =
  RIP.fromFFIType hs_bindgen_7bc7221e105b6c80_base

{-| __C declaration:__ @river_window_manager_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 708:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_version ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_window_manager_v1_get_version =
  hs_bindgen_7bc7221e105b6c80

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_stop@
foreign import ccall safe "hs_bindgen_d08cbcaf4be000db" hs_bindgen_d08cbcaf4be000db_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_stop@
hs_bindgen_d08cbcaf4be000db ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_d08cbcaf4be000db =
  RIP.fromFFIType hs_bindgen_d08cbcaf4be000db_base

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
  hs_bindgen_d08cbcaf4be000db

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_0a17be69a58d526c" hs_bindgen_0a17be69a58d526c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_destroy@
hs_bindgen_0a17be69a58d526c ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_0a17be69a58d526c =
  RIP.fromFFIType hs_bindgen_0a17be69a58d526c_base

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
  hs_bindgen_0a17be69a58d526c

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_manage_finish@
foreign import ccall safe "hs_bindgen_da74092354fa709c" hs_bindgen_da74092354fa709c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_manage_finish@
hs_bindgen_da74092354fa709c ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_da74092354fa709c =
  RIP.fromFFIType hs_bindgen_da74092354fa709c_base

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
  hs_bindgen_da74092354fa709c

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_manage_dirty@
foreign import ccall safe "hs_bindgen_b7019be23ce3ccab" hs_bindgen_b7019be23ce3ccab_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_manage_dirty@
hs_bindgen_b7019be23ce3ccab ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_b7019be23ce3ccab =
  RIP.fromFFIType hs_bindgen_b7019be23ce3ccab_base

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
  hs_bindgen_b7019be23ce3ccab

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_render_finish@
foreign import ccall safe "hs_bindgen_b0b3b48d996875eb" hs_bindgen_b0b3b48d996875eb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_render_finish@
hs_bindgen_b0b3b48d996875eb ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_b0b3b48d996875eb =
  RIP.fromFFIType hs_bindgen_b0b3b48d996875eb_base

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
  hs_bindgen_b0b3b48d996875eb

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_get_shell_surface@
foreign import ccall safe "hs_bindgen_fbb0f1592d807ee4" hs_bindgen_fbb0f1592d807ee4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_get_shell_surface@
hs_bindgen_fbb0f1592d807ee4 ::
     RIP.Ptr River_window_manager_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr River_shell_surface_v1)
hs_bindgen_fbb0f1592d807ee4 =
  RIP.fromFFIType hs_bindgen_fbb0f1592d807ee4_base

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
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr River_shell_surface_v1)
river_window_manager_v1_get_shell_surface =
  hs_bindgen_fbb0f1592d807ee4

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_exit_session@
foreign import ccall safe "hs_bindgen_00b39ac8caf62cc6" hs_bindgen_00b39ac8caf62cc6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_manager_v1_exit_session@
hs_bindgen_00b39ac8caf62cc6 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_00b39ac8caf62cc6 =
  RIP.fromFFIType hs_bindgen_00b39ac8caf62cc6_base

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
  hs_bindgen_00b39ac8caf62cc6

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_add_listener@
foreign import ccall safe "hs_bindgen_35a2bd6fed3d893d" hs_bindgen_35a2bd6fed3d893d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_add_listener@
hs_bindgen_35a2bd6fed3d893d ::
     RIP.Ptr River_window_v1
  -> PtrConst.PtrConst River_window_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_35a2bd6fed3d893d =
  RIP.fromFFIType hs_bindgen_35a2bd6fed3d893d_base

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
  hs_bindgen_35a2bd6fed3d893d

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_user_data@
foreign import ccall safe "hs_bindgen_bb6dd815f3905865" hs_bindgen_bb6dd815f3905865_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_user_data@
hs_bindgen_bb6dd815f3905865 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_bb6dd815f3905865 =
  RIP.fromFFIType hs_bindgen_bb6dd815f3905865_base

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
  hs_bindgen_bb6dd815f3905865

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_user_data@
foreign import ccall safe "hs_bindgen_113e15f0593236c2" hs_bindgen_113e15f0593236c2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_user_data@
hs_bindgen_113e15f0593236c2 ::
     RIP.Ptr River_window_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_113e15f0593236c2 =
  RIP.fromFFIType hs_bindgen_113e15f0593236c2_base

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
  hs_bindgen_113e15f0593236c2

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_version@
foreign import ccall safe "hs_bindgen_0c58cd4d28cf5ffb" hs_bindgen_0c58cd4d28cf5ffb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_version@
hs_bindgen_0c58cd4d28cf5ffb ::
     RIP.Ptr River_window_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_0c58cd4d28cf5ffb =
  RIP.fromFFIType hs_bindgen_0c58cd4d28cf5ffb_base

{-| __C declaration:__ @river_window_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 1502:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_version ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_window_v1_get_version =
  hs_bindgen_0c58cd4d28cf5ffb

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_destroy@
foreign import ccall safe "hs_bindgen_93d56a25067741aa" hs_bindgen_93d56a25067741aa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_destroy@
hs_bindgen_93d56a25067741aa ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_93d56a25067741aa =
  RIP.fromFFIType hs_bindgen_93d56a25067741aa_base

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
river_window_v1_destroy = hs_bindgen_93d56a25067741aa

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_close@
foreign import ccall safe "hs_bindgen_c5da0b3665e1c65e" hs_bindgen_c5da0b3665e1c65e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_close@
hs_bindgen_c5da0b3665e1c65e ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_c5da0b3665e1c65e =
  RIP.fromFFIType hs_bindgen_c5da0b3665e1c65e_base

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
river_window_v1_close = hs_bindgen_c5da0b3665e1c65e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_node@
foreign import ccall safe "hs_bindgen_5b442f28739f2b11" hs_bindgen_5b442f28739f2b11_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_node@
hs_bindgen_5b442f28739f2b11 ::
     RIP.Ptr River_window_v1
  -> IO (RIP.Ptr River_node_v1)
hs_bindgen_5b442f28739f2b11 =
  RIP.fromFFIType hs_bindgen_5b442f28739f2b11_base

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
  hs_bindgen_5b442f28739f2b11

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_propose_dimensions@
foreign import ccall safe "hs_bindgen_ec633c16297e219d" hs_bindgen_ec633c16297e219d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_propose_dimensions@
hs_bindgen_ec633c16297e219d ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_ec633c16297e219d =
  RIP.fromFFIType hs_bindgen_ec633c16297e219d_base

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
  hs_bindgen_ec633c16297e219d

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_hide@
foreign import ccall safe "hs_bindgen_bde75e5400d7ccc7" hs_bindgen_bde75e5400d7ccc7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_hide@
hs_bindgen_bde75e5400d7ccc7 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_bde75e5400d7ccc7 =
  RIP.fromFFIType hs_bindgen_bde75e5400d7ccc7_base

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
river_window_v1_hide = hs_bindgen_bde75e5400d7ccc7

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_show@
foreign import ccall safe "hs_bindgen_fba2ec8287bc1843" hs_bindgen_fba2ec8287bc1843_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_show@
hs_bindgen_fba2ec8287bc1843 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_fba2ec8287bc1843 =
  RIP.fromFFIType hs_bindgen_fba2ec8287bc1843_base

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
river_window_v1_show = hs_bindgen_fba2ec8287bc1843

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_use_csd@
foreign import ccall safe "hs_bindgen_113409cbffc9e47d" hs_bindgen_113409cbffc9e47d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_use_csd@
hs_bindgen_113409cbffc9e47d ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_113409cbffc9e47d =
  RIP.fromFFIType hs_bindgen_113409cbffc9e47d_base

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
river_window_v1_use_csd = hs_bindgen_113409cbffc9e47d

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_use_ssd@
foreign import ccall safe "hs_bindgen_e4617bace3f46afe" hs_bindgen_e4617bace3f46afe_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_use_ssd@
hs_bindgen_e4617bace3f46afe ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_e4617bace3f46afe =
  RIP.fromFFIType hs_bindgen_e4617bace3f46afe_base

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
river_window_v1_use_ssd = hs_bindgen_e4617bace3f46afe

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_borders@
foreign import ccall safe "hs_bindgen_cd68bbb3e31f2e08" hs_bindgen_cd68bbb3e31f2e08_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_borders@
hs_bindgen_cd68bbb3e31f2e08 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_cd68bbb3e31f2e08 =
  RIP.fromFFIType hs_bindgen_cd68bbb3e31f2e08_base

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
  hs_bindgen_cd68bbb3e31f2e08

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_tiled@
foreign import ccall safe "hs_bindgen_5b9e10ed88a029b1" hs_bindgen_5b9e10ed88a029b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_tiled@
hs_bindgen_5b9e10ed88a029b1 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_5b9e10ed88a029b1 =
  RIP.fromFFIType hs_bindgen_5b9e10ed88a029b1_base

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
  hs_bindgen_5b9e10ed88a029b1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_decoration_above@
foreign import ccall safe "hs_bindgen_41f7e37f1cde84b1" hs_bindgen_41f7e37f1cde84b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_decoration_above@
hs_bindgen_41f7e37f1cde84b1 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr River_decoration_v1)
hs_bindgen_41f7e37f1cde84b1 =
  RIP.fromFFIType hs_bindgen_41f7e37f1cde84b1_base

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
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr River_decoration_v1)
river_window_v1_get_decoration_above =
  hs_bindgen_41f7e37f1cde84b1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_decoration_below@
foreign import ccall safe "hs_bindgen_c423b328e3f93e9f" hs_bindgen_c423b328e3f93e9f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_get_decoration_below@
hs_bindgen_c423b328e3f93e9f ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr River_decoration_v1)
hs_bindgen_c423b328e3f93e9f =
  RIP.fromFFIType hs_bindgen_c423b328e3f93e9f_base

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
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr River_decoration_v1)
river_window_v1_get_decoration_below =
  hs_bindgen_c423b328e3f93e9f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_resize_start@
foreign import ccall safe "hs_bindgen_cb866c21248ff5af" hs_bindgen_cb866c21248ff5af_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_resize_start@
hs_bindgen_cb866c21248ff5af ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_cb866c21248ff5af =
  RIP.fromFFIType hs_bindgen_cb866c21248ff5af_base

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
  hs_bindgen_cb866c21248ff5af

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_resize_end@
foreign import ccall safe "hs_bindgen_dac1c091078692fb" hs_bindgen_dac1c091078692fb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_resize_end@
hs_bindgen_dac1c091078692fb ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_dac1c091078692fb =
  RIP.fromFFIType hs_bindgen_dac1c091078692fb_base

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
  hs_bindgen_dac1c091078692fb

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_capabilities@
foreign import ccall safe "hs_bindgen_3f2536117d888347" hs_bindgen_3f2536117d888347_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_capabilities@
hs_bindgen_3f2536117d888347 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_3f2536117d888347 =
  RIP.fromFFIType hs_bindgen_3f2536117d888347_base

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
  hs_bindgen_3f2536117d888347

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_maximized@
foreign import ccall safe "hs_bindgen_6ca2d09111716aae" hs_bindgen_6ca2d09111716aae_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_maximized@
hs_bindgen_6ca2d09111716aae ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_6ca2d09111716aae =
  RIP.fromFFIType hs_bindgen_6ca2d09111716aae_base

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
  hs_bindgen_6ca2d09111716aae

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_unmaximized@
foreign import ccall safe "hs_bindgen_12b029dccebbad7f" hs_bindgen_12b029dccebbad7f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_unmaximized@
hs_bindgen_12b029dccebbad7f ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_12b029dccebbad7f =
  RIP.fromFFIType hs_bindgen_12b029dccebbad7f_base

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
  hs_bindgen_12b029dccebbad7f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_fullscreen@
foreign import ccall safe "hs_bindgen_3850b233234ee09a" hs_bindgen_3850b233234ee09a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_fullscreen@
hs_bindgen_3850b233234ee09a ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_3850b233234ee09a =
  RIP.fromFFIType hs_bindgen_3850b233234ee09a_base

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
  hs_bindgen_3850b233234ee09a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_not_fullscreen@
foreign import ccall safe "hs_bindgen_2219265bd9c108da" hs_bindgen_2219265bd9c108da_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_inform_not_fullscreen@
hs_bindgen_2219265bd9c108da ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_2219265bd9c108da =
  RIP.fromFFIType hs_bindgen_2219265bd9c108da_base

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
  hs_bindgen_2219265bd9c108da

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_fullscreen@
foreign import ccall safe "hs_bindgen_0a28ba7bf634ba17" hs_bindgen_0a28ba7bf634ba17_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_fullscreen@
hs_bindgen_0a28ba7bf634ba17 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr River_output_v1
  -> IO ()
hs_bindgen_0a28ba7bf634ba17 =
  RIP.fromFFIType hs_bindgen_0a28ba7bf634ba17_base

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
  hs_bindgen_0a28ba7bf634ba17

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_exit_fullscreen@
foreign import ccall safe "hs_bindgen_ca97757567d4326e" hs_bindgen_ca97757567d4326e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_exit_fullscreen@
hs_bindgen_ca97757567d4326e ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_ca97757567d4326e =
  RIP.fromFFIType hs_bindgen_ca97757567d4326e_base

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
  hs_bindgen_ca97757567d4326e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_clip_box@
foreign import ccall safe "hs_bindgen_3b12e900c90be7bf" hs_bindgen_3b12e900c90be7bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_clip_box@
hs_bindgen_3b12e900c90be7bf ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_3b12e900c90be7bf =
  RIP.fromFFIType hs_bindgen_3b12e900c90be7bf_base

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
  hs_bindgen_3b12e900c90be7bf

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_content_clip_box@
foreign import ccall safe "hs_bindgen_ed12b3b13a8d3964" hs_bindgen_ed12b3b13a8d3964_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_content_clip_box@
hs_bindgen_ed12b3b13a8d3964 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_ed12b3b13a8d3964 =
  RIP.fromFFIType hs_bindgen_ed12b3b13a8d3964_base

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
  hs_bindgen_ed12b3b13a8d3964

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_dimension_bounds@
foreign import ccall safe "hs_bindgen_d8991446a20fa848" hs_bindgen_d8991446a20fa848_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_window_v1_set_dimension_bounds@
hs_bindgen_d8991446a20fa848 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_d8991446a20fa848 =
  RIP.fromFFIType hs_bindgen_d8991446a20fa848_base

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
  hs_bindgen_d8991446a20fa848

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_set_user_data@
foreign import ccall safe "hs_bindgen_93ec3d920c34cb58" hs_bindgen_93ec3d920c34cb58_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_set_user_data@
hs_bindgen_93ec3d920c34cb58 ::
     RIP.Ptr River_decoration_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_93ec3d920c34cb58 =
  RIP.fromFFIType hs_bindgen_93ec3d920c34cb58_base

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
  hs_bindgen_93ec3d920c34cb58

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_get_user_data@
foreign import ccall safe "hs_bindgen_ab3965ce4fde5491" hs_bindgen_ab3965ce4fde5491_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_get_user_data@
hs_bindgen_ab3965ce4fde5491 ::
     RIP.Ptr River_decoration_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ab3965ce4fde5491 =
  RIP.fromFFIType hs_bindgen_ab3965ce4fde5491_base

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
  hs_bindgen_ab3965ce4fde5491

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_get_version@
foreign import ccall safe "hs_bindgen_179a22d4768515b7" hs_bindgen_179a22d4768515b7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_get_version@
hs_bindgen_179a22d4768515b7 ::
     RIP.Ptr River_decoration_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_179a22d4768515b7 =
  RIP.fromFFIType hs_bindgen_179a22d4768515b7_base

{-| __C declaration:__ @river_decoration_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2112:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_version ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_decoration_v1_get_version =
  hs_bindgen_179a22d4768515b7

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_destroy@
foreign import ccall safe "hs_bindgen_c65fb82dca5e273f" hs_bindgen_c65fb82dca5e273f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_destroy@
hs_bindgen_c65fb82dca5e273f ::
     RIP.Ptr River_decoration_v1
  -> IO ()
hs_bindgen_c65fb82dca5e273f =
  RIP.fromFFIType hs_bindgen_c65fb82dca5e273f_base

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
  hs_bindgen_c65fb82dca5e273f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_set_offset@
foreign import ccall safe "hs_bindgen_2a283b399508ae78" hs_bindgen_2a283b399508ae78_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_set_offset@
hs_bindgen_2a283b399508ae78 ::
     RIP.Ptr River_decoration_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_2a283b399508ae78 =
  RIP.fromFFIType hs_bindgen_2a283b399508ae78_base

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
  hs_bindgen_2a283b399508ae78

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_sync_next_commit@
foreign import ccall safe "hs_bindgen_5c0886bd425534bf" hs_bindgen_5c0886bd425534bf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_decoration_v1_sync_next_commit@
hs_bindgen_5c0886bd425534bf ::
     RIP.Ptr River_decoration_v1
  -> IO ()
hs_bindgen_5c0886bd425534bf =
  RIP.fromFFIType hs_bindgen_5c0886bd425534bf_base

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
  hs_bindgen_5c0886bd425534bf

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_set_user_data@
foreign import ccall safe "hs_bindgen_b4093a38c76d99c6" hs_bindgen_b4093a38c76d99c6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_set_user_data@
hs_bindgen_b4093a38c76d99c6 ::
     RIP.Ptr River_shell_surface_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b4093a38c76d99c6 =
  RIP.fromFFIType hs_bindgen_b4093a38c76d99c6_base

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
  hs_bindgen_b4093a38c76d99c6

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_get_user_data@
foreign import ccall safe "hs_bindgen_70c8a0991ada3605" hs_bindgen_70c8a0991ada3605_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_get_user_data@
hs_bindgen_70c8a0991ada3605 ::
     RIP.Ptr River_shell_surface_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_70c8a0991ada3605 =
  RIP.fromFFIType hs_bindgen_70c8a0991ada3605_base

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
  hs_bindgen_70c8a0991ada3605

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_get_version@
foreign import ccall safe "hs_bindgen_a4d18e4d52fba081" hs_bindgen_a4d18e4d52fba081_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_get_version@
hs_bindgen_a4d18e4d52fba081 ::
     RIP.Ptr River_shell_surface_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a4d18e4d52fba081 =
  RIP.fromFFIType hs_bindgen_a4d18e4d52fba081_base

{-| __C declaration:__ @river_shell_surface_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2217:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_version ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_shell_surface_v1_get_version =
  hs_bindgen_a4d18e4d52fba081

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_destroy@
foreign import ccall safe "hs_bindgen_8dfbfc8fae2817e9" hs_bindgen_8dfbfc8fae2817e9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_destroy@
hs_bindgen_8dfbfc8fae2817e9 ::
     RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_8dfbfc8fae2817e9 =
  RIP.fromFFIType hs_bindgen_8dfbfc8fae2817e9_base

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
  hs_bindgen_8dfbfc8fae2817e9

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_get_node@
foreign import ccall safe "hs_bindgen_9b1adbb2e4345357" hs_bindgen_9b1adbb2e4345357_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_get_node@
hs_bindgen_9b1adbb2e4345357 ::
     RIP.Ptr River_shell_surface_v1
  -> IO (RIP.Ptr River_node_v1)
hs_bindgen_9b1adbb2e4345357 =
  RIP.fromFFIType hs_bindgen_9b1adbb2e4345357_base

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
  hs_bindgen_9b1adbb2e4345357

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_sync_next_commit@
foreign import ccall safe "hs_bindgen_90bc0ba60402e551" hs_bindgen_90bc0ba60402e551_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_shell_surface_v1_sync_next_commit@
hs_bindgen_90bc0ba60402e551 ::
     RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_90bc0ba60402e551 =
  RIP.fromFFIType hs_bindgen_90bc0ba60402e551_base

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
  hs_bindgen_90bc0ba60402e551

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_set_user_data@
foreign import ccall safe "hs_bindgen_6ac3a259092f6e13" hs_bindgen_6ac3a259092f6e13_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_set_user_data@
hs_bindgen_6ac3a259092f6e13 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6ac3a259092f6e13 =
  RIP.fromFFIType hs_bindgen_6ac3a259092f6e13_base

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
  hs_bindgen_6ac3a259092f6e13

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_get_user_data@
foreign import ccall safe "hs_bindgen_f905bcda3d6d36e0" hs_bindgen_f905bcda3d6d36e0_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_get_user_data@
hs_bindgen_f905bcda3d6d36e0 ::
     RIP.Ptr River_node_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f905bcda3d6d36e0 =
  RIP.fromFFIType hs_bindgen_f905bcda3d6d36e0_base

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
  hs_bindgen_f905bcda3d6d36e0

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_get_version@
foreign import ccall safe "hs_bindgen_b4cd3ca6c48a2b32" hs_bindgen_b4cd3ca6c48a2b32_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_get_version@
hs_bindgen_b4cd3ca6c48a2b32 ::
     RIP.Ptr River_node_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b4cd3ca6c48a2b32 =
  RIP.fromFFIType hs_bindgen_b4cd3ca6c48a2b32_base

{-| __C declaration:__ @river_node_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2323:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_version ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_node_v1_get_version =
  hs_bindgen_b4cd3ca6c48a2b32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_destroy@
foreign import ccall safe "hs_bindgen_8e0f4a87ca201794" hs_bindgen_8e0f4a87ca201794_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_destroy@
hs_bindgen_8e0f4a87ca201794 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_8e0f4a87ca201794 =
  RIP.fromFFIType hs_bindgen_8e0f4a87ca201794_base

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
river_node_v1_destroy = hs_bindgen_8e0f4a87ca201794

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_set_position@
foreign import ccall safe "hs_bindgen_6f8a92c43136bc29" hs_bindgen_6f8a92c43136bc29_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_set_position@
hs_bindgen_6f8a92c43136bc29 ::
     RIP.Ptr River_node_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_6f8a92c43136bc29 =
  RIP.fromFFIType hs_bindgen_6f8a92c43136bc29_base

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
  hs_bindgen_6f8a92c43136bc29

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_place_top@
foreign import ccall safe "hs_bindgen_d6f32f3b91f966a1" hs_bindgen_d6f32f3b91f966a1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_place_top@
hs_bindgen_d6f32f3b91f966a1 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_d6f32f3b91f966a1 =
  RIP.fromFFIType hs_bindgen_d6f32f3b91f966a1_base

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
river_node_v1_place_top = hs_bindgen_d6f32f3b91f966a1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_place_bottom@
foreign import ccall safe "hs_bindgen_9405b95504f18dc0" hs_bindgen_9405b95504f18dc0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_place_bottom@
hs_bindgen_9405b95504f18dc0 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_9405b95504f18dc0 =
  RIP.fromFFIType hs_bindgen_9405b95504f18dc0_base

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
  hs_bindgen_9405b95504f18dc0

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_place_above@
foreign import ccall safe "hs_bindgen_4e6d34e8c06a9af1" hs_bindgen_4e6d34e8c06a9af1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_place_above@
hs_bindgen_4e6d34e8c06a9af1 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_4e6d34e8c06a9af1 =
  RIP.fromFFIType hs_bindgen_4e6d34e8c06a9af1_base

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
  hs_bindgen_4e6d34e8c06a9af1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_place_below@
foreign import ccall safe "hs_bindgen_1d44d692b44fd84d" hs_bindgen_1d44d692b44fd84d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_node_v1_place_below@
hs_bindgen_1d44d692b44fd84d ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_1d44d692b44fd84d =
  RIP.fromFFIType hs_bindgen_1d44d692b44fd84d_base

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
  hs_bindgen_1d44d692b44fd84d

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_add_listener@
foreign import ccall safe "hs_bindgen_72bc304ec807828c" hs_bindgen_72bc304ec807828c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_add_listener@
hs_bindgen_72bc304ec807828c ::
     RIP.Ptr River_output_v1
  -> PtrConst.PtrConst River_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_72bc304ec807828c =
  RIP.fromFFIType hs_bindgen_72bc304ec807828c_base

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
  hs_bindgen_72bc304ec807828c

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_set_user_data@
foreign import ccall safe "hs_bindgen_c48096744bdf06f6" hs_bindgen_c48096744bdf06f6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_set_user_data@
hs_bindgen_c48096744bdf06f6 ::
     RIP.Ptr River_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c48096744bdf06f6 =
  RIP.fromFFIType hs_bindgen_c48096744bdf06f6_base

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
  hs_bindgen_c48096744bdf06f6

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_get_user_data@
foreign import ccall safe "hs_bindgen_6db08467b1b54e90" hs_bindgen_6db08467b1b54e90_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_get_user_data@
hs_bindgen_6db08467b1b54e90 ::
     RIP.Ptr River_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_6db08467b1b54e90 =
  RIP.fromFFIType hs_bindgen_6db08467b1b54e90_base

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
  hs_bindgen_6db08467b1b54e90

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_get_version@
foreign import ccall safe "hs_bindgen_18213cdac25938f7" hs_bindgen_18213cdac25938f7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_get_version@
hs_bindgen_18213cdac25938f7 ::
     RIP.Ptr River_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_18213cdac25938f7 =
  RIP.fromFFIType hs_bindgen_18213cdac25938f7_base

{-| __C declaration:__ @river_output_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2624:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_version ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_output_v1_get_version =
  hs_bindgen_18213cdac25938f7

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_destroy@
foreign import ccall safe "hs_bindgen_bf5402b04e381035" hs_bindgen_bf5402b04e381035_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_destroy@
hs_bindgen_bf5402b04e381035 ::
     RIP.Ptr River_output_v1
  -> IO ()
hs_bindgen_bf5402b04e381035 =
  RIP.fromFFIType hs_bindgen_bf5402b04e381035_base

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
river_output_v1_destroy = hs_bindgen_bf5402b04e381035

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_set_presentation_mode@
foreign import ccall safe "hs_bindgen_1508fddeba221eb7" hs_bindgen_1508fddeba221eb7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_output_v1_set_presentation_mode@
hs_bindgen_1508fddeba221eb7 ::
     RIP.Ptr River_output_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_1508fddeba221eb7 =
  RIP.fromFFIType hs_bindgen_1508fddeba221eb7_base

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
  hs_bindgen_1508fddeba221eb7

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_cc8aecb46e943f55" hs_bindgen_cc8aecb46e943f55_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_add_listener@
hs_bindgen_cc8aecb46e943f55 ::
     RIP.Ptr River_seat_v1
  -> PtrConst.PtrConst River_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_cc8aecb46e943f55 =
  RIP.fromFFIType hs_bindgen_cc8aecb46e943f55_base

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
  hs_bindgen_cc8aecb46e943f55

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_be045e74c0e6b556" hs_bindgen_be045e74c0e6b556_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_set_user_data@
hs_bindgen_be045e74c0e6b556 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_be045e74c0e6b556 =
  RIP.fromFFIType hs_bindgen_be045e74c0e6b556_base

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
  hs_bindgen_be045e74c0e6b556

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_bd027a37ebf85c11" hs_bindgen_bd027a37ebf85c11_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_get_user_data@
hs_bindgen_bd027a37ebf85c11 ::
     RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_bd027a37ebf85c11 =
  RIP.fromFFIType hs_bindgen_bd027a37ebf85c11_base

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
  hs_bindgen_bd027a37ebf85c11

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_03ee7a127b98fd5e" hs_bindgen_03ee7a127b98fd5e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_get_version@
hs_bindgen_03ee7a127b98fd5e ::
     RIP.Ptr River_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_03ee7a127b98fd5e =
  RIP.fromFFIType hs_bindgen_03ee7a127b98fd5e_base

{-| __C declaration:__ @river_seat_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2991:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_version ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_seat_v1_get_version =
  hs_bindgen_03ee7a127b98fd5e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_3ee9a2fd3c1686bd" hs_bindgen_3ee9a2fd3c1686bd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_destroy@
hs_bindgen_3ee9a2fd3c1686bd ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_3ee9a2fd3c1686bd =
  RIP.fromFFIType hs_bindgen_3ee9a2fd3c1686bd_base

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
river_seat_v1_destroy = hs_bindgen_3ee9a2fd3c1686bd

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_focus_window@
foreign import ccall safe "hs_bindgen_88c120b012a596f9" hs_bindgen_88c120b012a596f9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_focus_window@
hs_bindgen_88c120b012a596f9 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_88c120b012a596f9 =
  RIP.fromFFIType hs_bindgen_88c120b012a596f9_base

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
  hs_bindgen_88c120b012a596f9

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_focus_shell_surface@
foreign import ccall safe "hs_bindgen_145f114775d8d1b1" hs_bindgen_145f114775d8d1b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_focus_shell_surface@
hs_bindgen_145f114775d8d1b1 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_145f114775d8d1b1 =
  RIP.fromFFIType hs_bindgen_145f114775d8d1b1_base

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
  hs_bindgen_145f114775d8d1b1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_clear_focus@
foreign import ccall safe "hs_bindgen_0e93f481b919f55a" hs_bindgen_0e93f481b919f55a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_clear_focus@
hs_bindgen_0e93f481b919f55a ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_0e93f481b919f55a =
  RIP.fromFFIType hs_bindgen_0e93f481b919f55a_base

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
  hs_bindgen_0e93f481b919f55a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_op_start_pointer@
foreign import ccall safe "hs_bindgen_c71a12899e9735bd" hs_bindgen_c71a12899e9735bd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_op_start_pointer@
hs_bindgen_c71a12899e9735bd ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_c71a12899e9735bd =
  RIP.fromFFIType hs_bindgen_c71a12899e9735bd_base

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
  hs_bindgen_c71a12899e9735bd

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_op_end@
foreign import ccall safe "hs_bindgen_07d8309d82be68dd" hs_bindgen_07d8309d82be68dd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_op_end@
hs_bindgen_07d8309d82be68dd ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_07d8309d82be68dd =
  RIP.fromFFIType hs_bindgen_07d8309d82be68dd_base

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
river_seat_v1_op_end = hs_bindgen_07d8309d82be68dd

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_get_pointer_binding@
foreign import ccall safe "hs_bindgen_90bdd43f2dd8badd" hs_bindgen_90bdd43f2dd8badd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_get_pointer_binding@
hs_bindgen_90bdd43f2dd8badd ::
     RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_pointer_binding_v1)
hs_bindgen_90bdd43f2dd8badd =
  RIP.fromFFIType hs_bindgen_90bdd43f2dd8badd_base

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
  hs_bindgen_90bdd43f2dd8badd

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_set_xcursor_theme@
foreign import ccall safe "hs_bindgen_58c11449c85d661a" hs_bindgen_58c11449c85d661a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_set_xcursor_theme@
hs_bindgen_58c11449c85d661a ::
     RIP.Ptr River_seat_v1
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_58c11449c85d661a =
  RIP.fromFFIType hs_bindgen_58c11449c85d661a_base

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
  hs_bindgen_58c11449c85d661a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_pointer_warp@
foreign import ccall safe "hs_bindgen_7d0af1c5bbd184b8" hs_bindgen_7d0af1c5bbd184b8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_seat_v1_pointer_warp@
hs_bindgen_7d0af1c5bbd184b8 ::
     RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_7d0af1c5bbd184b8 =
  RIP.fromFFIType hs_bindgen_7d0af1c5bbd184b8_base

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
  hs_bindgen_7d0af1c5bbd184b8

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_add_listener@
foreign import ccall safe "hs_bindgen_085b3ff92617def4" hs_bindgen_085b3ff92617def4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_add_listener@
hs_bindgen_085b3ff92617def4 ::
     RIP.Ptr River_pointer_binding_v1
  -> PtrConst.PtrConst River_pointer_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_085b3ff92617def4 =
  RIP.fromFFIType hs_bindgen_085b3ff92617def4_base

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
  hs_bindgen_085b3ff92617def4

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_set_user_data@
foreign import ccall safe "hs_bindgen_9f451715747e97e9" hs_bindgen_9f451715747e97e9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_set_user_data@
hs_bindgen_9f451715747e97e9 ::
     RIP.Ptr River_pointer_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9f451715747e97e9 =
  RIP.fromFFIType hs_bindgen_9f451715747e97e9_base

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
  hs_bindgen_9f451715747e97e9

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_get_user_data@
foreign import ccall safe "hs_bindgen_0a1223a2725a3a80" hs_bindgen_0a1223a2725a3a80_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_get_user_data@
hs_bindgen_0a1223a2725a3a80 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0a1223a2725a3a80 =
  RIP.fromFFIType hs_bindgen_0a1223a2725a3a80_base

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
  hs_bindgen_0a1223a2725a3a80

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_get_version@
foreign import ccall safe "hs_bindgen_5c5975ad34ce4ffb" hs_bindgen_5c5975ad34ce4ffb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_get_version@
hs_bindgen_5c5975ad34ce4ffb ::
     RIP.Ptr River_pointer_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5c5975ad34ce4ffb =
  RIP.fromFFIType hs_bindgen_5c5975ad34ce4ffb_base

{-| __C declaration:__ @river_pointer_binding_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 3268:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_version ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_pointer_binding_v1_get_version =
  hs_bindgen_5c5975ad34ce4ffb

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_destroy@
foreign import ccall safe "hs_bindgen_667e07d3e6fa9940" hs_bindgen_667e07d3e6fa9940_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_destroy@
hs_bindgen_667e07d3e6fa9940 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_667e07d3e6fa9940 =
  RIP.fromFFIType hs_bindgen_667e07d3e6fa9940_base

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
  hs_bindgen_667e07d3e6fa9940

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_enable@
foreign import ccall safe "hs_bindgen_d9c9c1781a86422b" hs_bindgen_d9c9c1781a86422b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_enable@
hs_bindgen_d9c9c1781a86422b ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_d9c9c1781a86422b =
  RIP.fromFFIType hs_bindgen_d9c9c1781a86422b_base

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
  hs_bindgen_d9c9c1781a86422b

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_disable@
foreign import ccall safe "hs_bindgen_2030bf6a52464d20" hs_bindgen_2030bf6a52464d20_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Safe_river_pointer_binding_v1_disable@
hs_bindgen_2030bf6a52464d20 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_2030bf6a52464d20 =
  RIP.fromFFIType hs_bindgen_2030bf6a52464d20_base

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
  hs_bindgen_2030bf6a52464d20

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.WindowManagementV1.FunPtr
    ( Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_add_listener
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_set_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_get_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_get_version
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_stop
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_destroy
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_manage_finish
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_manage_dirty
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_render_finish
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_get_shell_surface
    , Generated.River.WindowManagementV1.FunPtr.river_window_manager_v1_exit_session
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_add_listener
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_set_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_get_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_get_version
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_destroy
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_close
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_get_node
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_propose_dimensions
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_hide
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_show
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_use_csd
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_use_ssd
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_set_borders
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_set_tiled
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_get_decoration_above
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_get_decoration_below
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_inform_resize_start
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_inform_resize_end
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_set_capabilities
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_inform_maximized
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_inform_unmaximized
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_inform_fullscreen
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_inform_not_fullscreen
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_fullscreen
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_exit_fullscreen
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_set_clip_box
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_set_content_clip_box
    , Generated.River.WindowManagementV1.FunPtr.river_window_v1_set_dimension_bounds
    , Generated.River.WindowManagementV1.FunPtr.river_decoration_v1_set_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_decoration_v1_get_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_decoration_v1_get_version
    , Generated.River.WindowManagementV1.FunPtr.river_decoration_v1_destroy
    , Generated.River.WindowManagementV1.FunPtr.river_decoration_v1_set_offset
    , Generated.River.WindowManagementV1.FunPtr.river_decoration_v1_sync_next_commit
    , Generated.River.WindowManagementV1.FunPtr.river_shell_surface_v1_set_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_shell_surface_v1_get_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_shell_surface_v1_get_version
    , Generated.River.WindowManagementV1.FunPtr.river_shell_surface_v1_destroy
    , Generated.River.WindowManagementV1.FunPtr.river_shell_surface_v1_get_node
    , Generated.River.WindowManagementV1.FunPtr.river_shell_surface_v1_sync_next_commit
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_set_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_get_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_get_version
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_destroy
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_set_position
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_place_top
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_place_bottom
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_place_above
    , Generated.River.WindowManagementV1.FunPtr.river_node_v1_place_below
    , Generated.River.WindowManagementV1.FunPtr.river_output_v1_add_listener
    , Generated.River.WindowManagementV1.FunPtr.river_output_v1_set_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_output_v1_get_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_output_v1_get_version
    , Generated.River.WindowManagementV1.FunPtr.river_output_v1_destroy
    , Generated.River.WindowManagementV1.FunPtr.river_output_v1_set_presentation_mode
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_add_listener
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_set_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_get_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_get_version
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_destroy
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_focus_window
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_focus_shell_surface
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_clear_focus
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_op_start_pointer
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_op_end
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_get_pointer_binding
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_set_xcursor_theme
    , Generated.River.WindowManagementV1.FunPtr.river_seat_v1_pointer_warp
    , Generated.River.WindowManagementV1.FunPtr.river_pointer_binding_v1_add_listener
    , Generated.River.WindowManagementV1.FunPtr.river_pointer_binding_v1_set_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_pointer_binding_v1_get_user_data
    , Generated.River.WindowManagementV1.FunPtr.river_pointer_binding_v1_get_version
    , Generated.River.WindowManagementV1.FunPtr.river_pointer_binding_v1_destroy
    , Generated.River.WindowManagementV1.FunPtr.river_pointer_binding_v1_enable
    , Generated.River.WindowManagementV1.FunPtr.river_pointer_binding_v1_disable
    )
  where

import qualified Generated.Wayland.Client
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.WindowManagementV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-window-management-v1-client-protocol.h>"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bd105b0334ac4498 (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct river_window_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_add_listener;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_934f963934b86085 (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_set_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_72177b14923fb83b (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_eec2120cc1d0afb3 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_version;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0cddef1db81a36a1 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_stop;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5718dd140f9379db (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_destroy;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_397cf6178153fea4 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_manage_finish;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_dirty */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_17006e6a5ecc9d0a (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_manage_dirty;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_render_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_42cda47bf713cbb0 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_render_finish;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_shell_surface */"
  , "__attribute__ ((const))"
  , "struct river_shell_surface_v1 *(*hs_bindgen_3fde2cad24a83cf6 (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_shell_surface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_exit_session */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_77294752c12f356f (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_exit_session;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a9a7e2e15aaf67ea (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_window_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_add_listener;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bab46ea4371933d2 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_66790122d7f5e3f7 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7175f8488a40ebdb (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_version;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4ebd03a33113a7ef (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_destroy;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_close */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_202c4578a49deeb0 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_close;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_node */"
  , "__attribute__ ((const))"
  , "struct river_node_v1 *(*hs_bindgen_f35cfc9dc3c52328 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_node;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_propose_dimensions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4c25f0ec48687c1c (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_propose_dimensions;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_hide */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0ff0337cc50d3c35 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_hide;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_show */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1bbf516eb3a49613 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_show;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_use_csd */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_655d924a9a5bdb6d (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_use_csd;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_use_ssd */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_45ff2619e1e4eaeb (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_use_ssd;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_borders */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_79be2d7dd33e6f70 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  int32_t arg3,"
  , "  uint32_t arg4,"
  , "  uint32_t arg5,"
  , "  uint32_t arg6,"
  , "  uint32_t arg7"
  , ")"
  , "{"
  , "  return &river_window_v1_set_borders;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_tiled */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6cc5225e41e807c8 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_tiled;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_above */"
  , "__attribute__ ((const))"
  , "struct river_decoration_v1 *(*hs_bindgen_c253f0c3baa629d4 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_get_decoration_above;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_below */"
  , "__attribute__ ((const))"
  , "struct river_decoration_v1 *(*hs_bindgen_1cc2f3eb906e6bce (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_get_decoration_below;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_start */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_80a63cf1316076b7 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_resize_start;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_end */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_33a35fec3dce1c3a (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_resize_end;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_capabilities */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a99809fd74faf620 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_capabilities;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_maximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f9a6f9adca76ed71 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_maximized;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_unmaximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_548b52c8d2c8f3b8 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_unmaximized;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4b29202051650ebc (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_fullscreen;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_not_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4e2b9ccf0e333243 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_not_fullscreen;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d6583038c47b2d3c (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_fullscreen;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_exit_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_17c96c6e4f248eba (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_exit_fullscreen;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_clip_box */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c5ec12951e8c0d3d (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &river_window_v1_set_clip_box;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_content_clip_box */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e6a5b407e60d52f3 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &river_window_v1_set_content_clip_box;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_dimension_bounds */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8f5d6d73f16d5ffe (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_set_dimension_bounds;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8dadbfc697708e99 (void)) ("
  , "  struct river_decoration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_decoration_v1_set_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_8677e1fc75774766 (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_get_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8ae32a50e736459c (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_get_version;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9012668ba1231fbc (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_destroy;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_set_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_85a1d3b766b97649 (void)) ("
  , "  struct river_decoration_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_decoration_v1_set_offset;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_sync_next_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_09aef2cabbf2e496 (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_sync_next_commit;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_637340ca2405e9ae (void)) ("
  , "  struct river_shell_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_set_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_47e0c5f849aa6f3b (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_5bf7062330f9db8f (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_version;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4cec8b52de2c9e1f (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_destroy;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_node */"
  , "__attribute__ ((const))"
  , "struct river_node_v1 *(*hs_bindgen_7983ba591c32bbb5 (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_node;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_sync_next_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_959ddadb149a9b6f (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_sync_next_commit;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3a1221c3bbf2684e (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_set_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_7b42d0b5100d80c6 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_get_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_3fea393a8d9daf1a (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_get_version;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0f4179852a3ccd36 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_destroy;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_set_position */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c942f09da52504a3 (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_node_v1_set_position;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_top */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cf225841637ae73a (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_place_top;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_bottom */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_95a0ac5877f16cae (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_place_bottom;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_above */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5b1d5fbead8d235f (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_place_above;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_below */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f7ec18909a3f4cd1 (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_place_below;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8ce5f1468c302718 (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  struct river_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_output_v1_add_listener;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_67d5bb3e3a882763 (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_output_v1_set_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_1f80ecb4aeff6715 (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_get_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_323b8d0dca53fd55 (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_get_version;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cbd5d19e2ee6af54 (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_destroy;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_set_presentation_mode */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a2dc6af98fb7330a (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_output_v1_set_presentation_mode;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a93382461e2e21df (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_add_listener;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_36a7a87f14ff59e3 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_set_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f52a3af2317cdb3f (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_134019eadefab583 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_version;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1c70ada60a57998a (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_destroy;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_focus_window */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c5e64d924cd67d90 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_window_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_focus_window;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_focus_shell_surface */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e1b6a51de48b9c8b (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_shell_surface_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_focus_shell_surface;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_clear_focus */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6bdedc1db9f9d64c (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_clear_focus;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_op_start_pointer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8b7ab0fc29f443ef (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_op_start_pointer;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_op_end */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e20fd7a37b77d031 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_op_end;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_pointer_binding */"
  , "__attribute__ ((const))"
  , "struct river_pointer_binding_v1 *(*hs_bindgen_74c667c4df9d2989 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_pointer_binding;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_set_xcursor_theme */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cc900dda00cc7561 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_set_xcursor_theme;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_pointer_warp */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_dfc63eae30cf6771 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_pointer_warp;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e247393001849250 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  struct river_pointer_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_add_listener;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_49c8b53d074824f4 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_set_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_afd3bcc860d069d0 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_get_user_data;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7767bae29484f65b (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_get_version;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_65601e3805362557 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_destroy;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c78ddbd52c8c708f (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_enable;"
  , "}"
  , "/* River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6413557eae13ce5a (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_disable;"
  , "}"
  ]))

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_bd105b0334ac4498" hs_bindgen_bd105b0334ac4498_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_add_listener@
hs_bindgen_bd105b0334ac4498 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (PtrConst.PtrConst River_window_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_bd105b0334ac4498 =
  RIP.fromFFIType hs_bindgen_bd105b0334ac4498_base

{-# NOINLINE river_window_manager_v1_add_listener #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 612:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (PtrConst.PtrConst River_window_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_window_manager_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_bd105b0334ac4498

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_934f963934b86085" hs_bindgen_934f963934b86085_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_set_user_data@
hs_bindgen_934f963934b86085 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_934f963934b86085 =
  RIP.fromFFIType hs_bindgen_934f963934b86085_base

{-# NOINLINE river_window_manager_v1_set_user_data #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 695:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_window_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_934f963934b86085

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_72177b14923fb83b" hs_bindgen_72177b14923fb83b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_user_data@
hs_bindgen_72177b14923fb83b :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_72177b14923fb83b =
  RIP.fromFFIType hs_bindgen_72177b14923fb83b_base

{-# NOINLINE river_window_manager_v1_get_user_data #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 702:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO (RIP.Ptr RIP.Void))
river_window_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_72177b14923fb83b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_eec2120cc1d0afb3" hs_bindgen_eec2120cc1d0afb3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_version@
hs_bindgen_eec2120cc1d0afb3 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_eec2120cc1d0afb3 =
  RIP.fromFFIType hs_bindgen_eec2120cc1d0afb3_base

{-# NOINLINE river_window_manager_v1_get_version #-}
{-| __C declaration:__ @river_window_manager_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 708:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_window_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_eec2120cc1d0afb3

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_0cddef1db81a36a1" hs_bindgen_0cddef1db81a36a1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_stop@
hs_bindgen_0cddef1db81a36a1 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_0cddef1db81a36a1 =
  RIP.fromFFIType hs_bindgen_0cddef1db81a36a1_base

{-# NOINLINE river_window_manager_v1_stop #-}
{-|

  > iface_river_window_manager_v1

  This request indicates that the client no longer wishes to receive events on this object.

  The Wayland protocol is asynchronous, which means the server may send further events until the stop request is processed. The client must wait for a river_window_manager_v1.finished event before destroying this object.

__C declaration:__ @river_window_manager_v1_stop@

__defined at:__ @river-window-management-v1-client-protocol.h 725:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_stop :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ())
river_window_manager_v1_stop =
  RIP.unsafePerformIO hs_bindgen_0cddef1db81a36a1

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_5718dd140f9379db" hs_bindgen_5718dd140f9379db_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_destroy@
hs_bindgen_5718dd140f9379db :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_5718dd140f9379db =
  RIP.fromFFIType hs_bindgen_5718dd140f9379db_base

{-# NOINLINE river_window_manager_v1_destroy #-}
{-|

  > iface_river_window_manager_v1

  This request should be called after the finished event has been received to complete destruction of the object.

  If a client wishes to destroy this object it should send a river_window_manager_v1.stop request and wait for a river_window_manager_v1.finished event. Once the finished event is received it is safe to destroy this object and any other objects created through this interface.

__C declaration:__ @river_window_manager_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 744:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ())
river_window_manager_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_5718dd140f9379db

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_finish@
foreign import ccall unsafe "hs_bindgen_397cf6178153fea4" hs_bindgen_397cf6178153fea4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_finish@
hs_bindgen_397cf6178153fea4 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_397cf6178153fea4 =
  RIP.fromFFIType hs_bindgen_397cf6178153fea4_base

{-# NOINLINE river_window_manager_v1_manage_finish #-}
{-|

  > iface_river_window_manager_v1

  This request indicates that the client has made all changes to window management state it wishes to include in the current manage sequence and that the server should atomically send these state changes to the windows and continue with the manage sequence.

  After sending this request, it is a protocol error for the client to make further changes to window management state until the next manage_start event is received.

  See the description of the river_window_manager_v1 interface for a complete overview of the manage/render sequence loop.

__C declaration:__ @river_window_manager_v1_manage_finish@

__defined at:__ @river-window-management-v1-client-protocol.h 766:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_manage_finish :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ())
river_window_manager_v1_manage_finish =
  RIP.unsafePerformIO hs_bindgen_397cf6178153fea4

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_dirty@
foreign import ccall unsafe "hs_bindgen_17006e6a5ecc9d0a" hs_bindgen_17006e6a5ecc9d0a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_dirty@
hs_bindgen_17006e6a5ecc9d0a :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_17006e6a5ecc9d0a =
  RIP.fromFFIType hs_bindgen_17006e6a5ecc9d0a_base

{-# NOINLINE river_window_manager_v1_manage_dirty #-}
{-|

  > iface_river_window_manager_v1

  This request ensures a manage sequence is started and that a manage_start event is sent by the server. If this request is made during an ongoing manage sequence, a new manage sequence will be started as soon as the current one is completed.

  The client may want to use this request due to an internal state change that the compositor is not aware of (e.g. a dbus event) which should affect window management or rendering state.

__C declaration:__ @river_window_manager_v1_manage_dirty@

__defined at:__ @river-window-management-v1-client-protocol.h 785:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_manage_dirty :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ())
river_window_manager_v1_manage_dirty =
  RIP.unsafePerformIO hs_bindgen_17006e6a5ecc9d0a

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_render_finish@
foreign import ccall unsafe "hs_bindgen_42cda47bf713cbb0" hs_bindgen_42cda47bf713cbb0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_render_finish@
hs_bindgen_42cda47bf713cbb0 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_42cda47bf713cbb0 =
  RIP.fromFFIType hs_bindgen_42cda47bf713cbb0_base

{-# NOINLINE river_window_manager_v1_render_finish #-}
{-|

  > iface_river_window_manager_v1

  This request indicates that the client has made all changes to rendering state it wishes to include in the current manage sequence and that the server should atomically apply and display these state changes to the user.

  After sending this request, it is a protocol error for the client to make further changes to rendering state until the next manage_start or render_start event is received, whichever comes first.

  See the description of the river_window_manager_v1 interface for a complete overview of the manage/render sequence loop.

__C declaration:__ @river_window_manager_v1_render_finish@

__defined at:__ @river-window-management-v1-client-protocol.h 807:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_render_finish :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ())
river_window_manager_v1_render_finish =
  RIP.unsafePerformIO hs_bindgen_42cda47bf713cbb0

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_3fde2cad24a83cf6" hs_bindgen_3fde2cad24a83cf6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_shell_surface@
hs_bindgen_3fde2cad24a83cf6 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> IO (RIP.Ptr River_shell_surface_v1)))
hs_bindgen_3fde2cad24a83cf6 =
  RIP.fromFFIType hs_bindgen_3fde2cad24a83cf6_base

{-# NOINLINE river_window_manager_v1_get_shell_surface #-}
{-|

  > iface_river_window_manager_v1

  Create a new shell surface for window manager UI and assign the river_shell_surface_v1 role to the surface.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_manager_v1_get_shell_surface@

__defined at:__ @river-window-management-v1-client-protocol.h 823:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_shell_surface :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> IO (RIP.Ptr River_shell_surface_v1))
river_window_manager_v1_get_shell_surface =
  RIP.unsafePerformIO hs_bindgen_3fde2cad24a83cf6

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_exit_session@
foreign import ccall unsafe "hs_bindgen_77294752c12f356f" hs_bindgen_77294752c12f356f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_manager_v1_exit_session@
hs_bindgen_77294752c12f356f :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_77294752c12f356f =
  RIP.fromFFIType hs_bindgen_77294752c12f356f_base

{-# NOINLINE river_window_manager_v1_exit_session #-}
{-|

  > iface_river_window_manager_v1

  End the current Wayland session and exit the compositor. All Wayland clients running in the current session, including the window manager, will be disconnected.

  Window managers should only make this request if the user explicitly asks to exit the Wayland session, not for example on normal window manager termination.

__C declaration:__ @river_window_manager_v1_exit_session@

__defined at:__ @river-window-management-v1-client-protocol.h 845:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_exit_session :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ())
river_window_manager_v1_exit_session =
  RIP.unsafePerformIO hs_bindgen_77294752c12f356f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_a9a7e2e15aaf67ea" hs_bindgen_a9a7e2e15aaf67ea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_add_listener@
hs_bindgen_a9a7e2e15aaf67ea :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (PtrConst.PtrConst River_window_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_a9a7e2e15aaf67ea =
  RIP.fromFFIType hs_bindgen_a9a7e2e15aaf67ea_base

{-# NOINLINE river_window_v1_add_listener #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 1285:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (PtrConst.PtrConst River_window_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_window_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_a9a7e2e15aaf67ea

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_bab46ea4371933d2" hs_bindgen_bab46ea4371933d2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_user_data@
hs_bindgen_bab46ea4371933d2 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_bab46ea4371933d2 =
  RIP.fromFFIType hs_bindgen_bab46ea4371933d2_base

{-# NOINLINE river_window_v1_set_user_data #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 1489:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_window_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_bab46ea4371933d2

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_66790122d7f5e3f7" hs_bindgen_66790122d7f5e3f7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_user_data@
hs_bindgen_66790122d7f5e3f7 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_66790122d7f5e3f7 =
  RIP.fromFFIType hs_bindgen_66790122d7f5e3f7_base

{-# NOINLINE river_window_v1_get_user_data #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 1496:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr RIP.Void))
river_window_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_66790122d7f5e3f7

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_version@
foreign import ccall unsafe "hs_bindgen_7175f8488a40ebdb" hs_bindgen_7175f8488a40ebdb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_version@
hs_bindgen_7175f8488a40ebdb :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7175f8488a40ebdb =
  RIP.fromFFIType hs_bindgen_7175f8488a40ebdb_base

{-# NOINLINE river_window_v1_get_version #-}
{-| __C declaration:__ @river_window_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 1502:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_window_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_7175f8488a40ebdb

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_destroy@
foreign import ccall unsafe "hs_bindgen_4ebd03a33113a7ef" hs_bindgen_4ebd03a33113a7ef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_destroy@
hs_bindgen_4ebd03a33113a7ef :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_4ebd03a33113a7ef =
  RIP.fromFFIType hs_bindgen_4ebd03a33113a7ef_base

{-# NOINLINE river_window_v1_destroy #-}
{-|

  > iface_river_window_v1

  This request indicates that the client will no longer use the window object and that it may be safely destroyed.

  This request should be made after the river_window_v1.closed event or river_window_manager_v1.finished is received to complete destruction of the window.

__C declaration:__ @river_window_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 1518:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_4ebd03a33113a7ef

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_close@
foreign import ccall unsafe "hs_bindgen_202c4578a49deeb0" hs_bindgen_202c4578a49deeb0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_close@
hs_bindgen_202c4578a49deeb0 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_202c4578a49deeb0 =
  RIP.fromFFIType hs_bindgen_202c4578a49deeb0_base

{-# NOINLINE river_window_v1_close #-}
{-|

  > iface_river_window_v1

  Request that the window be closed. The window may ignore this request or only close after some delay, perhaps opening a dialog asking the user to save their work or similar.

  The server will send a river_window_v1.closed event if/when the window has been closed.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_close@

__defined at:__ @river-window-management-v1-client-protocol.h 1538:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_close :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_close =
  RIP.unsafePerformIO hs_bindgen_202c4578a49deeb0

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_node@
foreign import ccall unsafe "hs_bindgen_f35cfc9dc3c52328" hs_bindgen_f35cfc9dc3c52328_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_node@
hs_bindgen_f35cfc9dc3c52328 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr River_node_v1)))
hs_bindgen_f35cfc9dc3c52328 =
  RIP.fromFFIType hs_bindgen_f35cfc9dc3c52328_base

{-# NOINLINE river_window_v1_get_node #-}
{-|

  > iface_river_window_v1

  Get the node in the render list corresponding to the window.

  It is a protocol error to make this request more than once for a single window.

__C declaration:__ @river_window_v1_get_node@

__defined at:__ @river-window-management-v1-client-protocol.h 1553:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_node :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr River_node_v1))
river_window_v1_get_node =
  RIP.unsafePerformIO hs_bindgen_f35cfc9dc3c52328

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_propose_dimensions@
foreign import ccall unsafe "hs_bindgen_4c25f0ec48687c1c" hs_bindgen_4c25f0ec48687c1c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_propose_dimensions@
hs_bindgen_4c25f0ec48687c1c :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_4c25f0ec48687c1c =
  RIP.fromFFIType hs_bindgen_4c25f0ec48687c1c_base

{-# NOINLINE river_window_v1_propose_dimensions #-}
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
river_window_v1_propose_dimensions :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_window_v1_propose_dimensions =
  RIP.unsafePerformIO hs_bindgen_4c25f0ec48687c1c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_hide@
foreign import ccall unsafe "hs_bindgen_0ff0337cc50d3c35" hs_bindgen_0ff0337cc50d3c35_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_hide@
hs_bindgen_0ff0337cc50d3c35 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_0ff0337cc50d3c35 =
  RIP.fromFFIType hs_bindgen_0ff0337cc50d3c35_base

{-# NOINLINE river_window_v1_hide #-}
{-|

  > iface_river_window_v1

  Request that the window be hidden. Has no effect if the window is already hidden. Hides any window borders and decorations as well.

  Newly created windows are considered shown unless explicitly hidden with the hide request.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_hide@

__defined at:__ @river-window-management-v1-client-protocol.h 1612:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_hide :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_hide =
  RIP.unsafePerformIO hs_bindgen_0ff0337cc50d3c35

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_show@
foreign import ccall unsafe "hs_bindgen_1bbf516eb3a49613" hs_bindgen_1bbf516eb3a49613_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_show@
hs_bindgen_1bbf516eb3a49613 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_1bbf516eb3a49613 =
  RIP.fromFFIType hs_bindgen_1bbf516eb3a49613_base

{-# NOINLINE river_window_v1_show #-}
{-|

  > iface_river_window_v1

  Request that the window be shown. Has no effect if the window is not hidden. Does not guarantee that the window is visible as it may be completely obscured by other windows placed above it for example.

  Newly created windows are considered shown unless explicitly hidden with the hide request.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_show@

__defined at:__ @river-window-management-v1-client-protocol.h 1632:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_show :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_show =
  RIP.unsafePerformIO hs_bindgen_1bbf516eb3a49613

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_use_csd@
foreign import ccall unsafe "hs_bindgen_655d924a9a5bdb6d" hs_bindgen_655d924a9a5bdb6d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_use_csd@
hs_bindgen_655d924a9a5bdb6d :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_655d924a9a5bdb6d =
  RIP.fromFFIType hs_bindgen_655d924a9a5bdb6d_base

{-# NOINLINE river_window_v1_use_csd #-}
{-|

  > iface_river_window_v1

  Tell the client to use client side decoration and draw its own title bar, borders, etc.

  This is the default if neither this request nor the use_ssd request is ever made.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_use_csd@

__defined at:__ @river-window-management-v1-client-protocol.h 1651:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_use_csd :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_use_csd =
  RIP.unsafePerformIO hs_bindgen_655d924a9a5bdb6d

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_use_ssd@
foreign import ccall unsafe "hs_bindgen_45ff2619e1e4eaeb" hs_bindgen_45ff2619e1e4eaeb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_use_ssd@
hs_bindgen_45ff2619e1e4eaeb :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_45ff2619e1e4eaeb =
  RIP.fromFFIType hs_bindgen_45ff2619e1e4eaeb_base

{-# NOINLINE river_window_v1_use_ssd #-}
{-|

  > iface_river_window_v1

  Tell the client to use server side decoration and not draw any client side decorations.

  This request will have no effect if the client only supports client side decoration, see the decoration_hint event.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_use_ssd@

__defined at:__ @river-window-management-v1-client-protocol.h 1670:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_use_ssd :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_use_ssd =
  RIP.unsafePerformIO hs_bindgen_45ff2619e1e4eaeb

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_borders@
foreign import ccall unsafe "hs_bindgen_79be2d7dd33e6f70" hs_bindgen_79be2d7dd33e6f70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_borders@
hs_bindgen_79be2d7dd33e6f70 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_79be2d7dd33e6f70 =
  RIP.fromFFIType hs_bindgen_79be2d7dd33e6f70_base

{-# NOINLINE river_window_v1_set_borders #-}
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
river_window_v1_set_borders :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
river_window_v1_set_borders =
  RIP.unsafePerformIO hs_bindgen_79be2d7dd33e6f70

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_tiled@
foreign import ccall unsafe "hs_bindgen_6cc5225e41e807c8" hs_bindgen_6cc5225e41e807c8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_tiled@
hs_bindgen_6cc5225e41e807c8 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_6cc5225e41e807c8 =
  RIP.fromFFIType hs_bindgen_6cc5225e41e807c8_base

{-# NOINLINE river_window_v1_set_tiled #-}
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
river_window_v1_set_tiled :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
river_window_v1_set_tiled =
  RIP.unsafePerformIO hs_bindgen_6cc5225e41e807c8

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_above@
foreign import ccall unsafe "hs_bindgen_c253f0c3baa629d4" hs_bindgen_c253f0c3baa629d4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_above@
hs_bindgen_c253f0c3baa629d4 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> IO (RIP.Ptr River_decoration_v1)))
hs_bindgen_c253f0c3baa629d4 =
  RIP.fromFFIType hs_bindgen_c253f0c3baa629d4_base

{-# NOINLINE river_window_v1_get_decoration_above #-}
{-|

  > iface_river_window_v1

  Create a decoration surface and assign the river_decoration_v1 role to the surface. The created decoration is placed above the window in rendering order, see the description of river_decoration_v1.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_v1_get_decoration_above@

__defined at:__ @river-window-management-v1-client-protocol.h 1748:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_decoration_above :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> IO (RIP.Ptr River_decoration_v1))
river_window_v1_get_decoration_above =
  RIP.unsafePerformIO hs_bindgen_c253f0c3baa629d4

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_below@
foreign import ccall unsafe "hs_bindgen_1cc2f3eb906e6bce" hs_bindgen_1cc2f3eb906e6bce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_below@
hs_bindgen_1cc2f3eb906e6bce :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> IO (RIP.Ptr River_decoration_v1)))
hs_bindgen_1cc2f3eb906e6bce =
  RIP.fromFFIType hs_bindgen_1cc2f3eb906e6bce_base

{-# NOINLINE river_window_v1_get_decoration_below #-}
{-|

  > iface_river_window_v1

  Create a decoration surface and assign the river_decoration_v1 role to the surface. The created decoration is placed below the window in rendering order, see the description of river_decoration_v1.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_v1_get_decoration_below@

__defined at:__ @river-window-management-v1-client-protocol.h 1769:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_decoration_below :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> IO (RIP.Ptr River_decoration_v1))
river_window_v1_get_decoration_below =
  RIP.unsafePerformIO hs_bindgen_1cc2f3eb906e6bce

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_start@
foreign import ccall unsafe "hs_bindgen_80a63cf1316076b7" hs_bindgen_80a63cf1316076b7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_start@
hs_bindgen_80a63cf1316076b7 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_80a63cf1316076b7 =
  RIP.fromFFIType hs_bindgen_80a63cf1316076b7_base

{-# NOINLINE river_window_v1_inform_resize_start #-}
{-|

  > iface_river_window_v1

  Inform the window that it is being resized. The window manager should use this request to inform windows that are the target of an interactive resize for example.

  The window manager remains responsible for handling the position and dimensions of the window while it is resizing.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_resize_start@

__defined at:__ @river-window-management-v1-client-protocol.h 1793:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_resize_start :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_inform_resize_start =
  RIP.unsafePerformIO hs_bindgen_80a63cf1316076b7

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_end@
foreign import ccall unsafe "hs_bindgen_33a35fec3dce1c3a" hs_bindgen_33a35fec3dce1c3a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_end@
hs_bindgen_33a35fec3dce1c3a :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_33a35fec3dce1c3a =
  RIP.fromFFIType hs_bindgen_33a35fec3dce1c3a_base

{-# NOINLINE river_window_v1_inform_resize_end #-}
{-|

  > iface_river_window_v1

  Inform the window that it is no longer being resized. The window manager should use this request to inform windows that are the target of an interactive resize that the interactive resize has ended for example.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_resize_end@

__defined at:__ @river-window-management-v1-client-protocol.h 1810:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_resize_end :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_inform_resize_end =
  RIP.unsafePerformIO hs_bindgen_33a35fec3dce1c3a

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_capabilities@
foreign import ccall unsafe "hs_bindgen_a99809fd74faf620" hs_bindgen_a99809fd74faf620_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_capabilities@
hs_bindgen_a99809fd74faf620 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_a99809fd74faf620 =
  RIP.fromFFIType hs_bindgen_a99809fd74faf620_base

{-# NOINLINE river_window_v1_set_capabilities #-}
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
river_window_v1_set_capabilities :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
river_window_v1_set_capabilities =
  RIP.unsafePerformIO hs_bindgen_a99809fd74faf620

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_maximized@
foreign import ccall unsafe "hs_bindgen_f9a6f9adca76ed71" hs_bindgen_f9a6f9adca76ed71_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_maximized@
hs_bindgen_f9a6f9adca76ed71 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_f9a6f9adca76ed71 =
  RIP.fromFFIType hs_bindgen_f9a6f9adca76ed71_base

{-# NOINLINE river_window_v1_inform_maximized #-}
{-|

  > iface_river_window_v1

  Inform the window that it is maximized. The window might use this information to adapt the style of its client-side window decorations for example.

  The window manager remains responsible for handling the position and dimensions of the window while it is maximized.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_maximized@

__defined at:__ @river-window-management-v1-client-protocol.h 1855:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_maximized :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_inform_maximized =
  RIP.unsafePerformIO hs_bindgen_f9a6f9adca76ed71

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_unmaximized@
foreign import ccall unsafe "hs_bindgen_548b52c8d2c8f3b8" hs_bindgen_548b52c8d2c8f3b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_unmaximized@
hs_bindgen_548b52c8d2c8f3b8 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_548b52c8d2c8f3b8 =
  RIP.fromFFIType hs_bindgen_548b52c8d2c8f3b8_base

{-# NOINLINE river_window_v1_inform_unmaximized #-}
{-|

  > iface_river_window_v1

  Inform the window that it is unmaximized. The window might use this information to adapt the style of its client-side window decorations for example.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_unmaximized@

__defined at:__ @river-window-management-v1-client-protocol.h 1872:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_unmaximized :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_inform_unmaximized =
  RIP.unsafePerformIO hs_bindgen_548b52c8d2c8f3b8

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_fullscreen@
foreign import ccall unsafe "hs_bindgen_4b29202051650ebc" hs_bindgen_4b29202051650ebc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_fullscreen@
hs_bindgen_4b29202051650ebc :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_4b29202051650ebc =
  RIP.fromFFIType hs_bindgen_4b29202051650ebc_base

{-# NOINLINE river_window_v1_inform_fullscreen #-}
{-|

  > iface_river_window_v1

  Inform the window that it is fullscreen. The window might use this information to adapt the style of its client-side window decorations for example.

  This request does not affect the size/position of the window or cause it to become the only window rendered, see the river_window_v1.fullscreen and exit_fullscreen requests for that.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_fullscreen@

__defined at:__ @river-window-management-v1-client-protocol.h 1893:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_fullscreen :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_inform_fullscreen =
  RIP.unsafePerformIO hs_bindgen_4b29202051650ebc

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_not_fullscreen@
foreign import ccall unsafe "hs_bindgen_4e2b9ccf0e333243" hs_bindgen_4e2b9ccf0e333243_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_inform_not_fullscreen@
hs_bindgen_4e2b9ccf0e333243 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_4e2b9ccf0e333243 =
  RIP.fromFFIType hs_bindgen_4e2b9ccf0e333243_base

{-# NOINLINE river_window_v1_inform_not_fullscreen #-}
{-|

  > iface_river_window_v1

  Inform the window that it is not fullscreen. The window might use this information to adapt the style of its client-side window decorations for example.

  This request does not affect the size/position of the window or cause it to become the only window rendered, see the river_window_v1.fullscreen and exit_fullscreen requests for that.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_window_v1_inform_not_fullscreen@

__defined at:__ @river-window-management-v1-client-protocol.h 1914:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_inform_not_fullscreen :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_inform_not_fullscreen =
  RIP.unsafePerformIO hs_bindgen_4e2b9ccf0e333243

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_fullscreen@
foreign import ccall unsafe "hs_bindgen_d6583038c47b2d3c" hs_bindgen_d6583038c47b2d3c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_fullscreen@
hs_bindgen_d6583038c47b2d3c :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_d6583038c47b2d3c =
  RIP.fromFFIType hs_bindgen_d6583038c47b2d3c_base

{-# NOINLINE river_window_v1_fullscreen #-}
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
river_window_v1_fullscreen :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ())
river_window_v1_fullscreen =
  RIP.unsafePerformIO hs_bindgen_d6583038c47b2d3c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_exit_fullscreen@
foreign import ccall unsafe "hs_bindgen_17c96c6e4f248eba" hs_bindgen_17c96c6e4f248eba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_exit_fullscreen@
hs_bindgen_17c96c6e4f248eba :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_17c96c6e4f248eba =
  RIP.fromFFIType hs_bindgen_17c96c6e4f248eba_base

{-# NOINLINE river_window_v1_exit_fullscreen #-}
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
river_window_v1_exit_fullscreen :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ())
river_window_v1_exit_fullscreen =
  RIP.unsafePerformIO hs_bindgen_17c96c6e4f248eba

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_clip_box@
foreign import ccall unsafe "hs_bindgen_c5ec12951e8c0d3d" hs_bindgen_c5ec12951e8c0d3d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_clip_box@
hs_bindgen_c5ec12951e8c0d3d :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_c5ec12951e8c0d3d =
  RIP.fromFFIType hs_bindgen_c5ec12951e8c0d3d_base

{-# NOINLINE river_window_v1_set_clip_box #-}
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
river_window_v1_set_clip_box :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_window_v1_set_clip_box =
  RIP.unsafePerformIO hs_bindgen_c5ec12951e8c0d3d

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_content_clip_box@
foreign import ccall unsafe "hs_bindgen_e6a5b407e60d52f3" hs_bindgen_e6a5b407e60d52f3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_content_clip_box@
hs_bindgen_e6a5b407e60d52f3 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_e6a5b407e60d52f3 =
  RIP.fromFFIType hs_bindgen_e6a5b407e60d52f3_base

{-# NOINLINE river_window_v1_set_content_clip_box #-}
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
river_window_v1_set_content_clip_box :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_window_v1_set_content_clip_box =
  RIP.unsafePerformIO hs_bindgen_e6a5b407e60d52f3

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_dimension_bounds@
foreign import ccall unsafe "hs_bindgen_8f5d6d73f16d5ffe" hs_bindgen_8f5d6d73f16d5ffe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_window_v1_set_dimension_bounds@
hs_bindgen_8f5d6d73f16d5ffe :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_8f5d6d73f16d5ffe =
  RIP.fromFFIType hs_bindgen_8f5d6d73f16d5ffe_base

{-# NOINLINE river_window_v1_set_dimension_bounds #-}
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
river_window_v1_set_dimension_bounds :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_window_v1_set_dimension_bounds =
  RIP.unsafePerformIO hs_bindgen_8f5d6d73f16d5ffe

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_8dadbfc697708e99" hs_bindgen_8dadbfc697708e99_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_set_user_data@
hs_bindgen_8dadbfc697708e99 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8dadbfc697708e99 =
  RIP.fromFFIType hs_bindgen_8dadbfc697708e99_base

{-# NOINLINE river_decoration_v1_set_user_data #-}
{-|

  > iface_river_decoration_v1

__C declaration:__ @river_decoration_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2099:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_decoration_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8dadbfc697708e99

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_8677e1fc75774766" hs_bindgen_8677e1fc75774766_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_get_user_data@
hs_bindgen_8677e1fc75774766 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_8677e1fc75774766 =
  RIP.fromFFIType hs_bindgen_8677e1fc75774766_base

{-# NOINLINE river_decoration_v1_get_user_data #-}
{-|

  > iface_river_decoration_v1

__C declaration:__ @river_decoration_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2106:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO (RIP.Ptr RIP.Void))
river_decoration_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_8677e1fc75774766

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8ae32a50e736459c" hs_bindgen_8ae32a50e736459c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_get_version@
hs_bindgen_8ae32a50e736459c :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8ae32a50e736459c =
  RIP.fromFFIType hs_bindgen_8ae32a50e736459c_base

{-# NOINLINE river_decoration_v1_get_version #-}
{-| __C declaration:__ @river_decoration_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2112:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_decoration_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_8ae32a50e736459c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_destroy@
foreign import ccall unsafe "hs_bindgen_9012668ba1231fbc" hs_bindgen_9012668ba1231fbc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_destroy@
hs_bindgen_9012668ba1231fbc :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO ()))
hs_bindgen_9012668ba1231fbc =
  RIP.fromFFIType hs_bindgen_9012668ba1231fbc_base

{-# NOINLINE river_decoration_v1_destroy #-}
{-|

  > iface_river_decoration_v1

  This request indicates that the client will no longer use the decoration object and that it may be safely destroyed.

__C declaration:__ @river_decoration_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 2124:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO ())
river_decoration_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_9012668ba1231fbc

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_set_offset@
foreign import ccall unsafe "hs_bindgen_85a1d3b766b97649" hs_bindgen_85a1d3b766b97649_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_set_offset@
hs_bindgen_85a1d3b766b97649 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_85a1d3b766b97649 =
  RIP.fromFFIType hs_bindgen_85a1d3b766b97649_base

{-# NOINLINE river_decoration_v1_set_offset #-}
{-|

  > iface_river_decoration_v1

  This request sets the offset of the decoration surface from the top left corner of the window.

  If this request is never sent, the x and y offsets are undefined by this protocol and left up to the compositor.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_decoration_v1_set_offset@

__defined at:__ @river-window-management-v1-client-protocol.h 2143:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_set_offset :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_decoration_v1_set_offset =
  RIP.unsafePerformIO hs_bindgen_85a1d3b766b97649

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_sync_next_commit@
foreign import ccall unsafe "hs_bindgen_09aef2cabbf2e496" hs_bindgen_09aef2cabbf2e496_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_decoration_v1_sync_next_commit@
hs_bindgen_09aef2cabbf2e496 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO ()))
hs_bindgen_09aef2cabbf2e496 =
  RIP.fromFFIType hs_bindgen_09aef2cabbf2e496_base

{-# NOINLINE river_decoration_v1_sync_next_commit #-}
{-|

  > iface_river_decoration_v1

  Synchronize application of the next wl_surface.commit request on the decoration surface with rest of the state atomically applied with the next river_window_manager_v1.render_finish request.

  The client must make a wl_surface.commit request on the decoration surface after this request and before the render_finish request, failure to do so is a protocol error.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_decoration_v1_sync_next_commit@

__defined at:__ @river-window-management-v1-client-protocol.h 2164:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_sync_next_commit :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO ())
river_decoration_v1_sync_next_commit =
  RIP.unsafePerformIO hs_bindgen_09aef2cabbf2e496

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_637340ca2405e9ae" hs_bindgen_637340ca2405e9ae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_set_user_data@
hs_bindgen_637340ca2405e9ae :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_637340ca2405e9ae =
  RIP.fromFFIType hs_bindgen_637340ca2405e9ae_base

{-# NOINLINE river_shell_surface_v1_set_user_data #-}
{-|

  > iface_river_shell_surface_v1

__C declaration:__ @river_shell_surface_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2204:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_shell_surface_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_637340ca2405e9ae

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_47e0c5f849aa6f3b" hs_bindgen_47e0c5f849aa6f3b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_user_data@
hs_bindgen_47e0c5f849aa6f3b :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_47e0c5f849aa6f3b =
  RIP.fromFFIType hs_bindgen_47e0c5f849aa6f3b_base

{-# NOINLINE river_shell_surface_v1_get_user_data #-}
{-|

  > iface_river_shell_surface_v1

__C declaration:__ @river_shell_surface_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2211:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr RIP.Void))
river_shell_surface_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_47e0c5f849aa6f3b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_version@
foreign import ccall unsafe "hs_bindgen_5bf7062330f9db8f" hs_bindgen_5bf7062330f9db8f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_version@
hs_bindgen_5bf7062330f9db8f :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_5bf7062330f9db8f =
  RIP.fromFFIType hs_bindgen_5bf7062330f9db8f_base

{-# NOINLINE river_shell_surface_v1_get_version #-}
{-| __C declaration:__ @river_shell_surface_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2217:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_shell_surface_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_5bf7062330f9db8f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_destroy@
foreign import ccall unsafe "hs_bindgen_4cec8b52de2c9e1f" hs_bindgen_4cec8b52de2c9e1f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_destroy@
hs_bindgen_4cec8b52de2c9e1f :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_4cec8b52de2c9e1f =
  RIP.fromFFIType hs_bindgen_4cec8b52de2c9e1f_base

{-# NOINLINE river_shell_surface_v1_destroy #-}
{-|

  > iface_river_shell_surface_v1

  This request indicates that the client will no longer use the shell surface object and that it may be safely destroyed.

__C declaration:__ @river_shell_surface_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 2229:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO ())
river_shell_surface_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_4cec8b52de2c9e1f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_node@
foreign import ccall unsafe "hs_bindgen_7983ba591c32bbb5" hs_bindgen_7983ba591c32bbb5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_node@
hs_bindgen_7983ba591c32bbb5 :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr River_node_v1)))
hs_bindgen_7983ba591c32bbb5 =
  RIP.fromFFIType hs_bindgen_7983ba591c32bbb5_base

{-# NOINLINE river_shell_surface_v1_get_node #-}
{-|

  > iface_river_shell_surface_v1

  Get the node in the render list corresponding to the shell surface.

  It is a protocol error to make this request more than once for a single shell surface.

__C declaration:__ @river_shell_surface_v1_get_node@

__defined at:__ @river-window-management-v1-client-protocol.h 2244:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_node :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr River_node_v1))
river_shell_surface_v1_get_node =
  RIP.unsafePerformIO hs_bindgen_7983ba591c32bbb5

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_sync_next_commit@
foreign import ccall unsafe "hs_bindgen_959ddadb149a9b6f" hs_bindgen_959ddadb149a9b6f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_shell_surface_v1_sync_next_commit@
hs_bindgen_959ddadb149a9b6f :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_959ddadb149a9b6f =
  RIP.fromFFIType hs_bindgen_959ddadb149a9b6f_base

{-# NOINLINE river_shell_surface_v1_sync_next_commit #-}
{-|

  > iface_river_shell_surface_v1

  Synchronize application of the next wl_surface.commit request on the shell surface with rest of the rendering state atomically applied with the next river_window_manager_v1.render_finish request.

  The client must make a wl_surface.commit request on the shell surface after this request and before the render_finish request, failure to do so is a protocol error.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_shell_surface_v1_sync_next_commit@

__defined at:__ @river-window-management-v1-client-protocol.h 2269:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_sync_next_commit :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO ())
river_shell_surface_v1_sync_next_commit =
  RIP.unsafePerformIO hs_bindgen_959ddadb149a9b6f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_3a1221c3bbf2684e" hs_bindgen_3a1221c3bbf2684e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_set_user_data@
hs_bindgen_3a1221c3bbf2684e :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_3a1221c3bbf2684e =
  RIP.fromFFIType hs_bindgen_3a1221c3bbf2684e_base

{-# NOINLINE river_node_v1_set_user_data #-}
{-|

  > iface_river_node_v1

__C declaration:__ @river_node_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2310:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_node_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_3a1221c3bbf2684e

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_7b42d0b5100d80c6" hs_bindgen_7b42d0b5100d80c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_get_user_data@
hs_bindgen_7b42d0b5100d80c6 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_7b42d0b5100d80c6 =
  RIP.fromFFIType hs_bindgen_7b42d0b5100d80c6_base

{-# NOINLINE river_node_v1_get_user_data #-}
{-|

  > iface_river_node_v1

__C declaration:__ @river_node_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2317:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO (RIP.Ptr RIP.Void))
river_node_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_7b42d0b5100d80c6

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_get_version@
foreign import ccall unsafe "hs_bindgen_3fea393a8d9daf1a" hs_bindgen_3fea393a8d9daf1a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_get_version@
hs_bindgen_3fea393a8d9daf1a :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_3fea393a8d9daf1a =
  RIP.fromFFIType hs_bindgen_3fea393a8d9daf1a_base

{-# NOINLINE river_node_v1_get_version #-}
{-| __C declaration:__ @river_node_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2323:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_node_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_3fea393a8d9daf1a

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_destroy@
foreign import ccall unsafe "hs_bindgen_0f4179852a3ccd36" hs_bindgen_0f4179852a3ccd36_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_destroy@
hs_bindgen_0f4179852a3ccd36 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_0f4179852a3ccd36 =
  RIP.fromFFIType hs_bindgen_0f4179852a3ccd36_base

{-# NOINLINE river_node_v1_destroy #-}
{-|

  > iface_river_node_v1

  This request indicates that the client will no longer use the node object and that it may be safely destroyed.

__C declaration:__ @river_node_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 2335:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ())
river_node_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_0f4179852a3ccd36

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_set_position@
foreign import ccall unsafe "hs_bindgen_c942f09da52504a3" hs_bindgen_c942f09da52504a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_set_position@
hs_bindgen_c942f09da52504a3 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_c942f09da52504a3 =
  RIP.fromFFIType hs_bindgen_c942f09da52504a3_base

{-# NOINLINE river_node_v1_set_position #-}
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
river_node_v1_set_position :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_node_v1_set_position =
  RIP.unsafePerformIO hs_bindgen_c942f09da52504a3

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_top@
foreign import ccall unsafe "hs_bindgen_cf225841637ae73a" hs_bindgen_cf225841637ae73a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_top@
hs_bindgen_cf225841637ae73a :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_cf225841637ae73a =
  RIP.fromFFIType hs_bindgen_cf225841637ae73a_base

{-# NOINLINE river_node_v1_place_top #-}
{-|

  > iface_river_node_v1

  This request places the node above all other nodes in the compositor's render list.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_place_top@

__defined at:__ @river-window-management-v1-client-protocol.h 2374:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_place_top :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ())
river_node_v1_place_top =
  RIP.unsafePerformIO hs_bindgen_cf225841637ae73a

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_bottom@
foreign import ccall unsafe "hs_bindgen_95a0ac5877f16cae" hs_bindgen_95a0ac5877f16cae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_bottom@
hs_bindgen_95a0ac5877f16cae :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_95a0ac5877f16cae =
  RIP.fromFFIType hs_bindgen_95a0ac5877f16cae_base

{-# NOINLINE river_node_v1_place_bottom #-}
{-|

  > iface_river_node_v1

  This request places the node below all other nodes in the compositor's render list.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_place_bottom@

__defined at:__ @river-window-management-v1-client-protocol.h 2390:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_place_bottom :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ())
river_node_v1_place_bottom =
  RIP.unsafePerformIO hs_bindgen_95a0ac5877f16cae

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_above@
foreign import ccall unsafe "hs_bindgen_5b1d5fbead8d235f" hs_bindgen_5b1d5fbead8d235f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_above@
hs_bindgen_5b1d5fbead8d235f :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_5b1d5fbead8d235f =
  RIP.fromFFIType hs_bindgen_5b1d5fbead8d235f_base

{-# NOINLINE river_node_v1_place_above #-}
{-|

  > iface_river_node_v1

  This request places the node directly above another node in the compositor's render list.

  Attempting to place a node above itself has no effect.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_place_above@

__defined at:__ @river-window-management-v1-client-protocol.h 2408:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_place_above :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr River_node_v1) -> IO ())
river_node_v1_place_above =
  RIP.unsafePerformIO hs_bindgen_5b1d5fbead8d235f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_below@
foreign import ccall unsafe "hs_bindgen_f7ec18909a3f4cd1" hs_bindgen_f7ec18909a3f4cd1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_node_v1_place_below@
hs_bindgen_f7ec18909a3f4cd1 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_f7ec18909a3f4cd1 =
  RIP.fromFFIType hs_bindgen_f7ec18909a3f4cd1_base

{-# NOINLINE river_node_v1_place_below #-}
{-|

  > iface_river_node_v1

  This request places the node directly below another node in the compositor's render list.

  Attempting to place a node below itself has no effect.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_node_v1_place_below@

__defined at:__ @river-window-management-v1-client-protocol.h 2426:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_place_below :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr River_node_v1) -> IO ())
river_node_v1_place_below =
  RIP.unsafePerformIO hs_bindgen_f7ec18909a3f4cd1

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_8ce5f1468c302718" hs_bindgen_8ce5f1468c302718_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_add_listener@
hs_bindgen_8ce5f1468c302718 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> (PtrConst.PtrConst River_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_8ce5f1468c302718 =
  RIP.fromFFIType hs_bindgen_8ce5f1468c302718_base

{-# NOINLINE river_output_v1_add_listener #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2573:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> (PtrConst.PtrConst River_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_output_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_8ce5f1468c302718

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_67d5bb3e3a882763" hs_bindgen_67d5bb3e3a882763_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_set_user_data@
hs_bindgen_67d5bb3e3a882763 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_67d5bb3e3a882763 =
  RIP.fromFFIType hs_bindgen_67d5bb3e3a882763_base

{-# NOINLINE river_output_v1_set_user_data #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2611:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_output_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_67d5bb3e3a882763

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_1f80ecb4aeff6715" hs_bindgen_1f80ecb4aeff6715_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_get_user_data@
hs_bindgen_1f80ecb4aeff6715 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_1f80ecb4aeff6715 =
  RIP.fromFFIType hs_bindgen_1f80ecb4aeff6715_base

{-# NOINLINE river_output_v1_get_user_data #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2618:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO (RIP.Ptr RIP.Void))
river_output_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_1f80ecb4aeff6715

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_323b8d0dca53fd55" hs_bindgen_323b8d0dca53fd55_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_get_version@
hs_bindgen_323b8d0dca53fd55 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_323b8d0dca53fd55 =
  RIP.fromFFIType hs_bindgen_323b8d0dca53fd55_base

{-# NOINLINE river_output_v1_get_version #-}
{-| __C declaration:__ @river_output_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2624:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_output_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_323b8d0dca53fd55

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_cbd5d19e2ee6af54" hs_bindgen_cbd5d19e2ee6af54_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_destroy@
hs_bindgen_cbd5d19e2ee6af54 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_cbd5d19e2ee6af54 =
  RIP.fromFFIType hs_bindgen_cbd5d19e2ee6af54_base

{-# NOINLINE river_output_v1_destroy #-}
{-|

  > iface_river_output_v1

  This request indicates that the client will no longer use the output object and that it may be safely destroyed.

  This request should be made after the river_output_v1.removed event is received to complete destruction of the output.

__C declaration:__ @river_output_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 2639:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO ())
river_output_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_cbd5d19e2ee6af54

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_set_presentation_mode@
foreign import ccall unsafe "hs_bindgen_a2dc6af98fb7330a" hs_bindgen_a2dc6af98fb7330a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_output_v1_set_presentation_mode@
hs_bindgen_a2dc6af98fb7330a :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_a2dc6af98fb7330a =
  RIP.fromFFIType hs_bindgen_a2dc6af98fb7330a_base

{-# NOINLINE river_output_v1_set_presentation_mode #-}
{-|

  > iface_river_output_v1

  Set the preferred presentation mode of the output. The compositor should always respect the preference of the window manager if possible. If this request is never made, the preferred presentation mode is vsync.

  This request modifies rendering state and may only be made as part of a render sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_output_v1_set_presentation_mode@

__defined at:__ @river-window-management-v1-client-protocol.h 2656:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_set_presentation_mode :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
river_output_v1_set_presentation_mode =
  RIP.unsafePerformIO hs_bindgen_a2dc6af98fb7330a

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_a93382461e2e21df" hs_bindgen_a93382461e2e21df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_add_listener@
hs_bindgen_a93382461e2e21df :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst River_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_a93382461e2e21df =
  RIP.fromFFIType hs_bindgen_a93382461e2e21df_base

{-# NOINLINE river_seat_v1_add_listener #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2885:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst River_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_a93382461e2e21df

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_36a7a87f14ff59e3" hs_bindgen_36a7a87f14ff59e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_set_user_data@
hs_bindgen_36a7a87f14ff59e3 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_36a7a87f14ff59e3 =
  RIP.fromFFIType hs_bindgen_36a7a87f14ff59e3_base

{-# NOINLINE river_seat_v1_set_user_data #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2978:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_36a7a87f14ff59e3

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_f52a3af2317cdb3f" hs_bindgen_f52a3af2317cdb3f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_user_data@
hs_bindgen_f52a3af2317cdb3f :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f52a3af2317cdb3f =
  RIP.fromFFIType hs_bindgen_f52a3af2317cdb3f_base

{-# NOINLINE river_seat_v1_get_user_data #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2985:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_f52a3af2317cdb3f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_134019eadefab583" hs_bindgen_134019eadefab583_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_version@
hs_bindgen_134019eadefab583 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_134019eadefab583 =
  RIP.fromFFIType hs_bindgen_134019eadefab583_base

{-# NOINLINE river_seat_v1_get_version #-}
{-| __C declaration:__ @river_seat_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2991:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_134019eadefab583

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_1c70ada60a57998a" hs_bindgen_1c70ada60a57998a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_destroy@
hs_bindgen_1c70ada60a57998a :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_1c70ada60a57998a =
  RIP.fromFFIType hs_bindgen_1c70ada60a57998a_base

{-# NOINLINE river_seat_v1_destroy #-}
{-|

  > iface_river_seat_v1

  This request indicates that the client will no longer use the seat object and that it may be safely destroyed.

  This request should be made after the river_seat_v1.removed event is received to complete destruction of the seat.

__C declaration:__ @river_seat_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 3006:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ())
river_seat_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_1c70ada60a57998a

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_focus_window@
foreign import ccall unsafe "hs_bindgen_c5e64d924cd67d90" hs_bindgen_c5e64d924cd67d90_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_focus_window@
hs_bindgen_c5e64d924cd67d90 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_c5e64d924cd67d90 =
  RIP.fromFFIType hs_bindgen_c5e64d924cd67d90_base

{-# NOINLINE river_seat_v1_focus_window #-}
{-|

  > iface_river_seat_v1

  Request that the compositor send keyboard input to the given window.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_focus_window@

__defined at:__ @river-window-management-v1-client-protocol.h 3021:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_focus_window :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ())
river_seat_v1_focus_window =
  RIP.unsafePerformIO hs_bindgen_c5e64d924cd67d90

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_focus_shell_surface@
foreign import ccall unsafe "hs_bindgen_e1b6a51de48b9c8b" hs_bindgen_e1b6a51de48b9c8b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_focus_shell_surface@
hs_bindgen_e1b6a51de48b9c8b :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_e1b6a51de48b9c8b =
  RIP.fromFFIType hs_bindgen_e1b6a51de48b9c8b_base

{-# NOINLINE river_seat_v1_focus_shell_surface #-}
{-|

  > iface_river_seat_v1

  Request that the compositor send keyboard input to the given shell surface.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_focus_shell_surface@

__defined at:__ @river-window-management-v1-client-protocol.h 3037:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_focus_shell_surface :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ())
river_seat_v1_focus_shell_surface =
  RIP.unsafePerformIO hs_bindgen_e1b6a51de48b9c8b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_clear_focus@
foreign import ccall unsafe "hs_bindgen_6bdedc1db9f9d64c" hs_bindgen_6bdedc1db9f9d64c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_clear_focus@
hs_bindgen_6bdedc1db9f9d64c :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_6bdedc1db9f9d64c =
  RIP.fromFFIType hs_bindgen_6bdedc1db9f9d64c_base

{-# NOINLINE river_seat_v1_clear_focus #-}
{-|

  > iface_river_seat_v1

  Request that the compositor not send keyboard input to any client.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_clear_focus@

__defined at:__ @river-window-management-v1-client-protocol.h 3052:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_clear_focus :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ())
river_seat_v1_clear_focus =
  RIP.unsafePerformIO hs_bindgen_6bdedc1db9f9d64c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_op_start_pointer@
foreign import ccall unsafe "hs_bindgen_8b7ab0fc29f443ef" hs_bindgen_8b7ab0fc29f443ef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_op_start_pointer@
hs_bindgen_8b7ab0fc29f443ef :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_8b7ab0fc29f443ef =
  RIP.fromFFIType hs_bindgen_8b7ab0fc29f443ef_base

{-# NOINLINE river_seat_v1_op_start_pointer #-}
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
river_seat_v1_op_start_pointer :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ())
river_seat_v1_op_start_pointer =
  RIP.unsafePerformIO hs_bindgen_8b7ab0fc29f443ef

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_op_end@
foreign import ccall unsafe "hs_bindgen_e20fd7a37b77d031" hs_bindgen_e20fd7a37b77d031_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_op_end@
hs_bindgen_e20fd7a37b77d031 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_e20fd7a37b77d031 =
  RIP.fromFFIType hs_bindgen_e20fd7a37b77d031_base

{-# NOINLINE river_seat_v1_op_end #-}
{-|

  > iface_river_seat_v1

  End an interactive operation.

  This request is ignored if there is no operation in progress.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_op_end@

__defined at:__ @river-window-management-v1-client-protocol.h 3101:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_op_end :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ())
river_seat_v1_op_end =
  RIP.unsafePerformIO hs_bindgen_e20fd7a37b77d031

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_pointer_binding@
foreign import ccall unsafe "hs_bindgen_74c667c4df9d2989" hs_bindgen_74c667c4df9d2989_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_get_pointer_binding@
hs_bindgen_74c667c4df9d2989 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_pointer_binding_v1)))
hs_bindgen_74c667c4df9d2989 =
  RIP.fromFFIType hs_bindgen_74c667c4df9d2989_base

{-# NOINLINE river_seat_v1_get_pointer_binding #-}
{-|

  > iface_river_seat_v1

  Define a pointer binding in terms of a pointer button, keyboard modifiers, and other configurable properties.

  The button argument is a Linux input event code defined in the linux/input-event-codes.h header file (e.g. BTN_RIGHT).

  The new pointer binding is not enabled until initial configuration is completed and the enable request is made during a manage sequence.

__C declaration:__ @river_seat_v1_get_pointer_binding@

__defined at:__ @river-window-management-v1-client-protocol.h 3120:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_pointer_binding :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_pointer_binding_v1))
river_seat_v1_get_pointer_binding =
  RIP.unsafePerformIO hs_bindgen_74c667c4df9d2989

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_set_xcursor_theme@
foreign import ccall unsafe "hs_bindgen_cc900dda00cc7561" hs_bindgen_cc900dda00cc7561_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_set_xcursor_theme@
hs_bindgen_cc900dda00cc7561 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_cc900dda00cc7561 =
  RIP.fromFFIType hs_bindgen_cc900dda00cc7561_base

{-# NOINLINE river_seat_v1_set_xcursor_theme #-}
{-|

  > iface_river_seat_v1

  Set the XCursor theme for the seat. This theme is used for cursors rendered by the compositor, but not necessarily for cursors rendered by clients.

  Note: The window manager may also wish to set the XCURSOR_THEME and XCURSOR_SIZE environment variable for programs it starts.

__C declaration:__ @river_seat_v1_set_xcursor_theme@

__defined at:__ @river-window-management-v1-client-protocol.h 3141:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_set_xcursor_theme :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
river_seat_v1_set_xcursor_theme =
  RIP.unsafePerformIO hs_bindgen_cc900dda00cc7561

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_pointer_warp@
foreign import ccall unsafe "hs_bindgen_dfc63eae30cf6771" hs_bindgen_dfc63eae30cf6771_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_seat_v1_pointer_warp@
hs_bindgen_dfc63eae30cf6771 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_dfc63eae30cf6771 =
  RIP.fromFFIType hs_bindgen_dfc63eae30cf6771_base

{-# NOINLINE river_seat_v1_pointer_warp #-}
{-|

  > iface_river_seat_v1

  Warp the pointer to the given position in the compositor's logical coordinate space.

  If the given position is outside the bounds of all outputs, the pointer will be warped to the closest point inside an output instead.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_seat_v1_pointer_warp@

__defined at:__ @river-window-management-v1-client-protocol.h 3160:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_pointer_warp :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_seat_v1_pointer_warp =
  RIP.unsafePerformIO hs_bindgen_dfc63eae30cf6771

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_e247393001849250" hs_bindgen_e247393001849250_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_add_listener@
hs_bindgen_e247393001849250 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (PtrConst.PtrConst River_pointer_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_e247393001849250 =
  RIP.fromFFIType hs_bindgen_e247393001849250_base

{-# NOINLINE river_pointer_binding_v1_add_listener #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 3220:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (PtrConst.PtrConst River_pointer_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_pointer_binding_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_e247393001849250

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_49c8b53d074824f4" hs_bindgen_49c8b53d074824f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_set_user_data@
hs_bindgen_49c8b53d074824f4 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_49c8b53d074824f4 =
  RIP.fromFFIType hs_bindgen_49c8b53d074824f4_base

{-# NOINLINE river_pointer_binding_v1_set_user_data #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 3255:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_pointer_binding_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_49c8b53d074824f4

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_afd3bcc860d069d0" hs_bindgen_afd3bcc860d069d0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_user_data@
hs_bindgen_afd3bcc860d069d0 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_afd3bcc860d069d0 =
  RIP.fromFFIType hs_bindgen_afd3bcc860d069d0_base

{-# NOINLINE river_pointer_binding_v1_get_user_data #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 3262:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO (RIP.Ptr RIP.Void))
river_pointer_binding_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_afd3bcc860d069d0

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_7767bae29484f65b" hs_bindgen_7767bae29484f65b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_version@
hs_bindgen_7767bae29484f65b :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7767bae29484f65b =
  RIP.fromFFIType hs_bindgen_7767bae29484f65b_base

{-# NOINLINE river_pointer_binding_v1_get_version #-}
{-| __C declaration:__ @river_pointer_binding_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 3268:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_pointer_binding_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_7767bae29484f65b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_65601e3805362557" hs_bindgen_65601e3805362557_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_destroy@
hs_bindgen_65601e3805362557 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_65601e3805362557 =
  RIP.fromFFIType hs_bindgen_65601e3805362557_base

{-# NOINLINE river_pointer_binding_v1_destroy #-}
{-|

  > iface_river_pointer_binding_v1

  This request indicates that the client will no longer use the pointer binding object and that it may be safely destroyed.

__C declaration:__ @river_pointer_binding_v1_destroy@

__defined at:__ @river-window-management-v1-client-protocol.h 3280:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ())
river_pointer_binding_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_65601e3805362557

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_c78ddbd52c8c708f" hs_bindgen_c78ddbd52c8c708f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_enable@
hs_bindgen_c78ddbd52c8c708f :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_c78ddbd52c8c708f =
  RIP.fromFFIType hs_bindgen_c78ddbd52c8c708f_base

{-# NOINLINE river_pointer_binding_v1_enable #-}
{-|

  > iface_river_pointer_binding_v1

  This request should be made after all initial configuration has been completed and the window manager wishes the pointer binding to be able to be triggered.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_pointer_binding_v1_enable@

__defined at:__ @river-window-management-v1-client-protocol.h 3297:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_enable :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ())
river_pointer_binding_v1_enable =
  RIP.unsafePerformIO hs_bindgen_c78ddbd52c8c708f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_6413557eae13ce5a" hs_bindgen_6413557eae13ce5a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_disable@
hs_bindgen_6413557eae13ce5a :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_6413557eae13ce5a =
  RIP.fromFFIType hs_bindgen_6413557eae13ce5a_base

{-# NOINLINE river_pointer_binding_v1_disable #-}
{-|

  > iface_river_pointer_binding_v1

  This request may be used to temporarily disable the pointer binding. It may be later re-enabled with the enable request.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_pointer_binding_v1_disable@

__defined at:__ @river-window-management-v1-client-protocol.h 3313:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_disable :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ())
river_pointer_binding_v1_disable =
  RIP.unsafePerformIO hs_bindgen_6413557eae13ce5a

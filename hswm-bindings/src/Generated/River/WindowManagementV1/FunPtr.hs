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

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.WindowManagementV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-window-management-v1-client-protocol.h>"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_260b858a9f5cf297 (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct river_window_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_add_listener;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1f044f4409d05546 (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_set_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_355a21107a85a332 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2475d487147093d4 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_version;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9ae8c03fcc22c932 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_stop;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_042ed99400638e6f (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_destroy;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8aa54e206c2f8d8f (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_manage_finish;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_dirty */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8a1c64c9e5c6e961 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_manage_dirty;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_render_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_52ee41b865a6fd39 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_render_finish;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_shell_surface */"
  , "__attribute__ ((const))"
  , "struct river_shell_surface_v1 *(*hs_bindgen_90b770fe18d1786e (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_shell_surface;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_exit_session */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_61be95037a8f4e70 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_exit_session;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_92050af93abc0503 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_window_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_add_listener;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3182bc9478281217 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c144635e6c6d075d (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_0b6f81a030e05781 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_version;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_de78324580ea0146 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_destroy;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_close */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_215c3edddc5b3309 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_close;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_node */"
  , "__attribute__ ((const))"
  , "struct river_node_v1 *(*hs_bindgen_7039f597bf34d0aa (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_node;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_propose_dimensions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f1ef0c52b287d789 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_propose_dimensions;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_hide */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_53705ab509abb7d0 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_hide;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_show */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e0e6ab2e2bb8ec0e (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_show;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_use_csd */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fce1f4d1d669a6d8 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_use_csd;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_use_ssd */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_710ffd02c8f38152 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_use_ssd;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_borders */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b74fe1472efa9ef9 (void)) ("
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
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_tiled */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fdd72f7172b73a1f (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_tiled;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_above */"
  , "__attribute__ ((const))"
  , "struct river_decoration_v1 *(*hs_bindgen_20d6e8c7f5d141df (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_get_decoration_above;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_below */"
  , "__attribute__ ((const))"
  , "struct river_decoration_v1 *(*hs_bindgen_c55bc7d9f3852438 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_get_decoration_below;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_start */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_763e62f565c1eb56 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_resize_start;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_end */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f423598411bbd214 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_resize_end;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_capabilities */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_31a4c4d730da7b83 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_capabilities;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_maximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f8e6c9c9bd023260 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_maximized;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_unmaximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ce67e9ca1cc464e3 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_unmaximized;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_11941507dc22ef68 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_fullscreen;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_not_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9e8ccaf4bbfde3f8 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_not_fullscreen;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_245cb06882ebeb37 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_fullscreen;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_exit_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_885f460e4158a506 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_exit_fullscreen;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_clip_box */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_01a99a063c2ae8fd (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &river_window_v1_set_clip_box;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_content_clip_box */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ac73314ae4ecbfc0 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &river_window_v1_set_content_clip_box;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_dimension_bounds */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8574350bdb858517 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_set_dimension_bounds;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d4a219cdb4d998e0 (void)) ("
  , "  struct river_decoration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_decoration_v1_set_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_3cba4dbab6860065 (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_get_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_e261771b3f9c3509 (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_get_version;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1810611f68eb2c61 (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_destroy;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_set_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a24407cac6cb29d1 (void)) ("
  , "  struct river_decoration_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_decoration_v1_set_offset;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_sync_next_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9e17306666d653e0 (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_sync_next_commit;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_61933ef7a1db28d2 (void)) ("
  , "  struct river_shell_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_set_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_b002f663f44b911e (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_6e692dd59a59c19d (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_version;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4ae20c23c48947ce (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_destroy;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_node */"
  , "__attribute__ ((const))"
  , "struct river_node_v1 *(*hs_bindgen_278fc05cdcef298b (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_node;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_sync_next_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_afaafe9083308b01 (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_sync_next_commit;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8b4f3149f74893fb (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_set_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_ca11d6d1aa9338af (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_get_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_aebddf4852788668 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_get_version;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_00058e19ed494e89 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_destroy;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_set_position */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8735927717c46faf (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_node_v1_set_position;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_top */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_92b4918c7c8c8168 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_place_top;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_bottom */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_14a096550e0fdbb3 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_place_bottom;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_above */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_618142b95fd19e25 (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_place_above;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_below */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_66aa95649707a23b (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_place_below;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_71c5f70658564f46 (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  struct river_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_output_v1_add_listener;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_08c8089bca2d9ef6 (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_output_v1_set_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_67978720df9db53c (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_get_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_884bec6e6f0913ba (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_get_version;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5141a87f5df77a31 (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_destroy;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_set_presentation_mode */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7e32b364d8dab9ad (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_output_v1_set_presentation_mode;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_81729c27be6d66fe (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_add_listener;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4c3ce402697d4ad3 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_set_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_ba6e46d9c5222fa2 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_f3c02620a20c0334 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_version;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_84bda737d8a5d61d (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_destroy;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_focus_window */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e18c6474aaa6e2d9 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_window_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_focus_window;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_focus_shell_surface */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bee3d71ff21fbf10 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_shell_surface_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_focus_shell_surface;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_clear_focus */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d11a811c0bebdf9 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_clear_focus;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_op_start_pointer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4a9aaa027a482629 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_op_start_pointer;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_op_end */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a34dd38ae03c2dab (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_op_end;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_pointer_binding */"
  , "__attribute__ ((const))"
  , "struct river_pointer_binding_v1 *(*hs_bindgen_b76ba03a38e05580 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_pointer_binding;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_set_xcursor_theme */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2731fa9dcf0c584e (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_set_xcursor_theme;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_pointer_warp */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_15768677781d49b7 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_pointer_warp;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_7bd61c7144b41a68 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  struct river_pointer_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_add_listener;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_058cd111dce77ba6 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_set_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_bc6e5d2841b9f574 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_get_user_data;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_561e7879795d3c7e (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_get_version;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e8046eec37126a29 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_destroy;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0a23d64ae69bcd64 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_enable;"
  , "}"
  , "/* hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a03b792044c0aeea (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_disable;"
  , "}"
  ]))

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_260b858a9f5cf297" hs_bindgen_260b858a9f5cf297_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_add_listener@
hs_bindgen_260b858a9f5cf297 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (PtrConst.PtrConst River_window_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_260b858a9f5cf297 =
  RIP.fromFFIType hs_bindgen_260b858a9f5cf297_base

{-# NOINLINE river_window_manager_v1_add_listener #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 612:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (PtrConst.PtrConst River_window_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_window_manager_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_260b858a9f5cf297

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_1f044f4409d05546" hs_bindgen_1f044f4409d05546_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_set_user_data@
hs_bindgen_1f044f4409d05546 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_1f044f4409d05546 =
  RIP.fromFFIType hs_bindgen_1f044f4409d05546_base

{-# NOINLINE river_window_manager_v1_set_user_data #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 695:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_window_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_1f044f4409d05546

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_355a21107a85a332" hs_bindgen_355a21107a85a332_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_user_data@
hs_bindgen_355a21107a85a332 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_355a21107a85a332 =
  RIP.fromFFIType hs_bindgen_355a21107a85a332_base

{-# NOINLINE river_window_manager_v1_get_user_data #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 702:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO (RIP.Ptr RIP.Void))
river_window_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_355a21107a85a332

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_2475d487147093d4" hs_bindgen_2475d487147093d4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_version@
hs_bindgen_2475d487147093d4 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_2475d487147093d4 =
  RIP.fromFFIType hs_bindgen_2475d487147093d4_base

{-# NOINLINE river_window_manager_v1_get_version #-}
{-| __C declaration:__ @river_window_manager_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 708:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_window_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_2475d487147093d4

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_9ae8c03fcc22c932" hs_bindgen_9ae8c03fcc22c932_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_stop@
hs_bindgen_9ae8c03fcc22c932 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_9ae8c03fcc22c932 =
  RIP.fromFFIType hs_bindgen_9ae8c03fcc22c932_base

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
  RIP.unsafePerformIO hs_bindgen_9ae8c03fcc22c932

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_042ed99400638e6f" hs_bindgen_042ed99400638e6f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_destroy@
hs_bindgen_042ed99400638e6f :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_042ed99400638e6f =
  RIP.fromFFIType hs_bindgen_042ed99400638e6f_base

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
  RIP.unsafePerformIO hs_bindgen_042ed99400638e6f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_finish@
foreign import ccall unsafe "hs_bindgen_8aa54e206c2f8d8f" hs_bindgen_8aa54e206c2f8d8f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_finish@
hs_bindgen_8aa54e206c2f8d8f :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_8aa54e206c2f8d8f =
  RIP.fromFFIType hs_bindgen_8aa54e206c2f8d8f_base

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
  RIP.unsafePerformIO hs_bindgen_8aa54e206c2f8d8f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_dirty@
foreign import ccall unsafe "hs_bindgen_8a1c64c9e5c6e961" hs_bindgen_8a1c64c9e5c6e961_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_manage_dirty@
hs_bindgen_8a1c64c9e5c6e961 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_8a1c64c9e5c6e961 =
  RIP.fromFFIType hs_bindgen_8a1c64c9e5c6e961_base

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
  RIP.unsafePerformIO hs_bindgen_8a1c64c9e5c6e961

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_render_finish@
foreign import ccall unsafe "hs_bindgen_52ee41b865a6fd39" hs_bindgen_52ee41b865a6fd39_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_render_finish@
hs_bindgen_52ee41b865a6fd39 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_52ee41b865a6fd39 =
  RIP.fromFFIType hs_bindgen_52ee41b865a6fd39_base

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
  RIP.unsafePerformIO hs_bindgen_52ee41b865a6fd39

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_90b770fe18d1786e" hs_bindgen_90b770fe18d1786e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_get_shell_surface@
hs_bindgen_90b770fe18d1786e :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr River_shell_surface_v1)))
hs_bindgen_90b770fe18d1786e =
  RIP.fromFFIType hs_bindgen_90b770fe18d1786e_base

{-# NOINLINE river_window_manager_v1_get_shell_surface #-}
{-|

  > iface_river_window_manager_v1

  Create a new shell surface for window manager UI and assign the river_shell_surface_v1 role to the surface.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_manager_v1_get_shell_surface@

__defined at:__ @river-window-management-v1-client-protocol.h 823:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_shell_surface :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr River_shell_surface_v1))
river_window_manager_v1_get_shell_surface =
  RIP.unsafePerformIO hs_bindgen_90b770fe18d1786e

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_exit_session@
foreign import ccall unsafe "hs_bindgen_61be95037a8f4e70" hs_bindgen_61be95037a8f4e70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_manager_v1_exit_session@
hs_bindgen_61be95037a8f4e70 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_61be95037a8f4e70 =
  RIP.fromFFIType hs_bindgen_61be95037a8f4e70_base

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
  RIP.unsafePerformIO hs_bindgen_61be95037a8f4e70

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_92050af93abc0503" hs_bindgen_92050af93abc0503_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_add_listener@
hs_bindgen_92050af93abc0503 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (PtrConst.PtrConst River_window_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_92050af93abc0503 =
  RIP.fromFFIType hs_bindgen_92050af93abc0503_base

{-# NOINLINE river_window_v1_add_listener #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 1285:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (PtrConst.PtrConst River_window_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_window_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_92050af93abc0503

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_3182bc9478281217" hs_bindgen_3182bc9478281217_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_user_data@
hs_bindgen_3182bc9478281217 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_3182bc9478281217 =
  RIP.fromFFIType hs_bindgen_3182bc9478281217_base

{-# NOINLINE river_window_v1_set_user_data #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 1489:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_window_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_3182bc9478281217

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_c144635e6c6d075d" hs_bindgen_c144635e6c6d075d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_user_data@
hs_bindgen_c144635e6c6d075d :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c144635e6c6d075d =
  RIP.fromFFIType hs_bindgen_c144635e6c6d075d_base

{-# NOINLINE river_window_v1_get_user_data #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 1496:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr RIP.Void))
river_window_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c144635e6c6d075d

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_version@
foreign import ccall unsafe "hs_bindgen_0b6f81a030e05781" hs_bindgen_0b6f81a030e05781_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_version@
hs_bindgen_0b6f81a030e05781 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_0b6f81a030e05781 =
  RIP.fromFFIType hs_bindgen_0b6f81a030e05781_base

{-# NOINLINE river_window_v1_get_version #-}
{-| __C declaration:__ @river_window_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 1502:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_window_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_0b6f81a030e05781

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_destroy@
foreign import ccall unsafe "hs_bindgen_de78324580ea0146" hs_bindgen_de78324580ea0146_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_destroy@
hs_bindgen_de78324580ea0146 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_de78324580ea0146 =
  RIP.fromFFIType hs_bindgen_de78324580ea0146_base

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
  RIP.unsafePerformIO hs_bindgen_de78324580ea0146

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_close@
foreign import ccall unsafe "hs_bindgen_215c3edddc5b3309" hs_bindgen_215c3edddc5b3309_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_close@
hs_bindgen_215c3edddc5b3309 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_215c3edddc5b3309 =
  RIP.fromFFIType hs_bindgen_215c3edddc5b3309_base

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
  RIP.unsafePerformIO hs_bindgen_215c3edddc5b3309

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_node@
foreign import ccall unsafe "hs_bindgen_7039f597bf34d0aa" hs_bindgen_7039f597bf34d0aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_node@
hs_bindgen_7039f597bf34d0aa :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr River_node_v1)))
hs_bindgen_7039f597bf34d0aa =
  RIP.fromFFIType hs_bindgen_7039f597bf34d0aa_base

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
  RIP.unsafePerformIO hs_bindgen_7039f597bf34d0aa

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_propose_dimensions@
foreign import ccall unsafe "hs_bindgen_f1ef0c52b287d789" hs_bindgen_f1ef0c52b287d789_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_propose_dimensions@
hs_bindgen_f1ef0c52b287d789 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_f1ef0c52b287d789 =
  RIP.fromFFIType hs_bindgen_f1ef0c52b287d789_base

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
  RIP.unsafePerformIO hs_bindgen_f1ef0c52b287d789

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_hide@
foreign import ccall unsafe "hs_bindgen_53705ab509abb7d0" hs_bindgen_53705ab509abb7d0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_hide@
hs_bindgen_53705ab509abb7d0 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_53705ab509abb7d0 =
  RIP.fromFFIType hs_bindgen_53705ab509abb7d0_base

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
  RIP.unsafePerformIO hs_bindgen_53705ab509abb7d0

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_show@
foreign import ccall unsafe "hs_bindgen_e0e6ab2e2bb8ec0e" hs_bindgen_e0e6ab2e2bb8ec0e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_show@
hs_bindgen_e0e6ab2e2bb8ec0e :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_e0e6ab2e2bb8ec0e =
  RIP.fromFFIType hs_bindgen_e0e6ab2e2bb8ec0e_base

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
  RIP.unsafePerformIO hs_bindgen_e0e6ab2e2bb8ec0e

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_use_csd@
foreign import ccall unsafe "hs_bindgen_fce1f4d1d669a6d8" hs_bindgen_fce1f4d1d669a6d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_use_csd@
hs_bindgen_fce1f4d1d669a6d8 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_fce1f4d1d669a6d8 =
  RIP.fromFFIType hs_bindgen_fce1f4d1d669a6d8_base

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
  RIP.unsafePerformIO hs_bindgen_fce1f4d1d669a6d8

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_use_ssd@
foreign import ccall unsafe "hs_bindgen_710ffd02c8f38152" hs_bindgen_710ffd02c8f38152_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_use_ssd@
hs_bindgen_710ffd02c8f38152 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_710ffd02c8f38152 =
  RIP.fromFFIType hs_bindgen_710ffd02c8f38152_base

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
  RIP.unsafePerformIO hs_bindgen_710ffd02c8f38152

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_borders@
foreign import ccall unsafe "hs_bindgen_b74fe1472efa9ef9" hs_bindgen_b74fe1472efa9ef9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_borders@
hs_bindgen_b74fe1472efa9ef9 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_b74fe1472efa9ef9 =
  RIP.fromFFIType hs_bindgen_b74fe1472efa9ef9_base

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
  RIP.unsafePerformIO hs_bindgen_b74fe1472efa9ef9

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_tiled@
foreign import ccall unsafe "hs_bindgen_fdd72f7172b73a1f" hs_bindgen_fdd72f7172b73a1f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_tiled@
hs_bindgen_fdd72f7172b73a1f :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_fdd72f7172b73a1f =
  RIP.fromFFIType hs_bindgen_fdd72f7172b73a1f_base

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
  RIP.unsafePerformIO hs_bindgen_fdd72f7172b73a1f

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_above@
foreign import ccall unsafe "hs_bindgen_20d6e8c7f5d141df" hs_bindgen_20d6e8c7f5d141df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_above@
hs_bindgen_20d6e8c7f5d141df :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr River_decoration_v1)))
hs_bindgen_20d6e8c7f5d141df =
  RIP.fromFFIType hs_bindgen_20d6e8c7f5d141df_base

{-# NOINLINE river_window_v1_get_decoration_above #-}
{-|

  > iface_river_window_v1

  Create a decoration surface and assign the river_decoration_v1 role to the surface. The created decoration is placed above the window in rendering order, see the description of river_decoration_v1.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_v1_get_decoration_above@

__defined at:__ @river-window-management-v1-client-protocol.h 1748:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_decoration_above :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr River_decoration_v1))
river_window_v1_get_decoration_above =
  RIP.unsafePerformIO hs_bindgen_20d6e8c7f5d141df

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_below@
foreign import ccall unsafe "hs_bindgen_c55bc7d9f3852438" hs_bindgen_c55bc7d9f3852438_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_get_decoration_below@
hs_bindgen_c55bc7d9f3852438 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr River_decoration_v1)))
hs_bindgen_c55bc7d9f3852438 =
  RIP.fromFFIType hs_bindgen_c55bc7d9f3852438_base

{-# NOINLINE river_window_v1_get_decoration_below #-}
{-|

  > iface_river_window_v1

  Create a decoration surface and assign the river_decoration_v1 role to the surface. The created decoration is placed below the window in rendering order, see the description of river_decoration_v1.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_v1_get_decoration_below@

__defined at:__ @river-window-management-v1-client-protocol.h 1769:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_decoration_below :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Wl_surface) -> IO (RIP.Ptr River_decoration_v1))
river_window_v1_get_decoration_below =
  RIP.unsafePerformIO hs_bindgen_c55bc7d9f3852438

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_start@
foreign import ccall unsafe "hs_bindgen_763e62f565c1eb56" hs_bindgen_763e62f565c1eb56_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_start@
hs_bindgen_763e62f565c1eb56 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_763e62f565c1eb56 =
  RIP.fromFFIType hs_bindgen_763e62f565c1eb56_base

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
  RIP.unsafePerformIO hs_bindgen_763e62f565c1eb56

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_end@
foreign import ccall unsafe "hs_bindgen_f423598411bbd214" hs_bindgen_f423598411bbd214_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_resize_end@
hs_bindgen_f423598411bbd214 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_f423598411bbd214 =
  RIP.fromFFIType hs_bindgen_f423598411bbd214_base

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
  RIP.unsafePerformIO hs_bindgen_f423598411bbd214

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_capabilities@
foreign import ccall unsafe "hs_bindgen_31a4c4d730da7b83" hs_bindgen_31a4c4d730da7b83_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_capabilities@
hs_bindgen_31a4c4d730da7b83 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_31a4c4d730da7b83 =
  RIP.fromFFIType hs_bindgen_31a4c4d730da7b83_base

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
  RIP.unsafePerformIO hs_bindgen_31a4c4d730da7b83

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_maximized@
foreign import ccall unsafe "hs_bindgen_f8e6c9c9bd023260" hs_bindgen_f8e6c9c9bd023260_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_maximized@
hs_bindgen_f8e6c9c9bd023260 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_f8e6c9c9bd023260 =
  RIP.fromFFIType hs_bindgen_f8e6c9c9bd023260_base

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
  RIP.unsafePerformIO hs_bindgen_f8e6c9c9bd023260

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_unmaximized@
foreign import ccall unsafe "hs_bindgen_ce67e9ca1cc464e3" hs_bindgen_ce67e9ca1cc464e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_unmaximized@
hs_bindgen_ce67e9ca1cc464e3 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_ce67e9ca1cc464e3 =
  RIP.fromFFIType hs_bindgen_ce67e9ca1cc464e3_base

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
  RIP.unsafePerformIO hs_bindgen_ce67e9ca1cc464e3

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_fullscreen@
foreign import ccall unsafe "hs_bindgen_11941507dc22ef68" hs_bindgen_11941507dc22ef68_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_fullscreen@
hs_bindgen_11941507dc22ef68 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_11941507dc22ef68 =
  RIP.fromFFIType hs_bindgen_11941507dc22ef68_base

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
  RIP.unsafePerformIO hs_bindgen_11941507dc22ef68

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_not_fullscreen@
foreign import ccall unsafe "hs_bindgen_9e8ccaf4bbfde3f8" hs_bindgen_9e8ccaf4bbfde3f8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_inform_not_fullscreen@
hs_bindgen_9e8ccaf4bbfde3f8 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_9e8ccaf4bbfde3f8 =
  RIP.fromFFIType hs_bindgen_9e8ccaf4bbfde3f8_base

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
  RIP.unsafePerformIO hs_bindgen_9e8ccaf4bbfde3f8

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_fullscreen@
foreign import ccall unsafe "hs_bindgen_245cb06882ebeb37" hs_bindgen_245cb06882ebeb37_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_fullscreen@
hs_bindgen_245cb06882ebeb37 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_245cb06882ebeb37 =
  RIP.fromFFIType hs_bindgen_245cb06882ebeb37_base

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
  RIP.unsafePerformIO hs_bindgen_245cb06882ebeb37

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_exit_fullscreen@
foreign import ccall unsafe "hs_bindgen_885f460e4158a506" hs_bindgen_885f460e4158a506_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_exit_fullscreen@
hs_bindgen_885f460e4158a506 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_885f460e4158a506 =
  RIP.fromFFIType hs_bindgen_885f460e4158a506_base

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
  RIP.unsafePerformIO hs_bindgen_885f460e4158a506

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_clip_box@
foreign import ccall unsafe "hs_bindgen_01a99a063c2ae8fd" hs_bindgen_01a99a063c2ae8fd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_clip_box@
hs_bindgen_01a99a063c2ae8fd :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_01a99a063c2ae8fd =
  RIP.fromFFIType hs_bindgen_01a99a063c2ae8fd_base

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
  RIP.unsafePerformIO hs_bindgen_01a99a063c2ae8fd

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_content_clip_box@
foreign import ccall unsafe "hs_bindgen_ac73314ae4ecbfc0" hs_bindgen_ac73314ae4ecbfc0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_content_clip_box@
hs_bindgen_ac73314ae4ecbfc0 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_ac73314ae4ecbfc0 =
  RIP.fromFFIType hs_bindgen_ac73314ae4ecbfc0_base

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
  RIP.unsafePerformIO hs_bindgen_ac73314ae4ecbfc0

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_dimension_bounds@
foreign import ccall unsafe "hs_bindgen_8574350bdb858517" hs_bindgen_8574350bdb858517_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_window_v1_set_dimension_bounds@
hs_bindgen_8574350bdb858517 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_8574350bdb858517 =
  RIP.fromFFIType hs_bindgen_8574350bdb858517_base

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
  RIP.unsafePerformIO hs_bindgen_8574350bdb858517

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_d4a219cdb4d998e0" hs_bindgen_d4a219cdb4d998e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_set_user_data@
hs_bindgen_d4a219cdb4d998e0 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_d4a219cdb4d998e0 =
  RIP.fromFFIType hs_bindgen_d4a219cdb4d998e0_base

{-# NOINLINE river_decoration_v1_set_user_data #-}
{-|

  > iface_river_decoration_v1

__C declaration:__ @river_decoration_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2099:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_decoration_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_d4a219cdb4d998e0

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_3cba4dbab6860065" hs_bindgen_3cba4dbab6860065_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_get_user_data@
hs_bindgen_3cba4dbab6860065 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_3cba4dbab6860065 =
  RIP.fromFFIType hs_bindgen_3cba4dbab6860065_base

{-# NOINLINE river_decoration_v1_get_user_data #-}
{-|

  > iface_river_decoration_v1

__C declaration:__ @river_decoration_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2106:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO (RIP.Ptr RIP.Void))
river_decoration_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_3cba4dbab6860065

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_get_version@
foreign import ccall unsafe "hs_bindgen_e261771b3f9c3509" hs_bindgen_e261771b3f9c3509_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_get_version@
hs_bindgen_e261771b3f9c3509 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_e261771b3f9c3509 =
  RIP.fromFFIType hs_bindgen_e261771b3f9c3509_base

{-# NOINLINE river_decoration_v1_get_version #-}
{-| __C declaration:__ @river_decoration_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2112:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_decoration_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_e261771b3f9c3509

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_destroy@
foreign import ccall unsafe "hs_bindgen_1810611f68eb2c61" hs_bindgen_1810611f68eb2c61_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_destroy@
hs_bindgen_1810611f68eb2c61 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO ()))
hs_bindgen_1810611f68eb2c61 =
  RIP.fromFFIType hs_bindgen_1810611f68eb2c61_base

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
  RIP.unsafePerformIO hs_bindgen_1810611f68eb2c61

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_set_offset@
foreign import ccall unsafe "hs_bindgen_a24407cac6cb29d1" hs_bindgen_a24407cac6cb29d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_set_offset@
hs_bindgen_a24407cac6cb29d1 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_a24407cac6cb29d1 =
  RIP.fromFFIType hs_bindgen_a24407cac6cb29d1_base

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
  RIP.unsafePerformIO hs_bindgen_a24407cac6cb29d1

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_sync_next_commit@
foreign import ccall unsafe "hs_bindgen_9e17306666d653e0" hs_bindgen_9e17306666d653e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_decoration_v1_sync_next_commit@
hs_bindgen_9e17306666d653e0 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO ()))
hs_bindgen_9e17306666d653e0 =
  RIP.fromFFIType hs_bindgen_9e17306666d653e0_base

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
  RIP.unsafePerformIO hs_bindgen_9e17306666d653e0

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_61933ef7a1db28d2" hs_bindgen_61933ef7a1db28d2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_set_user_data@
hs_bindgen_61933ef7a1db28d2 :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_61933ef7a1db28d2 =
  RIP.fromFFIType hs_bindgen_61933ef7a1db28d2_base

{-# NOINLINE river_shell_surface_v1_set_user_data #-}
{-|

  > iface_river_shell_surface_v1

__C declaration:__ @river_shell_surface_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2204:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_shell_surface_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_61933ef7a1db28d2

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_b002f663f44b911e" hs_bindgen_b002f663f44b911e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_user_data@
hs_bindgen_b002f663f44b911e :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_b002f663f44b911e =
  RIP.fromFFIType hs_bindgen_b002f663f44b911e_base

{-# NOINLINE river_shell_surface_v1_get_user_data #-}
{-|

  > iface_river_shell_surface_v1

__C declaration:__ @river_shell_surface_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2211:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr RIP.Void))
river_shell_surface_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_b002f663f44b911e

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_version@
foreign import ccall unsafe "hs_bindgen_6e692dd59a59c19d" hs_bindgen_6e692dd59a59c19d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_version@
hs_bindgen_6e692dd59a59c19d :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_6e692dd59a59c19d =
  RIP.fromFFIType hs_bindgen_6e692dd59a59c19d_base

{-# NOINLINE river_shell_surface_v1_get_version #-}
{-| __C declaration:__ @river_shell_surface_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2217:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_shell_surface_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_6e692dd59a59c19d

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_destroy@
foreign import ccall unsafe "hs_bindgen_4ae20c23c48947ce" hs_bindgen_4ae20c23c48947ce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_destroy@
hs_bindgen_4ae20c23c48947ce :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_4ae20c23c48947ce =
  RIP.fromFFIType hs_bindgen_4ae20c23c48947ce_base

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
  RIP.unsafePerformIO hs_bindgen_4ae20c23c48947ce

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_node@
foreign import ccall unsafe "hs_bindgen_278fc05cdcef298b" hs_bindgen_278fc05cdcef298b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_get_node@
hs_bindgen_278fc05cdcef298b :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr River_node_v1)))
hs_bindgen_278fc05cdcef298b =
  RIP.fromFFIType hs_bindgen_278fc05cdcef298b_base

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
  RIP.unsafePerformIO hs_bindgen_278fc05cdcef298b

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_sync_next_commit@
foreign import ccall unsafe "hs_bindgen_afaafe9083308b01" hs_bindgen_afaafe9083308b01_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_shell_surface_v1_sync_next_commit@
hs_bindgen_afaafe9083308b01 :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_afaafe9083308b01 =
  RIP.fromFFIType hs_bindgen_afaafe9083308b01_base

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
  RIP.unsafePerformIO hs_bindgen_afaafe9083308b01

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_8b4f3149f74893fb" hs_bindgen_8b4f3149f74893fb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_set_user_data@
hs_bindgen_8b4f3149f74893fb :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8b4f3149f74893fb =
  RIP.fromFFIType hs_bindgen_8b4f3149f74893fb_base

{-# NOINLINE river_node_v1_set_user_data #-}
{-|

  > iface_river_node_v1

__C declaration:__ @river_node_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2310:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_node_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8b4f3149f74893fb

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ca11d6d1aa9338af" hs_bindgen_ca11d6d1aa9338af_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_get_user_data@
hs_bindgen_ca11d6d1aa9338af :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_ca11d6d1aa9338af =
  RIP.fromFFIType hs_bindgen_ca11d6d1aa9338af_base

{-# NOINLINE river_node_v1_get_user_data #-}
{-|

  > iface_river_node_v1

__C declaration:__ @river_node_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2317:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO (RIP.Ptr RIP.Void))
river_node_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_ca11d6d1aa9338af

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_get_version@
foreign import ccall unsafe "hs_bindgen_aebddf4852788668" hs_bindgen_aebddf4852788668_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_get_version@
hs_bindgen_aebddf4852788668 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_aebddf4852788668 =
  RIP.fromFFIType hs_bindgen_aebddf4852788668_base

{-# NOINLINE river_node_v1_get_version #-}
{-| __C declaration:__ @river_node_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2323:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_node_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_aebddf4852788668

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_destroy@
foreign import ccall unsafe "hs_bindgen_00058e19ed494e89" hs_bindgen_00058e19ed494e89_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_destroy@
hs_bindgen_00058e19ed494e89 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_00058e19ed494e89 =
  RIP.fromFFIType hs_bindgen_00058e19ed494e89_base

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
  RIP.unsafePerformIO hs_bindgen_00058e19ed494e89

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_set_position@
foreign import ccall unsafe "hs_bindgen_8735927717c46faf" hs_bindgen_8735927717c46faf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_set_position@
hs_bindgen_8735927717c46faf :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_8735927717c46faf =
  RIP.fromFFIType hs_bindgen_8735927717c46faf_base

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
  RIP.unsafePerformIO hs_bindgen_8735927717c46faf

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_top@
foreign import ccall unsafe "hs_bindgen_92b4918c7c8c8168" hs_bindgen_92b4918c7c8c8168_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_top@
hs_bindgen_92b4918c7c8c8168 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_92b4918c7c8c8168 =
  RIP.fromFFIType hs_bindgen_92b4918c7c8c8168_base

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
  RIP.unsafePerformIO hs_bindgen_92b4918c7c8c8168

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_bottom@
foreign import ccall unsafe "hs_bindgen_14a096550e0fdbb3" hs_bindgen_14a096550e0fdbb3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_bottom@
hs_bindgen_14a096550e0fdbb3 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_14a096550e0fdbb3 =
  RIP.fromFFIType hs_bindgen_14a096550e0fdbb3_base

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
  RIP.unsafePerformIO hs_bindgen_14a096550e0fdbb3

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_above@
foreign import ccall unsafe "hs_bindgen_618142b95fd19e25" hs_bindgen_618142b95fd19e25_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_above@
hs_bindgen_618142b95fd19e25 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_618142b95fd19e25 =
  RIP.fromFFIType hs_bindgen_618142b95fd19e25_base

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
  RIP.unsafePerformIO hs_bindgen_618142b95fd19e25

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_below@
foreign import ccall unsafe "hs_bindgen_66aa95649707a23b" hs_bindgen_66aa95649707a23b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_node_v1_place_below@
hs_bindgen_66aa95649707a23b :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_66aa95649707a23b =
  RIP.fromFFIType hs_bindgen_66aa95649707a23b_base

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
  RIP.unsafePerformIO hs_bindgen_66aa95649707a23b

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_71c5f70658564f46" hs_bindgen_71c5f70658564f46_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_add_listener@
hs_bindgen_71c5f70658564f46 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> (PtrConst.PtrConst River_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_71c5f70658564f46 =
  RIP.fromFFIType hs_bindgen_71c5f70658564f46_base

{-# NOINLINE river_output_v1_add_listener #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2573:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> (PtrConst.PtrConst River_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_output_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_71c5f70658564f46

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_08c8089bca2d9ef6" hs_bindgen_08c8089bca2d9ef6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_set_user_data@
hs_bindgen_08c8089bca2d9ef6 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_08c8089bca2d9ef6 =
  RIP.fromFFIType hs_bindgen_08c8089bca2d9ef6_base

{-# NOINLINE river_output_v1_set_user_data #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2611:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_output_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_08c8089bca2d9ef6

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_67978720df9db53c" hs_bindgen_67978720df9db53c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_get_user_data@
hs_bindgen_67978720df9db53c :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_67978720df9db53c =
  RIP.fromFFIType hs_bindgen_67978720df9db53c_base

{-# NOINLINE river_output_v1_get_user_data #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2618:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO (RIP.Ptr RIP.Void))
river_output_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_67978720df9db53c

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_884bec6e6f0913ba" hs_bindgen_884bec6e6f0913ba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_get_version@
hs_bindgen_884bec6e6f0913ba :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_884bec6e6f0913ba =
  RIP.fromFFIType hs_bindgen_884bec6e6f0913ba_base

{-# NOINLINE river_output_v1_get_version #-}
{-| __C declaration:__ @river_output_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2624:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_output_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_884bec6e6f0913ba

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_5141a87f5df77a31" hs_bindgen_5141a87f5df77a31_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_destroy@
hs_bindgen_5141a87f5df77a31 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_5141a87f5df77a31 =
  RIP.fromFFIType hs_bindgen_5141a87f5df77a31_base

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
  RIP.unsafePerformIO hs_bindgen_5141a87f5df77a31

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_set_presentation_mode@
foreign import ccall unsafe "hs_bindgen_7e32b364d8dab9ad" hs_bindgen_7e32b364d8dab9ad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_output_v1_set_presentation_mode@
hs_bindgen_7e32b364d8dab9ad :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_7e32b364d8dab9ad =
  RIP.fromFFIType hs_bindgen_7e32b364d8dab9ad_base

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
  RIP.unsafePerformIO hs_bindgen_7e32b364d8dab9ad

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_81729c27be6d66fe" hs_bindgen_81729c27be6d66fe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_add_listener@
hs_bindgen_81729c27be6d66fe :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst River_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_81729c27be6d66fe =
  RIP.fromFFIType hs_bindgen_81729c27be6d66fe_base

{-# NOINLINE river_seat_v1_add_listener #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2885:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst River_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_81729c27be6d66fe

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_4c3ce402697d4ad3" hs_bindgen_4c3ce402697d4ad3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_set_user_data@
hs_bindgen_4c3ce402697d4ad3 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_4c3ce402697d4ad3 =
  RIP.fromFFIType hs_bindgen_4c3ce402697d4ad3_base

{-# NOINLINE river_seat_v1_set_user_data #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2978:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_4c3ce402697d4ad3

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ba6e46d9c5222fa2" hs_bindgen_ba6e46d9c5222fa2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_user_data@
hs_bindgen_ba6e46d9c5222fa2 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_ba6e46d9c5222fa2 =
  RIP.fromFFIType hs_bindgen_ba6e46d9c5222fa2_base

{-# NOINLINE river_seat_v1_get_user_data #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2985:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_ba6e46d9c5222fa2

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_f3c02620a20c0334" hs_bindgen_f3c02620a20c0334_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_version@
hs_bindgen_f3c02620a20c0334 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_f3c02620a20c0334 =
  RIP.fromFFIType hs_bindgen_f3c02620a20c0334_base

{-# NOINLINE river_seat_v1_get_version #-}
{-| __C declaration:__ @river_seat_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2991:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_f3c02620a20c0334

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_84bda737d8a5d61d" hs_bindgen_84bda737d8a5d61d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_destroy@
hs_bindgen_84bda737d8a5d61d :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_84bda737d8a5d61d =
  RIP.fromFFIType hs_bindgen_84bda737d8a5d61d_base

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
  RIP.unsafePerformIO hs_bindgen_84bda737d8a5d61d

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_focus_window@
foreign import ccall unsafe "hs_bindgen_e18c6474aaa6e2d9" hs_bindgen_e18c6474aaa6e2d9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_focus_window@
hs_bindgen_e18c6474aaa6e2d9 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_e18c6474aaa6e2d9 =
  RIP.fromFFIType hs_bindgen_e18c6474aaa6e2d9_base

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
  RIP.unsafePerformIO hs_bindgen_e18c6474aaa6e2d9

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_focus_shell_surface@
foreign import ccall unsafe "hs_bindgen_bee3d71ff21fbf10" hs_bindgen_bee3d71ff21fbf10_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_focus_shell_surface@
hs_bindgen_bee3d71ff21fbf10 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_bee3d71ff21fbf10 =
  RIP.fromFFIType hs_bindgen_bee3d71ff21fbf10_base

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
  RIP.unsafePerformIO hs_bindgen_bee3d71ff21fbf10

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_clear_focus@
foreign import ccall unsafe "hs_bindgen_4d11a811c0bebdf9" hs_bindgen_4d11a811c0bebdf9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_clear_focus@
hs_bindgen_4d11a811c0bebdf9 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_4d11a811c0bebdf9 =
  RIP.fromFFIType hs_bindgen_4d11a811c0bebdf9_base

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
  RIP.unsafePerformIO hs_bindgen_4d11a811c0bebdf9

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_op_start_pointer@
foreign import ccall unsafe "hs_bindgen_4a9aaa027a482629" hs_bindgen_4a9aaa027a482629_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_op_start_pointer@
hs_bindgen_4a9aaa027a482629 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_4a9aaa027a482629 =
  RIP.fromFFIType hs_bindgen_4a9aaa027a482629_base

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
  RIP.unsafePerformIO hs_bindgen_4a9aaa027a482629

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_op_end@
foreign import ccall unsafe "hs_bindgen_a34dd38ae03c2dab" hs_bindgen_a34dd38ae03c2dab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_op_end@
hs_bindgen_a34dd38ae03c2dab :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_a34dd38ae03c2dab =
  RIP.fromFFIType hs_bindgen_a34dd38ae03c2dab_base

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
  RIP.unsafePerformIO hs_bindgen_a34dd38ae03c2dab

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_pointer_binding@
foreign import ccall unsafe "hs_bindgen_b76ba03a38e05580" hs_bindgen_b76ba03a38e05580_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_get_pointer_binding@
hs_bindgen_b76ba03a38e05580 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_pointer_binding_v1)))
hs_bindgen_b76ba03a38e05580 =
  RIP.fromFFIType hs_bindgen_b76ba03a38e05580_base

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
  RIP.unsafePerformIO hs_bindgen_b76ba03a38e05580

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_set_xcursor_theme@
foreign import ccall unsafe "hs_bindgen_2731fa9dcf0c584e" hs_bindgen_2731fa9dcf0c584e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_set_xcursor_theme@
hs_bindgen_2731fa9dcf0c584e :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_2731fa9dcf0c584e =
  RIP.fromFFIType hs_bindgen_2731fa9dcf0c584e_base

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
  RIP.unsafePerformIO hs_bindgen_2731fa9dcf0c584e

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_pointer_warp@
foreign import ccall unsafe "hs_bindgen_15768677781d49b7" hs_bindgen_15768677781d49b7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_seat_v1_pointer_warp@
hs_bindgen_15768677781d49b7 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_15768677781d49b7 =
  RIP.fromFFIType hs_bindgen_15768677781d49b7_base

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
  RIP.unsafePerformIO hs_bindgen_15768677781d49b7

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_7bd61c7144b41a68" hs_bindgen_7bd61c7144b41a68_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_add_listener@
hs_bindgen_7bd61c7144b41a68 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (PtrConst.PtrConst River_pointer_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_7bd61c7144b41a68 =
  RIP.fromFFIType hs_bindgen_7bd61c7144b41a68_base

{-# NOINLINE river_pointer_binding_v1_add_listener #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 3220:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (PtrConst.PtrConst River_pointer_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_pointer_binding_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_7bd61c7144b41a68

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_058cd111dce77ba6" hs_bindgen_058cd111dce77ba6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_set_user_data@
hs_bindgen_058cd111dce77ba6 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_058cd111dce77ba6 =
  RIP.fromFFIType hs_bindgen_058cd111dce77ba6_base

{-# NOINLINE river_pointer_binding_v1_set_user_data #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 3255:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_pointer_binding_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_058cd111dce77ba6

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_bc6e5d2841b9f574" hs_bindgen_bc6e5d2841b9f574_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_user_data@
hs_bindgen_bc6e5d2841b9f574 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_bc6e5d2841b9f574 =
  RIP.fromFFIType hs_bindgen_bc6e5d2841b9f574_base

{-# NOINLINE river_pointer_binding_v1_get_user_data #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 3262:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO (RIP.Ptr RIP.Void))
river_pointer_binding_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_bc6e5d2841b9f574

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_561e7879795d3c7e" hs_bindgen_561e7879795d3c7e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_get_version@
hs_bindgen_561e7879795d3c7e :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_561e7879795d3c7e =
  RIP.fromFFIType hs_bindgen_561e7879795d3c7e_base

{-# NOINLINE river_pointer_binding_v1_get_version #-}
{-| __C declaration:__ @river_pointer_binding_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 3268:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_pointer_binding_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_561e7879795d3c7e

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_e8046eec37126a29" hs_bindgen_e8046eec37126a29_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_destroy@
hs_bindgen_e8046eec37126a29 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_e8046eec37126a29 =
  RIP.fromFFIType hs_bindgen_e8046eec37126a29_base

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
  RIP.unsafePerformIO hs_bindgen_e8046eec37126a29

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_0a23d64ae69bcd64" hs_bindgen_0a23d64ae69bcd64_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_enable@
hs_bindgen_0a23d64ae69bcd64 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_0a23d64ae69bcd64 =
  RIP.fromFFIType hs_bindgen_0a23d64ae69bcd64_base

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
  RIP.unsafePerformIO hs_bindgen_0a23d64ae69bcd64

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_a03b792044c0aeea" hs_bindgen_a03b792044c0aeea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_windowmanage_Generated.River.WindowManagementV1_get_river_pointer_binding_v1_disable@
hs_bindgen_a03b792044c0aeea :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_a03b792044c0aeea =
  RIP.fromFFIType hs_bindgen_a03b792044c0aeea_base

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
  RIP.unsafePerformIO hs_bindgen_a03b792044c0aeea

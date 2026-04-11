{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.WindowManagementV1.Generated.FunPtr
    ( Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_stop
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_manage_finish
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_manage_dirty
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_render_finish
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_get_shell_surface
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_manager_v1_exit_session
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_close
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_get_node
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_propose_dimensions
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_hide
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_show
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_use_csd
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_use_ssd
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_set_borders
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_set_tiled
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_get_decoration_above
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_get_decoration_below
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_inform_resize_start
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_inform_resize_end
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_set_capabilities
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_inform_maximized
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_inform_unmaximized
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_inform_fullscreen
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_inform_not_fullscreen
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_fullscreen
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_exit_fullscreen
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_set_clip_box
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_set_content_clip_box
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_window_v1_set_dimension_bounds
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_decoration_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_decoration_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_decoration_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_decoration_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_decoration_v1_set_offset
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_decoration_v1_sync_next_commit
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_shell_surface_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_shell_surface_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_shell_surface_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_shell_surface_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_shell_surface_v1_get_node
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_shell_surface_v1_sync_next_commit
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_set_position
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_place_top
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_place_bottom
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_place_above
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_node_v1_place_below
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_output_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_output_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_output_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_output_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_output_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_output_v1_set_presentation_mode
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_focus_window
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_focus_shell_surface
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_clear_focus
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_op_start_pointer
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_op_end
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_get_pointer_binding
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_set_xcursor_theme
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_seat_v1_pointer_warp
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_pointer_binding_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_pointer_binding_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_pointer_binding_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_pointer_binding_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_pointer_binding_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_pointer_binding_v1_enable
    , Bindings.River.WindowManagementV1.Generated.FunPtr.river_pointer_binding_v1_disable
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
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_42d69e97d17833ae (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct river_window_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_add_listener;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f812236fbc109311 (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_ea56a9e12b4fe701 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_eddb9e501f66dec5 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_version;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_05877e518774bb23 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_stop;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ad507e462211814e (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_destroy;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_manage_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_19569f615020216a (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_manage_finish;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_manage_dirty */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_37db210502862cea (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_manage_dirty;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_render_finish */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bcbb6fa9f94c3714 (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_render_finish;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_shell_surface */"
  , "__attribute__ ((const))"
  , "struct river_shell_surface_v1 *(*hs_bindgen_bac4547929a3c15b (void)) ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_get_shell_surface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_exit_session */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ff75f2f6178224ac (void)) ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_manager_v1_exit_session;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_40fcdadfa9e72456 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_window_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_add_listener;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_29f649085ded1cd5 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_1dd8fb2d2efe09f8 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b5fedffca1d42dbb (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_version;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d184fff575ac497 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_destroy;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_close */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_36b27a2f69b29aed (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_close;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_node */"
  , "__attribute__ ((const))"
  , "struct river_node_v1 *(*hs_bindgen_baf14cd7267dd790 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_get_node;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_propose_dimensions */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c748356afe3be014 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_propose_dimensions;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_hide */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bdf5ccd7405ca6d1 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_hide;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_show */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f1ae63fbc1253b57 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_show;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_use_csd */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_529fe91b4c59e6ba (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_use_csd;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_use_ssd */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_93df14b332861087 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_use_ssd;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_borders */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_de43f50968a2d433 (void)) ("
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
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_tiled */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e8319168451043db (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_tiled;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_decoration_above */"
  , "__attribute__ ((const))"
  , "struct river_decoration_v1 *(*hs_bindgen_fd7272f64ed62fa1 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_get_decoration_above;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_decoration_below */"
  , "__attribute__ ((const))"
  , "struct river_decoration_v1 *(*hs_bindgen_25968728e95a7ecf (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_get_decoration_below;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_resize_start */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4bea85a9b6658297 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_resize_start;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_resize_end */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7bf77d2b2c15dbf5 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_resize_end;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_capabilities */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_25d47f849a7867c1 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_set_capabilities;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_maximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0349805cea8f1226 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_maximized;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_unmaximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6a63dfea89af54f4 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_unmaximized;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8d7d0d4a3c3f7410 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_fullscreen;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_not_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b833d7dba9712592 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_inform_not_fullscreen;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d6a3a4768d1af624 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_window_v1_fullscreen;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_exit_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0cd484f158b3b2c0 (void)) ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_window_v1_exit_fullscreen;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_clip_box */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_dcbc705d7cac19d8 (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &river_window_v1_set_clip_box;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_content_clip_box */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c410b7cb8213240c (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &river_window_v1_set_content_clip_box;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_dimension_bounds */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7d2cb54b66a6b9bd (void)) ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_window_v1_set_dimension_bounds;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ae4a8c3f62e52278 (void)) ("
  , "  struct river_decoration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_decoration_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_313cb924d0d1f6ec (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_508f508ff5d8301b (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_get_version;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_22dd54d623f81af8 (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_destroy;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_set_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_42cd747b15bc611a (void)) ("
  , "  struct river_decoration_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_decoration_v1_set_offset;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_sync_next_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2aa13a7843184d2a (void)) ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_decoration_v1_sync_next_commit;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8ab6718efb925a51 (void)) ("
  , "  struct river_shell_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_51976234f2310655 (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_31beaff462dda925 (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_version;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ce3e129bf36bc0d1 (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_destroy;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_node */"
  , "__attribute__ ((const))"
  , "struct river_node_v1 *(*hs_bindgen_b2575293066aa811 (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_get_node;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_sync_next_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f0eab75df53bb73b (void)) ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_shell_surface_v1_sync_next_commit;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_379b73f27337b819 (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_06b65dff1170baf6 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_737a26a65b5079d5 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_get_version;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b4fb3ea38148ee7f (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_destroy;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_set_position */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d644af49505c8521 (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_node_v1_set_position;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_top */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5e062acc5d4e8f8c (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_place_top;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_bottom */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8a98306890edc939 (void)) ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_node_v1_place_bottom;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_above */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a7c2c34c3f394f8a (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_place_above;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_below */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_be7257aea5225b85 (void)) ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_node_v1_place_below;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_87365ffa53860a9e (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  struct river_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_output_v1_add_listener;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_416ad240a57f3695 (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_output_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_fb05558286b316f8 (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8b9dac8e15696e99 (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_get_version;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_603b1ded64e5b982 (void)) ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_output_v1_destroy;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_set_presentation_mode */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_00f69bc4e598fdb3 (void)) ("
  , "  struct river_output_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_output_v1_set_presentation_mode;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bc3cd08538facf09 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_add_listener;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ba6a6ec7bc5ecfa8 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_e8c868e781d83b41 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_55437849c6ed96d1 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_version;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_36ac8ee70bdfa676 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_destroy;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_focus_window */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ee66c59069fe4d05 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_window_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_focus_window;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_focus_shell_surface */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_13a3f30e8df8f43c (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_shell_surface_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_seat_v1_focus_shell_surface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_clear_focus */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7bbfc3a21d41e5a1 (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_clear_focus;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_op_start_pointer */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_997fb8606abce5bd (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_op_start_pointer;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_op_end */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8c386e0b75d06beb (void)) ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_seat_v1_op_end;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_pointer_binding */"
  , "__attribute__ ((const))"
  , "struct river_pointer_binding_v1 *(*hs_bindgen_aeaa6f3e998bc5c0 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_get_pointer_binding;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_set_xcursor_theme */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f3143defa75bdeab (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_set_xcursor_theme;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_pointer_warp */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_331735df9980e3d6 (void)) ("
  , "  struct river_seat_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &river_seat_v1_pointer_warp;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ad082270d7d78ec0 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  struct river_pointer_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_add_listener;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_de40912764aa21d4 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c6424e4ea6421af4 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7a1fc26423d51651 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_get_version;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c08b3d4a4821668d (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_destroy;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_303bf95a958f430e (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_enable;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c0eeb6fc418d1029 (void)) ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_pointer_binding_v1_disable;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_42d69e97d17833ae" hs_bindgen_42d69e97d17833ae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_add_listener@
hs_bindgen_42d69e97d17833ae :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (PtrConst.PtrConst River_window_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_42d69e97d17833ae =
  RIP.fromFFIType hs_bindgen_42d69e97d17833ae_base

{-# NOINLINE river_window_manager_v1_add_listener #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 612:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (PtrConst.PtrConst River_window_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_window_manager_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_42d69e97d17833ae

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_f812236fbc109311" hs_bindgen_f812236fbc109311_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_set_user_data@
hs_bindgen_f812236fbc109311 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f812236fbc109311 =
  RIP.fromFFIType hs_bindgen_f812236fbc109311_base

{-# NOINLINE river_window_manager_v1_set_user_data #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 695:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_window_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f812236fbc109311

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ea56a9e12b4fe701" hs_bindgen_ea56a9e12b4fe701_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_user_data@
hs_bindgen_ea56a9e12b4fe701 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_ea56a9e12b4fe701 =
  RIP.fromFFIType hs_bindgen_ea56a9e12b4fe701_base

{-# NOINLINE river_window_manager_v1_get_user_data #-}
{-|

  > iface_river_window_manager_v1

__C declaration:__ @river_window_manager_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 702:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO (RIP.Ptr RIP.Void))
river_window_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_ea56a9e12b4fe701

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_eddb9e501f66dec5" hs_bindgen_eddb9e501f66dec5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_version@
hs_bindgen_eddb9e501f66dec5 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_eddb9e501f66dec5 =
  RIP.fromFFIType hs_bindgen_eddb9e501f66dec5_base

{-# NOINLINE river_window_manager_v1_get_version #-}
{-| __C declaration:__ @river_window_manager_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 708:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_window_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_eddb9e501f66dec5

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_05877e518774bb23" hs_bindgen_05877e518774bb23_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_stop@
hs_bindgen_05877e518774bb23 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_05877e518774bb23 =
  RIP.fromFFIType hs_bindgen_05877e518774bb23_base

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
  RIP.unsafePerformIO hs_bindgen_05877e518774bb23

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_ad507e462211814e" hs_bindgen_ad507e462211814e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_destroy@
hs_bindgen_ad507e462211814e :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_ad507e462211814e =
  RIP.fromFFIType hs_bindgen_ad507e462211814e_base

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
  RIP.unsafePerformIO hs_bindgen_ad507e462211814e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_manage_finish@
foreign import ccall unsafe "hs_bindgen_19569f615020216a" hs_bindgen_19569f615020216a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_manage_finish@
hs_bindgen_19569f615020216a :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_19569f615020216a =
  RIP.fromFFIType hs_bindgen_19569f615020216a_base

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
  RIP.unsafePerformIO hs_bindgen_19569f615020216a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_manage_dirty@
foreign import ccall unsafe "hs_bindgen_37db210502862cea" hs_bindgen_37db210502862cea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_manage_dirty@
hs_bindgen_37db210502862cea :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_37db210502862cea =
  RIP.fromFFIType hs_bindgen_37db210502862cea_base

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
  RIP.unsafePerformIO hs_bindgen_37db210502862cea

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_render_finish@
foreign import ccall unsafe "hs_bindgen_bcbb6fa9f94c3714" hs_bindgen_bcbb6fa9f94c3714_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_render_finish@
hs_bindgen_bcbb6fa9f94c3714 :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_bcbb6fa9f94c3714 =
  RIP.fromFFIType hs_bindgen_bcbb6fa9f94c3714_base

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
  RIP.unsafePerformIO hs_bindgen_bcbb6fa9f94c3714

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_bac4547929a3c15b" hs_bindgen_bac4547929a3c15b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_get_shell_surface@
hs_bindgen_bac4547929a3c15b :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr River_shell_surface_v1)))
hs_bindgen_bac4547929a3c15b =
  RIP.fromFFIType hs_bindgen_bac4547929a3c15b_base

{-# NOINLINE river_window_manager_v1_get_shell_surface #-}
{-|

  > iface_river_window_manager_v1

  Create a new shell surface for window manager UI and assign the river_shell_surface_v1 role to the surface.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_manager_v1_get_shell_surface@

__defined at:__ @river-window-management-v1-client-protocol.h 823:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_shell_surface :: RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr River_shell_surface_v1))
river_window_manager_v1_get_shell_surface =
  RIP.unsafePerformIO hs_bindgen_bac4547929a3c15b

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_exit_session@
foreign import ccall unsafe "hs_bindgen_ff75f2f6178224ac" hs_bindgen_ff75f2f6178224ac_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_exit_session@
hs_bindgen_ff75f2f6178224ac :: IO (RIP.FunPtr ((RIP.Ptr River_window_manager_v1) -> IO ()))
hs_bindgen_ff75f2f6178224ac =
  RIP.fromFFIType hs_bindgen_ff75f2f6178224ac_base

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
  RIP.unsafePerformIO hs_bindgen_ff75f2f6178224ac

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_40fcdadfa9e72456" hs_bindgen_40fcdadfa9e72456_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_add_listener@
hs_bindgen_40fcdadfa9e72456 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (PtrConst.PtrConst River_window_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_40fcdadfa9e72456 =
  RIP.fromFFIType hs_bindgen_40fcdadfa9e72456_base

{-# NOINLINE river_window_v1_add_listener #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 1285:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (PtrConst.PtrConst River_window_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_window_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_40fcdadfa9e72456

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_29f649085ded1cd5" hs_bindgen_29f649085ded1cd5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_user_data@
hs_bindgen_29f649085ded1cd5 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_29f649085ded1cd5 =
  RIP.fromFFIType hs_bindgen_29f649085ded1cd5_base

{-# NOINLINE river_window_v1_set_user_data #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 1489:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_window_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_29f649085ded1cd5

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_1dd8fb2d2efe09f8" hs_bindgen_1dd8fb2d2efe09f8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_user_data@
hs_bindgen_1dd8fb2d2efe09f8 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_1dd8fb2d2efe09f8 =
  RIP.fromFFIType hs_bindgen_1dd8fb2d2efe09f8_base

{-# NOINLINE river_window_v1_get_user_data #-}
{-|

  > iface_river_window_v1

__C declaration:__ @river_window_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 1496:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr RIP.Void))
river_window_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_1dd8fb2d2efe09f8

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_version@
foreign import ccall unsafe "hs_bindgen_b5fedffca1d42dbb" hs_bindgen_b5fedffca1d42dbb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_version@
hs_bindgen_b5fedffca1d42dbb :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_b5fedffca1d42dbb =
  RIP.fromFFIType hs_bindgen_b5fedffca1d42dbb_base

{-# NOINLINE river_window_v1_get_version #-}
{-| __C declaration:__ @river_window_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 1502:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_window_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_b5fedffca1d42dbb

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_destroy@
foreign import ccall unsafe "hs_bindgen_4d184fff575ac497" hs_bindgen_4d184fff575ac497_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_destroy@
hs_bindgen_4d184fff575ac497 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_4d184fff575ac497 =
  RIP.fromFFIType hs_bindgen_4d184fff575ac497_base

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
  RIP.unsafePerformIO hs_bindgen_4d184fff575ac497

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_close@
foreign import ccall unsafe "hs_bindgen_36b27a2f69b29aed" hs_bindgen_36b27a2f69b29aed_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_close@
hs_bindgen_36b27a2f69b29aed :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_36b27a2f69b29aed =
  RIP.fromFFIType hs_bindgen_36b27a2f69b29aed_base

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
  RIP.unsafePerformIO hs_bindgen_36b27a2f69b29aed

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_node@
foreign import ccall unsafe "hs_bindgen_baf14cd7267dd790" hs_bindgen_baf14cd7267dd790_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_node@
hs_bindgen_baf14cd7267dd790 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO (RIP.Ptr River_node_v1)))
hs_bindgen_baf14cd7267dd790 =
  RIP.fromFFIType hs_bindgen_baf14cd7267dd790_base

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
  RIP.unsafePerformIO hs_bindgen_baf14cd7267dd790

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_propose_dimensions@
foreign import ccall unsafe "hs_bindgen_c748356afe3be014" hs_bindgen_c748356afe3be014_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_propose_dimensions@
hs_bindgen_c748356afe3be014 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_c748356afe3be014 =
  RIP.fromFFIType hs_bindgen_c748356afe3be014_base

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
  RIP.unsafePerformIO hs_bindgen_c748356afe3be014

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_hide@
foreign import ccall unsafe "hs_bindgen_bdf5ccd7405ca6d1" hs_bindgen_bdf5ccd7405ca6d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_hide@
hs_bindgen_bdf5ccd7405ca6d1 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_bdf5ccd7405ca6d1 =
  RIP.fromFFIType hs_bindgen_bdf5ccd7405ca6d1_base

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
  RIP.unsafePerformIO hs_bindgen_bdf5ccd7405ca6d1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_show@
foreign import ccall unsafe "hs_bindgen_f1ae63fbc1253b57" hs_bindgen_f1ae63fbc1253b57_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_show@
hs_bindgen_f1ae63fbc1253b57 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_f1ae63fbc1253b57 =
  RIP.fromFFIType hs_bindgen_f1ae63fbc1253b57_base

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
  RIP.unsafePerformIO hs_bindgen_f1ae63fbc1253b57

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_use_csd@
foreign import ccall unsafe "hs_bindgen_529fe91b4c59e6ba" hs_bindgen_529fe91b4c59e6ba_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_use_csd@
hs_bindgen_529fe91b4c59e6ba :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_529fe91b4c59e6ba =
  RIP.fromFFIType hs_bindgen_529fe91b4c59e6ba_base

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
  RIP.unsafePerformIO hs_bindgen_529fe91b4c59e6ba

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_use_ssd@
foreign import ccall unsafe "hs_bindgen_93df14b332861087" hs_bindgen_93df14b332861087_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_use_ssd@
hs_bindgen_93df14b332861087 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_93df14b332861087 =
  RIP.fromFFIType hs_bindgen_93df14b332861087_base

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
  RIP.unsafePerformIO hs_bindgen_93df14b332861087

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_borders@
foreign import ccall unsafe "hs_bindgen_de43f50968a2d433" hs_bindgen_de43f50968a2d433_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_borders@
hs_bindgen_de43f50968a2d433 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_de43f50968a2d433 =
  RIP.fromFFIType hs_bindgen_de43f50968a2d433_base

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
  RIP.unsafePerformIO hs_bindgen_de43f50968a2d433

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_tiled@
foreign import ccall unsafe "hs_bindgen_e8319168451043db" hs_bindgen_e8319168451043db_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_tiled@
hs_bindgen_e8319168451043db :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_e8319168451043db =
  RIP.fromFFIType hs_bindgen_e8319168451043db_base

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
  RIP.unsafePerformIO hs_bindgen_e8319168451043db

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_decoration_above@
foreign import ccall unsafe "hs_bindgen_fd7272f64ed62fa1" hs_bindgen_fd7272f64ed62fa1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_decoration_above@
hs_bindgen_fd7272f64ed62fa1 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr River_decoration_v1)))
hs_bindgen_fd7272f64ed62fa1 =
  RIP.fromFFIType hs_bindgen_fd7272f64ed62fa1_base

{-# NOINLINE river_window_v1_get_decoration_above #-}
{-|

  > iface_river_window_v1

  Create a decoration surface and assign the river_decoration_v1 role to the surface. The created decoration is placed above the window in rendering order, see the description of river_decoration_v1.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_v1_get_decoration_above@

__defined at:__ @river-window-management-v1-client-protocol.h 1748:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_decoration_above :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr River_decoration_v1))
river_window_v1_get_decoration_above =
  RIP.unsafePerformIO hs_bindgen_fd7272f64ed62fa1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_decoration_below@
foreign import ccall unsafe "hs_bindgen_25968728e95a7ecf" hs_bindgen_25968728e95a7ecf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_get_decoration_below@
hs_bindgen_25968728e95a7ecf :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr River_decoration_v1)))
hs_bindgen_25968728e95a7ecf =
  RIP.fromFFIType hs_bindgen_25968728e95a7ecf_base

{-# NOINLINE river_window_v1_get_decoration_below #-}
{-|

  > iface_river_window_v1

  Create a decoration surface and assign the river_decoration_v1 role to the surface. The created decoration is placed below the window in rendering order, see the description of river_decoration_v1.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error.

__C declaration:__ @river_window_v1_get_decoration_below@

__defined at:__ @river-window-management-v1-client-protocol.h 1769:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_decoration_below :: RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr River_decoration_v1))
river_window_v1_get_decoration_below =
  RIP.unsafePerformIO hs_bindgen_25968728e95a7ecf

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_resize_start@
foreign import ccall unsafe "hs_bindgen_4bea85a9b6658297" hs_bindgen_4bea85a9b6658297_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_resize_start@
hs_bindgen_4bea85a9b6658297 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_4bea85a9b6658297 =
  RIP.fromFFIType hs_bindgen_4bea85a9b6658297_base

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
  RIP.unsafePerformIO hs_bindgen_4bea85a9b6658297

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_resize_end@
foreign import ccall unsafe "hs_bindgen_7bf77d2b2c15dbf5" hs_bindgen_7bf77d2b2c15dbf5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_resize_end@
hs_bindgen_7bf77d2b2c15dbf5 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_7bf77d2b2c15dbf5 =
  RIP.fromFFIType hs_bindgen_7bf77d2b2c15dbf5_base

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
  RIP.unsafePerformIO hs_bindgen_7bf77d2b2c15dbf5

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_capabilities@
foreign import ccall unsafe "hs_bindgen_25d47f849a7867c1" hs_bindgen_25d47f849a7867c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_capabilities@
hs_bindgen_25d47f849a7867c1 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_25d47f849a7867c1 =
  RIP.fromFFIType hs_bindgen_25d47f849a7867c1_base

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
  RIP.unsafePerformIO hs_bindgen_25d47f849a7867c1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_maximized@
foreign import ccall unsafe "hs_bindgen_0349805cea8f1226" hs_bindgen_0349805cea8f1226_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_maximized@
hs_bindgen_0349805cea8f1226 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_0349805cea8f1226 =
  RIP.fromFFIType hs_bindgen_0349805cea8f1226_base

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
  RIP.unsafePerformIO hs_bindgen_0349805cea8f1226

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_unmaximized@
foreign import ccall unsafe "hs_bindgen_6a63dfea89af54f4" hs_bindgen_6a63dfea89af54f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_unmaximized@
hs_bindgen_6a63dfea89af54f4 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_6a63dfea89af54f4 =
  RIP.fromFFIType hs_bindgen_6a63dfea89af54f4_base

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
  RIP.unsafePerformIO hs_bindgen_6a63dfea89af54f4

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_fullscreen@
foreign import ccall unsafe "hs_bindgen_8d7d0d4a3c3f7410" hs_bindgen_8d7d0d4a3c3f7410_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_fullscreen@
hs_bindgen_8d7d0d4a3c3f7410 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_8d7d0d4a3c3f7410 =
  RIP.fromFFIType hs_bindgen_8d7d0d4a3c3f7410_base

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
  RIP.unsafePerformIO hs_bindgen_8d7d0d4a3c3f7410

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_not_fullscreen@
foreign import ccall unsafe "hs_bindgen_b833d7dba9712592" hs_bindgen_b833d7dba9712592_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_inform_not_fullscreen@
hs_bindgen_b833d7dba9712592 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_b833d7dba9712592 =
  RIP.fromFFIType hs_bindgen_b833d7dba9712592_base

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
  RIP.unsafePerformIO hs_bindgen_b833d7dba9712592

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_fullscreen@
foreign import ccall unsafe "hs_bindgen_d6a3a4768d1af624" hs_bindgen_d6a3a4768d1af624_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_fullscreen@
hs_bindgen_d6a3a4768d1af624 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> (RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_d6a3a4768d1af624 =
  RIP.fromFFIType hs_bindgen_d6a3a4768d1af624_base

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
  RIP.unsafePerformIO hs_bindgen_d6a3a4768d1af624

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_exit_fullscreen@
foreign import ccall unsafe "hs_bindgen_0cd484f158b3b2c0" hs_bindgen_0cd484f158b3b2c0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_exit_fullscreen@
hs_bindgen_0cd484f158b3b2c0 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_0cd484f158b3b2c0 =
  RIP.fromFFIType hs_bindgen_0cd484f158b3b2c0_base

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
  RIP.unsafePerformIO hs_bindgen_0cd484f158b3b2c0

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_clip_box@
foreign import ccall unsafe "hs_bindgen_dcbc705d7cac19d8" hs_bindgen_dcbc705d7cac19d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_clip_box@
hs_bindgen_dcbc705d7cac19d8 :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_dcbc705d7cac19d8 =
  RIP.fromFFIType hs_bindgen_dcbc705d7cac19d8_base

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
  RIP.unsafePerformIO hs_bindgen_dcbc705d7cac19d8

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_content_clip_box@
foreign import ccall unsafe "hs_bindgen_c410b7cb8213240c" hs_bindgen_c410b7cb8213240c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_content_clip_box@
hs_bindgen_c410b7cb8213240c :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_c410b7cb8213240c =
  RIP.fromFFIType hs_bindgen_c410b7cb8213240c_base

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
  RIP.unsafePerformIO hs_bindgen_c410b7cb8213240c

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_dimension_bounds@
foreign import ccall unsafe "hs_bindgen_7d2cb54b66a6b9bd" hs_bindgen_7d2cb54b66a6b9bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_set_dimension_bounds@
hs_bindgen_7d2cb54b66a6b9bd :: IO (RIP.FunPtr ((RIP.Ptr River_window_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_7d2cb54b66a6b9bd =
  RIP.fromFFIType hs_bindgen_7d2cb54b66a6b9bd_base

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
  RIP.unsafePerformIO hs_bindgen_7d2cb54b66a6b9bd

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_ae4a8c3f62e52278" hs_bindgen_ae4a8c3f62e52278_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_set_user_data@
hs_bindgen_ae4a8c3f62e52278 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_ae4a8c3f62e52278 =
  RIP.fromFFIType hs_bindgen_ae4a8c3f62e52278_base

{-# NOINLINE river_decoration_v1_set_user_data #-}
{-|

  > iface_river_decoration_v1

__C declaration:__ @river_decoration_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2099:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_decoration_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_ae4a8c3f62e52278

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_313cb924d0d1f6ec" hs_bindgen_313cb924d0d1f6ec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_get_user_data@
hs_bindgen_313cb924d0d1f6ec :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_313cb924d0d1f6ec =
  RIP.fromFFIType hs_bindgen_313cb924d0d1f6ec_base

{-# NOINLINE river_decoration_v1_get_user_data #-}
{-|

  > iface_river_decoration_v1

__C declaration:__ @river_decoration_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2106:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO (RIP.Ptr RIP.Void))
river_decoration_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_313cb924d0d1f6ec

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_get_version@
foreign import ccall unsafe "hs_bindgen_508f508ff5d8301b" hs_bindgen_508f508ff5d8301b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_get_version@
hs_bindgen_508f508ff5d8301b :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_508f508ff5d8301b =
  RIP.fromFFIType hs_bindgen_508f508ff5d8301b_base

{-# NOINLINE river_decoration_v1_get_version #-}
{-| __C declaration:__ @river_decoration_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2112:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_decoration_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_508f508ff5d8301b

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_destroy@
foreign import ccall unsafe "hs_bindgen_22dd54d623f81af8" hs_bindgen_22dd54d623f81af8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_destroy@
hs_bindgen_22dd54d623f81af8 :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO ()))
hs_bindgen_22dd54d623f81af8 =
  RIP.fromFFIType hs_bindgen_22dd54d623f81af8_base

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
  RIP.unsafePerformIO hs_bindgen_22dd54d623f81af8

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_set_offset@
foreign import ccall unsafe "hs_bindgen_42cd747b15bc611a" hs_bindgen_42cd747b15bc611a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_set_offset@
hs_bindgen_42cd747b15bc611a :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_42cd747b15bc611a =
  RIP.fromFFIType hs_bindgen_42cd747b15bc611a_base

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
  RIP.unsafePerformIO hs_bindgen_42cd747b15bc611a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_sync_next_commit@
foreign import ccall unsafe "hs_bindgen_2aa13a7843184d2a" hs_bindgen_2aa13a7843184d2a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_sync_next_commit@
hs_bindgen_2aa13a7843184d2a :: IO (RIP.FunPtr ((RIP.Ptr River_decoration_v1) -> IO ()))
hs_bindgen_2aa13a7843184d2a =
  RIP.fromFFIType hs_bindgen_2aa13a7843184d2a_base

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
  RIP.unsafePerformIO hs_bindgen_2aa13a7843184d2a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_8ab6718efb925a51" hs_bindgen_8ab6718efb925a51_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_set_user_data@
hs_bindgen_8ab6718efb925a51 :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8ab6718efb925a51 =
  RIP.fromFFIType hs_bindgen_8ab6718efb925a51_base

{-# NOINLINE river_shell_surface_v1_set_user_data #-}
{-|

  > iface_river_shell_surface_v1

__C declaration:__ @river_shell_surface_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2204:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_shell_surface_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8ab6718efb925a51

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_51976234f2310655" hs_bindgen_51976234f2310655_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_user_data@
hs_bindgen_51976234f2310655 :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_51976234f2310655 =
  RIP.fromFFIType hs_bindgen_51976234f2310655_base

{-# NOINLINE river_shell_surface_v1_get_user_data #-}
{-|

  > iface_river_shell_surface_v1

__C declaration:__ @river_shell_surface_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2211:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr RIP.Void))
river_shell_surface_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_51976234f2310655

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_version@
foreign import ccall unsafe "hs_bindgen_31beaff462dda925" hs_bindgen_31beaff462dda925_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_version@
hs_bindgen_31beaff462dda925 :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_31beaff462dda925 =
  RIP.fromFFIType hs_bindgen_31beaff462dda925_base

{-# NOINLINE river_shell_surface_v1_get_version #-}
{-| __C declaration:__ @river_shell_surface_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2217:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_shell_surface_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_31beaff462dda925

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_destroy@
foreign import ccall unsafe "hs_bindgen_ce3e129bf36bc0d1" hs_bindgen_ce3e129bf36bc0d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_destroy@
hs_bindgen_ce3e129bf36bc0d1 :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_ce3e129bf36bc0d1 =
  RIP.fromFFIType hs_bindgen_ce3e129bf36bc0d1_base

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
  RIP.unsafePerformIO hs_bindgen_ce3e129bf36bc0d1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_node@
foreign import ccall unsafe "hs_bindgen_b2575293066aa811" hs_bindgen_b2575293066aa811_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_get_node@
hs_bindgen_b2575293066aa811 :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO (RIP.Ptr River_node_v1)))
hs_bindgen_b2575293066aa811 =
  RIP.fromFFIType hs_bindgen_b2575293066aa811_base

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
  RIP.unsafePerformIO hs_bindgen_b2575293066aa811

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_sync_next_commit@
foreign import ccall unsafe "hs_bindgen_f0eab75df53bb73b" hs_bindgen_f0eab75df53bb73b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_sync_next_commit@
hs_bindgen_f0eab75df53bb73b :: IO (RIP.FunPtr ((RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_f0eab75df53bb73b =
  RIP.fromFFIType hs_bindgen_f0eab75df53bb73b_base

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
  RIP.unsafePerformIO hs_bindgen_f0eab75df53bb73b

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_379b73f27337b819" hs_bindgen_379b73f27337b819_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_set_user_data@
hs_bindgen_379b73f27337b819 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_379b73f27337b819 =
  RIP.fromFFIType hs_bindgen_379b73f27337b819_base

{-# NOINLINE river_node_v1_set_user_data #-}
{-|

  > iface_river_node_v1

__C declaration:__ @river_node_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2310:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_node_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_379b73f27337b819

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_06b65dff1170baf6" hs_bindgen_06b65dff1170baf6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_get_user_data@
hs_bindgen_06b65dff1170baf6 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_06b65dff1170baf6 =
  RIP.fromFFIType hs_bindgen_06b65dff1170baf6_base

{-# NOINLINE river_node_v1_get_user_data #-}
{-|

  > iface_river_node_v1

__C declaration:__ @river_node_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2317:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO (RIP.Ptr RIP.Void))
river_node_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_06b65dff1170baf6

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_get_version@
foreign import ccall unsafe "hs_bindgen_737a26a65b5079d5" hs_bindgen_737a26a65b5079d5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_get_version@
hs_bindgen_737a26a65b5079d5 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_737a26a65b5079d5 =
  RIP.fromFFIType hs_bindgen_737a26a65b5079d5_base

{-# NOINLINE river_node_v1_get_version #-}
{-| __C declaration:__ @river_node_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2323:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_node_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_737a26a65b5079d5

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_destroy@
foreign import ccall unsafe "hs_bindgen_b4fb3ea38148ee7f" hs_bindgen_b4fb3ea38148ee7f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_destroy@
hs_bindgen_b4fb3ea38148ee7f :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_b4fb3ea38148ee7f =
  RIP.fromFFIType hs_bindgen_b4fb3ea38148ee7f_base

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
  RIP.unsafePerformIO hs_bindgen_b4fb3ea38148ee7f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_set_position@
foreign import ccall unsafe "hs_bindgen_d644af49505c8521" hs_bindgen_d644af49505c8521_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_set_position@
hs_bindgen_d644af49505c8521 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_d644af49505c8521 =
  RIP.fromFFIType hs_bindgen_d644af49505c8521_base

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
  RIP.unsafePerformIO hs_bindgen_d644af49505c8521

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_top@
foreign import ccall unsafe "hs_bindgen_5e062acc5d4e8f8c" hs_bindgen_5e062acc5d4e8f8c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_top@
hs_bindgen_5e062acc5d4e8f8c :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_5e062acc5d4e8f8c =
  RIP.fromFFIType hs_bindgen_5e062acc5d4e8f8c_base

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
  RIP.unsafePerformIO hs_bindgen_5e062acc5d4e8f8c

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_bottom@
foreign import ccall unsafe "hs_bindgen_8a98306890edc939" hs_bindgen_8a98306890edc939_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_bottom@
hs_bindgen_8a98306890edc939 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_8a98306890edc939 =
  RIP.fromFFIType hs_bindgen_8a98306890edc939_base

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
  RIP.unsafePerformIO hs_bindgen_8a98306890edc939

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_above@
foreign import ccall unsafe "hs_bindgen_a7c2c34c3f394f8a" hs_bindgen_a7c2c34c3f394f8a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_above@
hs_bindgen_a7c2c34c3f394f8a :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_a7c2c34c3f394f8a =
  RIP.fromFFIType hs_bindgen_a7c2c34c3f394f8a_base

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
  RIP.unsafePerformIO hs_bindgen_a7c2c34c3f394f8a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_below@
foreign import ccall unsafe "hs_bindgen_be7257aea5225b85" hs_bindgen_be7257aea5225b85_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_place_below@
hs_bindgen_be7257aea5225b85 :: IO (RIP.FunPtr ((RIP.Ptr River_node_v1) -> (RIP.Ptr River_node_v1) -> IO ()))
hs_bindgen_be7257aea5225b85 =
  RIP.fromFFIType hs_bindgen_be7257aea5225b85_base

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
  RIP.unsafePerformIO hs_bindgen_be7257aea5225b85

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_87365ffa53860a9e" hs_bindgen_87365ffa53860a9e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_add_listener@
hs_bindgen_87365ffa53860a9e :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> (PtrConst.PtrConst River_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_87365ffa53860a9e =
  RIP.fromFFIType hs_bindgen_87365ffa53860a9e_base

{-# NOINLINE river_output_v1_add_listener #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2573:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> (PtrConst.PtrConst River_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_output_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_87365ffa53860a9e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_416ad240a57f3695" hs_bindgen_416ad240a57f3695_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_set_user_data@
hs_bindgen_416ad240a57f3695 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_416ad240a57f3695 =
  RIP.fromFFIType hs_bindgen_416ad240a57f3695_base

{-# NOINLINE river_output_v1_set_user_data #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2611:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_output_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_416ad240a57f3695

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_fb05558286b316f8" hs_bindgen_fb05558286b316f8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_get_user_data@
hs_bindgen_fb05558286b316f8 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_fb05558286b316f8 =
  RIP.fromFFIType hs_bindgen_fb05558286b316f8_base

{-# NOINLINE river_output_v1_get_user_data #-}
{-|

  > iface_river_output_v1

__C declaration:__ @river_output_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2618:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO (RIP.Ptr RIP.Void))
river_output_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_fb05558286b316f8

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8b9dac8e15696e99" hs_bindgen_8b9dac8e15696e99_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_get_version@
hs_bindgen_8b9dac8e15696e99 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8b9dac8e15696e99 =
  RIP.fromFFIType hs_bindgen_8b9dac8e15696e99_base

{-# NOINLINE river_output_v1_get_version #-}
{-| __C declaration:__ @river_output_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2624:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_output_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_8b9dac8e15696e99

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_603b1ded64e5b982" hs_bindgen_603b1ded64e5b982_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_destroy@
hs_bindgen_603b1ded64e5b982 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> IO ()))
hs_bindgen_603b1ded64e5b982 =
  RIP.fromFFIType hs_bindgen_603b1ded64e5b982_base

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
  RIP.unsafePerformIO hs_bindgen_603b1ded64e5b982

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_set_presentation_mode@
foreign import ccall unsafe "hs_bindgen_00f69bc4e598fdb3" hs_bindgen_00f69bc4e598fdb3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_set_presentation_mode@
hs_bindgen_00f69bc4e598fdb3 :: IO (RIP.FunPtr ((RIP.Ptr River_output_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_00f69bc4e598fdb3 =
  RIP.fromFFIType hs_bindgen_00f69bc4e598fdb3_base

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
  RIP.unsafePerformIO hs_bindgen_00f69bc4e598fdb3

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_bc3cd08538facf09" hs_bindgen_bc3cd08538facf09_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_add_listener@
hs_bindgen_bc3cd08538facf09 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst River_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_bc3cd08538facf09 =
  RIP.fromFFIType hs_bindgen_bc3cd08538facf09_base

{-# NOINLINE river_seat_v1_add_listener #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 2885:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst River_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_bc3cd08538facf09

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_ba6a6ec7bc5ecfa8" hs_bindgen_ba6a6ec7bc5ecfa8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_set_user_data@
hs_bindgen_ba6a6ec7bc5ecfa8 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_ba6a6ec7bc5ecfa8 =
  RIP.fromFFIType hs_bindgen_ba6a6ec7bc5ecfa8_base

{-# NOINLINE river_seat_v1_set_user_data #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2978:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_ba6a6ec7bc5ecfa8

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e8c868e781d83b41" hs_bindgen_e8c868e781d83b41_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_user_data@
hs_bindgen_e8c868e781d83b41 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_e8c868e781d83b41 =
  RIP.fromFFIType hs_bindgen_e8c868e781d83b41_base

{-# NOINLINE river_seat_v1_get_user_data #-}
{-|

  > iface_river_seat_v1

__C declaration:__ @river_seat_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 2985:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_e8c868e781d83b41

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_55437849c6ed96d1" hs_bindgen_55437849c6ed96d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_version@
hs_bindgen_55437849c6ed96d1 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_55437849c6ed96d1 =
  RIP.fromFFIType hs_bindgen_55437849c6ed96d1_base

{-# NOINLINE river_seat_v1_get_version #-}
{-| __C declaration:__ @river_seat_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2991:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_55437849c6ed96d1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_36ac8ee70bdfa676" hs_bindgen_36ac8ee70bdfa676_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_destroy@
hs_bindgen_36ac8ee70bdfa676 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_36ac8ee70bdfa676 =
  RIP.fromFFIType hs_bindgen_36ac8ee70bdfa676_base

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
  RIP.unsafePerformIO hs_bindgen_36ac8ee70bdfa676

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_focus_window@
foreign import ccall unsafe "hs_bindgen_ee66c59069fe4d05" hs_bindgen_ee66c59069fe4d05_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_focus_window@
hs_bindgen_ee66c59069fe4d05 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr River_window_v1) -> IO ()))
hs_bindgen_ee66c59069fe4d05 =
  RIP.fromFFIType hs_bindgen_ee66c59069fe4d05_base

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
  RIP.unsafePerformIO hs_bindgen_ee66c59069fe4d05

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_focus_shell_surface@
foreign import ccall unsafe "hs_bindgen_13a3f30e8df8f43c" hs_bindgen_13a3f30e8df8f43c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_focus_shell_surface@
hs_bindgen_13a3f30e8df8f43c :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (RIP.Ptr River_shell_surface_v1) -> IO ()))
hs_bindgen_13a3f30e8df8f43c =
  RIP.fromFFIType hs_bindgen_13a3f30e8df8f43c_base

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
  RIP.unsafePerformIO hs_bindgen_13a3f30e8df8f43c

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_clear_focus@
foreign import ccall unsafe "hs_bindgen_7bbfc3a21d41e5a1" hs_bindgen_7bbfc3a21d41e5a1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_clear_focus@
hs_bindgen_7bbfc3a21d41e5a1 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_7bbfc3a21d41e5a1 =
  RIP.fromFFIType hs_bindgen_7bbfc3a21d41e5a1_base

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
  RIP.unsafePerformIO hs_bindgen_7bbfc3a21d41e5a1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_op_start_pointer@
foreign import ccall unsafe "hs_bindgen_997fb8606abce5bd" hs_bindgen_997fb8606abce5bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_op_start_pointer@
hs_bindgen_997fb8606abce5bd :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_997fb8606abce5bd =
  RIP.fromFFIType hs_bindgen_997fb8606abce5bd_base

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
  RIP.unsafePerformIO hs_bindgen_997fb8606abce5bd

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_op_end@
foreign import ccall unsafe "hs_bindgen_8c386e0b75d06beb" hs_bindgen_8c386e0b75d06beb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_op_end@
hs_bindgen_8c386e0b75d06beb :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> IO ()))
hs_bindgen_8c386e0b75d06beb =
  RIP.fromFFIType hs_bindgen_8c386e0b75d06beb_base

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
  RIP.unsafePerformIO hs_bindgen_8c386e0b75d06beb

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_pointer_binding@
foreign import ccall unsafe "hs_bindgen_aeaa6f3e998bc5c0" hs_bindgen_aeaa6f3e998bc5c0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_get_pointer_binding@
hs_bindgen_aeaa6f3e998bc5c0 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_pointer_binding_v1)))
hs_bindgen_aeaa6f3e998bc5c0 =
  RIP.fromFFIType hs_bindgen_aeaa6f3e998bc5c0_base

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
  RIP.unsafePerformIO hs_bindgen_aeaa6f3e998bc5c0

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_set_xcursor_theme@
foreign import ccall unsafe "hs_bindgen_f3143defa75bdeab" hs_bindgen_f3143defa75bdeab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_set_xcursor_theme@
hs_bindgen_f3143defa75bdeab :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_f3143defa75bdeab =
  RIP.fromFFIType hs_bindgen_f3143defa75bdeab_base

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
  RIP.unsafePerformIO hs_bindgen_f3143defa75bdeab

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_pointer_warp@
foreign import ccall unsafe "hs_bindgen_331735df9980e3d6" hs_bindgen_331735df9980e3d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_pointer_warp@
hs_bindgen_331735df9980e3d6 :: IO (RIP.FunPtr ((RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_331735df9980e3d6 =
  RIP.fromFFIType hs_bindgen_331735df9980e3d6_base

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
  RIP.unsafePerformIO hs_bindgen_331735df9980e3d6

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_ad082270d7d78ec0" hs_bindgen_ad082270d7d78ec0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_add_listener@
hs_bindgen_ad082270d7d78ec0 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (PtrConst.PtrConst River_pointer_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_ad082270d7d78ec0 =
  RIP.fromFFIType hs_bindgen_ad082270d7d78ec0_base

{-# NOINLINE river_pointer_binding_v1_add_listener #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_add_listener@

__defined at:__ @river-window-management-v1-client-protocol.h 3220:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (PtrConst.PtrConst River_pointer_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_pointer_binding_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_ad082270d7d78ec0

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_de40912764aa21d4" hs_bindgen_de40912764aa21d4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_set_user_data@
hs_bindgen_de40912764aa21d4 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_de40912764aa21d4 =
  RIP.fromFFIType hs_bindgen_de40912764aa21d4_base

{-# NOINLINE river_pointer_binding_v1_set_user_data #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_set_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 3255:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_pointer_binding_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_de40912764aa21d4

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_c6424e4ea6421af4" hs_bindgen_c6424e4ea6421af4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_get_user_data@
hs_bindgen_c6424e4ea6421af4 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c6424e4ea6421af4 =
  RIP.fromFFIType hs_bindgen_c6424e4ea6421af4_base

{-# NOINLINE river_pointer_binding_v1_get_user_data #-}
{-|

  > iface_river_pointer_binding_v1

__C declaration:__ @river_pointer_binding_v1_get_user_data@

__defined at:__ @river-window-management-v1-client-protocol.h 3262:1@

__exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO (RIP.Ptr RIP.Void))
river_pointer_binding_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c6424e4ea6421af4

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_7a1fc26423d51651" hs_bindgen_7a1fc26423d51651_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_get_version@
hs_bindgen_7a1fc26423d51651 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7a1fc26423d51651 =
  RIP.fromFFIType hs_bindgen_7a1fc26423d51651_base

{-# NOINLINE river_pointer_binding_v1_get_version #-}
{-| __C declaration:__ @river_pointer_binding_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 3268:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_pointer_binding_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_7a1fc26423d51651

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_c08b3d4a4821668d" hs_bindgen_c08b3d4a4821668d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_destroy@
hs_bindgen_c08b3d4a4821668d :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_c08b3d4a4821668d =
  RIP.fromFFIType hs_bindgen_c08b3d4a4821668d_base

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
  RIP.unsafePerformIO hs_bindgen_c08b3d4a4821668d

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_303bf95a958f430e" hs_bindgen_303bf95a958f430e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_enable@
hs_bindgen_303bf95a958f430e :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_303bf95a958f430e =
  RIP.fromFFIType hs_bindgen_303bf95a958f430e_base

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
  RIP.unsafePerformIO hs_bindgen_303bf95a958f430e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_c0eeb6fc418d1029" hs_bindgen_c0eeb6fc418d1029_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_disable@
hs_bindgen_c0eeb6fc418d1029 :: IO (RIP.FunPtr ((RIP.Ptr River_pointer_binding_v1) -> IO ()))
hs_bindgen_c0eeb6fc418d1029 =
  RIP.fromFFIType hs_bindgen_c0eeb6fc418d1029_base

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
  RIP.unsafePerformIO hs_bindgen_c0eeb6fc418d1029

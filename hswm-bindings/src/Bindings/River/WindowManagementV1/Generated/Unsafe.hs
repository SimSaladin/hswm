{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.WindowManagementV1.Generated.Unsafe
    ( Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_stop
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_manage_finish
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_manage_dirty
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_render_finish
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_get_shell_surface
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_manager_v1_exit_session
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_close
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_get_node
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_propose_dimensions
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_hide
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_show
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_use_csd
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_use_ssd
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_set_borders
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_set_tiled
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_get_decoration_above
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_get_decoration_below
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_inform_resize_start
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_inform_resize_end
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_set_capabilities
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_inform_maximized
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_inform_unmaximized
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_inform_fullscreen
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_inform_not_fullscreen
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_fullscreen
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_exit_fullscreen
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_set_clip_box
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_set_content_clip_box
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_window_v1_set_dimension_bounds
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_decoration_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_decoration_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_decoration_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_decoration_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_decoration_v1_set_offset
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_decoration_v1_sync_next_commit
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_shell_surface_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_shell_surface_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_shell_surface_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_shell_surface_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_shell_surface_v1_get_node
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_shell_surface_v1_sync_next_commit
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_set_position
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_place_top
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_place_bottom
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_place_above
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_node_v1_place_below
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_output_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_output_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_output_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_output_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_output_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_output_v1_set_presentation_mode
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_focus_window
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_focus_shell_surface
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_clear_focus
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_op_start_pointer
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_op_end
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_get_pointer_binding
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_set_xcursor_theme
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_seat_v1_pointer_warp
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_pointer_binding_v1_add_listener
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_pointer_binding_v1_set_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_pointer_binding_v1_get_user_data
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_pointer_binding_v1_get_version
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_pointer_binding_v1_destroy
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_pointer_binding_v1_enable
    , Bindings.River.WindowManagementV1.Generated.Unsafe.river_pointer_binding_v1_disable
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
  , "signed int hs_bindgen_7d416bd42fbb9c6f ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct river_window_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_228e3effe14eaf20 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_window_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0892a69ae0975ab9 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_95f88e1c6996580a ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_425def4db0c7faad ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_2093f1de7c2c5cf8 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_948381f2456e9858 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_manage_finish)(arg1);"
  , "}"
  , "void hs_bindgen_2e95a512868b750b ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_manage_dirty)(arg1);"
  , "}"
  , "void hs_bindgen_e38ffe28ceb05220 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_render_finish)(arg1);"
  , "}"
  , "struct river_shell_surface_v1 *hs_bindgen_e3a43154c26f560d ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_shell_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_84f4b13c7e42cf58 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_exit_session)(arg1);"
  , "}"
  , "signed int hs_bindgen_5ed0c595c1255122 ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_window_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_window_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a051d3dfa4e9bc7e ("
  , "  struct river_window_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b11a70efa6db7bef ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3bd7979ab7925d3a ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_cc2b5ec419a47a1a ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_8fefede897756af5 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_close)(arg1);"
  , "}"
  , "struct river_node_v1 *hs_bindgen_179dc2f73e587cce ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_node)(arg1);"
  , "}"
  , "void hs_bindgen_f568d1810e7d0148 ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_window_v1_propose_dimensions)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ec335d8ca12c5cb6 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_hide)(arg1);"
  , "}"
  , "void hs_bindgen_efc76ab9e577cd07 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_show)(arg1);"
  , "}"
  , "void hs_bindgen_9692f7fb8129dc2a ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_use_csd)(arg1);"
  , "}"
  , "void hs_bindgen_1ac185380fe73f3a ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_use_ssd)(arg1);"
  , "}"
  , "void hs_bindgen_8e2864f6eb0bc094 ("
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
  , "void hs_bindgen_262832aba15e4d50 ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_tiled)(arg1, arg2);"
  , "}"
  , "struct river_decoration_v1 *hs_bindgen_4de74a3f6f5b753f ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_v1_get_decoration_above)(arg1, arg2);"
  , "}"
  , "struct river_decoration_v1 *hs_bindgen_76b5c99640c1e15c ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_v1_get_decoration_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_84b885f596efae78 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_resize_start)(arg1);"
  , "}"
  , "void hs_bindgen_b405fa7a0002a6b3 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_resize_end)(arg1);"
  , "}"
  , "void hs_bindgen_bb79ec6d92f2bd3f ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_capabilities)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e5986623b2723181 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_maximized)(arg1);"
  , "}"
  , "void hs_bindgen_4cbe3665bb1211cb ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_unmaximized)(arg1);"
  , "}"
  , "void hs_bindgen_5083afb7c0363ef2 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_e5c901ad329b8db1 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_not_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_3add8585096bbe73 ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  (river_window_v1_fullscreen)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_fcb41ceb223a8482 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_exit_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_24986b7169e17e79 ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_window_v1_set_clip_box)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_79aec00e0ae45edb ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_window_v1_set_content_clip_box)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_9a23af07212ea980 ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_window_v1_set_dimension_bounds)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6509febd969a9728 ("
  , "  struct river_decoration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_decoration_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_faf1c7275b8c2dc0 ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_decoration_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_25d80749ea210585 ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_decoration_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_0e12d32d06aa9ddc ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  (river_decoration_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f0ab3278370a3c23 ("
  , "  struct river_decoration_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_decoration_v1_set_offset)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_3e0ea12e33dca8c7 ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  (river_decoration_v1_sync_next_commit)(arg1);"
  , "}"
  , "void hs_bindgen_dc5e452cdee587f0 ("
  , "  struct river_shell_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e9d2b18d99b993b9 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_299891a4dd0f0d67 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4f390ec4e76494d7 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_destroy)(arg1);"
  , "}"
  , "struct river_node_v1 *hs_bindgen_f41cd84442ae850e ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_node)(arg1);"
  , "}"
  , "void hs_bindgen_4016d3f037ed69c3 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_sync_next_commit)(arg1);"
  , "}"
  , "void hs_bindgen_3d11f598b46edb52 ("
  , "  struct river_node_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_77f0fde5de15920e ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_node_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_25488b845bc07c77 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_node_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e366a8d8b6ba5387 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3a5840cf3fe09928 ("
  , "  struct river_node_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_node_v1_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_1c7c8526c670f196 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_place_top)(arg1);"
  , "}"
  , "void hs_bindgen_b2472c66603d06d6 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_place_bottom)(arg1);"
  , "}"
  , "void hs_bindgen_987fb09f9b2a6db5 ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ed7a7b7a3f8f4068 ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_place_below)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_0bb0b8387da1e5db ("
  , "  struct river_output_v1 *arg1,"
  , "  struct river_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_1983832140a56a72 ("
  , "  struct river_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_de99961db3e4de17 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c59f0b72001dabaa ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_1d286381baeb1117 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_df69b791f5b46587 ("
  , "  struct river_output_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_output_v1_set_presentation_mode)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_13c8c52dba83373f ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f7b1003a5d6166b1 ("
  , "  struct river_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_026a0b005032785a ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_05c617edc3cc9598 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_bc560b668fac2248 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_80a44338c6a89457 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_window_v1 *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_focus_window)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e77c822d17cdfc7f ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_shell_surface_v1 *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_focus_shell_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ae8230636be96d29 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_clear_focus)(arg1);"
  , "}"
  , "void hs_bindgen_39e840e9254345e0 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_op_start_pointer)(arg1);"
  , "}"
  , "void hs_bindgen_c74161a6fefa5dac ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_op_end)(arg1);"
  , "}"
  , "struct river_pointer_binding_v1 *hs_bindgen_f7080625de9a9443 ("
  , "  struct river_seat_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_pointer_binding)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5dfdb4b7e6ad8c21 ("
  , "  struct river_seat_v1 *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (river_seat_v1_set_xcursor_theme)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e9cdfa93371fb6c4 ("
  , "  struct river_seat_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_seat_v1_pointer_warp)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_cb7375581ac16b69 ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  struct river_pointer_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4f72212c363aa1f6 ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_4bd3ff869a2aab5e ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4e5e1dc126e40904 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_829cf15df0edaf85 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_c1d1c830ddace9b3 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_3966649ccac1415c ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_7d416bd42fbb9c6f" hs_bindgen_7d416bd42fbb9c6f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_add_listener@
hs_bindgen_7d416bd42fbb9c6f ::
     RIP.Ptr River_window_manager_v1
  -> PtrConst.PtrConst River_window_manager_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7d416bd42fbb9c6f =
  RIP.fromFFIType hs_bindgen_7d416bd42fbb9c6f_base

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
  hs_bindgen_7d416bd42fbb9c6f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_228e3effe14eaf20" hs_bindgen_228e3effe14eaf20_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_set_user_data@
hs_bindgen_228e3effe14eaf20 ::
     RIP.Ptr River_window_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_228e3effe14eaf20 =
  RIP.fromFFIType hs_bindgen_228e3effe14eaf20_base

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
  hs_bindgen_228e3effe14eaf20

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_0892a69ae0975ab9" hs_bindgen_0892a69ae0975ab9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_get_user_data@
hs_bindgen_0892a69ae0975ab9 ::
     RIP.Ptr River_window_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0892a69ae0975ab9 =
  RIP.fromFFIType hs_bindgen_0892a69ae0975ab9_base

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
  hs_bindgen_0892a69ae0975ab9

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_95f88e1c6996580a" hs_bindgen_95f88e1c6996580a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_get_version@
hs_bindgen_95f88e1c6996580a ::
     RIP.Ptr River_window_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_95f88e1c6996580a =
  RIP.fromFFIType hs_bindgen_95f88e1c6996580a_base

{-| __C declaration:__ @river_window_manager_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 708:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_version ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_window_manager_v1_get_version =
  hs_bindgen_95f88e1c6996580a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_425def4db0c7faad" hs_bindgen_425def4db0c7faad_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_stop@
hs_bindgen_425def4db0c7faad ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_425def4db0c7faad =
  RIP.fromFFIType hs_bindgen_425def4db0c7faad_base

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
  hs_bindgen_425def4db0c7faad

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_2093f1de7c2c5cf8" hs_bindgen_2093f1de7c2c5cf8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_destroy@
hs_bindgen_2093f1de7c2c5cf8 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_2093f1de7c2c5cf8 =
  RIP.fromFFIType hs_bindgen_2093f1de7c2c5cf8_base

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
  hs_bindgen_2093f1de7c2c5cf8

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_manage_finish@
foreign import ccall unsafe "hs_bindgen_948381f2456e9858" hs_bindgen_948381f2456e9858_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_manage_finish@
hs_bindgen_948381f2456e9858 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_948381f2456e9858 =
  RIP.fromFFIType hs_bindgen_948381f2456e9858_base

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
  hs_bindgen_948381f2456e9858

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_manage_dirty@
foreign import ccall unsafe "hs_bindgen_2e95a512868b750b" hs_bindgen_2e95a512868b750b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_manage_dirty@
hs_bindgen_2e95a512868b750b ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_2e95a512868b750b =
  RIP.fromFFIType hs_bindgen_2e95a512868b750b_base

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
  hs_bindgen_2e95a512868b750b

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_render_finish@
foreign import ccall unsafe "hs_bindgen_e38ffe28ceb05220" hs_bindgen_e38ffe28ceb05220_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_render_finish@
hs_bindgen_e38ffe28ceb05220 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_e38ffe28ceb05220 =
  RIP.fromFFIType hs_bindgen_e38ffe28ceb05220_base

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
  hs_bindgen_e38ffe28ceb05220

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_get_shell_surface@
foreign import ccall unsafe "hs_bindgen_e3a43154c26f560d" hs_bindgen_e3a43154c26f560d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_get_shell_surface@
hs_bindgen_e3a43154c26f560d ::
     RIP.Ptr River_window_manager_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr River_shell_surface_v1)
hs_bindgen_e3a43154c26f560d =
  RIP.fromFFIType hs_bindgen_e3a43154c26f560d_base

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
  hs_bindgen_e3a43154c26f560d

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_exit_session@
foreign import ccall unsafe "hs_bindgen_84f4b13c7e42cf58" hs_bindgen_84f4b13c7e42cf58_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_manager_v1_exit_session@
hs_bindgen_84f4b13c7e42cf58 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_84f4b13c7e42cf58 =
  RIP.fromFFIType hs_bindgen_84f4b13c7e42cf58_base

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
  hs_bindgen_84f4b13c7e42cf58

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_5ed0c595c1255122" hs_bindgen_5ed0c595c1255122_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_add_listener@
hs_bindgen_5ed0c595c1255122 ::
     RIP.Ptr River_window_v1
  -> PtrConst.PtrConst River_window_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_5ed0c595c1255122 =
  RIP.fromFFIType hs_bindgen_5ed0c595c1255122_base

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
  hs_bindgen_5ed0c595c1255122

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_a051d3dfa4e9bc7e" hs_bindgen_a051d3dfa4e9bc7e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_user_data@
hs_bindgen_a051d3dfa4e9bc7e ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a051d3dfa4e9bc7e =
  RIP.fromFFIType hs_bindgen_a051d3dfa4e9bc7e_base

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
  hs_bindgen_a051d3dfa4e9bc7e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_b11a70efa6db7bef" hs_bindgen_b11a70efa6db7bef_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_user_data@
hs_bindgen_b11a70efa6db7bef ::
     RIP.Ptr River_window_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b11a70efa6db7bef =
  RIP.fromFFIType hs_bindgen_b11a70efa6db7bef_base

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
  hs_bindgen_b11a70efa6db7bef

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_version@
foreign import ccall unsafe "hs_bindgen_3bd7979ab7925d3a" hs_bindgen_3bd7979ab7925d3a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_version@
hs_bindgen_3bd7979ab7925d3a ::
     RIP.Ptr River_window_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3bd7979ab7925d3a =
  RIP.fromFFIType hs_bindgen_3bd7979ab7925d3a_base

{-| __C declaration:__ @river_window_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 1502:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_version ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_window_v1_get_version =
  hs_bindgen_3bd7979ab7925d3a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_destroy@
foreign import ccall unsafe "hs_bindgen_cc2b5ec419a47a1a" hs_bindgen_cc2b5ec419a47a1a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_destroy@
hs_bindgen_cc2b5ec419a47a1a ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_cc2b5ec419a47a1a =
  RIP.fromFFIType hs_bindgen_cc2b5ec419a47a1a_base

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
river_window_v1_destroy = hs_bindgen_cc2b5ec419a47a1a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_close@
foreign import ccall unsafe "hs_bindgen_8fefede897756af5" hs_bindgen_8fefede897756af5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_close@
hs_bindgen_8fefede897756af5 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_8fefede897756af5 =
  RIP.fromFFIType hs_bindgen_8fefede897756af5_base

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
river_window_v1_close = hs_bindgen_8fefede897756af5

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_node@
foreign import ccall unsafe "hs_bindgen_179dc2f73e587cce" hs_bindgen_179dc2f73e587cce_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_node@
hs_bindgen_179dc2f73e587cce ::
     RIP.Ptr River_window_v1
  -> IO (RIP.Ptr River_node_v1)
hs_bindgen_179dc2f73e587cce =
  RIP.fromFFIType hs_bindgen_179dc2f73e587cce_base

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
  hs_bindgen_179dc2f73e587cce

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_propose_dimensions@
foreign import ccall unsafe "hs_bindgen_f568d1810e7d0148" hs_bindgen_f568d1810e7d0148_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_propose_dimensions@
hs_bindgen_f568d1810e7d0148 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f568d1810e7d0148 =
  RIP.fromFFIType hs_bindgen_f568d1810e7d0148_base

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
  hs_bindgen_f568d1810e7d0148

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_hide@
foreign import ccall unsafe "hs_bindgen_ec335d8ca12c5cb6" hs_bindgen_ec335d8ca12c5cb6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_hide@
hs_bindgen_ec335d8ca12c5cb6 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_ec335d8ca12c5cb6 =
  RIP.fromFFIType hs_bindgen_ec335d8ca12c5cb6_base

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
river_window_v1_hide = hs_bindgen_ec335d8ca12c5cb6

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_show@
foreign import ccall unsafe "hs_bindgen_efc76ab9e577cd07" hs_bindgen_efc76ab9e577cd07_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_show@
hs_bindgen_efc76ab9e577cd07 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_efc76ab9e577cd07 =
  RIP.fromFFIType hs_bindgen_efc76ab9e577cd07_base

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
river_window_v1_show = hs_bindgen_efc76ab9e577cd07

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_use_csd@
foreign import ccall unsafe "hs_bindgen_9692f7fb8129dc2a" hs_bindgen_9692f7fb8129dc2a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_use_csd@
hs_bindgen_9692f7fb8129dc2a ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_9692f7fb8129dc2a =
  RIP.fromFFIType hs_bindgen_9692f7fb8129dc2a_base

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
river_window_v1_use_csd = hs_bindgen_9692f7fb8129dc2a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_use_ssd@
foreign import ccall unsafe "hs_bindgen_1ac185380fe73f3a" hs_bindgen_1ac185380fe73f3a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_use_ssd@
hs_bindgen_1ac185380fe73f3a ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_1ac185380fe73f3a =
  RIP.fromFFIType hs_bindgen_1ac185380fe73f3a_base

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
river_window_v1_use_ssd = hs_bindgen_1ac185380fe73f3a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_borders@
foreign import ccall unsafe "hs_bindgen_8e2864f6eb0bc094" hs_bindgen_8e2864f6eb0bc094_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_borders@
hs_bindgen_8e2864f6eb0bc094 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_8e2864f6eb0bc094 =
  RIP.fromFFIType hs_bindgen_8e2864f6eb0bc094_base

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
  hs_bindgen_8e2864f6eb0bc094

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_tiled@
foreign import ccall unsafe "hs_bindgen_262832aba15e4d50" hs_bindgen_262832aba15e4d50_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_tiled@
hs_bindgen_262832aba15e4d50 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_262832aba15e4d50 =
  RIP.fromFFIType hs_bindgen_262832aba15e4d50_base

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
  hs_bindgen_262832aba15e4d50

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_decoration_above@
foreign import ccall unsafe "hs_bindgen_4de74a3f6f5b753f" hs_bindgen_4de74a3f6f5b753f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_decoration_above@
hs_bindgen_4de74a3f6f5b753f ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr River_decoration_v1)
hs_bindgen_4de74a3f6f5b753f =
  RIP.fromFFIType hs_bindgen_4de74a3f6f5b753f_base

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
  hs_bindgen_4de74a3f6f5b753f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_decoration_below@
foreign import ccall unsafe "hs_bindgen_76b5c99640c1e15c" hs_bindgen_76b5c99640c1e15c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_get_decoration_below@
hs_bindgen_76b5c99640c1e15c ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr River_decoration_v1)
hs_bindgen_76b5c99640c1e15c =
  RIP.fromFFIType hs_bindgen_76b5c99640c1e15c_base

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
  hs_bindgen_76b5c99640c1e15c

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_resize_start@
foreign import ccall unsafe "hs_bindgen_84b885f596efae78" hs_bindgen_84b885f596efae78_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_resize_start@
hs_bindgen_84b885f596efae78 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_84b885f596efae78 =
  RIP.fromFFIType hs_bindgen_84b885f596efae78_base

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
  hs_bindgen_84b885f596efae78

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_resize_end@
foreign import ccall unsafe "hs_bindgen_b405fa7a0002a6b3" hs_bindgen_b405fa7a0002a6b3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_resize_end@
hs_bindgen_b405fa7a0002a6b3 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_b405fa7a0002a6b3 =
  RIP.fromFFIType hs_bindgen_b405fa7a0002a6b3_base

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
  hs_bindgen_b405fa7a0002a6b3

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_capabilities@
foreign import ccall unsafe "hs_bindgen_bb79ec6d92f2bd3f" hs_bindgen_bb79ec6d92f2bd3f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_capabilities@
hs_bindgen_bb79ec6d92f2bd3f ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_bb79ec6d92f2bd3f =
  RIP.fromFFIType hs_bindgen_bb79ec6d92f2bd3f_base

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
  hs_bindgen_bb79ec6d92f2bd3f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_maximized@
foreign import ccall unsafe "hs_bindgen_e5986623b2723181" hs_bindgen_e5986623b2723181_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_maximized@
hs_bindgen_e5986623b2723181 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_e5986623b2723181 =
  RIP.fromFFIType hs_bindgen_e5986623b2723181_base

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
  hs_bindgen_e5986623b2723181

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_unmaximized@
foreign import ccall unsafe "hs_bindgen_4cbe3665bb1211cb" hs_bindgen_4cbe3665bb1211cb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_unmaximized@
hs_bindgen_4cbe3665bb1211cb ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_4cbe3665bb1211cb =
  RIP.fromFFIType hs_bindgen_4cbe3665bb1211cb_base

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
  hs_bindgen_4cbe3665bb1211cb

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_fullscreen@
foreign import ccall unsafe "hs_bindgen_5083afb7c0363ef2" hs_bindgen_5083afb7c0363ef2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_fullscreen@
hs_bindgen_5083afb7c0363ef2 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_5083afb7c0363ef2 =
  RIP.fromFFIType hs_bindgen_5083afb7c0363ef2_base

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
  hs_bindgen_5083afb7c0363ef2

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_not_fullscreen@
foreign import ccall unsafe "hs_bindgen_e5c901ad329b8db1" hs_bindgen_e5c901ad329b8db1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_inform_not_fullscreen@
hs_bindgen_e5c901ad329b8db1 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_e5c901ad329b8db1 =
  RIP.fromFFIType hs_bindgen_e5c901ad329b8db1_base

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
  hs_bindgen_e5c901ad329b8db1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_fullscreen@
foreign import ccall unsafe "hs_bindgen_3add8585096bbe73" hs_bindgen_3add8585096bbe73_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_fullscreen@
hs_bindgen_3add8585096bbe73 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr River_output_v1
  -> IO ()
hs_bindgen_3add8585096bbe73 =
  RIP.fromFFIType hs_bindgen_3add8585096bbe73_base

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
  hs_bindgen_3add8585096bbe73

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_exit_fullscreen@
foreign import ccall unsafe "hs_bindgen_fcb41ceb223a8482" hs_bindgen_fcb41ceb223a8482_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_exit_fullscreen@
hs_bindgen_fcb41ceb223a8482 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_fcb41ceb223a8482 =
  RIP.fromFFIType hs_bindgen_fcb41ceb223a8482_base

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
  hs_bindgen_fcb41ceb223a8482

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_clip_box@
foreign import ccall unsafe "hs_bindgen_24986b7169e17e79" hs_bindgen_24986b7169e17e79_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_clip_box@
hs_bindgen_24986b7169e17e79 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_24986b7169e17e79 =
  RIP.fromFFIType hs_bindgen_24986b7169e17e79_base

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
  hs_bindgen_24986b7169e17e79

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_content_clip_box@
foreign import ccall unsafe "hs_bindgen_79aec00e0ae45edb" hs_bindgen_79aec00e0ae45edb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_content_clip_box@
hs_bindgen_79aec00e0ae45edb ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_79aec00e0ae45edb =
  RIP.fromFFIType hs_bindgen_79aec00e0ae45edb_base

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
  hs_bindgen_79aec00e0ae45edb

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_dimension_bounds@
foreign import ccall unsafe "hs_bindgen_9a23af07212ea980" hs_bindgen_9a23af07212ea980_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_window_v1_set_dimension_bounds@
hs_bindgen_9a23af07212ea980 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_9a23af07212ea980 =
  RIP.fromFFIType hs_bindgen_9a23af07212ea980_base

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
  hs_bindgen_9a23af07212ea980

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_6509febd969a9728" hs_bindgen_6509febd969a9728_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_set_user_data@
hs_bindgen_6509febd969a9728 ::
     RIP.Ptr River_decoration_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6509febd969a9728 =
  RIP.fromFFIType hs_bindgen_6509febd969a9728_base

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
  hs_bindgen_6509febd969a9728

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_faf1c7275b8c2dc0" hs_bindgen_faf1c7275b8c2dc0_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_get_user_data@
hs_bindgen_faf1c7275b8c2dc0 ::
     RIP.Ptr River_decoration_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_faf1c7275b8c2dc0 =
  RIP.fromFFIType hs_bindgen_faf1c7275b8c2dc0_base

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
  hs_bindgen_faf1c7275b8c2dc0

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_get_version@
foreign import ccall unsafe "hs_bindgen_25d80749ea210585" hs_bindgen_25d80749ea210585_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_get_version@
hs_bindgen_25d80749ea210585 ::
     RIP.Ptr River_decoration_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_25d80749ea210585 =
  RIP.fromFFIType hs_bindgen_25d80749ea210585_base

{-| __C declaration:__ @river_decoration_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2112:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_version ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_decoration_v1_get_version =
  hs_bindgen_25d80749ea210585

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_destroy@
foreign import ccall unsafe "hs_bindgen_0e12d32d06aa9ddc" hs_bindgen_0e12d32d06aa9ddc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_destroy@
hs_bindgen_0e12d32d06aa9ddc ::
     RIP.Ptr River_decoration_v1
  -> IO ()
hs_bindgen_0e12d32d06aa9ddc =
  RIP.fromFFIType hs_bindgen_0e12d32d06aa9ddc_base

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
  hs_bindgen_0e12d32d06aa9ddc

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_set_offset@
foreign import ccall unsafe "hs_bindgen_f0ab3278370a3c23" hs_bindgen_f0ab3278370a3c23_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_set_offset@
hs_bindgen_f0ab3278370a3c23 ::
     RIP.Ptr River_decoration_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f0ab3278370a3c23 =
  RIP.fromFFIType hs_bindgen_f0ab3278370a3c23_base

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
  hs_bindgen_f0ab3278370a3c23

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_sync_next_commit@
foreign import ccall unsafe "hs_bindgen_3e0ea12e33dca8c7" hs_bindgen_3e0ea12e33dca8c7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_decoration_v1_sync_next_commit@
hs_bindgen_3e0ea12e33dca8c7 ::
     RIP.Ptr River_decoration_v1
  -> IO ()
hs_bindgen_3e0ea12e33dca8c7 =
  RIP.fromFFIType hs_bindgen_3e0ea12e33dca8c7_base

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
  hs_bindgen_3e0ea12e33dca8c7

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_dc5e452cdee587f0" hs_bindgen_dc5e452cdee587f0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_set_user_data@
hs_bindgen_dc5e452cdee587f0 ::
     RIP.Ptr River_shell_surface_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_dc5e452cdee587f0 =
  RIP.fromFFIType hs_bindgen_dc5e452cdee587f0_base

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
  hs_bindgen_dc5e452cdee587f0

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e9d2b18d99b993b9" hs_bindgen_e9d2b18d99b993b9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_get_user_data@
hs_bindgen_e9d2b18d99b993b9 ::
     RIP.Ptr River_shell_surface_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e9d2b18d99b993b9 =
  RIP.fromFFIType hs_bindgen_e9d2b18d99b993b9_base

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
  hs_bindgen_e9d2b18d99b993b9

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_get_version@
foreign import ccall unsafe "hs_bindgen_299891a4dd0f0d67" hs_bindgen_299891a4dd0f0d67_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_get_version@
hs_bindgen_299891a4dd0f0d67 ::
     RIP.Ptr River_shell_surface_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_299891a4dd0f0d67 =
  RIP.fromFFIType hs_bindgen_299891a4dd0f0d67_base

{-| __C declaration:__ @river_shell_surface_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2217:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_version ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_shell_surface_v1_get_version =
  hs_bindgen_299891a4dd0f0d67

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_destroy@
foreign import ccall unsafe "hs_bindgen_4f390ec4e76494d7" hs_bindgen_4f390ec4e76494d7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_destroy@
hs_bindgen_4f390ec4e76494d7 ::
     RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_4f390ec4e76494d7 =
  RIP.fromFFIType hs_bindgen_4f390ec4e76494d7_base

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
  hs_bindgen_4f390ec4e76494d7

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_get_node@
foreign import ccall unsafe "hs_bindgen_f41cd84442ae850e" hs_bindgen_f41cd84442ae850e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_get_node@
hs_bindgen_f41cd84442ae850e ::
     RIP.Ptr River_shell_surface_v1
  -> IO (RIP.Ptr River_node_v1)
hs_bindgen_f41cd84442ae850e =
  RIP.fromFFIType hs_bindgen_f41cd84442ae850e_base

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
  hs_bindgen_f41cd84442ae850e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_sync_next_commit@
foreign import ccall unsafe "hs_bindgen_4016d3f037ed69c3" hs_bindgen_4016d3f037ed69c3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_shell_surface_v1_sync_next_commit@
hs_bindgen_4016d3f037ed69c3 ::
     RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_4016d3f037ed69c3 =
  RIP.fromFFIType hs_bindgen_4016d3f037ed69c3_base

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
  hs_bindgen_4016d3f037ed69c3

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_3d11f598b46edb52" hs_bindgen_3d11f598b46edb52_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_set_user_data@
hs_bindgen_3d11f598b46edb52 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_3d11f598b46edb52 =
  RIP.fromFFIType hs_bindgen_3d11f598b46edb52_base

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
  hs_bindgen_3d11f598b46edb52

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_77f0fde5de15920e" hs_bindgen_77f0fde5de15920e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_get_user_data@
hs_bindgen_77f0fde5de15920e ::
     RIP.Ptr River_node_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_77f0fde5de15920e =
  RIP.fromFFIType hs_bindgen_77f0fde5de15920e_base

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
  hs_bindgen_77f0fde5de15920e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_get_version@
foreign import ccall unsafe "hs_bindgen_25488b845bc07c77" hs_bindgen_25488b845bc07c77_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_get_version@
hs_bindgen_25488b845bc07c77 ::
     RIP.Ptr River_node_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_25488b845bc07c77 =
  RIP.fromFFIType hs_bindgen_25488b845bc07c77_base

{-| __C declaration:__ @river_node_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2323:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_version ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_node_v1_get_version =
  hs_bindgen_25488b845bc07c77

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_destroy@
foreign import ccall unsafe "hs_bindgen_e366a8d8b6ba5387" hs_bindgen_e366a8d8b6ba5387_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_destroy@
hs_bindgen_e366a8d8b6ba5387 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_e366a8d8b6ba5387 =
  RIP.fromFFIType hs_bindgen_e366a8d8b6ba5387_base

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
river_node_v1_destroy = hs_bindgen_e366a8d8b6ba5387

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_set_position@
foreign import ccall unsafe "hs_bindgen_3a5840cf3fe09928" hs_bindgen_3a5840cf3fe09928_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_set_position@
hs_bindgen_3a5840cf3fe09928 ::
     RIP.Ptr River_node_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_3a5840cf3fe09928 =
  RIP.fromFFIType hs_bindgen_3a5840cf3fe09928_base

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
  hs_bindgen_3a5840cf3fe09928

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_place_top@
foreign import ccall unsafe "hs_bindgen_1c7c8526c670f196" hs_bindgen_1c7c8526c670f196_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_place_top@
hs_bindgen_1c7c8526c670f196 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_1c7c8526c670f196 =
  RIP.fromFFIType hs_bindgen_1c7c8526c670f196_base

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
river_node_v1_place_top = hs_bindgen_1c7c8526c670f196

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_place_bottom@
foreign import ccall unsafe "hs_bindgen_b2472c66603d06d6" hs_bindgen_b2472c66603d06d6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_place_bottom@
hs_bindgen_b2472c66603d06d6 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_b2472c66603d06d6 =
  RIP.fromFFIType hs_bindgen_b2472c66603d06d6_base

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
  hs_bindgen_b2472c66603d06d6

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_place_above@
foreign import ccall unsafe "hs_bindgen_987fb09f9b2a6db5" hs_bindgen_987fb09f9b2a6db5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_place_above@
hs_bindgen_987fb09f9b2a6db5 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_987fb09f9b2a6db5 =
  RIP.fromFFIType hs_bindgen_987fb09f9b2a6db5_base

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
  hs_bindgen_987fb09f9b2a6db5

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_place_below@
foreign import ccall unsafe "hs_bindgen_ed7a7b7a3f8f4068" hs_bindgen_ed7a7b7a3f8f4068_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_node_v1_place_below@
hs_bindgen_ed7a7b7a3f8f4068 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_ed7a7b7a3f8f4068 =
  RIP.fromFFIType hs_bindgen_ed7a7b7a3f8f4068_base

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
  hs_bindgen_ed7a7b7a3f8f4068

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_0bb0b8387da1e5db" hs_bindgen_0bb0b8387da1e5db_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_add_listener@
hs_bindgen_0bb0b8387da1e5db ::
     RIP.Ptr River_output_v1
  -> PtrConst.PtrConst River_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_0bb0b8387da1e5db =
  RIP.fromFFIType hs_bindgen_0bb0b8387da1e5db_base

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
  hs_bindgen_0bb0b8387da1e5db

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_1983832140a56a72" hs_bindgen_1983832140a56a72_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_set_user_data@
hs_bindgen_1983832140a56a72 ::
     RIP.Ptr River_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1983832140a56a72 =
  RIP.fromFFIType hs_bindgen_1983832140a56a72_base

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
  hs_bindgen_1983832140a56a72

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_de99961db3e4de17" hs_bindgen_de99961db3e4de17_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_get_user_data@
hs_bindgen_de99961db3e4de17 ::
     RIP.Ptr River_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_de99961db3e4de17 =
  RIP.fromFFIType hs_bindgen_de99961db3e4de17_base

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
  hs_bindgen_de99961db3e4de17

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_c59f0b72001dabaa" hs_bindgen_c59f0b72001dabaa_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_get_version@
hs_bindgen_c59f0b72001dabaa ::
     RIP.Ptr River_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c59f0b72001dabaa =
  RIP.fromFFIType hs_bindgen_c59f0b72001dabaa_base

{-| __C declaration:__ @river_output_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2624:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_version ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_output_v1_get_version =
  hs_bindgen_c59f0b72001dabaa

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_1d286381baeb1117" hs_bindgen_1d286381baeb1117_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_destroy@
hs_bindgen_1d286381baeb1117 ::
     RIP.Ptr River_output_v1
  -> IO ()
hs_bindgen_1d286381baeb1117 =
  RIP.fromFFIType hs_bindgen_1d286381baeb1117_base

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
river_output_v1_destroy = hs_bindgen_1d286381baeb1117

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_set_presentation_mode@
foreign import ccall unsafe "hs_bindgen_df69b791f5b46587" hs_bindgen_df69b791f5b46587_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_output_v1_set_presentation_mode@
hs_bindgen_df69b791f5b46587 ::
     RIP.Ptr River_output_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_df69b791f5b46587 =
  RIP.fromFFIType hs_bindgen_df69b791f5b46587_base

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
  hs_bindgen_df69b791f5b46587

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_13c8c52dba83373f" hs_bindgen_13c8c52dba83373f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_add_listener@
hs_bindgen_13c8c52dba83373f ::
     RIP.Ptr River_seat_v1
  -> PtrConst.PtrConst River_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_13c8c52dba83373f =
  RIP.fromFFIType hs_bindgen_13c8c52dba83373f_base

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
  hs_bindgen_13c8c52dba83373f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_f7b1003a5d6166b1" hs_bindgen_f7b1003a5d6166b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_set_user_data@
hs_bindgen_f7b1003a5d6166b1 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f7b1003a5d6166b1 =
  RIP.fromFFIType hs_bindgen_f7b1003a5d6166b1_base

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
  hs_bindgen_f7b1003a5d6166b1

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_026a0b005032785a" hs_bindgen_026a0b005032785a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_get_user_data@
hs_bindgen_026a0b005032785a ::
     RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_026a0b005032785a =
  RIP.fromFFIType hs_bindgen_026a0b005032785a_base

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
  hs_bindgen_026a0b005032785a

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_05c617edc3cc9598" hs_bindgen_05c617edc3cc9598_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_get_version@
hs_bindgen_05c617edc3cc9598 ::
     RIP.Ptr River_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_05c617edc3cc9598 =
  RIP.fromFFIType hs_bindgen_05c617edc3cc9598_base

{-| __C declaration:__ @river_seat_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2991:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_version ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_seat_v1_get_version =
  hs_bindgen_05c617edc3cc9598

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_bc560b668fac2248" hs_bindgen_bc560b668fac2248_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_destroy@
hs_bindgen_bc560b668fac2248 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_bc560b668fac2248 =
  RIP.fromFFIType hs_bindgen_bc560b668fac2248_base

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
river_seat_v1_destroy = hs_bindgen_bc560b668fac2248

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_focus_window@
foreign import ccall unsafe "hs_bindgen_80a44338c6a89457" hs_bindgen_80a44338c6a89457_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_focus_window@
hs_bindgen_80a44338c6a89457 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_80a44338c6a89457 =
  RIP.fromFFIType hs_bindgen_80a44338c6a89457_base

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
  hs_bindgen_80a44338c6a89457

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_focus_shell_surface@
foreign import ccall unsafe "hs_bindgen_e77c822d17cdfc7f" hs_bindgen_e77c822d17cdfc7f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_focus_shell_surface@
hs_bindgen_e77c822d17cdfc7f ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_e77c822d17cdfc7f =
  RIP.fromFFIType hs_bindgen_e77c822d17cdfc7f_base

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
  hs_bindgen_e77c822d17cdfc7f

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_clear_focus@
foreign import ccall unsafe "hs_bindgen_ae8230636be96d29" hs_bindgen_ae8230636be96d29_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_clear_focus@
hs_bindgen_ae8230636be96d29 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_ae8230636be96d29 =
  RIP.fromFFIType hs_bindgen_ae8230636be96d29_base

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
  hs_bindgen_ae8230636be96d29

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_op_start_pointer@
foreign import ccall unsafe "hs_bindgen_39e840e9254345e0" hs_bindgen_39e840e9254345e0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_op_start_pointer@
hs_bindgen_39e840e9254345e0 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_39e840e9254345e0 =
  RIP.fromFFIType hs_bindgen_39e840e9254345e0_base

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
  hs_bindgen_39e840e9254345e0

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_op_end@
foreign import ccall unsafe "hs_bindgen_c74161a6fefa5dac" hs_bindgen_c74161a6fefa5dac_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_op_end@
hs_bindgen_c74161a6fefa5dac ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_c74161a6fefa5dac =
  RIP.fromFFIType hs_bindgen_c74161a6fefa5dac_base

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
river_seat_v1_op_end = hs_bindgen_c74161a6fefa5dac

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_get_pointer_binding@
foreign import ccall unsafe "hs_bindgen_f7080625de9a9443" hs_bindgen_f7080625de9a9443_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_get_pointer_binding@
hs_bindgen_f7080625de9a9443 ::
     RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_pointer_binding_v1)
hs_bindgen_f7080625de9a9443 =
  RIP.fromFFIType hs_bindgen_f7080625de9a9443_base

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
  hs_bindgen_f7080625de9a9443

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_set_xcursor_theme@
foreign import ccall unsafe "hs_bindgen_5dfdb4b7e6ad8c21" hs_bindgen_5dfdb4b7e6ad8c21_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_set_xcursor_theme@
hs_bindgen_5dfdb4b7e6ad8c21 ::
     RIP.Ptr River_seat_v1
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_5dfdb4b7e6ad8c21 =
  RIP.fromFFIType hs_bindgen_5dfdb4b7e6ad8c21_base

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
  hs_bindgen_5dfdb4b7e6ad8c21

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_pointer_warp@
foreign import ccall unsafe "hs_bindgen_e9cdfa93371fb6c4" hs_bindgen_e9cdfa93371fb6c4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_seat_v1_pointer_warp@
hs_bindgen_e9cdfa93371fb6c4 ::
     RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_e9cdfa93371fb6c4 =
  RIP.fromFFIType hs_bindgen_e9cdfa93371fb6c4_base

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
  hs_bindgen_e9cdfa93371fb6c4

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_cb7375581ac16b69" hs_bindgen_cb7375581ac16b69_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_add_listener@
hs_bindgen_cb7375581ac16b69 ::
     RIP.Ptr River_pointer_binding_v1
  -> PtrConst.PtrConst River_pointer_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_cb7375581ac16b69 =
  RIP.fromFFIType hs_bindgen_cb7375581ac16b69_base

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
  hs_bindgen_cb7375581ac16b69

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_4f72212c363aa1f6" hs_bindgen_4f72212c363aa1f6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_set_user_data@
hs_bindgen_4f72212c363aa1f6 ::
     RIP.Ptr River_pointer_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4f72212c363aa1f6 =
  RIP.fromFFIType hs_bindgen_4f72212c363aa1f6_base

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
  hs_bindgen_4f72212c363aa1f6

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_4bd3ff869a2aab5e" hs_bindgen_4bd3ff869a2aab5e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_get_user_data@
hs_bindgen_4bd3ff869a2aab5e ::
     RIP.Ptr River_pointer_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4bd3ff869a2aab5e =
  RIP.fromFFIType hs_bindgen_4bd3ff869a2aab5e_base

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
  hs_bindgen_4bd3ff869a2aab5e

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_4e5e1dc126e40904" hs_bindgen_4e5e1dc126e40904_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_get_version@
hs_bindgen_4e5e1dc126e40904 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4e5e1dc126e40904 =
  RIP.fromFFIType hs_bindgen_4e5e1dc126e40904_base

{-| __C declaration:__ @river_pointer_binding_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 3268:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_version ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_pointer_binding_v1_get_version =
  hs_bindgen_4e5e1dc126e40904

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_829cf15df0edaf85" hs_bindgen_829cf15df0edaf85_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_destroy@
hs_bindgen_829cf15df0edaf85 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_829cf15df0edaf85 =
  RIP.fromFFIType hs_bindgen_829cf15df0edaf85_base

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
  hs_bindgen_829cf15df0edaf85

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_c1d1c830ddace9b3" hs_bindgen_c1d1c830ddace9b3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_enable@
hs_bindgen_c1d1c830ddace9b3 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_c1d1c830ddace9b3 =
  RIP.fromFFIType hs_bindgen_c1d1c830ddace9b3_base

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
  hs_bindgen_c1d1c830ddace9b3

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_3966649ccac1415c" hs_bindgen_3966649ccac1415c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_Unsafe_river_pointer_binding_v1_disable@
hs_bindgen_3966649ccac1415c ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_3966649ccac1415c =
  RIP.fromFFIType hs_bindgen_3966649ccac1415c_base

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
  hs_bindgen_3966649ccac1415c

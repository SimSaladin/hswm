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
  , "signed int hs_bindgen_14f21d4a5200ea32 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct river_window_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_42c36b917672b389 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_window_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_68abee5c9e2bd01e ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4788a7f4314e8b0b ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_3b9d664cfa325020 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_4a0dee3be3a6bd15 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_2e1b3fced2f028d4 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_manage_finish)(arg1);"
  , "}"
  , "void hs_bindgen_c29e67695abb38f4 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_manage_dirty)(arg1);"
  , "}"
  , "void hs_bindgen_042f80d584e00abd ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_render_finish)(arg1);"
  , "}"
  , "struct river_shell_surface_v1 *hs_bindgen_9352dc18bbf76bc2 ("
  , "  struct river_window_manager_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_manager_v1_get_shell_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6414052b4f99e1b4 ("
  , "  struct river_window_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_manager_v1_exit_session)(arg1);"
  , "}"
  , "signed int hs_bindgen_8b53492ea2444d7a ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_window_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_window_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_30ce17fb89d3b419 ("
  , "  struct river_window_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f16f76d19a0b2e63 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f89a088ddf7b5b3c ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_321bee17f18efbcb ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3740496056d8a718 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_close)(arg1);"
  , "}"
  , "struct river_node_v1 *hs_bindgen_9581726ae867c30e ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_window_v1_get_node)(arg1);"
  , "}"
  , "void hs_bindgen_ec5e3870433abf5e ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_window_v1_propose_dimensions)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c9431831df01f4e1 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_hide)(arg1);"
  , "}"
  , "void hs_bindgen_a4f6bbdafda82b06 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_show)(arg1);"
  , "}"
  , "void hs_bindgen_12b984985074cff6 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_use_csd)(arg1);"
  , "}"
  , "void hs_bindgen_7ecc4603b1b1acbc ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_use_ssd)(arg1);"
  , "}"
  , "void hs_bindgen_ec634148ee0267b8 ("
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
  , "void hs_bindgen_08b07c6cf0e632b3 ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_tiled)(arg1, arg2);"
  , "}"
  , "struct river_decoration_v1 *hs_bindgen_4a3dba5b7bd2b112 ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_v1_get_decoration_above)(arg1, arg2);"
  , "}"
  , "struct river_decoration_v1 *hs_bindgen_cb3ae1892fe41769 ("
  , "  struct river_window_v1 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (river_window_v1_get_decoration_below)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b4acfa2478112d98 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_resize_start)(arg1);"
  , "}"
  , "void hs_bindgen_e1d9389f4ba8460e ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_resize_end)(arg1);"
  , "}"
  , "void hs_bindgen_d870022dd67bc335 ("
  , "  struct river_window_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_window_v1_set_capabilities)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d52b297482dd37a7 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_maximized)(arg1);"
  , "}"
  , "void hs_bindgen_a2882fd7fd9d186c ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_unmaximized)(arg1);"
  , "}"
  , "void hs_bindgen_cb44997634ca01c7 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_53c6e38701832632 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_inform_not_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_e858b6ae4715ff6b ("
  , "  struct river_window_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  (river_window_v1_fullscreen)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5e44c2d8b7cddb46 ("
  , "  struct river_window_v1 *arg1"
  , ")"
  , "{"
  , "  (river_window_v1_exit_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_808d8764d75d545c ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_window_v1_set_clip_box)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_9c750ce687370f7f ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (river_window_v1_set_content_clip_box)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_228ac3d93b487a9c ("
  , "  struct river_window_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_window_v1_set_dimension_bounds)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_258325109979e59f ("
  , "  struct river_decoration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_decoration_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_bfd54208cc9c8b6b ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_decoration_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e1a8e3e6b59f0446 ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_decoration_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ead58fba25014eef ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  (river_decoration_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_d27e0be7e1074507 ("
  , "  struct river_decoration_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_decoration_v1_set_offset)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_848b394172d6a41e ("
  , "  struct river_decoration_v1 *arg1"
  , ")"
  , "{"
  , "  (river_decoration_v1_sync_next_commit)(arg1);"
  , "}"
  , "void hs_bindgen_903fa1b9d94e503b ("
  , "  struct river_shell_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1cfb10b6fab2092a ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_956b21746557ea1d ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_01b001c361722e1e ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_destroy)(arg1);"
  , "}"
  , "struct river_node_v1 *hs_bindgen_ccd3044e329f4586 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_shell_surface_v1_get_node)(arg1);"
  , "}"
  , "void hs_bindgen_b7d6757d8bf962c3 ("
  , "  struct river_shell_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (river_shell_surface_v1_sync_next_commit)(arg1);"
  , "}"
  , "void hs_bindgen_7d5df39ef467a493 ("
  , "  struct river_node_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_89da9dfdfeae8f76 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_node_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_01659c35207d2424 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_node_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b4046c4a42883348 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_4577033753903b27 ("
  , "  struct river_node_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_node_v1_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b144ea76cc3de370 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_place_top)(arg1);"
  , "}"
  , "void hs_bindgen_ba87ec1a51d71e43 ("
  , "  struct river_node_v1 *arg1"
  , ")"
  , "{"
  , "  (river_node_v1_place_bottom)(arg1);"
  , "}"
  , "void hs_bindgen_df55a1ca869e3df6 ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_place_above)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_93a735e40f7e9c63 ("
  , "  struct river_node_v1 *arg1,"
  , "  struct river_node_v1 *arg2"
  , ")"
  , "{"
  , "  (river_node_v1_place_below)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b8b4a4318ea8d412 ("
  , "  struct river_output_v1 *arg1,"
  , "  struct river_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ba8b5edb4093dcf0 ("
  , "  struct river_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_387c029eaf1b04d6 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f08c4b1e9ae402ab ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_573883f8124b6543 ("
  , "  struct river_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_c28b36a8657cac27 ("
  , "  struct river_output_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_output_v1_set_presentation_mode)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_b94ae525fe90d353 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2315e5d570409230 ("
  , "  struct river_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_fece31506638d801 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3c51451eb40f0b46 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_5d668572fe262259 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_81e8168bee08bf73 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_window_v1 *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_focus_window)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a4ee98e81aca30e9 ("
  , "  struct river_seat_v1 *arg1,"
  , "  struct river_shell_surface_v1 *arg2"
  , ")"
  , "{"
  , "  (river_seat_v1_focus_shell_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_63fb60e8d74e25b6 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_clear_focus)(arg1);"
  , "}"
  , "void hs_bindgen_664a6c39a40ee481 ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_op_start_pointer)(arg1);"
  , "}"
  , "void hs_bindgen_eee85eb3cb1871df ("
  , "  struct river_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_seat_v1_op_end)(arg1);"
  , "}"
  , "struct river_pointer_binding_v1 *hs_bindgen_84b5c74e6d6621fe ("
  , "  struct river_seat_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_seat_v1_get_pointer_binding)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c5c6fcde766dd17b ("
  , "  struct river_seat_v1 *arg1,"
  , "  char const *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (river_seat_v1_set_xcursor_theme)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_84b77cd7ae56f9d9 ("
  , "  struct river_seat_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (river_seat_v1_pointer_warp)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_2da029e84d22c6ee ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  struct river_pointer_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6a679a86eeb7d9a7 ("
  , "  struct river_pointer_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e32997552184043c ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_bc26796d5c961737 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_pointer_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_58ec1459c57f9d1b ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_c361e3e8762a96f9 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_4c8cddd8d44efde2 ("
  , "  struct river_pointer_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_pointer_binding_v1_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_add_listener@
foreign import ccall safe "hs_bindgen_14f21d4a5200ea32" hs_bindgen_14f21d4a5200ea32_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_add_listener@
hs_bindgen_14f21d4a5200ea32 ::
     RIP.Ptr River_window_manager_v1
  -> PtrConst.PtrConst River_window_manager_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_14f21d4a5200ea32 =
  RIP.fromFFIType hs_bindgen_14f21d4a5200ea32_base

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
  hs_bindgen_14f21d4a5200ea32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_42c36b917672b389" hs_bindgen_42c36b917672b389_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_set_user_data@
hs_bindgen_42c36b917672b389 ::
     RIP.Ptr River_window_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_42c36b917672b389 =
  RIP.fromFFIType hs_bindgen_42c36b917672b389_base

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
  hs_bindgen_42c36b917672b389

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_68abee5c9e2bd01e" hs_bindgen_68abee5c9e2bd01e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_user_data@
hs_bindgen_68abee5c9e2bd01e ::
     RIP.Ptr River_window_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_68abee5c9e2bd01e =
  RIP.fromFFIType hs_bindgen_68abee5c9e2bd01e_base

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
  hs_bindgen_68abee5c9e2bd01e

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_4788a7f4314e8b0b" hs_bindgen_4788a7f4314e8b0b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_version@
hs_bindgen_4788a7f4314e8b0b ::
     RIP.Ptr River_window_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4788a7f4314e8b0b =
  RIP.fromFFIType hs_bindgen_4788a7f4314e8b0b_base

{-| __C declaration:__ @river_window_manager_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 708:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_manager_v1_get_version ::
     RIP.Ptr River_window_manager_v1
     -- ^ __C declaration:__ @river_window_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_window_manager_v1_get_version =
  hs_bindgen_4788a7f4314e8b0b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_stop@
foreign import ccall safe "hs_bindgen_3b9d664cfa325020" hs_bindgen_3b9d664cfa325020_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_stop@
hs_bindgen_3b9d664cfa325020 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_3b9d664cfa325020 =
  RIP.fromFFIType hs_bindgen_3b9d664cfa325020_base

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
  hs_bindgen_3b9d664cfa325020

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_4a0dee3be3a6bd15" hs_bindgen_4a0dee3be3a6bd15_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_destroy@
hs_bindgen_4a0dee3be3a6bd15 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_4a0dee3be3a6bd15 =
  RIP.fromFFIType hs_bindgen_4a0dee3be3a6bd15_base

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
  hs_bindgen_4a0dee3be3a6bd15

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_manage_finish@
foreign import ccall safe "hs_bindgen_2e1b3fced2f028d4" hs_bindgen_2e1b3fced2f028d4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_manage_finish@
hs_bindgen_2e1b3fced2f028d4 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_2e1b3fced2f028d4 =
  RIP.fromFFIType hs_bindgen_2e1b3fced2f028d4_base

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
  hs_bindgen_2e1b3fced2f028d4

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_manage_dirty@
foreign import ccall safe "hs_bindgen_c29e67695abb38f4" hs_bindgen_c29e67695abb38f4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_manage_dirty@
hs_bindgen_c29e67695abb38f4 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_c29e67695abb38f4 =
  RIP.fromFFIType hs_bindgen_c29e67695abb38f4_base

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
  hs_bindgen_c29e67695abb38f4

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_render_finish@
foreign import ccall safe "hs_bindgen_042f80d584e00abd" hs_bindgen_042f80d584e00abd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_render_finish@
hs_bindgen_042f80d584e00abd ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_042f80d584e00abd =
  RIP.fromFFIType hs_bindgen_042f80d584e00abd_base

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
  hs_bindgen_042f80d584e00abd

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_shell_surface@
foreign import ccall safe "hs_bindgen_9352dc18bbf76bc2" hs_bindgen_9352dc18bbf76bc2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_get_shell_surface@
hs_bindgen_9352dc18bbf76bc2 ::
     RIP.Ptr River_window_manager_v1
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr River_shell_surface_v1)
hs_bindgen_9352dc18bbf76bc2 =
  RIP.fromFFIType hs_bindgen_9352dc18bbf76bc2_base

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
  hs_bindgen_9352dc18bbf76bc2

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_exit_session@
foreign import ccall safe "hs_bindgen_6414052b4f99e1b4" hs_bindgen_6414052b4f99e1b4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_manager_v1_exit_session@
hs_bindgen_6414052b4f99e1b4 ::
     RIP.Ptr River_window_manager_v1
  -> IO ()
hs_bindgen_6414052b4f99e1b4 =
  RIP.fromFFIType hs_bindgen_6414052b4f99e1b4_base

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
  hs_bindgen_6414052b4f99e1b4

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_add_listener@
foreign import ccall safe "hs_bindgen_8b53492ea2444d7a" hs_bindgen_8b53492ea2444d7a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_add_listener@
hs_bindgen_8b53492ea2444d7a ::
     RIP.Ptr River_window_v1
  -> PtrConst.PtrConst River_window_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8b53492ea2444d7a =
  RIP.fromFFIType hs_bindgen_8b53492ea2444d7a_base

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
  hs_bindgen_8b53492ea2444d7a

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_user_data@
foreign import ccall safe "hs_bindgen_30ce17fb89d3b419" hs_bindgen_30ce17fb89d3b419_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_user_data@
hs_bindgen_30ce17fb89d3b419 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_30ce17fb89d3b419 =
  RIP.fromFFIType hs_bindgen_30ce17fb89d3b419_base

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
  hs_bindgen_30ce17fb89d3b419

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_user_data@
foreign import ccall safe "hs_bindgen_f16f76d19a0b2e63" hs_bindgen_f16f76d19a0b2e63_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_user_data@
hs_bindgen_f16f76d19a0b2e63 ::
     RIP.Ptr River_window_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f16f76d19a0b2e63 =
  RIP.fromFFIType hs_bindgen_f16f76d19a0b2e63_base

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
  hs_bindgen_f16f76d19a0b2e63

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_version@
foreign import ccall safe "hs_bindgen_f89a088ddf7b5b3c" hs_bindgen_f89a088ddf7b5b3c_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_version@
hs_bindgen_f89a088ddf7b5b3c ::
     RIP.Ptr River_window_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f89a088ddf7b5b3c =
  RIP.fromFFIType hs_bindgen_f89a088ddf7b5b3c_base

{-| __C declaration:__ @river_window_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 1502:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_window_v1_get_version ::
     RIP.Ptr River_window_v1
     -- ^ __C declaration:__ @river_window_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_window_v1_get_version =
  hs_bindgen_f89a088ddf7b5b3c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_destroy@
foreign import ccall safe "hs_bindgen_321bee17f18efbcb" hs_bindgen_321bee17f18efbcb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_destroy@
hs_bindgen_321bee17f18efbcb ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_321bee17f18efbcb =
  RIP.fromFFIType hs_bindgen_321bee17f18efbcb_base

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
river_window_v1_destroy = hs_bindgen_321bee17f18efbcb

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_close@
foreign import ccall safe "hs_bindgen_3740496056d8a718" hs_bindgen_3740496056d8a718_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_close@
hs_bindgen_3740496056d8a718 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_3740496056d8a718 =
  RIP.fromFFIType hs_bindgen_3740496056d8a718_base

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
river_window_v1_close = hs_bindgen_3740496056d8a718

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_node@
foreign import ccall safe "hs_bindgen_9581726ae867c30e" hs_bindgen_9581726ae867c30e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_node@
hs_bindgen_9581726ae867c30e ::
     RIP.Ptr River_window_v1
  -> IO (RIP.Ptr River_node_v1)
hs_bindgen_9581726ae867c30e =
  RIP.fromFFIType hs_bindgen_9581726ae867c30e_base

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
  hs_bindgen_9581726ae867c30e

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_propose_dimensions@
foreign import ccall safe "hs_bindgen_ec5e3870433abf5e" hs_bindgen_ec5e3870433abf5e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_propose_dimensions@
hs_bindgen_ec5e3870433abf5e ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_ec5e3870433abf5e =
  RIP.fromFFIType hs_bindgen_ec5e3870433abf5e_base

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
  hs_bindgen_ec5e3870433abf5e

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_hide@
foreign import ccall safe "hs_bindgen_c9431831df01f4e1" hs_bindgen_c9431831df01f4e1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_hide@
hs_bindgen_c9431831df01f4e1 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_c9431831df01f4e1 =
  RIP.fromFFIType hs_bindgen_c9431831df01f4e1_base

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
river_window_v1_hide = hs_bindgen_c9431831df01f4e1

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_show@
foreign import ccall safe "hs_bindgen_a4f6bbdafda82b06" hs_bindgen_a4f6bbdafda82b06_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_show@
hs_bindgen_a4f6bbdafda82b06 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_a4f6bbdafda82b06 =
  RIP.fromFFIType hs_bindgen_a4f6bbdafda82b06_base

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
river_window_v1_show = hs_bindgen_a4f6bbdafda82b06

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_use_csd@
foreign import ccall safe "hs_bindgen_12b984985074cff6" hs_bindgen_12b984985074cff6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_use_csd@
hs_bindgen_12b984985074cff6 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_12b984985074cff6 =
  RIP.fromFFIType hs_bindgen_12b984985074cff6_base

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
river_window_v1_use_csd = hs_bindgen_12b984985074cff6

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_use_ssd@
foreign import ccall safe "hs_bindgen_7ecc4603b1b1acbc" hs_bindgen_7ecc4603b1b1acbc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_use_ssd@
hs_bindgen_7ecc4603b1b1acbc ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_7ecc4603b1b1acbc =
  RIP.fromFFIType hs_bindgen_7ecc4603b1b1acbc_base

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
river_window_v1_use_ssd = hs_bindgen_7ecc4603b1b1acbc

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_borders@
foreign import ccall safe "hs_bindgen_ec634148ee0267b8" hs_bindgen_ec634148ee0267b8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_borders@
hs_bindgen_ec634148ee0267b8 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_ec634148ee0267b8 =
  RIP.fromFFIType hs_bindgen_ec634148ee0267b8_base

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
  hs_bindgen_ec634148ee0267b8

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_tiled@
foreign import ccall safe "hs_bindgen_08b07c6cf0e632b3" hs_bindgen_08b07c6cf0e632b3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_tiled@
hs_bindgen_08b07c6cf0e632b3 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_08b07c6cf0e632b3 =
  RIP.fromFFIType hs_bindgen_08b07c6cf0e632b3_base

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
  hs_bindgen_08b07c6cf0e632b3

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_decoration_above@
foreign import ccall safe "hs_bindgen_4a3dba5b7bd2b112" hs_bindgen_4a3dba5b7bd2b112_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_decoration_above@
hs_bindgen_4a3dba5b7bd2b112 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr River_decoration_v1)
hs_bindgen_4a3dba5b7bd2b112 =
  RIP.fromFFIType hs_bindgen_4a3dba5b7bd2b112_base

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
  hs_bindgen_4a3dba5b7bd2b112

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_decoration_below@
foreign import ccall safe "hs_bindgen_cb3ae1892fe41769" hs_bindgen_cb3ae1892fe41769_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_get_decoration_below@
hs_bindgen_cb3ae1892fe41769 ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr Wl_surface
  -> IO (RIP.Ptr River_decoration_v1)
hs_bindgen_cb3ae1892fe41769 =
  RIP.fromFFIType hs_bindgen_cb3ae1892fe41769_base

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
  hs_bindgen_cb3ae1892fe41769

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_resize_start@
foreign import ccall safe "hs_bindgen_b4acfa2478112d98" hs_bindgen_b4acfa2478112d98_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_resize_start@
hs_bindgen_b4acfa2478112d98 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_b4acfa2478112d98 =
  RIP.fromFFIType hs_bindgen_b4acfa2478112d98_base

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
  hs_bindgen_b4acfa2478112d98

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_resize_end@
foreign import ccall safe "hs_bindgen_e1d9389f4ba8460e" hs_bindgen_e1d9389f4ba8460e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_resize_end@
hs_bindgen_e1d9389f4ba8460e ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_e1d9389f4ba8460e =
  RIP.fromFFIType hs_bindgen_e1d9389f4ba8460e_base

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
  hs_bindgen_e1d9389f4ba8460e

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_capabilities@
foreign import ccall safe "hs_bindgen_d870022dd67bc335" hs_bindgen_d870022dd67bc335_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_capabilities@
hs_bindgen_d870022dd67bc335 ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_d870022dd67bc335 =
  RIP.fromFFIType hs_bindgen_d870022dd67bc335_base

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
  hs_bindgen_d870022dd67bc335

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_maximized@
foreign import ccall safe "hs_bindgen_d52b297482dd37a7" hs_bindgen_d52b297482dd37a7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_maximized@
hs_bindgen_d52b297482dd37a7 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_d52b297482dd37a7 =
  RIP.fromFFIType hs_bindgen_d52b297482dd37a7_base

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
  hs_bindgen_d52b297482dd37a7

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_unmaximized@
foreign import ccall safe "hs_bindgen_a2882fd7fd9d186c" hs_bindgen_a2882fd7fd9d186c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_unmaximized@
hs_bindgen_a2882fd7fd9d186c ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_a2882fd7fd9d186c =
  RIP.fromFFIType hs_bindgen_a2882fd7fd9d186c_base

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
  hs_bindgen_a2882fd7fd9d186c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_fullscreen@
foreign import ccall safe "hs_bindgen_cb44997634ca01c7" hs_bindgen_cb44997634ca01c7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_fullscreen@
hs_bindgen_cb44997634ca01c7 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_cb44997634ca01c7 =
  RIP.fromFFIType hs_bindgen_cb44997634ca01c7_base

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
  hs_bindgen_cb44997634ca01c7

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_not_fullscreen@
foreign import ccall safe "hs_bindgen_53c6e38701832632" hs_bindgen_53c6e38701832632_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_inform_not_fullscreen@
hs_bindgen_53c6e38701832632 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_53c6e38701832632 =
  RIP.fromFFIType hs_bindgen_53c6e38701832632_base

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
  hs_bindgen_53c6e38701832632

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_fullscreen@
foreign import ccall safe "hs_bindgen_e858b6ae4715ff6b" hs_bindgen_e858b6ae4715ff6b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_fullscreen@
hs_bindgen_e858b6ae4715ff6b ::
     RIP.Ptr River_window_v1
  -> RIP.Ptr River_output_v1
  -> IO ()
hs_bindgen_e858b6ae4715ff6b =
  RIP.fromFFIType hs_bindgen_e858b6ae4715ff6b_base

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
  hs_bindgen_e858b6ae4715ff6b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_exit_fullscreen@
foreign import ccall safe "hs_bindgen_5e44c2d8b7cddb46" hs_bindgen_5e44c2d8b7cddb46_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_exit_fullscreen@
hs_bindgen_5e44c2d8b7cddb46 ::
     RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_5e44c2d8b7cddb46 =
  RIP.fromFFIType hs_bindgen_5e44c2d8b7cddb46_base

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
  hs_bindgen_5e44c2d8b7cddb46

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_clip_box@
foreign import ccall safe "hs_bindgen_808d8764d75d545c" hs_bindgen_808d8764d75d545c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_clip_box@
hs_bindgen_808d8764d75d545c ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_808d8764d75d545c =
  RIP.fromFFIType hs_bindgen_808d8764d75d545c_base

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
  hs_bindgen_808d8764d75d545c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_content_clip_box@
foreign import ccall safe "hs_bindgen_9c750ce687370f7f" hs_bindgen_9c750ce687370f7f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_content_clip_box@
hs_bindgen_9c750ce687370f7f ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_9c750ce687370f7f =
  RIP.fromFFIType hs_bindgen_9c750ce687370f7f_base

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
  hs_bindgen_9c750ce687370f7f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_dimension_bounds@
foreign import ccall safe "hs_bindgen_228ac3d93b487a9c" hs_bindgen_228ac3d93b487a9c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_window_v1_set_dimension_bounds@
hs_bindgen_228ac3d93b487a9c ::
     RIP.Ptr River_window_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_228ac3d93b487a9c =
  RIP.fromFFIType hs_bindgen_228ac3d93b487a9c_base

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
  hs_bindgen_228ac3d93b487a9c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_set_user_data@
foreign import ccall safe "hs_bindgen_258325109979e59f" hs_bindgen_258325109979e59f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_set_user_data@
hs_bindgen_258325109979e59f ::
     RIP.Ptr River_decoration_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_258325109979e59f =
  RIP.fromFFIType hs_bindgen_258325109979e59f_base

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
  hs_bindgen_258325109979e59f

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_get_user_data@
foreign import ccall safe "hs_bindgen_bfd54208cc9c8b6b" hs_bindgen_bfd54208cc9c8b6b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_get_user_data@
hs_bindgen_bfd54208cc9c8b6b ::
     RIP.Ptr River_decoration_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_bfd54208cc9c8b6b =
  RIP.fromFFIType hs_bindgen_bfd54208cc9c8b6b_base

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
  hs_bindgen_bfd54208cc9c8b6b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_get_version@
foreign import ccall safe "hs_bindgen_e1a8e3e6b59f0446" hs_bindgen_e1a8e3e6b59f0446_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_get_version@
hs_bindgen_e1a8e3e6b59f0446 ::
     RIP.Ptr River_decoration_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e1a8e3e6b59f0446 =
  RIP.fromFFIType hs_bindgen_e1a8e3e6b59f0446_base

{-| __C declaration:__ @river_decoration_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2112:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_decoration_v1_get_version ::
     RIP.Ptr River_decoration_v1
     -- ^ __C declaration:__ @river_decoration_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_decoration_v1_get_version =
  hs_bindgen_e1a8e3e6b59f0446

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_destroy@
foreign import ccall safe "hs_bindgen_ead58fba25014eef" hs_bindgen_ead58fba25014eef_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_destroy@
hs_bindgen_ead58fba25014eef ::
     RIP.Ptr River_decoration_v1
  -> IO ()
hs_bindgen_ead58fba25014eef =
  RIP.fromFFIType hs_bindgen_ead58fba25014eef_base

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
  hs_bindgen_ead58fba25014eef

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_set_offset@
foreign import ccall safe "hs_bindgen_d27e0be7e1074507" hs_bindgen_d27e0be7e1074507_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_set_offset@
hs_bindgen_d27e0be7e1074507 ::
     RIP.Ptr River_decoration_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_d27e0be7e1074507 =
  RIP.fromFFIType hs_bindgen_d27e0be7e1074507_base

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
  hs_bindgen_d27e0be7e1074507

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_sync_next_commit@
foreign import ccall safe "hs_bindgen_848b394172d6a41e" hs_bindgen_848b394172d6a41e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_decoration_v1_sync_next_commit@
hs_bindgen_848b394172d6a41e ::
     RIP.Ptr River_decoration_v1
  -> IO ()
hs_bindgen_848b394172d6a41e =
  RIP.fromFFIType hs_bindgen_848b394172d6a41e_base

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
  hs_bindgen_848b394172d6a41e

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_set_user_data@
foreign import ccall safe "hs_bindgen_903fa1b9d94e503b" hs_bindgen_903fa1b9d94e503b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_set_user_data@
hs_bindgen_903fa1b9d94e503b ::
     RIP.Ptr River_shell_surface_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_903fa1b9d94e503b =
  RIP.fromFFIType hs_bindgen_903fa1b9d94e503b_base

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
  hs_bindgen_903fa1b9d94e503b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_user_data@
foreign import ccall safe "hs_bindgen_1cfb10b6fab2092a" hs_bindgen_1cfb10b6fab2092a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_user_data@
hs_bindgen_1cfb10b6fab2092a ::
     RIP.Ptr River_shell_surface_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1cfb10b6fab2092a =
  RIP.fromFFIType hs_bindgen_1cfb10b6fab2092a_base

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
  hs_bindgen_1cfb10b6fab2092a

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_version@
foreign import ccall safe "hs_bindgen_956b21746557ea1d" hs_bindgen_956b21746557ea1d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_version@
hs_bindgen_956b21746557ea1d ::
     RIP.Ptr River_shell_surface_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_956b21746557ea1d =
  RIP.fromFFIType hs_bindgen_956b21746557ea1d_base

{-| __C declaration:__ @river_shell_surface_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2217:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_shell_surface_v1_get_version ::
     RIP.Ptr River_shell_surface_v1
     -- ^ __C declaration:__ @river_shell_surface_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_shell_surface_v1_get_version =
  hs_bindgen_956b21746557ea1d

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_destroy@
foreign import ccall safe "hs_bindgen_01b001c361722e1e" hs_bindgen_01b001c361722e1e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_destroy@
hs_bindgen_01b001c361722e1e ::
     RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_01b001c361722e1e =
  RIP.fromFFIType hs_bindgen_01b001c361722e1e_base

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
  hs_bindgen_01b001c361722e1e

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_node@
foreign import ccall safe "hs_bindgen_ccd3044e329f4586" hs_bindgen_ccd3044e329f4586_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_get_node@
hs_bindgen_ccd3044e329f4586 ::
     RIP.Ptr River_shell_surface_v1
  -> IO (RIP.Ptr River_node_v1)
hs_bindgen_ccd3044e329f4586 =
  RIP.fromFFIType hs_bindgen_ccd3044e329f4586_base

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
  hs_bindgen_ccd3044e329f4586

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_sync_next_commit@
foreign import ccall safe "hs_bindgen_b7d6757d8bf962c3" hs_bindgen_b7d6757d8bf962c3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_shell_surface_v1_sync_next_commit@
hs_bindgen_b7d6757d8bf962c3 ::
     RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_b7d6757d8bf962c3 =
  RIP.fromFFIType hs_bindgen_b7d6757d8bf962c3_base

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
  hs_bindgen_b7d6757d8bf962c3

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_set_user_data@
foreign import ccall safe "hs_bindgen_7d5df39ef467a493" hs_bindgen_7d5df39ef467a493_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_set_user_data@
hs_bindgen_7d5df39ef467a493 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7d5df39ef467a493 =
  RIP.fromFFIType hs_bindgen_7d5df39ef467a493_base

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
  hs_bindgen_7d5df39ef467a493

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_get_user_data@
foreign import ccall safe "hs_bindgen_89da9dfdfeae8f76" hs_bindgen_89da9dfdfeae8f76_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_get_user_data@
hs_bindgen_89da9dfdfeae8f76 ::
     RIP.Ptr River_node_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_89da9dfdfeae8f76 =
  RIP.fromFFIType hs_bindgen_89da9dfdfeae8f76_base

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
  hs_bindgen_89da9dfdfeae8f76

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_get_version@
foreign import ccall safe "hs_bindgen_01659c35207d2424" hs_bindgen_01659c35207d2424_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_get_version@
hs_bindgen_01659c35207d2424 ::
     RIP.Ptr River_node_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_01659c35207d2424 =
  RIP.fromFFIType hs_bindgen_01659c35207d2424_base

{-| __C declaration:__ @river_node_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2323:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_node_v1_get_version ::
     RIP.Ptr River_node_v1
     -- ^ __C declaration:__ @river_node_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_node_v1_get_version =
  hs_bindgen_01659c35207d2424

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_destroy@
foreign import ccall safe "hs_bindgen_b4046c4a42883348" hs_bindgen_b4046c4a42883348_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_destroy@
hs_bindgen_b4046c4a42883348 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_b4046c4a42883348 =
  RIP.fromFFIType hs_bindgen_b4046c4a42883348_base

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
river_node_v1_destroy = hs_bindgen_b4046c4a42883348

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_set_position@
foreign import ccall safe "hs_bindgen_4577033753903b27" hs_bindgen_4577033753903b27_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_set_position@
hs_bindgen_4577033753903b27 ::
     RIP.Ptr River_node_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_4577033753903b27 =
  RIP.fromFFIType hs_bindgen_4577033753903b27_base

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
  hs_bindgen_4577033753903b27

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_place_top@
foreign import ccall safe "hs_bindgen_b144ea76cc3de370" hs_bindgen_b144ea76cc3de370_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_place_top@
hs_bindgen_b144ea76cc3de370 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_b144ea76cc3de370 =
  RIP.fromFFIType hs_bindgen_b144ea76cc3de370_base

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
river_node_v1_place_top = hs_bindgen_b144ea76cc3de370

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_place_bottom@
foreign import ccall safe "hs_bindgen_ba87ec1a51d71e43" hs_bindgen_ba87ec1a51d71e43_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_place_bottom@
hs_bindgen_ba87ec1a51d71e43 ::
     RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_ba87ec1a51d71e43 =
  RIP.fromFFIType hs_bindgen_ba87ec1a51d71e43_base

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
  hs_bindgen_ba87ec1a51d71e43

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_place_above@
foreign import ccall safe "hs_bindgen_df55a1ca869e3df6" hs_bindgen_df55a1ca869e3df6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_place_above@
hs_bindgen_df55a1ca869e3df6 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_df55a1ca869e3df6 =
  RIP.fromFFIType hs_bindgen_df55a1ca869e3df6_base

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
  hs_bindgen_df55a1ca869e3df6

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_place_below@
foreign import ccall safe "hs_bindgen_93a735e40f7e9c63" hs_bindgen_93a735e40f7e9c63_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_node_v1_place_below@
hs_bindgen_93a735e40f7e9c63 ::
     RIP.Ptr River_node_v1
  -> RIP.Ptr River_node_v1
  -> IO ()
hs_bindgen_93a735e40f7e9c63 =
  RIP.fromFFIType hs_bindgen_93a735e40f7e9c63_base

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
  hs_bindgen_93a735e40f7e9c63

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_add_listener@
foreign import ccall safe "hs_bindgen_b8b4a4318ea8d412" hs_bindgen_b8b4a4318ea8d412_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_add_listener@
hs_bindgen_b8b4a4318ea8d412 ::
     RIP.Ptr River_output_v1
  -> PtrConst.PtrConst River_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b8b4a4318ea8d412 =
  RIP.fromFFIType hs_bindgen_b8b4a4318ea8d412_base

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
  hs_bindgen_b8b4a4318ea8d412

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_set_user_data@
foreign import ccall safe "hs_bindgen_ba8b5edb4093dcf0" hs_bindgen_ba8b5edb4093dcf0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_set_user_data@
hs_bindgen_ba8b5edb4093dcf0 ::
     RIP.Ptr River_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ba8b5edb4093dcf0 =
  RIP.fromFFIType hs_bindgen_ba8b5edb4093dcf0_base

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
  hs_bindgen_ba8b5edb4093dcf0

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_get_user_data@
foreign import ccall safe "hs_bindgen_387c029eaf1b04d6" hs_bindgen_387c029eaf1b04d6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_get_user_data@
hs_bindgen_387c029eaf1b04d6 ::
     RIP.Ptr River_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_387c029eaf1b04d6 =
  RIP.fromFFIType hs_bindgen_387c029eaf1b04d6_base

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
  hs_bindgen_387c029eaf1b04d6

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_get_version@
foreign import ccall safe "hs_bindgen_f08c4b1e9ae402ab" hs_bindgen_f08c4b1e9ae402ab_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_get_version@
hs_bindgen_f08c4b1e9ae402ab ::
     RIP.Ptr River_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f08c4b1e9ae402ab =
  RIP.fromFFIType hs_bindgen_f08c4b1e9ae402ab_base

{-| __C declaration:__ @river_output_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2624:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_output_v1_get_version ::
     RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @river_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_output_v1_get_version =
  hs_bindgen_f08c4b1e9ae402ab

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_destroy@
foreign import ccall safe "hs_bindgen_573883f8124b6543" hs_bindgen_573883f8124b6543_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_destroy@
hs_bindgen_573883f8124b6543 ::
     RIP.Ptr River_output_v1
  -> IO ()
hs_bindgen_573883f8124b6543 =
  RIP.fromFFIType hs_bindgen_573883f8124b6543_base

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
river_output_v1_destroy = hs_bindgen_573883f8124b6543

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_set_presentation_mode@
foreign import ccall safe "hs_bindgen_c28b36a8657cac27" hs_bindgen_c28b36a8657cac27_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_output_v1_set_presentation_mode@
hs_bindgen_c28b36a8657cac27 ::
     RIP.Ptr River_output_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_c28b36a8657cac27 =
  RIP.fromFFIType hs_bindgen_c28b36a8657cac27_base

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
  hs_bindgen_c28b36a8657cac27

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_b94ae525fe90d353" hs_bindgen_b94ae525fe90d353_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_add_listener@
hs_bindgen_b94ae525fe90d353 ::
     RIP.Ptr River_seat_v1
  -> PtrConst.PtrConst River_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b94ae525fe90d353 =
  RIP.fromFFIType hs_bindgen_b94ae525fe90d353_base

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
  hs_bindgen_b94ae525fe90d353

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_2315e5d570409230" hs_bindgen_2315e5d570409230_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_set_user_data@
hs_bindgen_2315e5d570409230 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2315e5d570409230 =
  RIP.fromFFIType hs_bindgen_2315e5d570409230_base

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
  hs_bindgen_2315e5d570409230

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_fece31506638d801" hs_bindgen_fece31506638d801_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_user_data@
hs_bindgen_fece31506638d801 ::
     RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_fece31506638d801 =
  RIP.fromFFIType hs_bindgen_fece31506638d801_base

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
  hs_bindgen_fece31506638d801

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_3c51451eb40f0b46" hs_bindgen_3c51451eb40f0b46_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_version@
hs_bindgen_3c51451eb40f0b46 ::
     RIP.Ptr River_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3c51451eb40f0b46 =
  RIP.fromFFIType hs_bindgen_3c51451eb40f0b46_base

{-| __C declaration:__ @river_seat_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 2991:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_seat_v1_get_version ::
     RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @river_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_seat_v1_get_version =
  hs_bindgen_3c51451eb40f0b46

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_5d668572fe262259" hs_bindgen_5d668572fe262259_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_destroy@
hs_bindgen_5d668572fe262259 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_5d668572fe262259 =
  RIP.fromFFIType hs_bindgen_5d668572fe262259_base

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
river_seat_v1_destroy = hs_bindgen_5d668572fe262259

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_focus_window@
foreign import ccall safe "hs_bindgen_81e8168bee08bf73" hs_bindgen_81e8168bee08bf73_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_focus_window@
hs_bindgen_81e8168bee08bf73 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr River_window_v1
  -> IO ()
hs_bindgen_81e8168bee08bf73 =
  RIP.fromFFIType hs_bindgen_81e8168bee08bf73_base

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
  hs_bindgen_81e8168bee08bf73

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_focus_shell_surface@
foreign import ccall safe "hs_bindgen_a4ee98e81aca30e9" hs_bindgen_a4ee98e81aca30e9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_focus_shell_surface@
hs_bindgen_a4ee98e81aca30e9 ::
     RIP.Ptr River_seat_v1
  -> RIP.Ptr River_shell_surface_v1
  -> IO ()
hs_bindgen_a4ee98e81aca30e9 =
  RIP.fromFFIType hs_bindgen_a4ee98e81aca30e9_base

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
  hs_bindgen_a4ee98e81aca30e9

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_clear_focus@
foreign import ccall safe "hs_bindgen_63fb60e8d74e25b6" hs_bindgen_63fb60e8d74e25b6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_clear_focus@
hs_bindgen_63fb60e8d74e25b6 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_63fb60e8d74e25b6 =
  RIP.fromFFIType hs_bindgen_63fb60e8d74e25b6_base

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
  hs_bindgen_63fb60e8d74e25b6

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_op_start_pointer@
foreign import ccall safe "hs_bindgen_664a6c39a40ee481" hs_bindgen_664a6c39a40ee481_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_op_start_pointer@
hs_bindgen_664a6c39a40ee481 ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_664a6c39a40ee481 =
  RIP.fromFFIType hs_bindgen_664a6c39a40ee481_base

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
  hs_bindgen_664a6c39a40ee481

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_op_end@
foreign import ccall safe "hs_bindgen_eee85eb3cb1871df" hs_bindgen_eee85eb3cb1871df_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_op_end@
hs_bindgen_eee85eb3cb1871df ::
     RIP.Ptr River_seat_v1
  -> IO ()
hs_bindgen_eee85eb3cb1871df =
  RIP.fromFFIType hs_bindgen_eee85eb3cb1871df_base

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
river_seat_v1_op_end = hs_bindgen_eee85eb3cb1871df

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_pointer_binding@
foreign import ccall safe "hs_bindgen_84b5c74e6d6621fe" hs_bindgen_84b5c74e6d6621fe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_get_pointer_binding@
hs_bindgen_84b5c74e6d6621fe ::
     RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_pointer_binding_v1)
hs_bindgen_84b5c74e6d6621fe =
  RIP.fromFFIType hs_bindgen_84b5c74e6d6621fe_base

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
  hs_bindgen_84b5c74e6d6621fe

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_set_xcursor_theme@
foreign import ccall safe "hs_bindgen_c5c6fcde766dd17b" hs_bindgen_c5c6fcde766dd17b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_set_xcursor_theme@
hs_bindgen_c5c6fcde766dd17b ::
     RIP.Ptr River_seat_v1
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_c5c6fcde766dd17b =
  RIP.fromFFIType hs_bindgen_c5c6fcde766dd17b_base

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
  hs_bindgen_c5c6fcde766dd17b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_pointer_warp@
foreign import ccall safe "hs_bindgen_84b77cd7ae56f9d9" hs_bindgen_84b77cd7ae56f9d9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_seat_v1_pointer_warp@
hs_bindgen_84b77cd7ae56f9d9 ::
     RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_84b77cd7ae56f9d9 =
  RIP.fromFFIType hs_bindgen_84b77cd7ae56f9d9_base

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
  hs_bindgen_84b77cd7ae56f9d9

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_add_listener@
foreign import ccall safe "hs_bindgen_2da029e84d22c6ee" hs_bindgen_2da029e84d22c6ee_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_add_listener@
hs_bindgen_2da029e84d22c6ee ::
     RIP.Ptr River_pointer_binding_v1
  -> PtrConst.PtrConst River_pointer_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_2da029e84d22c6ee =
  RIP.fromFFIType hs_bindgen_2da029e84d22c6ee_base

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
  hs_bindgen_2da029e84d22c6ee

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_set_user_data@
foreign import ccall safe "hs_bindgen_6a679a86eeb7d9a7" hs_bindgen_6a679a86eeb7d9a7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_set_user_data@
hs_bindgen_6a679a86eeb7d9a7 ::
     RIP.Ptr River_pointer_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6a679a86eeb7d9a7 =
  RIP.fromFFIType hs_bindgen_6a679a86eeb7d9a7_base

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
  hs_bindgen_6a679a86eeb7d9a7

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_get_user_data@
foreign import ccall safe "hs_bindgen_e32997552184043c" hs_bindgen_e32997552184043c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_get_user_data@
hs_bindgen_e32997552184043c ::
     RIP.Ptr River_pointer_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e32997552184043c =
  RIP.fromFFIType hs_bindgen_e32997552184043c_base

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
  hs_bindgen_e32997552184043c

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_get_version@
foreign import ccall safe "hs_bindgen_bc26796d5c961737" hs_bindgen_bc26796d5c961737_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_get_version@
hs_bindgen_bc26796d5c961737 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_bc26796d5c961737 =
  RIP.fromFFIType hs_bindgen_bc26796d5c961737_base

{-| __C declaration:__ @river_pointer_binding_v1_get_version@

    __defined at:__ @river-window-management-v1-client-protocol.h 3268:1@

    __exported by:__ @river-window-management-v1-client-protocol.h@
-}
river_pointer_binding_v1_get_version ::
     RIP.Ptr River_pointer_binding_v1
     -- ^ __C declaration:__ @river_pointer_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_pointer_binding_v1_get_version =
  hs_bindgen_bc26796d5c961737

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_destroy@
foreign import ccall safe "hs_bindgen_58ec1459c57f9d1b" hs_bindgen_58ec1459c57f9d1b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_destroy@
hs_bindgen_58ec1459c57f9d1b ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_58ec1459c57f9d1b =
  RIP.fromFFIType hs_bindgen_58ec1459c57f9d1b_base

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
  hs_bindgen_58ec1459c57f9d1b

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_enable@
foreign import ccall safe "hs_bindgen_c361e3e8762a96f9" hs_bindgen_c361e3e8762a96f9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_enable@
hs_bindgen_c361e3e8762a96f9 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_c361e3e8762a96f9 =
  RIP.fromFFIType hs_bindgen_c361e3e8762a96f9_base

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
  hs_bindgen_c361e3e8762a96f9

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_disable@
foreign import ccall safe "hs_bindgen_4c8cddd8d44efde2" hs_bindgen_4c8cddd8d44efde2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_WindowManagementV1_Generated.River.WindowManagementV1_Safe_river_pointer_binding_v1_disable@
hs_bindgen_4c8cddd8d44efde2 ::
     RIP.Ptr River_pointer_binding_v1
  -> IO ()
hs_bindgen_4c8cddd8d44efde2 =
  RIP.fromFFIType hs_bindgen_4c8cddd8d44efde2_base

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
  hs_bindgen_4c8cddd8d44efde2

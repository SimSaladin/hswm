{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.XdgShell.Generated.FunPtr
    ( Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_wm_base_add_listener
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_wm_base_set_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_wm_base_get_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_wm_base_get_version
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_wm_base_destroy
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_wm_base_create_positioner
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_wm_base_get_xdg_surface
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_wm_base_pong
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_get_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_get_version
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_destroy
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_size
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_anchor_rect
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_anchor
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_gravity
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_constraint_adjustment
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_offset
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_reactive
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_parent_size
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_positioner_set_parent_configure
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_add_listener
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_set_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_get_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_get_version
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_destroy
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_get_toplevel
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_get_popup
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_set_window_geometry
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_surface_ack_configure
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_add_listener
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_get_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_get_version
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_destroy
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_parent
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_title
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_app_id
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_show_window_menu
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_move
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_resize
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_max_size
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_min_size
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_maximized
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_unset_maximized
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_fullscreen
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_unset_fullscreen
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_toplevel_set_minimized
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_popup_add_listener
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_popup_set_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_popup_get_user_data
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_popup_get_version
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_popup_destroy
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_popup_grab
    , Bindings.Wayland.XdgShell.Generated.FunPtr.xdg_popup_reposition
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.XdgShell.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <xdg-shell-client-protocol.h>"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5e91061b7e3aa6a5 (void)) ("
  , "  struct xdg_wm_base *arg1,"
  , "  struct xdg_wm_base_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &xdg_wm_base_add_listener;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b934572b1e828b1e (void)) ("
  , "  struct xdg_wm_base *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &xdg_wm_base_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_2836c76a62f37f7d (void)) ("
  , "  struct xdg_wm_base *arg1"
  , ")"
  , "{"
  , "  return &xdg_wm_base_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7809ea0704061434 (void)) ("
  , "  struct xdg_wm_base *arg1"
  , ")"
  , "{"
  , "  return &xdg_wm_base_get_version;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_78f59d7d3570bd24 (void)) ("
  , "  struct xdg_wm_base *arg1"
  , ")"
  , "{"
  , "  return &xdg_wm_base_destroy;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_create_positioner */"
  , "__attribute__ ((const))"
  , "struct xdg_positioner *(*hs_bindgen_666aa44a7659f5b6 (void)) ("
  , "  struct xdg_wm_base *arg1"
  , ")"
  , "{"
  , "  return &xdg_wm_base_create_positioner;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_xdg_surface */"
  , "__attribute__ ((const))"
  , "struct xdg_surface *(*hs_bindgen_70d1e7c64a659c48 (void)) ("
  , "  struct xdg_wm_base *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &xdg_wm_base_get_xdg_surface;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_pong */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ee00fadd54673151 (void)) ("
  , "  struct xdg_wm_base *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &xdg_wm_base_pong;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_495e44dcdc5b39e3 (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_58946651dae80a56 (void)) ("
  , "  struct xdg_positioner *arg1"
  , ")"
  , "{"
  , "  return &xdg_positioner_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_e0b2994653ed2691 (void)) ("
  , "  struct xdg_positioner *arg1"
  , ")"
  , "{"
  , "  return &xdg_positioner_get_version;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3085e6748cb2e9b9 (void)) ("
  , "  struct xdg_positioner *arg1"
  , ")"
  , "{"
  , "  return &xdg_positioner_destroy;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_size */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_28fbe144fa13cada (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_size;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_anchor_rect */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2f6f4eb138948445 (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_anchor_rect;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_anchor */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b509d10cc11c8d1b (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_anchor;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_gravity */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a21ca9d4046f8c92 (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_gravity;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_constraint_adjustment */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_be8a0f287ad2c3c5 (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_constraint_adjustment;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_offset */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0686f3470e5049e3 (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_offset;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_reactive */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e90dee3f36bcc1b6 (void)) ("
  , "  struct xdg_positioner *arg1"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_reactive;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_parent_size */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_814e3ef71fb060f2 (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_parent_size;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_parent_configure */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8ac62df7de183883 (void)) ("
  , "  struct xdg_positioner *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &xdg_positioner_set_parent_configure;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_be36f3a5eaf6c7a6 (void)) ("
  , "  struct xdg_surface *arg1,"
  , "  struct xdg_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &xdg_surface_add_listener;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6eadac92d2d7df1d (void)) ("
  , "  struct xdg_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &xdg_surface_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_9836368106faf84b (void)) ("
  , "  struct xdg_surface *arg1"
  , ")"
  , "{"
  , "  return &xdg_surface_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_38809e406b54f67f (void)) ("
  , "  struct xdg_surface *arg1"
  , ")"
  , "{"
  , "  return &xdg_surface_get_version;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a8488076ee110076 (void)) ("
  , "  struct xdg_surface *arg1"
  , ")"
  , "{"
  , "  return &xdg_surface_destroy;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_toplevel */"
  , "__attribute__ ((const))"
  , "struct xdg_toplevel *(*hs_bindgen_c326b424e9127276 (void)) ("
  , "  struct xdg_surface *arg1"
  , ")"
  , "{"
  , "  return &xdg_surface_get_toplevel;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_popup */"
  , "__attribute__ ((const))"
  , "struct xdg_popup *(*hs_bindgen_43eb68b1768f1d59 (void)) ("
  , "  struct xdg_surface *arg1,"
  , "  struct xdg_surface *arg2,"
  , "  struct xdg_positioner *arg3"
  , ")"
  , "{"
  , "  return &xdg_surface_get_popup;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_set_window_geometry */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_38de86bd5bfb57f7 (void)) ("
  , "  struct xdg_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &xdg_surface_set_window_geometry;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_ack_configure */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e217f6aebc1318ff (void)) ("
  , "  struct xdg_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &xdg_surface_ack_configure;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_992705c88929019d (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct xdg_toplevel_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &xdg_toplevel_add_listener;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3b9d25a4fc274087 (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_93481263d809deb4 (void)) ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return &xdg_toplevel_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_295d9e86cca89b0b (void)) ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return &xdg_toplevel_get_version;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6b02e43d7c099a8e (void)) ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return &xdg_toplevel_destroy;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_parent */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_164910e45386592d (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct xdg_toplevel *arg2"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_parent;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_title */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a34648827bdca7fb (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_title;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_app_id */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_526281686145433d (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_app_id;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_show_window_menu */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_60891d21a564ecfe (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &xdg_toplevel_show_window_menu;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_move */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c84532d7af825531 (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &xdg_toplevel_move;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_resize */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2a941ab4bc0a7ad8 (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &xdg_toplevel_resize;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_max_size */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7fc2885a9d09da05 (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_max_size;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_min_size */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a89742eab0ec24b8 (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_min_size;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_maximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e65f895f0098869a (void)) ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_maximized;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_unset_maximized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2d47f3936d3c7216 (void)) ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return &xdg_toplevel_unset_maximized;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2e35c6c4cde76c3f (void)) ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_fullscreen;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_unset_fullscreen */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_164235e3304fae06 (void)) ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return &xdg_toplevel_unset_fullscreen;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_minimized */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_aa2dbf797acab60b (void)) ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return &xdg_toplevel_set_minimized;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b86077da4d29e434 (void)) ("
  , "  struct xdg_popup *arg1,"
  , "  struct xdg_popup_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &xdg_popup_add_listener;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_41d1c649210a56df (void)) ("
  , "  struct xdg_popup *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &xdg_popup_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_873faacd29654e6e (void)) ("
  , "  struct xdg_popup *arg1"
  , ")"
  , "{"
  , "  return &xdg_popup_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8ce5b25436aee289 (void)) ("
  , "  struct xdg_popup *arg1"
  , ")"
  , "{"
  , "  return &xdg_popup_get_version;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f6f82a74a91b470f (void)) ("
  , "  struct xdg_popup *arg1"
  , ")"
  , "{"
  , "  return &xdg_popup_destroy;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_grab */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cf58910f3efb784e (void)) ("
  , "  struct xdg_popup *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &xdg_popup_grab;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_reposition */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_28ea7cb6d715e469 (void)) ("
  , "  struct xdg_popup *arg1,"
  , "  struct xdg_positioner *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &xdg_popup_reposition;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_add_listener@
foreign import ccall unsafe "hs_bindgen_5e91061b7e3aa6a5" hs_bindgen_5e91061b7e3aa6a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_add_listener@
hs_bindgen_5e91061b7e3aa6a5 :: IO (RIP.FunPtr (RIP.Ptr Xdg_wm_base -> PtrConst.PtrConst Xdg_wm_base_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_5e91061b7e3aa6a5 =
  RIP.fromFFIType hs_bindgen_5e91061b7e3aa6a5_base

{-# NOINLINE xdg_wm_base_add_listener #-}
{-| __C declaration:__ @xdg_wm_base_add_listener@

    __defined at:__ @xdg-shell-client-protocol.h 438:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_add_listener :: RIP.FunPtr (RIP.Ptr Xdg_wm_base -> PtrConst.PtrConst Xdg_wm_base_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
xdg_wm_base_add_listener =
  RIP.unsafePerformIO hs_bindgen_5e91061b7e3aa6a5

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_set_user_data@
foreign import ccall unsafe "hs_bindgen_b934572b1e828b1e" hs_bindgen_b934572b1e828b1e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_set_user_data@
hs_bindgen_b934572b1e828b1e :: IO (RIP.FunPtr (RIP.Ptr Xdg_wm_base -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_b934572b1e828b1e =
  RIP.fromFFIType hs_bindgen_b934572b1e828b1e_base

{-# NOINLINE xdg_wm_base_set_user_data #-}
{-| __C declaration:__ @xdg_wm_base_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 474:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_set_user_data :: RIP.FunPtr (RIP.Ptr Xdg_wm_base -> RIP.Ptr RIP.Void -> IO ())
xdg_wm_base_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b934572b1e828b1e

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_user_data@
foreign import ccall unsafe "hs_bindgen_2836c76a62f37f7d" hs_bindgen_2836c76a62f37f7d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_user_data@
hs_bindgen_2836c76a62f37f7d :: IO (RIP.FunPtr (RIP.Ptr Xdg_wm_base -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_2836c76a62f37f7d =
  RIP.fromFFIType hs_bindgen_2836c76a62f37f7d_base

{-# NOINLINE xdg_wm_base_get_user_data #-}
{-| __C declaration:__ @xdg_wm_base_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 481:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_get_user_data :: RIP.FunPtr (RIP.Ptr Xdg_wm_base -> IO (RIP.Ptr RIP.Void))
xdg_wm_base_get_user_data =
  RIP.unsafePerformIO hs_bindgen_2836c76a62f37f7d

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_version@
foreign import ccall unsafe "hs_bindgen_7809ea0704061434" hs_bindgen_7809ea0704061434_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_version@
hs_bindgen_7809ea0704061434 :: IO (RIP.FunPtr (RIP.Ptr Xdg_wm_base -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7809ea0704061434 =
  RIP.fromFFIType hs_bindgen_7809ea0704061434_base

{-# NOINLINE xdg_wm_base_get_version #-}
{-| __C declaration:__ @xdg_wm_base_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 487:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_get_version :: RIP.FunPtr (RIP.Ptr Xdg_wm_base -> IO HsBindgen.Runtime.LibC.Word32)
xdg_wm_base_get_version =
  RIP.unsafePerformIO hs_bindgen_7809ea0704061434

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_destroy@
foreign import ccall unsafe "hs_bindgen_78f59d7d3570bd24" hs_bindgen_78f59d7d3570bd24_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_destroy@
hs_bindgen_78f59d7d3570bd24 :: IO (RIP.FunPtr (RIP.Ptr Xdg_wm_base -> IO ()))
hs_bindgen_78f59d7d3570bd24 =
  RIP.fromFFIType hs_bindgen_78f59d7d3570bd24_base

{-# NOINLINE xdg_wm_base_destroy #-}
{-| Destroy this xdg_wm_base object.

    Destroying a bound xdg_wm_base object while there are surfaces still alive created by this xdg_wm_base object instance is illegal and will result in a defunct_surfaces error.

    __C declaration:__ @xdg_wm_base_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 502:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_destroy :: RIP.FunPtr (RIP.Ptr Xdg_wm_base -> IO ())
xdg_wm_base_destroy =
  RIP.unsafePerformIO hs_bindgen_78f59d7d3570bd24

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_create_positioner@
foreign import ccall unsafe "hs_bindgen_666aa44a7659f5b6" hs_bindgen_666aa44a7659f5b6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_create_positioner@
hs_bindgen_666aa44a7659f5b6 :: IO (RIP.FunPtr (RIP.Ptr Xdg_wm_base -> IO (RIP.Ptr Xdg_positioner)))
hs_bindgen_666aa44a7659f5b6 =
  RIP.fromFFIType hs_bindgen_666aa44a7659f5b6_base

{-# NOINLINE xdg_wm_base_create_positioner #-}
{-| Create a positioner object. A positioner object is used to position surfaces relative to some parent surface. See the interface description and xdg_surface.get_popup for details.

    __C declaration:__ @xdg_wm_base_create_positioner@

    __defined at:__ @xdg-shell-client-protocol.h 516:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_create_positioner :: RIP.FunPtr (RIP.Ptr Xdg_wm_base -> IO (RIP.Ptr Xdg_positioner))
xdg_wm_base_create_positioner =
  RIP.unsafePerformIO hs_bindgen_666aa44a7659f5b6

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_xdg_surface@
foreign import ccall unsafe "hs_bindgen_70d1e7c64a659c48" hs_bindgen_70d1e7c64a659c48_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_get_xdg_surface@
hs_bindgen_70d1e7c64a659c48 :: IO (RIP.FunPtr (RIP.Ptr Xdg_wm_base -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface -> IO (RIP.Ptr Xdg_surface)))
hs_bindgen_70d1e7c64a659c48 =
  RIP.fromFFIType hs_bindgen_70d1e7c64a659c48_base

{-# NOINLINE xdg_wm_base_get_xdg_surface #-}
{-| This creates an xdg_surface for the given surface. While xdg_surface itself is not a role, the corresponding surface may only be assigned a role extending xdg_surface, such as xdg_toplevel or xdg_popup. It is illegal to create an xdg_surface for a wl_surface which already has an assigned role and this will result in a role error.

    This creates an xdg_surface for the given surface. An xdg_surface is used as basis to define a role to a given surface, such as xdg_toplevel or xdg_popup. It also manages functionality shared between xdg_surface based surface roles.

    See the documentation of xdg_surface for more details about what an xdg_surface is and how it is used.

    __C declaration:__ @xdg_wm_base_get_xdg_surface@

    __defined at:__ @xdg-shell-client-protocol.h 544:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_get_xdg_surface :: RIP.FunPtr (RIP.Ptr Xdg_wm_base -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface -> IO (RIP.Ptr Xdg_surface))
xdg_wm_base_get_xdg_surface =
  RIP.unsafePerformIO hs_bindgen_70d1e7c64a659c48

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_pong@
foreign import ccall unsafe "hs_bindgen_ee00fadd54673151" hs_bindgen_ee00fadd54673151_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_pong@
hs_bindgen_ee00fadd54673151 :: IO (RIP.FunPtr (RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_ee00fadd54673151 =
  RIP.fromFFIType hs_bindgen_ee00fadd54673151_base

{-# NOINLINE xdg_wm_base_pong #-}
{-| A client must respond to a ping event with a pong request or the client may be deemed unresponsive. See xdg_wm_base.ping and xdg_wm_base.error.unresponsive.

    __C declaration:__ @xdg_wm_base_pong@

    __defined at:__ @xdg-shell-client-protocol.h 562:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_pong :: RIP.FunPtr (RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_wm_base_pong =
  RIP.unsafePerformIO hs_bindgen_ee00fadd54673151

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_user_data@
foreign import ccall unsafe "hs_bindgen_495e44dcdc5b39e3" hs_bindgen_495e44dcdc5b39e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_user_data@
hs_bindgen_495e44dcdc5b39e3 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_495e44dcdc5b39e3 =
  RIP.fromFFIType hs_bindgen_495e44dcdc5b39e3_base

{-# NOINLINE xdg_positioner_set_user_data #-}
{-| __C declaration:__ @xdg_positioner_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 771:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_user_data :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> RIP.Ptr RIP.Void -> IO ())
xdg_positioner_set_user_data =
  RIP.unsafePerformIO hs_bindgen_495e44dcdc5b39e3

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_get_user_data@
foreign import ccall unsafe "hs_bindgen_58946651dae80a56" hs_bindgen_58946651dae80a56_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_get_user_data@
hs_bindgen_58946651dae80a56 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_58946651dae80a56 =
  RIP.fromFFIType hs_bindgen_58946651dae80a56_base

{-# NOINLINE xdg_positioner_get_user_data #-}
{-| __C declaration:__ @xdg_positioner_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 778:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_get_user_data :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> IO (RIP.Ptr RIP.Void))
xdg_positioner_get_user_data =
  RIP.unsafePerformIO hs_bindgen_58946651dae80a56

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_get_version@
foreign import ccall unsafe "hs_bindgen_e0b2994653ed2691" hs_bindgen_e0b2994653ed2691_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_get_version@
hs_bindgen_e0b2994653ed2691 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_e0b2994653ed2691 =
  RIP.fromFFIType hs_bindgen_e0b2994653ed2691_base

{-# NOINLINE xdg_positioner_get_version #-}
{-| __C declaration:__ @xdg_positioner_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 784:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_get_version :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> IO HsBindgen.Runtime.LibC.Word32)
xdg_positioner_get_version =
  RIP.unsafePerformIO hs_bindgen_e0b2994653ed2691

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_destroy@
foreign import ccall unsafe "hs_bindgen_3085e6748cb2e9b9" hs_bindgen_3085e6748cb2e9b9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_destroy@
hs_bindgen_3085e6748cb2e9b9 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> IO ()))
hs_bindgen_3085e6748cb2e9b9 =
  RIP.fromFFIType hs_bindgen_3085e6748cb2e9b9_base

{-# NOINLINE xdg_positioner_destroy #-}
{-| Notify the compositor that the xdg_positioner will no longer be used.

    __C declaration:__ @xdg_positioner_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 795:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_destroy :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> IO ())
xdg_positioner_destroy =
  RIP.unsafePerformIO hs_bindgen_3085e6748cb2e9b9

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_size@
foreign import ccall unsafe "hs_bindgen_28fbe144fa13cada" hs_bindgen_28fbe144fa13cada_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_size@
hs_bindgen_28fbe144fa13cada :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_28fbe144fa13cada =
  RIP.fromFFIType hs_bindgen_28fbe144fa13cada_base

{-# NOINLINE xdg_positioner_set_size #-}
{-| Set the size of the surface that is to be positioned with the positioner object. The size is in surface-local coordinates and corresponds to the window geometry. See xdg_surface.set_window_geometry.

    If a zero or negative size is set the invalid_input error is raised.

    __C declaration:__ @xdg_positioner_set_size@

    __defined at:__ @xdg-shell-client-protocol.h 811:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_size :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
xdg_positioner_set_size =
  RIP.unsafePerformIO hs_bindgen_28fbe144fa13cada

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_anchor_rect@
foreign import ccall unsafe "hs_bindgen_2f6f4eb138948445" hs_bindgen_2f6f4eb138948445_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_anchor_rect@
hs_bindgen_2f6f4eb138948445 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_2f6f4eb138948445 =
  RIP.fromFFIType hs_bindgen_2f6f4eb138948445_base

{-# NOINLINE xdg_positioner_set_anchor_rect #-}
{-| Specify the anchor rectangle within the parent surface that the child surface will be placed relative to. The rectangle is relative to the window geometry as defined by xdg_surface.set_window_geometry of the parent surface.

    When the xdg_positioner object is used to position a child surface, the anchor rectangle may not extend outside the window geometry of the positioned child's parent surface.

    If a negative size is set the invalid_input error is raised.

    __C declaration:__ @xdg_positioner_set_anchor_rect@

    __defined at:__ @xdg-shell-client-protocol.h 832:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_anchor_rect :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
xdg_positioner_set_anchor_rect =
  RIP.unsafePerformIO hs_bindgen_2f6f4eb138948445

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_anchor@
foreign import ccall unsafe "hs_bindgen_b509d10cc11c8d1b" hs_bindgen_b509d10cc11c8d1b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_anchor@
hs_bindgen_b509d10cc11c8d1b :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_b509d10cc11c8d1b =
  RIP.fromFFIType hs_bindgen_b509d10cc11c8d1b_base

{-# NOINLINE xdg_positioner_set_anchor #-}
{-| Defines the anchor point for the anchor rectangle. The specified anchor is used derive an anchor point that the child surface will be positioned relative to. If a corner anchor is set (e.g. 'top_left' or 'bottom_right'), the anchor point will be at the specified corner; otherwise, the derived anchor point will be centered on the specified edge, or in the center of the anchor rectangle if no edge is specified.

    __C declaration:__ @xdg_positioner_set_anchor@

    __defined at:__ @xdg-shell-client-protocol.h 849:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_anchor :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_positioner_set_anchor =
  RIP.unsafePerformIO hs_bindgen_b509d10cc11c8d1b

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_gravity@
foreign import ccall unsafe "hs_bindgen_a21ca9d4046f8c92" hs_bindgen_a21ca9d4046f8c92_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_gravity@
hs_bindgen_a21ca9d4046f8c92 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_a21ca9d4046f8c92 =
  RIP.fromFFIType hs_bindgen_a21ca9d4046f8c92_base

{-# NOINLINE xdg_positioner_set_gravity #-}
{-| Defines in what direction a surface should be positioned, relative to the anchor point of the parent surface. If a corner gravity is specified (e.g. 'bottom_right' or 'top_left'), then the child surface will be placed towards the specified gravity; otherwise, the child surface will be centered over the anchor point on any axis that had no gravity specified. If the gravity is not in the ‘gravity’ enum, an invalid_input error is raised.

    __C declaration:__ @xdg_positioner_set_gravity@

    __defined at:__ @xdg-shell-client-protocol.h 867:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_gravity :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_positioner_set_gravity =
  RIP.unsafePerformIO hs_bindgen_a21ca9d4046f8c92

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_constraint_adjustment@
foreign import ccall unsafe "hs_bindgen_be8a0f287ad2c3c5" hs_bindgen_be8a0f287ad2c3c5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_constraint_adjustment@
hs_bindgen_be8a0f287ad2c3c5 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_be8a0f287ad2c3c5 =
  RIP.fromFFIType hs_bindgen_be8a0f287ad2c3c5_base

{-# NOINLINE xdg_positioner_set_constraint_adjustment #-}
{-| Specify how the window should be positioned if the originally intended position caused the surface to be constrained, meaning at least partially outside positioning boundaries set by the compositor. The adjustment is set by constructing a bitmask describing the adjustment to be made when the surface is constrained on that axis.

    If no bit for one axis is set, the compositor will assume that the child surface should not change its position on that axis when constrained.

    If more than one bit for one axis is set, the order of how adjustments are applied is specified in the corresponding adjustment descriptions.

    The default adjustment is none.

    __C declaration:__ @xdg_positioner_set_constraint_adjustment@

    __defined at:__ @xdg-shell-client-protocol.h 891:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_constraint_adjustment :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_positioner_set_constraint_adjustment =
  RIP.unsafePerformIO hs_bindgen_be8a0f287ad2c3c5

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_offset@
foreign import ccall unsafe "hs_bindgen_0686f3470e5049e3" hs_bindgen_0686f3470e5049e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_offset@
hs_bindgen_0686f3470e5049e3 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_0686f3470e5049e3 =
  RIP.fromFFIType hs_bindgen_0686f3470e5049e3_base

{-# NOINLINE xdg_positioner_set_offset #-}
{-| Specify the surface position offset relative to the position of the anchor on the anchor rectangle and the anchor on the surface. For example if the anchor of the anchor rectangle is at (x, y), the surface has the gravity bottom|right, and the offset is (ox, oy), the calculated surface position will be (x + ox, y + oy). The offset position of the surface is the one used for constraint testing. See set_constraint_adjustment.

    An example use case is placing a popup menu on top of a user interface element, while aligning the user interface element of the parent surface with some user interface element placed somewhere in the popup surface.

    __C declaration:__ @xdg_positioner_set_offset@

    __defined at:__ @xdg-shell-client-protocol.h 913:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_offset :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
xdg_positioner_set_offset =
  RIP.unsafePerformIO hs_bindgen_0686f3470e5049e3

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_reactive@
foreign import ccall unsafe "hs_bindgen_e90dee3f36bcc1b6" hs_bindgen_e90dee3f36bcc1b6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_reactive@
hs_bindgen_e90dee3f36bcc1b6 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> IO ()))
hs_bindgen_e90dee3f36bcc1b6 =
  RIP.fromFFIType hs_bindgen_e90dee3f36bcc1b6_base

{-# NOINLINE xdg_positioner_set_reactive #-}
{-| When set reactive, the surface is reconstrained if the conditions used for constraining changed, e.g. the parent window moved.

    If the conditions changed and the popup was reconstrained, an xdg_popup.configure event is sent with updated geometry, followed by an xdg_surface.configure event.

    __C declaration:__ @xdg_positioner_set_reactive@

    __defined at:__ @xdg-shell-client-protocol.h 930:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_reactive :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> IO ())
xdg_positioner_set_reactive =
  RIP.unsafePerformIO hs_bindgen_e90dee3f36bcc1b6

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_parent_size@
foreign import ccall unsafe "hs_bindgen_814e3ef71fb060f2" hs_bindgen_814e3ef71fb060f2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_parent_size@
hs_bindgen_814e3ef71fb060f2 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_814e3ef71fb060f2 =
  RIP.fromFFIType hs_bindgen_814e3ef71fb060f2_base

{-# NOINLINE xdg_positioner_set_parent_size #-}
{-| Set the parent window geometry the compositor should use when positioning the popup. The compositor may use this information to determine the future state the popup should be constrained using. If this doesn't match the dimension of the parent the popup is eventually positioned against, the behavior is undefined.

    The arguments are given in the surface-local coordinate space.

    __C declaration:__ @xdg_positioner_set_parent_size@

    __defined at:__ @xdg-shell-client-protocol.h 948:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_parent_size :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
xdg_positioner_set_parent_size =
  RIP.unsafePerformIO hs_bindgen_814e3ef71fb060f2

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_parent_configure@
foreign import ccall unsafe "hs_bindgen_8ac62df7de183883" hs_bindgen_8ac62df7de183883_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_set_parent_configure@
hs_bindgen_8ac62df7de183883 :: IO (RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_8ac62df7de183883 =
  RIP.fromFFIType hs_bindgen_8ac62df7de183883_base

{-# NOINLINE xdg_positioner_set_parent_configure #-}
{-| Set the serial of an xdg_surface.configure event this positioner will be used in response to. The compositor may use this information together with set_parent_size to determine what future state the popup should be constrained using.

    __C declaration:__ @xdg_positioner_set_parent_configure@

    __defined at:__ @xdg-shell-client-protocol.h 963:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_parent_configure :: RIP.FunPtr (RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_positioner_set_parent_configure =
  RIP.unsafePerformIO hs_bindgen_8ac62df7de183883

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_be36f3a5eaf6c7a6" hs_bindgen_be36f3a5eaf6c7a6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_add_listener@
hs_bindgen_be36f3a5eaf6c7a6 :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> PtrConst.PtrConst Xdg_surface_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_be36f3a5eaf6c7a6 =
  RIP.fromFFIType hs_bindgen_be36f3a5eaf6c7a6_base

{-# NOINLINE xdg_surface_add_listener #-}
{-| __C declaration:__ @xdg_surface_add_listener@

    __defined at:__ @xdg-shell-client-protocol.h 1037:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_add_listener :: RIP.FunPtr (RIP.Ptr Xdg_surface -> PtrConst.PtrConst Xdg_surface_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
xdg_surface_add_listener =
  RIP.unsafePerformIO hs_bindgen_be36f3a5eaf6c7a6

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_6eadac92d2d7df1d" hs_bindgen_6eadac92d2d7df1d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_set_user_data@
hs_bindgen_6eadac92d2d7df1d :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_6eadac92d2d7df1d =
  RIP.fromFFIType hs_bindgen_6eadac92d2d7df1d_base

{-# NOINLINE xdg_surface_set_user_data #-}
{-| __C declaration:__ @xdg_surface_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 1078:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_set_user_data :: RIP.FunPtr (RIP.Ptr Xdg_surface -> RIP.Ptr RIP.Void -> IO ())
xdg_surface_set_user_data =
  RIP.unsafePerformIO hs_bindgen_6eadac92d2d7df1d

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_9836368106faf84b" hs_bindgen_9836368106faf84b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_user_data@
hs_bindgen_9836368106faf84b :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_9836368106faf84b =
  RIP.fromFFIType hs_bindgen_9836368106faf84b_base

{-# NOINLINE xdg_surface_get_user_data #-}
{-| __C declaration:__ @xdg_surface_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 1085:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_get_user_data :: RIP.FunPtr (RIP.Ptr Xdg_surface -> IO (RIP.Ptr RIP.Void))
xdg_surface_get_user_data =
  RIP.unsafePerformIO hs_bindgen_9836368106faf84b

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_version@
foreign import ccall unsafe "hs_bindgen_38809e406b54f67f" hs_bindgen_38809e406b54f67f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_version@
hs_bindgen_38809e406b54f67f :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_38809e406b54f67f =
  RIP.fromFFIType hs_bindgen_38809e406b54f67f_base

{-# NOINLINE xdg_surface_get_version #-}
{-| __C declaration:__ @xdg_surface_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 1091:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_get_version :: RIP.FunPtr (RIP.Ptr Xdg_surface -> IO HsBindgen.Runtime.LibC.Word32)
xdg_surface_get_version =
  RIP.unsafePerformIO hs_bindgen_38809e406b54f67f

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_destroy@
foreign import ccall unsafe "hs_bindgen_a8488076ee110076" hs_bindgen_a8488076ee110076_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_destroy@
hs_bindgen_a8488076ee110076 :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> IO ()))
hs_bindgen_a8488076ee110076 =
  RIP.fromFFIType hs_bindgen_a8488076ee110076_base

{-# NOINLINE xdg_surface_destroy #-}
{-| Destroy the xdg_surface object. An xdg_surface must only be destroyed after its role object has been destroyed, otherwise a defunct_role_object error is raised.

    __C declaration:__ @xdg_surface_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 1104:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_destroy :: RIP.FunPtr (RIP.Ptr Xdg_surface -> IO ())
xdg_surface_destroy =
  RIP.unsafePerformIO hs_bindgen_a8488076ee110076

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_toplevel@
foreign import ccall unsafe "hs_bindgen_c326b424e9127276" hs_bindgen_c326b424e9127276_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_toplevel@
hs_bindgen_c326b424e9127276 :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> IO (RIP.Ptr Xdg_toplevel)))
hs_bindgen_c326b424e9127276 =
  RIP.fromFFIType hs_bindgen_c326b424e9127276_base

{-# NOINLINE xdg_surface_get_toplevel #-}
{-| This creates an xdg_toplevel object for the given xdg_surface and gives the associated wl_surface the xdg_toplevel role.

    See the documentation of xdg_toplevel for more details about what an xdg_toplevel is and how it is used.

    __C declaration:__ @xdg_surface_get_toplevel@

    __defined at:__ @xdg-shell-client-protocol.h 1120:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_get_toplevel :: RIP.FunPtr (RIP.Ptr Xdg_surface -> IO (RIP.Ptr Xdg_toplevel))
xdg_surface_get_toplevel =
  RIP.unsafePerformIO hs_bindgen_c326b424e9127276

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_popup@
foreign import ccall unsafe "hs_bindgen_43eb68b1768f1d59" hs_bindgen_43eb68b1768f1d59_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_get_popup@
hs_bindgen_43eb68b1768f1d59 :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> RIP.Ptr Xdg_surface -> RIP.Ptr Xdg_positioner -> IO (RIP.Ptr Xdg_popup)))
hs_bindgen_43eb68b1768f1d59 =
  RIP.fromFFIType hs_bindgen_43eb68b1768f1d59_base

{-# NOINLINE xdg_surface_get_popup #-}
{-| This creates an xdg_popup object for the given xdg_surface and gives the associated wl_surface the xdg_popup role.

    If null is passed as a parent, a parent surface must be specified using some other protocol, before committing the initial state.

    See the documentation of xdg_popup for more details about what an xdg_popup is and how it is used.

    __C declaration:__ @xdg_surface_get_popup@

    __defined at:__ @xdg-shell-client-protocol.h 1143:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_get_popup :: RIP.FunPtr (RIP.Ptr Xdg_surface -> RIP.Ptr Xdg_surface -> RIP.Ptr Xdg_positioner -> IO (RIP.Ptr Xdg_popup))
xdg_surface_get_popup =
  RIP.unsafePerformIO hs_bindgen_43eb68b1768f1d59

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_set_window_geometry@
foreign import ccall unsafe "hs_bindgen_38de86bd5bfb57f7" hs_bindgen_38de86bd5bfb57f7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_set_window_geometry@
hs_bindgen_38de86bd5bfb57f7 :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_38de86bd5bfb57f7 =
  RIP.fromFFIType hs_bindgen_38de86bd5bfb57f7_base

{-# NOINLINE xdg_surface_set_window_geometry #-}
{-| The window geometry of a surface is its "visible bounds" from the user's perspective. Client-side decorations often have invisible portions like drop-shadows which should be ignored for the purposes of aligning, placing and constraining windows. Note that in some situations, compositors may clip rendering to the window geometry, so the client should avoid putting functional elements outside of it.

    The window geometry is double-buffered state, see wl_surface.commit.

    When maintaining a position, the compositor should treat the (x, y) coordinate of the window geometry as the top left corner of the window. A client changing the (x, y) window geometry coordinate should in general not alter the position of the window.

    Once the window geometry of the surface is set, it is not possible to unset it, and it will remain the same until set_window_geometry is called again, even if a new subsurface or buffer is attached.

    If never set, the value is the full bounds of the surface, including any subsurfaces. This updates dynamically on every commit. This unset is meant for extremely simple clients.

    The arguments are given in the surface-local coordinate space of the wl_surface associated with this xdg_surface, and may extend outside of the wl_surface itself to mark parts of the subsurface tree as part of the window geometry.

    When applied, the effective window geometry will be the set window geometry clamped to the bounding rectangle of the combined geometry of the surface of the xdg_surface and the associated subsurfaces.

    The effective geometry will not be recalculated unless a new call to set_window_geometry is done and the new pending surface state is subsequently applied.

    The width and height of the effective window geometry must be greater than zero. Setting an invalid size will raise an invalid_size error.

    __C declaration:__ @xdg_surface_set_window_geometry@

    __defined at:__ @xdg-shell-client-protocol.h 1198:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_set_window_geometry :: RIP.FunPtr (RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
xdg_surface_set_window_geometry =
  RIP.unsafePerformIO hs_bindgen_38de86bd5bfb57f7

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_ack_configure@
foreign import ccall unsafe "hs_bindgen_e217f6aebc1318ff" hs_bindgen_e217f6aebc1318ff_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_ack_configure@
hs_bindgen_e217f6aebc1318ff :: IO (RIP.FunPtr (RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_e217f6aebc1318ff =
  RIP.fromFFIType hs_bindgen_e217f6aebc1318ff_base

{-# NOINLINE xdg_surface_ack_configure #-}
{-| When a configure event is received, if a client commits the surface in response to the configure event, then the client must make an ack_configure request sometime before the commit request, passing along the serial of the configure event.

    For instance, for toplevel surfaces the compositor might use this information to move a surface to the top left only when the client has drawn itself for the maximized or fullscreen state.

    If the client receives multiple configure events before it can respond to one, it only has to ack the last configure event. Acking a configure event that was never sent raises an invalid_serial error.

    A client is not required to commit immediately after sending an ack_configure request - it may even ack_configure several times before its next surface commit.

    A client may send multiple ack_configure requests before committing, but only the last request sent before a commit indicates which configure event the client really is responding to.

    Sending an ack_configure request consumes the serial number sent with the request, as well as serial numbers sent by all configure events sent on this xdg_surface prior to the configure event referenced by the committed serial.

    It is an error to issue multiple ack_configure requests referencing a serial from the same configure event, or to issue an ack_configure request referencing a serial from a configure event issued before the event identified by the last ack_configure request for the same xdg_surface. Doing so will raise an invalid_serial error.

    __C declaration:__ @xdg_surface_ack_configure@

    __defined at:__ @xdg-shell-client-protocol.h 1241:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_ack_configure :: RIP.FunPtr (RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_surface_ack_configure =
  RIP.unsafePerformIO hs_bindgen_e217f6aebc1318ff

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_add_listener@
foreign import ccall unsafe "hs_bindgen_992705c88929019d" hs_bindgen_992705c88929019d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_add_listener@
hs_bindgen_992705c88929019d :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> PtrConst.PtrConst Xdg_toplevel_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_992705c88929019d =
  RIP.fromFFIType hs_bindgen_992705c88929019d_base

{-# NOINLINE xdg_toplevel_add_listener #-}
{-| __C declaration:__ @xdg_toplevel_add_listener@

    __defined at:__ @xdg-shell-client-protocol.h 1607:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_add_listener :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> PtrConst.PtrConst Xdg_toplevel_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
xdg_toplevel_add_listener =
  RIP.unsafePerformIO hs_bindgen_992705c88929019d

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_user_data@
foreign import ccall unsafe "hs_bindgen_3b9d25a4fc274087" hs_bindgen_3b9d25a4fc274087_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_user_data@
hs_bindgen_3b9d25a4fc274087 :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_3b9d25a4fc274087 =
  RIP.fromFFIType hs_bindgen_3b9d25a4fc274087_base

{-# NOINLINE xdg_toplevel_set_user_data #-}
{-| __C declaration:__ @xdg_toplevel_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 1705:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_user_data :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr RIP.Void -> IO ())
xdg_toplevel_set_user_data =
  RIP.unsafePerformIO hs_bindgen_3b9d25a4fc274087

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_get_user_data@
foreign import ccall unsafe "hs_bindgen_93481263d809deb4" hs_bindgen_93481263d809deb4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_get_user_data@
hs_bindgen_93481263d809deb4 :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_93481263d809deb4 =
  RIP.fromFFIType hs_bindgen_93481263d809deb4_base

{-# NOINLINE xdg_toplevel_get_user_data #-}
{-| __C declaration:__ @xdg_toplevel_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 1712:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_get_user_data :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO (RIP.Ptr RIP.Void))
xdg_toplevel_get_user_data =
  RIP.unsafePerformIO hs_bindgen_93481263d809deb4

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_get_version@
foreign import ccall unsafe "hs_bindgen_295d9e86cca89b0b" hs_bindgen_295d9e86cca89b0b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_get_version@
hs_bindgen_295d9e86cca89b0b :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_295d9e86cca89b0b =
  RIP.fromFFIType hs_bindgen_295d9e86cca89b0b_base

{-# NOINLINE xdg_toplevel_get_version #-}
{-| __C declaration:__ @xdg_toplevel_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 1718:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_get_version :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO HsBindgen.Runtime.LibC.Word32)
xdg_toplevel_get_version =
  RIP.unsafePerformIO hs_bindgen_295d9e86cca89b0b

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_destroy@
foreign import ccall unsafe "hs_bindgen_6b02e43d7c099a8e" hs_bindgen_6b02e43d7c099a8e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_destroy@
hs_bindgen_6b02e43d7c099a8e :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ()))
hs_bindgen_6b02e43d7c099a8e =
  RIP.fromFFIType hs_bindgen_6b02e43d7c099a8e_base

{-# NOINLINE xdg_toplevel_destroy #-}
{-| This request destroys the role surface and unmaps the surface; see "Unmapping" behavior in interface section for details.

    __C declaration:__ @xdg_toplevel_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 1730:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_destroy :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ())
xdg_toplevel_destroy =
  RIP.unsafePerformIO hs_bindgen_6b02e43d7c099a8e

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_parent@
foreign import ccall unsafe "hs_bindgen_164910e45386592d" hs_bindgen_164910e45386592d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_parent@
hs_bindgen_164910e45386592d :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Xdg_toplevel -> IO ()))
hs_bindgen_164910e45386592d =
  RIP.fromFFIType hs_bindgen_164910e45386592d_base

{-# NOINLINE xdg_toplevel_set_parent #-}
{-| Set the "parent" of this surface. This surface should be stacked above the parent surface and all other ancestor surfaces.

    Parent surfaces should be set on dialogs, toolboxes, or other "auxiliary" surfaces, so that the parent is raised when the dialog is raised.

    Setting a null parent for a child surface unsets its parent. Setting a null parent for a surface which currently has no parent is a no-op.

    Only mapped surfaces can have child surfaces. Setting a parent which is not mapped is equivalent to setting a null parent. If a surface becomes unmapped, its children's parent is set to the parent of the now-unmapped surface. If the now-unmapped surface has no parent, its children's parent is unset. If the now-unmapped surface becomes mapped again, its parent-child relationship is not restored.

    The parent toplevel must not be one of the child toplevel's descendants, and the parent must be different from the child toplevel, otherwise the invalid_parent protocol error is raised.

    __C declaration:__ @xdg_toplevel_set_parent@

    __defined at:__ @xdg-shell-client-protocol.h 1761:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_parent :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Xdg_toplevel -> IO ())
xdg_toplevel_set_parent =
  RIP.unsafePerformIO hs_bindgen_164910e45386592d

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_title@
foreign import ccall unsafe "hs_bindgen_a34648827bdca7fb" hs_bindgen_a34648827bdca7fb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_title@
hs_bindgen_a34648827bdca7fb :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> PtrConst.PtrConst RIP.CChar -> IO ()))
hs_bindgen_a34648827bdca7fb =
  RIP.fromFFIType hs_bindgen_a34648827bdca7fb_base

{-# NOINLINE xdg_toplevel_set_title #-}
{-| Set a short title for the surface.

    This string may be used to identify the surface in a task bar, window list, or other user interface elements provided by the compositor.

    The string must be encoded in UTF-8.

    __C declaration:__ @xdg_toplevel_set_title@

    __defined at:__ @xdg-shell-client-protocol.h 1779:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_title :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> PtrConst.PtrConst RIP.CChar -> IO ())
xdg_toplevel_set_title =
  RIP.unsafePerformIO hs_bindgen_a34648827bdca7fb

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_app_id@
foreign import ccall unsafe "hs_bindgen_526281686145433d" hs_bindgen_526281686145433d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_app_id@
hs_bindgen_526281686145433d :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> PtrConst.PtrConst RIP.CChar -> IO ()))
hs_bindgen_526281686145433d =
  RIP.fromFFIType hs_bindgen_526281686145433d_base

{-# NOINLINE xdg_toplevel_set_app_id #-}
{-| Set an application identifier for the surface.

    The app ID identifies the general class of applications to which the surface belongs. The compositor can use this to group multiple surfaces together, or to determine how to launch a new application.

    For D-Bus activatable applications, the app ID is used as the D-Bus service name.

    The compositor shell will try to group application surfaces together by their app ID. As a best practice, it is suggested to select app ID's that match the basename of the application's .desktop file. For example, "org.freedesktop.FooViewer" where the .desktop file is "org.freedesktop.FooViewer.desktop".

    Like other properties, a set_app_id request can be sent after the xdg_toplevel has been mapped to update the property.

    See the desktop-entry specification [0] for more details on application identifiers and how they relate to well-known D-Bus names and .desktop files.

    [0] [https://standards.freedesktop.org/desktop-entry-spec/](https://standards.freedesktop.org/desktop-entry-spec/)

    __C declaration:__ @xdg_toplevel_set_app_id@

    __defined at:__ @xdg-shell-client-protocol.h 1813:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_app_id :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> PtrConst.PtrConst RIP.CChar -> IO ())
xdg_toplevel_set_app_id =
  RIP.unsafePerformIO hs_bindgen_526281686145433d

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_show_window_menu@
foreign import ccall unsafe "hs_bindgen_60891d21a564ecfe" hs_bindgen_60891d21a564ecfe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_show_window_menu@
hs_bindgen_60891d21a564ecfe :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_60891d21a564ecfe =
  RIP.fromFFIType hs_bindgen_60891d21a564ecfe_base

{-# NOINLINE xdg_toplevel_show_window_menu #-}
{-| Clients implementing client-side decorations might want to show a context menu when right-clicking on the decorations, giving the user a menu that they can use to maximize or minimize the window.

    This request asks the compositor to pop up such a window menu at the given position, relative to the local surface coordinates of the parent surface. There are no guarantees as to what menu items the window menu contains, or even if a window menu will be drawn at all.

    This request must be used in response to some sort of user action like a button press, key press, or touch down event.

    __C declaration:__ @xdg_toplevel_show_window_menu@

    __defined at:__ @xdg-shell-client-protocol.h 1836:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_show_window_menu :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
xdg_toplevel_show_window_menu =
  RIP.unsafePerformIO hs_bindgen_60891d21a564ecfe

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_move@
foreign import ccall unsafe "hs_bindgen_c84532d7af825531" hs_bindgen_c84532d7af825531_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_move@
hs_bindgen_c84532d7af825531 :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_c84532d7af825531 =
  RIP.fromFFIType hs_bindgen_c84532d7af825531_base

{-# NOINLINE xdg_toplevel_move #-}
{-| Start an interactive, user-driven move of the surface.

    This request must be used in response to some sort of user action like a button press, key press, or touch down event. The passed serial is used to determine the type of interactive move (touch, pointer, etc).

    The server may ignore move requests depending on the state of the surface (e.g. fullscreen or maximized), or if the passed serial is no longer valid.

    If triggered, the surface will lose the focus of the device (wl_pointer, wl_touch, etc) used for the move. It is up to the compositor to visually indicate that the move is taking place, such as updating a pointer cursor, during the move. There is no guarantee that the device focus will return when the move is completed.

    __C declaration:__ @xdg_toplevel_move@

    __defined at:__ @xdg-shell-client-protocol.h 1863:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_move :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_toplevel_move =
  RIP.unsafePerformIO hs_bindgen_c84532d7af825531

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_resize@
foreign import ccall unsafe "hs_bindgen_2a941ab4bc0a7ad8" hs_bindgen_2a941ab4bc0a7ad8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_resize@
hs_bindgen_2a941ab4bc0a7ad8 :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_2a941ab4bc0a7ad8 =
  RIP.fromFFIType hs_bindgen_2a941ab4bc0a7ad8_base

{-# NOINLINE xdg_toplevel_resize #-}
{-| Start a user-driven, interactive resize of the surface.

    This request must be used in response to some sort of user action like a button press, key press, or touch down event. The passed serial is used to determine the type of interactive resize (touch, pointer, etc).

    The server may ignore resize requests depending on the state of the surface (e.g. fullscreen or maximized).

    If triggered, the client will receive configure events with the "resize" state enum value and the expected sizes. See the "resize" enum value for more details about what is required. The client must also acknowledge configure events using "ack_configure". After the resize is completed, the client will receive another "configure" event without the resize state.

    If triggered, the surface also will lose the focus of the device (wl_pointer, wl_touch, etc) used for the resize. It is up to the compositor to visually indicate that the resize is taking place, such as updating a pointer cursor, during the resize. There is no guarantee that the device focus will return when the resize is completed.

    The edges parameter specifies how the surface should be resized, and is one of the values of the resize_edge enum. Values not matching a variant of the enum will cause the invalid_resize_edge protocol error. The compositor may use this information to update the surface position for example when dragging the top left corner. The compositor may also use this information to adapt its behavior, e.g. choose an appropriate cursor image.

    __C declaration:__ @xdg_toplevel_resize@

    __defined at:__ @xdg-shell-client-protocol.h 1905:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_resize :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_toplevel_resize =
  RIP.unsafePerformIO hs_bindgen_2a941ab4bc0a7ad8

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_max_size@
foreign import ccall unsafe "hs_bindgen_7fc2885a9d09da05" hs_bindgen_7fc2885a9d09da05_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_max_size@
hs_bindgen_7fc2885a9d09da05 :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_7fc2885a9d09da05 =
  RIP.fromFFIType hs_bindgen_7fc2885a9d09da05_base

{-# NOINLINE xdg_toplevel_set_max_size #-}
{-| Set a maximum size for the window.

    The client can specify a maximum size so that the compositor does not try to configure the window beyond this size.

    The width and height arguments are in window geometry coordinates. See xdg_surface.set_window_geometry.

    Values set in this way are double-buffered, see wl_surface.commit.

    The compositor can use this information to allow or disallow different states like maximize or fullscreen and draw accurate animations.

    Similarly, a tiling window manager may use this information to place and resize client windows in a more effective way.

    The client should not rely on the compositor to obey the maximum size. The compositor may decide to ignore the values set by the client and request a larger size.

    If never set, or a value of zero in the request, means that the client has no expected maximum size in the given dimension. As a result, a client wishing to reset the maximum size to an unspecified state can use zero for width and height in the request.

    Requesting a maximum size to be smaller than the minimum size of a surface is illegal and will result in an invalid_size error.

    The width and height must be greater than or equal to zero. Using strictly negative values for width or height will result in a invalid_size error.

    __C declaration:__ @xdg_toplevel_set_max_size@

    __defined at:__ @xdg-shell-client-protocol.h 1949:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_max_size :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
xdg_toplevel_set_max_size =
  RIP.unsafePerformIO hs_bindgen_7fc2885a9d09da05

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_min_size@
foreign import ccall unsafe "hs_bindgen_a89742eab0ec24b8" hs_bindgen_a89742eab0ec24b8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_min_size@
hs_bindgen_a89742eab0ec24b8 :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_a89742eab0ec24b8 =
  RIP.fromFFIType hs_bindgen_a89742eab0ec24b8_base

{-# NOINLINE xdg_toplevel_set_min_size #-}
{-| Set a minimum size for the window.

    The client can specify a minimum size so that the compositor does not try to configure the window below this size.

    The width and height arguments are in window geometry coordinates. See xdg_surface.set_window_geometry.

    Values set in this way are double-buffered, see wl_surface.commit.

    The compositor can use this information to allow or disallow different states like maximize or fullscreen and draw accurate animations.

    Similarly, a tiling window manager may use this information to place and resize client windows in a more effective way.

    The client should not rely on the compositor to obey the minimum size. The compositor may decide to ignore the values set by the client and request a smaller size.

    If never set, or a value of zero in the request, means that the client has no expected minimum size in the given dimension. As a result, a client wishing to reset the minimum size to an unspecified state can use zero for width and height in the request.

    Requesting a minimum size to be larger than the maximum size of a surface is illegal and will result in an invalid_size error.

    The width and height must be greater than or equal to zero. Using strictly negative values for width and height will result in a invalid_size error.

    __C declaration:__ @xdg_toplevel_set_min_size@

    __defined at:__ @xdg-shell-client-protocol.h 1993:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_min_size :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
xdg_toplevel_set_min_size =
  RIP.unsafePerformIO hs_bindgen_a89742eab0ec24b8

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_maximized@
foreign import ccall unsafe "hs_bindgen_e65f895f0098869a" hs_bindgen_e65f895f0098869a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_maximized@
hs_bindgen_e65f895f0098869a :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ()))
hs_bindgen_e65f895f0098869a =
  RIP.fromFFIType hs_bindgen_e65f895f0098869a_base

{-# NOINLINE xdg_toplevel_set_maximized #-}
{-| Maximize the surface.

    After requesting that the surface should be maximized, the compositor will respond by emitting a configure event. Whether this configure actually sets the window maximized is subject to compositor policies. The client must then update its content, drawing in the configured state. The client must also acknowledge the configure when committing the new content (see ack_configure).

    It is up to the compositor to decide how and where to maximize the surface, for example which output and what region of the screen should be used.

    If the surface was already maximized, the compositor will still emit a configure event with the "maximized" state.

    If the surface is in a fullscreen state, this request has no direct effect. It may alter the state the surface is returned to when unmaximized unless overridden by the compositor.

    __C declaration:__ @xdg_toplevel_set_maximized@

    __defined at:__ @xdg-shell-client-protocol.h 2023:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_maximized :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ())
xdg_toplevel_set_maximized =
  RIP.unsafePerformIO hs_bindgen_e65f895f0098869a

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_unset_maximized@
foreign import ccall unsafe "hs_bindgen_2d47f3936d3c7216" hs_bindgen_2d47f3936d3c7216_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_unset_maximized@
hs_bindgen_2d47f3936d3c7216 :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ()))
hs_bindgen_2d47f3936d3c7216 =
  RIP.fromFFIType hs_bindgen_2d47f3936d3c7216_base

{-# NOINLINE xdg_toplevel_unset_maximized #-}
{-| Unmaximize the surface.

    After requesting that the surface should be unmaximized, the compositor will respond by emitting a configure event. Whether this actually un-maximizes the window is subject to compositor policies. If available and applicable, the compositor will include the window geometry dimensions the window had prior to being maximized in the configure event. The client must then update its content, drawing it in the configured state. The client must also acknowledge the configure when committing the new content (see ack_configure).

    It is up to the compositor to position the surface after it was unmaximized; usually the position the surface had before maximizing, if applicable.

    If the surface was already not maximized, the compositor will still emit a configure event without the "maximized" state.

    If the surface is in a fullscreen state, this request has no direct effect. It may alter the state the surface is returned to when unmaximized unless overridden by the compositor.

    __C declaration:__ @xdg_toplevel_unset_maximized@

    __defined at:__ @xdg-shell-client-protocol.h 2055:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_unset_maximized :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ())
xdg_toplevel_unset_maximized =
  RIP.unsafePerformIO hs_bindgen_2d47f3936d3c7216

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_fullscreen@
foreign import ccall unsafe "hs_bindgen_2e35c6c4cde76c3f" hs_bindgen_2e35c6c4cde76c3f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_fullscreen@
hs_bindgen_2e35c6c4cde76c3f :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output -> IO ()))
hs_bindgen_2e35c6c4cde76c3f =
  RIP.fromFFIType hs_bindgen_2e35c6c4cde76c3f_base

{-# NOINLINE xdg_toplevel_set_fullscreen #-}
{-| Make the surface fullscreen.

    After requesting that the surface should be fullscreened, the compositor will respond by emitting a configure event. Whether the client is actually put into a fullscreen state is subject to compositor policies. The client must also acknowledge the configure when committing the new content (see ack_configure).

    The output passed by the request indicates the client's preference as to which display it should be set fullscreen on. If this value is NULL, it's up to the compositor to choose which display will be used to map this surface.

    If the surface doesn't cover the whole output, the compositor will position the surface in the center of the output and compensate with with border fill covering the rest of the output. The content of the border fill is undefined, but should be assumed to be in some way that attempts to blend into the surrounding area (e.g. solid black).

    If the fullscreened surface is not opaque, the compositor must make sure that other screen content not part of the same surface tree (made up of subsurfaces, popups or similarly coupled surfaces) are not visible below the fullscreened surface.

    __C declaration:__ @xdg_toplevel_set_fullscreen@

    __defined at:__ @xdg-shell-client-protocol.h 2089:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_fullscreen :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output -> IO ())
xdg_toplevel_set_fullscreen =
  RIP.unsafePerformIO hs_bindgen_2e35c6c4cde76c3f

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_unset_fullscreen@
foreign import ccall unsafe "hs_bindgen_164235e3304fae06" hs_bindgen_164235e3304fae06_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_unset_fullscreen@
hs_bindgen_164235e3304fae06 :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ()))
hs_bindgen_164235e3304fae06 =
  RIP.fromFFIType hs_bindgen_164235e3304fae06_base

{-# NOINLINE xdg_toplevel_unset_fullscreen #-}
{-| Make the surface no longer fullscreen.

    After requesting that the surface should be unfullscreened, the compositor will respond by emitting a configure event. Whether this actually removes the fullscreen state of the client is subject to compositor policies.

    Making a surface unfullscreen sets states for the surface based on the following:

    * the state(s) it may have had before becoming fullscreen

    * any state(s) decided by the compositor

    * any state(s) requested by the client while the surface was fullscreen

    The compositor may include the previous window geometry dimensions in the configure event, if applicable.

    The client must also acknowledge the configure when committing the new content (see ack_configure).

    __C declaration:__ @xdg_toplevel_unset_fullscreen@

    __defined at:__ @xdg-shell-client-protocol.h 2117:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_unset_fullscreen :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ())
xdg_toplevel_unset_fullscreen =
  RIP.unsafePerformIO hs_bindgen_164235e3304fae06

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_minimized@
foreign import ccall unsafe "hs_bindgen_aa2dbf797acab60b" hs_bindgen_aa2dbf797acab60b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_set_minimized@
hs_bindgen_aa2dbf797acab60b :: IO (RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ()))
hs_bindgen_aa2dbf797acab60b =
  RIP.fromFFIType hs_bindgen_aa2dbf797acab60b_base

{-# NOINLINE xdg_toplevel_set_minimized #-}
{-| Request that the compositor minimize your surface. There is no way to know if the surface is currently minimized, nor is there any way to unset minimization on this surface.

    If you are looking to throttle redrawing when minimized, please instead use the wl_surface.frame event for this, as this will also work with live previews on windows in Alt-Tab, Expose or similar compositor features.

    __C declaration:__ @xdg_toplevel_set_minimized@

    __defined at:__ @xdg-shell-client-protocol.h 2136:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_minimized :: RIP.FunPtr (RIP.Ptr Xdg_toplevel -> IO ())
xdg_toplevel_set_minimized =
  RIP.unsafePerformIO hs_bindgen_aa2dbf797acab60b

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_add_listener@
foreign import ccall unsafe "hs_bindgen_b86077da4d29e434" hs_bindgen_b86077da4d29e434_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_add_listener@
hs_bindgen_b86077da4d29e434 :: IO (RIP.FunPtr (RIP.Ptr Xdg_popup -> PtrConst.PtrConst Xdg_popup_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt))
hs_bindgen_b86077da4d29e434 =
  RIP.fromFFIType hs_bindgen_b86077da4d29e434_base

{-# NOINLINE xdg_popup_add_listener #-}
{-| __C declaration:__ @xdg_popup_add_listener@

    __defined at:__ @xdg-shell-client-protocol.h 2225:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_add_listener :: RIP.FunPtr (RIP.Ptr Xdg_popup -> PtrConst.PtrConst Xdg_popup_listener -> RIP.Ptr RIP.Void -> IO RIP.CInt)
xdg_popup_add_listener =
  RIP.unsafePerformIO hs_bindgen_b86077da4d29e434

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_set_user_data@
foreign import ccall unsafe "hs_bindgen_41d1c649210a56df" hs_bindgen_41d1c649210a56df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_set_user_data@
hs_bindgen_41d1c649210a56df :: IO (RIP.FunPtr (RIP.Ptr Xdg_popup -> RIP.Ptr RIP.Void -> IO ()))
hs_bindgen_41d1c649210a56df =
  RIP.fromFFIType hs_bindgen_41d1c649210a56df_base

{-# NOINLINE xdg_popup_set_user_data #-}
{-| __C declaration:__ @xdg_popup_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 2264:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_set_user_data :: RIP.FunPtr (RIP.Ptr Xdg_popup -> RIP.Ptr RIP.Void -> IO ())
xdg_popup_set_user_data =
  RIP.unsafePerformIO hs_bindgen_41d1c649210a56df

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_get_user_data@
foreign import ccall unsafe "hs_bindgen_873faacd29654e6e" hs_bindgen_873faacd29654e6e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_get_user_data@
hs_bindgen_873faacd29654e6e :: IO (RIP.FunPtr (RIP.Ptr Xdg_popup -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_873faacd29654e6e =
  RIP.fromFFIType hs_bindgen_873faacd29654e6e_base

{-# NOINLINE xdg_popup_get_user_data #-}
{-| __C declaration:__ @xdg_popup_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 2271:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_get_user_data :: RIP.FunPtr (RIP.Ptr Xdg_popup -> IO (RIP.Ptr RIP.Void))
xdg_popup_get_user_data =
  RIP.unsafePerformIO hs_bindgen_873faacd29654e6e

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_get_version@
foreign import ccall unsafe "hs_bindgen_8ce5b25436aee289" hs_bindgen_8ce5b25436aee289_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_get_version@
hs_bindgen_8ce5b25436aee289 :: IO (RIP.FunPtr (RIP.Ptr Xdg_popup -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8ce5b25436aee289 =
  RIP.fromFFIType hs_bindgen_8ce5b25436aee289_base

{-# NOINLINE xdg_popup_get_version #-}
{-| __C declaration:__ @xdg_popup_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 2277:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_get_version :: RIP.FunPtr (RIP.Ptr Xdg_popup -> IO HsBindgen.Runtime.LibC.Word32)
xdg_popup_get_version =
  RIP.unsafePerformIO hs_bindgen_8ce5b25436aee289

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_destroy@
foreign import ccall unsafe "hs_bindgen_f6f82a74a91b470f" hs_bindgen_f6f82a74a91b470f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_destroy@
hs_bindgen_f6f82a74a91b470f :: IO (RIP.FunPtr (RIP.Ptr Xdg_popup -> IO ()))
hs_bindgen_f6f82a74a91b470f =
  RIP.fromFFIType hs_bindgen_f6f82a74a91b470f_base

{-# NOINLINE xdg_popup_destroy #-}
{-| This destroys the popup. Explicitly destroying the xdg_popup object will also dismiss the popup, and unmap the surface.

    If this xdg_popup is not the "topmost" popup, the xdg_wm_base.not_the_topmost_popup protocol error will be sent.

    __C declaration:__ @xdg_popup_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 2292:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_destroy :: RIP.FunPtr (RIP.Ptr Xdg_popup -> IO ())
xdg_popup_destroy =
  RIP.unsafePerformIO hs_bindgen_f6f82a74a91b470f

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_grab@
foreign import ccall unsafe "hs_bindgen_cf58910f3efb784e" hs_bindgen_cf58910f3efb784e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_grab@
hs_bindgen_cf58910f3efb784e :: IO (RIP.FunPtr (RIP.Ptr Xdg_popup -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_cf58910f3efb784e =
  RIP.fromFFIType hs_bindgen_cf58910f3efb784e_base

{-# NOINLINE xdg_popup_grab #-}
{-| This request makes the created popup take an explicit grab. An explicit grab will be dismissed when the user dismisses the popup, or when the client destroys the xdg_popup. This can be done by the user clicking outside the surface, using the keyboard, or even locking the screen through closing the lid or a timeout.

    If the compositor denies the grab, the popup will be immediately dismissed.

    This request must be used in response to some sort of user action like a button press, key press, or touch down event. The serial number of the event should be passed as 'serial'.

    The parent of a grabbing popup must either be an xdg_toplevel surface or another xdg_popup with an explicit grab. If the parent is another xdg_popup it means that the popups are nested, with this popup now being the topmost popup.

    Nested popups must be destroyed in the reverse order they were created in, e.g. the only popup you are allowed to destroy at all times is the topmost one.

    When compositors choose to dismiss a popup, they may dismiss every nested grabbing popup as well. When a compositor dismisses popups, it will follow the same dismissing order as required from the client.

    If the topmost grabbing popup is destroyed, the grab will be returned to the parent of the popup, if that parent previously had an explicit grab.

    If the parent is a grabbing popup which has already been dismissed, this popup will be immediately dismissed. If the parent is a popup that did not take an explicit grab, an error will be raised.

    During a popup grab, the client owning the grab will receive pointer and touch events for all their surfaces as normal (similar to an "owner-events" grab in X11 parlance), while the top most grabbing popup will always have keyboard focus.

    __C declaration:__ @xdg_popup_grab@

    __defined at:__ @xdg-shell-client-protocol.h 2340:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_grab :: RIP.FunPtr (RIP.Ptr Xdg_popup -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_popup_grab =
  RIP.unsafePerformIO hs_bindgen_cf58910f3efb784e

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_reposition@
foreign import ccall unsafe "hs_bindgen_28ea7cb6d715e469" hs_bindgen_28ea7cb6d715e469_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_reposition@
hs_bindgen_28ea7cb6d715e469 :: IO (RIP.FunPtr (RIP.Ptr Xdg_popup -> RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_28ea7cb6d715e469 =
  RIP.fromFFIType hs_bindgen_28ea7cb6d715e469_base

{-# NOINLINE xdg_popup_reposition #-}
{-| Reposition an already-mapped popup. The popup will be placed given the details in the passed xdg_positioner object, and a xdg_popup.repositioned followed by xdg_popup.configure and xdg_surface.configure will be emitted in response. Any parameters set by the previous positioner will be discarded.

    The passed token will be sent in the corresponding xdg_popup.repositioned event. The new popup position will not take effect until the corresponding configure event is acknowledged by the client. See xdg_popup.repositioned for details. The token itself is opaque, and has no other special meaning.

    If multiple reposition requests are sent, the compositor may skip all but the last one.

    If the popup is repositioned in response to a configure event for its parent, the client should send an xdg_positioner.set_parent_configure and possibly an xdg_positioner.set_parent_size request to allow the compositor to properly constrain the popup.

    If the popup is repositioned together with a parent that is being resized, but not in response to a configure event, the client should send an xdg_positioner.set_parent_size request.

    __C declaration:__ @xdg_popup_reposition@

    __defined at:__ @xdg-shell-client-protocol.h 2374:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_reposition :: RIP.FunPtr (RIP.Ptr Xdg_popup -> RIP.Ptr Xdg_positioner -> HsBindgen.Runtime.LibC.Word32 -> IO ())
xdg_popup_reposition =
  RIP.unsafePerformIO hs_bindgen_28ea7cb6d715e469

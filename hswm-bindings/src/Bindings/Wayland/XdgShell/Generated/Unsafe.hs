{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.XdgShell.Generated.Unsafe
    ( Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_wm_base_add_listener
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_wm_base_set_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_wm_base_get_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_wm_base_get_version
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_wm_base_destroy
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_wm_base_create_positioner
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_wm_base_get_xdg_surface
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_wm_base_pong
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_get_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_get_version
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_destroy
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_size
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_anchor_rect
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_anchor
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_gravity
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_constraint_adjustment
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_offset
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_reactive
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_parent_size
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_positioner_set_parent_configure
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_add_listener
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_set_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_get_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_get_version
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_destroy
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_get_toplevel
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_get_popup
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_set_window_geometry
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_surface_ack_configure
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_add_listener
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_get_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_get_version
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_destroy
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_parent
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_title
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_app_id
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_show_window_menu
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_move
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_resize
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_max_size
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_min_size
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_maximized
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_unset_maximized
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_fullscreen
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_unset_fullscreen
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_toplevel_set_minimized
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_popup_add_listener
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_popup_set_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_popup_get_user_data
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_popup_get_version
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_popup_destroy
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_popup_grab
    , Bindings.Wayland.XdgShell.Generated.Unsafe.xdg_popup_reposition
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
  , "signed int hs_bindgen_cd158558fb8c28ab ("
  , "  struct xdg_wm_base *arg1,"
  , "  struct xdg_wm_base_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (xdg_wm_base_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a70ef77f527dbdbb ("
  , "  struct xdg_wm_base *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (xdg_wm_base_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_065c12d22cd19a6d ("
  , "  struct xdg_wm_base *arg1"
  , ")"
  , "{"
  , "  return (xdg_wm_base_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b63d4ffb5f8cb692 ("
  , "  struct xdg_wm_base *arg1"
  , ")"
  , "{"
  , "  return (xdg_wm_base_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_0a02d5b221de2041 ("
  , "  struct xdg_wm_base *arg1"
  , ")"
  , "{"
  , "  (xdg_wm_base_destroy)(arg1);"
  , "}"
  , "struct xdg_positioner *hs_bindgen_ffe41c6716b556e3 ("
  , "  struct xdg_wm_base *arg1"
  , ")"
  , "{"
  , "  return (xdg_wm_base_create_positioner)(arg1);"
  , "}"
  , "struct xdg_surface *hs_bindgen_7bb03740dac824de ("
  , "  struct xdg_wm_base *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (xdg_wm_base_get_xdg_surface)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f5b4608631a668bd ("
  , "  struct xdg_wm_base *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (xdg_wm_base_pong)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_19be1cc9e38907a4 ("
  , "  struct xdg_positioner *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (xdg_positioner_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ece29dae214659c5 ("
  , "  struct xdg_positioner *arg1"
  , ")"
  , "{"
  , "  return (xdg_positioner_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_055225ec52488270 ("
  , "  struct xdg_positioner *arg1"
  , ")"
  , "{"
  , "  return (xdg_positioner_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4bf0e92fb05278b9 ("
  , "  struct xdg_positioner *arg1"
  , ")"
  , "{"
  , "  (xdg_positioner_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_33421d3e00720c51 ("
  , "  struct xdg_positioner *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (xdg_positioner_set_size)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_663d61f97c47daf3 ("
  , "  struct xdg_positioner *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (xdg_positioner_set_anchor_rect)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_22e0656c86865b1e ("
  , "  struct xdg_positioner *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (xdg_positioner_set_anchor)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ce3227bc8d402a1a ("
  , "  struct xdg_positioner *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (xdg_positioner_set_gravity)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e5b323c6e30d51af ("
  , "  struct xdg_positioner *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (xdg_positioner_set_constraint_adjustment)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_bddfde4e25a3bf42 ("
  , "  struct xdg_positioner *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (xdg_positioner_set_offset)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9c0f6792452f9944 ("
  , "  struct xdg_positioner *arg1"
  , ")"
  , "{"
  , "  (xdg_positioner_set_reactive)(arg1);"
  , "}"
  , "void hs_bindgen_d3aeb4505fbfaaad ("
  , "  struct xdg_positioner *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (xdg_positioner_set_parent_size)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d739b0dca22dae11 ("
  , "  struct xdg_positioner *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (xdg_positioner_set_parent_configure)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_689ddec460db50fe ("
  , "  struct xdg_surface *arg1,"
  , "  struct xdg_surface_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (xdg_surface_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_cb745d5d3705cf35 ("
  , "  struct xdg_surface *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (xdg_surface_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_00658e142cf0b0c6 ("
  , "  struct xdg_surface *arg1"
  , ")"
  , "{"
  , "  return (xdg_surface_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a3a31065a6f6845e ("
  , "  struct xdg_surface *arg1"
  , ")"
  , "{"
  , "  return (xdg_surface_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_6a3575242f9b6a73 ("
  , "  struct xdg_surface *arg1"
  , ")"
  , "{"
  , "  (xdg_surface_destroy)(arg1);"
  , "}"
  , "struct xdg_toplevel *hs_bindgen_abad528de88235f4 ("
  , "  struct xdg_surface *arg1"
  , ")"
  , "{"
  , "  return (xdg_surface_get_toplevel)(arg1);"
  , "}"
  , "struct xdg_popup *hs_bindgen_0e1fd3228461e23a ("
  , "  struct xdg_surface *arg1,"
  , "  struct xdg_surface *arg2,"
  , "  struct xdg_positioner *arg3"
  , ")"
  , "{"
  , "  return (xdg_surface_get_popup)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_056d1125f83d6f04 ("
  , "  struct xdg_surface *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (xdg_surface_set_window_geometry)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_8afc6ac09dcd0942 ("
  , "  struct xdg_surface *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (xdg_surface_ack_configure)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_6b0579eaad919b05 ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct xdg_toplevel_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (xdg_toplevel_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2e98bbe85a76532d ("
  , "  struct xdg_toplevel *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_d7e2940538cc3ea1 ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return (xdg_toplevel_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_89547a0c1d58a652 ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  return (xdg_toplevel_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4ba2f2cc1f14b7a4 ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  (xdg_toplevel_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_111f3e980f45f4db ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct xdg_toplevel *arg2"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_parent)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_046586c9e171b4ef ("
  , "  struct xdg_toplevel *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_title)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_e19ebf6b25bd7988 ("
  , "  struct xdg_toplevel *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_app_id)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_92e5b89a5e00bb36 ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (xdg_toplevel_show_window_menu)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_d748d8dfbe33f285 ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (xdg_toplevel_move)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_13ac82d337029a06 ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  (xdg_toplevel_resize)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_c61f643c061da948 ("
  , "  struct xdg_toplevel *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_max_size)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9e44d720cc012226 ("
  , "  struct xdg_toplevel *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_min_size)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c9f106d4d495d986 ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_maximized)(arg1);"
  , "}"
  , "void hs_bindgen_e31465634921dbea ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  (xdg_toplevel_unset_maximized)(arg1);"
  , "}"
  , "void hs_bindgen_353a5e4ed513ffb8 ("
  , "  struct xdg_toplevel *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_fullscreen)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d337c9c4cfd772b0 ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  (xdg_toplevel_unset_fullscreen)(arg1);"
  , "}"
  , "void hs_bindgen_c6ecc65e1683f9f2 ("
  , "  struct xdg_toplevel *arg1"
  , ")"
  , "{"
  , "  (xdg_toplevel_set_minimized)(arg1);"
  , "}"
  , "signed int hs_bindgen_e11c9ee902344e24 ("
  , "  struct xdg_popup *arg1,"
  , "  struct xdg_popup_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (xdg_popup_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b9c446df6d139da6 ("
  , "  struct xdg_popup *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (xdg_popup_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ebc4728644215cf2 ("
  , "  struct xdg_popup *arg1"
  , ")"
  , "{"
  , "  return (xdg_popup_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5523feddc842a342 ("
  , "  struct xdg_popup *arg1"
  , ")"
  , "{"
  , "  return (xdg_popup_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_44535a60781bd273 ("
  , "  struct xdg_popup *arg1"
  , ")"
  , "{"
  , "  (xdg_popup_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_53d8c7aaea9a6f44 ("
  , "  struct xdg_popup *arg1,"
  , "  struct wl_seat *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (xdg_popup_grab)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2cbaa4f7a5b002fe ("
  , "  struct xdg_popup *arg1,"
  , "  struct xdg_positioner *arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (xdg_popup_reposition)(arg1, arg2, arg3);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_add_listener@
foreign import ccall unsafe "hs_bindgen_cd158558fb8c28ab" hs_bindgen_cd158558fb8c28ab_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_add_listener@
hs_bindgen_cd158558fb8c28ab ::
     RIP.Ptr Xdg_wm_base
  -> PtrConst.PtrConst Xdg_wm_base_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_cd158558fb8c28ab =
  RIP.fromFFIType hs_bindgen_cd158558fb8c28ab_base

{-| __C declaration:__ @xdg_wm_base_add_listener@

    __defined at:__ @xdg-shell-client-protocol.h 438:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_add_listener ::
     RIP.Ptr Xdg_wm_base
     -- ^ __C declaration:__ @xdg_wm_base@
  -> PtrConst.PtrConst Xdg_wm_base_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
xdg_wm_base_add_listener =
  hs_bindgen_cd158558fb8c28ab

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_set_user_data@
foreign import ccall unsafe "hs_bindgen_a70ef77f527dbdbb" hs_bindgen_a70ef77f527dbdbb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_set_user_data@
hs_bindgen_a70ef77f527dbdbb ::
     RIP.Ptr Xdg_wm_base
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a70ef77f527dbdbb =
  RIP.fromFFIType hs_bindgen_a70ef77f527dbdbb_base

{-| __C declaration:__ @xdg_wm_base_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 474:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_set_user_data ::
     RIP.Ptr Xdg_wm_base
     -- ^ __C declaration:__ @xdg_wm_base@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
xdg_wm_base_set_user_data =
  hs_bindgen_a70ef77f527dbdbb

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_get_user_data@
foreign import ccall unsafe "hs_bindgen_065c12d22cd19a6d" hs_bindgen_065c12d22cd19a6d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_get_user_data@
hs_bindgen_065c12d22cd19a6d ::
     RIP.Ptr Xdg_wm_base
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_065c12d22cd19a6d =
  RIP.fromFFIType hs_bindgen_065c12d22cd19a6d_base

{-| __C declaration:__ @xdg_wm_base_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 481:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_get_user_data ::
     RIP.Ptr Xdg_wm_base
     -- ^ __C declaration:__ @xdg_wm_base@
  -> IO (RIP.Ptr RIP.Void)
xdg_wm_base_get_user_data =
  hs_bindgen_065c12d22cd19a6d

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_get_version@
foreign import ccall unsafe "hs_bindgen_b63d4ffb5f8cb692" hs_bindgen_b63d4ffb5f8cb692_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_get_version@
hs_bindgen_b63d4ffb5f8cb692 ::
     RIP.Ptr Xdg_wm_base
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b63d4ffb5f8cb692 =
  RIP.fromFFIType hs_bindgen_b63d4ffb5f8cb692_base

{-| __C declaration:__ @xdg_wm_base_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 487:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_get_version ::
     RIP.Ptr Xdg_wm_base
     -- ^ __C declaration:__ @xdg_wm_base@
  -> IO HsBindgen.Runtime.LibC.Word32
xdg_wm_base_get_version = hs_bindgen_b63d4ffb5f8cb692

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_destroy@
foreign import ccall unsafe "hs_bindgen_0a02d5b221de2041" hs_bindgen_0a02d5b221de2041_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_destroy@
hs_bindgen_0a02d5b221de2041 ::
     RIP.Ptr Xdg_wm_base
  -> IO ()
hs_bindgen_0a02d5b221de2041 =
  RIP.fromFFIType hs_bindgen_0a02d5b221de2041_base

{-| Destroy this xdg_wm_base object.

    Destroying a bound xdg_wm_base object while there are surfaces still alive created by this xdg_wm_base object instance is illegal and will result in a defunct_surfaces error.

    __C declaration:__ @xdg_wm_base_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 502:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_destroy ::
     RIP.Ptr Xdg_wm_base
     -- ^ __C declaration:__ @xdg_wm_base@
  -> IO ()
xdg_wm_base_destroy = hs_bindgen_0a02d5b221de2041

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_create_positioner@
foreign import ccall unsafe "hs_bindgen_ffe41c6716b556e3" hs_bindgen_ffe41c6716b556e3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_create_positioner@
hs_bindgen_ffe41c6716b556e3 ::
     RIP.Ptr Xdg_wm_base
  -> IO (RIP.Ptr Xdg_positioner)
hs_bindgen_ffe41c6716b556e3 =
  RIP.fromFFIType hs_bindgen_ffe41c6716b556e3_base

{-| Create a positioner object. A positioner object is used to position surfaces relative to some parent surface. See the interface description and xdg_surface.get_popup for details.

    __C declaration:__ @xdg_wm_base_create_positioner@

    __defined at:__ @xdg-shell-client-protocol.h 516:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_create_positioner ::
     RIP.Ptr Xdg_wm_base
     -- ^ __C declaration:__ @xdg_wm_base@
  -> IO (RIP.Ptr Xdg_positioner)
xdg_wm_base_create_positioner =
  hs_bindgen_ffe41c6716b556e3

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_get_xdg_surface@
foreign import ccall unsafe "hs_bindgen_7bb03740dac824de" hs_bindgen_7bb03740dac824de_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_get_xdg_surface@
hs_bindgen_7bb03740dac824de ::
     RIP.Ptr Xdg_wm_base
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr Xdg_surface)
hs_bindgen_7bb03740dac824de =
  RIP.fromFFIType hs_bindgen_7bb03740dac824de_base

{-| This creates an xdg_surface for the given surface. While xdg_surface itself is not a role, the corresponding surface may only be assigned a role extending xdg_surface, such as xdg_toplevel or xdg_popup. It is illegal to create an xdg_surface for a wl_surface which already has an assigned role and this will result in a role error.

    This creates an xdg_surface for the given surface. An xdg_surface is used as basis to define a role to a given surface, such as xdg_toplevel or xdg_popup. It also manages functionality shared between xdg_surface based surface roles.

    See the documentation of xdg_surface for more details about what an xdg_surface is and how it is used.

    __C declaration:__ @xdg_wm_base_get_xdg_surface@

    __defined at:__ @xdg-shell-client-protocol.h 544:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_get_xdg_surface ::
     RIP.Ptr Xdg_wm_base
     -- ^ __C declaration:__ @xdg_wm_base@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Xdg_surface)
xdg_wm_base_get_xdg_surface =
  hs_bindgen_7bb03740dac824de

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_pong@
foreign import ccall unsafe "hs_bindgen_f5b4608631a668bd" hs_bindgen_f5b4608631a668bd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_wm_base_pong@
hs_bindgen_f5b4608631a668bd ::
     RIP.Ptr Xdg_wm_base
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_f5b4608631a668bd =
  RIP.fromFFIType hs_bindgen_f5b4608631a668bd_base

{-| A client must respond to a ping event with a pong request or the client may be deemed unresponsive. See xdg_wm_base.ping and xdg_wm_base.error.unresponsive.

    __C declaration:__ @xdg_wm_base_pong@

    __defined at:__ @xdg-shell-client-protocol.h 562:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_wm_base_pong ::
     RIP.Ptr Xdg_wm_base
     -- ^ __C declaration:__ @xdg_wm_base@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
xdg_wm_base_pong = hs_bindgen_f5b4608631a668bd

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_user_data@
foreign import ccall unsafe "hs_bindgen_19be1cc9e38907a4" hs_bindgen_19be1cc9e38907a4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_user_data@
hs_bindgen_19be1cc9e38907a4 ::
     RIP.Ptr Xdg_positioner
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_19be1cc9e38907a4 =
  RIP.fromFFIType hs_bindgen_19be1cc9e38907a4_base

{-| __C declaration:__ @xdg_positioner_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 771:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_user_data ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
xdg_positioner_set_user_data =
  hs_bindgen_19be1cc9e38907a4

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_get_user_data@
foreign import ccall unsafe "hs_bindgen_ece29dae214659c5" hs_bindgen_ece29dae214659c5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_get_user_data@
hs_bindgen_ece29dae214659c5 ::
     RIP.Ptr Xdg_positioner
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ece29dae214659c5 =
  RIP.fromFFIType hs_bindgen_ece29dae214659c5_base

{-| __C declaration:__ @xdg_positioner_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 778:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_get_user_data ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> IO (RIP.Ptr RIP.Void)
xdg_positioner_get_user_data =
  hs_bindgen_ece29dae214659c5

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_get_version@
foreign import ccall unsafe "hs_bindgen_055225ec52488270" hs_bindgen_055225ec52488270_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_get_version@
hs_bindgen_055225ec52488270 ::
     RIP.Ptr Xdg_positioner
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_055225ec52488270 =
  RIP.fromFFIType hs_bindgen_055225ec52488270_base

{-| __C declaration:__ @xdg_positioner_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 784:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_get_version ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> IO HsBindgen.Runtime.LibC.Word32
xdg_positioner_get_version =
  hs_bindgen_055225ec52488270

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_destroy@
foreign import ccall unsafe "hs_bindgen_4bf0e92fb05278b9" hs_bindgen_4bf0e92fb05278b9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_destroy@
hs_bindgen_4bf0e92fb05278b9 ::
     RIP.Ptr Xdg_positioner
  -> IO ()
hs_bindgen_4bf0e92fb05278b9 =
  RIP.fromFFIType hs_bindgen_4bf0e92fb05278b9_base

{-| Notify the compositor that the xdg_positioner will no longer be used.

    __C declaration:__ @xdg_positioner_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 795:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_destroy ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> IO ()
xdg_positioner_destroy = hs_bindgen_4bf0e92fb05278b9

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_size@
foreign import ccall unsafe "hs_bindgen_33421d3e00720c51" hs_bindgen_33421d3e00720c51_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_size@
hs_bindgen_33421d3e00720c51 ::
     RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_33421d3e00720c51 =
  RIP.fromFFIType hs_bindgen_33421d3e00720c51_base

{-| Set the size of the surface that is to be positioned with the positioner object. The size is in surface-local coordinates and corresponds to the window geometry. See xdg_surface.set_window_geometry.

    If a zero or negative size is set the invalid_input error is raised.

    __C declaration:__ @xdg_positioner_set_size@

    __defined at:__ @xdg-shell-client-protocol.h 811:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_size ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
xdg_positioner_set_size = hs_bindgen_33421d3e00720c51

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_anchor_rect@
foreign import ccall unsafe "hs_bindgen_663d61f97c47daf3" hs_bindgen_663d61f97c47daf3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_anchor_rect@
hs_bindgen_663d61f97c47daf3 ::
     RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_663d61f97c47daf3 =
  RIP.fromFFIType hs_bindgen_663d61f97c47daf3_base

{-| Specify the anchor rectangle within the parent surface that the child surface will be placed relative to. The rectangle is relative to the window geometry as defined by xdg_surface.set_window_geometry of the parent surface.

    When the xdg_positioner object is used to position a child surface, the anchor rectangle may not extend outside the window geometry of the positioned child's parent surface.

    If a negative size is set the invalid_input error is raised.

    __C declaration:__ @xdg_positioner_set_anchor_rect@

    __defined at:__ @xdg-shell-client-protocol.h 832:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_anchor_rect ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
xdg_positioner_set_anchor_rect =
  hs_bindgen_663d61f97c47daf3

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_anchor@
foreign import ccall unsafe "hs_bindgen_22e0656c86865b1e" hs_bindgen_22e0656c86865b1e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_anchor@
hs_bindgen_22e0656c86865b1e ::
     RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_22e0656c86865b1e =
  RIP.fromFFIType hs_bindgen_22e0656c86865b1e_base

{-| Defines the anchor point for the anchor rectangle. The specified anchor is used derive an anchor point that the child surface will be positioned relative to. If a corner anchor is set (e.g. 'top_left' or 'bottom_right'), the anchor point will be at the specified corner; otherwise, the derived anchor point will be centered on the specified edge, or in the center of the anchor rectangle if no edge is specified.

    __C declaration:__ @xdg_positioner_set_anchor@

    __defined at:__ @xdg-shell-client-protocol.h 849:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_anchor ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @anchor@
  -> IO ()
xdg_positioner_set_anchor =
  hs_bindgen_22e0656c86865b1e

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_gravity@
foreign import ccall unsafe "hs_bindgen_ce3227bc8d402a1a" hs_bindgen_ce3227bc8d402a1a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_gravity@
hs_bindgen_ce3227bc8d402a1a ::
     RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_ce3227bc8d402a1a =
  RIP.fromFFIType hs_bindgen_ce3227bc8d402a1a_base

{-| Defines in what direction a surface should be positioned, relative to the anchor point of the parent surface. If a corner gravity is specified (e.g. 'bottom_right' or 'top_left'), then the child surface will be placed towards the specified gravity; otherwise, the child surface will be centered over the anchor point on any axis that had no gravity specified. If the gravity is not in the ‘gravity’ enum, an invalid_input error is raised.

    __C declaration:__ @xdg_positioner_set_gravity@

    __defined at:__ @xdg-shell-client-protocol.h 867:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_gravity ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @gravity@
  -> IO ()
xdg_positioner_set_gravity =
  hs_bindgen_ce3227bc8d402a1a

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_constraint_adjustment@
foreign import ccall unsafe "hs_bindgen_e5b323c6e30d51af" hs_bindgen_e5b323c6e30d51af_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_constraint_adjustment@
hs_bindgen_e5b323c6e30d51af ::
     RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_e5b323c6e30d51af =
  RIP.fromFFIType hs_bindgen_e5b323c6e30d51af_base

{-| Specify how the window should be positioned if the originally intended position caused the surface to be constrained, meaning at least partially outside positioning boundaries set by the compositor. The adjustment is set by constructing a bitmask describing the adjustment to be made when the surface is constrained on that axis.

    If no bit for one axis is set, the compositor will assume that the child surface should not change its position on that axis when constrained.

    If more than one bit for one axis is set, the order of how adjustments are applied is specified in the corresponding adjustment descriptions.

    The default adjustment is none.

    __C declaration:__ @xdg_positioner_set_constraint_adjustment@

    __defined at:__ @xdg-shell-client-protocol.h 891:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_constraint_adjustment ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @constraint_adjustment@
  -> IO ()
xdg_positioner_set_constraint_adjustment =
  hs_bindgen_e5b323c6e30d51af

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_offset@
foreign import ccall unsafe "hs_bindgen_bddfde4e25a3bf42" hs_bindgen_bddfde4e25a3bf42_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_offset@
hs_bindgen_bddfde4e25a3bf42 ::
     RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_bddfde4e25a3bf42 =
  RIP.fromFFIType hs_bindgen_bddfde4e25a3bf42_base

{-| Specify the surface position offset relative to the position of the anchor on the anchor rectangle and the anchor on the surface. For example if the anchor of the anchor rectangle is at (x, y), the surface has the gravity bottom|right, and the offset is (ox, oy), the calculated surface position will be (x + ox, y + oy). The offset position of the surface is the one used for constraint testing. See set_constraint_adjustment.

    An example use case is placing a popup menu on top of a user interface element, while aligning the user interface element of the parent surface with some user interface element placed somewhere in the popup surface.

    __C declaration:__ @xdg_positioner_set_offset@

    __defined at:__ @xdg-shell-client-protocol.h 913:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_offset ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
xdg_positioner_set_offset =
  hs_bindgen_bddfde4e25a3bf42

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_reactive@
foreign import ccall unsafe "hs_bindgen_9c0f6792452f9944" hs_bindgen_9c0f6792452f9944_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_reactive@
hs_bindgen_9c0f6792452f9944 ::
     RIP.Ptr Xdg_positioner
  -> IO ()
hs_bindgen_9c0f6792452f9944 =
  RIP.fromFFIType hs_bindgen_9c0f6792452f9944_base

{-| When set reactive, the surface is reconstrained if the conditions used for constraining changed, e.g. the parent window moved.

    If the conditions changed and the popup was reconstrained, an xdg_popup.configure event is sent with updated geometry, followed by an xdg_surface.configure event.

    __C declaration:__ @xdg_positioner_set_reactive@

    __defined at:__ @xdg-shell-client-protocol.h 930:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_reactive ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> IO ()
xdg_positioner_set_reactive =
  hs_bindgen_9c0f6792452f9944

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_parent_size@
foreign import ccall unsafe "hs_bindgen_d3aeb4505fbfaaad" hs_bindgen_d3aeb4505fbfaaad_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_parent_size@
hs_bindgen_d3aeb4505fbfaaad ::
     RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_d3aeb4505fbfaaad =
  RIP.fromFFIType hs_bindgen_d3aeb4505fbfaaad_base

{-| Set the parent window geometry the compositor should use when positioning the popup. The compositor may use this information to determine the future state the popup should be constrained using. If this doesn't match the dimension of the parent the popup is eventually positioned against, the behavior is undefined.

    The arguments are given in the surface-local coordinate space.

    __C declaration:__ @xdg_positioner_set_parent_size@

    __defined at:__ @xdg-shell-client-protocol.h 948:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_parent_size ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @parent_width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @parent_height@
  -> IO ()
xdg_positioner_set_parent_size =
  hs_bindgen_d3aeb4505fbfaaad

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_parent_configure@
foreign import ccall unsafe "hs_bindgen_d739b0dca22dae11" hs_bindgen_d739b0dca22dae11_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_positioner_set_parent_configure@
hs_bindgen_d739b0dca22dae11 ::
     RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_d739b0dca22dae11 =
  RIP.fromFFIType hs_bindgen_d739b0dca22dae11_base

{-| Set the serial of an xdg_surface.configure event this positioner will be used in response to. The compositor may use this information together with set_parent_size to determine what future state the popup should be constrained using.

    __C declaration:__ @xdg_positioner_set_parent_configure@

    __defined at:__ @xdg-shell-client-protocol.h 963:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_positioner_set_parent_configure ::
     RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @xdg_positioner@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
xdg_positioner_set_parent_configure =
  hs_bindgen_d739b0dca22dae11

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_add_listener@
foreign import ccall unsafe "hs_bindgen_689ddec460db50fe" hs_bindgen_689ddec460db50fe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_add_listener@
hs_bindgen_689ddec460db50fe ::
     RIP.Ptr Xdg_surface
  -> PtrConst.PtrConst Xdg_surface_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_689ddec460db50fe =
  RIP.fromFFIType hs_bindgen_689ddec460db50fe_base

{-| __C declaration:__ @xdg_surface_add_listener@

    __defined at:__ @xdg-shell-client-protocol.h 1037:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_add_listener ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> PtrConst.PtrConst Xdg_surface_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
xdg_surface_add_listener =
  hs_bindgen_689ddec460db50fe

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_set_user_data@
foreign import ccall unsafe "hs_bindgen_cb745d5d3705cf35" hs_bindgen_cb745d5d3705cf35_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_set_user_data@
hs_bindgen_cb745d5d3705cf35 ::
     RIP.Ptr Xdg_surface
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_cb745d5d3705cf35 =
  RIP.fromFFIType hs_bindgen_cb745d5d3705cf35_base

{-| __C declaration:__ @xdg_surface_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 1078:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_set_user_data ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
xdg_surface_set_user_data =
  hs_bindgen_cb745d5d3705cf35

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_get_user_data@
foreign import ccall unsafe "hs_bindgen_00658e142cf0b0c6" hs_bindgen_00658e142cf0b0c6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_get_user_data@
hs_bindgen_00658e142cf0b0c6 ::
     RIP.Ptr Xdg_surface
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_00658e142cf0b0c6 =
  RIP.fromFFIType hs_bindgen_00658e142cf0b0c6_base

{-| __C declaration:__ @xdg_surface_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 1085:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_get_user_data ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> IO (RIP.Ptr RIP.Void)
xdg_surface_get_user_data =
  hs_bindgen_00658e142cf0b0c6

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_get_version@
foreign import ccall unsafe "hs_bindgen_a3a31065a6f6845e" hs_bindgen_a3a31065a6f6845e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_get_version@
hs_bindgen_a3a31065a6f6845e ::
     RIP.Ptr Xdg_surface
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a3a31065a6f6845e =
  RIP.fromFFIType hs_bindgen_a3a31065a6f6845e_base

{-| __C declaration:__ @xdg_surface_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 1091:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_get_version ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> IO HsBindgen.Runtime.LibC.Word32
xdg_surface_get_version = hs_bindgen_a3a31065a6f6845e

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_destroy@
foreign import ccall unsafe "hs_bindgen_6a3575242f9b6a73" hs_bindgen_6a3575242f9b6a73_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_destroy@
hs_bindgen_6a3575242f9b6a73 ::
     RIP.Ptr Xdg_surface
  -> IO ()
hs_bindgen_6a3575242f9b6a73 =
  RIP.fromFFIType hs_bindgen_6a3575242f9b6a73_base

{-| Destroy the xdg_surface object. An xdg_surface must only be destroyed after its role object has been destroyed, otherwise a defunct_role_object error is raised.

    __C declaration:__ @xdg_surface_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 1104:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_destroy ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> IO ()
xdg_surface_destroy = hs_bindgen_6a3575242f9b6a73

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_get_toplevel@
foreign import ccall unsafe "hs_bindgen_abad528de88235f4" hs_bindgen_abad528de88235f4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_get_toplevel@
hs_bindgen_abad528de88235f4 ::
     RIP.Ptr Xdg_surface
  -> IO (RIP.Ptr Xdg_toplevel)
hs_bindgen_abad528de88235f4 =
  RIP.fromFFIType hs_bindgen_abad528de88235f4_base

{-| This creates an xdg_toplevel object for the given xdg_surface and gives the associated wl_surface the xdg_toplevel role.

    See the documentation of xdg_toplevel for more details about what an xdg_toplevel is and how it is used.

    __C declaration:__ @xdg_surface_get_toplevel@

    __defined at:__ @xdg-shell-client-protocol.h 1120:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_get_toplevel ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> IO (RIP.Ptr Xdg_toplevel)
xdg_surface_get_toplevel =
  hs_bindgen_abad528de88235f4

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_get_popup@
foreign import ccall unsafe "hs_bindgen_0e1fd3228461e23a" hs_bindgen_0e1fd3228461e23a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_get_popup@
hs_bindgen_0e1fd3228461e23a ::
     RIP.Ptr Xdg_surface
  -> RIP.Ptr Xdg_surface
  -> RIP.Ptr Xdg_positioner
  -> IO (RIP.Ptr Xdg_popup)
hs_bindgen_0e1fd3228461e23a =
  RIP.fromFFIType hs_bindgen_0e1fd3228461e23a_base

{-| This creates an xdg_popup object for the given xdg_surface and gives the associated wl_surface the xdg_popup role.

    If null is passed as a parent, a parent surface must be specified using some other protocol, before committing the initial state.

    See the documentation of xdg_popup for more details about what an xdg_popup is and how it is used.

    __C declaration:__ @xdg_surface_get_popup@

    __defined at:__ @xdg-shell-client-protocol.h 1143:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_surface_get_popup ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @parent@
  -> RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @positioner@
  -> IO (RIP.Ptr Xdg_popup)
xdg_surface_get_popup = hs_bindgen_0e1fd3228461e23a

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_set_window_geometry@
foreign import ccall unsafe "hs_bindgen_056d1125f83d6f04" hs_bindgen_056d1125f83d6f04_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_set_window_geometry@
hs_bindgen_056d1125f83d6f04 ::
     RIP.Ptr Xdg_surface
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_056d1125f83d6f04 =
  RIP.fromFFIType hs_bindgen_056d1125f83d6f04_base

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
xdg_surface_set_window_geometry ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
xdg_surface_set_window_geometry =
  hs_bindgen_056d1125f83d6f04

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_ack_configure@
foreign import ccall unsafe "hs_bindgen_8afc6ac09dcd0942" hs_bindgen_8afc6ac09dcd0942_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_surface_ack_configure@
hs_bindgen_8afc6ac09dcd0942 ::
     RIP.Ptr Xdg_surface
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_8afc6ac09dcd0942 =
  RIP.fromFFIType hs_bindgen_8afc6ac09dcd0942_base

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
xdg_surface_ack_configure ::
     RIP.Ptr Xdg_surface
     -- ^ __C declaration:__ @xdg_surface@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
xdg_surface_ack_configure =
  hs_bindgen_8afc6ac09dcd0942

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_add_listener@
foreign import ccall unsafe "hs_bindgen_6b0579eaad919b05" hs_bindgen_6b0579eaad919b05_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_add_listener@
hs_bindgen_6b0579eaad919b05 ::
     RIP.Ptr Xdg_toplevel
  -> PtrConst.PtrConst Xdg_toplevel_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_6b0579eaad919b05 =
  RIP.fromFFIType hs_bindgen_6b0579eaad919b05_base

{-| __C declaration:__ @xdg_toplevel_add_listener@

    __defined at:__ @xdg-shell-client-protocol.h 1607:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_add_listener ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> PtrConst.PtrConst Xdg_toplevel_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
xdg_toplevel_add_listener =
  hs_bindgen_6b0579eaad919b05

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_user_data@
foreign import ccall unsafe "hs_bindgen_2e98bbe85a76532d" hs_bindgen_2e98bbe85a76532d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_user_data@
hs_bindgen_2e98bbe85a76532d ::
     RIP.Ptr Xdg_toplevel
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2e98bbe85a76532d =
  RIP.fromFFIType hs_bindgen_2e98bbe85a76532d_base

{-| __C declaration:__ @xdg_toplevel_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 1705:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_user_data ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
xdg_toplevel_set_user_data =
  hs_bindgen_2e98bbe85a76532d

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_get_user_data@
foreign import ccall unsafe "hs_bindgen_d7e2940538cc3ea1" hs_bindgen_d7e2940538cc3ea1_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_get_user_data@
hs_bindgen_d7e2940538cc3ea1 ::
     RIP.Ptr Xdg_toplevel
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_d7e2940538cc3ea1 =
  RIP.fromFFIType hs_bindgen_d7e2940538cc3ea1_base

{-| __C declaration:__ @xdg_toplevel_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 1712:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_get_user_data ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> IO (RIP.Ptr RIP.Void)
xdg_toplevel_get_user_data =
  hs_bindgen_d7e2940538cc3ea1

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_get_version@
foreign import ccall unsafe "hs_bindgen_89547a0c1d58a652" hs_bindgen_89547a0c1d58a652_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_get_version@
hs_bindgen_89547a0c1d58a652 ::
     RIP.Ptr Xdg_toplevel
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_89547a0c1d58a652 =
  RIP.fromFFIType hs_bindgen_89547a0c1d58a652_base

{-| __C declaration:__ @xdg_toplevel_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 1718:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_get_version ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> IO HsBindgen.Runtime.LibC.Word32
xdg_toplevel_get_version =
  hs_bindgen_89547a0c1d58a652

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_destroy@
foreign import ccall unsafe "hs_bindgen_4ba2f2cc1f14b7a4" hs_bindgen_4ba2f2cc1f14b7a4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_destroy@
hs_bindgen_4ba2f2cc1f14b7a4 ::
     RIP.Ptr Xdg_toplevel
  -> IO ()
hs_bindgen_4ba2f2cc1f14b7a4 =
  RIP.fromFFIType hs_bindgen_4ba2f2cc1f14b7a4_base

{-| This request destroys the role surface and unmaps the surface; see "Unmapping" behavior in interface section for details.

    __C declaration:__ @xdg_toplevel_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 1730:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_destroy ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> IO ()
xdg_toplevel_destroy = hs_bindgen_4ba2f2cc1f14b7a4

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_parent@
foreign import ccall unsafe "hs_bindgen_111f3e980f45f4db" hs_bindgen_111f3e980f45f4db_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_parent@
hs_bindgen_111f3e980f45f4db ::
     RIP.Ptr Xdg_toplevel
  -> RIP.Ptr Xdg_toplevel
  -> IO ()
hs_bindgen_111f3e980f45f4db =
  RIP.fromFFIType hs_bindgen_111f3e980f45f4db_base

{-| Set the "parent" of this surface. This surface should be stacked above the parent surface and all other ancestor surfaces.

    Parent surfaces should be set on dialogs, toolboxes, or other "auxiliary" surfaces, so that the parent is raised when the dialog is raised.

    Setting a null parent for a child surface unsets its parent. Setting a null parent for a surface which currently has no parent is a no-op.

    Only mapped surfaces can have child surfaces. Setting a parent which is not mapped is equivalent to setting a null parent. If a surface becomes unmapped, its children's parent is set to the parent of the now-unmapped surface. If the now-unmapped surface has no parent, its children's parent is unset. If the now-unmapped surface becomes mapped again, its parent-child relationship is not restored.

    The parent toplevel must not be one of the child toplevel's descendants, and the parent must be different from the child toplevel, otherwise the invalid_parent protocol error is raised.

    __C declaration:__ @xdg_toplevel_set_parent@

    __defined at:__ @xdg-shell-client-protocol.h 1761:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_parent ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @parent@
  -> IO ()
xdg_toplevel_set_parent = hs_bindgen_111f3e980f45f4db

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_title@
foreign import ccall unsafe "hs_bindgen_046586c9e171b4ef" hs_bindgen_046586c9e171b4ef_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_title@
hs_bindgen_046586c9e171b4ef ::
     RIP.Ptr Xdg_toplevel
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_046586c9e171b4ef =
  RIP.fromFFIType hs_bindgen_046586c9e171b4ef_base

{-| Set a short title for the surface.

    This string may be used to identify the surface in a task bar, window list, or other user interface elements provided by the compositor.

    The string must be encoded in UTF-8.

    __C declaration:__ @xdg_toplevel_set_title@

    __defined at:__ @xdg-shell-client-protocol.h 1779:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_title ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @title@
  -> IO ()
xdg_toplevel_set_title = hs_bindgen_046586c9e171b4ef

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_app_id@
foreign import ccall unsafe "hs_bindgen_e19ebf6b25bd7988" hs_bindgen_e19ebf6b25bd7988_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_app_id@
hs_bindgen_e19ebf6b25bd7988 ::
     RIP.Ptr Xdg_toplevel
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_e19ebf6b25bd7988 =
  RIP.fromFFIType hs_bindgen_e19ebf6b25bd7988_base

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
xdg_toplevel_set_app_id ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @app_id@
  -> IO ()
xdg_toplevel_set_app_id = hs_bindgen_e19ebf6b25bd7988

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_show_window_menu@
foreign import ccall unsafe "hs_bindgen_92e5b89a5e00bb36" hs_bindgen_92e5b89a5e00bb36_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_show_window_menu@
hs_bindgen_92e5b89a5e00bb36 ::
     RIP.Ptr Xdg_toplevel
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_92e5b89a5e00bb36 =
  RIP.fromFFIType hs_bindgen_92e5b89a5e00bb36_base

{-| Clients implementing client-side decorations might want to show a context menu when right-clicking on the decorations, giving the user a menu that they can use to maximize or minimize the window.

    This request asks the compositor to pop up such a window menu at the given position, relative to the local surface coordinates of the parent surface. There are no guarantees as to what menu items the window menu contains, or even if a window menu will be drawn at all.

    This request must be used in response to some sort of user action like a button press, key press, or touch down event.

    __C declaration:__ @xdg_toplevel_show_window_menu@

    __defined at:__ @xdg-shell-client-protocol.h 1836:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_show_window_menu ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
xdg_toplevel_show_window_menu =
  hs_bindgen_92e5b89a5e00bb36

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_move@
foreign import ccall unsafe "hs_bindgen_d748d8dfbe33f285" hs_bindgen_d748d8dfbe33f285_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_move@
hs_bindgen_d748d8dfbe33f285 ::
     RIP.Ptr Xdg_toplevel
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_d748d8dfbe33f285 =
  RIP.fromFFIType hs_bindgen_d748d8dfbe33f285_base

{-| Start an interactive, user-driven move of the surface.

    This request must be used in response to some sort of user action like a button press, key press, or touch down event. The passed serial is used to determine the type of interactive move (touch, pointer, etc).

    The server may ignore move requests depending on the state of the surface (e.g. fullscreen or maximized), or if the passed serial is no longer valid.

    If triggered, the surface will lose the focus of the device (wl_pointer, wl_touch, etc) used for the move. It is up to the compositor to visually indicate that the move is taking place, such as updating a pointer cursor, during the move. There is no guarantee that the device focus will return when the move is completed.

    __C declaration:__ @xdg_toplevel_move@

    __defined at:__ @xdg-shell-client-protocol.h 1863:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_move ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
xdg_toplevel_move = hs_bindgen_d748d8dfbe33f285

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_resize@
foreign import ccall unsafe "hs_bindgen_13ac82d337029a06" hs_bindgen_13ac82d337029a06_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_resize@
hs_bindgen_13ac82d337029a06 ::
     RIP.Ptr Xdg_toplevel
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_13ac82d337029a06 =
  RIP.fromFFIType hs_bindgen_13ac82d337029a06_base

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
xdg_toplevel_resize ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @edges@
  -> IO ()
xdg_toplevel_resize = hs_bindgen_13ac82d337029a06

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_max_size@
foreign import ccall unsafe "hs_bindgen_c61f643c061da948" hs_bindgen_c61f643c061da948_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_max_size@
hs_bindgen_c61f643c061da948 ::
     RIP.Ptr Xdg_toplevel
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_c61f643c061da948 =
  RIP.fromFFIType hs_bindgen_c61f643c061da948_base

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
xdg_toplevel_set_max_size ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
xdg_toplevel_set_max_size =
  hs_bindgen_c61f643c061da948

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_min_size@
foreign import ccall unsafe "hs_bindgen_9e44d720cc012226" hs_bindgen_9e44d720cc012226_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_min_size@
hs_bindgen_9e44d720cc012226 ::
     RIP.Ptr Xdg_toplevel
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_9e44d720cc012226 =
  RIP.fromFFIType hs_bindgen_9e44d720cc012226_base

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
xdg_toplevel_set_min_size ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
xdg_toplevel_set_min_size =
  hs_bindgen_9e44d720cc012226

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_maximized@
foreign import ccall unsafe "hs_bindgen_c9f106d4d495d986" hs_bindgen_c9f106d4d495d986_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_maximized@
hs_bindgen_c9f106d4d495d986 ::
     RIP.Ptr Xdg_toplevel
  -> IO ()
hs_bindgen_c9f106d4d495d986 =
  RIP.fromFFIType hs_bindgen_c9f106d4d495d986_base

{-| Maximize the surface.

    After requesting that the surface should be maximized, the compositor will respond by emitting a configure event. Whether this configure actually sets the window maximized is subject to compositor policies. The client must then update its content, drawing in the configured state. The client must also acknowledge the configure when committing the new content (see ack_configure).

    It is up to the compositor to decide how and where to maximize the surface, for example which output and what region of the screen should be used.

    If the surface was already maximized, the compositor will still emit a configure event with the "maximized" state.

    If the surface is in a fullscreen state, this request has no direct effect. It may alter the state the surface is returned to when unmaximized unless overridden by the compositor.

    __C declaration:__ @xdg_toplevel_set_maximized@

    __defined at:__ @xdg-shell-client-protocol.h 2023:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_maximized ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> IO ()
xdg_toplevel_set_maximized =
  hs_bindgen_c9f106d4d495d986

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_unset_maximized@
foreign import ccall unsafe "hs_bindgen_e31465634921dbea" hs_bindgen_e31465634921dbea_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_unset_maximized@
hs_bindgen_e31465634921dbea ::
     RIP.Ptr Xdg_toplevel
  -> IO ()
hs_bindgen_e31465634921dbea =
  RIP.fromFFIType hs_bindgen_e31465634921dbea_base

{-| Unmaximize the surface.

    After requesting that the surface should be unmaximized, the compositor will respond by emitting a configure event. Whether this actually un-maximizes the window is subject to compositor policies. If available and applicable, the compositor will include the window geometry dimensions the window had prior to being maximized in the configure event. The client must then update its content, drawing it in the configured state. The client must also acknowledge the configure when committing the new content (see ack_configure).

    It is up to the compositor to position the surface after it was unmaximized; usually the position the surface had before maximizing, if applicable.

    If the surface was already not maximized, the compositor will still emit a configure event without the "maximized" state.

    If the surface is in a fullscreen state, this request has no direct effect. It may alter the state the surface is returned to when unmaximized unless overridden by the compositor.

    __C declaration:__ @xdg_toplevel_unset_maximized@

    __defined at:__ @xdg-shell-client-protocol.h 2055:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_unset_maximized ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> IO ()
xdg_toplevel_unset_maximized =
  hs_bindgen_e31465634921dbea

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_fullscreen@
foreign import ccall unsafe "hs_bindgen_353a5e4ed513ffb8" hs_bindgen_353a5e4ed513ffb8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_fullscreen@
hs_bindgen_353a5e4ed513ffb8 ::
     RIP.Ptr Xdg_toplevel
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
  -> IO ()
hs_bindgen_353a5e4ed513ffb8 =
  RIP.fromFFIType hs_bindgen_353a5e4ed513ffb8_base

{-| Make the surface fullscreen.

    After requesting that the surface should be fullscreened, the compositor will respond by emitting a configure event. Whether the client is actually put into a fullscreen state is subject to compositor policies. The client must also acknowledge the configure when committing the new content (see ack_configure).

    The output passed by the request indicates the client's preference as to which display it should be set fullscreen on. If this value is NULL, it's up to the compositor to choose which display will be used to map this surface.

    If the surface doesn't cover the whole output, the compositor will position the surface in the center of the output and compensate with with border fill covering the rest of the output. The content of the border fill is undefined, but should be assumed to be in some way that attempts to blend into the surrounding area (e.g. solid black).

    If the fullscreened surface is not opaque, the compositor must make sure that other screen content not part of the same surface tree (made up of subsurfaces, popups or similarly coupled surfaces) are not visible below the fullscreened surface.

    __C declaration:__ @xdg_toplevel_set_fullscreen@

    __defined at:__ @xdg-shell-client-protocol.h 2089:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_fullscreen ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
     -- ^ __C declaration:__ @output@
  -> IO ()
xdg_toplevel_set_fullscreen =
  hs_bindgen_353a5e4ed513ffb8

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_unset_fullscreen@
foreign import ccall unsafe "hs_bindgen_d337c9c4cfd772b0" hs_bindgen_d337c9c4cfd772b0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_unset_fullscreen@
hs_bindgen_d337c9c4cfd772b0 ::
     RIP.Ptr Xdg_toplevel
  -> IO ()
hs_bindgen_d337c9c4cfd772b0 =
  RIP.fromFFIType hs_bindgen_d337c9c4cfd772b0_base

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
xdg_toplevel_unset_fullscreen ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> IO ()
xdg_toplevel_unset_fullscreen =
  hs_bindgen_d337c9c4cfd772b0

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_minimized@
foreign import ccall unsafe "hs_bindgen_c6ecc65e1683f9f2" hs_bindgen_c6ecc65e1683f9f2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_toplevel_set_minimized@
hs_bindgen_c6ecc65e1683f9f2 ::
     RIP.Ptr Xdg_toplevel
  -> IO ()
hs_bindgen_c6ecc65e1683f9f2 =
  RIP.fromFFIType hs_bindgen_c6ecc65e1683f9f2_base

{-| Request that the compositor minimize your surface. There is no way to know if the surface is currently minimized, nor is there any way to unset minimization on this surface.

    If you are looking to throttle redrawing when minimized, please instead use the wl_surface.frame event for this, as this will also work with live previews on windows in Alt-Tab, Expose or similar compositor features.

    __C declaration:__ @xdg_toplevel_set_minimized@

    __defined at:__ @xdg-shell-client-protocol.h 2136:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_toplevel_set_minimized ::
     RIP.Ptr Xdg_toplevel
     -- ^ __C declaration:__ @xdg_toplevel@
  -> IO ()
xdg_toplevel_set_minimized =
  hs_bindgen_c6ecc65e1683f9f2

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_add_listener@
foreign import ccall unsafe "hs_bindgen_e11c9ee902344e24" hs_bindgen_e11c9ee902344e24_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_add_listener@
hs_bindgen_e11c9ee902344e24 ::
     RIP.Ptr Xdg_popup
  -> PtrConst.PtrConst Xdg_popup_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e11c9ee902344e24 =
  RIP.fromFFIType hs_bindgen_e11c9ee902344e24_base

{-| __C declaration:__ @xdg_popup_add_listener@

    __defined at:__ @xdg-shell-client-protocol.h 2225:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_add_listener ::
     RIP.Ptr Xdg_popup
     -- ^ __C declaration:__ @xdg_popup@
  -> PtrConst.PtrConst Xdg_popup_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
xdg_popup_add_listener = hs_bindgen_e11c9ee902344e24

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_set_user_data@
foreign import ccall unsafe "hs_bindgen_b9c446df6d139da6" hs_bindgen_b9c446df6d139da6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_set_user_data@
hs_bindgen_b9c446df6d139da6 ::
     RIP.Ptr Xdg_popup
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b9c446df6d139da6 =
  RIP.fromFFIType hs_bindgen_b9c446df6d139da6_base

{-| __C declaration:__ @xdg_popup_set_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 2264:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_set_user_data ::
     RIP.Ptr Xdg_popup
     -- ^ __C declaration:__ @xdg_popup@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
xdg_popup_set_user_data = hs_bindgen_b9c446df6d139da6

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_get_user_data@
foreign import ccall unsafe "hs_bindgen_ebc4728644215cf2" hs_bindgen_ebc4728644215cf2_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_get_user_data@
hs_bindgen_ebc4728644215cf2 ::
     RIP.Ptr Xdg_popup
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ebc4728644215cf2 =
  RIP.fromFFIType hs_bindgen_ebc4728644215cf2_base

{-| __C declaration:__ @xdg_popup_get_user_data@

    __defined at:__ @xdg-shell-client-protocol.h 2271:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_get_user_data ::
     RIP.Ptr Xdg_popup
     -- ^ __C declaration:__ @xdg_popup@
  -> IO (RIP.Ptr RIP.Void)
xdg_popup_get_user_data = hs_bindgen_ebc4728644215cf2

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_get_version@
foreign import ccall unsafe "hs_bindgen_5523feddc842a342" hs_bindgen_5523feddc842a342_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_get_version@
hs_bindgen_5523feddc842a342 ::
     RIP.Ptr Xdg_popup
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5523feddc842a342 =
  RIP.fromFFIType hs_bindgen_5523feddc842a342_base

{-| __C declaration:__ @xdg_popup_get_version@

    __defined at:__ @xdg-shell-client-protocol.h 2277:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_get_version ::
     RIP.Ptr Xdg_popup
     -- ^ __C declaration:__ @xdg_popup@
  -> IO HsBindgen.Runtime.LibC.Word32
xdg_popup_get_version = hs_bindgen_5523feddc842a342

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_destroy@
foreign import ccall unsafe "hs_bindgen_44535a60781bd273" hs_bindgen_44535a60781bd273_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_destroy@
hs_bindgen_44535a60781bd273 ::
     RIP.Ptr Xdg_popup
  -> IO ()
hs_bindgen_44535a60781bd273 =
  RIP.fromFFIType hs_bindgen_44535a60781bd273_base

{-| This destroys the popup. Explicitly destroying the xdg_popup object will also dismiss the popup, and unmap the surface.

    If this xdg_popup is not the "topmost" popup, the xdg_wm_base.not_the_topmost_popup protocol error will be sent.

    __C declaration:__ @xdg_popup_destroy@

    __defined at:__ @xdg-shell-client-protocol.h 2292:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_destroy ::
     RIP.Ptr Xdg_popup
     -- ^ __C declaration:__ @xdg_popup@
  -> IO ()
xdg_popup_destroy = hs_bindgen_44535a60781bd273

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_grab@
foreign import ccall unsafe "hs_bindgen_53d8c7aaea9a6f44" hs_bindgen_53d8c7aaea9a6f44_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_grab@
hs_bindgen_53d8c7aaea9a6f44 ::
     RIP.Ptr Xdg_popup
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_53d8c7aaea9a6f44 =
  RIP.fromFFIType hs_bindgen_53d8c7aaea9a6f44_base

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
xdg_popup_grab ::
     RIP.Ptr Xdg_popup
     -- ^ __C declaration:__ @xdg_popup@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
xdg_popup_grab = hs_bindgen_53d8c7aaea9a6f44

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_reposition@
foreign import ccall unsafe "hs_bindgen_2cbaa4f7a5b002fe" hs_bindgen_2cbaa4f7a5b002fe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_Unsafe_xdg_popup_reposition@
hs_bindgen_2cbaa4f7a5b002fe ::
     RIP.Ptr Xdg_popup
  -> RIP.Ptr Xdg_positioner
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_2cbaa4f7a5b002fe =
  RIP.fromFFIType hs_bindgen_2cbaa4f7a5b002fe_base

{-| Reposition an already-mapped popup. The popup will be placed given the details in the passed xdg_positioner object, and a xdg_popup.repositioned followed by xdg_popup.configure and xdg_surface.configure will be emitted in response. Any parameters set by the previous positioner will be discarded.

    The passed token will be sent in the corresponding xdg_popup.repositioned event. The new popup position will not take effect until the corresponding configure event is acknowledged by the client. See xdg_popup.repositioned for details. The token itself is opaque, and has no other special meaning.

    If multiple reposition requests are sent, the compositor may skip all but the last one.

    If the popup is repositioned in response to a configure event for its parent, the client should send an xdg_positioner.set_parent_configure and possibly an xdg_positioner.set_parent_size request to allow the compositor to properly constrain the popup.

    If the popup is repositioned together with a parent that is being resized, but not in response to a configure event, the client should send an xdg_positioner.set_parent_size request.

    __C declaration:__ @xdg_popup_reposition@

    __defined at:__ @xdg-shell-client-protocol.h 2374:1@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xdg_popup_reposition ::
     RIP.Ptr Xdg_popup
     -- ^ __C declaration:__ @xdg_popup@
  -> RIP.Ptr Xdg_positioner
     -- ^ __C declaration:__ @positioner@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @token@
  -> IO ()
xdg_popup_reposition = hs_bindgen_2cbaa4f7a5b002fe

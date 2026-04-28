{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.XdgShell.Generated.Global
    ( Bindings.Wayland.XdgShell.Generated.Global.xdg_wm_base_interface
    , Bindings.Wayland.XdgShell.Generated.Global.xdg_positioner_interface
    , Bindings.Wayland.XdgShell.Generated.Global.xdg_surface_interface
    , Bindings.Wayland.XdgShell.Generated.Global.xdg_toplevel_interface
    , Bindings.Wayland.XdgShell.Generated.Global.xdg_popup_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <xdg-shell-client-protocol.h>"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_8a4b812b2ae6f7ab (void)"
  , "{"
  , "  return &xdg_wm_base_interface;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_f917aa4abf3cb4d0 (void)"
  , "{"
  , "  return &xdg_positioner_interface;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_24a8b2d76a13aebc (void)"
  , "{"
  , "  return &xdg_surface_interface;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_af0ad5a33dd24c12 (void)"
  , "{"
  , "  return &xdg_toplevel_interface;"
  , "}"
  , "/* Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_8c5b25f9b40f4931 (void)"
  , "{"
  , "  return &xdg_popup_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_interface@
foreign import ccall unsafe "hs_bindgen_8a4b812b2ae6f7ab" hs_bindgen_8a4b812b2ae6f7ab_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_wm_base_interface@
hs_bindgen_8a4b812b2ae6f7ab :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_8a4b812b2ae6f7ab =
  RIP.fromFFIType hs_bindgen_8a4b812b2ae6f7ab_base

{-# NOINLINE hs_bindgen_5968a5304c5d116f #-}
{-| __C declaration:__ @xdg_wm_base_interface@

    __defined at:__ @xdg-shell-client-protocol.h 84:34@

    __exported by:__ @xdg-shell-client-protocol.h@

    __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_xdg_wm_base_interface@
-}
hs_bindgen_5968a5304c5d116f :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_5968a5304c5d116f =
  RIP.unsafePerformIO hs_bindgen_8a4b812b2ae6f7ab

{-# NOINLINE xdg_wm_base_interface #-}
xdg_wm_base_interface :: Bindings.Wayland.Util.Generated.Wl_interface
xdg_wm_base_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5968a5304c5d116f)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_interface@
foreign import ccall unsafe "hs_bindgen_f917aa4abf3cb4d0" hs_bindgen_f917aa4abf3cb4d0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_positioner_interface@
hs_bindgen_f917aa4abf3cb4d0 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_f917aa4abf3cb4d0 =
  RIP.fromFFIType hs_bindgen_f917aa4abf3cb4d0_base

{-# NOINLINE hs_bindgen_560219bd968fa872 #-}
{-| __C declaration:__ @xdg_positioner_interface@

    __defined at:__ @xdg-shell-client-protocol.h 137:34@

    __exported by:__ @xdg-shell-client-protocol.h@

    __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_xdg_positioner_interface@
-}
hs_bindgen_560219bd968fa872 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_560219bd968fa872 =
  RIP.unsafePerformIO hs_bindgen_f917aa4abf3cb4d0

{-# NOINLINE xdg_positioner_interface #-}
xdg_positioner_interface :: Bindings.Wayland.Util.Generated.Wl_interface
xdg_positioner_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_560219bd968fa872)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_interface@
foreign import ccall unsafe "hs_bindgen_24a8b2d76a13aebc" hs_bindgen_24a8b2d76a13aebc_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_surface_interface@
hs_bindgen_24a8b2d76a13aebc :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_24a8b2d76a13aebc =
  RIP.fromFFIType hs_bindgen_24a8b2d76a13aebc_base

{-# NOINLINE hs_bindgen_869df9b2fe895c0a #-}
{-| __C declaration:__ @xdg_surface_interface@

    __defined at:__ @xdg-shell-client-protocol.h 248:34@

    __exported by:__ @xdg-shell-client-protocol.h@

    __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_xdg_surface_interface@
-}
hs_bindgen_869df9b2fe895c0a :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_869df9b2fe895c0a =
  RIP.unsafePerformIO hs_bindgen_24a8b2d76a13aebc

{-# NOINLINE xdg_surface_interface #-}
xdg_surface_interface :: Bindings.Wayland.Util.Generated.Wl_interface
xdg_surface_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_869df9b2fe895c0a)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_interface@
foreign import ccall unsafe "hs_bindgen_af0ad5a33dd24c12" hs_bindgen_af0ad5a33dd24c12_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_toplevel_interface@
hs_bindgen_af0ad5a33dd24c12 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_af0ad5a33dd24c12 =
  RIP.fromFFIType hs_bindgen_af0ad5a33dd24c12_base

{-# NOINLINE hs_bindgen_6a16ee3b7af9226f #-}
{-| __C declaration:__ @xdg_toplevel_interface@

    __defined at:__ @xdg-shell-client-protocol.h 305:34@

    __exported by:__ @xdg-shell-client-protocol.h@

    __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_xdg_toplevel_interface@
-}
hs_bindgen_6a16ee3b7af9226f :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_6a16ee3b7af9226f =
  RIP.unsafePerformIO hs_bindgen_af0ad5a33dd24c12

{-# NOINLINE xdg_toplevel_interface #-}
xdg_toplevel_interface :: Bindings.Wayland.Util.Generated.Wl_interface
xdg_toplevel_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_6a16ee3b7af9226f)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_interface@
foreign import ccall unsafe "hs_bindgen_8c5b25f9b40f4931" hs_bindgen_8c5b25f9b40f4931_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_get_xdg_popup_interface@
hs_bindgen_8c5b25f9b40f4931 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_8c5b25f9b40f4931 =
  RIP.fromFFIType hs_bindgen_8c5b25f9b40f4931_base

{-# NOINLINE hs_bindgen_3f4e5c9bb91fbb3a #-}
{-| __C declaration:__ @xdg_popup_interface@

    __defined at:__ @xdg-shell-client-protocol.h 368:34@

    __exported by:__ @xdg-shell-client-protocol.h@

    __unique:__ @Bindings_Wayland_XdgShell_Generated_Bindings.Wayland.XdgShell.Generated_xdg_popup_interface@
-}
hs_bindgen_3f4e5c9bb91fbb3a :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_3f4e5c9bb91fbb3a =
  RIP.unsafePerformIO hs_bindgen_8c5b25f9b40f4931

{-# NOINLINE xdg_popup_interface #-}
xdg_popup_interface :: Bindings.Wayland.Util.Generated.Wl_interface
xdg_popup_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_3f4e5c9bb91fbb3a)

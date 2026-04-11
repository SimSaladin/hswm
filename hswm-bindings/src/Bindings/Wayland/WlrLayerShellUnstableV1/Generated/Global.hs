{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Global
    ( Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Global.zwlr_layer_shell_v1_interface
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Global.zwlr_layer_surface_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-layer-shell-unstable-v1-client-protocol.h>"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_f614a3b293a1c921 (void)"
  , "{"
  , "  return &zwlr_layer_shell_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_3952b25154530c20 (void)"
  , "{"
  , "  return &zwlr_layer_surface_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_interface@
foreign import ccall unsafe "hs_bindgen_f614a3b293a1c921" hs_bindgen_f614a3b293a1c921_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_interface@
hs_bindgen_f614a3b293a1c921 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_f614a3b293a1c921 =
  RIP.fromFFIType hs_bindgen_f614a3b293a1c921_base

{-# NOINLINE hs_bindgen_3948254d447996fd #-}
{-|

  > page_iface_zwlr_layer_shell_v1 zwlr_layer_shell_v1

  > page_iface_zwlr_layer_shell_v1_desc Description

  Clients can use this interface to assign the surface_layer role to wl_surfaces. Such surfaces are assigned to a "layer" of the output and rendered with a defined z-depth respective to each other. They may also be anchored to the edges and corners of a screen and specify input handling semantics. This interface should be suitable for the implementation of many desktop shell components, and a broad number of other applications that interact with the desktop.

  > page_iface_zwlr_layer_shell_v1_api API

  See @iface_zwlr_layer_shell_v1@ .

  > iface_zwlr_layer_shell_v1 The zwlr_layer_shell_v1 interface

  Clients can use this interface to assign the surface_layer role to wl_surfaces. Such surfaces are assigned to a "layer" of the output and rendered with a defined z-depth respective to each other. They may also be anchored to the edges and corners of a screen and specify input handling semantics. This interface should be suitable for the implementation of many desktop shell components, and a broad number of other applications that interact with the desktop.

__C declaration:__ @zwlr_layer_shell_v1_interface@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 79:34@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_zwlr_layer_shell_v1_interface@
-}
hs_bindgen_3948254d447996fd :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_3948254d447996fd =
  RIP.unsafePerformIO hs_bindgen_f614a3b293a1c921

{-# NOINLINE zwlr_layer_shell_v1_interface #-}
zwlr_layer_shell_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_layer_shell_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_3948254d447996fd)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_interface@
foreign import ccall unsafe "hs_bindgen_3952b25154530c20" hs_bindgen_3952b25154530c20_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_interface@
hs_bindgen_3952b25154530c20 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_3952b25154530c20 =
  RIP.fromFFIType hs_bindgen_3952b25154530c20_base

{-# NOINLINE hs_bindgen_d467c05b692300f4 #-}
{-|

  > page_iface_zwlr_layer_surface_v1 zwlr_layer_surface_v1

  > page_iface_zwlr_layer_surface_v1_desc Description

  An interface that may be implemented by a wl_surface, for surfaces that are designed to be rendered as a layer of a stacked desktop-like environment.

  Layer surface state (size, anchor, exclusive zone, margin, interactivity) is double-buffered, and will be applied at the time wl_surface.commit of the corresponding wl_surface is called.

  > page_iface_zwlr_layer_surface_v1_api API

  See @iface_zwlr_layer_surface_v1@ .

  > iface_zwlr_layer_surface_v1 The zwlr_layer_surface_v1 interface

  An interface that may be implemented by a wl_surface, for surfaces that are designed to be rendered as a layer of a stacked desktop-like environment.

  Layer surface state (size, anchor, exclusive zone, margin, interactivity) is double-buffered, and will be applied at the time wl_surface.commit of the corresponding wl_surface is called.

__C declaration:__ @zwlr_layer_surface_v1_interface@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 108:34@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_zwlr_layer_surface_v1_interface@
-}
hs_bindgen_d467c05b692300f4 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_d467c05b692300f4 =
  RIP.unsafePerformIO hs_bindgen_3952b25154530c20

{-# NOINLINE zwlr_layer_surface_v1_interface #-}
zwlr_layer_surface_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_layer_surface_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d467c05b692300f4)

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
{-| __C declaration:__ @zwlr_layer_shell_v1_interface@

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
{-| __C declaration:__ @zwlr_layer_surface_v1_interface@

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

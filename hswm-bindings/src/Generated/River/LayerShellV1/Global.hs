{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LayerShellV1.Global
    ( Generated.River.LayerShellV1.Global.river_layer_shell_v1_interface
    , Generated.River.LayerShellV1.Global.river_layer_shell_output_v1_interface
    , Generated.River.LayerShellV1.Global.river_layer_shell_seat_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-layer-shell-v1-client-protocol.h>"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_7e91677ab4c50fea (void)"
  , "{"
  , "  return &river_layer_shell_v1_interface;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_e8bc4dac823b9c61 (void)"
  , "{"
  , "  return &river_layer_shell_output_v1_interface;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_fcc1358468b2a5fd (void)"
  , "{"
  , "  return &river_layer_shell_seat_v1_interface;"
  , "}"
  ]))

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_interface@
foreign import ccall unsafe "hs_bindgen_7e91677ab4c50fea" hs_bindgen_7e91677ab4c50fea_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_interface@
hs_bindgen_7e91677ab4c50fea :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_7e91677ab4c50fea =
  RIP.fromFFIType hs_bindgen_7e91677ab4c50fea_base

{-# NOINLINE hs_bindgen_e7e3b664c3048968 #-}
{-|

  > page_iface_river_layer_shell_v1 river_layer_shell_v1

  > page_iface_river_layer_shell_v1_desc Description

  This global interface should only be advertised to the client if the river_window_manager_v1 global is also advertised. Binding this interface indicates that the window manager supports layer shell.

  If the window manager does not bind this interface, the compositor should not allow clients to map layer surfaces. This can be achieved by closing layer surfaces immediately.

  > page_iface_river_layer_shell_v1_api API

  See @iface_river_layer_shell_v1@ .

  > iface_river_layer_shell_v1 The river_layer_shell_v1 interface

  This global interface should only be advertised to the client if the river_window_manager_v1 global is also advertised. Binding this interface indicates that the window manager supports layer shell.

  If the window manager does not bind this interface, the compositor should not allow clients to map layer surfaces. This can be achieved by closing layer surfaces immediately.

__C declaration:__ @river_layer_shell_v1_interface@

__defined at:__ @river-layer-shell-v1-client-protocol.h 89:34@

__exported by:__ @river-layer-shell-v1-client-protocol.h@

__unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_river_layer_shell_v1_interface@
-}
hs_bindgen_e7e3b664c3048968 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_e7e3b664c3048968 =
  RIP.unsafePerformIO hs_bindgen_7e91677ab4c50fea

{-# NOINLINE river_layer_shell_v1_interface #-}
river_layer_shell_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_e7e3b664c3048968)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_interface@
foreign import ccall unsafe "hs_bindgen_e8bc4dac823b9c61" hs_bindgen_e8bc4dac823b9c61_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_interface@
hs_bindgen_e8bc4dac823b9c61 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_e8bc4dac823b9c61 =
  RIP.fromFFIType hs_bindgen_e8bc4dac823b9c61_base

{-# NOINLINE hs_bindgen_2d8cbceb21e87d3a #-}
{-|

  > page_iface_river_layer_shell_output_v1 river_layer_shell_output_v1

  > page_iface_river_layer_shell_output_v1_desc Description

  The lifetime of this object is tied to the corresponding river_output_v1. This object is made inert when the river_output_v1.removed event is sent and should be destroyed.

  > page_iface_river_layer_shell_output_v1_api API

  See @iface_river_layer_shell_output_v1@ .

  > iface_river_layer_shell_output_v1 The river_layer_shell_output_v1 interface

  The lifetime of this object is tied to the corresponding river_output_v1. This object is made inert when the river_output_v1.removed event is sent and should be destroyed.

__C declaration:__ @river_layer_shell_output_v1_interface@

__defined at:__ @river-layer-shell-v1-client-protocol.h 110:34@

__exported by:__ @river-layer-shell-v1-client-protocol.h@

__unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_river_layer_shell_output_v1_interface@
-}
hs_bindgen_2d8cbceb21e87d3a :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_2d8cbceb21e87d3a =
  RIP.unsafePerformIO hs_bindgen_e8bc4dac823b9c61

{-# NOINLINE river_layer_shell_output_v1_interface #-}
river_layer_shell_output_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_output_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_2d8cbceb21e87d3a)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_interface@
foreign import ccall unsafe "hs_bindgen_fcc1358468b2a5fd" hs_bindgen_fcc1358468b2a5fd_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_interface@
hs_bindgen_fcc1358468b2a5fd :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_fcc1358468b2a5fd =
  RIP.fromFFIType hs_bindgen_fcc1358468b2a5fd_base

{-# NOINLINE hs_bindgen_b5db46e86e09ab16 #-}
{-|

  > page_iface_river_layer_shell_seat_v1 river_layer_shell_seat_v1

  > page_iface_river_layer_shell_seat_v1_desc Description

  The lifetime of this object is tied to the corresponding river_seat_v1. This object is made inert when the river_seat_v1.removed event is sent and should be destroyed.

  > page_iface_river_layer_shell_seat_v1_api API

  See @iface_river_layer_shell_seat_v1@ .

  > iface_river_layer_shell_seat_v1 The river_layer_shell_seat_v1 interface

  The lifetime of this object is tied to the corresponding river_seat_v1. This object is made inert when the river_seat_v1.removed event is sent and should be destroyed.

__C declaration:__ @river_layer_shell_seat_v1_interface@

__defined at:__ @river-layer-shell-v1-client-protocol.h 131:34@

__exported by:__ @river-layer-shell-v1-client-protocol.h@

__unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_river_layer_shell_seat_v1_interface@
-}
hs_bindgen_b5db46e86e09ab16 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_b5db46e86e09ab16 =
  RIP.unsafePerformIO hs_bindgen_fcc1358468b2a5fd

{-# NOINLINE river_layer_shell_seat_v1_interface #-}
river_layer_shell_seat_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_seat_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_b5db46e86e09ab16)

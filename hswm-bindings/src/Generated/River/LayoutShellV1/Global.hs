{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LayoutShellV1.Global
    ( Generated.River.LayoutShellV1.Global.river_layer_shell_v1_interface
    , Generated.River.LayoutShellV1.Global.river_layer_shell_output_v1_interface
    , Generated.River.LayoutShellV1.Global.river_layer_shell_seat_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-layer-shell-v1-client-protocol.h>"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_061d190b7f152e81 (void)"
  , "{"
  , "  return &river_layer_shell_v1_interface;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_bb0dd4a1cc365d5a (void)"
  , "{"
  , "  return &river_layer_shell_output_v1_interface;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_d96d4e62f7d42e89 (void)"
  , "{"
  , "  return &river_layer_shell_seat_v1_interface;"
  , "}"
  ]))

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_interface@
foreign import ccall unsafe "hs_bindgen_061d190b7f152e81" hs_bindgen_061d190b7f152e81_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_interface@
hs_bindgen_061d190b7f152e81 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_061d190b7f152e81 =
  RIP.fromFFIType hs_bindgen_061d190b7f152e81_base

{-# NOINLINE hs_bindgen_3eedba4162213fda #-}
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

__unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_river_layer_shell_v1_interface@
-}
hs_bindgen_3eedba4162213fda :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_3eedba4162213fda =
  RIP.unsafePerformIO hs_bindgen_061d190b7f152e81

{-# NOINLINE river_layer_shell_v1_interface #-}
river_layer_shell_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_3eedba4162213fda)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_interface@
foreign import ccall unsafe "hs_bindgen_bb0dd4a1cc365d5a" hs_bindgen_bb0dd4a1cc365d5a_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_interface@
hs_bindgen_bb0dd4a1cc365d5a :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_bb0dd4a1cc365d5a =
  RIP.fromFFIType hs_bindgen_bb0dd4a1cc365d5a_base

{-# NOINLINE hs_bindgen_71d44a76eda0ffbb #-}
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

__unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_river_layer_shell_output_v1_interface@
-}
hs_bindgen_71d44a76eda0ffbb :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_71d44a76eda0ffbb =
  RIP.unsafePerformIO hs_bindgen_bb0dd4a1cc365d5a

{-# NOINLINE river_layer_shell_output_v1_interface #-}
river_layer_shell_output_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_output_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_71d44a76eda0ffbb)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_interface@
foreign import ccall unsafe "hs_bindgen_d96d4e62f7d42e89" hs_bindgen_d96d4e62f7d42e89_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_interface@
hs_bindgen_d96d4e62f7d42e89 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_d96d4e62f7d42e89 =
  RIP.fromFFIType hs_bindgen_d96d4e62f7d42e89_base

{-# NOINLINE hs_bindgen_d97db9a97332268d #-}
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

__unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_river_layer_shell_seat_v1_interface@
-}
hs_bindgen_d97db9a97332268d :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_d97db9a97332268d =
  RIP.unsafePerformIO hs_bindgen_d96d4e62f7d42e89

{-# NOINLINE river_layer_shell_seat_v1_interface #-}
river_layer_shell_seat_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_seat_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d97db9a97332268d)

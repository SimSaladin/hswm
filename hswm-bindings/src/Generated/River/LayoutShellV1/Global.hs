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
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c60de1108b4d7b24 (void)"
  , "{"
  , "  return &river_layer_shell_v1_interface;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_2053b83b349209d9 (void)"
  , "{"
  , "  return &river_layer_shell_output_v1_interface;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_dbbb0e0b47d4b06d (void)"
  , "{"
  , "  return &river_layer_shell_seat_v1_interface;"
  , "}"
  ]))

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_interface@
foreign import ccall unsafe "hs_bindgen_c60de1108b4d7b24" hs_bindgen_c60de1108b4d7b24_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_interface@
hs_bindgen_c60de1108b4d7b24 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_c60de1108b4d7b24 =
  RIP.fromFFIType hs_bindgen_c60de1108b4d7b24_base

{-# NOINLINE hs_bindgen_7612ef69509f2a50 #-}
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

__unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_river_layer_shell_v1_interface@
-}
hs_bindgen_7612ef69509f2a50 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_7612ef69509f2a50 =
  RIP.unsafePerformIO hs_bindgen_c60de1108b4d7b24

{-# NOINLINE river_layer_shell_v1_interface #-}
river_layer_shell_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_7612ef69509f2a50)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_interface@
foreign import ccall unsafe "hs_bindgen_2053b83b349209d9" hs_bindgen_2053b83b349209d9_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_interface@
hs_bindgen_2053b83b349209d9 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_2053b83b349209d9 =
  RIP.fromFFIType hs_bindgen_2053b83b349209d9_base

{-# NOINLINE hs_bindgen_5dc15f7c7b8cc13c #-}
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

__unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_river_layer_shell_output_v1_interface@
-}
hs_bindgen_5dc15f7c7b8cc13c :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_5dc15f7c7b8cc13c =
  RIP.unsafePerformIO hs_bindgen_2053b83b349209d9

{-# NOINLINE river_layer_shell_output_v1_interface #-}
river_layer_shell_output_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_output_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5dc15f7c7b8cc13c)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_interface@
foreign import ccall unsafe "hs_bindgen_dbbb0e0b47d4b06d" hs_bindgen_dbbb0e0b47d4b06d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_interface@
hs_bindgen_dbbb0e0b47d4b06d :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_dbbb0e0b47d4b06d =
  RIP.fromFFIType hs_bindgen_dbbb0e0b47d4b06d_base

{-# NOINLINE hs_bindgen_57d254de526a9583 #-}
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

__unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_river_layer_shell_seat_v1_interface@
-}
hs_bindgen_57d254de526a9583 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_57d254de526a9583 =
  RIP.unsafePerformIO hs_bindgen_dbbb0e0b47d4b06d

{-# NOINLINE river_layer_shell_seat_v1_interface #-}
river_layer_shell_seat_v1_interface :: Generated.Wayland.Util.Wl_interface
river_layer_shell_seat_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_57d254de526a9583)

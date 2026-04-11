{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.LayerShellV1.Generated.Global
    ( Bindings.River.LayerShellV1.Generated.Global.river_layer_shell_v1_interface
    , Bindings.River.LayerShellV1.Generated.Global.river_layer_shell_output_v1_interface
    , Bindings.River.LayerShellV1.Generated.Global.river_layer_shell_seat_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-layer-shell-v1-client-protocol.h>"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_8d7b7c88ea772052 (void)"
  , "{"
  , "  return &river_layer_shell_v1_interface;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_0eeca367febf931c (void)"
  , "{"
  , "  return &river_layer_shell_output_v1_interface;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_634479006a29d362 (void)"
  , "{"
  , "  return &river_layer_shell_seat_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_interface@
foreign import ccall unsafe "hs_bindgen_8d7b7c88ea772052" hs_bindgen_8d7b7c88ea772052_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_interface@
hs_bindgen_8d7b7c88ea772052 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_8d7b7c88ea772052 =
  RIP.fromFFIType hs_bindgen_8d7b7c88ea772052_base

{-# NOINLINE hs_bindgen_4e07511b3981b141 #-}
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

__unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_river_layer_shell_v1_interface@
-}
hs_bindgen_4e07511b3981b141 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_4e07511b3981b141 =
  RIP.unsafePerformIO hs_bindgen_8d7b7c88ea772052

{-# NOINLINE river_layer_shell_v1_interface #-}
river_layer_shell_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_layer_shell_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_4e07511b3981b141)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_interface@
foreign import ccall unsafe "hs_bindgen_0eeca367febf931c" hs_bindgen_0eeca367febf931c_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_interface@
hs_bindgen_0eeca367febf931c :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_0eeca367febf931c =
  RIP.fromFFIType hs_bindgen_0eeca367febf931c_base

{-# NOINLINE hs_bindgen_a57f36d89bf4f04e #-}
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

__unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_river_layer_shell_output_v1_interface@
-}
hs_bindgen_a57f36d89bf4f04e :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_a57f36d89bf4f04e =
  RIP.unsafePerformIO hs_bindgen_0eeca367febf931c

{-# NOINLINE river_layer_shell_output_v1_interface #-}
river_layer_shell_output_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_layer_shell_output_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a57f36d89bf4f04e)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_interface@
foreign import ccall unsafe "hs_bindgen_634479006a29d362" hs_bindgen_634479006a29d362_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_interface@
hs_bindgen_634479006a29d362 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_634479006a29d362 =
  RIP.fromFFIType hs_bindgen_634479006a29d362_base

{-# NOINLINE hs_bindgen_17bd05e62edd712e #-}
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

__unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_river_layer_shell_seat_v1_interface@
-}
hs_bindgen_17bd05e62edd712e :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_17bd05e62edd712e =
  RIP.unsafePerformIO hs_bindgen_634479006a29d362

{-# NOINLINE river_layer_shell_seat_v1_interface #-}
river_layer_shell_seat_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_layer_shell_seat_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_17bd05e62edd712e)

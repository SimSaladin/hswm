{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.XkbBindingsV1.Global
    ( Generated.River.XkbBindingsV1.Global.river_xkb_bindings_v1_interface
    , Generated.River.XkbBindingsV1.Global.river_xkb_binding_v1_interface
    , Generated.River.XkbBindingsV1.Global.river_xkb_bindings_seat_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_9488a30be00c4ca4 (void)"
  , "{"
  , "  return &river_xkb_bindings_v1_interface;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_17757d1fe2afcfbd (void)"
  , "{"
  , "  return &river_xkb_binding_v1_interface;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_18dc8d9eff542448 (void)"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_interface;"
  , "}"
  ]))

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_interface@
foreign import ccall unsafe "hs_bindgen_9488a30be00c4ca4" hs_bindgen_9488a30be00c4ca4_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_interface@
hs_bindgen_9488a30be00c4ca4 :: IO (PtrConst.PtrConst Generated.Wayland.Util.WlInterface)
hs_bindgen_9488a30be00c4ca4 =
  RIP.fromFFIType hs_bindgen_9488a30be00c4ca4_base

{-# NOINLINE hs_bindgen_ac028fc07da875d7 #-}
{-|

  > page_iface_river_xkb_bindings_v1 river_xkb_bindings_v1

  > page_iface_river_xkb_bindings_v1_desc Description

  This global interface should only be advertised to the client if the river_window_manager_v1 global is also advertised.

  > page_iface_river_xkb_bindings_v1_api API

  See @iface_river_xkb_bindings_v1@ .

  > iface_river_xkb_bindings_v1 The river_xkb_bindings_v1 interface

  This global interface should only be advertised to the client if the river_window_manager_v1 global is also advertised.

__C declaration:__ @river_xkb_bindings_v1_interface@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 79:34@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@

__unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_river_xkb_bindings_v1_interface@
-}
hs_bindgen_ac028fc07da875d7 :: PtrConst.PtrConst Generated.Wayland.Util.WlInterface
hs_bindgen_ac028fc07da875d7 =
  RIP.unsafePerformIO hs_bindgen_9488a30be00c4ca4

{-# NOINLINE river_xkb_bindings_v1_interface #-}
river_xkb_bindings_v1_interface :: Generated.Wayland.Util.WlInterface
river_xkb_bindings_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_ac028fc07da875d7)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_interface@
foreign import ccall unsafe "hs_bindgen_17757d1fe2afcfbd" hs_bindgen_17757d1fe2afcfbd_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_interface@
hs_bindgen_17757d1fe2afcfbd :: IO (PtrConst.PtrConst Generated.Wayland.Util.WlInterface)
hs_bindgen_17757d1fe2afcfbd =
  RIP.fromFFIType hs_bindgen_17757d1fe2afcfbd_base

{-# NOINLINE hs_bindgen_ecd536eec44b6c7d #-}
{-|

  > page_iface_river_xkb_binding_v1 river_xkb_binding_v1

  > page_iface_river_xkb_binding_v1_desc Description

  This object allows the window manager to configure a xkbcommon key binding and receive events when the key binding is triggered.

  The new key binding is not enabled until the enable request is made during a manage sequence.

  Normally, all key events are sent to the surface with keyboard focus by the compositor. Key events that trigger a key binding are not sent to the surface with keyboard focus.

  If multiple key bindings would be triggered by a single physical key event on the compositor side, it is compositor policy which key binding(s) will receive press/release events or if all of the matched key bindings receive press/release events.

  Key bindings might be matched by the same physical key event due to shared keysym and modifiers. The layout override feature may also cause the same physical key event to trigger two key bindings with different keysyms and different layout overrides configured.

  > page_iface_river_xkb_binding_v1_api API

  See @iface_river_xkb_binding_v1@ .

  > iface_river_xkb_binding_v1 The river_xkb_binding_v1 interface

  This object allows the window manager to configure a xkbcommon key binding and receive events when the key binding is triggered.

  The new key binding is not enabled until the enable request is made during a manage sequence.

  Normally, all key events are sent to the surface with keyboard focus by the compositor. Key events that trigger a key binding are not sent to the surface with keyboard focus.

  If multiple key bindings would be triggered by a single physical key event on the compositor side, it is compositor policy which key binding(s) will receive press/release events or if all of the matched key bindings receive press/release events.

  Key bindings might be matched by the same physical key event due to shared keysym and modifiers. The layout override feature may also cause the same physical key event to trigger two key bindings with different keysyms and different layout overrides configured.

__C declaration:__ @river_xkb_binding_v1_interface@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 132:34@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@

__unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_river_xkb_binding_v1_interface@
-}
hs_bindgen_ecd536eec44b6c7d :: PtrConst.PtrConst Generated.Wayland.Util.WlInterface
hs_bindgen_ecd536eec44b6c7d =
  RIP.unsafePerformIO hs_bindgen_17757d1fe2afcfbd

{-# NOINLINE river_xkb_binding_v1_interface #-}
river_xkb_binding_v1_interface :: Generated.Wayland.Util.WlInterface
river_xkb_binding_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_ecd536eec44b6c7d)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_interface@
foreign import ccall unsafe "hs_bindgen_18dc8d9eff542448" hs_bindgen_18dc8d9eff542448_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_interface@
hs_bindgen_18dc8d9eff542448 :: IO (PtrConst.PtrConst Generated.Wayland.Util.WlInterface)
hs_bindgen_18dc8d9eff542448 =
  RIP.fromFFIType hs_bindgen_18dc8d9eff542448_base

{-# NOINLINE hs_bindgen_5e969cc39a6d6ceb #-}
{-|

  > page_iface_river_xkb_bindings_seat_v1 river_xkb_bindings_seat_v1

  > page_iface_river_xkb_bindings_seat_v1_desc Description

  This object manages xkb bindings state associated with a specific seat.

  > page_iface_river_xkb_bindings_seat_v1_api API

  See @iface_river_xkb_bindings_seat_v1@ .

  > iface_river_xkb_bindings_seat_v1 The river_xkb_bindings_seat_v1 interface

  This object manages xkb bindings state associated with a specific seat.

__C declaration:__ @river_xkb_bindings_seat_v1_interface@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 149:34@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@

__unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_river_xkb_bindings_seat_v1_interface@
-}
hs_bindgen_5e969cc39a6d6ceb :: PtrConst.PtrConst Generated.Wayland.Util.WlInterface
hs_bindgen_5e969cc39a6d6ceb =
  RIP.unsafePerformIO hs_bindgen_18dc8d9eff542448

{-# NOINLINE river_xkb_bindings_seat_v1_interface #-}
river_xkb_bindings_seat_v1_interface :: Generated.Wayland.Util.WlInterface
river_xkb_bindings_seat_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5e969cc39a6d6ceb)

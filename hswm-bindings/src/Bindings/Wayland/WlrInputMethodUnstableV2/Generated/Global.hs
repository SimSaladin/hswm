{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Global
    ( Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Global.zwp_input_method_v2_interface
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Global.zwp_input_popup_surface_v2_interface
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Global.zwp_input_method_keyboard_grab_v2_interface
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Global.zwp_input_method_manager_v2_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <input-method-unstable-v2-client-protocol.h>"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_9e81d570bc3671ca (void)"
  , "{"
  , "  return &zwp_input_method_v2_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_86dfebb721ca6a14 (void)"
  , "{"
  , "  return &zwp_input_popup_surface_v2_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_3643112ab52555d0 (void)"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_24e9efdc08a16956 (void)"
  , "{"
  , "  return &zwp_input_method_manager_v2_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_interface@
foreign import ccall unsafe "hs_bindgen_9e81d570bc3671ca" hs_bindgen_9e81d570bc3671ca_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_interface@
hs_bindgen_9e81d570bc3671ca :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_9e81d570bc3671ca =
  RIP.fromFFIType hs_bindgen_9e81d570bc3671ca_base

{-# NOINLINE hs_bindgen_3189319c58a1eaa8 #-}
{-|

  > page_iface_zwp_input_method_v2 zwp_input_method_v2

  > page_iface_zwp_input_method_v2_desc Description

  An input method object allows for clients to compose text.

  The objects connects the client to a text input in an application, and lets the client to serve as an input method for a seat.

  The zwp_input_method_v2 object can occupy two distinct states: active and inactive. In the active state, the object is associated to and communicates with a text input. In the inactive state, there is no associated text input, and the only communication is with the compositor. Initially, the input method is in the inactive state.

  Requests issued in the inactive state must be accepted by the compositor. Because of the serial mechanism, and the state reset on activate event, they will not have any effect on the state of the next text input.

  There must be no more than one input method object per seat.

  > page_iface_zwp_input_method_v2_api API

  See @iface_zwp_input_method_v2@ .

  > iface_zwp_input_method_v2 The zwp_input_method_v2 interface

  An input method object allows for clients to compose text.

  The objects connects the client to a text input in an application, and lets the client to serve as an input method for a seat.

  The zwp_input_method_v2 object can occupy two distinct states: active and inactive. In the active state, the object is associated to and communicates with a text input. In the inactive state, there is no associated text input, and the only communication is with the compositor. Initially, the input method is in the inactive state.

  Requests issued in the inactive state must be accepted by the compositor. Because of the serial mechanism, and the state reset on activate event, they will not have any effect on the state of the next text input.

  There must be no more than one input method object per seat.

__C declaration:__ @zwp_input_method_v2_interface@

__defined at:__ @input-method-unstable-v2-client-protocol.h 126:34@

__exported by:__ @input-method-unstable-v2-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_zwp_input_method_v2_interface@
-}
hs_bindgen_3189319c58a1eaa8 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_3189319c58a1eaa8 =
  RIP.unsafePerformIO hs_bindgen_9e81d570bc3671ca

{-# NOINLINE zwp_input_method_v2_interface #-}
zwp_input_method_v2_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwp_input_method_v2_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_3189319c58a1eaa8)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_interface@
foreign import ccall unsafe "hs_bindgen_86dfebb721ca6a14" hs_bindgen_86dfebb721ca6a14_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_interface@
hs_bindgen_86dfebb721ca6a14 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_86dfebb721ca6a14 =
  RIP.fromFFIType hs_bindgen_86dfebb721ca6a14_base

{-# NOINLINE hs_bindgen_80bdca53a212e6f3 #-}
{-|

  > page_iface_zwp_input_popup_surface_v2 zwp_input_popup_surface_v2

  > page_iface_zwp_input_popup_surface_v2_desc Description

  This interface marks a surface as a popup for interacting with an input method.

  The compositor should place it near the active text input area. It must be visible if and only if the input method is in the active state.

  The client must not destroy the underlying wl_surface while the zwp_input_popup_surface_v2 object exists.

  > page_iface_zwp_input_popup_surface_v2_api API

  See @iface_zwp_input_popup_surface_v2@ .

  > iface_zwp_input_popup_surface_v2 The zwp_input_popup_surface_v2 interface

  This interface marks a surface as a popup for interacting with an input method.

  The compositor should place it near the active text input area. It must be visible if and only if the input method is in the active state.

  The client must not destroy the underlying wl_surface while the zwp_input_popup_surface_v2 object exists.

__C declaration:__ @zwp_input_popup_surface_v2_interface@

__defined at:__ @input-method-unstable-v2-client-protocol.h 157:34@

__exported by:__ @input-method-unstable-v2-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_zwp_input_popup_surface_v2_interface@
-}
hs_bindgen_80bdca53a212e6f3 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_80bdca53a212e6f3 =
  RIP.unsafePerformIO hs_bindgen_86dfebb721ca6a14

{-# NOINLINE zwp_input_popup_surface_v2_interface #-}
zwp_input_popup_surface_v2_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwp_input_popup_surface_v2_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_80bdca53a212e6f3)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_interface@
foreign import ccall unsafe "hs_bindgen_3643112ab52555d0" hs_bindgen_3643112ab52555d0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_interface@
hs_bindgen_3643112ab52555d0 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_3643112ab52555d0 =
  RIP.fromFFIType hs_bindgen_3643112ab52555d0_base

{-# NOINLINE hs_bindgen_094d3e55cadce7c8 #-}
{-|

  > page_iface_zwp_input_method_keyboard_grab_v2 zwp_input_method_keyboard_grab_v2

  > page_iface_zwp_input_method_keyboard_grab_v2_desc Description

  The zwp_input_method_keyboard_grab_v2 interface represents an exclusive grab of the wl_keyboard interface associated with the seat.

  > page_iface_zwp_input_method_keyboard_grab_v2_api API

  See @iface_zwp_input_method_keyboard_grab_v2@ .

  > iface_zwp_input_method_keyboard_grab_v2 The zwp_input_method_keyboard_grab_v2 interface

  The zwp_input_method_keyboard_grab_v2 interface represents an exclusive grab of the wl_keyboard interface associated with the seat.

__C declaration:__ @zwp_input_method_keyboard_grab_v2_interface@

__defined at:__ @input-method-unstable-v2-client-protocol.h 176:34@

__exported by:__ @input-method-unstable-v2-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_zwp_input_method_keyboard_grab_v2_interface@
-}
hs_bindgen_094d3e55cadce7c8 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_094d3e55cadce7c8 =
  RIP.unsafePerformIO hs_bindgen_3643112ab52555d0

{-# NOINLINE zwp_input_method_keyboard_grab_v2_interface #-}
zwp_input_method_keyboard_grab_v2_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwp_input_method_keyboard_grab_v2_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_094d3e55cadce7c8)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_interface@
foreign import ccall unsafe "hs_bindgen_24e9efdc08a16956" hs_bindgen_24e9efdc08a16956_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_interface@
hs_bindgen_24e9efdc08a16956 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_24e9efdc08a16956 =
  RIP.fromFFIType hs_bindgen_24e9efdc08a16956_base

{-# NOINLINE hs_bindgen_d6b0a518aabee4ba #-}
{-|

  > page_iface_zwp_input_method_manager_v2 zwp_input_method_manager_v2

  > page_iface_zwp_input_method_manager_v2_desc Description

  The input method manager allows the client to become the input method on a chosen seat.

  No more than one input method must be associated with any seat at any given time.

  > page_iface_zwp_input_method_manager_v2_api API

  See @iface_zwp_input_method_manager_v2@ .

  > iface_zwp_input_method_manager_v2 The zwp_input_method_manager_v2 interface

  The input method manager allows the client to become the input method on a chosen seat.

  No more than one input method must be associated with any seat at any given time.

__C declaration:__ @zwp_input_method_manager_v2_interface@

__defined at:__ @input-method-unstable-v2-client-protocol.h 201:34@

__exported by:__ @input-method-unstable-v2-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_zwp_input_method_manager_v2_interface@
-}
hs_bindgen_d6b0a518aabee4ba :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_d6b0a518aabee4ba =
  RIP.unsafePerformIO hs_bindgen_24e9efdc08a16956

{-# NOINLINE zwp_input_method_manager_v2_interface #-}
zwp_input_method_manager_v2_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwp_input_method_manager_v2_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d6b0a518aabee4ba)

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wlr.InputMethodV2.Global
    ( Generated.Wlr.InputMethodV2.Global.zwp_input_method_v2_interface
    , Generated.Wlr.InputMethodV2.Global.zwp_input_popup_surface_v2_interface
    , Generated.Wlr.InputMethodV2.Global.zwp_input_method_keyboard_grab_v2_interface
    , Generated.Wlr.InputMethodV2.Global.zwp_input_method_manager_v2_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <input-method-unstable-v2-client-protocol.h>"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_7b16c9836c6d0ba6 (void)"
  , "{"
  , "  return &zwp_input_method_v2_interface;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c290aa93c907dca0 (void)"
  , "{"
  , "  return &zwp_input_popup_surface_v2_interface;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_1132d05f74846dac (void)"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_interface;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_896372f089bd4f23 (void)"
  , "{"
  , "  return &zwp_input_method_manager_v2_interface;"
  , "}"
  ]))

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_interface@
foreign import ccall unsafe "hs_bindgen_7b16c9836c6d0ba6" hs_bindgen_7b16c9836c6d0ba6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_interface@
hs_bindgen_7b16c9836c6d0ba6 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_7b16c9836c6d0ba6 =
  RIP.fromFFIType hs_bindgen_7b16c9836c6d0ba6_base

{-# NOINLINE hs_bindgen_6061b8c779f40caa #-}
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

__unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_zwp_input_method_v2_interface@
-}
hs_bindgen_6061b8c779f40caa :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_6061b8c779f40caa =
  RIP.unsafePerformIO hs_bindgen_7b16c9836c6d0ba6

{-# NOINLINE zwp_input_method_v2_interface #-}
zwp_input_method_v2_interface :: Generated.Wayland.Util.Wl_interface
zwp_input_method_v2_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_6061b8c779f40caa)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_interface@
foreign import ccall unsafe "hs_bindgen_c290aa93c907dca0" hs_bindgen_c290aa93c907dca0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_interface@
hs_bindgen_c290aa93c907dca0 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_c290aa93c907dca0 =
  RIP.fromFFIType hs_bindgen_c290aa93c907dca0_base

{-# NOINLINE hs_bindgen_aa9f82dbe11bb6d7 #-}
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

__unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_zwp_input_popup_surface_v2_interface@
-}
hs_bindgen_aa9f82dbe11bb6d7 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_aa9f82dbe11bb6d7 =
  RIP.unsafePerformIO hs_bindgen_c290aa93c907dca0

{-# NOINLINE zwp_input_popup_surface_v2_interface #-}
zwp_input_popup_surface_v2_interface :: Generated.Wayland.Util.Wl_interface
zwp_input_popup_surface_v2_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_aa9f82dbe11bb6d7)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_interface@
foreign import ccall unsafe "hs_bindgen_1132d05f74846dac" hs_bindgen_1132d05f74846dac_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_interface@
hs_bindgen_1132d05f74846dac :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_1132d05f74846dac =
  RIP.fromFFIType hs_bindgen_1132d05f74846dac_base

{-# NOINLINE hs_bindgen_ebba9fb2b7d69b06 #-}
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

__unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_zwp_input_method_keyboard_grab_v2_interface@
-}
hs_bindgen_ebba9fb2b7d69b06 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_ebba9fb2b7d69b06 =
  RIP.unsafePerformIO hs_bindgen_1132d05f74846dac

{-# NOINLINE zwp_input_method_keyboard_grab_v2_interface #-}
zwp_input_method_keyboard_grab_v2_interface :: Generated.Wayland.Util.Wl_interface
zwp_input_method_keyboard_grab_v2_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_ebba9fb2b7d69b06)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_interface@
foreign import ccall unsafe "hs_bindgen_896372f089bd4f23" hs_bindgen_896372f089bd4f23_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_interface@
hs_bindgen_896372f089bd4f23 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_896372f089bd4f23 =
  RIP.fromFFIType hs_bindgen_896372f089bd4f23_base

{-# NOINLINE hs_bindgen_4bd3ecde74219db7 #-}
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

__unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_zwp_input_method_manager_v2_interface@
-}
hs_bindgen_4bd3ecde74219db7 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_4bd3ecde74219db7 =
  RIP.unsafePerformIO hs_bindgen_896372f089bd4f23

{-# NOINLINE zwp_input_method_manager_v2_interface #-}
zwp_input_method_manager_v2_interface :: Generated.Wayland.Util.Wl_interface
zwp_input_method_manager_v2_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_4bd3ecde74219db7)

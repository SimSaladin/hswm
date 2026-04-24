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
{-| __C declaration:__ @zwp_input_method_v2_interface@

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
{-| __C declaration:__ @zwp_input_popup_surface_v2_interface@

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
{-| __C declaration:__ @zwp_input_method_keyboard_grab_v2_interface@

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
{-| __C declaration:__ @zwp_input_method_manager_v2_interface@

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

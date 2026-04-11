{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe
    ( Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_shell_v1_set_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_shell_v1_get_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_shell_v1_get_version
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_shell_v1_destroy
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_shell_v1_get_layer_surface
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_add_listener
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_set_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_get_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_get_version
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_set_size
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_set_anchor
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_set_exclusive_zone
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_set_margin
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_set_keyboard_interactivity
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_get_popup
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_ack_configure
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Safe.zwlr_layer_surface_v1_destroy
    )
  where

import qualified Generated.Wayland.Client
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-layer-shell-unstable-v1-client-protocol.h>"
  , "void hs_bindgen_01b45a5a92a09a59 ("
  , "  struct zwlr_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_50c311986d4c2691 ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_fb48ecd2998ffcc0 ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_54f705a2d6654477 ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct zwlr_layer_surface_v1 *hs_bindgen_57937dbbaebf59b7 ("
  , "  struct zwlr_layer_shell_v1 *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_output *arg3,"
  , "  uint32_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return (zwlr_layer_shell_v1_get_layer_surface)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_f243b4849ea71e69 ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  struct zwlr_layer_surface_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_layer_surface_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0364e5a0ab98d3a2 ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b44755055a4a9710 ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_layer_surface_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f7b90be1f00249b6 ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_layer_surface_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_5f8e08a4e5b67ffe ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_size)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_5bd5db11999b6b21 ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_anchor)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_5ef27c06da90087b ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_exclusive_zone)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f05ea7113c31b4ec ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_margin)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_aaac3d0f4cece01b ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_keyboard_interactivity)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1496e1f9285f4f4f ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  struct xdg_popup *arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_get_popup)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_37410297e6a495cf ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_ack_configure)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ee0e9f1771834d6e ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_set_user_data@
foreign import ccall safe "hs_bindgen_01b45a5a92a09a59" hs_bindgen_01b45a5a92a09a59_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_set_user_data@
hs_bindgen_01b45a5a92a09a59 ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_01b45a5a92a09a59 =
  RIP.fromFFIType hs_bindgen_01b45a5a92a09a59_base

{-|

  > iface_zwlr_layer_shell_v1

__C declaration:__ @zwlr_layer_shell_v1_set_user_data@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 160:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_set_user_data ::
     RIP.Ptr Zwlr_layer_shell_v1
     -- ^ __C declaration:__ @zwlr_layer_shell_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_layer_shell_v1_set_user_data =
  hs_bindgen_01b45a5a92a09a59

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_get_user_data@
foreign import ccall safe "hs_bindgen_50c311986d4c2691" hs_bindgen_50c311986d4c2691_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_get_user_data@
hs_bindgen_50c311986d4c2691 ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_50c311986d4c2691 =
  RIP.fromFFIType hs_bindgen_50c311986d4c2691_base

{-|

  > iface_zwlr_layer_shell_v1

__C declaration:__ @zwlr_layer_shell_v1_get_user_data@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 167:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_get_user_data ::
     RIP.Ptr Zwlr_layer_shell_v1
     -- ^ __C declaration:__ @zwlr_layer_shell_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_layer_shell_v1_get_user_data =
  hs_bindgen_50c311986d4c2691

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_get_version@
foreign import ccall safe "hs_bindgen_fb48ecd2998ffcc0" hs_bindgen_fb48ecd2998ffcc0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_get_version@
hs_bindgen_fb48ecd2998ffcc0 ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_fb48ecd2998ffcc0 =
  RIP.fromFFIType hs_bindgen_fb48ecd2998ffcc0_base

{-| __C declaration:__ @zwlr_layer_shell_v1_get_version@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 173:1@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_get_version ::
     RIP.Ptr Zwlr_layer_shell_v1
     -- ^ __C declaration:__ @zwlr_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_layer_shell_v1_get_version =
  hs_bindgen_fb48ecd2998ffcc0

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_destroy@
foreign import ccall safe "hs_bindgen_54f705a2d6654477" hs_bindgen_54f705a2d6654477_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_destroy@
hs_bindgen_54f705a2d6654477 ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> IO ()
hs_bindgen_54f705a2d6654477 =
  RIP.fromFFIType hs_bindgen_54f705a2d6654477_base

{-|

  > iface_zwlr_layer_shell_v1

__C declaration:__ @zwlr_layer_shell_v1_destroy@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 180:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_destroy ::
     RIP.Ptr Zwlr_layer_shell_v1
     -- ^ __C declaration:__ @zwlr_layer_shell_v1@
  -> IO ()
zwlr_layer_shell_v1_destroy =
  hs_bindgen_54f705a2d6654477

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_get_layer_surface@
foreign import ccall safe "hs_bindgen_57937dbbaebf59b7" hs_bindgen_57937dbbaebf59b7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_shell_v1_get_layer_surface@
hs_bindgen_57937dbbaebf59b7 ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
  -> RIP.Ptr Generated.Wayland.Client.Wl_output
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Zwlr_layer_surface_v1)
hs_bindgen_57937dbbaebf59b7 =
  RIP.fromFFIType hs_bindgen_57937dbbaebf59b7_base

{-|

  > iface_zwlr_layer_shell_v1

  Create a layer surface for an existing surface. This assigns the role of layer_surface, or raises a protocol error if another role is already assigned.

  Creating a layer surface from a wl_surface which has a buffer attached or committed is a client error, and any attempts by a client to attach or manipulate a buffer prior to the first layer_surface.configure call must also be treated as errors.

  You may pass NULL for output to allow the compositor to decide which output to use. Generally this will be the one that the user most recently interacted with.

  Clients can specify a namespace that defines the purpose of the layer surface.

__C declaration:__ @zwlr_layer_shell_v1_get_layer_surface@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 205:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_get_layer_surface ::
     RIP.Ptr Zwlr_layer_shell_v1
     -- ^ __C declaration:__ @zwlr_layer_shell_v1@
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> RIP.Ptr Generated.Wayland.Client.Wl_output
     -- ^ __C declaration:__ @output@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @layer@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @namespace@
  -> IO (RIP.Ptr Zwlr_layer_surface_v1)
zwlr_layer_shell_v1_get_layer_surface =
  hs_bindgen_57937dbbaebf59b7

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_add_listener@
foreign import ccall safe "hs_bindgen_f243b4849ea71e69" hs_bindgen_f243b4849ea71e69_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_add_listener@
hs_bindgen_f243b4849ea71e69 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> PtrConst.PtrConst Zwlr_layer_surface_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_f243b4849ea71e69 =
  RIP.fromFFIType hs_bindgen_f243b4849ea71e69_base

{-|

  > iface_zwlr_layer_surface_v1

__C declaration:__ @zwlr_layer_surface_v1_add_listener@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 308:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_add_listener ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> PtrConst.PtrConst Zwlr_layer_surface_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwlr_layer_surface_v1_add_listener =
  hs_bindgen_f243b4849ea71e69

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_user_data@
foreign import ccall safe "hs_bindgen_0364e5a0ab98d3a2" hs_bindgen_0364e5a0ab98d3a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_user_data@
hs_bindgen_0364e5a0ab98d3a2 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0364e5a0ab98d3a2 =
  RIP.fromFFIType hs_bindgen_0364e5a0ab98d3a2_base

{-|

  > iface_zwlr_layer_surface_v1

__C declaration:__ @zwlr_layer_surface_v1_set_user_data@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 368:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_user_data ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_layer_surface_v1_set_user_data =
  hs_bindgen_0364e5a0ab98d3a2

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_get_user_data@
foreign import ccall safe "hs_bindgen_b44755055a4a9710" hs_bindgen_b44755055a4a9710_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_get_user_data@
hs_bindgen_b44755055a4a9710 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b44755055a4a9710 =
  RIP.fromFFIType hs_bindgen_b44755055a4a9710_base

{-|

  > iface_zwlr_layer_surface_v1

__C declaration:__ @zwlr_layer_surface_v1_get_user_data@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 375:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_get_user_data ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_layer_surface_v1_get_user_data =
  hs_bindgen_b44755055a4a9710

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_get_version@
foreign import ccall safe "hs_bindgen_f7b90be1f00249b6" hs_bindgen_f7b90be1f00249b6_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_get_version@
hs_bindgen_f7b90be1f00249b6 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f7b90be1f00249b6 =
  RIP.fromFFIType hs_bindgen_f7b90be1f00249b6_base

{-| __C declaration:__ @zwlr_layer_surface_v1_get_version@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 381:1@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_get_version ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_layer_surface_v1_get_version =
  hs_bindgen_f7b90be1f00249b6

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_size@
foreign import ccall safe "hs_bindgen_5f8e08a4e5b67ffe" hs_bindgen_5f8e08a4e5b67ffe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_size@
hs_bindgen_5f8e08a4e5b67ffe ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_5f8e08a4e5b67ffe =
  RIP.fromFFIType hs_bindgen_5f8e08a4e5b67ffe_base

{-|

  > iface_zwlr_layer_surface_v1

  Sets the size of the surface in surface-local coordinates. The compositor will display the surface centered with respect to its anchors.

  If you pass 0 for either value, the compositor will assign it and inform you of the assignment in the configure event. You must set your anchor to opposite edges in the dimensions you omit; not doing so is a protocol error. Both values are 0 by default.

  Size is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_size@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 401:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_size ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @height@
  -> IO ()
zwlr_layer_surface_v1_set_size =
  hs_bindgen_5f8e08a4e5b67ffe

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_anchor@
foreign import ccall safe "hs_bindgen_5bd5db11999b6b21" hs_bindgen_5bd5db11999b6b21_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_anchor@
hs_bindgen_5bd5db11999b6b21 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_5bd5db11999b6b21 =
  RIP.fromFFIType hs_bindgen_5bd5db11999b6b21_base

{-|

  > iface_zwlr_layer_surface_v1

  Requests that the compositor anchor the surface to the specified edges and corners. If two orthoginal edges are specified (e.g. 'top' and 'left'), then the anchor point will be the intersection of the edges (e.g. the top left corner of the output); otherwise the anchor point will be centered on that edge, or in the center if none is specified.

  Anchor is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_anchor@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 419:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_anchor ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @anchor@
  -> IO ()
zwlr_layer_surface_v1_set_anchor =
  hs_bindgen_5bd5db11999b6b21

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_exclusive_zone@
foreign import ccall safe "hs_bindgen_5ef27c06da90087b" hs_bindgen_5ef27c06da90087b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_exclusive_zone@
hs_bindgen_5ef27c06da90087b ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_5ef27c06da90087b =
  RIP.fromFFIType hs_bindgen_5ef27c06da90087b_base

{-|

  > iface_zwlr_layer_surface_v1

  Requests that the compositor avoids occluding an area of the surface with other surfaces. The compositor's use of this information is implementation-dependent - do not assume that this region will not actually be occluded.

  A positive value is only meaningful if the surface is anchored to an edge, rather than a corner. The zone is the number of surface-local coordinates from the edge that are considered exclusive.

  Surfaces that do not wish to have an exclusive zone may instead specify how they should interact with surfaces that do. If set to zero, the surface indicates that it would like to be moved to avoid occluding surfaces with a positive excluzive zone. If set to -1, the surface indicates that it would not like to be moved to accommodate for other surfaces, and the compositor should extend it all the way to the edges it is anchored to.

  For example, a panel might set its exclusive zone to 10, so that maximized shell surfaces are not shown on top of it. A notification might set its exclusive zone to 0, so that it is moved to avoid occluding the panel, but shell surfaces are shown underneath it. A wallpaper or lock screen might set their exclusive zone to -1, so that they stretch below or over the panel.

  The default value is 0.

  Exclusive zone is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_exclusive_zone@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 457:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_exclusive_zone ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @zone@
  -> IO ()
zwlr_layer_surface_v1_set_exclusive_zone =
  hs_bindgen_5ef27c06da90087b

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_margin@
foreign import ccall safe "hs_bindgen_f05ea7113c31b4ec" hs_bindgen_f05ea7113c31b4ec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_margin@
hs_bindgen_f05ea7113c31b4ec ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f05ea7113c31b4ec =
  RIP.fromFFIType hs_bindgen_f05ea7113c31b4ec_base

{-|

  > iface_zwlr_layer_surface_v1

  Requests that the surface be placed some distance away from the anchor point on the output, in surface-local coordinates. Setting this value for edges you are not anchored to has no effect.

  The exclusive zone includes the margin.

  Margin is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_margin@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 475:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_margin ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @top@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @right@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @bottom@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @left@
  -> IO ()
zwlr_layer_surface_v1_set_margin =
  hs_bindgen_f05ea7113c31b4ec

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_keyboard_interactivity@
foreign import ccall safe "hs_bindgen_aaac3d0f4cece01b" hs_bindgen_aaac3d0f4cece01b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_set_keyboard_interactivity@
hs_bindgen_aaac3d0f4cece01b ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_aaac3d0f4cece01b =
  RIP.fromFFIType hs_bindgen_aaac3d0f4cece01b_base

{-|

  > iface_zwlr_layer_surface_v1

  Set to 1 to request that the seat send keyboard events to this layer surface. For layers below the shell surface layer, the seat will use normal focus semantics. For layers above the shell surface layers, the seat will always give exclusive keyboard focus to the top-most layer which has keyboard interactivity set to true.

  Layer surfaces receive pointer, touch, and tablet events normally. If you do not want to receive them, set the input region on your surface to an empty region.

  Events is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_keyboard_interactivity@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 497:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_keyboard_interactivity ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @keyboard_interactivity@
  -> IO ()
zwlr_layer_surface_v1_set_keyboard_interactivity =
  hs_bindgen_aaac3d0f4cece01b

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_get_popup@
foreign import ccall safe "hs_bindgen_1496e1f9285f4f4f" hs_bindgen_1496e1f9285f4f4f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_get_popup@
hs_bindgen_1496e1f9285f4f4f ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> RIP.Ptr Xdg_popup
  -> IO ()
hs_bindgen_1496e1f9285f4f4f =
  RIP.fromFFIType hs_bindgen_1496e1f9285f4f4f_base

{-|

  > iface_zwlr_layer_surface_v1

  This assigns an xdg_popup's parent to this layer_surface.  This popup should have been created via xdg_surface::get_popup with the parent set to NULL, and this request must be invoked before committing the popup's initial state.

  See the documentation of xdg_popup for more details about what an xdg_popup is and how it is used.

__C declaration:__ @zwlr_layer_surface_v1_get_popup@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 515:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_get_popup ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> RIP.Ptr Xdg_popup
     -- ^ __C declaration:__ @popup@
  -> IO ()
zwlr_layer_surface_v1_get_popup =
  hs_bindgen_1496e1f9285f4f4f

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_ack_configure@
foreign import ccall safe "hs_bindgen_37410297e6a495cf" hs_bindgen_37410297e6a495cf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_ack_configure@
hs_bindgen_37410297e6a495cf ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_37410297e6a495cf =
  RIP.fromFFIType hs_bindgen_37410297e6a495cf_base

{-|

  > iface_zwlr_layer_surface_v1

  When a configure event is received, if a client commits the surface in response to the configure event, then the client must make an ack_configure request sometime before the commit request, passing along the serial of the configure event.

  If the client receives multiple configure events before it can respond to one, it only has to ack the last configure event.

  A client is not required to commit immediately after sending an ack_configure request - it may even ack_configure several times before its next surface commit.

  A client may send multiple ack_configure requests before committing, but only the last request sent before a commit indicates which configure event the client really is responding to.

__C declaration:__ @zwlr_layer_surface_v1_ack_configure@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 541:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_ack_configure ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
zwlr_layer_surface_v1_ack_configure =
  hs_bindgen_37410297e6a495cf

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_destroy@
foreign import ccall safe "hs_bindgen_ee0e9f1771834d6e" hs_bindgen_ee0e9f1771834d6e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Safe_zwlr_layer_surface_v1_destroy@
hs_bindgen_ee0e9f1771834d6e ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> IO ()
hs_bindgen_ee0e9f1771834d6e =
  RIP.fromFFIType hs_bindgen_ee0e9f1771834d6e_base

{-|

  > iface_zwlr_layer_surface_v1

  This request destroys the layer surface.

__C declaration:__ @zwlr_layer_surface_v1_destroy@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 553:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_destroy ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> IO ()
zwlr_layer_surface_v1_destroy =
  hs_bindgen_ee0e9f1771834d6e

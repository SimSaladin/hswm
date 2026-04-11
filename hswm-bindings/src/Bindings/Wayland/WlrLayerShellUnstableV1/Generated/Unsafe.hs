{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe
    ( Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_shell_v1_set_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_shell_v1_get_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_shell_v1_get_version
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_shell_v1_destroy
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_shell_v1_get_layer_surface
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_add_listener
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_set_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_get_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_get_version
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_set_size
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_set_anchor
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_set_exclusive_zone
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_set_margin
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_set_keyboard_interactivity
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_get_popup
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_ack_configure
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.Unsafe.zwlr_layer_surface_v1_destroy
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.WlrLayerShellUnstableV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-layer-shell-unstable-v1-client-protocol.h>"
  , "void hs_bindgen_ceb0ba408abb5a5b ("
  , "  struct zwlr_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ae7ae11bca1c2ae4 ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9557c0eb6ef775a4 ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_638635216b8661db ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct zwlr_layer_surface_v1 *hs_bindgen_4890815c48538cd8 ("
  , "  struct zwlr_layer_shell_v1 *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_output *arg3,"
  , "  uint32_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return (zwlr_layer_shell_v1_get_layer_surface)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "signed int hs_bindgen_e25fa88329878de4 ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  struct zwlr_layer_surface_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_layer_surface_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_618d60106a170262 ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_996e60b7e8fef3c3 ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_layer_surface_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e0030365cc5e19df ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_layer_surface_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_57f2b066737ae0aa ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_size)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_c5fc2456548e3d1d ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_anchor)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a17cf370986873c3 ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_exclusive_zone)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f2990819005f46b6 ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_margin)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_1bac6dd9731de86f ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_set_keyboard_interactivity)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_8b154e9b8d3fa12e ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  struct xdg_popup *arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_get_popup)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_fe267b7ee8b9f52c ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_ack_configure)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_7de5fd040d7de5b4 ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_layer_surface_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_ceb0ba408abb5a5b" hs_bindgen_ceb0ba408abb5a5b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_set_user_data@
hs_bindgen_ceb0ba408abb5a5b ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ceb0ba408abb5a5b =
  RIP.fromFFIType hs_bindgen_ceb0ba408abb5a5b_base

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
  hs_bindgen_ceb0ba408abb5a5b

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ae7ae11bca1c2ae4" hs_bindgen_ae7ae11bca1c2ae4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_get_user_data@
hs_bindgen_ae7ae11bca1c2ae4 ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ae7ae11bca1c2ae4 =
  RIP.fromFFIType hs_bindgen_ae7ae11bca1c2ae4_base

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
  hs_bindgen_ae7ae11bca1c2ae4

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_9557c0eb6ef775a4" hs_bindgen_9557c0eb6ef775a4_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_get_version@
hs_bindgen_9557c0eb6ef775a4 ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9557c0eb6ef775a4 =
  RIP.fromFFIType hs_bindgen_9557c0eb6ef775a4_base

{-| __C declaration:__ @zwlr_layer_shell_v1_get_version@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 173:1@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_get_version ::
     RIP.Ptr Zwlr_layer_shell_v1
     -- ^ __C declaration:__ @zwlr_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_layer_shell_v1_get_version =
  hs_bindgen_9557c0eb6ef775a4

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_638635216b8661db" hs_bindgen_638635216b8661db_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_destroy@
hs_bindgen_638635216b8661db ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> IO ()
hs_bindgen_638635216b8661db =
  RIP.fromFFIType hs_bindgen_638635216b8661db_base

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
  hs_bindgen_638635216b8661db

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_get_layer_surface@
foreign import ccall unsafe "hs_bindgen_4890815c48538cd8" hs_bindgen_4890815c48538cd8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_shell_v1_get_layer_surface@
hs_bindgen_4890815c48538cd8 ::
     RIP.Ptr Zwlr_layer_shell_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
  -> HsBindgen.Runtime.LibC.Word32
  -> PtrConst.PtrConst RIP.CChar
  -> IO (RIP.Ptr Zwlr_layer_surface_v1)
hs_bindgen_4890815c48538cd8 =
  RIP.fromFFIType hs_bindgen_4890815c48538cd8_base

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
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
     -- ^ __C declaration:__ @output@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @layer@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @namespace@
  -> IO (RIP.Ptr Zwlr_layer_surface_v1)
zwlr_layer_shell_v1_get_layer_surface =
  hs_bindgen_4890815c48538cd8

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_e25fa88329878de4" hs_bindgen_e25fa88329878de4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_add_listener@
hs_bindgen_e25fa88329878de4 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> PtrConst.PtrConst Zwlr_layer_surface_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e25fa88329878de4 =
  RIP.fromFFIType hs_bindgen_e25fa88329878de4_base

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
  hs_bindgen_e25fa88329878de4

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_618d60106a170262" hs_bindgen_618d60106a170262_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_user_data@
hs_bindgen_618d60106a170262 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_618d60106a170262 =
  RIP.fromFFIType hs_bindgen_618d60106a170262_base

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
  hs_bindgen_618d60106a170262

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_996e60b7e8fef3c3" hs_bindgen_996e60b7e8fef3c3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_get_user_data@
hs_bindgen_996e60b7e8fef3c3 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_996e60b7e8fef3c3 =
  RIP.fromFFIType hs_bindgen_996e60b7e8fef3c3_base

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
  hs_bindgen_996e60b7e8fef3c3

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_get_version@
foreign import ccall unsafe "hs_bindgen_e0030365cc5e19df" hs_bindgen_e0030365cc5e19df_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_get_version@
hs_bindgen_e0030365cc5e19df ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e0030365cc5e19df =
  RIP.fromFFIType hs_bindgen_e0030365cc5e19df_base

{-| __C declaration:__ @zwlr_layer_surface_v1_get_version@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 381:1@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_get_version ::
     RIP.Ptr Zwlr_layer_surface_v1
     -- ^ __C declaration:__ @zwlr_layer_surface_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_layer_surface_v1_get_version =
  hs_bindgen_e0030365cc5e19df

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_size@
foreign import ccall unsafe "hs_bindgen_57f2b066737ae0aa" hs_bindgen_57f2b066737ae0aa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_size@
hs_bindgen_57f2b066737ae0aa ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_57f2b066737ae0aa =
  RIP.fromFFIType hs_bindgen_57f2b066737ae0aa_base

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
  hs_bindgen_57f2b066737ae0aa

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_anchor@
foreign import ccall unsafe "hs_bindgen_c5fc2456548e3d1d" hs_bindgen_c5fc2456548e3d1d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_anchor@
hs_bindgen_c5fc2456548e3d1d ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_c5fc2456548e3d1d =
  RIP.fromFFIType hs_bindgen_c5fc2456548e3d1d_base

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
  hs_bindgen_c5fc2456548e3d1d

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_exclusive_zone@
foreign import ccall unsafe "hs_bindgen_a17cf370986873c3" hs_bindgen_a17cf370986873c3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_exclusive_zone@
hs_bindgen_a17cf370986873c3 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_a17cf370986873c3 =
  RIP.fromFFIType hs_bindgen_a17cf370986873c3_base

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
  hs_bindgen_a17cf370986873c3

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_margin@
foreign import ccall unsafe "hs_bindgen_f2990819005f46b6" hs_bindgen_f2990819005f46b6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_margin@
hs_bindgen_f2990819005f46b6 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f2990819005f46b6 =
  RIP.fromFFIType hs_bindgen_f2990819005f46b6_base

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
  hs_bindgen_f2990819005f46b6

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_keyboard_interactivity@
foreign import ccall unsafe "hs_bindgen_1bac6dd9731de86f" hs_bindgen_1bac6dd9731de86f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_set_keyboard_interactivity@
hs_bindgen_1bac6dd9731de86f ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_1bac6dd9731de86f =
  RIP.fromFFIType hs_bindgen_1bac6dd9731de86f_base

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
  hs_bindgen_1bac6dd9731de86f

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_get_popup@
foreign import ccall unsafe "hs_bindgen_8b154e9b8d3fa12e" hs_bindgen_8b154e9b8d3fa12e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_get_popup@
hs_bindgen_8b154e9b8d3fa12e ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> RIP.Ptr Xdg_popup
  -> IO ()
hs_bindgen_8b154e9b8d3fa12e =
  RIP.fromFFIType hs_bindgen_8b154e9b8d3fa12e_base

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
  hs_bindgen_8b154e9b8d3fa12e

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_ack_configure@
foreign import ccall unsafe "hs_bindgen_fe267b7ee8b9f52c" hs_bindgen_fe267b7ee8b9f52c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_ack_configure@
hs_bindgen_fe267b7ee8b9f52c ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_fe267b7ee8b9f52c =
  RIP.fromFFIType hs_bindgen_fe267b7ee8b9f52c_base

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
  hs_bindgen_fe267b7ee8b9f52c

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_destroy@
foreign import ccall unsafe "hs_bindgen_7de5fd040d7de5b4" hs_bindgen_7de5fd040d7de5b4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_Unsafe_zwlr_layer_surface_v1_destroy@
hs_bindgen_7de5fd040d7de5b4 ::
     RIP.Ptr Zwlr_layer_surface_v1
  -> IO ()
hs_bindgen_7de5fd040d7de5b4 =
  RIP.fromFFIType hs_bindgen_7de5fd040d7de5b4_base

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
  hs_bindgen_7de5fd040d7de5b4

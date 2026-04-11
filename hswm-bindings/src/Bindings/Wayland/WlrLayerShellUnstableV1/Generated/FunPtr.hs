{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr
    ( Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_shell_v1_set_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_shell_v1_get_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_shell_v1_get_version
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_shell_v1_destroy
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_shell_v1_get_layer_surface
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_add_listener
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_set_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_get_user_data
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_get_version
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_set_size
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_set_anchor
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_set_exclusive_zone
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_set_margin
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_set_keyboard_interactivity
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_get_popup
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_ack_configure
    , Bindings.Wayland.WlrLayerShellUnstableV1.Generated.FunPtr.zwlr_layer_surface_v1_destroy
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
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_81a83742cf718340 (void)) ("
  , "  struct zwlr_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_layer_shell_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_bd3f858beb8ba03a (void)) ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_layer_shell_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b09d6539f1c3ee21 (void)) ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_layer_shell_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ac55b3c964cbafc1 (void)) ("
  , "  struct zwlr_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_layer_shell_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_layer_surface */"
  , "__attribute__ ((const))"
  , "struct zwlr_layer_surface_v1 *(*hs_bindgen_199e35be909f668f (void)) ("
  , "  struct zwlr_layer_shell_v1 *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_output *arg3,"
  , "  uint32_t arg4,"
  , "  char const *arg5"
  , ")"
  , "{"
  , "  return &zwlr_layer_shell_v1_get_layer_surface;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8998ccdb4064d4ab (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  struct zwlr_layer_surface_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0a2a4f5f54d2be05 (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_d620d6dc34b94092 (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_87f994b4296ab713 (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_size */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c18f0a100b2ee80e (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_set_size;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_anchor */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_377358efb4d48813 (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_set_anchor;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_exclusive_zone */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fcc2ff9ea2c3bf98 (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_set_exclusive_zone;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_margin */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_27ffd374dad7713a (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4,"
  , "  int32_t arg5"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_set_margin;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_keyboard_interactivity */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f01671beccc3bcb2 (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_set_keyboard_interactivity;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_popup */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_cca853ab7e5998ce (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  struct xdg_popup *arg2"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_get_popup;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_ack_configure */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6a9384394026fc6a (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_ack_configure;"
  , "}"
  , "/* Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bcaf2384438728ec (void)) ("
  , "  struct zwlr_layer_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_layer_surface_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_81a83742cf718340" hs_bindgen_81a83742cf718340_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_set_user_data@
hs_bindgen_81a83742cf718340 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_81a83742cf718340 =
  RIP.fromFFIType hs_bindgen_81a83742cf718340_base

{-# NOINLINE zwlr_layer_shell_v1_set_user_data #-}
{-|

  > iface_zwlr_layer_shell_v1

__C declaration:__ @zwlr_layer_shell_v1_set_user_data@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 160:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_layer_shell_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_81a83742cf718340

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_bd3f858beb8ba03a" hs_bindgen_bd3f858beb8ba03a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_user_data@
hs_bindgen_bd3f858beb8ba03a :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_bd3f858beb8ba03a =
  RIP.fromFFIType hs_bindgen_bd3f858beb8ba03a_base

{-# NOINLINE zwlr_layer_shell_v1_get_user_data #-}
{-|

  > iface_zwlr_layer_shell_v1

__C declaration:__ @zwlr_layer_shell_v1_get_user_data@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 167:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_layer_shell_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_bd3f858beb8ba03a

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_b09d6539f1c3ee21" hs_bindgen_b09d6539f1c3ee21_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_version@
hs_bindgen_b09d6539f1c3ee21 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_b09d6539f1c3ee21 =
  RIP.fromFFIType hs_bindgen_b09d6539f1c3ee21_base

{-# NOINLINE zwlr_layer_shell_v1_get_version #-}
{-| __C declaration:__ @zwlr_layer_shell_v1_get_version@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 173:1@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_layer_shell_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_b09d6539f1c3ee21

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_ac55b3c964cbafc1" hs_bindgen_ac55b3c964cbafc1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_destroy@
hs_bindgen_ac55b3c964cbafc1 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> IO ()))
hs_bindgen_ac55b3c964cbafc1 =
  RIP.fromFFIType hs_bindgen_ac55b3c964cbafc1_base

{-# NOINLINE zwlr_layer_shell_v1_destroy #-}
{-|

  > iface_zwlr_layer_shell_v1

__C declaration:__ @zwlr_layer_shell_v1_destroy@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 180:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_shell_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> IO ())
zwlr_layer_shell_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_ac55b3c964cbafc1

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_layer_surface@
foreign import ccall unsafe "hs_bindgen_199e35be909f668f" hs_bindgen_199e35be909f668f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_shell_v1_get_layer_surface@
hs_bindgen_199e35be909f668f :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Zwlr_layer_surface_v1)))
hs_bindgen_199e35be909f668f =
  RIP.fromFFIType hs_bindgen_199e35be909f668f_base

{-# NOINLINE zwlr_layer_shell_v1_get_layer_surface #-}
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
zwlr_layer_shell_v1_get_layer_surface :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_shell_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO (RIP.Ptr Zwlr_layer_surface_v1))
zwlr_layer_shell_v1_get_layer_surface =
  RIP.unsafePerformIO hs_bindgen_199e35be909f668f

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_8998ccdb4064d4ab" hs_bindgen_8998ccdb4064d4ab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_add_listener@
hs_bindgen_8998ccdb4064d4ab :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> (PtrConst.PtrConst Zwlr_layer_surface_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_8998ccdb4064d4ab =
  RIP.fromFFIType hs_bindgen_8998ccdb4064d4ab_base

{-# NOINLINE zwlr_layer_surface_v1_add_listener #-}
{-|

  > iface_zwlr_layer_surface_v1

__C declaration:__ @zwlr_layer_surface_v1_add_listener@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 308:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> (PtrConst.PtrConst Zwlr_layer_surface_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwlr_layer_surface_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_8998ccdb4064d4ab

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_0a2a4f5f54d2be05" hs_bindgen_0a2a4f5f54d2be05_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_user_data@
hs_bindgen_0a2a4f5f54d2be05 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_0a2a4f5f54d2be05 =
  RIP.fromFFIType hs_bindgen_0a2a4f5f54d2be05_base

{-# NOINLINE zwlr_layer_surface_v1_set_user_data #-}
{-|

  > iface_zwlr_layer_surface_v1

__C declaration:__ @zwlr_layer_surface_v1_set_user_data@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 368:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_layer_surface_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_0a2a4f5f54d2be05

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_d620d6dc34b94092" hs_bindgen_d620d6dc34b94092_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_user_data@
hs_bindgen_d620d6dc34b94092 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_d620d6dc34b94092 =
  RIP.fromFFIType hs_bindgen_d620d6dc34b94092_base

{-# NOINLINE zwlr_layer_surface_v1_get_user_data #-}
{-|

  > iface_zwlr_layer_surface_v1

__C declaration:__ @zwlr_layer_surface_v1_get_user_data@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 375:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_layer_surface_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_d620d6dc34b94092

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_version@
foreign import ccall unsafe "hs_bindgen_87f994b4296ab713" hs_bindgen_87f994b4296ab713_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_version@
hs_bindgen_87f994b4296ab713 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_87f994b4296ab713 =
  RIP.fromFFIType hs_bindgen_87f994b4296ab713_base

{-# NOINLINE zwlr_layer_surface_v1_get_version #-}
{-| __C declaration:__ @zwlr_layer_surface_v1_get_version@

    __defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 381:1@

    __exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_layer_surface_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_87f994b4296ab713

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_size@
foreign import ccall unsafe "hs_bindgen_c18f0a100b2ee80e" hs_bindgen_c18f0a100b2ee80e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_size@
hs_bindgen_c18f0a100b2ee80e :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_c18f0a100b2ee80e =
  RIP.fromFFIType hs_bindgen_c18f0a100b2ee80e_base

{-# NOINLINE zwlr_layer_surface_v1_set_size #-}
{-|

  > iface_zwlr_layer_surface_v1

  Sets the size of the surface in surface-local coordinates. The compositor will display the surface centered with respect to its anchors.

  If you pass 0 for either value, the compositor will assign it and inform you of the assignment in the configure event. You must set your anchor to opposite edges in the dimensions you omit; not doing so is a protocol error. Both values are 0 by default.

  Size is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_size@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 401:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_size :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
zwlr_layer_surface_v1_set_size =
  RIP.unsafePerformIO hs_bindgen_c18f0a100b2ee80e

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_anchor@
foreign import ccall unsafe "hs_bindgen_377358efb4d48813" hs_bindgen_377358efb4d48813_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_anchor@
hs_bindgen_377358efb4d48813 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_377358efb4d48813 =
  RIP.fromFFIType hs_bindgen_377358efb4d48813_base

{-# NOINLINE zwlr_layer_surface_v1_set_anchor #-}
{-|

  > iface_zwlr_layer_surface_v1

  Requests that the compositor anchor the surface to the specified edges and corners. If two orthoginal edges are specified (e.g. 'top' and 'left'), then the anchor point will be the intersection of the edges (e.g. the top left corner of the output); otherwise the anchor point will be centered on that edge, or in the center if none is specified.

  Anchor is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_anchor@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 419:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_anchor :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
zwlr_layer_surface_v1_set_anchor =
  RIP.unsafePerformIO hs_bindgen_377358efb4d48813

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_exclusive_zone@
foreign import ccall unsafe "hs_bindgen_fcc2ff9ea2c3bf98" hs_bindgen_fcc2ff9ea2c3bf98_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_exclusive_zone@
hs_bindgen_fcc2ff9ea2c3bf98 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_fcc2ff9ea2c3bf98 =
  RIP.fromFFIType hs_bindgen_fcc2ff9ea2c3bf98_base

{-# NOINLINE zwlr_layer_surface_v1_set_exclusive_zone #-}
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
zwlr_layer_surface_v1_set_exclusive_zone :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
zwlr_layer_surface_v1_set_exclusive_zone =
  RIP.unsafePerformIO hs_bindgen_fcc2ff9ea2c3bf98

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_margin@
foreign import ccall unsafe "hs_bindgen_27ffd374dad7713a" hs_bindgen_27ffd374dad7713a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_margin@
hs_bindgen_27ffd374dad7713a :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_27ffd374dad7713a =
  RIP.fromFFIType hs_bindgen_27ffd374dad7713a_base

{-# NOINLINE zwlr_layer_surface_v1_set_margin #-}
{-|

  > iface_zwlr_layer_surface_v1

  Requests that the surface be placed some distance away from the anchor point on the output, in surface-local coordinates. Setting this value for edges you are not anchored to has no effect.

  The exclusive zone includes the margin.

  Margin is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_margin@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 475:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_margin :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
zwlr_layer_surface_v1_set_margin =
  RIP.unsafePerformIO hs_bindgen_27ffd374dad7713a

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_keyboard_interactivity@
foreign import ccall unsafe "hs_bindgen_f01671beccc3bcb2" hs_bindgen_f01671beccc3bcb2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_set_keyboard_interactivity@
hs_bindgen_f01671beccc3bcb2 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_f01671beccc3bcb2 =
  RIP.fromFFIType hs_bindgen_f01671beccc3bcb2_base

{-# NOINLINE zwlr_layer_surface_v1_set_keyboard_interactivity #-}
{-|

  > iface_zwlr_layer_surface_v1

  Set to 1 to request that the seat send keyboard events to this layer surface. For layers below the shell surface layer, the seat will use normal focus semantics. For layers above the shell surface layers, the seat will always give exclusive keyboard focus to the top-most layer which has keyboard interactivity set to true.

  Layer surfaces receive pointer, touch, and tablet events normally. If you do not want to receive them, set the input region on your surface to an empty region.

  Events is double-buffered, see wl_surface.commit.

__C declaration:__ @zwlr_layer_surface_v1_set_keyboard_interactivity@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 497:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_set_keyboard_interactivity :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
zwlr_layer_surface_v1_set_keyboard_interactivity =
  RIP.unsafePerformIO hs_bindgen_f01671beccc3bcb2

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_popup@
foreign import ccall unsafe "hs_bindgen_cca853ab7e5998ce" hs_bindgen_cca853ab7e5998ce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_get_popup@
hs_bindgen_cca853ab7e5998ce :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> (RIP.Ptr Xdg_popup) -> IO ()))
hs_bindgen_cca853ab7e5998ce =
  RIP.fromFFIType hs_bindgen_cca853ab7e5998ce_base

{-# NOINLINE zwlr_layer_surface_v1_get_popup #-}
{-|

  > iface_zwlr_layer_surface_v1

  This assigns an xdg_popup's parent to this layer_surface.  This popup should have been created via xdg_surface::get_popup with the parent set to NULL, and this request must be invoked before committing the popup's initial state.

  See the documentation of xdg_popup for more details about what an xdg_popup is and how it is used.

__C declaration:__ @zwlr_layer_surface_v1_get_popup@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 515:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_get_popup :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> (RIP.Ptr Xdg_popup) -> IO ())
zwlr_layer_surface_v1_get_popup =
  RIP.unsafePerformIO hs_bindgen_cca853ab7e5998ce

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_ack_configure@
foreign import ccall unsafe "hs_bindgen_6a9384394026fc6a" hs_bindgen_6a9384394026fc6a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_ack_configure@
hs_bindgen_6a9384394026fc6a :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_6a9384394026fc6a =
  RIP.fromFFIType hs_bindgen_6a9384394026fc6a_base

{-# NOINLINE zwlr_layer_surface_v1_ack_configure #-}
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
zwlr_layer_surface_v1_ack_configure :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
zwlr_layer_surface_v1_ack_configure =
  RIP.unsafePerformIO hs_bindgen_6a9384394026fc6a

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_destroy@
foreign import ccall unsafe "hs_bindgen_bcaf2384438728ec" hs_bindgen_bcaf2384438728ec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrLayerShellUnstableV1_Generated_Bindings.Wayland.WlrLayerShellUnstableV1.Generated_get_zwlr_layer_surface_v1_destroy@
hs_bindgen_bcaf2384438728ec :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> IO ()))
hs_bindgen_bcaf2384438728ec =
  RIP.fromFFIType hs_bindgen_bcaf2384438728ec_base

{-# NOINLINE zwlr_layer_surface_v1_destroy #-}
{-|

  > iface_zwlr_layer_surface_v1

  This request destroys the layer surface.

__C declaration:__ @zwlr_layer_surface_v1_destroy@

__defined at:__ @wlr-layer-shell-unstable-v1-client-protocol.h 553:1@

__exported by:__ @wlr-layer-shell-unstable-v1-client-protocol.h@
-}
zwlr_layer_surface_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_layer_surface_v1) -> IO ())
zwlr_layer_surface_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_bcaf2384438728ec

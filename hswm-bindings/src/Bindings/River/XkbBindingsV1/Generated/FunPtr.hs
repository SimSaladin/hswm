{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.XkbBindingsV1.Generated.FunPtr
    ( Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_v1_get_xkb_binding
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_v1_get_seat
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_binding_v1_add_listener
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_binding_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_binding_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_binding_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_binding_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_binding_v1_set_layout_override
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_binding_v1_enable
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_binding_v1_disable
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_seat_v1_add_listener
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_seat_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_seat_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_seat_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_seat_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_seat_v1_ensure_next_key_eaten
    , Bindings.River.XkbBindingsV1.Generated.FunPtr.river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten
    )
  where

import qualified Bindings.River.WindowManagementV1.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.XkbBindingsV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fcb807635ea1c2e6 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_627f5c35949c1ceb (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_64ac27d9b469abfe (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_version;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a0a7db5523408c3d (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_destroy;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_xkb_binding */"
  , "__attribute__ ((const))"
  , "struct river_xkb_binding_v1 *(*hs_bindgen_1a195c7f28de38a2 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_xkb_binding;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_seat */"
  , "__attribute__ ((const))"
  , "struct river_xkb_bindings_seat_v1 *(*hs_bindgen_abf791f4aaaf5d4e (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_seat;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_921d60365e68e328 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  struct river_xkb_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_add_listener;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_35d284ca8b0469a1 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_34831eee0b9920c0 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_06dcc7402cc8954c (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_get_version;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_46b5b9c45cdae175 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_destroy;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_set_layout_override */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1bcbb6d0a8bf881a (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_set_layout_override;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ee4b047827f21f82 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_enable;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_948e10bda6c5fd08 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_disable;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_265ca80b7ef60ecb (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  struct river_xkb_bindings_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_add_listener;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_147ed05ee17706e5 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_6972124b6304f216 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_81355bad162b3e7c (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_get_version;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_50acc48f6a1fa16c (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_destroy;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_40fc97b247664932 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_ensure_next_key_eaten;"
  , "}"
  , "/* Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_50db6b421855459d (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_fcb807635ea1c2e6" hs_bindgen_fcb807635ea1c2e6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_set_user_data@
hs_bindgen_fcb807635ea1c2e6 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_fcb807635ea1c2e6 =
  RIP.fromFFIType hs_bindgen_fcb807635ea1c2e6_base

{-# NOINLINE river_xkb_bindings_v1_set_user_data #-}
{-|

  > iface_river_xkb_bindings_v1

__C declaration:__ @river_xkb_bindings_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 186:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_bindings_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_fcb807635ea1c2e6

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_627f5c35949c1ceb" hs_bindgen_627f5c35949c1ceb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_user_data@
hs_bindgen_627f5c35949c1ceb :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_627f5c35949c1ceb =
  RIP.fromFFIType hs_bindgen_627f5c35949c1ceb_base

{-# NOINLINE river_xkb_bindings_v1_get_user_data #-}
{-|

  > iface_river_xkb_bindings_v1

__C declaration:__ @river_xkb_bindings_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 193:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_bindings_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_627f5c35949c1ceb

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_version@
foreign import ccall unsafe "hs_bindgen_64ac27d9b469abfe" hs_bindgen_64ac27d9b469abfe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_version@
hs_bindgen_64ac27d9b469abfe :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_64ac27d9b469abfe =
  RIP.fromFFIType hs_bindgen_64ac27d9b469abfe_base

{-# NOINLINE river_xkb_bindings_v1_get_version #-}
{-| __C declaration:__ @river_xkb_bindings_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 199:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_bindings_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_64ac27d9b469abfe

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a0a7db5523408c3d" hs_bindgen_a0a7db5523408c3d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_destroy@
hs_bindgen_a0a7db5523408c3d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO ()))
hs_bindgen_a0a7db5523408c3d =
  RIP.fromFFIType hs_bindgen_a0a7db5523408c3d_base

{-# NOINLINE river_xkb_bindings_v1_destroy #-}
{-|

  > iface_river_xkb_bindings_v1

  This request indicates that the client will no longer use the river_xkb_bindings_v1 object.

__C declaration:__ @river_xkb_bindings_v1_destroy@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 211:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO ())
river_xkb_bindings_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_a0a7db5523408c3d

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_xkb_binding@
foreign import ccall unsafe "hs_bindgen_1a195c7f28de38a2" hs_bindgen_1a195c7f28de38a2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_xkb_binding@
hs_bindgen_1a195c7f28de38a2 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_binding_v1)))
hs_bindgen_1a195c7f28de38a2 =
  RIP.fromFFIType hs_bindgen_1a195c7f28de38a2_base

{-# NOINLINE river_xkb_bindings_v1_get_xkb_binding #-}
{-|

  > iface_river_xkb_bindings_v1

  Define a key binding for the given seat in terms of an xkbcommon keysym and other configurable properties.

  The new key binding is not enabled until initial configuration is completed and the enable request is made during a manage sequence.

__C declaration:__ @river_xkb_bindings_v1_get_xkb_binding@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 227:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_xkb_binding :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_binding_v1))
river_xkb_bindings_v1_get_xkb_binding =
  RIP.unsafePerformIO hs_bindgen_1a195c7f28de38a2

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_abf791f4aaaf5d4e" hs_bindgen_abf791f4aaaf5d4e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_v1_get_seat@
hs_bindgen_abf791f4aaaf5d4e :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1) -> IO (RIP.Ptr River_xkb_bindings_seat_v1)))
hs_bindgen_abf791f4aaaf5d4e =
  RIP.fromFFIType hs_bindgen_abf791f4aaaf5d4e_base

{-# NOINLINE river_xkb_bindings_v1_get_seat #-}
{-|

  > iface_river_xkb_bindings_v1

  Create an object to manage seat-specific xkb bindings state.

  It is a protocol error to make this request more than once for a given river_seat_v1 object.

__C declaration:__ @river_xkb_bindings_v1_get_seat@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 246:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_seat :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1) -> IO (RIP.Ptr River_xkb_bindings_seat_v1))
river_xkb_bindings_v1_get_seat =
  RIP.unsafePerformIO hs_bindgen_abf791f4aaaf5d4e

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_921d60365e68e328" hs_bindgen_921d60365e68e328_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_add_listener@
hs_bindgen_921d60365e68e328 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (PtrConst.PtrConst River_xkb_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_921d60365e68e328 =
  RIP.fromFFIType hs_bindgen_921d60365e68e328_base

{-# NOINLINE river_xkb_binding_v1_add_listener #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_add_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 328:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (PtrConst.PtrConst River_xkb_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_binding_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_921d60365e68e328

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_35d284ca8b0469a1" hs_bindgen_35d284ca8b0469a1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_set_user_data@
hs_bindgen_35d284ca8b0469a1 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_35d284ca8b0469a1 =
  RIP.fromFFIType hs_bindgen_35d284ca8b0469a1_base

{-# NOINLINE river_xkb_binding_v1_set_user_data #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 372:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_binding_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_35d284ca8b0469a1

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_34831eee0b9920c0" hs_bindgen_34831eee0b9920c0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_get_user_data@
hs_bindgen_34831eee0b9920c0 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_34831eee0b9920c0 =
  RIP.fromFFIType hs_bindgen_34831eee0b9920c0_base

{-# NOINLINE river_xkb_binding_v1_get_user_data #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 379:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_binding_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_34831eee0b9920c0

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_06dcc7402cc8954c" hs_bindgen_06dcc7402cc8954c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_get_version@
hs_bindgen_06dcc7402cc8954c :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_06dcc7402cc8954c =
  RIP.fromFFIType hs_bindgen_06dcc7402cc8954c_base

{-# NOINLINE river_xkb_binding_v1_get_version #-}
{-| __C declaration:__ @river_xkb_binding_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 385:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_binding_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_06dcc7402cc8954c

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_46b5b9c45cdae175" hs_bindgen_46b5b9c45cdae175_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_destroy@
hs_bindgen_46b5b9c45cdae175 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_46b5b9c45cdae175 =
  RIP.fromFFIType hs_bindgen_46b5b9c45cdae175_base

{-# NOINLINE river_xkb_binding_v1_destroy #-}
{-|

  > iface_river_xkb_binding_v1

  This request indicates that the client will no longer use the xkb key binding object and that it may be safely destroyed.

__C declaration:__ @river_xkb_binding_v1_destroy@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 397:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ())
river_xkb_binding_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_46b5b9c45cdae175

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_set_layout_override@
foreign import ccall unsafe "hs_bindgen_1bcbb6d0a8bf881a" hs_bindgen_1bcbb6d0a8bf881a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_set_layout_override@
hs_bindgen_1bcbb6d0a8bf881a :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_1bcbb6d0a8bf881a =
  RIP.fromFFIType hs_bindgen_1bcbb6d0a8bf881a_base

{-# NOINLINE river_xkb_binding_v1_set_layout_override #-}
{-|

  > iface_river_xkb_binding_v1

  Specify an xkb layout that should be used to translate key events for the purpose of triggering this key binding irrespective of the currently active xkb layout.

  The layout argument is a 0-indexed xkbcommon layout number for the keyboard that generated the key event.

  If this request is never made, the currently active xkb layout of the keyboard that generated the key event will be used.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_binding_v1_set_layout_override@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 420:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_set_layout_override :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
river_xkb_binding_v1_set_layout_override =
  RIP.unsafePerformIO hs_bindgen_1bcbb6d0a8bf881a

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_ee4b047827f21f82" hs_bindgen_ee4b047827f21f82_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_enable@
hs_bindgen_ee4b047827f21f82 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_ee4b047827f21f82 =
  RIP.fromFFIType hs_bindgen_ee4b047827f21f82_base

{-# NOINLINE river_xkb_binding_v1_enable #-}
{-|

  > iface_river_xkb_binding_v1

  This request should be made after all initial configuration has been completed and the window manager wishes the key binding to be able to be triggered.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_binding_v1_enable@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 437:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_enable :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ())
river_xkb_binding_v1_enable =
  RIP.unsafePerformIO hs_bindgen_ee4b047827f21f82

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_948e10bda6c5fd08" hs_bindgen_948e10bda6c5fd08_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_binding_v1_disable@
hs_bindgen_948e10bda6c5fd08 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_948e10bda6c5fd08 =
  RIP.fromFFIType hs_bindgen_948e10bda6c5fd08_base

{-# NOINLINE river_xkb_binding_v1_disable #-}
{-|

  > iface_river_xkb_binding_v1

  This request may be used to temporarily disable the key binding. It may be later re-enabled with the enable request.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_binding_v1_disable@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 453:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_disable :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ())
river_xkb_binding_v1_disable =
  RIP.unsafePerformIO hs_bindgen_948e10bda6c5fd08

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_265ca80b7ef60ecb" hs_bindgen_265ca80b7ef60ecb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_add_listener@
hs_bindgen_265ca80b7ef60ecb :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (PtrConst.PtrConst River_xkb_bindings_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_265ca80b7ef60ecb =
  RIP.fromFFIType hs_bindgen_265ca80b7ef60ecb_base

{-# NOINLINE river_xkb_bindings_seat_v1_add_listener #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_add_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 482:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (PtrConst.PtrConst River_xkb_bindings_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_bindings_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_265ca80b7ef60ecb

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_147ed05ee17706e5" hs_bindgen_147ed05ee17706e5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_set_user_data@
hs_bindgen_147ed05ee17706e5 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_147ed05ee17706e5 =
  RIP.fromFFIType hs_bindgen_147ed05ee17706e5_base

{-# NOINLINE river_xkb_bindings_seat_v1_set_user_data #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 513:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_bindings_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_147ed05ee17706e5

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_6972124b6304f216" hs_bindgen_6972124b6304f216_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_get_user_data@
hs_bindgen_6972124b6304f216 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_6972124b6304f216 =
  RIP.fromFFIType hs_bindgen_6972124b6304f216_base

{-# NOINLINE river_xkb_bindings_seat_v1_get_user_data #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 520:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_bindings_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_6972124b6304f216

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_81355bad162b3e7c" hs_bindgen_81355bad162b3e7c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_get_version@
hs_bindgen_81355bad162b3e7c :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_81355bad162b3e7c =
  RIP.fromFFIType hs_bindgen_81355bad162b3e7c_base

{-# NOINLINE river_xkb_bindings_seat_v1_get_version #-}
{-| __C declaration:__ @river_xkb_bindings_seat_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 526:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_bindings_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_81355bad162b3e7c

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_50acc48f6a1fa16c" hs_bindgen_50acc48f6a1fa16c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_destroy@
hs_bindgen_50acc48f6a1fa16c :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_50acc48f6a1fa16c =
  RIP.fromFFIType hs_bindgen_50acc48f6a1fa16c_base

{-# NOINLINE river_xkb_bindings_seat_v1_destroy #-}
{-|

  > iface_river_xkb_bindings_seat_v1

  This request indicates that the client will no longer use the object and that it may be safely destroyed.

__C declaration:__ @river_xkb_bindings_seat_v1_destroy@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 538:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())
river_xkb_bindings_seat_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_50acc48f6a1fa16c

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_40fc97b247664932" hs_bindgen_40fc97b247664932_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
hs_bindgen_40fc97b247664932 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_40fc97b247664932 =
  RIP.fromFFIType hs_bindgen_40fc97b247664932_base

{-# NOINLINE river_xkb_bindings_seat_v1_ensure_next_key_eaten #-}
{-|

  > iface_river_xkb_bindings_seat_v1

  Ensure that the next non-modifier key press and corresponding release events for this seat are not sent to the currently focused surface.

  If the next non-modifier key press triggers a binding, the pressed/released events are sent to the river_xkb_binding_v1 object as usual.

  If the next non-modifier key press does not trigger a binding, the ate_unbound_key event is sent instead.

  Rationale: the window manager may wish to implement "chorded" keybindings where triggering a binding activates a "submap" with a different set of keybindings. Without a way to eat the next key press event, there is no good way for the window manager to know that it should error out and exit the submap when a key not bound in the submap is pressed.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_bindings_seat_v1_ensure_next_key_eaten@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 568:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_ensure_next_key_eaten :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())
river_xkb_bindings_seat_v1_ensure_next_key_eaten =
  RIP.unsafePerformIO hs_bindgen_40fc97b247664932

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_50db6b421855459d" hs_bindgen_50db6b421855459d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
hs_bindgen_50db6b421855459d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_50db6b421855459d =
  RIP.fromFFIType hs_bindgen_50db6b421855459d_base

{-# NOINLINE river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten #-}
{-|

  > iface_river_xkb_bindings_seat_v1

  This requests cancels the effect of the latest ensure_next_key_eaten request if no key has been eaten due to the request yet. This request has no effect if a key has already been eaten or no ensure_next_key_eaten was made.

  Rationale: the window manager may wish cancel an uncompleted "chorded" keybinding after a timeout of a few seconds. Note that since this timeout use-case requires the window manager to trigger a manage sequence with the river_window_manager_v1.manage_dirty request it is possible that the ate_unbound_key key event may be sent before the window manager has a chance to make the cancel_ensure_next_key_eaten request.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 593:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ())
river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten =
  RIP.unsafePerformIO hs_bindgen_50db6b421855459d

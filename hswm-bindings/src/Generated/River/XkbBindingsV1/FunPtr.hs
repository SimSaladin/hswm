{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.XkbBindingsV1.FunPtr
    ( Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_v1_set_user_data
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_v1_get_user_data
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_v1_get_version
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_v1_destroy
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_v1_get_xkb_binding
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_v1_get_seat
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_binding_v1_add_listener
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_binding_v1_set_user_data
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_binding_v1_get_user_data
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_binding_v1_get_version
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_binding_v1_destroy
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_binding_v1_set_layout_override
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_binding_v1_enable
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_binding_v1_disable
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_seat_v1_add_listener
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_seat_v1_set_user_data
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_seat_v1_get_user_data
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_seat_v1_get_version
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_seat_v1_destroy
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_seat_v1_ensure_next_key_eaten
    , Generated.River.XkbBindingsV1.FunPtr.river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.XkbBindingsV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8ed0c3cc485e0f1d (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_set_user_data;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_d78da282c602f046 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_user_data;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_36dd15130e0dda11 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_version;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f48828d4852be194 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_destroy;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_xkb_binding */"
  , "__attribute__ ((const))"
  , "struct river_xkb_binding_v1 *(*hs_bindgen_453b7a892e172fbd (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_xkb_binding;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_seat */"
  , "__attribute__ ((const))"
  , "struct river_xkb_bindings_seat_v1 *(*hs_bindgen_f17aefdee11343a8 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_seat;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c4c00bc46127caae (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  struct river_xkb_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_add_listener;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_390dec1f86d0de0e (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_set_user_data;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_12e72a228843a920 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_get_user_data;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ca0fc3ba2f2b4499 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_get_version;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1a08c74939f963a3 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_destroy;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_layout_override */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4306b812d0f28ca4 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_set_layout_override;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_96bfdb09ed48e965 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_enable;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4353089295280591 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_disable;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b05dba9feff76aa7 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  struct river_xkb_bindings_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_add_listener;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_240ec141392a9407 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_set_user_data;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_85bae1ca07d10414 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_get_user_data;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_23fd4e16b816ba19 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_get_version;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ac2e5f51044f4847 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_destroy;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ef015ccceb25ffad (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_ensure_next_key_eaten;"
  , "}"
  , "/* hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b74ada2f611700c1 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten;"
  , "}"
  ]))

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_8ed0c3cc485e0f1d" hs_bindgen_8ed0c3cc485e0f1d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_set_user_data@
hs_bindgen_8ed0c3cc485e0f1d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8ed0c3cc485e0f1d =
  RIP.fromFFIType hs_bindgen_8ed0c3cc485e0f1d_base

{-# NOINLINE river_xkb_bindings_v1_set_user_data #-}
{-|

  > iface_river_xkb_bindings_v1

__C declaration:__ @river_xkb_bindings_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 186:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_bindings_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8ed0c3cc485e0f1d

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_d78da282c602f046" hs_bindgen_d78da282c602f046_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_user_data@
hs_bindgen_d78da282c602f046 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_d78da282c602f046 =
  RIP.fromFFIType hs_bindgen_d78da282c602f046_base

{-# NOINLINE river_xkb_bindings_v1_get_user_data #-}
{-|

  > iface_river_xkb_bindings_v1

__C declaration:__ @river_xkb_bindings_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 193:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_bindings_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_d78da282c602f046

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_version@
foreign import ccall unsafe "hs_bindgen_36dd15130e0dda11" hs_bindgen_36dd15130e0dda11_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_version@
hs_bindgen_36dd15130e0dda11 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_36dd15130e0dda11 =
  RIP.fromFFIType hs_bindgen_36dd15130e0dda11_base

{-# NOINLINE river_xkb_bindings_v1_get_version #-}
{-| __C declaration:__ @river_xkb_bindings_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 199:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_bindings_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_36dd15130e0dda11

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_destroy@
foreign import ccall unsafe "hs_bindgen_f48828d4852be194" hs_bindgen_f48828d4852be194_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_destroy@
hs_bindgen_f48828d4852be194 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO ()))
hs_bindgen_f48828d4852be194 =
  RIP.fromFFIType hs_bindgen_f48828d4852be194_base

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
  RIP.unsafePerformIO hs_bindgen_f48828d4852be194

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_xkb_binding@
foreign import ccall unsafe "hs_bindgen_453b7a892e172fbd" hs_bindgen_453b7a892e172fbd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_xkb_binding@
hs_bindgen_453b7a892e172fbd :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_binding_v1)))
hs_bindgen_453b7a892e172fbd =
  RIP.fromFFIType hs_bindgen_453b7a892e172fbd_base

{-# NOINLINE river_xkb_bindings_v1_get_xkb_binding #-}
{-|

  > iface_river_xkb_bindings_v1

  Define a key binding for the given seat in terms of an xkbcommon keysym and other configurable properties.

  The new key binding is not enabled until initial configuration is completed and the enable request is made during a manage sequence.

__C declaration:__ @river_xkb_bindings_v1_get_xkb_binding@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 227:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_xkb_binding :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_binding_v1))
river_xkb_bindings_v1_get_xkb_binding =
  RIP.unsafePerformIO hs_bindgen_453b7a892e172fbd

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_f17aefdee11343a8" hs_bindgen_f17aefdee11343a8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_seat@
hs_bindgen_f17aefdee11343a8 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr River_seat_v1) -> IO (RIP.Ptr River_xkb_bindings_seat_v1)))
hs_bindgen_f17aefdee11343a8 =
  RIP.fromFFIType hs_bindgen_f17aefdee11343a8_base

{-# NOINLINE river_xkb_bindings_v1_get_seat #-}
{-|

  > iface_river_xkb_bindings_v1

  Create an object to manage seat-specific xkb bindings state.

  It is a protocol error to make this request more than once for a given river_seat_v1 object.

__C declaration:__ @river_xkb_bindings_v1_get_seat@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 246:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_seat :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr River_seat_v1) -> IO (RIP.Ptr River_xkb_bindings_seat_v1))
river_xkb_bindings_v1_get_seat =
  RIP.unsafePerformIO hs_bindgen_f17aefdee11343a8

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_c4c00bc46127caae" hs_bindgen_c4c00bc46127caae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_add_listener@
hs_bindgen_c4c00bc46127caae :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (PtrConst.PtrConst River_xkb_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_c4c00bc46127caae =
  RIP.fromFFIType hs_bindgen_c4c00bc46127caae_base

{-# NOINLINE river_xkb_binding_v1_add_listener #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_add_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 328:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (PtrConst.PtrConst River_xkb_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_binding_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_c4c00bc46127caae

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_390dec1f86d0de0e" hs_bindgen_390dec1f86d0de0e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_user_data@
hs_bindgen_390dec1f86d0de0e :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_390dec1f86d0de0e =
  RIP.fromFFIType hs_bindgen_390dec1f86d0de0e_base

{-# NOINLINE river_xkb_binding_v1_set_user_data #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 372:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_binding_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_390dec1f86d0de0e

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_12e72a228843a920" hs_bindgen_12e72a228843a920_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_user_data@
hs_bindgen_12e72a228843a920 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_12e72a228843a920 =
  RIP.fromFFIType hs_bindgen_12e72a228843a920_base

{-# NOINLINE river_xkb_binding_v1_get_user_data #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 379:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_binding_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_12e72a228843a920

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ca0fc3ba2f2b4499" hs_bindgen_ca0fc3ba2f2b4499_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_version@
hs_bindgen_ca0fc3ba2f2b4499 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ca0fc3ba2f2b4499 =
  RIP.fromFFIType hs_bindgen_ca0fc3ba2f2b4499_base

{-# NOINLINE river_xkb_binding_v1_get_version #-}
{-| __C declaration:__ @river_xkb_binding_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 385:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_binding_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_ca0fc3ba2f2b4499

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_1a08c74939f963a3" hs_bindgen_1a08c74939f963a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_destroy@
hs_bindgen_1a08c74939f963a3 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_1a08c74939f963a3 =
  RIP.fromFFIType hs_bindgen_1a08c74939f963a3_base

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
  RIP.unsafePerformIO hs_bindgen_1a08c74939f963a3

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_layout_override@
foreign import ccall unsafe "hs_bindgen_4306b812d0f28ca4" hs_bindgen_4306b812d0f28ca4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_layout_override@
hs_bindgen_4306b812d0f28ca4 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_4306b812d0f28ca4 =
  RIP.fromFFIType hs_bindgen_4306b812d0f28ca4_base

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
  RIP.unsafePerformIO hs_bindgen_4306b812d0f28ca4

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_96bfdb09ed48e965" hs_bindgen_96bfdb09ed48e965_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_enable@
hs_bindgen_96bfdb09ed48e965 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_96bfdb09ed48e965 =
  RIP.fromFFIType hs_bindgen_96bfdb09ed48e965_base

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
  RIP.unsafePerformIO hs_bindgen_96bfdb09ed48e965

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_4353089295280591" hs_bindgen_4353089295280591_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_disable@
hs_bindgen_4353089295280591 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_4353089295280591 =
  RIP.fromFFIType hs_bindgen_4353089295280591_base

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
  RIP.unsafePerformIO hs_bindgen_4353089295280591

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_b05dba9feff76aa7" hs_bindgen_b05dba9feff76aa7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_add_listener@
hs_bindgen_b05dba9feff76aa7 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (PtrConst.PtrConst River_xkb_bindings_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_b05dba9feff76aa7 =
  RIP.fromFFIType hs_bindgen_b05dba9feff76aa7_base

{-# NOINLINE river_xkb_bindings_seat_v1_add_listener #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_add_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 482:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (PtrConst.PtrConst River_xkb_bindings_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_bindings_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_b05dba9feff76aa7

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_240ec141392a9407" hs_bindgen_240ec141392a9407_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_set_user_data@
hs_bindgen_240ec141392a9407 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_240ec141392a9407 =
  RIP.fromFFIType hs_bindgen_240ec141392a9407_base

{-# NOINLINE river_xkb_bindings_seat_v1_set_user_data #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 513:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_bindings_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_240ec141392a9407

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_85bae1ca07d10414" hs_bindgen_85bae1ca07d10414_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_user_data@
hs_bindgen_85bae1ca07d10414 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_85bae1ca07d10414 =
  RIP.fromFFIType hs_bindgen_85bae1ca07d10414_base

{-# NOINLINE river_xkb_bindings_seat_v1_get_user_data #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 520:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_bindings_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_85bae1ca07d10414

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_23fd4e16b816ba19" hs_bindgen_23fd4e16b816ba19_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_version@
hs_bindgen_23fd4e16b816ba19 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_23fd4e16b816ba19 =
  RIP.fromFFIType hs_bindgen_23fd4e16b816ba19_base

{-# NOINLINE river_xkb_bindings_seat_v1_get_version #-}
{-| __C declaration:__ @river_xkb_bindings_seat_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 526:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_bindings_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_23fd4e16b816ba19

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_ac2e5f51044f4847" hs_bindgen_ac2e5f51044f4847_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_destroy@
hs_bindgen_ac2e5f51044f4847 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_ac2e5f51044f4847 =
  RIP.fromFFIType hs_bindgen_ac2e5f51044f4847_base

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
  RIP.unsafePerformIO hs_bindgen_ac2e5f51044f4847

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_ef015ccceb25ffad" hs_bindgen_ef015ccceb25ffad_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
hs_bindgen_ef015ccceb25ffad :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_ef015ccceb25ffad =
  RIP.fromFFIType hs_bindgen_ef015ccceb25ffad_base

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
  RIP.unsafePerformIO hs_bindgen_ef015ccceb25ffad

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_b74ada2f611700c1" hs_bindgen_b74ada2f611700c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
hs_bindgen_b74ada2f611700c1 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_b74ada2f611700c1 =
  RIP.fromFFIType hs_bindgen_b74ada2f611700c1_base

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
  RIP.unsafePerformIO hs_bindgen_b74ada2f611700c1

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

import qualified Generated.River.RiverWindowManagementV1
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.XkbBindingsV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c6f2b47b9e5b73e4 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_set_user_data;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_55b75ef4a5389e3d (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_user_data;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_bcca6857645c274d (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_version;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a4dde631e6557e70 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_destroy;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_xkb_binding */"
  , "__attribute__ ((const))"
  , "struct river_xkb_binding_v1 *(*hs_bindgen_886ebfbecd7b1b23 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_xkb_binding;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_seat */"
  , "__attribute__ ((const))"
  , "struct river_xkb_bindings_seat_v1 *(*hs_bindgen_b8862522236bff61 (void)) ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_v1_get_seat;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_24ddcefc66b7f260 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  struct river_xkb_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_add_listener;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8237aa1eed0509d6 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_set_user_data;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_fcc038eee5d841fc (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_get_user_data;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8142b930254ddc9d (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_get_version;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_60226f022dee6bf4 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_destroy;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_layout_override */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_77ff28d19c84b1d5 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_set_layout_override;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_243acdafc04ba9b1 (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_enable;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a5c5e28ef83730ed (void)) ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_binding_v1_disable;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ba3d9832e0621a83 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  struct river_xkb_bindings_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_add_listener;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1de70b9985b710d6 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_set_user_data;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_ed59e5b65178cd62 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_get_user_data;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_a25d956b598364f8 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_get_version;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_95cc977c468202bf (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_destroy;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ece2a9621097f6f5 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_ensure_next_key_eaten;"
  , "}"
  , "/* River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ddc5bbc8d1d75d54 (void)) ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten;"
  , "}"
  ]))

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_c6f2b47b9e5b73e4" hs_bindgen_c6f2b47b9e5b73e4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_set_user_data@
hs_bindgen_c6f2b47b9e5b73e4 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_c6f2b47b9e5b73e4 =
  RIP.fromFFIType hs_bindgen_c6f2b47b9e5b73e4_base

{-# NOINLINE river_xkb_bindings_v1_set_user_data #-}
{-|

  > iface_river_xkb_bindings_v1

__C declaration:__ @river_xkb_bindings_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 186:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_bindings_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_c6f2b47b9e5b73e4

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_55b75ef4a5389e3d" hs_bindgen_55b75ef4a5389e3d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_user_data@
hs_bindgen_55b75ef4a5389e3d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_55b75ef4a5389e3d =
  RIP.fromFFIType hs_bindgen_55b75ef4a5389e3d_base

{-# NOINLINE river_xkb_bindings_v1_get_user_data #-}
{-|

  > iface_river_xkb_bindings_v1

__C declaration:__ @river_xkb_bindings_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 193:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_bindings_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_55b75ef4a5389e3d

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_version@
foreign import ccall unsafe "hs_bindgen_bcca6857645c274d" hs_bindgen_bcca6857645c274d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_version@
hs_bindgen_bcca6857645c274d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_bcca6857645c274d =
  RIP.fromFFIType hs_bindgen_bcca6857645c274d_base

{-# NOINLINE river_xkb_bindings_v1_get_version #-}
{-| __C declaration:__ @river_xkb_bindings_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 199:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_bindings_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_bcca6857645c274d

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a4dde631e6557e70" hs_bindgen_a4dde631e6557e70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_destroy@
hs_bindgen_a4dde631e6557e70 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> IO ()))
hs_bindgen_a4dde631e6557e70 =
  RIP.fromFFIType hs_bindgen_a4dde631e6557e70_base

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
  RIP.unsafePerformIO hs_bindgen_a4dde631e6557e70

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_xkb_binding@
foreign import ccall unsafe "hs_bindgen_886ebfbecd7b1b23" hs_bindgen_886ebfbecd7b1b23_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_xkb_binding@
hs_bindgen_886ebfbecd7b1b23 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr Generated.River.RiverWindowManagementV1.River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_binding_v1)))
hs_bindgen_886ebfbecd7b1b23 =
  RIP.fromFFIType hs_bindgen_886ebfbecd7b1b23_base

{-# NOINLINE river_xkb_bindings_v1_get_xkb_binding #-}
{-|

  > iface_river_xkb_bindings_v1

  Define a key binding for the given seat in terms of an xkbcommon keysym and other configurable properties.

  The new key binding is not enabled until initial configuration is completed and the enable request is made during a manage sequence.

__C declaration:__ @river_xkb_bindings_v1_get_xkb_binding@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 227:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_xkb_binding :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr Generated.River.RiverWindowManagementV1.River_seat_v1) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_binding_v1))
river_xkb_bindings_v1_get_xkb_binding =
  RIP.unsafePerformIO hs_bindgen_886ebfbecd7b1b23

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_b8862522236bff61" hs_bindgen_b8862522236bff61_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_v1_get_seat@
hs_bindgen_b8862522236bff61 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr Generated.River.RiverWindowManagementV1.River_seat_v1) -> IO (RIP.Ptr River_xkb_bindings_seat_v1)))
hs_bindgen_b8862522236bff61 =
  RIP.fromFFIType hs_bindgen_b8862522236bff61_base

{-# NOINLINE river_xkb_bindings_v1_get_seat #-}
{-|

  > iface_river_xkb_bindings_v1

  Create an object to manage seat-specific xkb bindings state.

  It is a protocol error to make this request more than once for a given river_seat_v1 object.

__C declaration:__ @river_xkb_bindings_v1_get_seat@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 246:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_seat :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_v1) -> (RIP.Ptr Generated.River.RiverWindowManagementV1.River_seat_v1) -> IO (RIP.Ptr River_xkb_bindings_seat_v1))
river_xkb_bindings_v1_get_seat =
  RIP.unsafePerformIO hs_bindgen_b8862522236bff61

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_24ddcefc66b7f260" hs_bindgen_24ddcefc66b7f260_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_add_listener@
hs_bindgen_24ddcefc66b7f260 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (PtrConst.PtrConst River_xkb_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_24ddcefc66b7f260 =
  RIP.fromFFIType hs_bindgen_24ddcefc66b7f260_base

{-# NOINLINE river_xkb_binding_v1_add_listener #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_add_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 328:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (PtrConst.PtrConst River_xkb_binding_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_binding_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_24ddcefc66b7f260

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_8237aa1eed0509d6" hs_bindgen_8237aa1eed0509d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_user_data@
hs_bindgen_8237aa1eed0509d6 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8237aa1eed0509d6 =
  RIP.fromFFIType hs_bindgen_8237aa1eed0509d6_base

{-# NOINLINE river_xkb_binding_v1_set_user_data #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 372:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_binding_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8237aa1eed0509d6

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_fcc038eee5d841fc" hs_bindgen_fcc038eee5d841fc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_user_data@
hs_bindgen_fcc038eee5d841fc :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_fcc038eee5d841fc =
  RIP.fromFFIType hs_bindgen_fcc038eee5d841fc_base

{-# NOINLINE river_xkb_binding_v1_get_user_data #-}
{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 379:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_binding_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_fcc038eee5d841fc

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8142b930254ddc9d" hs_bindgen_8142b930254ddc9d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_get_version@
hs_bindgen_8142b930254ddc9d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8142b930254ddc9d =
  RIP.fromFFIType hs_bindgen_8142b930254ddc9d_base

{-# NOINLINE river_xkb_binding_v1_get_version #-}
{-| __C declaration:__ @river_xkb_binding_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 385:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_binding_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_8142b930254ddc9d

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_60226f022dee6bf4" hs_bindgen_60226f022dee6bf4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_destroy@
hs_bindgen_60226f022dee6bf4 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_60226f022dee6bf4 =
  RIP.fromFFIType hs_bindgen_60226f022dee6bf4_base

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
  RIP.unsafePerformIO hs_bindgen_60226f022dee6bf4

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_layout_override@
foreign import ccall unsafe "hs_bindgen_77ff28d19c84b1d5" hs_bindgen_77ff28d19c84b1d5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_set_layout_override@
hs_bindgen_77ff28d19c84b1d5 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_77ff28d19c84b1d5 =
  RIP.fromFFIType hs_bindgen_77ff28d19c84b1d5_base

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
  RIP.unsafePerformIO hs_bindgen_77ff28d19c84b1d5

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_243acdafc04ba9b1" hs_bindgen_243acdafc04ba9b1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_enable@
hs_bindgen_243acdafc04ba9b1 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_243acdafc04ba9b1 =
  RIP.fromFFIType hs_bindgen_243acdafc04ba9b1_base

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
  RIP.unsafePerformIO hs_bindgen_243acdafc04ba9b1

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_a5c5e28ef83730ed" hs_bindgen_a5c5e28ef83730ed_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_binding_v1_disable@
hs_bindgen_a5c5e28ef83730ed :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_binding_v1) -> IO ()))
hs_bindgen_a5c5e28ef83730ed =
  RIP.fromFFIType hs_bindgen_a5c5e28ef83730ed_base

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
  RIP.unsafePerformIO hs_bindgen_a5c5e28ef83730ed

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_ba3d9832e0621a83" hs_bindgen_ba3d9832e0621a83_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_add_listener@
hs_bindgen_ba3d9832e0621a83 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (PtrConst.PtrConst River_xkb_bindings_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_ba3d9832e0621a83 =
  RIP.fromFFIType hs_bindgen_ba3d9832e0621a83_base

{-# NOINLINE river_xkb_bindings_seat_v1_add_listener #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_add_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 482:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (PtrConst.PtrConst River_xkb_bindings_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_bindings_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_ba3d9832e0621a83

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_1de70b9985b710d6" hs_bindgen_1de70b9985b710d6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_set_user_data@
hs_bindgen_1de70b9985b710d6 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_1de70b9985b710d6 =
  RIP.fromFFIType hs_bindgen_1de70b9985b710d6_base

{-# NOINLINE river_xkb_bindings_seat_v1_set_user_data #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 513:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_bindings_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_1de70b9985b710d6

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ed59e5b65178cd62" hs_bindgen_ed59e5b65178cd62_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_user_data@
hs_bindgen_ed59e5b65178cd62 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_ed59e5b65178cd62 =
  RIP.fromFFIType hs_bindgen_ed59e5b65178cd62_base

{-# NOINLINE river_xkb_bindings_seat_v1_get_user_data #-}
{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 520:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_bindings_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_ed59e5b65178cd62

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_a25d956b598364f8" hs_bindgen_a25d956b598364f8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_get_version@
hs_bindgen_a25d956b598364f8 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_a25d956b598364f8 =
  RIP.fromFFIType hs_bindgen_a25d956b598364f8_base

{-# NOINLINE river_xkb_bindings_seat_v1_get_version #-}
{-| __C declaration:__ @river_xkb_bindings_seat_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 526:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_bindings_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_a25d956b598364f8

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_95cc977c468202bf" hs_bindgen_95cc977c468202bf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_destroy@
hs_bindgen_95cc977c468202bf :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_95cc977c468202bf =
  RIP.fromFFIType hs_bindgen_95cc977c468202bf_base

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
  RIP.unsafePerformIO hs_bindgen_95cc977c468202bf

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_ece2a9621097f6f5" hs_bindgen_ece2a9621097f6f5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
hs_bindgen_ece2a9621097f6f5 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_ece2a9621097f6f5 =
  RIP.fromFFIType hs_bindgen_ece2a9621097f6f5_base

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
  RIP.unsafePerformIO hs_bindgen_ece2a9621097f6f5

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_ddc5bbc8d1d75d54" hs_bindgen_ddc5bbc8d1d75d54_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_get_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
hs_bindgen_ddc5bbc8d1d75d54 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_bindings_seat_v1) -> IO ()))
hs_bindgen_ddc5bbc8d1d75d54 =
  RIP.fromFFIType hs_bindgen_ddc5bbc8d1d75d54_base

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
  RIP.unsafePerformIO hs_bindgen_ddc5bbc8d1d75d54

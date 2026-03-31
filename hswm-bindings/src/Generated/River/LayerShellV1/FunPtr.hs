{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LayerShellV1.FunPtr
    ( Generated.River.LayerShellV1.FunPtr.river_layer_shell_v1_set_user_data
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_v1_get_user_data
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_v1_get_version
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_v1_destroy
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_v1_get_output
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_v1_get_seat
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_output_v1_add_listener
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_output_v1_set_user_data
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_output_v1_get_user_data
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_output_v1_get_version
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_output_v1_destroy
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_output_v1_set_default
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_seat_v1_add_listener
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_seat_v1_set_user_data
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_seat_v1_get_user_data
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_seat_v1_get_version
    , Generated.River.LayerShellV1.FunPtr.river_layer_shell_seat_v1_destroy
    )
  where

import qualified Generated.River.WindowManagementV1
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.LayerShellV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-layer-shell-v1-client-protocol.h>"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f47041d872e5b115 (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_set_user_data;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_65d5300f1622295d (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_user_data;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ab73e77fabbeeec7 (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_version;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d7bea33cd238d43c (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_destroy;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_output */"
  , "__attribute__ ((const))"
  , "struct river_layer_shell_output_v1 *(*hs_bindgen_f14861b966f28e0b (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_output;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_seat */"
  , "__attribute__ ((const))"
  , "struct river_layer_shell_seat_v1 *(*hs_bindgen_f3b82098a84f59f1 (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_seat;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9fe68c6ce3688758 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_add_listener;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b9e5a4d54dbae324 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_set_user_data;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_fdf973bf33bc63cb (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_get_user_data;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ebbf70fd39a19944 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_get_version;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0cfe0ff5e88d3362 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_destroy;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_set_default */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fa8553ecafd2326c (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_set_default;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_11f9a5bd9db306d5 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_add_listener;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c4e78a8cc5b7786f (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_set_user_data;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_fb35f323be185a42 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_get_user_data;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_71b9400fa8807254 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_get_version;"
  , "}"
  , "/* River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6c333e41624715c8 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_f47041d872e5b115" hs_bindgen_f47041d872e5b115_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_set_user_data@
hs_bindgen_f47041d872e5b115 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f47041d872e5b115 =
  RIP.fromFFIType hs_bindgen_f47041d872e5b115_base

{-# NOINLINE river_layer_shell_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 164:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f47041d872e5b115

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_65d5300f1622295d" hs_bindgen_65d5300f1622295d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_user_data@
hs_bindgen_65d5300f1622295d :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_65d5300f1622295d =
  RIP.fromFFIType hs_bindgen_65d5300f1622295d_base

{-# NOINLINE river_layer_shell_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 171:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_65d5300f1622295d

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ab73e77fabbeeec7" hs_bindgen_ab73e77fabbeeec7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_version@
hs_bindgen_ab73e77fabbeeec7 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ab73e77fabbeeec7 =
  RIP.fromFFIType hs_bindgen_ab73e77fabbeeec7_base

{-# NOINLINE river_layer_shell_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_ab73e77fabbeeec7

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_d7bea33cd238d43c" hs_bindgen_d7bea33cd238d43c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_destroy@
hs_bindgen_d7bea33cd238d43c :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO ()))
hs_bindgen_d7bea33cd238d43c =
  RIP.fromFFIType hs_bindgen_d7bea33cd238d43c_base

{-# NOINLINE river_layer_shell_v1_destroy #-}
{-|

  > iface_river_layer_shell_v1

  This request indicates that the client will no longer use the river_layer_shell_v1 object.

__C declaration:__ @river_layer_shell_v1_destroy@

__defined at:__ @river-layer-shell-v1-client-protocol.h 189:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO ())
river_layer_shell_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_d7bea33cd238d43c

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_output@
foreign import ccall unsafe "hs_bindgen_f14861b966f28e0b" hs_bindgen_f14861b966f28e0b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_output@
hs_bindgen_f14861b966f28e0b :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr Generated.River.WindowManagementV1.River_output_v1) -> IO (RIP.Ptr River_layer_shell_output_v1)))
hs_bindgen_f14861b966f28e0b =
  RIP.fromFFIType hs_bindgen_f14861b966f28e0b_base

{-# NOINLINE river_layer_shell_v1_get_output #-}
{-|

  > iface_river_layer_shell_v1

  It is a protocol error to make this request more than once for a given river_output_v1 object.

__C declaration:__ @river_layer_shell_v1_get_output@

__defined at:__ @river-layer-shell-v1-client-protocol.h 202:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_output :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr Generated.River.WindowManagementV1.River_output_v1) -> IO (RIP.Ptr River_layer_shell_output_v1))
river_layer_shell_v1_get_output =
  RIP.unsafePerformIO hs_bindgen_f14861b966f28e0b

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_f3b82098a84f59f1" hs_bindgen_f3b82098a84f59f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_v1_get_seat@
hs_bindgen_f3b82098a84f59f1 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr Generated.River.WindowManagementV1.River_seat_v1) -> IO (RIP.Ptr River_layer_shell_seat_v1)))
hs_bindgen_f3b82098a84f59f1 =
  RIP.fromFFIType hs_bindgen_f3b82098a84f59f1_base

{-# NOINLINE river_layer_shell_v1_get_seat #-}
{-|

  > iface_river_layer_shell_v1

  It is a protocol error to make this request more than once for a given river_seat_v1 object.

__C declaration:__ @river_layer_shell_v1_get_seat@

__defined at:__ @river-layer-shell-v1-client-protocol.h 219:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_seat :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr Generated.River.WindowManagementV1.River_seat_v1) -> IO (RIP.Ptr River_layer_shell_seat_v1))
river_layer_shell_v1_get_seat =
  RIP.unsafePerformIO hs_bindgen_f3b82098a84f59f1

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_9fe68c6ce3688758" hs_bindgen_9fe68c6ce3688758_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_add_listener@
hs_bindgen_9fe68c6ce3688758 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (PtrConst.PtrConst River_layer_shell_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_9fe68c6ce3688758 =
  RIP.fromFFIType hs_bindgen_9fe68c6ce3688758_base

{-# NOINLINE river_layer_shell_output_v1_add_listener #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 264:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (PtrConst.PtrConst River_layer_shell_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_layer_shell_output_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_9fe68c6ce3688758

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_b9e5a4d54dbae324" hs_bindgen_b9e5a4d54dbae324_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_set_user_data@
hs_bindgen_b9e5a4d54dbae324 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b9e5a4d54dbae324 =
  RIP.fromFFIType hs_bindgen_b9e5a4d54dbae324_base

{-# NOINLINE river_layer_shell_output_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 290:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_output_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b9e5a4d54dbae324

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_fdf973bf33bc63cb" hs_bindgen_fdf973bf33bc63cb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_get_user_data@
hs_bindgen_fdf973bf33bc63cb :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_fdf973bf33bc63cb =
  RIP.fromFFIType hs_bindgen_fdf973bf33bc63cb_base

{-# NOINLINE river_layer_shell_output_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 297:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_output_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_fdf973bf33bc63cb

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ebbf70fd39a19944" hs_bindgen_ebbf70fd39a19944_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_get_version@
hs_bindgen_ebbf70fd39a19944 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ebbf70fd39a19944 =
  RIP.fromFFIType hs_bindgen_ebbf70fd39a19944_base

{-# NOINLINE river_layer_shell_output_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_output_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_ebbf70fd39a19944

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_0cfe0ff5e88d3362" hs_bindgen_0cfe0ff5e88d3362_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_destroy@
hs_bindgen_0cfe0ff5e88d3362 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ()))
hs_bindgen_0cfe0ff5e88d3362 =
  RIP.fromFFIType hs_bindgen_0cfe0ff5e88d3362_base

{-# NOINLINE river_layer_shell_output_v1_destroy #-}
{-|

  > iface_river_layer_shell_output_v1

  This request indicates that the client will no longer use the river_layer_shell_output_v1 object and that it may be safely destroyed.

  This request should be made after the river_output_v1.removed event is received to complete destruction of the output.

__C declaration:__ @river_layer_shell_output_v1_destroy@

__defined at:__ @river-layer-shell-v1-client-protocol.h 318:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ())
river_layer_shell_output_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_0cfe0ff5e88d3362

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_set_default@
foreign import ccall unsafe "hs_bindgen_fa8553ecafd2326c" hs_bindgen_fa8553ecafd2326c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_output_v1_set_default@
hs_bindgen_fa8553ecafd2326c :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ()))
hs_bindgen_fa8553ecafd2326c =
  RIP.fromFFIType hs_bindgen_fa8553ecafd2326c_base

{-# NOINLINE river_layer_shell_output_v1_set_default #-}
{-|

  > iface_river_layer_shell_output_v1

  Mark this output as the default for new layer surfaces which do not request a specific output themselves. This request overrides any previous set_default request on any river_layer_shell_output_v1 object.

  If no set_default request is made or if the default output is destroyed, the default output is undefined until the next set_default request.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_layer_shell_output_v1_set_default@

__defined at:__ @river-layer-shell-v1-client-protocol.h 338:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_set_default :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ())
river_layer_shell_output_v1_set_default =
  RIP.unsafePerformIO hs_bindgen_fa8553ecafd2326c

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_11f9a5bd9db306d5" hs_bindgen_11f9a5bd9db306d5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_add_listener@
hs_bindgen_11f9a5bd9db306d5 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (PtrConst.PtrConst River_layer_shell_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_11f9a5bd9db306d5 =
  RIP.fromFFIType hs_bindgen_11f9a5bd9db306d5_base

{-# NOINLINE river_layer_shell_seat_v1_add_listener #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 407:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (PtrConst.PtrConst River_layer_shell_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_layer_shell_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_11f9a5bd9db306d5

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_c4e78a8cc5b7786f" hs_bindgen_c4e78a8cc5b7786f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_c4e78a8cc5b7786f :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_c4e78a8cc5b7786f =
  RIP.fromFFIType hs_bindgen_c4e78a8cc5b7786f_base

{-# NOINLINE river_layer_shell_seat_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 436:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_c4e78a8cc5b7786f

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_fb35f323be185a42" hs_bindgen_fb35f323be185a42_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_fb35f323be185a42 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_fb35f323be185a42 =
  RIP.fromFFIType hs_bindgen_fb35f323be185a42_base

{-# NOINLINE river_layer_shell_seat_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 443:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_fb35f323be185a42

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_71b9400fa8807254" hs_bindgen_71b9400fa8807254_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_get_version@
hs_bindgen_71b9400fa8807254 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_71b9400fa8807254 =
  RIP.fromFFIType hs_bindgen_71b9400fa8807254_base

{-# NOINLINE river_layer_shell_seat_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_71b9400fa8807254

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_6c333e41624715c8" hs_bindgen_6c333e41624715c8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_get_river_layer_shell_seat_v1_destroy@
hs_bindgen_6c333e41624715c8 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO ()))
hs_bindgen_6c333e41624715c8 =
  RIP.fromFFIType hs_bindgen_6c333e41624715c8_base

{-# NOINLINE river_layer_shell_seat_v1_destroy #-}
{-|

  > iface_river_layer_shell_seat_v1

  This request indicates that the client will no longer use the river_layer_shell_seat_v1 object and that it may be safely destroyed.

  This request should be made after the river_seat_v1.removed event is received to complete destruction of the seat.

__C declaration:__ @river_layer_shell_seat_v1_destroy@

__defined at:__ @river-layer-shell-v1-client-protocol.h 464:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO ())
river_layer_shell_seat_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_6c333e41624715c8

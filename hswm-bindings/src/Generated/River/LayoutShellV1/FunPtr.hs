{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LayoutShellV1.FunPtr
    ( Generated.River.LayoutShellV1.FunPtr.river_layer_shell_v1_set_user_data
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_v1_get_user_data
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_v1_get_version
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_v1_destroy
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_v1_get_output
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_v1_get_seat
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_output_v1_add_listener
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_output_v1_set_user_data
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_output_v1_get_user_data
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_output_v1_get_version
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_output_v1_destroy
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_output_v1_set_default
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_seat_v1_add_listener
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_seat_v1_set_user_data
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_seat_v1_get_user_data
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_seat_v1_get_version
    , Generated.River.LayoutShellV1.FunPtr.river_layer_shell_seat_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.LayoutShellV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-layer-shell-v1-client-protocol.h>"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bcf20a6089f9abaa (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_set_user_data;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_709f94937f4ac66b (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_user_data;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_e37ee73022241ab9 (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_version;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_295dbc130531b72b (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_destroy;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_output */"
  , "__attribute__ ((const))"
  , "struct river_layer_shell_output_v1 *(*hs_bindgen_4887da831cf20183 (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_output;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_seat */"
  , "__attribute__ ((const))"
  , "struct river_layer_shell_seat_v1 *(*hs_bindgen_278130bd8a983ee2 (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_seat;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_131647c59a21ceb9 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_add_listener;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_774147536a2b0f0a (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_set_user_data;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_62a84bdf663a97ef (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_get_user_data;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ec331f698f4cf3c1 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_get_version;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fed23ce1aefde9d1 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_destroy;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_default */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a3a6a1a8d7e8eec5 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_set_default;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_5f659297241a840e (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_add_listener;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f23d2517997f443f (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_set_user_data;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_8f5d528a44dacefd (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_get_user_data;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_710899121de9c639 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_get_version;"
  , "}"
  , "/* River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_02f6b35d051714e3 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_bcf20a6089f9abaa" hs_bindgen_bcf20a6089f9abaa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_set_user_data@
hs_bindgen_bcf20a6089f9abaa :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_bcf20a6089f9abaa =
  RIP.fromFFIType hs_bindgen_bcf20a6089f9abaa_base

{-# NOINLINE river_layer_shell_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 164:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_bcf20a6089f9abaa

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_709f94937f4ac66b" hs_bindgen_709f94937f4ac66b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_user_data@
hs_bindgen_709f94937f4ac66b :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_709f94937f4ac66b =
  RIP.fromFFIType hs_bindgen_709f94937f4ac66b_base

{-# NOINLINE river_layer_shell_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 171:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_709f94937f4ac66b

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_e37ee73022241ab9" hs_bindgen_e37ee73022241ab9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_version@
hs_bindgen_e37ee73022241ab9 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_e37ee73022241ab9 =
  RIP.fromFFIType hs_bindgen_e37ee73022241ab9_base

{-# NOINLINE river_layer_shell_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_e37ee73022241ab9

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_295dbc130531b72b" hs_bindgen_295dbc130531b72b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_destroy@
hs_bindgen_295dbc130531b72b :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO ()))
hs_bindgen_295dbc130531b72b =
  RIP.fromFFIType hs_bindgen_295dbc130531b72b_base

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
  RIP.unsafePerformIO hs_bindgen_295dbc130531b72b

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_output@
foreign import ccall unsafe "hs_bindgen_4887da831cf20183" hs_bindgen_4887da831cf20183_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_output@
hs_bindgen_4887da831cf20183 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr River_output_v1) -> IO (RIP.Ptr River_layer_shell_output_v1)))
hs_bindgen_4887da831cf20183 =
  RIP.fromFFIType hs_bindgen_4887da831cf20183_base

{-# NOINLINE river_layer_shell_v1_get_output #-}
{-|

  > iface_river_layer_shell_v1

  It is a protocol error to make this request more than once for a given river_output_v1 object.

__C declaration:__ @river_layer_shell_v1_get_output@

__defined at:__ @river-layer-shell-v1-client-protocol.h 202:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_output :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr River_output_v1) -> IO (RIP.Ptr River_layer_shell_output_v1))
river_layer_shell_v1_get_output =
  RIP.unsafePerformIO hs_bindgen_4887da831cf20183

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_278130bd8a983ee2" hs_bindgen_278130bd8a983ee2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_seat@
hs_bindgen_278130bd8a983ee2 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr River_seat_v1) -> IO (RIP.Ptr River_layer_shell_seat_v1)))
hs_bindgen_278130bd8a983ee2 =
  RIP.fromFFIType hs_bindgen_278130bd8a983ee2_base

{-# NOINLINE river_layer_shell_v1_get_seat #-}
{-|

  > iface_river_layer_shell_v1

  It is a protocol error to make this request more than once for a given river_seat_v1 object.

__C declaration:__ @river_layer_shell_v1_get_seat@

__defined at:__ @river-layer-shell-v1-client-protocol.h 219:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_seat :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr River_seat_v1) -> IO (RIP.Ptr River_layer_shell_seat_v1))
river_layer_shell_v1_get_seat =
  RIP.unsafePerformIO hs_bindgen_278130bd8a983ee2

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_131647c59a21ceb9" hs_bindgen_131647c59a21ceb9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_add_listener@
hs_bindgen_131647c59a21ceb9 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (PtrConst.PtrConst River_layer_shell_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_131647c59a21ceb9 =
  RIP.fromFFIType hs_bindgen_131647c59a21ceb9_base

{-# NOINLINE river_layer_shell_output_v1_add_listener #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 264:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (PtrConst.PtrConst River_layer_shell_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_layer_shell_output_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_131647c59a21ceb9

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_774147536a2b0f0a" hs_bindgen_774147536a2b0f0a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_user_data@
hs_bindgen_774147536a2b0f0a :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_774147536a2b0f0a =
  RIP.fromFFIType hs_bindgen_774147536a2b0f0a_base

{-# NOINLINE river_layer_shell_output_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 290:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_output_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_774147536a2b0f0a

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_62a84bdf663a97ef" hs_bindgen_62a84bdf663a97ef_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_user_data@
hs_bindgen_62a84bdf663a97ef :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_62a84bdf663a97ef =
  RIP.fromFFIType hs_bindgen_62a84bdf663a97ef_base

{-# NOINLINE river_layer_shell_output_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 297:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_output_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_62a84bdf663a97ef

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ec331f698f4cf3c1" hs_bindgen_ec331f698f4cf3c1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_version@
hs_bindgen_ec331f698f4cf3c1 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ec331f698f4cf3c1 =
  RIP.fromFFIType hs_bindgen_ec331f698f4cf3c1_base

{-# NOINLINE river_layer_shell_output_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_output_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_ec331f698f4cf3c1

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_fed23ce1aefde9d1" hs_bindgen_fed23ce1aefde9d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_destroy@
hs_bindgen_fed23ce1aefde9d1 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ()))
hs_bindgen_fed23ce1aefde9d1 =
  RIP.fromFFIType hs_bindgen_fed23ce1aefde9d1_base

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
  RIP.unsafePerformIO hs_bindgen_fed23ce1aefde9d1

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_default@
foreign import ccall unsafe "hs_bindgen_a3a6a1a8d7e8eec5" hs_bindgen_a3a6a1a8d7e8eec5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_default@
hs_bindgen_a3a6a1a8d7e8eec5 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ()))
hs_bindgen_a3a6a1a8d7e8eec5 =
  RIP.fromFFIType hs_bindgen_a3a6a1a8d7e8eec5_base

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
  RIP.unsafePerformIO hs_bindgen_a3a6a1a8d7e8eec5

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_5f659297241a840e" hs_bindgen_5f659297241a840e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_add_listener@
hs_bindgen_5f659297241a840e :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (PtrConst.PtrConst River_layer_shell_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_5f659297241a840e =
  RIP.fromFFIType hs_bindgen_5f659297241a840e_base

{-# NOINLINE river_layer_shell_seat_v1_add_listener #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 407:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (PtrConst.PtrConst River_layer_shell_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_layer_shell_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_5f659297241a840e

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_f23d2517997f443f" hs_bindgen_f23d2517997f443f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_f23d2517997f443f :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f23d2517997f443f =
  RIP.fromFFIType hs_bindgen_f23d2517997f443f_base

{-# NOINLINE river_layer_shell_seat_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 436:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f23d2517997f443f

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_8f5d528a44dacefd" hs_bindgen_8f5d528a44dacefd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_8f5d528a44dacefd :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_8f5d528a44dacefd =
  RIP.fromFFIType hs_bindgen_8f5d528a44dacefd_base

{-# NOINLINE river_layer_shell_seat_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 443:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_8f5d528a44dacefd

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_710899121de9c639" hs_bindgen_710899121de9c639_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_version@
hs_bindgen_710899121de9c639 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_710899121de9c639 =
  RIP.fromFFIType hs_bindgen_710899121de9c639_base

{-# NOINLINE river_layer_shell_seat_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_710899121de9c639

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_02f6b35d051714e3" hs_bindgen_02f6b35d051714e3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_destroy@
hs_bindgen_02f6b35d051714e3 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO ()))
hs_bindgen_02f6b35d051714e3 =
  RIP.fromFFIType hs_bindgen_02f6b35d051714e3_base

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
  RIP.unsafePerformIO hs_bindgen_02f6b35d051714e3

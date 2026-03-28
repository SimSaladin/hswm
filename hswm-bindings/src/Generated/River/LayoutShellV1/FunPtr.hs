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
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f31cbe05633db599 (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_set_user_data;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_97c7af7adbf2f17b (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_user_data;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_08ba34298d74bd41 (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_version;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_06fe87cf2c5b7130 (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_destroy;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_output */"
  , "__attribute__ ((const))"
  , "struct river_layer_shell_output_v1 *(*hs_bindgen_a10fdae058dd7f1e (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_output;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_seat */"
  , "__attribute__ ((const))"
  , "struct river_layer_shell_seat_v1 *(*hs_bindgen_1eae90e8812da7bd (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_seat;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_098686df387a58b4 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_add_listener;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_d835a1c8df7012dd (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_set_user_data;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f304cfe732c54722 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_get_user_data;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7ff6595603e6169e (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_get_version;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_82c393128d027bcc (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_destroy;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_default */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_953000428f82a6ab (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_set_default;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9a4384374c9e4715 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_add_listener;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_959f06f6573a60bd (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_set_user_data;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_f961c1e786a93f15 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_get_user_data;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_a0870639c8e286df (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_get_version;"
  , "}"
  , "/* hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a70ba7038377d1b1 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_f31cbe05633db599" hs_bindgen_f31cbe05633db599_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_set_user_data@
hs_bindgen_f31cbe05633db599 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f31cbe05633db599 =
  RIP.fromFFIType hs_bindgen_f31cbe05633db599_base

{-# NOINLINE river_layer_shell_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 164:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f31cbe05633db599

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_97c7af7adbf2f17b" hs_bindgen_97c7af7adbf2f17b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_user_data@
hs_bindgen_97c7af7adbf2f17b :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_97c7af7adbf2f17b =
  RIP.fromFFIType hs_bindgen_97c7af7adbf2f17b_base

{-# NOINLINE river_layer_shell_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 171:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_97c7af7adbf2f17b

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_08ba34298d74bd41" hs_bindgen_08ba34298d74bd41_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_version@
hs_bindgen_08ba34298d74bd41 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_08ba34298d74bd41 =
  RIP.fromFFIType hs_bindgen_08ba34298d74bd41_base

{-# NOINLINE river_layer_shell_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_08ba34298d74bd41

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_06fe87cf2c5b7130" hs_bindgen_06fe87cf2c5b7130_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_destroy@
hs_bindgen_06fe87cf2c5b7130 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO ()))
hs_bindgen_06fe87cf2c5b7130 =
  RIP.fromFFIType hs_bindgen_06fe87cf2c5b7130_base

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
  RIP.unsafePerformIO hs_bindgen_06fe87cf2c5b7130

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_output@
foreign import ccall unsafe "hs_bindgen_a10fdae058dd7f1e" hs_bindgen_a10fdae058dd7f1e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_output@
hs_bindgen_a10fdae058dd7f1e :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr River_output_v1) -> IO (RIP.Ptr River_layer_shell_output_v1)))
hs_bindgen_a10fdae058dd7f1e =
  RIP.fromFFIType hs_bindgen_a10fdae058dd7f1e_base

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
  RIP.unsafePerformIO hs_bindgen_a10fdae058dd7f1e

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_1eae90e8812da7bd" hs_bindgen_1eae90e8812da7bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_v1_get_seat@
hs_bindgen_1eae90e8812da7bd :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr River_seat_v1) -> IO (RIP.Ptr River_layer_shell_seat_v1)))
hs_bindgen_1eae90e8812da7bd =
  RIP.fromFFIType hs_bindgen_1eae90e8812da7bd_base

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
  RIP.unsafePerformIO hs_bindgen_1eae90e8812da7bd

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_098686df387a58b4" hs_bindgen_098686df387a58b4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_add_listener@
hs_bindgen_098686df387a58b4 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (PtrConst.PtrConst River_layer_shell_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_098686df387a58b4 =
  RIP.fromFFIType hs_bindgen_098686df387a58b4_base

{-# NOINLINE river_layer_shell_output_v1_add_listener #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 264:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (PtrConst.PtrConst River_layer_shell_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_layer_shell_output_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_098686df387a58b4

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_d835a1c8df7012dd" hs_bindgen_d835a1c8df7012dd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_user_data@
hs_bindgen_d835a1c8df7012dd :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_d835a1c8df7012dd =
  RIP.fromFFIType hs_bindgen_d835a1c8df7012dd_base

{-# NOINLINE river_layer_shell_output_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 290:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_output_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_d835a1c8df7012dd

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_f304cfe732c54722" hs_bindgen_f304cfe732c54722_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_user_data@
hs_bindgen_f304cfe732c54722 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f304cfe732c54722 =
  RIP.fromFFIType hs_bindgen_f304cfe732c54722_base

{-# NOINLINE river_layer_shell_output_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 297:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_output_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_f304cfe732c54722

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_7ff6595603e6169e" hs_bindgen_7ff6595603e6169e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_get_version@
hs_bindgen_7ff6595603e6169e :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7ff6595603e6169e =
  RIP.fromFFIType hs_bindgen_7ff6595603e6169e_base

{-# NOINLINE river_layer_shell_output_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_output_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_7ff6595603e6169e

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_82c393128d027bcc" hs_bindgen_82c393128d027bcc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_destroy@
hs_bindgen_82c393128d027bcc :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ()))
hs_bindgen_82c393128d027bcc =
  RIP.fromFFIType hs_bindgen_82c393128d027bcc_base

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
  RIP.unsafePerformIO hs_bindgen_82c393128d027bcc

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_default@
foreign import ccall unsafe "hs_bindgen_953000428f82a6ab" hs_bindgen_953000428f82a6ab_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_output_v1_set_default@
hs_bindgen_953000428f82a6ab :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ()))
hs_bindgen_953000428f82a6ab =
  RIP.fromFFIType hs_bindgen_953000428f82a6ab_base

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
  RIP.unsafePerformIO hs_bindgen_953000428f82a6ab

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_9a4384374c9e4715" hs_bindgen_9a4384374c9e4715_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_add_listener@
hs_bindgen_9a4384374c9e4715 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (PtrConst.PtrConst River_layer_shell_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_9a4384374c9e4715 =
  RIP.fromFFIType hs_bindgen_9a4384374c9e4715_base

{-# NOINLINE river_layer_shell_seat_v1_add_listener #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 407:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (PtrConst.PtrConst River_layer_shell_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_layer_shell_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_9a4384374c9e4715

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_959f06f6573a60bd" hs_bindgen_959f06f6573a60bd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_959f06f6573a60bd :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_959f06f6573a60bd =
  RIP.fromFFIType hs_bindgen_959f06f6573a60bd_base

{-# NOINLINE river_layer_shell_seat_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 436:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_959f06f6573a60bd

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_f961c1e786a93f15" hs_bindgen_f961c1e786a93f15_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_f961c1e786a93f15 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_f961c1e786a93f15 =
  RIP.fromFFIType hs_bindgen_f961c1e786a93f15_base

{-# NOINLINE river_layer_shell_seat_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 443:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_f961c1e786a93f15

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_a0870639c8e286df" hs_bindgen_a0870639c8e286df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_get_version@
hs_bindgen_a0870639c8e286df :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_a0870639c8e286df =
  RIP.fromFFIType hs_bindgen_a0870639c8e286df_base

{-# NOINLINE river_layer_shell_seat_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_a0870639c8e286df

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a70ba7038377d1b1" hs_bindgen_a70ba7038377d1b1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_get_river_layer_shell_seat_v1_destroy@
hs_bindgen_a70ba7038377d1b1 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO ()))
hs_bindgen_a70ba7038377d1b1 =
  RIP.fromFFIType hs_bindgen_a70ba7038377d1b1_base

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
  RIP.unsafePerformIO hs_bindgen_a70ba7038377d1b1

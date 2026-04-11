{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.LayerShellV1.Generated.FunPtr
    ( Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_v1_get_version
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_v1_destroy
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_v1_get_output
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_v1_get_seat
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_output_v1_add_listener
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_output_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_output_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_output_v1_get_version
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_output_v1_destroy
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_output_v1_set_default
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_seat_v1_add_listener
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_seat_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_seat_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_seat_v1_get_version
    , Bindings.River.LayerShellV1.Generated.FunPtr.river_layer_shell_seat_v1_destroy
    )
  where

import qualified Bindings.River.WindowManagementV1.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.LayerShellV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-layer-shell-v1-client-protocol.h>"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1da62e8263d46b14 (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_79e76af533a9857d (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_aa9dd43da5b646b6 (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_version;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_eb0f1a258ae6d6a4 (void)) ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_destroy;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_output */"
  , "__attribute__ ((const))"
  , "struct river_layer_shell_output_v1 *(*hs_bindgen_106bcefa7f901436 (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_output;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_seat */"
  , "__attribute__ ((const))"
  , "struct river_layer_shell_seat_v1 *(*hs_bindgen_246354c5aa6fa460 (void)) ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_v1_get_seat;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_8910fa0937a98d3f (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_add_listener;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0556d85230c06356 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_995852853340c629 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_2e28b1350855e72f (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_get_version;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7ae87f668f27f365 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_destroy;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_set_default */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0fb8f0cf620533f4 (void)) ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_output_v1_set_default;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_393d877d083a3b1d (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_add_listener;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_365f707b1b036d34 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_fc0e64d46ac3da51 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1dc7c3be2f3705fe (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_get_version;"
  , "}"
  , "/* Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_39cd9ad538616479 (void)) ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_layer_shell_seat_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_1da62e8263d46b14" hs_bindgen_1da62e8263d46b14_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_set_user_data@
hs_bindgen_1da62e8263d46b14 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_1da62e8263d46b14 =
  RIP.fromFFIType hs_bindgen_1da62e8263d46b14_base

{-# NOINLINE river_layer_shell_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 164:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_1da62e8263d46b14

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_79e76af533a9857d" hs_bindgen_79e76af533a9857d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_user_data@
hs_bindgen_79e76af533a9857d :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_79e76af533a9857d =
  RIP.fromFFIType hs_bindgen_79e76af533a9857d_base

{-# NOINLINE river_layer_shell_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 171:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_79e76af533a9857d

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_aa9dd43da5b646b6" hs_bindgen_aa9dd43da5b646b6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_version@
hs_bindgen_aa9dd43da5b646b6 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_aa9dd43da5b646b6 =
  RIP.fromFFIType hs_bindgen_aa9dd43da5b646b6_base

{-# NOINLINE river_layer_shell_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_aa9dd43da5b646b6

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_eb0f1a258ae6d6a4" hs_bindgen_eb0f1a258ae6d6a4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_destroy@
hs_bindgen_eb0f1a258ae6d6a4 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> IO ()))
hs_bindgen_eb0f1a258ae6d6a4 =
  RIP.fromFFIType hs_bindgen_eb0f1a258ae6d6a4_base

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
  RIP.unsafePerformIO hs_bindgen_eb0f1a258ae6d6a4

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_output@
foreign import ccall unsafe "hs_bindgen_106bcefa7f901436" hs_bindgen_106bcefa7f901436_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_output@
hs_bindgen_106bcefa7f901436 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_output_v1) -> IO (RIP.Ptr River_layer_shell_output_v1)))
hs_bindgen_106bcefa7f901436 =
  RIP.fromFFIType hs_bindgen_106bcefa7f901436_base

{-# NOINLINE river_layer_shell_v1_get_output #-}
{-|

  > iface_river_layer_shell_v1

  It is a protocol error to make this request more than once for a given river_output_v1 object.

__C declaration:__ @river_layer_shell_v1_get_output@

__defined at:__ @river-layer-shell-v1-client-protocol.h 202:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_output :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_output_v1) -> IO (RIP.Ptr River_layer_shell_output_v1))
river_layer_shell_v1_get_output =
  RIP.unsafePerformIO hs_bindgen_106bcefa7f901436

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_246354c5aa6fa460" hs_bindgen_246354c5aa6fa460_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_v1_get_seat@
hs_bindgen_246354c5aa6fa460 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1) -> IO (RIP.Ptr River_layer_shell_seat_v1)))
hs_bindgen_246354c5aa6fa460 =
  RIP.fromFFIType hs_bindgen_246354c5aa6fa460_base

{-# NOINLINE river_layer_shell_v1_get_seat #-}
{-|

  > iface_river_layer_shell_v1

  It is a protocol error to make this request more than once for a given river_seat_v1 object.

__C declaration:__ @river_layer_shell_v1_get_seat@

__defined at:__ @river-layer-shell-v1-client-protocol.h 219:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_seat :: RIP.FunPtr ((RIP.Ptr River_layer_shell_v1) -> (RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1) -> IO (RIP.Ptr River_layer_shell_seat_v1))
river_layer_shell_v1_get_seat =
  RIP.unsafePerformIO hs_bindgen_246354c5aa6fa460

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_8910fa0937a98d3f" hs_bindgen_8910fa0937a98d3f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_add_listener@
hs_bindgen_8910fa0937a98d3f :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (PtrConst.PtrConst River_layer_shell_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_8910fa0937a98d3f =
  RIP.fromFFIType hs_bindgen_8910fa0937a98d3f_base

{-# NOINLINE river_layer_shell_output_v1_add_listener #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 264:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (PtrConst.PtrConst River_layer_shell_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_layer_shell_output_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_8910fa0937a98d3f

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_0556d85230c06356" hs_bindgen_0556d85230c06356_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_set_user_data@
hs_bindgen_0556d85230c06356 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_0556d85230c06356 =
  RIP.fromFFIType hs_bindgen_0556d85230c06356_base

{-# NOINLINE river_layer_shell_output_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 290:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_output_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_0556d85230c06356

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_995852853340c629" hs_bindgen_995852853340c629_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_get_user_data@
hs_bindgen_995852853340c629 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_995852853340c629 =
  RIP.fromFFIType hs_bindgen_995852853340c629_base

{-# NOINLINE river_layer_shell_output_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 297:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_output_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_995852853340c629

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_2e28b1350855e72f" hs_bindgen_2e28b1350855e72f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_get_version@
hs_bindgen_2e28b1350855e72f :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_2e28b1350855e72f =
  RIP.fromFFIType hs_bindgen_2e28b1350855e72f_base

{-# NOINLINE river_layer_shell_output_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_output_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_2e28b1350855e72f

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_7ae87f668f27f365" hs_bindgen_7ae87f668f27f365_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_destroy@
hs_bindgen_7ae87f668f27f365 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ()))
hs_bindgen_7ae87f668f27f365 =
  RIP.fromFFIType hs_bindgen_7ae87f668f27f365_base

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
  RIP.unsafePerformIO hs_bindgen_7ae87f668f27f365

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_set_default@
foreign import ccall unsafe "hs_bindgen_0fb8f0cf620533f4" hs_bindgen_0fb8f0cf620533f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_output_v1_set_default@
hs_bindgen_0fb8f0cf620533f4 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_output_v1) -> IO ()))
hs_bindgen_0fb8f0cf620533f4 =
  RIP.fromFFIType hs_bindgen_0fb8f0cf620533f4_base

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
  RIP.unsafePerformIO hs_bindgen_0fb8f0cf620533f4

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_393d877d083a3b1d" hs_bindgen_393d877d083a3b1d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_add_listener@
hs_bindgen_393d877d083a3b1d :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (PtrConst.PtrConst River_layer_shell_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_393d877d083a3b1d =
  RIP.fromFFIType hs_bindgen_393d877d083a3b1d_base

{-# NOINLINE river_layer_shell_seat_v1_add_listener #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 407:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (PtrConst.PtrConst River_layer_shell_seat_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_layer_shell_seat_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_393d877d083a3b1d

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_365f707b1b036d34" hs_bindgen_365f707b1b036d34_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_365f707b1b036d34 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_365f707b1b036d34 =
  RIP.fromFFIType hs_bindgen_365f707b1b036d34_base

{-# NOINLINE river_layer_shell_seat_v1_set_user_data #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 436:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_layer_shell_seat_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_365f707b1b036d34

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_fc0e64d46ac3da51" hs_bindgen_fc0e64d46ac3da51_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_fc0e64d46ac3da51 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_fc0e64d46ac3da51 =
  RIP.fromFFIType hs_bindgen_fc0e64d46ac3da51_base

{-# NOINLINE river_layer_shell_seat_v1_get_user_data #-}
{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 443:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO (RIP.Ptr RIP.Void))
river_layer_shell_seat_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_fc0e64d46ac3da51

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_1dc7c3be2f3705fe" hs_bindgen_1dc7c3be2f3705fe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_get_version@
hs_bindgen_1dc7c3be2f3705fe :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_1dc7c3be2f3705fe =
  RIP.fromFFIType hs_bindgen_1dc7c3be2f3705fe_base

{-# NOINLINE river_layer_shell_seat_v1_get_version #-}
{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_layer_shell_seat_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_1dc7c3be2f3705fe

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_39cd9ad538616479" hs_bindgen_39cd9ad538616479_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_get_river_layer_shell_seat_v1_destroy@
hs_bindgen_39cd9ad538616479 :: IO (RIP.FunPtr ((RIP.Ptr River_layer_shell_seat_v1) -> IO ()))
hs_bindgen_39cd9ad538616479 =
  RIP.fromFFIType hs_bindgen_39cd9ad538616479_base

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
  RIP.unsafePerformIO hs_bindgen_39cd9ad538616479

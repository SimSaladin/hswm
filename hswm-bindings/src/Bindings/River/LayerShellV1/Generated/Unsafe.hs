{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.LayerShellV1.Generated.Unsafe
    ( Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_v1_get_version
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_v1_destroy
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_v1_get_output
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_v1_get_seat
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_output_v1_add_listener
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_output_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_output_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_output_v1_get_version
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_output_v1_destroy
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_output_v1_set_default
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_seat_v1_add_listener
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_seat_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_seat_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_seat_v1_get_version
    , Bindings.River.LayerShellV1.Generated.Unsafe.river_layer_shell_seat_v1_destroy
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
  , "void hs_bindgen_c6662ca4dc6a308a ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_fee617030152ed92 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_bdd201d57eef0226 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_86330395c247109b ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct river_layer_shell_output_v1 *hs_bindgen_65fba62da65a2033 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_output)(arg1, arg2);"
  , "}"
  , "struct river_layer_shell_seat_v1 *hs_bindgen_506678e7940b310c ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f810d4629606e040 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_39a53a24deab0d56 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f75ab47ee9c9d3cb ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_191dedc50e2a7718 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_0b20823d559cc082 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_118b76fc70c5a58e ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_default)(arg1);"
  , "}"
  , "signed int hs_bindgen_f6c08699faad150c ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e424a6e1605c14c7 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b520587faa8074ae ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ad0974b5460ee5eb ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_5e4c293671c3d9ea ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_c6662ca4dc6a308a" hs_bindgen_c6662ca4dc6a308a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_set_user_data@
hs_bindgen_c6662ca4dc6a308a ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c6662ca4dc6a308a =
  RIP.fromFFIType hs_bindgen_c6662ca4dc6a308a_base

{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 164:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_set_user_data ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_layer_shell_v1_set_user_data =
  hs_bindgen_c6662ca4dc6a308a

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_fee617030152ed92" hs_bindgen_fee617030152ed92_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_get_user_data@
hs_bindgen_fee617030152ed92 ::
     RIP.Ptr River_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_fee617030152ed92 =
  RIP.fromFFIType hs_bindgen_fee617030152ed92_base

{-|

  > iface_river_layer_shell_v1

__C declaration:__ @river_layer_shell_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 171:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_user_data ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO (RIP.Ptr RIP.Void)
river_layer_shell_v1_get_user_data =
  hs_bindgen_fee617030152ed92

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_bdd201d57eef0226" hs_bindgen_bdd201d57eef0226_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_get_version@
hs_bindgen_bdd201d57eef0226 ::
     RIP.Ptr River_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_bdd201d57eef0226 =
  RIP.fromFFIType hs_bindgen_bdd201d57eef0226_base

{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_v1_get_version =
  hs_bindgen_bdd201d57eef0226

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_86330395c247109b" hs_bindgen_86330395c247109b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_destroy@
hs_bindgen_86330395c247109b ::
     RIP.Ptr River_layer_shell_v1
  -> IO ()
hs_bindgen_86330395c247109b =
  RIP.fromFFIType hs_bindgen_86330395c247109b_base

{-|

  > iface_river_layer_shell_v1

  This request indicates that the client will no longer use the river_layer_shell_v1 object.

__C declaration:__ @river_layer_shell_v1_destroy@

__defined at:__ @river-layer-shell-v1-client-protocol.h 189:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_destroy ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO ()
river_layer_shell_v1_destroy =
  hs_bindgen_86330395c247109b

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_get_output@
foreign import ccall unsafe "hs_bindgen_65fba62da65a2033" hs_bindgen_65fba62da65a2033_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_get_output@
hs_bindgen_65fba62da65a2033 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_output_v1
  -> IO (RIP.Ptr River_layer_shell_output_v1)
hs_bindgen_65fba62da65a2033 =
  RIP.fromFFIType hs_bindgen_65fba62da65a2033_base

{-|

  > iface_river_layer_shell_v1

  It is a protocol error to make this request more than once for a given river_output_v1 object.

__C declaration:__ @river_layer_shell_v1_get_output@

__defined at:__ @river-layer-shell-v1-client-protocol.h 202:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_output ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_output_v1
     -- ^ __C declaration:__ @output@
  -> IO (RIP.Ptr River_layer_shell_output_v1)
river_layer_shell_v1_get_output =
  hs_bindgen_65fba62da65a2033

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_506678e7940b310c" hs_bindgen_506678e7940b310c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_v1_get_seat@
hs_bindgen_506678e7940b310c ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
hs_bindgen_506678e7940b310c =
  RIP.fromFFIType hs_bindgen_506678e7940b310c_base

{-|

  > iface_river_layer_shell_v1

  It is a protocol error to make this request more than once for a given river_seat_v1 object.

__C declaration:__ @river_layer_shell_v1_get_seat@

__defined at:__ @river-layer-shell-v1-client-protocol.h 219:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_seat ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
river_layer_shell_v1_get_seat =
  hs_bindgen_506678e7940b310c

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_f810d4629606e040" hs_bindgen_f810d4629606e040_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_add_listener@
hs_bindgen_f810d4629606e040 ::
     RIP.Ptr River_layer_shell_output_v1
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_f810d4629606e040 =
  RIP.fromFFIType hs_bindgen_f810d4629606e040_base

{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 264:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_add_listener ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_layer_shell_output_v1_add_listener =
  hs_bindgen_f810d4629606e040

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_39a53a24deab0d56" hs_bindgen_39a53a24deab0d56_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_set_user_data@
hs_bindgen_39a53a24deab0d56 ::
     RIP.Ptr River_layer_shell_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_39a53a24deab0d56 =
  RIP.fromFFIType hs_bindgen_39a53a24deab0d56_base

{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 290:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_set_user_data ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_layer_shell_output_v1_set_user_data =
  hs_bindgen_39a53a24deab0d56

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_f75ab47ee9c9d3cb" hs_bindgen_f75ab47ee9c9d3cb_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_get_user_data@
hs_bindgen_f75ab47ee9c9d3cb ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f75ab47ee9c9d3cb =
  RIP.fromFFIType hs_bindgen_f75ab47ee9c9d3cb_base

{-|

  > iface_river_layer_shell_output_v1

__C declaration:__ @river_layer_shell_output_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 297:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_user_data ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO (RIP.Ptr RIP.Void)
river_layer_shell_output_v1_get_user_data =
  hs_bindgen_f75ab47ee9c9d3cb

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_191dedc50e2a7718" hs_bindgen_191dedc50e2a7718_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_get_version@
hs_bindgen_191dedc50e2a7718 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_191dedc50e2a7718 =
  RIP.fromFFIType hs_bindgen_191dedc50e2a7718_base

{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_output_v1_get_version =
  hs_bindgen_191dedc50e2a7718

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_0b20823d559cc082" hs_bindgen_0b20823d559cc082_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_destroy@
hs_bindgen_0b20823d559cc082 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_0b20823d559cc082 =
  RIP.fromFFIType hs_bindgen_0b20823d559cc082_base

{-|

  > iface_river_layer_shell_output_v1

  This request indicates that the client will no longer use the river_layer_shell_output_v1 object and that it may be safely destroyed.

  This request should be made after the river_output_v1.removed event is received to complete destruction of the output.

__C declaration:__ @river_layer_shell_output_v1_destroy@

__defined at:__ @river-layer-shell-v1-client-protocol.h 318:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_destroy ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO ()
river_layer_shell_output_v1_destroy =
  hs_bindgen_0b20823d559cc082

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_set_default@
foreign import ccall unsafe "hs_bindgen_118b76fc70c5a58e" hs_bindgen_118b76fc70c5a58e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_output_v1_set_default@
hs_bindgen_118b76fc70c5a58e ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_118b76fc70c5a58e =
  RIP.fromFFIType hs_bindgen_118b76fc70c5a58e_base

{-|

  > iface_river_layer_shell_output_v1

  Mark this output as the default for new layer surfaces which do not request a specific output themselves. This request overrides any previous set_default request on any river_layer_shell_output_v1 object.

  If no set_default request is made or if the default output is destroyed, the default output is undefined until the next set_default request.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_layer_shell_output_v1_set_default@

__defined at:__ @river-layer-shell-v1-client-protocol.h 338:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_set_default ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO ()
river_layer_shell_output_v1_set_default =
  hs_bindgen_118b76fc70c5a58e

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_f6c08699faad150c" hs_bindgen_f6c08699faad150c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_add_listener@
hs_bindgen_f6c08699faad150c ::
     RIP.Ptr River_layer_shell_seat_v1
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_f6c08699faad150c =
  RIP.fromFFIType hs_bindgen_f6c08699faad150c_base

{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_add_listener@

__defined at:__ @river-layer-shell-v1-client-protocol.h 407:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_add_listener ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_layer_shell_seat_v1_add_listener =
  hs_bindgen_f6c08699faad150c

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_e424a6e1605c14c7" hs_bindgen_e424a6e1605c14c7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_e424a6e1605c14c7 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e424a6e1605c14c7 =
  RIP.fromFFIType hs_bindgen_e424a6e1605c14c7_base

{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_set_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 436:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_set_user_data ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_layer_shell_seat_v1_set_user_data =
  hs_bindgen_e424a6e1605c14c7

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_b520587faa8074ae" hs_bindgen_b520587faa8074ae_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_b520587faa8074ae ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b520587faa8074ae =
  RIP.fromFFIType hs_bindgen_b520587faa8074ae_base

{-|

  > iface_river_layer_shell_seat_v1

__C declaration:__ @river_layer_shell_seat_v1_get_user_data@

__defined at:__ @river-layer-shell-v1-client-protocol.h 443:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_user_data ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO (RIP.Ptr RIP.Void)
river_layer_shell_seat_v1_get_user_data =
  hs_bindgen_b520587faa8074ae

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ad0974b5460ee5eb" hs_bindgen_ad0974b5460ee5eb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_get_version@
hs_bindgen_ad0974b5460ee5eb ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ad0974b5460ee5eb =
  RIP.fromFFIType hs_bindgen_ad0974b5460ee5eb_base

{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_seat_v1_get_version =
  hs_bindgen_ad0974b5460ee5eb

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_5e4c293671c3d9ea" hs_bindgen_5e4c293671c3d9ea_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Unsafe_river_layer_shell_seat_v1_destroy@
hs_bindgen_5e4c293671c3d9ea ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO ()
hs_bindgen_5e4c293671c3d9ea =
  RIP.fromFFIType hs_bindgen_5e4c293671c3d9ea_base

{-|

  > iface_river_layer_shell_seat_v1

  This request indicates that the client will no longer use the river_layer_shell_seat_v1 object and that it may be safely destroyed.

  This request should be made after the river_seat_v1.removed event is received to complete destruction of the seat.

__C declaration:__ @river_layer_shell_seat_v1_destroy@

__defined at:__ @river-layer-shell-v1-client-protocol.h 464:1@

__exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_destroy ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO ()
river_layer_shell_seat_v1_destroy =
  hs_bindgen_5e4c293671c3d9ea

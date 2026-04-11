{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.LayerShellV1.Generated.Safe
    ( Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_v1_get_version
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_v1_destroy
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_v1_get_output
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_v1_get_seat
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_output_v1_add_listener
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_output_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_output_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_output_v1_get_version
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_output_v1_destroy
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_output_v1_set_default
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_seat_v1_add_listener
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_seat_v1_set_user_data
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_seat_v1_get_user_data
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_seat_v1_get_version
    , Bindings.River.LayerShellV1.Generated.Safe.river_layer_shell_seat_v1_destroy
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
  , "void hs_bindgen_77cb5f8aa714e0d1 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_10d9db324cbfad53 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_04a5647bc57e0ca0 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7a66c966c1f8b28e ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct river_layer_shell_output_v1 *hs_bindgen_af18197f3dc71bb5 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_output)(arg1, arg2);"
  , "}"
  , "struct river_layer_shell_seat_v1 *hs_bindgen_b419d4b0b8d98a32 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ebb581f6cef6f926 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_bb224bc01132f861 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3de146c32d498310 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_740b00c637200538 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9092df016d2f1315 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_1b816e827c088aa4 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_default)(arg1);"
  , "}"
  , "signed int hs_bindgen_b5ef1b4febd2df44 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_fa2c1653ad552ce3 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3b5ff7435c3e66f4 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_22e54b5a04e2f8f2 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_437b037dc1e42ffd ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_set_user_data@
foreign import ccall safe "hs_bindgen_77cb5f8aa714e0d1" hs_bindgen_77cb5f8aa714e0d1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_set_user_data@
hs_bindgen_77cb5f8aa714e0d1 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_77cb5f8aa714e0d1 =
  RIP.fromFFIType hs_bindgen_77cb5f8aa714e0d1_base

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
  hs_bindgen_77cb5f8aa714e0d1

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_get_user_data@
foreign import ccall safe "hs_bindgen_10d9db324cbfad53" hs_bindgen_10d9db324cbfad53_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_get_user_data@
hs_bindgen_10d9db324cbfad53 ::
     RIP.Ptr River_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_10d9db324cbfad53 =
  RIP.fromFFIType hs_bindgen_10d9db324cbfad53_base

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
  hs_bindgen_10d9db324cbfad53

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_get_version@
foreign import ccall safe "hs_bindgen_04a5647bc57e0ca0" hs_bindgen_04a5647bc57e0ca0_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_get_version@
hs_bindgen_04a5647bc57e0ca0 ::
     RIP.Ptr River_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_04a5647bc57e0ca0 =
  RIP.fromFFIType hs_bindgen_04a5647bc57e0ca0_base

{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_v1_get_version =
  hs_bindgen_04a5647bc57e0ca0

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_destroy@
foreign import ccall safe "hs_bindgen_7a66c966c1f8b28e" hs_bindgen_7a66c966c1f8b28e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_destroy@
hs_bindgen_7a66c966c1f8b28e ::
     RIP.Ptr River_layer_shell_v1
  -> IO ()
hs_bindgen_7a66c966c1f8b28e =
  RIP.fromFFIType hs_bindgen_7a66c966c1f8b28e_base

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
  hs_bindgen_7a66c966c1f8b28e

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_get_output@
foreign import ccall safe "hs_bindgen_af18197f3dc71bb5" hs_bindgen_af18197f3dc71bb5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_get_output@
hs_bindgen_af18197f3dc71bb5 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_output_v1
  -> IO (RIP.Ptr River_layer_shell_output_v1)
hs_bindgen_af18197f3dc71bb5 =
  RIP.fromFFIType hs_bindgen_af18197f3dc71bb5_base

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
  hs_bindgen_af18197f3dc71bb5

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_get_seat@
foreign import ccall safe "hs_bindgen_b419d4b0b8d98a32" hs_bindgen_b419d4b0b8d98a32_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_v1_get_seat@
hs_bindgen_b419d4b0b8d98a32 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
hs_bindgen_b419d4b0b8d98a32 =
  RIP.fromFFIType hs_bindgen_b419d4b0b8d98a32_base

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
  hs_bindgen_b419d4b0b8d98a32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_add_listener@
foreign import ccall safe "hs_bindgen_ebb581f6cef6f926" hs_bindgen_ebb581f6cef6f926_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_add_listener@
hs_bindgen_ebb581f6cef6f926 ::
     RIP.Ptr River_layer_shell_output_v1
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ebb581f6cef6f926 =
  RIP.fromFFIType hs_bindgen_ebb581f6cef6f926_base

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
  hs_bindgen_ebb581f6cef6f926

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_set_user_data@
foreign import ccall safe "hs_bindgen_bb224bc01132f861" hs_bindgen_bb224bc01132f861_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_set_user_data@
hs_bindgen_bb224bc01132f861 ::
     RIP.Ptr River_layer_shell_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_bb224bc01132f861 =
  RIP.fromFFIType hs_bindgen_bb224bc01132f861_base

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
  hs_bindgen_bb224bc01132f861

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_get_user_data@
foreign import ccall safe "hs_bindgen_3de146c32d498310" hs_bindgen_3de146c32d498310_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_get_user_data@
hs_bindgen_3de146c32d498310 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3de146c32d498310 =
  RIP.fromFFIType hs_bindgen_3de146c32d498310_base

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
  hs_bindgen_3de146c32d498310

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_get_version@
foreign import ccall safe "hs_bindgen_740b00c637200538" hs_bindgen_740b00c637200538_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_get_version@
hs_bindgen_740b00c637200538 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_740b00c637200538 =
  RIP.fromFFIType hs_bindgen_740b00c637200538_base

{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_output_v1_get_version =
  hs_bindgen_740b00c637200538

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_destroy@
foreign import ccall safe "hs_bindgen_9092df016d2f1315" hs_bindgen_9092df016d2f1315_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_destroy@
hs_bindgen_9092df016d2f1315 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_9092df016d2f1315 =
  RIP.fromFFIType hs_bindgen_9092df016d2f1315_base

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
  hs_bindgen_9092df016d2f1315

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_set_default@
foreign import ccall safe "hs_bindgen_1b816e827c088aa4" hs_bindgen_1b816e827c088aa4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_output_v1_set_default@
hs_bindgen_1b816e827c088aa4 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_1b816e827c088aa4 =
  RIP.fromFFIType hs_bindgen_1b816e827c088aa4_base

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
  hs_bindgen_1b816e827c088aa4

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_b5ef1b4febd2df44" hs_bindgen_b5ef1b4febd2df44_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_add_listener@
hs_bindgen_b5ef1b4febd2df44 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b5ef1b4febd2df44 =
  RIP.fromFFIType hs_bindgen_b5ef1b4febd2df44_base

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
  hs_bindgen_b5ef1b4febd2df44

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_fa2c1653ad552ce3" hs_bindgen_fa2c1653ad552ce3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_fa2c1653ad552ce3 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_fa2c1653ad552ce3 =
  RIP.fromFFIType hs_bindgen_fa2c1653ad552ce3_base

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
  hs_bindgen_fa2c1653ad552ce3

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_3b5ff7435c3e66f4" hs_bindgen_3b5ff7435c3e66f4_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_3b5ff7435c3e66f4 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3b5ff7435c3e66f4 =
  RIP.fromFFIType hs_bindgen_3b5ff7435c3e66f4_base

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
  hs_bindgen_3b5ff7435c3e66f4

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_22e54b5a04e2f8f2" hs_bindgen_22e54b5a04e2f8f2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_get_version@
hs_bindgen_22e54b5a04e2f8f2 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_22e54b5a04e2f8f2 =
  RIP.fromFFIType hs_bindgen_22e54b5a04e2f8f2_base

{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_seat_v1_get_version =
  hs_bindgen_22e54b5a04e2f8f2

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_437b037dc1e42ffd" hs_bindgen_437b037dc1e42ffd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_LayerShellV1_Generated_Bindings.River.LayerShellV1.Generated_Safe_river_layer_shell_seat_v1_destroy@
hs_bindgen_437b037dc1e42ffd ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO ()
hs_bindgen_437b037dc1e42ffd =
  RIP.fromFFIType hs_bindgen_437b037dc1e42ffd_base

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
  hs_bindgen_437b037dc1e42ffd

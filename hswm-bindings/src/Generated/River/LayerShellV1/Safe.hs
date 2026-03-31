{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LayerShellV1.Safe
    ( Generated.River.LayerShellV1.Safe.river_layer_shell_v1_set_user_data
    , Generated.River.LayerShellV1.Safe.river_layer_shell_v1_get_user_data
    , Generated.River.LayerShellV1.Safe.river_layer_shell_v1_get_version
    , Generated.River.LayerShellV1.Safe.river_layer_shell_v1_destroy
    , Generated.River.LayerShellV1.Safe.river_layer_shell_v1_get_output
    , Generated.River.LayerShellV1.Safe.river_layer_shell_v1_get_seat
    , Generated.River.LayerShellV1.Safe.river_layer_shell_output_v1_add_listener
    , Generated.River.LayerShellV1.Safe.river_layer_shell_output_v1_set_user_data
    , Generated.River.LayerShellV1.Safe.river_layer_shell_output_v1_get_user_data
    , Generated.River.LayerShellV1.Safe.river_layer_shell_output_v1_get_version
    , Generated.River.LayerShellV1.Safe.river_layer_shell_output_v1_destroy
    , Generated.River.LayerShellV1.Safe.river_layer_shell_output_v1_set_default
    , Generated.River.LayerShellV1.Safe.river_layer_shell_seat_v1_add_listener
    , Generated.River.LayerShellV1.Safe.river_layer_shell_seat_v1_set_user_data
    , Generated.River.LayerShellV1.Safe.river_layer_shell_seat_v1_get_user_data
    , Generated.River.LayerShellV1.Safe.river_layer_shell_seat_v1_get_version
    , Generated.River.LayerShellV1.Safe.river_layer_shell_seat_v1_destroy
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
  , "void hs_bindgen_3392afd08a00f2b7 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0a98a6565485ba58 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_daeb3564d94be18f ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_2d1e017567f8a8be ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct river_layer_shell_output_v1 *hs_bindgen_436a49b077a0a31d ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_output)(arg1, arg2);"
  , "}"
  , "struct river_layer_shell_seat_v1 *hs_bindgen_d4f8225109f73848 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_56e04aaa5e6d9c76 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7b691c1af483910b ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_60cc8699104dc8b5 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_45942ac602c13f37 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_998eddfbba7ea84e ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_7edf1a45c772fdc9 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_default)(arg1);"
  , "}"
  , "signed int hs_bindgen_a0eda71ab3f107b9 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_aebae90f7990c70f ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0b683fe2cdf77576 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_186bdb31880be4ed ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_95de692498d2451e ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_set_user_data@
foreign import ccall safe "hs_bindgen_3392afd08a00f2b7" hs_bindgen_3392afd08a00f2b7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_set_user_data@
hs_bindgen_3392afd08a00f2b7 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_3392afd08a00f2b7 =
  RIP.fromFFIType hs_bindgen_3392afd08a00f2b7_base

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
  hs_bindgen_3392afd08a00f2b7

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_get_user_data@
foreign import ccall safe "hs_bindgen_0a98a6565485ba58" hs_bindgen_0a98a6565485ba58_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_get_user_data@
hs_bindgen_0a98a6565485ba58 ::
     RIP.Ptr River_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0a98a6565485ba58 =
  RIP.fromFFIType hs_bindgen_0a98a6565485ba58_base

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
  hs_bindgen_0a98a6565485ba58

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_get_version@
foreign import ccall safe "hs_bindgen_daeb3564d94be18f" hs_bindgen_daeb3564d94be18f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_get_version@
hs_bindgen_daeb3564d94be18f ::
     RIP.Ptr River_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_daeb3564d94be18f =
  RIP.fromFFIType hs_bindgen_daeb3564d94be18f_base

{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_v1_get_version =
  hs_bindgen_daeb3564d94be18f

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_destroy@
foreign import ccall safe "hs_bindgen_2d1e017567f8a8be" hs_bindgen_2d1e017567f8a8be_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_destroy@
hs_bindgen_2d1e017567f8a8be ::
     RIP.Ptr River_layer_shell_v1
  -> IO ()
hs_bindgen_2d1e017567f8a8be =
  RIP.fromFFIType hs_bindgen_2d1e017567f8a8be_base

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
  hs_bindgen_2d1e017567f8a8be

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_get_output@
foreign import ccall safe "hs_bindgen_436a49b077a0a31d" hs_bindgen_436a49b077a0a31d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_get_output@
hs_bindgen_436a49b077a0a31d ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr Generated.River.WindowManagementV1.River_output_v1
  -> IO (RIP.Ptr River_layer_shell_output_v1)
hs_bindgen_436a49b077a0a31d =
  RIP.fromFFIType hs_bindgen_436a49b077a0a31d_base

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
  -> RIP.Ptr Generated.River.WindowManagementV1.River_output_v1
     -- ^ __C declaration:__ @output@
  -> IO (RIP.Ptr River_layer_shell_output_v1)
river_layer_shell_v1_get_output =
  hs_bindgen_436a49b077a0a31d

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_get_seat@
foreign import ccall safe "hs_bindgen_d4f8225109f73848" hs_bindgen_d4f8225109f73848_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_v1_get_seat@
hs_bindgen_d4f8225109f73848 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr Generated.River.WindowManagementV1.River_seat_v1
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
hs_bindgen_d4f8225109f73848 =
  RIP.fromFFIType hs_bindgen_d4f8225109f73848_base

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
  -> RIP.Ptr Generated.River.WindowManagementV1.River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
river_layer_shell_v1_get_seat =
  hs_bindgen_d4f8225109f73848

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_add_listener@
foreign import ccall safe "hs_bindgen_56e04aaa5e6d9c76" hs_bindgen_56e04aaa5e6d9c76_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_add_listener@
hs_bindgen_56e04aaa5e6d9c76 ::
     RIP.Ptr River_layer_shell_output_v1
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_56e04aaa5e6d9c76 =
  RIP.fromFFIType hs_bindgen_56e04aaa5e6d9c76_base

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
  hs_bindgen_56e04aaa5e6d9c76

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_set_user_data@
foreign import ccall safe "hs_bindgen_7b691c1af483910b" hs_bindgen_7b691c1af483910b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_set_user_data@
hs_bindgen_7b691c1af483910b ::
     RIP.Ptr River_layer_shell_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7b691c1af483910b =
  RIP.fromFFIType hs_bindgen_7b691c1af483910b_base

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
  hs_bindgen_7b691c1af483910b

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_get_user_data@
foreign import ccall safe "hs_bindgen_60cc8699104dc8b5" hs_bindgen_60cc8699104dc8b5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_get_user_data@
hs_bindgen_60cc8699104dc8b5 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_60cc8699104dc8b5 =
  RIP.fromFFIType hs_bindgen_60cc8699104dc8b5_base

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
  hs_bindgen_60cc8699104dc8b5

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_get_version@
foreign import ccall safe "hs_bindgen_45942ac602c13f37" hs_bindgen_45942ac602c13f37_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_get_version@
hs_bindgen_45942ac602c13f37 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_45942ac602c13f37 =
  RIP.fromFFIType hs_bindgen_45942ac602c13f37_base

{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_output_v1_get_version =
  hs_bindgen_45942ac602c13f37

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_destroy@
foreign import ccall safe "hs_bindgen_998eddfbba7ea84e" hs_bindgen_998eddfbba7ea84e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_destroy@
hs_bindgen_998eddfbba7ea84e ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_998eddfbba7ea84e =
  RIP.fromFFIType hs_bindgen_998eddfbba7ea84e_base

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
  hs_bindgen_998eddfbba7ea84e

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_set_default@
foreign import ccall safe "hs_bindgen_7edf1a45c772fdc9" hs_bindgen_7edf1a45c772fdc9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_output_v1_set_default@
hs_bindgen_7edf1a45c772fdc9 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_7edf1a45c772fdc9 =
  RIP.fromFFIType hs_bindgen_7edf1a45c772fdc9_base

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
  hs_bindgen_7edf1a45c772fdc9

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_a0eda71ab3f107b9" hs_bindgen_a0eda71ab3f107b9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_add_listener@
hs_bindgen_a0eda71ab3f107b9 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_a0eda71ab3f107b9 =
  RIP.fromFFIType hs_bindgen_a0eda71ab3f107b9_base

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
  hs_bindgen_a0eda71ab3f107b9

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_aebae90f7990c70f" hs_bindgen_aebae90f7990c70f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_aebae90f7990c70f ::
     RIP.Ptr River_layer_shell_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_aebae90f7990c70f =
  RIP.fromFFIType hs_bindgen_aebae90f7990c70f_base

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
  hs_bindgen_aebae90f7990c70f

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_0b683fe2cdf77576" hs_bindgen_0b683fe2cdf77576_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_0b683fe2cdf77576 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0b683fe2cdf77576 =
  RIP.fromFFIType hs_bindgen_0b683fe2cdf77576_base

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
  hs_bindgen_0b683fe2cdf77576

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_186bdb31880be4ed" hs_bindgen_186bdb31880be4ed_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_get_version@
hs_bindgen_186bdb31880be4ed ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_186bdb31880be4ed =
  RIP.fromFFIType hs_bindgen_186bdb31880be4ed_base

{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_seat_v1_get_version =
  hs_bindgen_186bdb31880be4ed

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_95de692498d2451e" hs_bindgen_95de692498d2451e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Safe_river_layer_shell_seat_v1_destroy@
hs_bindgen_95de692498d2451e ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO ()
hs_bindgen_95de692498d2451e =
  RIP.fromFFIType hs_bindgen_95de692498d2451e_base

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
  hs_bindgen_95de692498d2451e

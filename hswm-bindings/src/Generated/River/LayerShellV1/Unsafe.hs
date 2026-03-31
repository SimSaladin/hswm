{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LayerShellV1.Unsafe
    ( Generated.River.LayerShellV1.Unsafe.river_layer_shell_v1_set_user_data
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_v1_get_user_data
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_v1_get_version
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_v1_destroy
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_v1_get_output
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_v1_get_seat
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_output_v1_add_listener
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_output_v1_set_user_data
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_output_v1_get_user_data
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_output_v1_get_version
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_output_v1_destroy
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_output_v1_set_default
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_seat_v1_add_listener
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_seat_v1_set_user_data
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_seat_v1_get_user_data
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_seat_v1_get_version
    , Generated.River.LayerShellV1.Unsafe.river_layer_shell_seat_v1_destroy
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
  , "void hs_bindgen_1139fd59ef7e11d8 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_873fc0cb97c729e1 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_537256d63d1442b5 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_419266cf926d33b6 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct river_layer_shell_output_v1 *hs_bindgen_6ed41b64c8ca326c ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_output)(arg1, arg2);"
  , "}"
  , "struct river_layer_shell_seat_v1 *hs_bindgen_6eec3b9ab2bda742 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ae69bff2fc48739e ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_8885f4308e58073a ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5fced100936b4e6b ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_317210046d113083 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_72ea9fbc074b2fb9 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_5c42fd0df5337e42 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_default)(arg1);"
  , "}"
  , "signed int hs_bindgen_8f1532ec0dee00e6 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_54942a217a91c7f6 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ca0da23de502a462 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6f5ccde42ff389eb ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b9f74d2e0f2ec8a8 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_1139fd59ef7e11d8" hs_bindgen_1139fd59ef7e11d8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_set_user_data@
hs_bindgen_1139fd59ef7e11d8 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1139fd59ef7e11d8 =
  RIP.fromFFIType hs_bindgen_1139fd59ef7e11d8_base

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
  hs_bindgen_1139fd59ef7e11d8

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_873fc0cb97c729e1" hs_bindgen_873fc0cb97c729e1_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_get_user_data@
hs_bindgen_873fc0cb97c729e1 ::
     RIP.Ptr River_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_873fc0cb97c729e1 =
  RIP.fromFFIType hs_bindgen_873fc0cb97c729e1_base

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
  hs_bindgen_873fc0cb97c729e1

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_537256d63d1442b5" hs_bindgen_537256d63d1442b5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_get_version@
hs_bindgen_537256d63d1442b5 ::
     RIP.Ptr River_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_537256d63d1442b5 =
  RIP.fromFFIType hs_bindgen_537256d63d1442b5_base

{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_v1_get_version =
  hs_bindgen_537256d63d1442b5

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_419266cf926d33b6" hs_bindgen_419266cf926d33b6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_destroy@
hs_bindgen_419266cf926d33b6 ::
     RIP.Ptr River_layer_shell_v1
  -> IO ()
hs_bindgen_419266cf926d33b6 =
  RIP.fromFFIType hs_bindgen_419266cf926d33b6_base

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
  hs_bindgen_419266cf926d33b6

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_get_output@
foreign import ccall unsafe "hs_bindgen_6ed41b64c8ca326c" hs_bindgen_6ed41b64c8ca326c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_get_output@
hs_bindgen_6ed41b64c8ca326c ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr Generated.River.WindowManagementV1.River_output_v1
  -> IO (RIP.Ptr River_layer_shell_output_v1)
hs_bindgen_6ed41b64c8ca326c =
  RIP.fromFFIType hs_bindgen_6ed41b64c8ca326c_base

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
  hs_bindgen_6ed41b64c8ca326c

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_6eec3b9ab2bda742" hs_bindgen_6eec3b9ab2bda742_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_v1_get_seat@
hs_bindgen_6eec3b9ab2bda742 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr Generated.River.WindowManagementV1.River_seat_v1
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
hs_bindgen_6eec3b9ab2bda742 =
  RIP.fromFFIType hs_bindgen_6eec3b9ab2bda742_base

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
  hs_bindgen_6eec3b9ab2bda742

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_ae69bff2fc48739e" hs_bindgen_ae69bff2fc48739e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_add_listener@
hs_bindgen_ae69bff2fc48739e ::
     RIP.Ptr River_layer_shell_output_v1
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ae69bff2fc48739e =
  RIP.fromFFIType hs_bindgen_ae69bff2fc48739e_base

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
  hs_bindgen_ae69bff2fc48739e

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_8885f4308e58073a" hs_bindgen_8885f4308e58073a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_set_user_data@
hs_bindgen_8885f4308e58073a ::
     RIP.Ptr River_layer_shell_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8885f4308e58073a =
  RIP.fromFFIType hs_bindgen_8885f4308e58073a_base

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
  hs_bindgen_8885f4308e58073a

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_5fced100936b4e6b" hs_bindgen_5fced100936b4e6b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_get_user_data@
hs_bindgen_5fced100936b4e6b ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5fced100936b4e6b =
  RIP.fromFFIType hs_bindgen_5fced100936b4e6b_base

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
  hs_bindgen_5fced100936b4e6b

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_317210046d113083" hs_bindgen_317210046d113083_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_get_version@
hs_bindgen_317210046d113083 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_317210046d113083 =
  RIP.fromFFIType hs_bindgen_317210046d113083_base

{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_output_v1_get_version =
  hs_bindgen_317210046d113083

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_72ea9fbc074b2fb9" hs_bindgen_72ea9fbc074b2fb9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_destroy@
hs_bindgen_72ea9fbc074b2fb9 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_72ea9fbc074b2fb9 =
  RIP.fromFFIType hs_bindgen_72ea9fbc074b2fb9_base

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
  hs_bindgen_72ea9fbc074b2fb9

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_set_default@
foreign import ccall unsafe "hs_bindgen_5c42fd0df5337e42" hs_bindgen_5c42fd0df5337e42_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_output_v1_set_default@
hs_bindgen_5c42fd0df5337e42 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_5c42fd0df5337e42 =
  RIP.fromFFIType hs_bindgen_5c42fd0df5337e42_base

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
  hs_bindgen_5c42fd0df5337e42

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_8f1532ec0dee00e6" hs_bindgen_8f1532ec0dee00e6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_add_listener@
hs_bindgen_8f1532ec0dee00e6 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8f1532ec0dee00e6 =
  RIP.fromFFIType hs_bindgen_8f1532ec0dee00e6_base

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
  hs_bindgen_8f1532ec0dee00e6

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_54942a217a91c7f6" hs_bindgen_54942a217a91c7f6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_54942a217a91c7f6 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_54942a217a91c7f6 =
  RIP.fromFFIType hs_bindgen_54942a217a91c7f6_base

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
  hs_bindgen_54942a217a91c7f6

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ca0da23de502a462" hs_bindgen_ca0da23de502a462_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_ca0da23de502a462 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ca0da23de502a462 =
  RIP.fromFFIType hs_bindgen_ca0da23de502a462_base

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
  hs_bindgen_ca0da23de502a462

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_6f5ccde42ff389eb" hs_bindgen_6f5ccde42ff389eb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_get_version@
hs_bindgen_6f5ccde42ff389eb ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6f5ccde42ff389eb =
  RIP.fromFFIType hs_bindgen_6f5ccde42ff389eb_base

{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_seat_v1_get_version =
  hs_bindgen_6f5ccde42ff389eb

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_b9f74d2e0f2ec8a8" hs_bindgen_b9f74d2e0f2ec8a8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayerShellV1_Generated.River.LayerShellV1_Unsafe_river_layer_shell_seat_v1_destroy@
hs_bindgen_b9f74d2e0f2ec8a8 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO ()
hs_bindgen_b9f74d2e0f2ec8a8 =
  RIP.fromFFIType hs_bindgen_b9f74d2e0f2ec8a8_base

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
  hs_bindgen_b9f74d2e0f2ec8a8

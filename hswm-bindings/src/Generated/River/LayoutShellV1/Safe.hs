{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LayoutShellV1.Safe
    ( Generated.River.LayoutShellV1.Safe.river_layer_shell_v1_set_user_data
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_v1_get_user_data
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_v1_get_version
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_v1_destroy
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_v1_get_output
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_v1_get_seat
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_output_v1_add_listener
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_output_v1_set_user_data
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_output_v1_get_user_data
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_output_v1_get_version
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_output_v1_destroy
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_output_v1_set_default
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_seat_v1_add_listener
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_seat_v1_set_user_data
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_seat_v1_get_user_data
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_seat_v1_get_version
    , Generated.River.LayoutShellV1.Safe.river_layer_shell_seat_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.LayoutShellV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-layer-shell-v1-client-protocol.h>"
  , "void hs_bindgen_78878904bbf35fbd ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_30250d0aecb0f04f ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_35d0e80747125705 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b0147e40fecd09e8 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct river_layer_shell_output_v1 *hs_bindgen_eea1136fa0e09bbb ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_output)(arg1, arg2);"
  , "}"
  , "struct river_layer_shell_seat_v1 *hs_bindgen_f2a67327d0332cb3 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_36ed917ca81d9aa7 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b6fb47d57f8d5c2f ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a293881c16b9cb6b ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ed4c4e219d0fadaa ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9e46cbd54e810e38 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_69d0daaafd1a6349 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_default)(arg1);"
  , "}"
  , "signed int hs_bindgen_56fdb642a39dd198 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_42dac0f92250066d ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_bf16c1fd7e8ff9f5 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_20c2c6b09ada5b17 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_30472c87a8bbd75d ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_set_user_data@
foreign import ccall safe "hs_bindgen_78878904bbf35fbd" hs_bindgen_78878904bbf35fbd_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_set_user_data@
hs_bindgen_78878904bbf35fbd ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_78878904bbf35fbd =
  RIP.fromFFIType hs_bindgen_78878904bbf35fbd_base

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
  hs_bindgen_78878904bbf35fbd

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_user_data@
foreign import ccall safe "hs_bindgen_30250d0aecb0f04f" hs_bindgen_30250d0aecb0f04f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_user_data@
hs_bindgen_30250d0aecb0f04f ::
     RIP.Ptr River_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_30250d0aecb0f04f =
  RIP.fromFFIType hs_bindgen_30250d0aecb0f04f_base

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
  hs_bindgen_30250d0aecb0f04f

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_version@
foreign import ccall safe "hs_bindgen_35d0e80747125705" hs_bindgen_35d0e80747125705_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_version@
hs_bindgen_35d0e80747125705 ::
     RIP.Ptr River_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_35d0e80747125705 =
  RIP.fromFFIType hs_bindgen_35d0e80747125705_base

{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_v1_get_version =
  hs_bindgen_35d0e80747125705

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_destroy@
foreign import ccall safe "hs_bindgen_b0147e40fecd09e8" hs_bindgen_b0147e40fecd09e8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_destroy@
hs_bindgen_b0147e40fecd09e8 ::
     RIP.Ptr River_layer_shell_v1
  -> IO ()
hs_bindgen_b0147e40fecd09e8 =
  RIP.fromFFIType hs_bindgen_b0147e40fecd09e8_base

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
  hs_bindgen_b0147e40fecd09e8

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_output@
foreign import ccall safe "hs_bindgen_eea1136fa0e09bbb" hs_bindgen_eea1136fa0e09bbb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_output@
hs_bindgen_eea1136fa0e09bbb ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr River_output_v1
  -> IO (RIP.Ptr River_layer_shell_output_v1)
hs_bindgen_eea1136fa0e09bbb =
  RIP.fromFFIType hs_bindgen_eea1136fa0e09bbb_base

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
  -> RIP.Ptr River_output_v1
     -- ^ __C declaration:__ @output@
  -> IO (RIP.Ptr River_layer_shell_output_v1)
river_layer_shell_v1_get_output =
  hs_bindgen_eea1136fa0e09bbb

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_seat@
foreign import ccall safe "hs_bindgen_f2a67327d0332cb3" hs_bindgen_f2a67327d0332cb3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_seat@
hs_bindgen_f2a67327d0332cb3 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
hs_bindgen_f2a67327d0332cb3 =
  RIP.fromFFIType hs_bindgen_f2a67327d0332cb3_base

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
  -> RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
river_layer_shell_v1_get_seat =
  hs_bindgen_f2a67327d0332cb3

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_add_listener@
foreign import ccall safe "hs_bindgen_36ed917ca81d9aa7" hs_bindgen_36ed917ca81d9aa7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_add_listener@
hs_bindgen_36ed917ca81d9aa7 ::
     RIP.Ptr River_layer_shell_output_v1
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_36ed917ca81d9aa7 =
  RIP.fromFFIType hs_bindgen_36ed917ca81d9aa7_base

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
  hs_bindgen_36ed917ca81d9aa7

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_set_user_data@
foreign import ccall safe "hs_bindgen_b6fb47d57f8d5c2f" hs_bindgen_b6fb47d57f8d5c2f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_set_user_data@
hs_bindgen_b6fb47d57f8d5c2f ::
     RIP.Ptr River_layer_shell_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b6fb47d57f8d5c2f =
  RIP.fromFFIType hs_bindgen_b6fb47d57f8d5c2f_base

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
  hs_bindgen_b6fb47d57f8d5c2f

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_get_user_data@
foreign import ccall safe "hs_bindgen_a293881c16b9cb6b" hs_bindgen_a293881c16b9cb6b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_get_user_data@
hs_bindgen_a293881c16b9cb6b ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a293881c16b9cb6b =
  RIP.fromFFIType hs_bindgen_a293881c16b9cb6b_base

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
  hs_bindgen_a293881c16b9cb6b

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_get_version@
foreign import ccall safe "hs_bindgen_ed4c4e219d0fadaa" hs_bindgen_ed4c4e219d0fadaa_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_get_version@
hs_bindgen_ed4c4e219d0fadaa ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ed4c4e219d0fadaa =
  RIP.fromFFIType hs_bindgen_ed4c4e219d0fadaa_base

{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_output_v1_get_version =
  hs_bindgen_ed4c4e219d0fadaa

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_destroy@
foreign import ccall safe "hs_bindgen_9e46cbd54e810e38" hs_bindgen_9e46cbd54e810e38_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_destroy@
hs_bindgen_9e46cbd54e810e38 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_9e46cbd54e810e38 =
  RIP.fromFFIType hs_bindgen_9e46cbd54e810e38_base

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
  hs_bindgen_9e46cbd54e810e38

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_set_default@
foreign import ccall safe "hs_bindgen_69d0daaafd1a6349" hs_bindgen_69d0daaafd1a6349_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_set_default@
hs_bindgen_69d0daaafd1a6349 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_69d0daaafd1a6349 =
  RIP.fromFFIType hs_bindgen_69d0daaafd1a6349_base

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
  hs_bindgen_69d0daaafd1a6349

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_56fdb642a39dd198" hs_bindgen_56fdb642a39dd198_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_add_listener@
hs_bindgen_56fdb642a39dd198 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_56fdb642a39dd198 =
  RIP.fromFFIType hs_bindgen_56fdb642a39dd198_base

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
  hs_bindgen_56fdb642a39dd198

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_42dac0f92250066d" hs_bindgen_42dac0f92250066d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_42dac0f92250066d ::
     RIP.Ptr River_layer_shell_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_42dac0f92250066d =
  RIP.fromFFIType hs_bindgen_42dac0f92250066d_base

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
  hs_bindgen_42dac0f92250066d

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_bf16c1fd7e8ff9f5" hs_bindgen_bf16c1fd7e8ff9f5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_bf16c1fd7e8ff9f5 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_bf16c1fd7e8ff9f5 =
  RIP.fromFFIType hs_bindgen_bf16c1fd7e8ff9f5_base

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
  hs_bindgen_bf16c1fd7e8ff9f5

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_20c2c6b09ada5b17" hs_bindgen_20c2c6b09ada5b17_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_get_version@
hs_bindgen_20c2c6b09ada5b17 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_20c2c6b09ada5b17 =
  RIP.fromFFIType hs_bindgen_20c2c6b09ada5b17_base

{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_seat_v1_get_version =
  hs_bindgen_20c2c6b09ada5b17

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_30472c87a8bbd75d" hs_bindgen_30472c87a8bbd75d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_destroy@
hs_bindgen_30472c87a8bbd75d ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO ()
hs_bindgen_30472c87a8bbd75d =
  RIP.fromFFIType hs_bindgen_30472c87a8bbd75d_base

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
  hs_bindgen_30472c87a8bbd75d

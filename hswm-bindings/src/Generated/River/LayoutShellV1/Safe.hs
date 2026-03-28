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
  , "void hs_bindgen_e23900a99824f214 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_993c2222ad60ef88 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c636ed822ca03686 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_171742a2a96b5c94 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct river_layer_shell_output_v1 *hs_bindgen_f0c8c1a3e5edd7c2 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_output)(arg1, arg2);"
  , "}"
  , "struct river_layer_shell_seat_v1 *hs_bindgen_61218fa55dd20694 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ae16df063676961f ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_821b7456919066e0 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2746d0e49d70d796 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_667ccea8b6b64af6 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ba366e1aa3375bb2 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_48dcc702c23fc260 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_default)(arg1);"
  , "}"
  , "signed int hs_bindgen_f84fa5ab4aba165b ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_99df98e1501e9b21 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_180125ba6dcb00d3 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_45625588c54c67ea ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4249b798d7b69cd2 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_set_user_data@
foreign import ccall safe "hs_bindgen_e23900a99824f214" hs_bindgen_e23900a99824f214_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_set_user_data@
hs_bindgen_e23900a99824f214 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e23900a99824f214 =
  RIP.fromFFIType hs_bindgen_e23900a99824f214_base

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
  hs_bindgen_e23900a99824f214

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_user_data@
foreign import ccall safe "hs_bindgen_993c2222ad60ef88" hs_bindgen_993c2222ad60ef88_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_user_data@
hs_bindgen_993c2222ad60ef88 ::
     RIP.Ptr River_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_993c2222ad60ef88 =
  RIP.fromFFIType hs_bindgen_993c2222ad60ef88_base

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
  hs_bindgen_993c2222ad60ef88

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_version@
foreign import ccall safe "hs_bindgen_c636ed822ca03686" hs_bindgen_c636ed822ca03686_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_version@
hs_bindgen_c636ed822ca03686 ::
     RIP.Ptr River_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c636ed822ca03686 =
  RIP.fromFFIType hs_bindgen_c636ed822ca03686_base

{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_v1_get_version =
  hs_bindgen_c636ed822ca03686

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_destroy@
foreign import ccall safe "hs_bindgen_171742a2a96b5c94" hs_bindgen_171742a2a96b5c94_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_destroy@
hs_bindgen_171742a2a96b5c94 ::
     RIP.Ptr River_layer_shell_v1
  -> IO ()
hs_bindgen_171742a2a96b5c94 =
  RIP.fromFFIType hs_bindgen_171742a2a96b5c94_base

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
  hs_bindgen_171742a2a96b5c94

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_output@
foreign import ccall safe "hs_bindgen_f0c8c1a3e5edd7c2" hs_bindgen_f0c8c1a3e5edd7c2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_output@
hs_bindgen_f0c8c1a3e5edd7c2 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr River_output_v1
  -> IO (RIP.Ptr River_layer_shell_output_v1)
hs_bindgen_f0c8c1a3e5edd7c2 =
  RIP.fromFFIType hs_bindgen_f0c8c1a3e5edd7c2_base

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
  hs_bindgen_f0c8c1a3e5edd7c2

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_seat@
foreign import ccall safe "hs_bindgen_61218fa55dd20694" hs_bindgen_61218fa55dd20694_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_v1_get_seat@
hs_bindgen_61218fa55dd20694 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
hs_bindgen_61218fa55dd20694 =
  RIP.fromFFIType hs_bindgen_61218fa55dd20694_base

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
  hs_bindgen_61218fa55dd20694

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_add_listener@
foreign import ccall safe "hs_bindgen_ae16df063676961f" hs_bindgen_ae16df063676961f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_add_listener@
hs_bindgen_ae16df063676961f ::
     RIP.Ptr River_layer_shell_output_v1
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ae16df063676961f =
  RIP.fromFFIType hs_bindgen_ae16df063676961f_base

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
  hs_bindgen_ae16df063676961f

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_set_user_data@
foreign import ccall safe "hs_bindgen_821b7456919066e0" hs_bindgen_821b7456919066e0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_set_user_data@
hs_bindgen_821b7456919066e0 ::
     RIP.Ptr River_layer_shell_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_821b7456919066e0 =
  RIP.fromFFIType hs_bindgen_821b7456919066e0_base

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
  hs_bindgen_821b7456919066e0

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_get_user_data@
foreign import ccall safe "hs_bindgen_2746d0e49d70d796" hs_bindgen_2746d0e49d70d796_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_get_user_data@
hs_bindgen_2746d0e49d70d796 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2746d0e49d70d796 =
  RIP.fromFFIType hs_bindgen_2746d0e49d70d796_base

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
  hs_bindgen_2746d0e49d70d796

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_get_version@
foreign import ccall safe "hs_bindgen_667ccea8b6b64af6" hs_bindgen_667ccea8b6b64af6_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_get_version@
hs_bindgen_667ccea8b6b64af6 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_667ccea8b6b64af6 =
  RIP.fromFFIType hs_bindgen_667ccea8b6b64af6_base

{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_output_v1_get_version =
  hs_bindgen_667ccea8b6b64af6

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_destroy@
foreign import ccall safe "hs_bindgen_ba366e1aa3375bb2" hs_bindgen_ba366e1aa3375bb2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_destroy@
hs_bindgen_ba366e1aa3375bb2 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_ba366e1aa3375bb2 =
  RIP.fromFFIType hs_bindgen_ba366e1aa3375bb2_base

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
  hs_bindgen_ba366e1aa3375bb2

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_set_default@
foreign import ccall safe "hs_bindgen_48dcc702c23fc260" hs_bindgen_48dcc702c23fc260_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_output_v1_set_default@
hs_bindgen_48dcc702c23fc260 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_48dcc702c23fc260 =
  RIP.fromFFIType hs_bindgen_48dcc702c23fc260_base

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
  hs_bindgen_48dcc702c23fc260

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_f84fa5ab4aba165b" hs_bindgen_f84fa5ab4aba165b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_add_listener@
hs_bindgen_f84fa5ab4aba165b ::
     RIP.Ptr River_layer_shell_seat_v1
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_f84fa5ab4aba165b =
  RIP.fromFFIType hs_bindgen_f84fa5ab4aba165b_base

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
  hs_bindgen_f84fa5ab4aba165b

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_99df98e1501e9b21" hs_bindgen_99df98e1501e9b21_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_99df98e1501e9b21 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_99df98e1501e9b21 =
  RIP.fromFFIType hs_bindgen_99df98e1501e9b21_base

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
  hs_bindgen_99df98e1501e9b21

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_180125ba6dcb00d3" hs_bindgen_180125ba6dcb00d3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_180125ba6dcb00d3 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_180125ba6dcb00d3 =
  RIP.fromFFIType hs_bindgen_180125ba6dcb00d3_base

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
  hs_bindgen_180125ba6dcb00d3

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_45625588c54c67ea" hs_bindgen_45625588c54c67ea_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_get_version@
hs_bindgen_45625588c54c67ea ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_45625588c54c67ea =
  RIP.fromFFIType hs_bindgen_45625588c54c67ea_base

{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_seat_v1_get_version =
  hs_bindgen_45625588c54c67ea

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_4249b798d7b69cd2" hs_bindgen_4249b798d7b69cd2_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Safe_river_layer_shell_seat_v1_destroy@
hs_bindgen_4249b798d7b69cd2 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO ()
hs_bindgen_4249b798d7b69cd2 =
  RIP.fromFFIType hs_bindgen_4249b798d7b69cd2_base

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
  hs_bindgen_4249b798d7b69cd2

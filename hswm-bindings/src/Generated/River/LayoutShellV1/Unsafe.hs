{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LayoutShellV1.Unsafe
    ( Generated.River.LayoutShellV1.Unsafe.river_layer_shell_v1_set_user_data
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_v1_get_user_data
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_v1_get_version
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_v1_destroy
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_v1_get_output
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_v1_get_seat
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_output_v1_add_listener
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_output_v1_set_user_data
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_output_v1_get_user_data
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_output_v1_get_version
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_output_v1_destroy
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_output_v1_set_default
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_seat_v1_add_listener
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_seat_v1_set_user_data
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_seat_v1_get_user_data
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_seat_v1_get_version
    , Generated.River.LayoutShellV1.Unsafe.river_layer_shell_seat_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.LayoutShellV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-layer-shell-v1-client-protocol.h>"
  , "void hs_bindgen_a92edeae1382161d ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2e6890c1d51b3039 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8470aea8c3ee7f57 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_596e4bc36574cc36 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct river_layer_shell_output_v1 *hs_bindgen_3d6f397e5b89fb91 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_output)(arg1, arg2);"
  , "}"
  , "struct river_layer_shell_seat_v1 *hs_bindgen_2ada3121ff8d1792 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_dbea121c0a2cb813 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_35f22f3cb2a2d1b1 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_8bb878c1e7abb625 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_35434257c2d122bd ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b8957389db222e39 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3ee3b2412ef7f010 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_default)(arg1);"
  , "}"
  , "signed int hs_bindgen_7b71c3b0ff9073d6 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ad69414ecd1a016c ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c35c83aaa03b7cb7 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_de1933580c5653d1 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_68cc4a426026b5cb ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_a92edeae1382161d" hs_bindgen_a92edeae1382161d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_set_user_data@
hs_bindgen_a92edeae1382161d ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a92edeae1382161d =
  RIP.fromFFIType hs_bindgen_a92edeae1382161d_base

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
  hs_bindgen_a92edeae1382161d

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_2e6890c1d51b3039" hs_bindgen_2e6890c1d51b3039_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_user_data@
hs_bindgen_2e6890c1d51b3039 ::
     RIP.Ptr River_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2e6890c1d51b3039 =
  RIP.fromFFIType hs_bindgen_2e6890c1d51b3039_base

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
  hs_bindgen_2e6890c1d51b3039

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8470aea8c3ee7f57" hs_bindgen_8470aea8c3ee7f57_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_version@
hs_bindgen_8470aea8c3ee7f57 ::
     RIP.Ptr River_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8470aea8c3ee7f57 =
  RIP.fromFFIType hs_bindgen_8470aea8c3ee7f57_base

{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_v1_get_version =
  hs_bindgen_8470aea8c3ee7f57

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_596e4bc36574cc36" hs_bindgen_596e4bc36574cc36_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_destroy@
hs_bindgen_596e4bc36574cc36 ::
     RIP.Ptr River_layer_shell_v1
  -> IO ()
hs_bindgen_596e4bc36574cc36 =
  RIP.fromFFIType hs_bindgen_596e4bc36574cc36_base

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
  hs_bindgen_596e4bc36574cc36

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_output@
foreign import ccall unsafe "hs_bindgen_3d6f397e5b89fb91" hs_bindgen_3d6f397e5b89fb91_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_output@
hs_bindgen_3d6f397e5b89fb91 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr River_output_v1
  -> IO (RIP.Ptr River_layer_shell_output_v1)
hs_bindgen_3d6f397e5b89fb91 =
  RIP.fromFFIType hs_bindgen_3d6f397e5b89fb91_base

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
  hs_bindgen_3d6f397e5b89fb91

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_2ada3121ff8d1792" hs_bindgen_2ada3121ff8d1792_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_seat@
hs_bindgen_2ada3121ff8d1792 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
hs_bindgen_2ada3121ff8d1792 =
  RIP.fromFFIType hs_bindgen_2ada3121ff8d1792_base

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
  hs_bindgen_2ada3121ff8d1792

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_dbea121c0a2cb813" hs_bindgen_dbea121c0a2cb813_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_add_listener@
hs_bindgen_dbea121c0a2cb813 ::
     RIP.Ptr River_layer_shell_output_v1
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_dbea121c0a2cb813 =
  RIP.fromFFIType hs_bindgen_dbea121c0a2cb813_base

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
  hs_bindgen_dbea121c0a2cb813

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_35f22f3cb2a2d1b1" hs_bindgen_35f22f3cb2a2d1b1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_set_user_data@
hs_bindgen_35f22f3cb2a2d1b1 ::
     RIP.Ptr River_layer_shell_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_35f22f3cb2a2d1b1 =
  RIP.fromFFIType hs_bindgen_35f22f3cb2a2d1b1_base

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
  hs_bindgen_35f22f3cb2a2d1b1

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_8bb878c1e7abb625" hs_bindgen_8bb878c1e7abb625_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_get_user_data@
hs_bindgen_8bb878c1e7abb625 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_8bb878c1e7abb625 =
  RIP.fromFFIType hs_bindgen_8bb878c1e7abb625_base

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
  hs_bindgen_8bb878c1e7abb625

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_35434257c2d122bd" hs_bindgen_35434257c2d122bd_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_get_version@
hs_bindgen_35434257c2d122bd ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_35434257c2d122bd =
  RIP.fromFFIType hs_bindgen_35434257c2d122bd_base

{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_output_v1_get_version =
  hs_bindgen_35434257c2d122bd

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_b8957389db222e39" hs_bindgen_b8957389db222e39_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_destroy@
hs_bindgen_b8957389db222e39 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_b8957389db222e39 =
  RIP.fromFFIType hs_bindgen_b8957389db222e39_base

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
  hs_bindgen_b8957389db222e39

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_set_default@
foreign import ccall unsafe "hs_bindgen_3ee3b2412ef7f010" hs_bindgen_3ee3b2412ef7f010_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_set_default@
hs_bindgen_3ee3b2412ef7f010 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_3ee3b2412ef7f010 =
  RIP.fromFFIType hs_bindgen_3ee3b2412ef7f010_base

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
  hs_bindgen_3ee3b2412ef7f010

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_7b71c3b0ff9073d6" hs_bindgen_7b71c3b0ff9073d6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_add_listener@
hs_bindgen_7b71c3b0ff9073d6 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7b71c3b0ff9073d6 =
  RIP.fromFFIType hs_bindgen_7b71c3b0ff9073d6_base

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
  hs_bindgen_7b71c3b0ff9073d6

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_ad69414ecd1a016c" hs_bindgen_ad69414ecd1a016c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_ad69414ecd1a016c ::
     RIP.Ptr River_layer_shell_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ad69414ecd1a016c =
  RIP.fromFFIType hs_bindgen_ad69414ecd1a016c_base

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
  hs_bindgen_ad69414ecd1a016c

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_c35c83aaa03b7cb7" hs_bindgen_c35c83aaa03b7cb7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_c35c83aaa03b7cb7 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c35c83aaa03b7cb7 =
  RIP.fromFFIType hs_bindgen_c35c83aaa03b7cb7_base

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
  hs_bindgen_c35c83aaa03b7cb7

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_de1933580c5653d1" hs_bindgen_de1933580c5653d1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_get_version@
hs_bindgen_de1933580c5653d1 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_de1933580c5653d1 =
  RIP.fromFFIType hs_bindgen_de1933580c5653d1_base

{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_seat_v1_get_version =
  hs_bindgen_de1933580c5653d1

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_68cc4a426026b5cb" hs_bindgen_68cc4a426026b5cb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_LayoutShellV1_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_destroy@
hs_bindgen_68cc4a426026b5cb ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO ()
hs_bindgen_68cc4a426026b5cb =
  RIP.fromFFIType hs_bindgen_68cc4a426026b5cb_base

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
  hs_bindgen_68cc4a426026b5cb

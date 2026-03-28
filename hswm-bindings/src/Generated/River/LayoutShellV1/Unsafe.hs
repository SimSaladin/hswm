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
  , "void hs_bindgen_9198dd4574f50300 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_32a5631e979c9547 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e5dfc26367014fb3 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_88a9ec0aca213ce5 ("
  , "  struct river_layer_shell_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_v1_destroy)(arg1);"
  , "}"
  , "struct river_layer_shell_output_v1 *hs_bindgen_d858bbc9d418e2cb ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_output_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_output)(arg1, arg2);"
  , "}"
  , "struct river_layer_shell_seat_v1 *hs_bindgen_10f375766a976c90 ("
  , "  struct river_layer_shell_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_layer_shell_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_98528cbb2ab45571 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  struct river_layer_shell_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4f6e042dfbcd2960 ("
  , "  struct river_layer_shell_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_64a6992cb4360c27 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_00e47b270c5e2491 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_3b3e148c29b41730 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3a9d6446394764e3 ("
  , "  struct river_layer_shell_output_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_output_v1_set_default)(arg1);"
  , "}"
  , "signed int hs_bindgen_617b759511d78c50 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  struct river_layer_shell_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9fb0f8892832ce80 ("
  , "  struct river_layer_shell_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c285e87d0ec5c185 ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d52b2e430259f8ba ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_layer_shell_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_af4b74900ac827dd ("
  , "  struct river_layer_shell_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_layer_shell_seat_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_9198dd4574f50300" hs_bindgen_9198dd4574f50300_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_set_user_data@
hs_bindgen_9198dd4574f50300 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9198dd4574f50300 =
  RIP.fromFFIType hs_bindgen_9198dd4574f50300_base

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
  hs_bindgen_9198dd4574f50300

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_32a5631e979c9547" hs_bindgen_32a5631e979c9547_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_user_data@
hs_bindgen_32a5631e979c9547 ::
     RIP.Ptr River_layer_shell_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_32a5631e979c9547 =
  RIP.fromFFIType hs_bindgen_32a5631e979c9547_base

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
  hs_bindgen_32a5631e979c9547

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_version@
foreign import ccall unsafe "hs_bindgen_e5dfc26367014fb3" hs_bindgen_e5dfc26367014fb3_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_version@
hs_bindgen_e5dfc26367014fb3 ::
     RIP.Ptr River_layer_shell_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e5dfc26367014fb3 =
  RIP.fromFFIType hs_bindgen_e5dfc26367014fb3_base

{-| __C declaration:__ @river_layer_shell_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 177:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_v1_get_version ::
     RIP.Ptr River_layer_shell_v1
     -- ^ __C declaration:__ @river_layer_shell_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_v1_get_version =
  hs_bindgen_e5dfc26367014fb3

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_destroy@
foreign import ccall unsafe "hs_bindgen_88a9ec0aca213ce5" hs_bindgen_88a9ec0aca213ce5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_destroy@
hs_bindgen_88a9ec0aca213ce5 ::
     RIP.Ptr River_layer_shell_v1
  -> IO ()
hs_bindgen_88a9ec0aca213ce5 =
  RIP.fromFFIType hs_bindgen_88a9ec0aca213ce5_base

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
  hs_bindgen_88a9ec0aca213ce5

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_output@
foreign import ccall unsafe "hs_bindgen_d858bbc9d418e2cb" hs_bindgen_d858bbc9d418e2cb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_output@
hs_bindgen_d858bbc9d418e2cb ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr River_output_v1
  -> IO (RIP.Ptr River_layer_shell_output_v1)
hs_bindgen_d858bbc9d418e2cb =
  RIP.fromFFIType hs_bindgen_d858bbc9d418e2cb_base

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
  hs_bindgen_d858bbc9d418e2cb

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_10f375766a976c90" hs_bindgen_10f375766a976c90_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_v1_get_seat@
hs_bindgen_10f375766a976c90 ::
     RIP.Ptr River_layer_shell_v1
  -> RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr River_layer_shell_seat_v1)
hs_bindgen_10f375766a976c90 =
  RIP.fromFFIType hs_bindgen_10f375766a976c90_base

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
  hs_bindgen_10f375766a976c90

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_98528cbb2ab45571" hs_bindgen_98528cbb2ab45571_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_add_listener@
hs_bindgen_98528cbb2ab45571 ::
     RIP.Ptr River_layer_shell_output_v1
  -> PtrConst.PtrConst River_layer_shell_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_98528cbb2ab45571 =
  RIP.fromFFIType hs_bindgen_98528cbb2ab45571_base

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
  hs_bindgen_98528cbb2ab45571

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_4f6e042dfbcd2960" hs_bindgen_4f6e042dfbcd2960_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_set_user_data@
hs_bindgen_4f6e042dfbcd2960 ::
     RIP.Ptr River_layer_shell_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4f6e042dfbcd2960 =
  RIP.fromFFIType hs_bindgen_4f6e042dfbcd2960_base

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
  hs_bindgen_4f6e042dfbcd2960

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_64a6992cb4360c27" hs_bindgen_64a6992cb4360c27_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_get_user_data@
hs_bindgen_64a6992cb4360c27 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_64a6992cb4360c27 =
  RIP.fromFFIType hs_bindgen_64a6992cb4360c27_base

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
  hs_bindgen_64a6992cb4360c27

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_00e47b270c5e2491" hs_bindgen_00e47b270c5e2491_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_get_version@
hs_bindgen_00e47b270c5e2491 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_00e47b270c5e2491 =
  RIP.fromFFIType hs_bindgen_00e47b270c5e2491_base

{-| __C declaration:__ @river_layer_shell_output_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 303:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_output_v1_get_version ::
     RIP.Ptr River_layer_shell_output_v1
     -- ^ __C declaration:__ @river_layer_shell_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_output_v1_get_version =
  hs_bindgen_00e47b270c5e2491

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_3b3e148c29b41730" hs_bindgen_3b3e148c29b41730_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_destroy@
hs_bindgen_3b3e148c29b41730 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_3b3e148c29b41730 =
  RIP.fromFFIType hs_bindgen_3b3e148c29b41730_base

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
  hs_bindgen_3b3e148c29b41730

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_set_default@
foreign import ccall unsafe "hs_bindgen_3a9d6446394764e3" hs_bindgen_3a9d6446394764e3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_output_v1_set_default@
hs_bindgen_3a9d6446394764e3 ::
     RIP.Ptr River_layer_shell_output_v1
  -> IO ()
hs_bindgen_3a9d6446394764e3 =
  RIP.fromFFIType hs_bindgen_3a9d6446394764e3_base

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
  hs_bindgen_3a9d6446394764e3

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_617b759511d78c50" hs_bindgen_617b759511d78c50_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_add_listener@
hs_bindgen_617b759511d78c50 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> PtrConst.PtrConst River_layer_shell_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_617b759511d78c50 =
  RIP.fromFFIType hs_bindgen_617b759511d78c50_base

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
  hs_bindgen_617b759511d78c50

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_9fb0f8892832ce80" hs_bindgen_9fb0f8892832ce80_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_set_user_data@
hs_bindgen_9fb0f8892832ce80 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9fb0f8892832ce80 =
  RIP.fromFFIType hs_bindgen_9fb0f8892832ce80_base

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
  hs_bindgen_9fb0f8892832ce80

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_c285e87d0ec5c185" hs_bindgen_c285e87d0ec5c185_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_get_user_data@
hs_bindgen_c285e87d0ec5c185 ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c285e87d0ec5c185 =
  RIP.fromFFIType hs_bindgen_c285e87d0ec5c185_base

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
  hs_bindgen_c285e87d0ec5c185

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_d52b2e430259f8ba" hs_bindgen_d52b2e430259f8ba_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_get_version@
hs_bindgen_d52b2e430259f8ba ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d52b2e430259f8ba =
  RIP.fromFFIType hs_bindgen_d52b2e430259f8ba_base

{-| __C declaration:__ @river_layer_shell_seat_v1_get_version@

    __defined at:__ @river-layer-shell-v1-client-protocol.h 449:1@

    __exported by:__ @river-layer-shell-v1-client-protocol.h@
-}
river_layer_shell_seat_v1_get_version ::
     RIP.Ptr River_layer_shell_seat_v1
     -- ^ __C declaration:__ @river_layer_shell_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_layer_shell_seat_v1_get_version =
  hs_bindgen_d52b2e430259f8ba

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_af4b74900ac827dd" hs_bindgen_af4b74900ac827dd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_layershell_Generated.River.LayoutShellV1_Unsafe_river_layer_shell_seat_v1_destroy@
hs_bindgen_af4b74900ac827dd ::
     RIP.Ptr River_layer_shell_seat_v1
  -> IO ()
hs_bindgen_af4b74900ac827dd =
  RIP.fromFFIType hs_bindgen_af4b74900ac827dd_base

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
  hs_bindgen_af4b74900ac827dd

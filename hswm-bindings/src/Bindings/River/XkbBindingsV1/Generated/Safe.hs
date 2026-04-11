{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.XkbBindingsV1.Generated.Safe
    ( Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_v1_get_xkb_binding
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_v1_get_seat
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_binding_v1_add_listener
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_binding_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_binding_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_binding_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_binding_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_binding_v1_set_layout_override
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_binding_v1_enable
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_binding_v1_disable
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_seat_v1_add_listener
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_seat_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_seat_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_seat_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_seat_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_seat_v1_ensure_next_key_eaten
    , Bindings.River.XkbBindingsV1.Generated.Safe.river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten
    )
  where

import qualified Bindings.River.WindowManagementV1.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.XkbBindingsV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "void hs_bindgen_c811a077b05d59a2 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2376ac6377142c74 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c76bd086d863c0f8 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_dae28202a09da1b0 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_binding_v1 *hs_bindgen_37dc4cf03dccdf19 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_xkb_binding)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct river_xkb_bindings_seat_v1 *hs_bindgen_ccd2305153302640 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_25b961f47673a39f ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  struct river_xkb_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4761f1a4be5cbdf2 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_eef8a7bb552e9199 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4914d33bb2033458 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_30219264559a3b68 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_56c2ed9c74259ae1 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_layout_override)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_7c9e78b2c3fa8317 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_99718a2f48882d56 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_disable)(arg1);"
  , "}"
  , "signed int hs_bindgen_2c2413ca1c80b0a9 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  struct river_xkb_bindings_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_dd8e33b65d338185 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b546b9230eaf85a7 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9adf9a122d0bf771 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_fcf88cb85f5849cd ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_dce504efdaa79b20 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_ensure_next_key_eaten)(arg1);"
  , "}"
  , "void hs_bindgen_0cbeeb2079a545ea ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_set_user_data@
foreign import ccall safe "hs_bindgen_c811a077b05d59a2" hs_bindgen_c811a077b05d59a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_set_user_data@
hs_bindgen_c811a077b05d59a2 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_c811a077b05d59a2 =
  RIP.fromFFIType hs_bindgen_c811a077b05d59a2_base

{-|

  > iface_river_xkb_bindings_v1

__C declaration:__ @river_xkb_bindings_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 186:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_set_user_data ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_xkb_bindings_v1_set_user_data =
  hs_bindgen_c811a077b05d59a2

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_get_user_data@
foreign import ccall safe "hs_bindgen_2376ac6377142c74" hs_bindgen_2376ac6377142c74_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_get_user_data@
hs_bindgen_2376ac6377142c74 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2376ac6377142c74 =
  RIP.fromFFIType hs_bindgen_2376ac6377142c74_base

{-|

  > iface_river_xkb_bindings_v1

__C declaration:__ @river_xkb_bindings_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 193:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_user_data ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> IO (RIP.Ptr RIP.Void)
river_xkb_bindings_v1_get_user_data =
  hs_bindgen_2376ac6377142c74

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_get_version@
foreign import ccall safe "hs_bindgen_c76bd086d863c0f8" hs_bindgen_c76bd086d863c0f8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_get_version@
hs_bindgen_c76bd086d863c0f8 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c76bd086d863c0f8 =
  RIP.fromFFIType hs_bindgen_c76bd086d863c0f8_base

{-| __C declaration:__ @river_xkb_bindings_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 199:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_version ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_v1_get_version =
  hs_bindgen_c76bd086d863c0f8

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_destroy@
foreign import ccall safe "hs_bindgen_dae28202a09da1b0" hs_bindgen_dae28202a09da1b0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_destroy@
hs_bindgen_dae28202a09da1b0 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO ()
hs_bindgen_dae28202a09da1b0 =
  RIP.fromFFIType hs_bindgen_dae28202a09da1b0_base

{-|

  > iface_river_xkb_bindings_v1

  This request indicates that the client will no longer use the river_xkb_bindings_v1 object.

__C declaration:__ @river_xkb_bindings_v1_destroy@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 211:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_destroy ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> IO ()
river_xkb_bindings_v1_destroy =
  hs_bindgen_dae28202a09da1b0

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_get_xkb_binding@
foreign import ccall safe "hs_bindgen_37dc4cf03dccdf19" hs_bindgen_37dc4cf03dccdf19_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_get_xkb_binding@
hs_bindgen_37dc4cf03dccdf19 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_binding_v1)
hs_bindgen_37dc4cf03dccdf19 =
  RIP.fromFFIType hs_bindgen_37dc4cf03dccdf19_base

{-|

  > iface_river_xkb_bindings_v1

  Define a key binding for the given seat in terms of an xkbcommon keysym and other configurable properties.

  The new key binding is not enabled until initial configuration is completed and the enable request is made during a manage sequence.

__C declaration:__ @river_xkb_bindings_v1_get_xkb_binding@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 227:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_xkb_binding ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @keysym@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @modifiers@
  -> IO (RIP.Ptr River_xkb_binding_v1)
river_xkb_bindings_v1_get_xkb_binding =
  hs_bindgen_37dc4cf03dccdf19

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_get_seat@
foreign import ccall safe "hs_bindgen_ccd2305153302640" hs_bindgen_ccd2305153302640_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_v1_get_seat@
hs_bindgen_ccd2305153302640 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
  -> IO (RIP.Ptr River_xkb_bindings_seat_v1)
hs_bindgen_ccd2305153302640 =
  RIP.fromFFIType hs_bindgen_ccd2305153302640_base

{-|

  > iface_river_xkb_bindings_v1

  Create an object to manage seat-specific xkb bindings state.

  It is a protocol error to make this request more than once for a given river_seat_v1 object.

__C declaration:__ @river_xkb_bindings_v1_get_seat@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 246:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_seat ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr River_xkb_bindings_seat_v1)
river_xkb_bindings_v1_get_seat =
  hs_bindgen_ccd2305153302640

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_add_listener@
foreign import ccall safe "hs_bindgen_25b961f47673a39f" hs_bindgen_25b961f47673a39f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_add_listener@
hs_bindgen_25b961f47673a39f ::
     RIP.Ptr River_xkb_binding_v1
  -> PtrConst.PtrConst River_xkb_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_25b961f47673a39f =
  RIP.fromFFIType hs_bindgen_25b961f47673a39f_base

{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_add_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 328:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_add_listener ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> PtrConst.PtrConst River_xkb_binding_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_xkb_binding_v1_add_listener =
  hs_bindgen_25b961f47673a39f

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_set_user_data@
foreign import ccall safe "hs_bindgen_4761f1a4be5cbdf2" hs_bindgen_4761f1a4be5cbdf2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_set_user_data@
hs_bindgen_4761f1a4be5cbdf2 ::
     RIP.Ptr River_xkb_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4761f1a4be5cbdf2 =
  RIP.fromFFIType hs_bindgen_4761f1a4be5cbdf2_base

{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 372:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_set_user_data ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_xkb_binding_v1_set_user_data =
  hs_bindgen_4761f1a4be5cbdf2

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_get_user_data@
foreign import ccall safe "hs_bindgen_eef8a7bb552e9199" hs_bindgen_eef8a7bb552e9199_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_get_user_data@
hs_bindgen_eef8a7bb552e9199 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_eef8a7bb552e9199 =
  RIP.fromFFIType hs_bindgen_eef8a7bb552e9199_base

{-|

  > iface_river_xkb_binding_v1

__C declaration:__ @river_xkb_binding_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 379:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_user_data ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO (RIP.Ptr RIP.Void)
river_xkb_binding_v1_get_user_data =
  hs_bindgen_eef8a7bb552e9199

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_get_version@
foreign import ccall safe "hs_bindgen_4914d33bb2033458" hs_bindgen_4914d33bb2033458_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_get_version@
hs_bindgen_4914d33bb2033458 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4914d33bb2033458 =
  RIP.fromFFIType hs_bindgen_4914d33bb2033458_base

{-| __C declaration:__ @river_xkb_binding_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 385:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_version ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_binding_v1_get_version =
  hs_bindgen_4914d33bb2033458

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_destroy@
foreign import ccall safe "hs_bindgen_30219264559a3b68" hs_bindgen_30219264559a3b68_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_destroy@
hs_bindgen_30219264559a3b68 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_30219264559a3b68 =
  RIP.fromFFIType hs_bindgen_30219264559a3b68_base

{-|

  > iface_river_xkb_binding_v1

  This request indicates that the client will no longer use the xkb key binding object and that it may be safely destroyed.

__C declaration:__ @river_xkb_binding_v1_destroy@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 397:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_destroy ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO ()
river_xkb_binding_v1_destroy =
  hs_bindgen_30219264559a3b68

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_set_layout_override@
foreign import ccall safe "hs_bindgen_56c2ed9c74259ae1" hs_bindgen_56c2ed9c74259ae1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_set_layout_override@
hs_bindgen_56c2ed9c74259ae1 ::
     RIP.Ptr River_xkb_binding_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_56c2ed9c74259ae1 =
  RIP.fromFFIType hs_bindgen_56c2ed9c74259ae1_base

{-|

  > iface_river_xkb_binding_v1

  Specify an xkb layout that should be used to translate key events for the purpose of triggering this key binding irrespective of the currently active xkb layout.

  The layout argument is a 0-indexed xkbcommon layout number for the keyboard that generated the key event.

  If this request is never made, the currently active xkb layout of the keyboard that generated the key event will be used.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_binding_v1_set_layout_override@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 420:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_set_layout_override ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @layout@
  -> IO ()
river_xkb_binding_v1_set_layout_override =
  hs_bindgen_56c2ed9c74259ae1

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_enable@
foreign import ccall safe "hs_bindgen_7c9e78b2c3fa8317" hs_bindgen_7c9e78b2c3fa8317_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_enable@
hs_bindgen_7c9e78b2c3fa8317 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_7c9e78b2c3fa8317 =
  RIP.fromFFIType hs_bindgen_7c9e78b2c3fa8317_base

{-|

  > iface_river_xkb_binding_v1

  This request should be made after all initial configuration has been completed and the window manager wishes the key binding to be able to be triggered.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_binding_v1_enable@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 437:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_enable ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO ()
river_xkb_binding_v1_enable =
  hs_bindgen_7c9e78b2c3fa8317

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_disable@
foreign import ccall safe "hs_bindgen_99718a2f48882d56" hs_bindgen_99718a2f48882d56_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_binding_v1_disable@
hs_bindgen_99718a2f48882d56 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_99718a2f48882d56 =
  RIP.fromFFIType hs_bindgen_99718a2f48882d56_base

{-|

  > iface_river_xkb_binding_v1

  This request may be used to temporarily disable the key binding. It may be later re-enabled with the enable request.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_binding_v1_disable@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 453:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_disable ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO ()
river_xkb_binding_v1_disable =
  hs_bindgen_99718a2f48882d56

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_2c2413ca1c80b0a9" hs_bindgen_2c2413ca1c80b0a9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_add_listener@
hs_bindgen_2c2413ca1c80b0a9 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> PtrConst.PtrConst River_xkb_bindings_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_2c2413ca1c80b0a9 =
  RIP.fromFFIType hs_bindgen_2c2413ca1c80b0a9_base

{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_add_listener@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 482:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_add_listener ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> PtrConst.PtrConst River_xkb_bindings_seat_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_xkb_bindings_seat_v1_add_listener =
  hs_bindgen_2c2413ca1c80b0a9

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_dd8e33b65d338185" hs_bindgen_dd8e33b65d338185_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_set_user_data@
hs_bindgen_dd8e33b65d338185 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_dd8e33b65d338185 =
  RIP.fromFFIType hs_bindgen_dd8e33b65d338185_base

{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_set_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 513:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_set_user_data ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_xkb_bindings_seat_v1_set_user_data =
  hs_bindgen_dd8e33b65d338185

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_b546b9230eaf85a7" hs_bindgen_b546b9230eaf85a7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_get_user_data@
hs_bindgen_b546b9230eaf85a7 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b546b9230eaf85a7 =
  RIP.fromFFIType hs_bindgen_b546b9230eaf85a7_base

{-|

  > iface_river_xkb_bindings_seat_v1

__C declaration:__ @river_xkb_bindings_seat_v1_get_user_data@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 520:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_user_data ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO (RIP.Ptr RIP.Void)
river_xkb_bindings_seat_v1_get_user_data =
  hs_bindgen_b546b9230eaf85a7

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_9adf9a122d0bf771" hs_bindgen_9adf9a122d0bf771_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_get_version@
hs_bindgen_9adf9a122d0bf771 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9adf9a122d0bf771 =
  RIP.fromFFIType hs_bindgen_9adf9a122d0bf771_base

{-| __C declaration:__ @river_xkb_bindings_seat_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 526:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_version ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_seat_v1_get_version =
  hs_bindgen_9adf9a122d0bf771

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_fcf88cb85f5849cd" hs_bindgen_fcf88cb85f5849cd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_destroy@
hs_bindgen_fcf88cb85f5849cd ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_fcf88cb85f5849cd =
  RIP.fromFFIType hs_bindgen_fcf88cb85f5849cd_base

{-|

  > iface_river_xkb_bindings_seat_v1

  This request indicates that the client will no longer use the object and that it may be safely destroyed.

__C declaration:__ @river_xkb_bindings_seat_v1_destroy@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 538:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_destroy ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO ()
river_xkb_bindings_seat_v1_destroy =
  hs_bindgen_fcf88cb85f5849cd

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
foreign import ccall safe "hs_bindgen_dce504efdaa79b20" hs_bindgen_dce504efdaa79b20_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
hs_bindgen_dce504efdaa79b20 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_dce504efdaa79b20 =
  RIP.fromFFIType hs_bindgen_dce504efdaa79b20_base

{-|

  > iface_river_xkb_bindings_seat_v1

  Ensure that the next non-modifier key press and corresponding release events for this seat are not sent to the currently focused surface.

  If the next non-modifier key press triggers a binding, the pressed/released events are sent to the river_xkb_binding_v1 object as usual.

  If the next non-modifier key press does not trigger a binding, the ate_unbound_key event is sent instead.

  Rationale: the window manager may wish to implement "chorded" keybindings where triggering a binding activates a "submap" with a different set of keybindings. Without a way to eat the next key press event, there is no good way for the window manager to know that it should error out and exit the submap when a key not bound in the submap is pressed.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_bindings_seat_v1_ensure_next_key_eaten@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 568:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_ensure_next_key_eaten ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO ()
river_xkb_bindings_seat_v1_ensure_next_key_eaten =
  hs_bindgen_dce504efdaa79b20

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
foreign import ccall safe "hs_bindgen_0cbeeb2079a545ea" hs_bindgen_0cbeeb2079a545ea_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Safe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
hs_bindgen_0cbeeb2079a545ea ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_0cbeeb2079a545ea =
  RIP.fromFFIType hs_bindgen_0cbeeb2079a545ea_base

{-|

  > iface_river_xkb_bindings_seat_v1

  This requests cancels the effect of the latest ensure_next_key_eaten request if no key has been eaten due to the request yet. This request has no effect if a key has already been eaten or no ensure_next_key_eaten was made.

  Rationale: the window manager may wish cancel an uncompleted "chorded" keybinding after a timeout of a few seconds. Note that since this timeout use-case requires the window manager to trigger a manage sequence with the river_window_manager_v1.manage_dirty request it is possible that the ate_unbound_key key event may be sent before the window manager has a chance to make the cancel_ensure_next_key_eaten request.

  This request modifies window management state and may only be made as part of a manage sequence, see the river_window_manager_v1 description.

__C declaration:__ @river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@

__defined at:__ @river-xkb-bindings-v1-client-protocol.h 593:1@

__exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO ()
river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten =
  hs_bindgen_0cbeeb2079a545ea

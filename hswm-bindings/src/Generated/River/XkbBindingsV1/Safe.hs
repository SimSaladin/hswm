{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.XkbBindingsV1.Safe
    ( Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_v1_set_user_data
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_v1_get_user_data
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_v1_get_version
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_v1_destroy
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_v1_get_xkb_binding
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_v1_get_seat
    , Generated.River.XkbBindingsV1.Safe.river_xkb_binding_v1_add_listener
    , Generated.River.XkbBindingsV1.Safe.river_xkb_binding_v1_set_user_data
    , Generated.River.XkbBindingsV1.Safe.river_xkb_binding_v1_get_user_data
    , Generated.River.XkbBindingsV1.Safe.river_xkb_binding_v1_get_version
    , Generated.River.XkbBindingsV1.Safe.river_xkb_binding_v1_destroy
    , Generated.River.XkbBindingsV1.Safe.river_xkb_binding_v1_set_layout_override
    , Generated.River.XkbBindingsV1.Safe.river_xkb_binding_v1_enable
    , Generated.River.XkbBindingsV1.Safe.river_xkb_binding_v1_disable
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_seat_v1_add_listener
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_seat_v1_set_user_data
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_seat_v1_get_user_data
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_seat_v1_get_version
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_seat_v1_destroy
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_seat_v1_ensure_next_key_eaten
    , Generated.River.XkbBindingsV1.Safe.river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.XkbBindingsV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "void hs_bindgen_d8185d2b94821812 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a23c7a355d491a98 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_675125db1c947286 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_49c9d645d8b99ecd ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_binding_v1 *hs_bindgen_4ace56eccf2d50ae ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_xkb_binding)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct river_xkb_bindings_seat_v1 *hs_bindgen_f33538ada300319f ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_77441215d673b682 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  struct river_xkb_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0719491857c37205 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_cda2ed6a43f84855 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2c18a92f50b7e739 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_123d5f1428cec02c ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_a2e9fc9c7c144fca ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_layout_override)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_9ce56b38b5a721c4 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_cd3f2cc1db9d06ac ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_disable)(arg1);"
  , "}"
  , "signed int hs_bindgen_7e1f2e525d610d7d ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  struct river_xkb_bindings_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f3d9d37539a925e5 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2761631b3dd6e0a9 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a19662eed8f99867 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9f06be008174d412 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_fecdd83018fc052f ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_ensure_next_key_eaten)(arg1);"
  , "}"
  , "void hs_bindgen_88f59e6d03ceee8a ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_set_user_data@
foreign import ccall safe "hs_bindgen_d8185d2b94821812" hs_bindgen_d8185d2b94821812_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_set_user_data@
hs_bindgen_d8185d2b94821812 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d8185d2b94821812 =
  RIP.fromFFIType hs_bindgen_d8185d2b94821812_base

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
  hs_bindgen_d8185d2b94821812

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_user_data@
foreign import ccall safe "hs_bindgen_a23c7a355d491a98" hs_bindgen_a23c7a355d491a98_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_user_data@
hs_bindgen_a23c7a355d491a98 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a23c7a355d491a98 =
  RIP.fromFFIType hs_bindgen_a23c7a355d491a98_base

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
  hs_bindgen_a23c7a355d491a98

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_version@
foreign import ccall safe "hs_bindgen_675125db1c947286" hs_bindgen_675125db1c947286_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_version@
hs_bindgen_675125db1c947286 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_675125db1c947286 =
  RIP.fromFFIType hs_bindgen_675125db1c947286_base

{-| __C declaration:__ @river_xkb_bindings_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 199:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_version ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_v1_get_version =
  hs_bindgen_675125db1c947286

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_destroy@
foreign import ccall safe "hs_bindgen_49c9d645d8b99ecd" hs_bindgen_49c9d645d8b99ecd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_destroy@
hs_bindgen_49c9d645d8b99ecd ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO ()
hs_bindgen_49c9d645d8b99ecd =
  RIP.fromFFIType hs_bindgen_49c9d645d8b99ecd_base

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
  hs_bindgen_49c9d645d8b99ecd

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_xkb_binding@
foreign import ccall safe "hs_bindgen_4ace56eccf2d50ae" hs_bindgen_4ace56eccf2d50ae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_xkb_binding@
hs_bindgen_4ace56eccf2d50ae ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_binding_v1)
hs_bindgen_4ace56eccf2d50ae =
  RIP.fromFFIType hs_bindgen_4ace56eccf2d50ae_base

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
  -> RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @keysym@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @modifiers@
  -> IO (RIP.Ptr River_xkb_binding_v1)
river_xkb_bindings_v1_get_xkb_binding =
  hs_bindgen_4ace56eccf2d50ae

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_seat@
foreign import ccall safe "hs_bindgen_f33538ada300319f" hs_bindgen_f33538ada300319f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_seat@
hs_bindgen_f33538ada300319f ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr River_xkb_bindings_seat_v1)
hs_bindgen_f33538ada300319f =
  RIP.fromFFIType hs_bindgen_f33538ada300319f_base

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
  -> RIP.Ptr River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr River_xkb_bindings_seat_v1)
river_xkb_bindings_v1_get_seat =
  hs_bindgen_f33538ada300319f

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_add_listener@
foreign import ccall safe "hs_bindgen_77441215d673b682" hs_bindgen_77441215d673b682_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_add_listener@
hs_bindgen_77441215d673b682 ::
     RIP.Ptr River_xkb_binding_v1
  -> PtrConst.PtrConst River_xkb_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_77441215d673b682 =
  RIP.fromFFIType hs_bindgen_77441215d673b682_base

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
  hs_bindgen_77441215d673b682

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_set_user_data@
foreign import ccall safe "hs_bindgen_0719491857c37205" hs_bindgen_0719491857c37205_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_set_user_data@
hs_bindgen_0719491857c37205 ::
     RIP.Ptr River_xkb_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0719491857c37205 =
  RIP.fromFFIType hs_bindgen_0719491857c37205_base

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
  hs_bindgen_0719491857c37205

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_get_user_data@
foreign import ccall safe "hs_bindgen_cda2ed6a43f84855" hs_bindgen_cda2ed6a43f84855_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_get_user_data@
hs_bindgen_cda2ed6a43f84855 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_cda2ed6a43f84855 =
  RIP.fromFFIType hs_bindgen_cda2ed6a43f84855_base

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
  hs_bindgen_cda2ed6a43f84855

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_get_version@
foreign import ccall safe "hs_bindgen_2c18a92f50b7e739" hs_bindgen_2c18a92f50b7e739_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_get_version@
hs_bindgen_2c18a92f50b7e739 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2c18a92f50b7e739 =
  RIP.fromFFIType hs_bindgen_2c18a92f50b7e739_base

{-| __C declaration:__ @river_xkb_binding_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 385:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_version ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_binding_v1_get_version =
  hs_bindgen_2c18a92f50b7e739

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_destroy@
foreign import ccall safe "hs_bindgen_123d5f1428cec02c" hs_bindgen_123d5f1428cec02c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_destroy@
hs_bindgen_123d5f1428cec02c ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_123d5f1428cec02c =
  RIP.fromFFIType hs_bindgen_123d5f1428cec02c_base

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
  hs_bindgen_123d5f1428cec02c

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_set_layout_override@
foreign import ccall safe "hs_bindgen_a2e9fc9c7c144fca" hs_bindgen_a2e9fc9c7c144fca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_set_layout_override@
hs_bindgen_a2e9fc9c7c144fca ::
     RIP.Ptr River_xkb_binding_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_a2e9fc9c7c144fca =
  RIP.fromFFIType hs_bindgen_a2e9fc9c7c144fca_base

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
  hs_bindgen_a2e9fc9c7c144fca

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_enable@
foreign import ccall safe "hs_bindgen_9ce56b38b5a721c4" hs_bindgen_9ce56b38b5a721c4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_enable@
hs_bindgen_9ce56b38b5a721c4 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_9ce56b38b5a721c4 =
  RIP.fromFFIType hs_bindgen_9ce56b38b5a721c4_base

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
  hs_bindgen_9ce56b38b5a721c4

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_disable@
foreign import ccall safe "hs_bindgen_cd3f2cc1db9d06ac" hs_bindgen_cd3f2cc1db9d06ac_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_disable@
hs_bindgen_cd3f2cc1db9d06ac ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_cd3f2cc1db9d06ac =
  RIP.fromFFIType hs_bindgen_cd3f2cc1db9d06ac_base

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
  hs_bindgen_cd3f2cc1db9d06ac

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_7e1f2e525d610d7d" hs_bindgen_7e1f2e525d610d7d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_add_listener@
hs_bindgen_7e1f2e525d610d7d ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> PtrConst.PtrConst River_xkb_bindings_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7e1f2e525d610d7d =
  RIP.fromFFIType hs_bindgen_7e1f2e525d610d7d_base

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
  hs_bindgen_7e1f2e525d610d7d

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_f3d9d37539a925e5" hs_bindgen_f3d9d37539a925e5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_set_user_data@
hs_bindgen_f3d9d37539a925e5 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f3d9d37539a925e5 =
  RIP.fromFFIType hs_bindgen_f3d9d37539a925e5_base

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
  hs_bindgen_f3d9d37539a925e5

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_2761631b3dd6e0a9" hs_bindgen_2761631b3dd6e0a9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_get_user_data@
hs_bindgen_2761631b3dd6e0a9 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2761631b3dd6e0a9 =
  RIP.fromFFIType hs_bindgen_2761631b3dd6e0a9_base

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
  hs_bindgen_2761631b3dd6e0a9

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_a19662eed8f99867" hs_bindgen_a19662eed8f99867_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_get_version@
hs_bindgen_a19662eed8f99867 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a19662eed8f99867 =
  RIP.fromFFIType hs_bindgen_a19662eed8f99867_base

{-| __C declaration:__ @river_xkb_bindings_seat_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 526:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_version ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_seat_v1_get_version =
  hs_bindgen_a19662eed8f99867

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_9f06be008174d412" hs_bindgen_9f06be008174d412_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_destroy@
hs_bindgen_9f06be008174d412 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_9f06be008174d412 =
  RIP.fromFFIType hs_bindgen_9f06be008174d412_base

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
  hs_bindgen_9f06be008174d412

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
foreign import ccall safe "hs_bindgen_fecdd83018fc052f" hs_bindgen_fecdd83018fc052f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
hs_bindgen_fecdd83018fc052f ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_fecdd83018fc052f =
  RIP.fromFFIType hs_bindgen_fecdd83018fc052f_base

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
  hs_bindgen_fecdd83018fc052f

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
foreign import ccall safe "hs_bindgen_88f59e6d03ceee8a" hs_bindgen_88f59e6d03ceee8a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
hs_bindgen_88f59e6d03ceee8a ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_88f59e6d03ceee8a =
  RIP.fromFFIType hs_bindgen_88f59e6d03ceee8a_base

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
  hs_bindgen_88f59e6d03ceee8a

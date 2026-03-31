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

import qualified Generated.River.RiverWindowManagementV1
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.XkbBindingsV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "void hs_bindgen_93354b9bf4cd8840 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_913ffa7cadacec5d ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9d5206d2b3c70fa7 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_97f8d4359d71a76a ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_binding_v1 *hs_bindgen_2f46befd1ac93cc6 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_xkb_binding)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct river_xkb_bindings_seat_v1 *hs_bindgen_0cee457cae9868f0 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_abc645d32851a4d8 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  struct river_xkb_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9abf407df341437e ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a454a60d1dd33349 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c456dfbe7786f70d ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c266d4b8cb575333 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_5293d35f77024188 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_layout_override)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_fa5c372387864c21 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_bcec98505bb3f86b ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_disable)(arg1);"
  , "}"
  , "signed int hs_bindgen_fe1af6392d60fd1b ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  struct river_xkb_bindings_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_63b3acc012a97783 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1f099d3f56edc459 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b8d58eed625a9b29 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ff982b3b521dbda8 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_342b11d66178ef59 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_ensure_next_key_eaten)(arg1);"
  , "}"
  , "void hs_bindgen_5ab8ccbbc3d847dc ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_set_user_data@
foreign import ccall safe "hs_bindgen_93354b9bf4cd8840" hs_bindgen_93354b9bf4cd8840_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_set_user_data@
hs_bindgen_93354b9bf4cd8840 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_93354b9bf4cd8840 =
  RIP.fromFFIType hs_bindgen_93354b9bf4cd8840_base

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
  hs_bindgen_93354b9bf4cd8840

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_user_data@
foreign import ccall safe "hs_bindgen_913ffa7cadacec5d" hs_bindgen_913ffa7cadacec5d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_user_data@
hs_bindgen_913ffa7cadacec5d ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_913ffa7cadacec5d =
  RIP.fromFFIType hs_bindgen_913ffa7cadacec5d_base

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
  hs_bindgen_913ffa7cadacec5d

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_version@
foreign import ccall safe "hs_bindgen_9d5206d2b3c70fa7" hs_bindgen_9d5206d2b3c70fa7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_version@
hs_bindgen_9d5206d2b3c70fa7 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9d5206d2b3c70fa7 =
  RIP.fromFFIType hs_bindgen_9d5206d2b3c70fa7_base

{-| __C declaration:__ @river_xkb_bindings_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 199:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_version ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_v1_get_version =
  hs_bindgen_9d5206d2b3c70fa7

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_destroy@
foreign import ccall safe "hs_bindgen_97f8d4359d71a76a" hs_bindgen_97f8d4359d71a76a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_destroy@
hs_bindgen_97f8d4359d71a76a ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO ()
hs_bindgen_97f8d4359d71a76a =
  RIP.fromFFIType hs_bindgen_97f8d4359d71a76a_base

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
  hs_bindgen_97f8d4359d71a76a

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_xkb_binding@
foreign import ccall safe "hs_bindgen_2f46befd1ac93cc6" hs_bindgen_2f46befd1ac93cc6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_xkb_binding@
hs_bindgen_2f46befd1ac93cc6 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr Generated.River.RiverWindowManagementV1.River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_binding_v1)
hs_bindgen_2f46befd1ac93cc6 =
  RIP.fromFFIType hs_bindgen_2f46befd1ac93cc6_base

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
  -> RIP.Ptr Generated.River.RiverWindowManagementV1.River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @keysym@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @modifiers@
  -> IO (RIP.Ptr River_xkb_binding_v1)
river_xkb_bindings_v1_get_xkb_binding =
  hs_bindgen_2f46befd1ac93cc6

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_seat@
foreign import ccall safe "hs_bindgen_0cee457cae9868f0" hs_bindgen_0cee457cae9868f0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_v1_get_seat@
hs_bindgen_0cee457cae9868f0 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr Generated.River.RiverWindowManagementV1.River_seat_v1
  -> IO (RIP.Ptr River_xkb_bindings_seat_v1)
hs_bindgen_0cee457cae9868f0 =
  RIP.fromFFIType hs_bindgen_0cee457cae9868f0_base

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
  -> RIP.Ptr Generated.River.RiverWindowManagementV1.River_seat_v1
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr River_xkb_bindings_seat_v1)
river_xkb_bindings_v1_get_seat =
  hs_bindgen_0cee457cae9868f0

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_add_listener@
foreign import ccall safe "hs_bindgen_abc645d32851a4d8" hs_bindgen_abc645d32851a4d8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_add_listener@
hs_bindgen_abc645d32851a4d8 ::
     RIP.Ptr River_xkb_binding_v1
  -> PtrConst.PtrConst River_xkb_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_abc645d32851a4d8 =
  RIP.fromFFIType hs_bindgen_abc645d32851a4d8_base

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
  hs_bindgen_abc645d32851a4d8

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_set_user_data@
foreign import ccall safe "hs_bindgen_9abf407df341437e" hs_bindgen_9abf407df341437e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_set_user_data@
hs_bindgen_9abf407df341437e ::
     RIP.Ptr River_xkb_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9abf407df341437e =
  RIP.fromFFIType hs_bindgen_9abf407df341437e_base

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
  hs_bindgen_9abf407df341437e

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_get_user_data@
foreign import ccall safe "hs_bindgen_a454a60d1dd33349" hs_bindgen_a454a60d1dd33349_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_get_user_data@
hs_bindgen_a454a60d1dd33349 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a454a60d1dd33349 =
  RIP.fromFFIType hs_bindgen_a454a60d1dd33349_base

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
  hs_bindgen_a454a60d1dd33349

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_get_version@
foreign import ccall safe "hs_bindgen_c456dfbe7786f70d" hs_bindgen_c456dfbe7786f70d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_get_version@
hs_bindgen_c456dfbe7786f70d ::
     RIP.Ptr River_xkb_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c456dfbe7786f70d =
  RIP.fromFFIType hs_bindgen_c456dfbe7786f70d_base

{-| __C declaration:__ @river_xkb_binding_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 385:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_version ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_binding_v1_get_version =
  hs_bindgen_c456dfbe7786f70d

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_destroy@
foreign import ccall safe "hs_bindgen_c266d4b8cb575333" hs_bindgen_c266d4b8cb575333_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_destroy@
hs_bindgen_c266d4b8cb575333 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_c266d4b8cb575333 =
  RIP.fromFFIType hs_bindgen_c266d4b8cb575333_base

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
  hs_bindgen_c266d4b8cb575333

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_set_layout_override@
foreign import ccall safe "hs_bindgen_5293d35f77024188" hs_bindgen_5293d35f77024188_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_set_layout_override@
hs_bindgen_5293d35f77024188 ::
     RIP.Ptr River_xkb_binding_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_5293d35f77024188 =
  RIP.fromFFIType hs_bindgen_5293d35f77024188_base

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
  hs_bindgen_5293d35f77024188

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_enable@
foreign import ccall safe "hs_bindgen_fa5c372387864c21" hs_bindgen_fa5c372387864c21_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_enable@
hs_bindgen_fa5c372387864c21 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_fa5c372387864c21 =
  RIP.fromFFIType hs_bindgen_fa5c372387864c21_base

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
  hs_bindgen_fa5c372387864c21

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_disable@
foreign import ccall safe "hs_bindgen_bcec98505bb3f86b" hs_bindgen_bcec98505bb3f86b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_binding_v1_disable@
hs_bindgen_bcec98505bb3f86b ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_bcec98505bb3f86b =
  RIP.fromFFIType hs_bindgen_bcec98505bb3f86b_base

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
  hs_bindgen_bcec98505bb3f86b

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_add_listener@
foreign import ccall safe "hs_bindgen_fe1af6392d60fd1b" hs_bindgen_fe1af6392d60fd1b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_add_listener@
hs_bindgen_fe1af6392d60fd1b ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> PtrConst.PtrConst River_xkb_bindings_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_fe1af6392d60fd1b =
  RIP.fromFFIType hs_bindgen_fe1af6392d60fd1b_base

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
  hs_bindgen_fe1af6392d60fd1b

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_set_user_data@
foreign import ccall safe "hs_bindgen_63b3acc012a97783" hs_bindgen_63b3acc012a97783_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_set_user_data@
hs_bindgen_63b3acc012a97783 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_63b3acc012a97783 =
  RIP.fromFFIType hs_bindgen_63b3acc012a97783_base

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
  hs_bindgen_63b3acc012a97783

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_get_user_data@
foreign import ccall safe "hs_bindgen_1f099d3f56edc459" hs_bindgen_1f099d3f56edc459_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_get_user_data@
hs_bindgen_1f099d3f56edc459 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1f099d3f56edc459 =
  RIP.fromFFIType hs_bindgen_1f099d3f56edc459_base

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
  hs_bindgen_1f099d3f56edc459

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_get_version@
foreign import ccall safe "hs_bindgen_b8d58eed625a9b29" hs_bindgen_b8d58eed625a9b29_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_get_version@
hs_bindgen_b8d58eed625a9b29 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b8d58eed625a9b29 =
  RIP.fromFFIType hs_bindgen_b8d58eed625a9b29_base

{-| __C declaration:__ @river_xkb_bindings_seat_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 526:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_version ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_seat_v1_get_version =
  hs_bindgen_b8d58eed625a9b29

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_destroy@
foreign import ccall safe "hs_bindgen_ff982b3b521dbda8" hs_bindgen_ff982b3b521dbda8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_destroy@
hs_bindgen_ff982b3b521dbda8 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_ff982b3b521dbda8 =
  RIP.fromFFIType hs_bindgen_ff982b3b521dbda8_base

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
  hs_bindgen_ff982b3b521dbda8

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
foreign import ccall safe "hs_bindgen_342b11d66178ef59" hs_bindgen_342b11d66178ef59_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
hs_bindgen_342b11d66178ef59 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_342b11d66178ef59 =
  RIP.fromFFIType hs_bindgen_342b11d66178ef59_base

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
  hs_bindgen_342b11d66178ef59

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
foreign import ccall safe "hs_bindgen_5ab8ccbbc3d847dc" hs_bindgen_5ab8ccbbc3d847dc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbBindingsV1_Generated.River.XkbBindingsV1_Safe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
hs_bindgen_5ab8ccbbc3d847dc ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_5ab8ccbbc3d847dc =
  RIP.fromFFIType hs_bindgen_5ab8ccbbc3d847dc_base

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
  hs_bindgen_5ab8ccbbc3d847dc

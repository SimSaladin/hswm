{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.XkbBindingsV1.Unsafe
    ( Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_v1_set_user_data
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_v1_get_user_data
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_v1_get_version
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_v1_destroy
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_v1_get_xkb_binding
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_v1_get_seat
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_binding_v1_add_listener
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_binding_v1_set_user_data
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_binding_v1_get_user_data
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_binding_v1_get_version
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_binding_v1_destroy
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_binding_v1_set_layout_override
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_binding_v1_enable
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_binding_v1_disable
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_seat_v1_add_listener
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_seat_v1_set_user_data
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_seat_v1_get_user_data
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_seat_v1_get_version
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_seat_v1_destroy
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_seat_v1_ensure_next_key_eaten
    , Generated.River.XkbBindingsV1.Unsafe.river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.XkbBindingsV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-bindings-v1-client-protocol.h>"
  , "void hs_bindgen_d0e32fbdd6210e5e ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0af095fa0037efbf ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2662c6dbf2372888 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_fa0ab592eefc333d ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_binding_v1 *hs_bindgen_b5c2f76d3fb2b08e ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_xkb_binding)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct river_xkb_bindings_seat_v1 *hs_bindgen_cc1652eabbb11576 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_f9f53b658f66b4c2 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  struct river_xkb_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ea83b17f08b9e8ed ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_fee8523a50c610cf ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_884015a7182baaa7 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d58f140325f4500c ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_0a6cbb99bc268b5c ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_layout_override)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_46ec1f3d03d7367c ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_ac9b58a814e85304 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_disable)(arg1);"
  , "}"
  , "signed int hs_bindgen_c43caf0b31b5b252 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  struct river_xkb_bindings_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_1aa90a45d3b5333f ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_71e9fbab05366f19 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8670d80f105c6470 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_bdbde376c2de93c6 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_4e29ca7acc7b32cb ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_ensure_next_key_eaten)(arg1);"
  , "}"
  , "void hs_bindgen_3920fa62adcc5e12 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_d0e32fbdd6210e5e" hs_bindgen_d0e32fbdd6210e5e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_set_user_data@
hs_bindgen_d0e32fbdd6210e5e ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d0e32fbdd6210e5e =
  RIP.fromFFIType hs_bindgen_d0e32fbdd6210e5e_base

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
  hs_bindgen_d0e32fbdd6210e5e

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_0af095fa0037efbf" hs_bindgen_0af095fa0037efbf_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_get_user_data@
hs_bindgen_0af095fa0037efbf ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0af095fa0037efbf =
  RIP.fromFFIType hs_bindgen_0af095fa0037efbf_base

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
  hs_bindgen_0af095fa0037efbf

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_get_version@
foreign import ccall unsafe "hs_bindgen_2662c6dbf2372888" hs_bindgen_2662c6dbf2372888_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_get_version@
hs_bindgen_2662c6dbf2372888 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2662c6dbf2372888 =
  RIP.fromFFIType hs_bindgen_2662c6dbf2372888_base

{-| __C declaration:__ @river_xkb_bindings_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 199:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_version ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_v1_get_version =
  hs_bindgen_2662c6dbf2372888

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_destroy@
foreign import ccall unsafe "hs_bindgen_fa0ab592eefc333d" hs_bindgen_fa0ab592eefc333d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_destroy@
hs_bindgen_fa0ab592eefc333d ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO ()
hs_bindgen_fa0ab592eefc333d =
  RIP.fromFFIType hs_bindgen_fa0ab592eefc333d_base

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
  hs_bindgen_fa0ab592eefc333d

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_get_xkb_binding@
foreign import ccall unsafe "hs_bindgen_b5c2f76d3fb2b08e" hs_bindgen_b5c2f76d3fb2b08e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_get_xkb_binding@
hs_bindgen_b5c2f76d3fb2b08e ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_binding_v1)
hs_bindgen_b5c2f76d3fb2b08e =
  RIP.fromFFIType hs_bindgen_b5c2f76d3fb2b08e_base

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
  hs_bindgen_b5c2f76d3fb2b08e

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_cc1652eabbb11576" hs_bindgen_cc1652eabbb11576_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_v1_get_seat@
hs_bindgen_cc1652eabbb11576 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr River_seat_v1
  -> IO (RIP.Ptr River_xkb_bindings_seat_v1)
hs_bindgen_cc1652eabbb11576 =
  RIP.fromFFIType hs_bindgen_cc1652eabbb11576_base

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
  hs_bindgen_cc1652eabbb11576

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_f9f53b658f66b4c2" hs_bindgen_f9f53b658f66b4c2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_add_listener@
hs_bindgen_f9f53b658f66b4c2 ::
     RIP.Ptr River_xkb_binding_v1
  -> PtrConst.PtrConst River_xkb_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_f9f53b658f66b4c2 =
  RIP.fromFFIType hs_bindgen_f9f53b658f66b4c2_base

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
  hs_bindgen_f9f53b658f66b4c2

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_ea83b17f08b9e8ed" hs_bindgen_ea83b17f08b9e8ed_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_set_user_data@
hs_bindgen_ea83b17f08b9e8ed ::
     RIP.Ptr River_xkb_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ea83b17f08b9e8ed =
  RIP.fromFFIType hs_bindgen_ea83b17f08b9e8ed_base

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
  hs_bindgen_ea83b17f08b9e8ed

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_fee8523a50c610cf" hs_bindgen_fee8523a50c610cf_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_get_user_data@
hs_bindgen_fee8523a50c610cf ::
     RIP.Ptr River_xkb_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_fee8523a50c610cf =
  RIP.fromFFIType hs_bindgen_fee8523a50c610cf_base

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
  hs_bindgen_fee8523a50c610cf

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_884015a7182baaa7" hs_bindgen_884015a7182baaa7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_get_version@
hs_bindgen_884015a7182baaa7 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_884015a7182baaa7 =
  RIP.fromFFIType hs_bindgen_884015a7182baaa7_base

{-| __C declaration:__ @river_xkb_binding_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 385:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_version ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_binding_v1_get_version =
  hs_bindgen_884015a7182baaa7

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_d58f140325f4500c" hs_bindgen_d58f140325f4500c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_destroy@
hs_bindgen_d58f140325f4500c ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_d58f140325f4500c =
  RIP.fromFFIType hs_bindgen_d58f140325f4500c_base

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
  hs_bindgen_d58f140325f4500c

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_set_layout_override@
foreign import ccall unsafe "hs_bindgen_0a6cbb99bc268b5c" hs_bindgen_0a6cbb99bc268b5c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_set_layout_override@
hs_bindgen_0a6cbb99bc268b5c ::
     RIP.Ptr River_xkb_binding_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_0a6cbb99bc268b5c =
  RIP.fromFFIType hs_bindgen_0a6cbb99bc268b5c_base

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
  hs_bindgen_0a6cbb99bc268b5c

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_46ec1f3d03d7367c" hs_bindgen_46ec1f3d03d7367c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_enable@
hs_bindgen_46ec1f3d03d7367c ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_46ec1f3d03d7367c =
  RIP.fromFFIType hs_bindgen_46ec1f3d03d7367c_base

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
  hs_bindgen_46ec1f3d03d7367c

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_ac9b58a814e85304" hs_bindgen_ac9b58a814e85304_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_binding_v1_disable@
hs_bindgen_ac9b58a814e85304 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_ac9b58a814e85304 =
  RIP.fromFFIType hs_bindgen_ac9b58a814e85304_base

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
  hs_bindgen_ac9b58a814e85304

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_c43caf0b31b5b252" hs_bindgen_c43caf0b31b5b252_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_add_listener@
hs_bindgen_c43caf0b31b5b252 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> PtrConst.PtrConst River_xkb_bindings_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_c43caf0b31b5b252 =
  RIP.fromFFIType hs_bindgen_c43caf0b31b5b252_base

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
  hs_bindgen_c43caf0b31b5b252

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_1aa90a45d3b5333f" hs_bindgen_1aa90a45d3b5333f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_set_user_data@
hs_bindgen_1aa90a45d3b5333f ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1aa90a45d3b5333f =
  RIP.fromFFIType hs_bindgen_1aa90a45d3b5333f_base

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
  hs_bindgen_1aa90a45d3b5333f

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_71e9fbab05366f19" hs_bindgen_71e9fbab05366f19_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_get_user_data@
hs_bindgen_71e9fbab05366f19 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_71e9fbab05366f19 =
  RIP.fromFFIType hs_bindgen_71e9fbab05366f19_base

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
  hs_bindgen_71e9fbab05366f19

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8670d80f105c6470" hs_bindgen_8670d80f105c6470_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_get_version@
hs_bindgen_8670d80f105c6470 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8670d80f105c6470 =
  RIP.fromFFIType hs_bindgen_8670d80f105c6470_base

{-| __C declaration:__ @river_xkb_bindings_seat_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 526:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_version ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_seat_v1_get_version =
  hs_bindgen_8670d80f105c6470

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_bdbde376c2de93c6" hs_bindgen_bdbde376c2de93c6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_destroy@
hs_bindgen_bdbde376c2de93c6 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_bdbde376c2de93c6 =
  RIP.fromFFIType hs_bindgen_bdbde376c2de93c6_base

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
  hs_bindgen_bdbde376c2de93c6

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_4e29ca7acc7b32cb" hs_bindgen_4e29ca7acc7b32cb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
hs_bindgen_4e29ca7acc7b32cb ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_4e29ca7acc7b32cb =
  RIP.fromFFIType hs_bindgen_4e29ca7acc7b32cb_base

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
  hs_bindgen_4e29ca7acc7b32cb

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_3920fa62adcc5e12" hs_bindgen_3920fa62adcc5e12_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbbindings_Generated.River.XkbBindingsV1_Unsafe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
hs_bindgen_3920fa62adcc5e12 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_3920fa62adcc5e12 =
  RIP.fromFFIType hs_bindgen_3920fa62adcc5e12_base

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
  hs_bindgen_3920fa62adcc5e12

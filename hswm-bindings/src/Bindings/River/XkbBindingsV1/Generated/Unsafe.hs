{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.XkbBindingsV1.Generated.Unsafe
    ( Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_v1_get_xkb_binding
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_v1_get_seat
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_binding_v1_add_listener
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_binding_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_binding_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_binding_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_binding_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_binding_v1_set_layout_override
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_binding_v1_enable
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_binding_v1_disable
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_seat_v1_add_listener
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_seat_v1_set_user_data
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_seat_v1_get_user_data
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_seat_v1_get_version
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_seat_v1_destroy
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_seat_v1_ensure_next_key_eaten
    , Bindings.River.XkbBindingsV1.Generated.Unsafe.river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten
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
  , "void hs_bindgen_a413bbde22a389b8 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ba1086b4093edcfd ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9d8c5ce8ea9aa669 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_72e50aa5595a37d5 ("
  , "  struct river_xkb_bindings_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_binding_v1 *hs_bindgen_0615a4e9ac57ac08 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2,"
  , "  uint32_t arg3,"
  , "  uint32_t arg4"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_xkb_binding)(arg1, arg2, arg3, arg4);"
  , "}"
  , "struct river_xkb_bindings_seat_v1 *hs_bindgen_cb2f2e4f892d1147 ("
  , "  struct river_xkb_bindings_v1 *arg1,"
  , "  struct river_seat_v1 *arg2"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_v1_get_seat)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_85d13859505f31d3 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  struct river_xkb_binding_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a5d33f2a2c969a35 ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2d13e3ca42a108c7 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3d429eee80869eb8 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_binding_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9ca18dc5f5a4a605 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_8d7b876f361844ee ("
  , "  struct river_xkb_binding_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_set_layout_override)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ebf93068b65db471 ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_enable)(arg1);"
  , "}"
  , "void hs_bindgen_00ac99232c1ef66f ("
  , "  struct river_xkb_binding_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_binding_v1_disable)(arg1);"
  , "}"
  , "signed int hs_bindgen_6b2348e49e05e08e ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  struct river_xkb_bindings_seat_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2600af004de4fab9 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e961a3a83c00ea78 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b8a1afdaa1f90bc3 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_bindings_seat_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9a0a2d63a384201c ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_399cacbdde3ae74c ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_ensure_next_key_eaten)(arg1);"
  , "}"
  , "void hs_bindgen_df4332b949bed023 ("
  , "  struct river_xkb_bindings_seat_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_a413bbde22a389b8" hs_bindgen_a413bbde22a389b8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_set_user_data@
hs_bindgen_a413bbde22a389b8 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a413bbde22a389b8 =
  RIP.fromFFIType hs_bindgen_a413bbde22a389b8_base

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
  hs_bindgen_a413bbde22a389b8

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_ba1086b4093edcfd" hs_bindgen_ba1086b4093edcfd_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_get_user_data@
hs_bindgen_ba1086b4093edcfd ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ba1086b4093edcfd =
  RIP.fromFFIType hs_bindgen_ba1086b4093edcfd_base

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
  hs_bindgen_ba1086b4093edcfd

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_get_version@
foreign import ccall unsafe "hs_bindgen_9d8c5ce8ea9aa669" hs_bindgen_9d8c5ce8ea9aa669_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_get_version@
hs_bindgen_9d8c5ce8ea9aa669 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9d8c5ce8ea9aa669 =
  RIP.fromFFIType hs_bindgen_9d8c5ce8ea9aa669_base

{-| __C declaration:__ @river_xkb_bindings_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 199:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_v1_get_version ::
     RIP.Ptr River_xkb_bindings_v1
     -- ^ __C declaration:__ @river_xkb_bindings_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_v1_get_version =
  hs_bindgen_9d8c5ce8ea9aa669

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_destroy@
foreign import ccall unsafe "hs_bindgen_72e50aa5595a37d5" hs_bindgen_72e50aa5595a37d5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_destroy@
hs_bindgen_72e50aa5595a37d5 ::
     RIP.Ptr River_xkb_bindings_v1
  -> IO ()
hs_bindgen_72e50aa5595a37d5 =
  RIP.fromFFIType hs_bindgen_72e50aa5595a37d5_base

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
  hs_bindgen_72e50aa5595a37d5

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_get_xkb_binding@
foreign import ccall unsafe "hs_bindgen_0615a4e9ac57ac08" hs_bindgen_0615a4e9ac57ac08_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_get_xkb_binding@
hs_bindgen_0615a4e9ac57ac08 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_binding_v1)
hs_bindgen_0615a4e9ac57ac08 =
  RIP.fromFFIType hs_bindgen_0615a4e9ac57ac08_base

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
  hs_bindgen_0615a4e9ac57ac08

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_get_seat@
foreign import ccall unsafe "hs_bindgen_cb2f2e4f892d1147" hs_bindgen_cb2f2e4f892d1147_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_v1_get_seat@
hs_bindgen_cb2f2e4f892d1147 ::
     RIP.Ptr River_xkb_bindings_v1
  -> RIP.Ptr Bindings.River.WindowManagementV1.Generated.River_seat_v1
  -> IO (RIP.Ptr River_xkb_bindings_seat_v1)
hs_bindgen_cb2f2e4f892d1147 =
  RIP.fromFFIType hs_bindgen_cb2f2e4f892d1147_base

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
  hs_bindgen_cb2f2e4f892d1147

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_85d13859505f31d3" hs_bindgen_85d13859505f31d3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_add_listener@
hs_bindgen_85d13859505f31d3 ::
     RIP.Ptr River_xkb_binding_v1
  -> PtrConst.PtrConst River_xkb_binding_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_85d13859505f31d3 =
  RIP.fromFFIType hs_bindgen_85d13859505f31d3_base

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
  hs_bindgen_85d13859505f31d3

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_a5d33f2a2c969a35" hs_bindgen_a5d33f2a2c969a35_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_set_user_data@
hs_bindgen_a5d33f2a2c969a35 ::
     RIP.Ptr River_xkb_binding_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a5d33f2a2c969a35 =
  RIP.fromFFIType hs_bindgen_a5d33f2a2c969a35_base

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
  hs_bindgen_a5d33f2a2c969a35

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_2d13e3ca42a108c7" hs_bindgen_2d13e3ca42a108c7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_get_user_data@
hs_bindgen_2d13e3ca42a108c7 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2d13e3ca42a108c7 =
  RIP.fromFFIType hs_bindgen_2d13e3ca42a108c7_base

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
  hs_bindgen_2d13e3ca42a108c7

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_get_version@
foreign import ccall unsafe "hs_bindgen_3d429eee80869eb8" hs_bindgen_3d429eee80869eb8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_get_version@
hs_bindgen_3d429eee80869eb8 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3d429eee80869eb8 =
  RIP.fromFFIType hs_bindgen_3d429eee80869eb8_base

{-| __C declaration:__ @river_xkb_binding_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 385:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_binding_v1_get_version ::
     RIP.Ptr River_xkb_binding_v1
     -- ^ __C declaration:__ @river_xkb_binding_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_binding_v1_get_version =
  hs_bindgen_3d429eee80869eb8

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_destroy@
foreign import ccall unsafe "hs_bindgen_9ca18dc5f5a4a605" hs_bindgen_9ca18dc5f5a4a605_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_destroy@
hs_bindgen_9ca18dc5f5a4a605 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_9ca18dc5f5a4a605 =
  RIP.fromFFIType hs_bindgen_9ca18dc5f5a4a605_base

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
  hs_bindgen_9ca18dc5f5a4a605

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_set_layout_override@
foreign import ccall unsafe "hs_bindgen_8d7b876f361844ee" hs_bindgen_8d7b876f361844ee_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_set_layout_override@
hs_bindgen_8d7b876f361844ee ::
     RIP.Ptr River_xkb_binding_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_8d7b876f361844ee =
  RIP.fromFFIType hs_bindgen_8d7b876f361844ee_base

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
  hs_bindgen_8d7b876f361844ee

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_enable@
foreign import ccall unsafe "hs_bindgen_ebf93068b65db471" hs_bindgen_ebf93068b65db471_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_enable@
hs_bindgen_ebf93068b65db471 ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_ebf93068b65db471 =
  RIP.fromFFIType hs_bindgen_ebf93068b65db471_base

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
  hs_bindgen_ebf93068b65db471

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_disable@
foreign import ccall unsafe "hs_bindgen_00ac99232c1ef66f" hs_bindgen_00ac99232c1ef66f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_binding_v1_disable@
hs_bindgen_00ac99232c1ef66f ::
     RIP.Ptr River_xkb_binding_v1
  -> IO ()
hs_bindgen_00ac99232c1ef66f =
  RIP.fromFFIType hs_bindgen_00ac99232c1ef66f_base

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
  hs_bindgen_00ac99232c1ef66f

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_6b2348e49e05e08e" hs_bindgen_6b2348e49e05e08e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_add_listener@
hs_bindgen_6b2348e49e05e08e ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> PtrConst.PtrConst River_xkb_bindings_seat_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_6b2348e49e05e08e =
  RIP.fromFFIType hs_bindgen_6b2348e49e05e08e_base

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
  hs_bindgen_6b2348e49e05e08e

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_2600af004de4fab9" hs_bindgen_2600af004de4fab9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_set_user_data@
hs_bindgen_2600af004de4fab9 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2600af004de4fab9 =
  RIP.fromFFIType hs_bindgen_2600af004de4fab9_base

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
  hs_bindgen_2600af004de4fab9

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e961a3a83c00ea78" hs_bindgen_e961a3a83c00ea78_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_get_user_data@
hs_bindgen_e961a3a83c00ea78 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e961a3a83c00ea78 =
  RIP.fromFFIType hs_bindgen_e961a3a83c00ea78_base

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
  hs_bindgen_e961a3a83c00ea78

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_get_version@
foreign import ccall unsafe "hs_bindgen_b8a1afdaa1f90bc3" hs_bindgen_b8a1afdaa1f90bc3_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_get_version@
hs_bindgen_b8a1afdaa1f90bc3 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b8a1afdaa1f90bc3 =
  RIP.fromFFIType hs_bindgen_b8a1afdaa1f90bc3_base

{-| __C declaration:__ @river_xkb_bindings_seat_v1_get_version@

    __defined at:__ @river-xkb-bindings-v1-client-protocol.h 526:1@

    __exported by:__ @river-xkb-bindings-v1-client-protocol.h@
-}
river_xkb_bindings_seat_v1_get_version ::
     RIP.Ptr River_xkb_bindings_seat_v1
     -- ^ __C declaration:__ @river_xkb_bindings_seat_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_bindings_seat_v1_get_version =
  hs_bindgen_b8a1afdaa1f90bc3

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_destroy@
foreign import ccall unsafe "hs_bindgen_9a0a2d63a384201c" hs_bindgen_9a0a2d63a384201c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_destroy@
hs_bindgen_9a0a2d63a384201c ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_9a0a2d63a384201c =
  RIP.fromFFIType hs_bindgen_9a0a2d63a384201c_base

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
  hs_bindgen_9a0a2d63a384201c

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_399cacbdde3ae74c" hs_bindgen_399cacbdde3ae74c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_ensure_next_key_eaten@
hs_bindgen_399cacbdde3ae74c ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_399cacbdde3ae74c =
  RIP.fromFFIType hs_bindgen_399cacbdde3ae74c_base

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
  hs_bindgen_399cacbdde3ae74c

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
foreign import ccall unsafe "hs_bindgen_df4332b949bed023" hs_bindgen_df4332b949bed023_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbBindingsV1_Generated_Bindings.River.XkbBindingsV1.Generated_Unsafe_river_xkb_bindings_seat_v1_cancel_ensure_next_key_eaten@
hs_bindgen_df4332b949bed023 ::
     RIP.Ptr River_xkb_bindings_seat_v1
  -> IO ()
hs_bindgen_df4332b949bed023 =
  RIP.fromFFIType hs_bindgen_df4332b949bed023_base

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
  hs_bindgen_df4332b949bed023

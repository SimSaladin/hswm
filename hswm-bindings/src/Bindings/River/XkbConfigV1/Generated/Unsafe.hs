{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.XkbConfigV1.Generated.Unsafe
    ( Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_config_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_config_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_config_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_config_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_config_v1_stop
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_config_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_config_v1_create_keymap
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keymap_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keymap_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keymap_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keymap_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keymap_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_set_keymap
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_set_layout_by_index
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_set_layout_by_name
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_capslock_enable
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_capslock_disable
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_numlock_enable
    , Bindings.River.XkbConfigV1.Generated.Unsafe.river_xkb_keyboard_v1_numlock_disable
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.XkbConfigV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-config-v1-client-protocol.h>"
  , "signed int hs_bindgen_15a16c4a14e0de0b ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_de09761b7f94c262 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5eaca3e2ccb4fada ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3fa01870ff7a6496 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_663cdcc7bf35e50b ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_410009db7c619dc4 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_keymap_v1 *hs_bindgen_2a6f5be62c52a1bb ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_create_keymap)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_96faee094cd7a25f ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2364e109ba6eea89 ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_89c351477b981cb7 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_25be80ccc79ddce7 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_73355f179233757f ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_761aa8674990bdde ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_87f1ddd55a41f01d ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e3d26ba007cc7d86 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_219eb64a7b8b8cef ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7e83e5c11fbba2f5 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_46894b8e892c7568 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_keymap)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6c828294eb0311b8 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_index)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_205ec276daa5040f ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_name)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_6eec062289ff76d9 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_ae0093b22b54ef8e ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_disable)(arg1);"
  , "}"
  , "void hs_bindgen_e1f1ab2b658cb252 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_8570053e543a67fa ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_15a16c4a14e0de0b" hs_bindgen_15a16c4a14e0de0b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_add_listener@
hs_bindgen_15a16c4a14e0de0b ::
     RIP.Ptr River_xkb_config_v1
  -> PtrConst.PtrConst River_xkb_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_15a16c4a14e0de0b =
  RIP.fromFFIType hs_bindgen_15a16c4a14e0de0b_base

{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 174:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_add_listener ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> PtrConst.PtrConst River_xkb_config_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_xkb_config_v1_add_listener =
  hs_bindgen_15a16c4a14e0de0b

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_de09761b7f94c262" hs_bindgen_de09761b7f94c262_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_set_user_data@
hs_bindgen_de09761b7f94c262 ::
     RIP.Ptr River_xkb_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_de09761b7f94c262 =
  RIP.fromFFIType hs_bindgen_de09761b7f94c262_base

{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 209:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_set_user_data ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_xkb_config_v1_set_user_data =
  hs_bindgen_de09761b7f94c262

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_5eaca3e2ccb4fada" hs_bindgen_5eaca3e2ccb4fada_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_get_user_data@
hs_bindgen_5eaca3e2ccb4fada ::
     RIP.Ptr River_xkb_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5eaca3e2ccb4fada =
  RIP.fromFFIType hs_bindgen_5eaca3e2ccb4fada_base

{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 216:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_user_data ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO (RIP.Ptr RIP.Void)
river_xkb_config_v1_get_user_data =
  hs_bindgen_5eaca3e2ccb4fada

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_3fa01870ff7a6496" hs_bindgen_3fa01870ff7a6496_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_get_version@
hs_bindgen_3fa01870ff7a6496 ::
     RIP.Ptr River_xkb_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3fa01870ff7a6496 =
  RIP.fromFFIType hs_bindgen_3fa01870ff7a6496_base

{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_config_v1_get_version =
  hs_bindgen_3fa01870ff7a6496

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_663cdcc7bf35e50b" hs_bindgen_663cdcc7bf35e50b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_stop@
hs_bindgen_663cdcc7bf35e50b ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_663cdcc7bf35e50b =
  RIP.fromFFIType hs_bindgen_663cdcc7bf35e50b_base

{-|

  > iface_river_xkb_config_v1

  This request indicates that the client no longer wishes to receive events on this object.

  The Wayland protocol is asynchronous, which means the server may send further events until the stop request is processed. The client must wait for a river_xkb_config_v1.finished event before destroying this object.

__C declaration:__ @river_xkb_config_v1_stop@

__defined at:__ @river-xkb-config-v1-client-protocol.h 238:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_stop ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO ()
river_xkb_config_v1_stop =
  hs_bindgen_663cdcc7bf35e50b

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_410009db7c619dc4" hs_bindgen_410009db7c619dc4_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_destroy@
hs_bindgen_410009db7c619dc4 ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_410009db7c619dc4 =
  RIP.fromFFIType hs_bindgen_410009db7c619dc4_base

{-|

  > iface_river_xkb_config_v1

  This request should be called after the finished event has been received to complete destruction of the object.

  It is a protocol error to make this request before the finished event has been received.

  If a client wishes to destroy this object it should send a river_xkb_config_v1.stop request and wait for a river_xkb_config_v1.finished event. Once the finished event is received it is safe to destroy this object and any other objects created through this interface.

__C declaration:__ @river_xkb_config_v1_destroy@

__defined at:__ @river-xkb-config-v1-client-protocol.h 260:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_destroy ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO ()
river_xkb_config_v1_destroy =
  hs_bindgen_410009db7c619dc4

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_create_keymap@
foreign import ccall unsafe "hs_bindgen_2a6f5be62c52a1bb" hs_bindgen_2a6f5be62c52a1bb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_config_v1_create_keymap@
hs_bindgen_2a6f5be62c52a1bb ::
     RIP.Ptr River_xkb_config_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_keymap_v1)
hs_bindgen_2a6f5be62c52a1bb =
  RIP.fromFFIType hs_bindgen_2a6f5be62c52a1bb_base

{-|

  > iface_river_xkb_config_v1

  The server must be able to mmap the fd with MAP_PRIVATE. The server will fstat the fd to obtain the size of the keymap. The client must not modify the contents of the fd after making this request. The client should seal the fd with fcntl.

__C declaration:__ @river_xkb_config_v1_create_keymap@

__defined at:__ @river-xkb-config-v1-client-protocol.h 275:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_create_keymap ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @fd@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @format@
  -> IO (RIP.Ptr River_xkb_keymap_v1)
river_xkb_config_v1_create_keymap =
  hs_bindgen_2a6f5be62c52a1bb

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_96faee094cd7a25f" hs_bindgen_96faee094cd7a25f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_add_listener@
hs_bindgen_96faee094cd7a25f ::
     RIP.Ptr River_xkb_keymap_v1
  -> PtrConst.PtrConst River_xkb_keymap_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_96faee094cd7a25f =
  RIP.fromFFIType hs_bindgen_96faee094cd7a25f_base

{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 316:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_add_listener ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> PtrConst.PtrConst River_xkb_keymap_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_xkb_keymap_v1_add_listener =
  hs_bindgen_96faee094cd7a25f

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_2364e109ba6eea89" hs_bindgen_2364e109ba6eea89_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_set_user_data@
hs_bindgen_2364e109ba6eea89 ::
     RIP.Ptr River_xkb_keymap_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2364e109ba6eea89 =
  RIP.fromFFIType hs_bindgen_2364e109ba6eea89_base

{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 341:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_set_user_data ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_xkb_keymap_v1_set_user_data =
  hs_bindgen_2364e109ba6eea89

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_89c351477b981cb7" hs_bindgen_89c351477b981cb7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_get_user_data@
hs_bindgen_89c351477b981cb7 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_89c351477b981cb7 =
  RIP.fromFFIType hs_bindgen_89c351477b981cb7_base

{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 348:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_user_data ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> IO (RIP.Ptr RIP.Void)
river_xkb_keymap_v1_get_user_data =
  hs_bindgen_89c351477b981cb7

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_get_version@
foreign import ccall unsafe "hs_bindgen_25be80ccc79ddce7" hs_bindgen_25be80ccc79ddce7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_get_version@
hs_bindgen_25be80ccc79ddce7 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_25be80ccc79ddce7 =
  RIP.fromFFIType hs_bindgen_25be80ccc79ddce7_base

{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keymap_v1_get_version =
  hs_bindgen_25be80ccc79ddce7

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_destroy@
foreign import ccall unsafe "hs_bindgen_73355f179233757f" hs_bindgen_73355f179233757f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keymap_v1_destroy@
hs_bindgen_73355f179233757f ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_73355f179233757f =
  RIP.fromFFIType hs_bindgen_73355f179233757f_base

{-|

  > iface_river_xkb_keymap_v1

  This request indicates that the client will no longer use the keymap object and that it may be safely destroyed.

__C declaration:__ @river_xkb_keymap_v1_destroy@

__defined at:__ @river-xkb-config-v1-client-protocol.h 366:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_destroy ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> IO ()
river_xkb_keymap_v1_destroy =
  hs_bindgen_73355f179233757f

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_761aa8674990bdde" hs_bindgen_761aa8674990bdde_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_add_listener@
hs_bindgen_761aa8674990bdde ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst River_xkb_keyboard_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_761aa8674990bdde =
  RIP.fromFFIType hs_bindgen_761aa8674990bdde_base

{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 466:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_add_listener ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> PtrConst.PtrConst River_xkb_keyboard_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
river_xkb_keyboard_v1_add_listener =
  hs_bindgen_761aa8674990bdde

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_87f1ddd55a41f01d" hs_bindgen_87f1ddd55a41f01d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_87f1ddd55a41f01d ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_87f1ddd55a41f01d =
  RIP.fromFFIType hs_bindgen_87f1ddd55a41f01d_base

{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 546:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_user_data ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
river_xkb_keyboard_v1_set_user_data =
  hs_bindgen_87f1ddd55a41f01d

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e3d26ba007cc7d86" hs_bindgen_e3d26ba007cc7d86_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_e3d26ba007cc7d86 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e3d26ba007cc7d86 =
  RIP.fromFFIType hs_bindgen_e3d26ba007cc7d86_base

{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 553:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_user_data ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO (RIP.Ptr RIP.Void)
river_xkb_keyboard_v1_get_user_data =
  hs_bindgen_e3d26ba007cc7d86

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_get_version@
foreign import ccall unsafe "hs_bindgen_219eb64a7b8b8cef" hs_bindgen_219eb64a7b8b8cef_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_get_version@
hs_bindgen_219eb64a7b8b8cef ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_219eb64a7b8b8cef =
  RIP.fromFFIType hs_bindgen_219eb64a7b8b8cef_base

{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keyboard_v1_get_version =
  hs_bindgen_219eb64a7b8b8cef

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_destroy@
foreign import ccall unsafe "hs_bindgen_7e83e5c11fbba2f5" hs_bindgen_7e83e5c11fbba2f5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_destroy@
hs_bindgen_7e83e5c11fbba2f5 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_7e83e5c11fbba2f5 =
  RIP.fromFFIType hs_bindgen_7e83e5c11fbba2f5_base

{-|

  > iface_river_xkb_keyboard_v1

  This request indicates that the client will no longer use the keyboard object and that it may be safely destroyed.

__C declaration:__ @river_xkb_keyboard_v1_destroy@

__defined at:__ @river-xkb-config-v1-client-protocol.h 571:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_destroy ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO ()
river_xkb_keyboard_v1_destroy =
  hs_bindgen_7e83e5c11fbba2f5

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_set_keymap@
foreign import ccall unsafe "hs_bindgen_46894b8e892c7568" hs_bindgen_46894b8e892c7568_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_46894b8e892c7568 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_46894b8e892c7568 =
  RIP.fromFFIType hs_bindgen_46894b8e892c7568_base

{-|

  > iface_river_xkb_keyboard_v1

  Set the keymap for the keyboard.

  It is a protocol error to pass a keymap object for which the river_xkb_keymap_v1.success event was not received.

__C declaration:__ @river_xkb_keyboard_v1_set_keymap@

__defined at:__ @river-xkb-config-v1-client-protocol.h 586:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_keymap ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @keymap@
  -> IO ()
river_xkb_keyboard_v1_set_keymap =
  hs_bindgen_46894b8e892c7568

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall unsafe "hs_bindgen_6c828294eb0311b8" hs_bindgen_6c828294eb0311b8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_6c828294eb0311b8 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_6c828294eb0311b8 =
  RIP.fromFFIType hs_bindgen_6c828294eb0311b8_base

{-|

  > iface_river_xkb_keyboard_v1

  Set the active layout for the keyboard's keymap. Has no effect if the layout index is out of bounds for the current keymap.

__C declaration:__ @river_xkb_keyboard_v1_set_layout_by_index@

__defined at:__ @river-xkb-config-v1-client-protocol.h 599:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_layout_by_index ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @index@
  -> IO ()
river_xkb_keyboard_v1_set_layout_by_index =
  hs_bindgen_6c828294eb0311b8

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall unsafe "hs_bindgen_205ec276daa5040f" hs_bindgen_205ec276daa5040f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_205ec276daa5040f ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_205ec276daa5040f =
  RIP.fromFFIType hs_bindgen_205ec276daa5040f_base

{-|

  > iface_river_xkb_keyboard_v1

  Set the active layout for the keyboard's keymap. Has no effect if there is no layout with the give name for the keyboard's keymap.

__C declaration:__ @river_xkb_keyboard_v1_set_layout_by_name@

__defined at:__ @river-xkb-config-v1-client-protocol.h 612:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_layout_by_name ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @name@
  -> IO ()
river_xkb_keyboard_v1_set_layout_by_name =
  hs_bindgen_205ec276daa5040f

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall unsafe "hs_bindgen_6eec062289ff76d9" hs_bindgen_6eec062289ff76d9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_6eec062289ff76d9 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_6eec062289ff76d9 =
  RIP.fromFFIType hs_bindgen_6eec062289ff76d9_base

{-|

  > iface_river_xkb_keyboard_v1

  Enable capslock for the keyboard.

__C declaration:__ @river_xkb_keyboard_v1_capslock_enable@

__defined at:__ @river-xkb-config-v1-client-protocol.h 624:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_capslock_enable ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO ()
river_xkb_keyboard_v1_capslock_enable =
  hs_bindgen_6eec062289ff76d9

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall unsafe "hs_bindgen_ae0093b22b54ef8e" hs_bindgen_ae0093b22b54ef8e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_ae0093b22b54ef8e ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_ae0093b22b54ef8e =
  RIP.fromFFIType hs_bindgen_ae0093b22b54ef8e_base

{-|

  > iface_river_xkb_keyboard_v1

  Disable capslock for the keyboard.

__C declaration:__ @river_xkb_keyboard_v1_capslock_disable@

__defined at:__ @river-xkb-config-v1-client-protocol.h 636:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_capslock_disable ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO ()
river_xkb_keyboard_v1_capslock_disable =
  hs_bindgen_ae0093b22b54ef8e

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall unsafe "hs_bindgen_e1f1ab2b658cb252" hs_bindgen_e1f1ab2b658cb252_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_e1f1ab2b658cb252 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_e1f1ab2b658cb252 =
  RIP.fromFFIType hs_bindgen_e1f1ab2b658cb252_base

{-|

  > iface_river_xkb_keyboard_v1

  Enable numlock for the keyboard.

__C declaration:__ @river_xkb_keyboard_v1_numlock_enable@

__defined at:__ @river-xkb-config-v1-client-protocol.h 648:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_numlock_enable ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO ()
river_xkb_keyboard_v1_numlock_enable =
  hs_bindgen_e1f1ab2b658cb252

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall unsafe "hs_bindgen_8570053e543a67fa" hs_bindgen_8570053e543a67fa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Unsafe_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_8570053e543a67fa ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_8570053e543a67fa =
  RIP.fromFFIType hs_bindgen_8570053e543a67fa_base

{-|

  > iface_river_xkb_keyboard_v1

  Disable numlock for the keyboard.

__C declaration:__ @river_xkb_keyboard_v1_numlock_disable@

__defined at:__ @river-xkb-config-v1-client-protocol.h 660:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_numlock_disable ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO ()
river_xkb_keyboard_v1_numlock_disable =
  hs_bindgen_8570053e543a67fa

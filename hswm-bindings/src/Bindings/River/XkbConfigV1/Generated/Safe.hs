{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.XkbConfigV1.Generated.Safe
    ( Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_config_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_config_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_config_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_config_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_config_v1_stop
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_config_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_config_v1_create_keymap
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keymap_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keymap_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keymap_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keymap_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keymap_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_set_keymap
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_set_layout_by_index
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_set_layout_by_name
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_capslock_enable
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_capslock_disable
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_numlock_enable
    , Bindings.River.XkbConfigV1.Generated.Safe.river_xkb_keyboard_v1_numlock_disable
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.XkbConfigV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-config-v1-client-protocol.h>"
  , "signed int hs_bindgen_a6f20a15101f841e ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9da81af8d3688eaf ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b0a80264b3733af6 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d4ce7e75b2c0d3c1 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_aacead8d0d27c44f ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_075bcd4e8dd53a1d ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_keymap_v1 *hs_bindgen_3c39efff13da75c9 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_create_keymap)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_5937a710f3a1adfb ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d07ed6b5de1b278c ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_fe2b5d0e415917b7 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c51551c37b8a0705 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b56a683b810b01d6 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_080aaa7c3bd27f19 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ad9a6d21f57f4f85 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_98d2c0ee795eb9a5 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5d6e0e80d77feec8 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ca40a3f1b39bc238 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_eaff07649b0a44fb ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_keymap)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_132878fbc0bd9b0a ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_index)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_bf9aac82f433d8fc ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_name)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_226acd4982a4b121 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_6bdeadc590c31485 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_disable)(arg1);"
  , "}"
  , "void hs_bindgen_230efe231fed0d93 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_536df47ee1e58239 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_add_listener@
foreign import ccall safe "hs_bindgen_a6f20a15101f841e" hs_bindgen_a6f20a15101f841e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_add_listener@
hs_bindgen_a6f20a15101f841e ::
     RIP.Ptr River_xkb_config_v1
  -> PtrConst.PtrConst River_xkb_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_a6f20a15101f841e =
  RIP.fromFFIType hs_bindgen_a6f20a15101f841e_base

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
  hs_bindgen_a6f20a15101f841e

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_set_user_data@
foreign import ccall safe "hs_bindgen_9da81af8d3688eaf" hs_bindgen_9da81af8d3688eaf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_set_user_data@
hs_bindgen_9da81af8d3688eaf ::
     RIP.Ptr River_xkb_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9da81af8d3688eaf =
  RIP.fromFFIType hs_bindgen_9da81af8d3688eaf_base

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
  hs_bindgen_9da81af8d3688eaf

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_get_user_data@
foreign import ccall safe "hs_bindgen_b0a80264b3733af6" hs_bindgen_b0a80264b3733af6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_get_user_data@
hs_bindgen_b0a80264b3733af6 ::
     RIP.Ptr River_xkb_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b0a80264b3733af6 =
  RIP.fromFFIType hs_bindgen_b0a80264b3733af6_base

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
  hs_bindgen_b0a80264b3733af6

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_get_version@
foreign import ccall safe "hs_bindgen_d4ce7e75b2c0d3c1" hs_bindgen_d4ce7e75b2c0d3c1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_get_version@
hs_bindgen_d4ce7e75b2c0d3c1 ::
     RIP.Ptr River_xkb_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d4ce7e75b2c0d3c1 =
  RIP.fromFFIType hs_bindgen_d4ce7e75b2c0d3c1_base

{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_config_v1_get_version =
  hs_bindgen_d4ce7e75b2c0d3c1

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_stop@
foreign import ccall safe "hs_bindgen_aacead8d0d27c44f" hs_bindgen_aacead8d0d27c44f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_stop@
hs_bindgen_aacead8d0d27c44f ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_aacead8d0d27c44f =
  RIP.fromFFIType hs_bindgen_aacead8d0d27c44f_base

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
  hs_bindgen_aacead8d0d27c44f

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_destroy@
foreign import ccall safe "hs_bindgen_075bcd4e8dd53a1d" hs_bindgen_075bcd4e8dd53a1d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_destroy@
hs_bindgen_075bcd4e8dd53a1d ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_075bcd4e8dd53a1d =
  RIP.fromFFIType hs_bindgen_075bcd4e8dd53a1d_base

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
  hs_bindgen_075bcd4e8dd53a1d

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_create_keymap@
foreign import ccall safe "hs_bindgen_3c39efff13da75c9" hs_bindgen_3c39efff13da75c9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_config_v1_create_keymap@
hs_bindgen_3c39efff13da75c9 ::
     RIP.Ptr River_xkb_config_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_keymap_v1)
hs_bindgen_3c39efff13da75c9 =
  RIP.fromFFIType hs_bindgen_3c39efff13da75c9_base

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
  hs_bindgen_3c39efff13da75c9

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_add_listener@
foreign import ccall safe "hs_bindgen_5937a710f3a1adfb" hs_bindgen_5937a710f3a1adfb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_add_listener@
hs_bindgen_5937a710f3a1adfb ::
     RIP.Ptr River_xkb_keymap_v1
  -> PtrConst.PtrConst River_xkb_keymap_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_5937a710f3a1adfb =
  RIP.fromFFIType hs_bindgen_5937a710f3a1adfb_base

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
  hs_bindgen_5937a710f3a1adfb

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_set_user_data@
foreign import ccall safe "hs_bindgen_d07ed6b5de1b278c" hs_bindgen_d07ed6b5de1b278c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_set_user_data@
hs_bindgen_d07ed6b5de1b278c ::
     RIP.Ptr River_xkb_keymap_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_d07ed6b5de1b278c =
  RIP.fromFFIType hs_bindgen_d07ed6b5de1b278c_base

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
  hs_bindgen_d07ed6b5de1b278c

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_get_user_data@
foreign import ccall safe "hs_bindgen_fe2b5d0e415917b7" hs_bindgen_fe2b5d0e415917b7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_get_user_data@
hs_bindgen_fe2b5d0e415917b7 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_fe2b5d0e415917b7 =
  RIP.fromFFIType hs_bindgen_fe2b5d0e415917b7_base

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
  hs_bindgen_fe2b5d0e415917b7

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_get_version@
foreign import ccall safe "hs_bindgen_c51551c37b8a0705" hs_bindgen_c51551c37b8a0705_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_get_version@
hs_bindgen_c51551c37b8a0705 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c51551c37b8a0705 =
  RIP.fromFFIType hs_bindgen_c51551c37b8a0705_base

{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keymap_v1_get_version =
  hs_bindgen_c51551c37b8a0705

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_destroy@
foreign import ccall safe "hs_bindgen_b56a683b810b01d6" hs_bindgen_b56a683b810b01d6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keymap_v1_destroy@
hs_bindgen_b56a683b810b01d6 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_b56a683b810b01d6 =
  RIP.fromFFIType hs_bindgen_b56a683b810b01d6_base

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
  hs_bindgen_b56a683b810b01d6

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_add_listener@
foreign import ccall safe "hs_bindgen_080aaa7c3bd27f19" hs_bindgen_080aaa7c3bd27f19_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_add_listener@
hs_bindgen_080aaa7c3bd27f19 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst River_xkb_keyboard_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_080aaa7c3bd27f19 =
  RIP.fromFFIType hs_bindgen_080aaa7c3bd27f19_base

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
  hs_bindgen_080aaa7c3bd27f19

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_set_user_data@
foreign import ccall safe "hs_bindgen_ad9a6d21f57f4f85" hs_bindgen_ad9a6d21f57f4f85_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_ad9a6d21f57f4f85 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ad9a6d21f57f4f85 =
  RIP.fromFFIType hs_bindgen_ad9a6d21f57f4f85_base

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
  hs_bindgen_ad9a6d21f57f4f85

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_get_user_data@
foreign import ccall safe "hs_bindgen_98d2c0ee795eb9a5" hs_bindgen_98d2c0ee795eb9a5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_98d2c0ee795eb9a5 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_98d2c0ee795eb9a5 =
  RIP.fromFFIType hs_bindgen_98d2c0ee795eb9a5_base

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
  hs_bindgen_98d2c0ee795eb9a5

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_get_version@
foreign import ccall safe "hs_bindgen_5d6e0e80d77feec8" hs_bindgen_5d6e0e80d77feec8_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_get_version@
hs_bindgen_5d6e0e80d77feec8 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5d6e0e80d77feec8 =
  RIP.fromFFIType hs_bindgen_5d6e0e80d77feec8_base

{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keyboard_v1_get_version =
  hs_bindgen_5d6e0e80d77feec8

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_destroy@
foreign import ccall safe "hs_bindgen_ca40a3f1b39bc238" hs_bindgen_ca40a3f1b39bc238_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_destroy@
hs_bindgen_ca40a3f1b39bc238 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_ca40a3f1b39bc238 =
  RIP.fromFFIType hs_bindgen_ca40a3f1b39bc238_base

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
  hs_bindgen_ca40a3f1b39bc238

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_set_keymap@
foreign import ccall safe "hs_bindgen_eaff07649b0a44fb" hs_bindgen_eaff07649b0a44fb_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_eaff07649b0a44fb ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_eaff07649b0a44fb =
  RIP.fromFFIType hs_bindgen_eaff07649b0a44fb_base

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
  hs_bindgen_eaff07649b0a44fb

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall safe "hs_bindgen_132878fbc0bd9b0a" hs_bindgen_132878fbc0bd9b0a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_132878fbc0bd9b0a ::
     RIP.Ptr River_xkb_keyboard_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_132878fbc0bd9b0a =
  RIP.fromFFIType hs_bindgen_132878fbc0bd9b0a_base

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
  hs_bindgen_132878fbc0bd9b0a

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall safe "hs_bindgen_bf9aac82f433d8fc" hs_bindgen_bf9aac82f433d8fc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_bf9aac82f433d8fc ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_bf9aac82f433d8fc =
  RIP.fromFFIType hs_bindgen_bf9aac82f433d8fc_base

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
  hs_bindgen_bf9aac82f433d8fc

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall safe "hs_bindgen_226acd4982a4b121" hs_bindgen_226acd4982a4b121_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_226acd4982a4b121 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_226acd4982a4b121 =
  RIP.fromFFIType hs_bindgen_226acd4982a4b121_base

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
  hs_bindgen_226acd4982a4b121

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall safe "hs_bindgen_6bdeadc590c31485" hs_bindgen_6bdeadc590c31485_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_6bdeadc590c31485 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_6bdeadc590c31485 =
  RIP.fromFFIType hs_bindgen_6bdeadc590c31485_base

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
  hs_bindgen_6bdeadc590c31485

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall safe "hs_bindgen_230efe231fed0d93" hs_bindgen_230efe231fed0d93_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_230efe231fed0d93 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_230efe231fed0d93 =
  RIP.fromFFIType hs_bindgen_230efe231fed0d93_base

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
  hs_bindgen_230efe231fed0d93

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall safe "hs_bindgen_536df47ee1e58239" hs_bindgen_536df47ee1e58239_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_Safe_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_536df47ee1e58239 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_536df47ee1e58239 =
  RIP.fromFFIType hs_bindgen_536df47ee1e58239_base

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
  hs_bindgen_536df47ee1e58239

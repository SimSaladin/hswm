{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.XkbConfigV1.Safe
    ( Generated.River.XkbConfigV1.Safe.river_xkb_config_v1_add_listener
    , Generated.River.XkbConfigV1.Safe.river_xkb_config_v1_set_user_data
    , Generated.River.XkbConfigV1.Safe.river_xkb_config_v1_get_user_data
    , Generated.River.XkbConfigV1.Safe.river_xkb_config_v1_get_version
    , Generated.River.XkbConfigV1.Safe.river_xkb_config_v1_stop
    , Generated.River.XkbConfigV1.Safe.river_xkb_config_v1_destroy
    , Generated.River.XkbConfigV1.Safe.river_xkb_config_v1_create_keymap
    , Generated.River.XkbConfigV1.Safe.river_xkb_keymap_v1_add_listener
    , Generated.River.XkbConfigV1.Safe.river_xkb_keymap_v1_set_user_data
    , Generated.River.XkbConfigV1.Safe.river_xkb_keymap_v1_get_user_data
    , Generated.River.XkbConfigV1.Safe.river_xkb_keymap_v1_get_version
    , Generated.River.XkbConfigV1.Safe.river_xkb_keymap_v1_destroy
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_add_listener
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_set_user_data
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_get_user_data
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_get_version
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_destroy
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_set_keymap
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_set_layout_by_index
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_set_layout_by_name
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_capslock_enable
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_capslock_disable
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_numlock_enable
    , Generated.River.XkbConfigV1.Safe.river_xkb_keyboard_v1_numlock_disable
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.XkbConfigV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-config-v1-client-protocol.h>"
  , "signed int hs_bindgen_4421c423e7d00277 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_21d5cf951a076d10 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b11663ff3c34bbe5 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_c0591f76916ee51f ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_19d1263c01f96d66 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_ed0cda579127ca6d ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_keymap_v1 *hs_bindgen_2c1f4608b56a8182 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_create_keymap)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_d2c58075d201ec4c ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_ee3a3868a811df55 ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2490538575a776f7 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_67eb4862dfbfc3b5 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_6492bab5ddd30534 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_8e4227e82c9577d7 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_04eea12c4e37d344 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_cf0f9b0dc6b8023c ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8783607134c28818 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_dd1c9517b31c8e4f ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_69cfc607f4a88599 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_keymap)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ffe9b04153311a07 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_index)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ab7cd0e9cebd487b ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_name)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_37c74e39c3eeb821 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_5f635ddeca3be65f ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_disable)(arg1);"
  , "}"
  , "void hs_bindgen_e5af0adb328b6957 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_8e37b31c722056c7 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_add_listener@
foreign import ccall safe "hs_bindgen_4421c423e7d00277" hs_bindgen_4421c423e7d00277_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_add_listener@
hs_bindgen_4421c423e7d00277 ::
     RIP.Ptr River_xkb_config_v1
  -> PtrConst.PtrConst River_xkb_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_4421c423e7d00277 =
  RIP.fromFFIType hs_bindgen_4421c423e7d00277_base

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
  hs_bindgen_4421c423e7d00277

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_set_user_data@
foreign import ccall safe "hs_bindgen_21d5cf951a076d10" hs_bindgen_21d5cf951a076d10_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_set_user_data@
hs_bindgen_21d5cf951a076d10 ::
     RIP.Ptr River_xkb_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_21d5cf951a076d10 =
  RIP.fromFFIType hs_bindgen_21d5cf951a076d10_base

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
  hs_bindgen_21d5cf951a076d10

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_get_user_data@
foreign import ccall safe "hs_bindgen_b11663ff3c34bbe5" hs_bindgen_b11663ff3c34bbe5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_get_user_data@
hs_bindgen_b11663ff3c34bbe5 ::
     RIP.Ptr River_xkb_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b11663ff3c34bbe5 =
  RIP.fromFFIType hs_bindgen_b11663ff3c34bbe5_base

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
  hs_bindgen_b11663ff3c34bbe5

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_get_version@
foreign import ccall safe "hs_bindgen_c0591f76916ee51f" hs_bindgen_c0591f76916ee51f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_get_version@
hs_bindgen_c0591f76916ee51f ::
     RIP.Ptr River_xkb_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_c0591f76916ee51f =
  RIP.fromFFIType hs_bindgen_c0591f76916ee51f_base

{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_config_v1_get_version =
  hs_bindgen_c0591f76916ee51f

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_stop@
foreign import ccall safe "hs_bindgen_19d1263c01f96d66" hs_bindgen_19d1263c01f96d66_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_stop@
hs_bindgen_19d1263c01f96d66 ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_19d1263c01f96d66 =
  RIP.fromFFIType hs_bindgen_19d1263c01f96d66_base

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
  hs_bindgen_19d1263c01f96d66

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_destroy@
foreign import ccall safe "hs_bindgen_ed0cda579127ca6d" hs_bindgen_ed0cda579127ca6d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_destroy@
hs_bindgen_ed0cda579127ca6d ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_ed0cda579127ca6d =
  RIP.fromFFIType hs_bindgen_ed0cda579127ca6d_base

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
  hs_bindgen_ed0cda579127ca6d

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_create_keymap@
foreign import ccall safe "hs_bindgen_2c1f4608b56a8182" hs_bindgen_2c1f4608b56a8182_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_create_keymap@
hs_bindgen_2c1f4608b56a8182 ::
     RIP.Ptr River_xkb_config_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_keymap_v1)
hs_bindgen_2c1f4608b56a8182 =
  RIP.fromFFIType hs_bindgen_2c1f4608b56a8182_base

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
  hs_bindgen_2c1f4608b56a8182

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_add_listener@
foreign import ccall safe "hs_bindgen_d2c58075d201ec4c" hs_bindgen_d2c58075d201ec4c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_add_listener@
hs_bindgen_d2c58075d201ec4c ::
     RIP.Ptr River_xkb_keymap_v1
  -> PtrConst.PtrConst River_xkb_keymap_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_d2c58075d201ec4c =
  RIP.fromFFIType hs_bindgen_d2c58075d201ec4c_base

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
  hs_bindgen_d2c58075d201ec4c

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_set_user_data@
foreign import ccall safe "hs_bindgen_ee3a3868a811df55" hs_bindgen_ee3a3868a811df55_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_set_user_data@
hs_bindgen_ee3a3868a811df55 ::
     RIP.Ptr River_xkb_keymap_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_ee3a3868a811df55 =
  RIP.fromFFIType hs_bindgen_ee3a3868a811df55_base

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
  hs_bindgen_ee3a3868a811df55

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_get_user_data@
foreign import ccall safe "hs_bindgen_2490538575a776f7" hs_bindgen_2490538575a776f7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_get_user_data@
hs_bindgen_2490538575a776f7 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2490538575a776f7 =
  RIP.fromFFIType hs_bindgen_2490538575a776f7_base

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
  hs_bindgen_2490538575a776f7

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_get_version@
foreign import ccall safe "hs_bindgen_67eb4862dfbfc3b5" hs_bindgen_67eb4862dfbfc3b5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_get_version@
hs_bindgen_67eb4862dfbfc3b5 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_67eb4862dfbfc3b5 =
  RIP.fromFFIType hs_bindgen_67eb4862dfbfc3b5_base

{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keymap_v1_get_version =
  hs_bindgen_67eb4862dfbfc3b5

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_destroy@
foreign import ccall safe "hs_bindgen_6492bab5ddd30534" hs_bindgen_6492bab5ddd30534_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_destroy@
hs_bindgen_6492bab5ddd30534 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_6492bab5ddd30534 =
  RIP.fromFFIType hs_bindgen_6492bab5ddd30534_base

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
  hs_bindgen_6492bab5ddd30534

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_add_listener@
foreign import ccall safe "hs_bindgen_8e4227e82c9577d7" hs_bindgen_8e4227e82c9577d7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_add_listener@
hs_bindgen_8e4227e82c9577d7 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst River_xkb_keyboard_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8e4227e82c9577d7 =
  RIP.fromFFIType hs_bindgen_8e4227e82c9577d7_base

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
  hs_bindgen_8e4227e82c9577d7

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_user_data@
foreign import ccall safe "hs_bindgen_04eea12c4e37d344" hs_bindgen_04eea12c4e37d344_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_04eea12c4e37d344 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_04eea12c4e37d344 =
  RIP.fromFFIType hs_bindgen_04eea12c4e37d344_base

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
  hs_bindgen_04eea12c4e37d344

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_get_user_data@
foreign import ccall safe "hs_bindgen_cf0f9b0dc6b8023c" hs_bindgen_cf0f9b0dc6b8023c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_cf0f9b0dc6b8023c ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_cf0f9b0dc6b8023c =
  RIP.fromFFIType hs_bindgen_cf0f9b0dc6b8023c_base

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
  hs_bindgen_cf0f9b0dc6b8023c

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_get_version@
foreign import ccall safe "hs_bindgen_8783607134c28818" hs_bindgen_8783607134c28818_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_get_version@
hs_bindgen_8783607134c28818 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8783607134c28818 =
  RIP.fromFFIType hs_bindgen_8783607134c28818_base

{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keyboard_v1_get_version =
  hs_bindgen_8783607134c28818

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_destroy@
foreign import ccall safe "hs_bindgen_dd1c9517b31c8e4f" hs_bindgen_dd1c9517b31c8e4f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_destroy@
hs_bindgen_dd1c9517b31c8e4f ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_dd1c9517b31c8e4f =
  RIP.fromFFIType hs_bindgen_dd1c9517b31c8e4f_base

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
  hs_bindgen_dd1c9517b31c8e4f

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_keymap@
foreign import ccall safe "hs_bindgen_69cfc607f4a88599" hs_bindgen_69cfc607f4a88599_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_69cfc607f4a88599 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_69cfc607f4a88599 =
  RIP.fromFFIType hs_bindgen_69cfc607f4a88599_base

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
  hs_bindgen_69cfc607f4a88599

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall safe "hs_bindgen_ffe9b04153311a07" hs_bindgen_ffe9b04153311a07_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_ffe9b04153311a07 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_ffe9b04153311a07 =
  RIP.fromFFIType hs_bindgen_ffe9b04153311a07_base

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
  hs_bindgen_ffe9b04153311a07

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall safe "hs_bindgen_ab7cd0e9cebd487b" hs_bindgen_ab7cd0e9cebd487b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_ab7cd0e9cebd487b ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_ab7cd0e9cebd487b =
  RIP.fromFFIType hs_bindgen_ab7cd0e9cebd487b_base

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
  hs_bindgen_ab7cd0e9cebd487b

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall safe "hs_bindgen_37c74e39c3eeb821" hs_bindgen_37c74e39c3eeb821_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_37c74e39c3eeb821 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_37c74e39c3eeb821 =
  RIP.fromFFIType hs_bindgen_37c74e39c3eeb821_base

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
  hs_bindgen_37c74e39c3eeb821

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall safe "hs_bindgen_5f635ddeca3be65f" hs_bindgen_5f635ddeca3be65f_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_5f635ddeca3be65f ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_5f635ddeca3be65f =
  RIP.fromFFIType hs_bindgen_5f635ddeca3be65f_base

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
  hs_bindgen_5f635ddeca3be65f

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall safe "hs_bindgen_e5af0adb328b6957" hs_bindgen_e5af0adb328b6957_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_e5af0adb328b6957 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_e5af0adb328b6957 =
  RIP.fromFFIType hs_bindgen_e5af0adb328b6957_base

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
  hs_bindgen_e5af0adb328b6957

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall safe "hs_bindgen_8e37b31c722056c7" hs_bindgen_8e37b31c722056c7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_8e37b31c722056c7 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_8e37b31c722056c7 =
  RIP.fromFFIType hs_bindgen_8e37b31c722056c7_base

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
  hs_bindgen_8e37b31c722056c7

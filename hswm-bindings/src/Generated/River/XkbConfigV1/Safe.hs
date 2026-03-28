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
  , "signed int hs_bindgen_e11c14fbc765f4f6 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_2f511ee2fb7f4d9c ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_75f5906dcbe50844 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_dd86122c4681b4e1 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_fa8ce39cc34c0db1 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_44a4b8cc57c7c660 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_keymap_v1 *hs_bindgen_df26ccbf6f304d12 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_create_keymap)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_384bca2b6da9daf9 ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6ef1340419a20f0f ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c2519d9370b57f22 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a39ed427e778c6eb ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_f80c75637bd8dda6 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_1a5ca13f9770090e ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_1273ea176983344b ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_62c8c5040975530e ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ea6ce09abcb755e7 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e9fe461beec628bd ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_87a17445abbe3db9 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_keymap)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2d737d197224e68c ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_index)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f487cc41d33b7399 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_name)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3bef7f49b60cc9d6 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_4607323cfc6cd144 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_disable)(arg1);"
  , "}"
  , "void hs_bindgen_f14c36af34caa336 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_40467f05867efb67 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_add_listener@
foreign import ccall safe "hs_bindgen_e11c14fbc765f4f6" hs_bindgen_e11c14fbc765f4f6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_add_listener@
hs_bindgen_e11c14fbc765f4f6 ::
     RIP.Ptr River_xkb_config_v1
  -> PtrConst.PtrConst River_xkb_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e11c14fbc765f4f6 =
  RIP.fromFFIType hs_bindgen_e11c14fbc765f4f6_base

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
  hs_bindgen_e11c14fbc765f4f6

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_set_user_data@
foreign import ccall safe "hs_bindgen_2f511ee2fb7f4d9c" hs_bindgen_2f511ee2fb7f4d9c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_set_user_data@
hs_bindgen_2f511ee2fb7f4d9c ::
     RIP.Ptr River_xkb_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2f511ee2fb7f4d9c =
  RIP.fromFFIType hs_bindgen_2f511ee2fb7f4d9c_base

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
  hs_bindgen_2f511ee2fb7f4d9c

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_get_user_data@
foreign import ccall safe "hs_bindgen_75f5906dcbe50844" hs_bindgen_75f5906dcbe50844_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_get_user_data@
hs_bindgen_75f5906dcbe50844 ::
     RIP.Ptr River_xkb_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_75f5906dcbe50844 =
  RIP.fromFFIType hs_bindgen_75f5906dcbe50844_base

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
  hs_bindgen_75f5906dcbe50844

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_get_version@
foreign import ccall safe "hs_bindgen_dd86122c4681b4e1" hs_bindgen_dd86122c4681b4e1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_get_version@
hs_bindgen_dd86122c4681b4e1 ::
     RIP.Ptr River_xkb_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_dd86122c4681b4e1 =
  RIP.fromFFIType hs_bindgen_dd86122c4681b4e1_base

{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_config_v1_get_version =
  hs_bindgen_dd86122c4681b4e1

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_stop@
foreign import ccall safe "hs_bindgen_fa8ce39cc34c0db1" hs_bindgen_fa8ce39cc34c0db1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_stop@
hs_bindgen_fa8ce39cc34c0db1 ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_fa8ce39cc34c0db1 =
  RIP.fromFFIType hs_bindgen_fa8ce39cc34c0db1_base

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
  hs_bindgen_fa8ce39cc34c0db1

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_destroy@
foreign import ccall safe "hs_bindgen_44a4b8cc57c7c660" hs_bindgen_44a4b8cc57c7c660_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_destroy@
hs_bindgen_44a4b8cc57c7c660 ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_44a4b8cc57c7c660 =
  RIP.fromFFIType hs_bindgen_44a4b8cc57c7c660_base

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
  hs_bindgen_44a4b8cc57c7c660

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_create_keymap@
foreign import ccall safe "hs_bindgen_df26ccbf6f304d12" hs_bindgen_df26ccbf6f304d12_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_config_v1_create_keymap@
hs_bindgen_df26ccbf6f304d12 ::
     RIP.Ptr River_xkb_config_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_keymap_v1)
hs_bindgen_df26ccbf6f304d12 =
  RIP.fromFFIType hs_bindgen_df26ccbf6f304d12_base

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
  hs_bindgen_df26ccbf6f304d12

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_add_listener@
foreign import ccall safe "hs_bindgen_384bca2b6da9daf9" hs_bindgen_384bca2b6da9daf9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_add_listener@
hs_bindgen_384bca2b6da9daf9 ::
     RIP.Ptr River_xkb_keymap_v1
  -> PtrConst.PtrConst River_xkb_keymap_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_384bca2b6da9daf9 =
  RIP.fromFFIType hs_bindgen_384bca2b6da9daf9_base

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
  hs_bindgen_384bca2b6da9daf9

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_set_user_data@
foreign import ccall safe "hs_bindgen_6ef1340419a20f0f" hs_bindgen_6ef1340419a20f0f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_set_user_data@
hs_bindgen_6ef1340419a20f0f ::
     RIP.Ptr River_xkb_keymap_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6ef1340419a20f0f =
  RIP.fromFFIType hs_bindgen_6ef1340419a20f0f_base

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
  hs_bindgen_6ef1340419a20f0f

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_get_user_data@
foreign import ccall safe "hs_bindgen_c2519d9370b57f22" hs_bindgen_c2519d9370b57f22_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_get_user_data@
hs_bindgen_c2519d9370b57f22 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c2519d9370b57f22 =
  RIP.fromFFIType hs_bindgen_c2519d9370b57f22_base

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
  hs_bindgen_c2519d9370b57f22

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_get_version@
foreign import ccall safe "hs_bindgen_a39ed427e778c6eb" hs_bindgen_a39ed427e778c6eb_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_get_version@
hs_bindgen_a39ed427e778c6eb ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a39ed427e778c6eb =
  RIP.fromFFIType hs_bindgen_a39ed427e778c6eb_base

{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keymap_v1_get_version =
  hs_bindgen_a39ed427e778c6eb

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_destroy@
foreign import ccall safe "hs_bindgen_f80c75637bd8dda6" hs_bindgen_f80c75637bd8dda6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keymap_v1_destroy@
hs_bindgen_f80c75637bd8dda6 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_f80c75637bd8dda6 =
  RIP.fromFFIType hs_bindgen_f80c75637bd8dda6_base

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
  hs_bindgen_f80c75637bd8dda6

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_add_listener@
foreign import ccall safe "hs_bindgen_1a5ca13f9770090e" hs_bindgen_1a5ca13f9770090e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_add_listener@
hs_bindgen_1a5ca13f9770090e ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst River_xkb_keyboard_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_1a5ca13f9770090e =
  RIP.fromFFIType hs_bindgen_1a5ca13f9770090e_base

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
  hs_bindgen_1a5ca13f9770090e

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_user_data@
foreign import ccall safe "hs_bindgen_1273ea176983344b" hs_bindgen_1273ea176983344b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_1273ea176983344b ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1273ea176983344b =
  RIP.fromFFIType hs_bindgen_1273ea176983344b_base

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
  hs_bindgen_1273ea176983344b

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_get_user_data@
foreign import ccall safe "hs_bindgen_62c8c5040975530e" hs_bindgen_62c8c5040975530e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_62c8c5040975530e ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_62c8c5040975530e =
  RIP.fromFFIType hs_bindgen_62c8c5040975530e_base

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
  hs_bindgen_62c8c5040975530e

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_get_version@
foreign import ccall safe "hs_bindgen_ea6ce09abcb755e7" hs_bindgen_ea6ce09abcb755e7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_get_version@
hs_bindgen_ea6ce09abcb755e7 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ea6ce09abcb755e7 =
  RIP.fromFFIType hs_bindgen_ea6ce09abcb755e7_base

{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keyboard_v1_get_version =
  hs_bindgen_ea6ce09abcb755e7

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_destroy@
foreign import ccall safe "hs_bindgen_e9fe461beec628bd" hs_bindgen_e9fe461beec628bd_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_destroy@
hs_bindgen_e9fe461beec628bd ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_e9fe461beec628bd =
  RIP.fromFFIType hs_bindgen_e9fe461beec628bd_base

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
  hs_bindgen_e9fe461beec628bd

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_keymap@
foreign import ccall safe "hs_bindgen_87a17445abbe3db9" hs_bindgen_87a17445abbe3db9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_87a17445abbe3db9 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_87a17445abbe3db9 =
  RIP.fromFFIType hs_bindgen_87a17445abbe3db9_base

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
  hs_bindgen_87a17445abbe3db9

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall safe "hs_bindgen_2d737d197224e68c" hs_bindgen_2d737d197224e68c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_2d737d197224e68c ::
     RIP.Ptr River_xkb_keyboard_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_2d737d197224e68c =
  RIP.fromFFIType hs_bindgen_2d737d197224e68c_base

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
  hs_bindgen_2d737d197224e68c

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall safe "hs_bindgen_f487cc41d33b7399" hs_bindgen_f487cc41d33b7399_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_f487cc41d33b7399 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_f487cc41d33b7399 =
  RIP.fromFFIType hs_bindgen_f487cc41d33b7399_base

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
  hs_bindgen_f487cc41d33b7399

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall safe "hs_bindgen_3bef7f49b60cc9d6" hs_bindgen_3bef7f49b60cc9d6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_3bef7f49b60cc9d6 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_3bef7f49b60cc9d6 =
  RIP.fromFFIType hs_bindgen_3bef7f49b60cc9d6_base

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
  hs_bindgen_3bef7f49b60cc9d6

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall safe "hs_bindgen_4607323cfc6cd144" hs_bindgen_4607323cfc6cd144_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_4607323cfc6cd144 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_4607323cfc6cd144 =
  RIP.fromFFIType hs_bindgen_4607323cfc6cd144_base

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
  hs_bindgen_4607323cfc6cd144

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall safe "hs_bindgen_f14c36af34caa336" hs_bindgen_f14c36af34caa336_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_f14c36af34caa336 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_f14c36af34caa336 =
  RIP.fromFFIType hs_bindgen_f14c36af34caa336_base

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
  hs_bindgen_f14c36af34caa336

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall safe "hs_bindgen_40467f05867efb67" hs_bindgen_40467f05867efb67_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Safe_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_40467f05867efb67 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_40467f05867efb67 =
  RIP.fromFFIType hs_bindgen_40467f05867efb67_base

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
  hs_bindgen_40467f05867efb67

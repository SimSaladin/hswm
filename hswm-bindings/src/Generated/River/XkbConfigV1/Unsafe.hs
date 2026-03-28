{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.XkbConfigV1.Unsafe
    ( Generated.River.XkbConfigV1.Unsafe.river_xkb_config_v1_add_listener
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_config_v1_set_user_data
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_config_v1_get_user_data
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_config_v1_get_version
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_config_v1_stop
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_config_v1_destroy
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_config_v1_create_keymap
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keymap_v1_add_listener
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keymap_v1_set_user_data
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keymap_v1_get_user_data
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keymap_v1_get_version
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keymap_v1_destroy
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_add_listener
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_set_user_data
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_get_user_data
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_get_version
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_destroy
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_set_keymap
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_set_layout_by_index
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_set_layout_by_name
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_capslock_enable
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_capslock_disable
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_numlock_enable
    , Generated.River.XkbConfigV1.Unsafe.river_xkb_keyboard_v1_numlock_disable
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.XkbConfigV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-config-v1-client-protocol.h>"
  , "signed int hs_bindgen_7df8f56026625080 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_131a2713fa99fe5e ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1bf69b1e68f5ad6a ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_9b28407c35057cc1 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_13148261e40d3b4a ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_fae9ea285940a988 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_keymap_v1 *hs_bindgen_a7ccd8e19c7c1e3e ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_create_keymap)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_196924deccc4b25f ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_48713608ccdaf5aa ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_b078aa2a9bb97b2c ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4f0b295df9c8ba9d ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_958b79bfe8201ceb ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_9a61dafe285b8ddc ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a0f327c357c40db4 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_cceaf0069db489d9 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ff430c38ebd0da06 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9011afc03a2dbbb7 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_12e634433ac71b9d ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_keymap)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_71194db4c40e1561 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_index)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b7213eb856cbdd76 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_name)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0c0fdcfd146e7b7d ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_ec1f9eed258fcad6 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_disable)(arg1);"
  , "}"
  , "void hs_bindgen_646d3d81bb7df59c ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_c79261fefa3cab96 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_7df8f56026625080" hs_bindgen_7df8f56026625080_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_add_listener@
hs_bindgen_7df8f56026625080 ::
     RIP.Ptr River_xkb_config_v1
  -> PtrConst.PtrConst River_xkb_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7df8f56026625080 =
  RIP.fromFFIType hs_bindgen_7df8f56026625080_base

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
  hs_bindgen_7df8f56026625080

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_131a2713fa99fe5e" hs_bindgen_131a2713fa99fe5e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_set_user_data@
hs_bindgen_131a2713fa99fe5e ::
     RIP.Ptr River_xkb_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_131a2713fa99fe5e =
  RIP.fromFFIType hs_bindgen_131a2713fa99fe5e_base

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
  hs_bindgen_131a2713fa99fe5e

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_1bf69b1e68f5ad6a" hs_bindgen_1bf69b1e68f5ad6a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_get_user_data@
hs_bindgen_1bf69b1e68f5ad6a ::
     RIP.Ptr River_xkb_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1bf69b1e68f5ad6a =
  RIP.fromFFIType hs_bindgen_1bf69b1e68f5ad6a_base

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
  hs_bindgen_1bf69b1e68f5ad6a

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_9b28407c35057cc1" hs_bindgen_9b28407c35057cc1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_get_version@
hs_bindgen_9b28407c35057cc1 ::
     RIP.Ptr River_xkb_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_9b28407c35057cc1 =
  RIP.fromFFIType hs_bindgen_9b28407c35057cc1_base

{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_config_v1_get_version =
  hs_bindgen_9b28407c35057cc1

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_13148261e40d3b4a" hs_bindgen_13148261e40d3b4a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_stop@
hs_bindgen_13148261e40d3b4a ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_13148261e40d3b4a =
  RIP.fromFFIType hs_bindgen_13148261e40d3b4a_base

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
  hs_bindgen_13148261e40d3b4a

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_fae9ea285940a988" hs_bindgen_fae9ea285940a988_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_destroy@
hs_bindgen_fae9ea285940a988 ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_fae9ea285940a988 =
  RIP.fromFFIType hs_bindgen_fae9ea285940a988_base

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
  hs_bindgen_fae9ea285940a988

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_create_keymap@
foreign import ccall unsafe "hs_bindgen_a7ccd8e19c7c1e3e" hs_bindgen_a7ccd8e19c7c1e3e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_create_keymap@
hs_bindgen_a7ccd8e19c7c1e3e ::
     RIP.Ptr River_xkb_config_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_keymap_v1)
hs_bindgen_a7ccd8e19c7c1e3e =
  RIP.fromFFIType hs_bindgen_a7ccd8e19c7c1e3e_base

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
  hs_bindgen_a7ccd8e19c7c1e3e

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_196924deccc4b25f" hs_bindgen_196924deccc4b25f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_add_listener@
hs_bindgen_196924deccc4b25f ::
     RIP.Ptr River_xkb_keymap_v1
  -> PtrConst.PtrConst River_xkb_keymap_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_196924deccc4b25f =
  RIP.fromFFIType hs_bindgen_196924deccc4b25f_base

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
  hs_bindgen_196924deccc4b25f

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_48713608ccdaf5aa" hs_bindgen_48713608ccdaf5aa_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_set_user_data@
hs_bindgen_48713608ccdaf5aa ::
     RIP.Ptr River_xkb_keymap_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_48713608ccdaf5aa =
  RIP.fromFFIType hs_bindgen_48713608ccdaf5aa_base

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
  hs_bindgen_48713608ccdaf5aa

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_b078aa2a9bb97b2c" hs_bindgen_b078aa2a9bb97b2c_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_get_user_data@
hs_bindgen_b078aa2a9bb97b2c ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_b078aa2a9bb97b2c =
  RIP.fromFFIType hs_bindgen_b078aa2a9bb97b2c_base

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
  hs_bindgen_b078aa2a9bb97b2c

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_get_version@
foreign import ccall unsafe "hs_bindgen_4f0b295df9c8ba9d" hs_bindgen_4f0b295df9c8ba9d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_get_version@
hs_bindgen_4f0b295df9c8ba9d ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4f0b295df9c8ba9d =
  RIP.fromFFIType hs_bindgen_4f0b295df9c8ba9d_base

{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keymap_v1_get_version =
  hs_bindgen_4f0b295df9c8ba9d

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_destroy@
foreign import ccall unsafe "hs_bindgen_958b79bfe8201ceb" hs_bindgen_958b79bfe8201ceb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_destroy@
hs_bindgen_958b79bfe8201ceb ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_958b79bfe8201ceb =
  RIP.fromFFIType hs_bindgen_958b79bfe8201ceb_base

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
  hs_bindgen_958b79bfe8201ceb

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_9a61dafe285b8ddc" hs_bindgen_9a61dafe285b8ddc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_add_listener@
hs_bindgen_9a61dafe285b8ddc ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst River_xkb_keyboard_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_9a61dafe285b8ddc =
  RIP.fromFFIType hs_bindgen_9a61dafe285b8ddc_base

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
  hs_bindgen_9a61dafe285b8ddc

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_a0f327c357c40db4" hs_bindgen_a0f327c357c40db4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_a0f327c357c40db4 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a0f327c357c40db4 =
  RIP.fromFFIType hs_bindgen_a0f327c357c40db4_base

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
  hs_bindgen_a0f327c357c40db4

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_cceaf0069db489d9" hs_bindgen_cceaf0069db489d9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_cceaf0069db489d9 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_cceaf0069db489d9 =
  RIP.fromFFIType hs_bindgen_cceaf0069db489d9_base

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
  hs_bindgen_cceaf0069db489d9

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ff430c38ebd0da06" hs_bindgen_ff430c38ebd0da06_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_get_version@
hs_bindgen_ff430c38ebd0da06 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ff430c38ebd0da06 =
  RIP.fromFFIType hs_bindgen_ff430c38ebd0da06_base

{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keyboard_v1_get_version =
  hs_bindgen_ff430c38ebd0da06

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_destroy@
foreign import ccall unsafe "hs_bindgen_9011afc03a2dbbb7" hs_bindgen_9011afc03a2dbbb7_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_destroy@
hs_bindgen_9011afc03a2dbbb7 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_9011afc03a2dbbb7 =
  RIP.fromFFIType hs_bindgen_9011afc03a2dbbb7_base

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
  hs_bindgen_9011afc03a2dbbb7

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_keymap@
foreign import ccall unsafe "hs_bindgen_12e634433ac71b9d" hs_bindgen_12e634433ac71b9d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_12e634433ac71b9d ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_12e634433ac71b9d =
  RIP.fromFFIType hs_bindgen_12e634433ac71b9d_base

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
  hs_bindgen_12e634433ac71b9d

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall unsafe "hs_bindgen_71194db4c40e1561" hs_bindgen_71194db4c40e1561_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_71194db4c40e1561 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_71194db4c40e1561 =
  RIP.fromFFIType hs_bindgen_71194db4c40e1561_base

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
  hs_bindgen_71194db4c40e1561

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall unsafe "hs_bindgen_b7213eb856cbdd76" hs_bindgen_b7213eb856cbdd76_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_b7213eb856cbdd76 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_b7213eb856cbdd76 =
  RIP.fromFFIType hs_bindgen_b7213eb856cbdd76_base

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
  hs_bindgen_b7213eb856cbdd76

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall unsafe "hs_bindgen_0c0fdcfd146e7b7d" hs_bindgen_0c0fdcfd146e7b7d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_0c0fdcfd146e7b7d ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_0c0fdcfd146e7b7d =
  RIP.fromFFIType hs_bindgen_0c0fdcfd146e7b7d_base

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
  hs_bindgen_0c0fdcfd146e7b7d

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall unsafe "hs_bindgen_ec1f9eed258fcad6" hs_bindgen_ec1f9eed258fcad6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_ec1f9eed258fcad6 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_ec1f9eed258fcad6 =
  RIP.fromFFIType hs_bindgen_ec1f9eed258fcad6_base

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
  hs_bindgen_ec1f9eed258fcad6

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall unsafe "hs_bindgen_646d3d81bb7df59c" hs_bindgen_646d3d81bb7df59c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_646d3d81bb7df59c ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_646d3d81bb7df59c =
  RIP.fromFFIType hs_bindgen_646d3d81bb7df59c_base

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
  hs_bindgen_646d3d81bb7df59c

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall unsafe "hs_bindgen_c79261fefa3cab96" hs_bindgen_c79261fefa3cab96_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_c79261fefa3cab96 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_c79261fefa3cab96 =
  RIP.fromFFIType hs_bindgen_c79261fefa3cab96_base

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
  hs_bindgen_c79261fefa3cab96

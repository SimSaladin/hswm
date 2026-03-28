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
  , "signed int hs_bindgen_a2630fc51adf62fc ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_705b521a5ea4783d ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a2138d03cf2ba34e ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5fa6a02b51df0932 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b62e42178a28e394 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_eebcd8f043f366f6 ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_config_v1_destroy)(arg1);"
  , "}"
  , "struct river_xkb_keymap_v1 *hs_bindgen_1e21226653f444f8 ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return (river_xkb_config_v1_create_keymap)(arg1, arg2, arg3);"
  , "}"
  , "signed int hs_bindgen_09844352bec63578 ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_1ee7e1acbd28749b ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7f952c43372b7cd5 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_778711b1906c5b7d ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keymap_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_b0a825a2f8709621 ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keymap_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_818e2ce581f9ee52 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0e9e5b7f73c0fac5 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_d1c6ac51b48106d8 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f1ce6d7cc60dcc21 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return (river_xkb_keyboard_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_479b44e094a04377 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_75aa360664be7710 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_keymap)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f913289077cdd548 ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_index)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_f3fda81becccce2e ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_set_layout_by_name)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a628282921a6c4b0 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_441fe1bfbe9e9567 ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_capslock_disable)(arg1);"
  , "}"
  , "void hs_bindgen_c1ed3ce53fb97faa ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_enable)(arg1);"
  , "}"
  , "void hs_bindgen_dc1012c89dbffe6e ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  (river_xkb_keyboard_v1_numlock_disable)(arg1);"
  , "}"
  ]))

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_a2630fc51adf62fc" hs_bindgen_a2630fc51adf62fc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_add_listener@
hs_bindgen_a2630fc51adf62fc ::
     RIP.Ptr River_xkb_config_v1
  -> PtrConst.PtrConst River_xkb_config_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_a2630fc51adf62fc =
  RIP.fromFFIType hs_bindgen_a2630fc51adf62fc_base

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
  hs_bindgen_a2630fc51adf62fc

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_705b521a5ea4783d" hs_bindgen_705b521a5ea4783d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_set_user_data@
hs_bindgen_705b521a5ea4783d ::
     RIP.Ptr River_xkb_config_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_705b521a5ea4783d =
  RIP.fromFFIType hs_bindgen_705b521a5ea4783d_base

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
  hs_bindgen_705b521a5ea4783d

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_a2138d03cf2ba34e" hs_bindgen_a2138d03cf2ba34e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_get_user_data@
hs_bindgen_a2138d03cf2ba34e ::
     RIP.Ptr River_xkb_config_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a2138d03cf2ba34e =
  RIP.fromFFIType hs_bindgen_a2138d03cf2ba34e_base

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
  hs_bindgen_a2138d03cf2ba34e

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_5fa6a02b51df0932" hs_bindgen_5fa6a02b51df0932_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_get_version@
hs_bindgen_5fa6a02b51df0932 ::
     RIP.Ptr River_xkb_config_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5fa6a02b51df0932 =
  RIP.fromFFIType hs_bindgen_5fa6a02b51df0932_base

{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version ::
     RIP.Ptr River_xkb_config_v1
     -- ^ __C declaration:__ @river_xkb_config_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_config_v1_get_version =
  hs_bindgen_5fa6a02b51df0932

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_b62e42178a28e394" hs_bindgen_b62e42178a28e394_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_stop@
hs_bindgen_b62e42178a28e394 ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_b62e42178a28e394 =
  RIP.fromFFIType hs_bindgen_b62e42178a28e394_base

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
  hs_bindgen_b62e42178a28e394

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_eebcd8f043f366f6" hs_bindgen_eebcd8f043f366f6_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_destroy@
hs_bindgen_eebcd8f043f366f6 ::
     RIP.Ptr River_xkb_config_v1
  -> IO ()
hs_bindgen_eebcd8f043f366f6 =
  RIP.fromFFIType hs_bindgen_eebcd8f043f366f6_base

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
  hs_bindgen_eebcd8f043f366f6

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_create_keymap@
foreign import ccall unsafe "hs_bindgen_1e21226653f444f8" hs_bindgen_1e21226653f444f8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_config_v1_create_keymap@
hs_bindgen_1e21226653f444f8 ::
     RIP.Ptr River_xkb_config_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr River_xkb_keymap_v1)
hs_bindgen_1e21226653f444f8 =
  RIP.fromFFIType hs_bindgen_1e21226653f444f8_base

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
  hs_bindgen_1e21226653f444f8

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_09844352bec63578" hs_bindgen_09844352bec63578_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_add_listener@
hs_bindgen_09844352bec63578 ::
     RIP.Ptr River_xkb_keymap_v1
  -> PtrConst.PtrConst River_xkb_keymap_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_09844352bec63578 =
  RIP.fromFFIType hs_bindgen_09844352bec63578_base

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
  hs_bindgen_09844352bec63578

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_1ee7e1acbd28749b" hs_bindgen_1ee7e1acbd28749b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_set_user_data@
hs_bindgen_1ee7e1acbd28749b ::
     RIP.Ptr River_xkb_keymap_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1ee7e1acbd28749b =
  RIP.fromFFIType hs_bindgen_1ee7e1acbd28749b_base

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
  hs_bindgen_1ee7e1acbd28749b

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_7f952c43372b7cd5" hs_bindgen_7f952c43372b7cd5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_get_user_data@
hs_bindgen_7f952c43372b7cd5 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7f952c43372b7cd5 =
  RIP.fromFFIType hs_bindgen_7f952c43372b7cd5_base

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
  hs_bindgen_7f952c43372b7cd5

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_get_version@
foreign import ccall unsafe "hs_bindgen_778711b1906c5b7d" hs_bindgen_778711b1906c5b7d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_get_version@
hs_bindgen_778711b1906c5b7d ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_778711b1906c5b7d =
  RIP.fromFFIType hs_bindgen_778711b1906c5b7d_base

{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version ::
     RIP.Ptr River_xkb_keymap_v1
     -- ^ __C declaration:__ @river_xkb_keymap_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keymap_v1_get_version =
  hs_bindgen_778711b1906c5b7d

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_destroy@
foreign import ccall unsafe "hs_bindgen_b0a825a2f8709621" hs_bindgen_b0a825a2f8709621_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keymap_v1_destroy@
hs_bindgen_b0a825a2f8709621 ::
     RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_b0a825a2f8709621 =
  RIP.fromFFIType hs_bindgen_b0a825a2f8709621_base

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
  hs_bindgen_b0a825a2f8709621

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_818e2ce581f9ee52" hs_bindgen_818e2ce581f9ee52_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_add_listener@
hs_bindgen_818e2ce581f9ee52 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst River_xkb_keyboard_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_818e2ce581f9ee52 =
  RIP.fromFFIType hs_bindgen_818e2ce581f9ee52_base

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
  hs_bindgen_818e2ce581f9ee52

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_0e9e5b7f73c0fac5" hs_bindgen_0e9e5b7f73c0fac5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_0e9e5b7f73c0fac5 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0e9e5b7f73c0fac5 =
  RIP.fromFFIType hs_bindgen_0e9e5b7f73c0fac5_base

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
  hs_bindgen_0e9e5b7f73c0fac5

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_d1c6ac51b48106d8" hs_bindgen_d1c6ac51b48106d8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_d1c6ac51b48106d8 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_d1c6ac51b48106d8 =
  RIP.fromFFIType hs_bindgen_d1c6ac51b48106d8_base

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
  hs_bindgen_d1c6ac51b48106d8

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_get_version@
foreign import ccall unsafe "hs_bindgen_f1ce6d7cc60dcc21" hs_bindgen_f1ce6d7cc60dcc21_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_get_version@
hs_bindgen_f1ce6d7cc60dcc21 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f1ce6d7cc60dcc21 =
  RIP.fromFFIType hs_bindgen_f1ce6d7cc60dcc21_base

{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version ::
     RIP.Ptr River_xkb_keyboard_v1
     -- ^ __C declaration:__ @river_xkb_keyboard_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
river_xkb_keyboard_v1_get_version =
  hs_bindgen_f1ce6d7cc60dcc21

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_destroy@
foreign import ccall unsafe "hs_bindgen_479b44e094a04377" hs_bindgen_479b44e094a04377_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_destroy@
hs_bindgen_479b44e094a04377 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_479b44e094a04377 =
  RIP.fromFFIType hs_bindgen_479b44e094a04377_base

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
  hs_bindgen_479b44e094a04377

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_keymap@
foreign import ccall unsafe "hs_bindgen_75aa360664be7710" hs_bindgen_75aa360664be7710_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_75aa360664be7710 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> RIP.Ptr River_xkb_keymap_v1
  -> IO ()
hs_bindgen_75aa360664be7710 =
  RIP.fromFFIType hs_bindgen_75aa360664be7710_base

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
  hs_bindgen_75aa360664be7710

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall unsafe "hs_bindgen_f913289077cdd548" hs_bindgen_f913289077cdd548_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_f913289077cdd548 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_f913289077cdd548 =
  RIP.fromFFIType hs_bindgen_f913289077cdd548_base

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
  hs_bindgen_f913289077cdd548

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall unsafe "hs_bindgen_f3fda81becccce2e" hs_bindgen_f3fda81becccce2e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_f3fda81becccce2e ::
     RIP.Ptr River_xkb_keyboard_v1
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_f3fda81becccce2e =
  RIP.fromFFIType hs_bindgen_f3fda81becccce2e_base

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
  hs_bindgen_f3fda81becccce2e

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall unsafe "hs_bindgen_a628282921a6c4b0" hs_bindgen_a628282921a6c4b0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_a628282921a6c4b0 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_a628282921a6c4b0 =
  RIP.fromFFIType hs_bindgen_a628282921a6c4b0_base

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
  hs_bindgen_a628282921a6c4b0

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall unsafe "hs_bindgen_441fe1bfbe9e9567" hs_bindgen_441fe1bfbe9e9567_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_441fe1bfbe9e9567 ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_441fe1bfbe9e9567 =
  RIP.fromFFIType hs_bindgen_441fe1bfbe9e9567_base

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
  hs_bindgen_441fe1bfbe9e9567

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall unsafe "hs_bindgen_c1ed3ce53fb97faa" hs_bindgen_c1ed3ce53fb97faa_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_c1ed3ce53fb97faa ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_c1ed3ce53fb97faa =
  RIP.fromFFIType hs_bindgen_c1ed3ce53fb97faa_base

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
  hs_bindgen_c1ed3ce53fb97faa

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall unsafe "hs_bindgen_dc1012c89dbffe6e" hs_bindgen_dc1012c89dbffe6e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_Unsafe_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_dc1012c89dbffe6e ::
     RIP.Ptr River_xkb_keyboard_v1
  -> IO ()
hs_bindgen_dc1012c89dbffe6e =
  RIP.fromFFIType hs_bindgen_dc1012c89dbffe6e_base

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
  hs_bindgen_dc1012c89dbffe6e

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.XkbConfigV1.FunPtr
    ( Generated.River.XkbConfigV1.FunPtr.river_xkb_config_v1_add_listener
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_config_v1_set_user_data
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_config_v1_get_user_data
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_config_v1_get_version
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_config_v1_stop
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_config_v1_destroy
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_config_v1_create_keymap
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keymap_v1_add_listener
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keymap_v1_set_user_data
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keymap_v1_get_user_data
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keymap_v1_get_version
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keymap_v1_destroy
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_add_listener
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_set_user_data
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_get_user_data
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_get_version
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_destroy
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_set_keymap
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_set_layout_by_index
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_set_layout_by_name
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_capslock_enable
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_capslock_disable
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_numlock_enable
    , Generated.River.XkbConfigV1.FunPtr.river_xkb_keyboard_v1_numlock_disable
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.River.XkbConfigV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-config-v1-client-protocol.h>"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_bf89e7ee822f14c5 (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_add_listener;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7d260c2fb92acda9 (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_set_user_data;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_68ccdac259a3789c (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_get_user_data;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_a4471fa924db1268 (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_get_version;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fca76dd34ef5601d (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_stop;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1e0a17d3ebb7e27e (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_destroy;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_create_keymap */"
  , "__attribute__ ((const))"
  , "struct river_xkb_keymap_v1 *(*hs_bindgen_bee2cbd885166ce9 (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_create_keymap;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9ecfece37c441a55 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_add_listener;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_75aec50c63d2868b (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_set_user_data;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_48f034c6b992e812 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_get_user_data;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1ddfa8935a4810db (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_get_version;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_995a602e54c6a8e7 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_destroy;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_6150e1068b5bf406 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_add_listener;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e72765464153eca9 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_user_data;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_19d3bce6737fded4 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_get_user_data;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ce32d9c30415af97 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_get_version;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_03b3d70cd34af2c7 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_destroy;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_keymap */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6809e9e19d0fa66f (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_keymap;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_index */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f81943303cf38e79 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_layout_by_index;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_name */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2dcfabd7d189eee8 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_layout_by_name;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f6b5993d41605351 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_capslock_enable;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3460cc2b73f95265 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_capslock_disable;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1d85bac16c82c793 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_numlock_enable;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c809ceacc23055fb (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_numlock_disable;"
  , "}"
  ]))

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_bf89e7ee822f14c5" hs_bindgen_bf89e7ee822f14c5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_add_listener@
hs_bindgen_bf89e7ee822f14c5 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (PtrConst.PtrConst River_xkb_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_bf89e7ee822f14c5 =
  RIP.fromFFIType hs_bindgen_bf89e7ee822f14c5_base

{-# NOINLINE river_xkb_config_v1_add_listener #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 174:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (PtrConst.PtrConst River_xkb_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_config_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_bf89e7ee822f14c5

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_7d260c2fb92acda9" hs_bindgen_7d260c2fb92acda9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_set_user_data@
hs_bindgen_7d260c2fb92acda9 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_7d260c2fb92acda9 =
  RIP.fromFFIType hs_bindgen_7d260c2fb92acda9_base

{-# NOINLINE river_xkb_config_v1_set_user_data #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 209:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_config_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_7d260c2fb92acda9

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_68ccdac259a3789c" hs_bindgen_68ccdac259a3789c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_user_data@
hs_bindgen_68ccdac259a3789c :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_68ccdac259a3789c =
  RIP.fromFFIType hs_bindgen_68ccdac259a3789c_base

{-# NOINLINE river_xkb_config_v1_get_user_data #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 216:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_config_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_68ccdac259a3789c

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_a4471fa924db1268" hs_bindgen_a4471fa924db1268_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_version@
hs_bindgen_a4471fa924db1268 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_a4471fa924db1268 =
  RIP.fromFFIType hs_bindgen_a4471fa924db1268_base

{-# NOINLINE river_xkb_config_v1_get_version #-}
{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_config_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_a4471fa924db1268

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_fca76dd34ef5601d" hs_bindgen_fca76dd34ef5601d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_stop@
hs_bindgen_fca76dd34ef5601d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO ()))
hs_bindgen_fca76dd34ef5601d =
  RIP.fromFFIType hs_bindgen_fca76dd34ef5601d_base

{-# NOINLINE river_xkb_config_v1_stop #-}
{-|

  > iface_river_xkb_config_v1

  This request indicates that the client no longer wishes to receive events on this object.

  The Wayland protocol is asynchronous, which means the server may send further events until the stop request is processed. The client must wait for a river_xkb_config_v1.finished event before destroying this object.

__C declaration:__ @river_xkb_config_v1_stop@

__defined at:__ @river-xkb-config-v1-client-protocol.h 238:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_stop :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO ())
river_xkb_config_v1_stop =
  RIP.unsafePerformIO hs_bindgen_fca76dd34ef5601d

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_1e0a17d3ebb7e27e" hs_bindgen_1e0a17d3ebb7e27e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_destroy@
hs_bindgen_1e0a17d3ebb7e27e :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO ()))
hs_bindgen_1e0a17d3ebb7e27e =
  RIP.fromFFIType hs_bindgen_1e0a17d3ebb7e27e_base

{-# NOINLINE river_xkb_config_v1_destroy #-}
{-|

  > iface_river_xkb_config_v1

  This request should be called after the finished event has been received to complete destruction of the object.

  It is a protocol error to make this request before the finished event has been received.

  If a client wishes to destroy this object it should send a river_xkb_config_v1.stop request and wait for a river_xkb_config_v1.finished event. Once the finished event is received it is safe to destroy this object and any other objects created through this interface.

__C declaration:__ @river_xkb_config_v1_destroy@

__defined at:__ @river-xkb-config-v1-client-protocol.h 260:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO ())
river_xkb_config_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_1e0a17d3ebb7e27e

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_create_keymap@
foreign import ccall unsafe "hs_bindgen_bee2cbd885166ce9" hs_bindgen_bee2cbd885166ce9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_create_keymap@
hs_bindgen_bee2cbd885166ce9 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_keymap_v1)))
hs_bindgen_bee2cbd885166ce9 =
  RIP.fromFFIType hs_bindgen_bee2cbd885166ce9_base

{-# NOINLINE river_xkb_config_v1_create_keymap #-}
{-|

  > iface_river_xkb_config_v1

  The server must be able to mmap the fd with MAP_PRIVATE. The server will fstat the fd to obtain the size of the keymap. The client must not modify the contents of the fd after making this request. The client should seal the fd with fcntl.

__C declaration:__ @river_xkb_config_v1_create_keymap@

__defined at:__ @river-xkb-config-v1-client-protocol.h 275:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_create_keymap :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_keymap_v1))
river_xkb_config_v1_create_keymap =
  RIP.unsafePerformIO hs_bindgen_bee2cbd885166ce9

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_9ecfece37c441a55" hs_bindgen_9ecfece37c441a55_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_add_listener@
hs_bindgen_9ecfece37c441a55 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst River_xkb_keymap_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_9ecfece37c441a55 =
  RIP.fromFFIType hs_bindgen_9ecfece37c441a55_base

{-# NOINLINE river_xkb_keymap_v1_add_listener #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 316:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst River_xkb_keymap_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_keymap_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_9ecfece37c441a55

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_75aec50c63d2868b" hs_bindgen_75aec50c63d2868b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_set_user_data@
hs_bindgen_75aec50c63d2868b :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_75aec50c63d2868b =
  RIP.fromFFIType hs_bindgen_75aec50c63d2868b_base

{-# NOINLINE river_xkb_keymap_v1_set_user_data #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 341:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_keymap_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_75aec50c63d2868b

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_48f034c6b992e812" hs_bindgen_48f034c6b992e812_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_user_data@
hs_bindgen_48f034c6b992e812 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_48f034c6b992e812 =
  RIP.fromFFIType hs_bindgen_48f034c6b992e812_base

{-# NOINLINE river_xkb_keymap_v1_get_user_data #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 348:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_keymap_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_48f034c6b992e812

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_version@
foreign import ccall unsafe "hs_bindgen_1ddfa8935a4810db" hs_bindgen_1ddfa8935a4810db_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_version@
hs_bindgen_1ddfa8935a4810db :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_1ddfa8935a4810db =
  RIP.fromFFIType hs_bindgen_1ddfa8935a4810db_base

{-# NOINLINE river_xkb_keymap_v1_get_version #-}
{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_keymap_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_1ddfa8935a4810db

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_destroy@
foreign import ccall unsafe "hs_bindgen_995a602e54c6a8e7" hs_bindgen_995a602e54c6a8e7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_destroy@
hs_bindgen_995a602e54c6a8e7 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO ()))
hs_bindgen_995a602e54c6a8e7 =
  RIP.fromFFIType hs_bindgen_995a602e54c6a8e7_base

{-# NOINLINE river_xkb_keymap_v1_destroy #-}
{-|

  > iface_river_xkb_keymap_v1

  This request indicates that the client will no longer use the keymap object and that it may be safely destroyed.

__C declaration:__ @river_xkb_keymap_v1_destroy@

__defined at:__ @river-xkb-config-v1-client-protocol.h 366:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO ())
river_xkb_keymap_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_995a602e54c6a8e7

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_6150e1068b5bf406" hs_bindgen_6150e1068b5bf406_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_add_listener@
hs_bindgen_6150e1068b5bf406 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst River_xkb_keyboard_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_6150e1068b5bf406 =
  RIP.fromFFIType hs_bindgen_6150e1068b5bf406_base

{-# NOINLINE river_xkb_keyboard_v1_add_listener #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 466:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst River_xkb_keyboard_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_keyboard_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_6150e1068b5bf406

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_e72765464153eca9" hs_bindgen_e72765464153eca9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_e72765464153eca9 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_e72765464153eca9 =
  RIP.fromFFIType hs_bindgen_e72765464153eca9_base

{-# NOINLINE river_xkb_keyboard_v1_set_user_data #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 546:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_keyboard_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_e72765464153eca9

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_19d3bce6737fded4" hs_bindgen_19d3bce6737fded4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_19d3bce6737fded4 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_19d3bce6737fded4 =
  RIP.fromFFIType hs_bindgen_19d3bce6737fded4_base

{-# NOINLINE river_xkb_keyboard_v1_get_user_data #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 553:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_keyboard_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_19d3bce6737fded4

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ce32d9c30415af97" hs_bindgen_ce32d9c30415af97_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_version@
hs_bindgen_ce32d9c30415af97 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ce32d9c30415af97 =
  RIP.fromFFIType hs_bindgen_ce32d9c30415af97_base

{-# NOINLINE river_xkb_keyboard_v1_get_version #-}
{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_keyboard_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_ce32d9c30415af97

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_destroy@
foreign import ccall unsafe "hs_bindgen_03b3d70cd34af2c7" hs_bindgen_03b3d70cd34af2c7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_destroy@
hs_bindgen_03b3d70cd34af2c7 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_03b3d70cd34af2c7 =
  RIP.fromFFIType hs_bindgen_03b3d70cd34af2c7_base

{-# NOINLINE river_xkb_keyboard_v1_destroy #-}
{-|

  > iface_river_xkb_keyboard_v1

  This request indicates that the client will no longer use the keyboard object and that it may be safely destroyed.

__C declaration:__ @river_xkb_keyboard_v1_destroy@

__defined at:__ @river-xkb-config-v1-client-protocol.h 571:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_destroy :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ())
river_xkb_keyboard_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_03b3d70cd34af2c7

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_keymap@
foreign import ccall unsafe "hs_bindgen_6809e9e19d0fa66f" hs_bindgen_6809e9e19d0fa66f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_6809e9e19d0fa66f :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ()))
hs_bindgen_6809e9e19d0fa66f =
  RIP.fromFFIType hs_bindgen_6809e9e19d0fa66f_base

{-# NOINLINE river_xkb_keyboard_v1_set_keymap #-}
{-|

  > iface_river_xkb_keyboard_v1

  Set the keymap for the keyboard.

  It is a protocol error to pass a keymap object for which the river_xkb_keymap_v1.success event was not received.

__C declaration:__ @river_xkb_keyboard_v1_set_keymap@

__defined at:__ @river-xkb-config-v1-client-protocol.h 586:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_keymap :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ())
river_xkb_keyboard_v1_set_keymap =
  RIP.unsafePerformIO hs_bindgen_6809e9e19d0fa66f

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall unsafe "hs_bindgen_f81943303cf38e79" hs_bindgen_f81943303cf38e79_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_f81943303cf38e79 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_f81943303cf38e79 =
  RIP.fromFFIType hs_bindgen_f81943303cf38e79_base

{-# NOINLINE river_xkb_keyboard_v1_set_layout_by_index #-}
{-|

  > iface_river_xkb_keyboard_v1

  Set the active layout for the keyboard's keymap. Has no effect if the layout index is out of bounds for the current keymap.

__C declaration:__ @river_xkb_keyboard_v1_set_layout_by_index@

__defined at:__ @river-xkb-config-v1-client-protocol.h 599:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_layout_by_index :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
river_xkb_keyboard_v1_set_layout_by_index =
  RIP.unsafePerformIO hs_bindgen_f81943303cf38e79

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall unsafe "hs_bindgen_2dcfabd7d189eee8" hs_bindgen_2dcfabd7d189eee8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_2dcfabd7d189eee8 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_2dcfabd7d189eee8 =
  RIP.fromFFIType hs_bindgen_2dcfabd7d189eee8_base

{-# NOINLINE river_xkb_keyboard_v1_set_layout_by_name #-}
{-|

  > iface_river_xkb_keyboard_v1

  Set the active layout for the keyboard's keymap. Has no effect if there is no layout with the give name for the keyboard's keymap.

__C declaration:__ @river_xkb_keyboard_v1_set_layout_by_name@

__defined at:__ @river-xkb-config-v1-client-protocol.h 612:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_layout_by_name :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
river_xkb_keyboard_v1_set_layout_by_name =
  RIP.unsafePerformIO hs_bindgen_2dcfabd7d189eee8

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall unsafe "hs_bindgen_f6b5993d41605351" hs_bindgen_f6b5993d41605351_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_f6b5993d41605351 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_f6b5993d41605351 =
  RIP.fromFFIType hs_bindgen_f6b5993d41605351_base

{-# NOINLINE river_xkb_keyboard_v1_capslock_enable #-}
{-|

  > iface_river_xkb_keyboard_v1

  Enable capslock for the keyboard.

__C declaration:__ @river_xkb_keyboard_v1_capslock_enable@

__defined at:__ @river-xkb-config-v1-client-protocol.h 624:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_capslock_enable :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ())
river_xkb_keyboard_v1_capslock_enable =
  RIP.unsafePerformIO hs_bindgen_f6b5993d41605351

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall unsafe "hs_bindgen_3460cc2b73f95265" hs_bindgen_3460cc2b73f95265_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_3460cc2b73f95265 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_3460cc2b73f95265 =
  RIP.fromFFIType hs_bindgen_3460cc2b73f95265_base

{-# NOINLINE river_xkb_keyboard_v1_capslock_disable #-}
{-|

  > iface_river_xkb_keyboard_v1

  Disable capslock for the keyboard.

__C declaration:__ @river_xkb_keyboard_v1_capslock_disable@

__defined at:__ @river-xkb-config-v1-client-protocol.h 636:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_capslock_disable :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ())
river_xkb_keyboard_v1_capslock_disable =
  RIP.unsafePerformIO hs_bindgen_3460cc2b73f95265

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall unsafe "hs_bindgen_1d85bac16c82c793" hs_bindgen_1d85bac16c82c793_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_1d85bac16c82c793 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_1d85bac16c82c793 =
  RIP.fromFFIType hs_bindgen_1d85bac16c82c793_base

{-# NOINLINE river_xkb_keyboard_v1_numlock_enable #-}
{-|

  > iface_river_xkb_keyboard_v1

  Enable numlock for the keyboard.

__C declaration:__ @river_xkb_keyboard_v1_numlock_enable@

__defined at:__ @river-xkb-config-v1-client-protocol.h 648:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_numlock_enable :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ())
river_xkb_keyboard_v1_numlock_enable =
  RIP.unsafePerformIO hs_bindgen_1d85bac16c82c793

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall unsafe "hs_bindgen_c809ceacc23055fb" hs_bindgen_c809ceacc23055fb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_c809ceacc23055fb :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_c809ceacc23055fb =
  RIP.fromFFIType hs_bindgen_c809ceacc23055fb_base

{-# NOINLINE river_xkb_keyboard_v1_numlock_disable #-}
{-|

  > iface_river_xkb_keyboard_v1

  Disable numlock for the keyboard.

__C declaration:__ @river_xkb_keyboard_v1_numlock_disable@

__defined at:__ @river-xkb-config-v1-client-protocol.h 660:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_numlock_disable :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ())
river_xkb_keyboard_v1_numlock_disable =
  RIP.unsafePerformIO hs_bindgen_c809ceacc23055fb

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
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0c674804d1c831f8 (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_add_listener;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c92292a3176cf916 (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_set_user_data;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_88a377658449edfd (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_get_user_data;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8cdef2af3769d847 (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_get_version;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_77f4097121705f05 (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_stop;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_53f1294595fa0de5 (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_destroy;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_create_keymap */"
  , "__attribute__ ((const))"
  , "struct river_xkb_keymap_v1 *(*hs_bindgen_852d7a807cd3dab7 (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_create_keymap;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d52d7e39122b1b9e (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_add_listener;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a1e14ad444f739ae (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_set_user_data;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_d039d34ebac48349 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_get_user_data;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_ed4b4ff2aa4b6b9f (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_get_version;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_40a00d44fbfa7324 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_destroy;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_d731de9a732a6630 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_add_listener;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4031592d6d1397c7 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_user_data;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_95dd1d00bbf831f6 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_get_user_data;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_254a58db20c42c1a (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_get_version;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_309356d492b5b877 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_destroy;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_keymap */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_afdfcd4b0ec04cf9 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_keymap;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_index */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0360491883df7b08 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_layout_by_index;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_name */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_63fc013324a09696 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_layout_by_name;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c896905aa1a4772a (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_capslock_enable;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3460be042f33a511 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_capslock_disable;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ccdf7662f05ab3f1 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_numlock_enable;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_259070f5c36619fc (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_numlock_disable;"
  , "}"
  ]))

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_0c674804d1c831f8" hs_bindgen_0c674804d1c831f8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_add_listener@
hs_bindgen_0c674804d1c831f8 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (PtrConst.PtrConst River_xkb_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_0c674804d1c831f8 =
  RIP.fromFFIType hs_bindgen_0c674804d1c831f8_base

{-# NOINLINE river_xkb_config_v1_add_listener #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 174:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (PtrConst.PtrConst River_xkb_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_config_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_0c674804d1c831f8

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_c92292a3176cf916" hs_bindgen_c92292a3176cf916_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_set_user_data@
hs_bindgen_c92292a3176cf916 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_c92292a3176cf916 =
  RIP.fromFFIType hs_bindgen_c92292a3176cf916_base

{-# NOINLINE river_xkb_config_v1_set_user_data #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 209:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_config_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_c92292a3176cf916

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_88a377658449edfd" hs_bindgen_88a377658449edfd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_user_data@
hs_bindgen_88a377658449edfd :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_88a377658449edfd =
  RIP.fromFFIType hs_bindgen_88a377658449edfd_base

{-# NOINLINE river_xkb_config_v1_get_user_data #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 216:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_config_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_88a377658449edfd

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8cdef2af3769d847" hs_bindgen_8cdef2af3769d847_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_get_version@
hs_bindgen_8cdef2af3769d847 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8cdef2af3769d847 =
  RIP.fromFFIType hs_bindgen_8cdef2af3769d847_base

{-# NOINLINE river_xkb_config_v1_get_version #-}
{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_config_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_8cdef2af3769d847

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_77f4097121705f05" hs_bindgen_77f4097121705f05_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_stop@
hs_bindgen_77f4097121705f05 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO ()))
hs_bindgen_77f4097121705f05 =
  RIP.fromFFIType hs_bindgen_77f4097121705f05_base

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
  RIP.unsafePerformIO hs_bindgen_77f4097121705f05

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_53f1294595fa0de5" hs_bindgen_53f1294595fa0de5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_destroy@
hs_bindgen_53f1294595fa0de5 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO ()))
hs_bindgen_53f1294595fa0de5 =
  RIP.fromFFIType hs_bindgen_53f1294595fa0de5_base

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
  RIP.unsafePerformIO hs_bindgen_53f1294595fa0de5

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_create_keymap@
foreign import ccall unsafe "hs_bindgen_852d7a807cd3dab7" hs_bindgen_852d7a807cd3dab7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_create_keymap@
hs_bindgen_852d7a807cd3dab7 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_keymap_v1)))
hs_bindgen_852d7a807cd3dab7 =
  RIP.fromFFIType hs_bindgen_852d7a807cd3dab7_base

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
  RIP.unsafePerformIO hs_bindgen_852d7a807cd3dab7

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_d52d7e39122b1b9e" hs_bindgen_d52d7e39122b1b9e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_add_listener@
hs_bindgen_d52d7e39122b1b9e :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst River_xkb_keymap_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_d52d7e39122b1b9e =
  RIP.fromFFIType hs_bindgen_d52d7e39122b1b9e_base

{-# NOINLINE river_xkb_keymap_v1_add_listener #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 316:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst River_xkb_keymap_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_keymap_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_d52d7e39122b1b9e

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_a1e14ad444f739ae" hs_bindgen_a1e14ad444f739ae_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_set_user_data@
hs_bindgen_a1e14ad444f739ae :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_a1e14ad444f739ae =
  RIP.fromFFIType hs_bindgen_a1e14ad444f739ae_base

{-# NOINLINE river_xkb_keymap_v1_set_user_data #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 341:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_keymap_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_a1e14ad444f739ae

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_d039d34ebac48349" hs_bindgen_d039d34ebac48349_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_user_data@
hs_bindgen_d039d34ebac48349 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_d039d34ebac48349 =
  RIP.fromFFIType hs_bindgen_d039d34ebac48349_base

{-# NOINLINE river_xkb_keymap_v1_get_user_data #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 348:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_keymap_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_d039d34ebac48349

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ed4b4ff2aa4b6b9f" hs_bindgen_ed4b4ff2aa4b6b9f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_get_version@
hs_bindgen_ed4b4ff2aa4b6b9f :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_ed4b4ff2aa4b6b9f =
  RIP.fromFFIType hs_bindgen_ed4b4ff2aa4b6b9f_base

{-# NOINLINE river_xkb_keymap_v1_get_version #-}
{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_keymap_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_ed4b4ff2aa4b6b9f

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_destroy@
foreign import ccall unsafe "hs_bindgen_40a00d44fbfa7324" hs_bindgen_40a00d44fbfa7324_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_destroy@
hs_bindgen_40a00d44fbfa7324 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO ()))
hs_bindgen_40a00d44fbfa7324 =
  RIP.fromFFIType hs_bindgen_40a00d44fbfa7324_base

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
  RIP.unsafePerformIO hs_bindgen_40a00d44fbfa7324

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_d731de9a732a6630" hs_bindgen_d731de9a732a6630_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_add_listener@
hs_bindgen_d731de9a732a6630 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst River_xkb_keyboard_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_d731de9a732a6630 =
  RIP.fromFFIType hs_bindgen_d731de9a732a6630_base

{-# NOINLINE river_xkb_keyboard_v1_add_listener #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 466:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst River_xkb_keyboard_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_keyboard_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_d731de9a732a6630

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_4031592d6d1397c7" hs_bindgen_4031592d6d1397c7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_4031592d6d1397c7 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_4031592d6d1397c7 =
  RIP.fromFFIType hs_bindgen_4031592d6d1397c7_base

{-# NOINLINE river_xkb_keyboard_v1_set_user_data #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 546:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_keyboard_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_4031592d6d1397c7

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_95dd1d00bbf831f6" hs_bindgen_95dd1d00bbf831f6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_95dd1d00bbf831f6 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_95dd1d00bbf831f6 =
  RIP.fromFFIType hs_bindgen_95dd1d00bbf831f6_base

{-# NOINLINE river_xkb_keyboard_v1_get_user_data #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 553:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_keyboard_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_95dd1d00bbf831f6

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_version@
foreign import ccall unsafe "hs_bindgen_254a58db20c42c1a" hs_bindgen_254a58db20c42c1a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_get_version@
hs_bindgen_254a58db20c42c1a :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_254a58db20c42c1a =
  RIP.fromFFIType hs_bindgen_254a58db20c42c1a_base

{-# NOINLINE river_xkb_keyboard_v1_get_version #-}
{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_keyboard_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_254a58db20c42c1a

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_destroy@
foreign import ccall unsafe "hs_bindgen_309356d492b5b877" hs_bindgen_309356d492b5b877_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_destroy@
hs_bindgen_309356d492b5b877 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_309356d492b5b877 =
  RIP.fromFFIType hs_bindgen_309356d492b5b877_base

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
  RIP.unsafePerformIO hs_bindgen_309356d492b5b877

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_keymap@
foreign import ccall unsafe "hs_bindgen_afdfcd4b0ec04cf9" hs_bindgen_afdfcd4b0ec04cf9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_afdfcd4b0ec04cf9 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ()))
hs_bindgen_afdfcd4b0ec04cf9 =
  RIP.fromFFIType hs_bindgen_afdfcd4b0ec04cf9_base

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
  RIP.unsafePerformIO hs_bindgen_afdfcd4b0ec04cf9

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall unsafe "hs_bindgen_0360491883df7b08" hs_bindgen_0360491883df7b08_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_0360491883df7b08 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_0360491883df7b08 =
  RIP.fromFFIType hs_bindgen_0360491883df7b08_base

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
  RIP.unsafePerformIO hs_bindgen_0360491883df7b08

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall unsafe "hs_bindgen_63fc013324a09696" hs_bindgen_63fc013324a09696_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_63fc013324a09696 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_63fc013324a09696 =
  RIP.fromFFIType hs_bindgen_63fc013324a09696_base

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
  RIP.unsafePerformIO hs_bindgen_63fc013324a09696

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall unsafe "hs_bindgen_c896905aa1a4772a" hs_bindgen_c896905aa1a4772a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_c896905aa1a4772a :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_c896905aa1a4772a =
  RIP.fromFFIType hs_bindgen_c896905aa1a4772a_base

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
  RIP.unsafePerformIO hs_bindgen_c896905aa1a4772a

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall unsafe "hs_bindgen_3460be042f33a511" hs_bindgen_3460be042f33a511_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_3460be042f33a511 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_3460be042f33a511 =
  RIP.fromFFIType hs_bindgen_3460be042f33a511_base

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
  RIP.unsafePerformIO hs_bindgen_3460be042f33a511

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall unsafe "hs_bindgen_ccdf7662f05ab3f1" hs_bindgen_ccdf7662f05ab3f1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_ccdf7662f05ab3f1 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_ccdf7662f05ab3f1 =
  RIP.fromFFIType hs_bindgen_ccdf7662f05ab3f1_base

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
  RIP.unsafePerformIO hs_bindgen_ccdf7662f05ab3f1

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall unsafe "hs_bindgen_259070f5c36619fc" hs_bindgen_259070f5c36619fc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_259070f5c36619fc :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_259070f5c36619fc =
  RIP.fromFFIType hs_bindgen_259070f5c36619fc_base

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
  RIP.unsafePerformIO hs_bindgen_259070f5c36619fc

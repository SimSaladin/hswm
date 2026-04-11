{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.XkbConfigV1.Generated.FunPtr
    ( Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_config_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_config_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_config_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_config_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_config_v1_stop
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_config_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_config_v1_create_keymap
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keymap_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keymap_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keymap_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keymap_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keymap_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_add_listener
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_set_user_data
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_get_user_data
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_get_version
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_destroy
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_set_keymap
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_set_layout_by_index
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_set_layout_by_name
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_capslock_enable
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_capslock_disable
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_numlock_enable
    , Bindings.River.XkbConfigV1.Generated.FunPtr.river_xkb_keyboard_v1_numlock_disable
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.River.XkbConfigV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-config-v1-client-protocol.h>"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f6fb2ce63605d267 (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  struct river_xkb_config_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_add_listener;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2e92cb7970513c45 (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_cb7ff1c01be431b4 (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_0b6d340646d99904 (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_get_version;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a85d5b92c63ee0d7 (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_stop;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9d4354bfe3e75c0d (void)) ("
  , "  struct river_xkb_config_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_destroy;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_create_keymap */"
  , "__attribute__ ((const))"
  , "struct river_xkb_keymap_v1 *(*hs_bindgen_910d6a3fd13ef2fb (void)) ("
  , "  struct river_xkb_config_v1 *arg1,"
  , "  int32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &river_xkb_config_v1_create_keymap;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ffc9b7164581a284 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  struct river_xkb_keymap_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_add_listener;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f407ab4392a2cc34 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_25ba873d28a42b11 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8040e8880a9e3852 (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_get_version;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0d32c338061b388f (void)) ("
  , "  struct river_xkb_keymap_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keymap_v1_destroy;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_3a30efccf95f4c41 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keyboard_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_add_listener;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_45adf58357d490e9 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_user_data;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_bd0648cd8870b01c (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_get_user_data;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d63c87b2f32c2ac4 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_get_version;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_c50e20be550db980 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_destroy;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_keymap */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5d340bb773b0b0ce (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  struct river_xkb_keymap_v1 *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_keymap;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_layout_by_index */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_23986fe37ca915a9 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_layout_by_index;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_layout_by_name */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_74b3a34caa9db78a (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_set_layout_by_name;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_capslock_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0a672dba6725870d (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_capslock_enable;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_capslock_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0bc9627bdc929f3a (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_capslock_disable;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_numlock_enable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_63abc58edbb3f0c6 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_numlock_enable;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_numlock_disable */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_083f0c27125d53e2 (void)) ("
  , "  struct river_xkb_keyboard_v1 *arg1"
  , ")"
  , "{"
  , "  return &river_xkb_keyboard_v1_numlock_disable;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_f6fb2ce63605d267" hs_bindgen_f6fb2ce63605d267_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_add_listener@
hs_bindgen_f6fb2ce63605d267 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (PtrConst.PtrConst River_xkb_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_f6fb2ce63605d267 =
  RIP.fromFFIType hs_bindgen_f6fb2ce63605d267_base

{-# NOINLINE river_xkb_config_v1_add_listener #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 174:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (PtrConst.PtrConst River_xkb_config_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_config_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_f6fb2ce63605d267

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_2e92cb7970513c45" hs_bindgen_2e92cb7970513c45_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_set_user_data@
hs_bindgen_2e92cb7970513c45 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_2e92cb7970513c45 =
  RIP.fromFFIType hs_bindgen_2e92cb7970513c45_base

{-# NOINLINE river_xkb_config_v1_set_user_data #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 209:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_config_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_2e92cb7970513c45

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_cb7ff1c01be431b4" hs_bindgen_cb7ff1c01be431b4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_get_user_data@
hs_bindgen_cb7ff1c01be431b4 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_cb7ff1c01be431b4 =
  RIP.fromFFIType hs_bindgen_cb7ff1c01be431b4_base

{-# NOINLINE river_xkb_config_v1_get_user_data #-}
{-|

  > iface_river_xkb_config_v1

__C declaration:__ @river_xkb_config_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 216:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_config_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_cb7ff1c01be431b4

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_get_version@
foreign import ccall unsafe "hs_bindgen_0b6d340646d99904" hs_bindgen_0b6d340646d99904_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_get_version@
hs_bindgen_0b6d340646d99904 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_0b6d340646d99904 =
  RIP.fromFFIType hs_bindgen_0b6d340646d99904_base

{-# NOINLINE river_xkb_config_v1_get_version #-}
{-| __C declaration:__ @river_xkb_config_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 222:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_config_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_config_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_0b6d340646d99904

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_stop@
foreign import ccall unsafe "hs_bindgen_a85d5b92c63ee0d7" hs_bindgen_a85d5b92c63ee0d7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_stop@
hs_bindgen_a85d5b92c63ee0d7 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO ()))
hs_bindgen_a85d5b92c63ee0d7 =
  RIP.fromFFIType hs_bindgen_a85d5b92c63ee0d7_base

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
  RIP.unsafePerformIO hs_bindgen_a85d5b92c63ee0d7

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_destroy@
foreign import ccall unsafe "hs_bindgen_9d4354bfe3e75c0d" hs_bindgen_9d4354bfe3e75c0d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_destroy@
hs_bindgen_9d4354bfe3e75c0d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> IO ()))
hs_bindgen_9d4354bfe3e75c0d =
  RIP.fromFFIType hs_bindgen_9d4354bfe3e75c0d_base

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
  RIP.unsafePerformIO hs_bindgen_9d4354bfe3e75c0d

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_create_keymap@
foreign import ccall unsafe "hs_bindgen_910d6a3fd13ef2fb" hs_bindgen_910d6a3fd13ef2fb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_create_keymap@
hs_bindgen_910d6a3fd13ef2fb :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_config_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr River_xkb_keymap_v1)))
hs_bindgen_910d6a3fd13ef2fb =
  RIP.fromFFIType hs_bindgen_910d6a3fd13ef2fb_base

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
  RIP.unsafePerformIO hs_bindgen_910d6a3fd13ef2fb

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_ffc9b7164581a284" hs_bindgen_ffc9b7164581a284_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_add_listener@
hs_bindgen_ffc9b7164581a284 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst River_xkb_keymap_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_ffc9b7164581a284 =
  RIP.fromFFIType hs_bindgen_ffc9b7164581a284_base

{-# NOINLINE river_xkb_keymap_v1_add_listener #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 316:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (PtrConst.PtrConst River_xkb_keymap_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_keymap_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_ffc9b7164581a284

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_f407ab4392a2cc34" hs_bindgen_f407ab4392a2cc34_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_set_user_data@
hs_bindgen_f407ab4392a2cc34 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f407ab4392a2cc34 =
  RIP.fromFFIType hs_bindgen_f407ab4392a2cc34_base

{-# NOINLINE river_xkb_keymap_v1_set_user_data #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 341:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_keymap_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f407ab4392a2cc34

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_25ba873d28a42b11" hs_bindgen_25ba873d28a42b11_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_get_user_data@
hs_bindgen_25ba873d28a42b11 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_25ba873d28a42b11 =
  RIP.fromFFIType hs_bindgen_25ba873d28a42b11_base

{-# NOINLINE river_xkb_keymap_v1_get_user_data #-}
{-|

  > iface_river_xkb_keymap_v1

__C declaration:__ @river_xkb_keymap_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 348:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_keymap_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_25ba873d28a42b11

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8040e8880a9e3852" hs_bindgen_8040e8880a9e3852_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_get_version@
hs_bindgen_8040e8880a9e3852 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8040e8880a9e3852 =
  RIP.fromFFIType hs_bindgen_8040e8880a9e3852_base

{-# NOINLINE river_xkb_keymap_v1_get_version #-}
{-| __C declaration:__ @river_xkb_keymap_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 354:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keymap_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_keymap_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_8040e8880a9e3852

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_destroy@
foreign import ccall unsafe "hs_bindgen_0d32c338061b388f" hs_bindgen_0d32c338061b388f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_destroy@
hs_bindgen_0d32c338061b388f :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keymap_v1) -> IO ()))
hs_bindgen_0d32c338061b388f =
  RIP.fromFFIType hs_bindgen_0d32c338061b388f_base

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
  RIP.unsafePerformIO hs_bindgen_0d32c338061b388f

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_3a30efccf95f4c41" hs_bindgen_3a30efccf95f4c41_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_add_listener@
hs_bindgen_3a30efccf95f4c41 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst River_xkb_keyboard_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_3a30efccf95f4c41 =
  RIP.fromFFIType hs_bindgen_3a30efccf95f4c41_base

{-# NOINLINE river_xkb_keyboard_v1_add_listener #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_add_listener@

__defined at:__ @river-xkb-config-v1-client-protocol.h 466:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_add_listener :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst River_xkb_keyboard_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
river_xkb_keyboard_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_3a30efccf95f4c41

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_45adf58357d490e9" hs_bindgen_45adf58357d490e9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_user_data@
hs_bindgen_45adf58357d490e9 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_45adf58357d490e9 =
  RIP.fromFFIType hs_bindgen_45adf58357d490e9_base

{-# NOINLINE river_xkb_keyboard_v1_set_user_data #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_set_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 546:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr RIP.Void) -> IO ())
river_xkb_keyboard_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_45adf58357d490e9

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_bd0648cd8870b01c" hs_bindgen_bd0648cd8870b01c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_get_user_data@
hs_bindgen_bd0648cd8870b01c :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_bd0648cd8870b01c =
  RIP.fromFFIType hs_bindgen_bd0648cd8870b01c_base

{-# NOINLINE river_xkb_keyboard_v1_get_user_data #-}
{-|

  > iface_river_xkb_keyboard_v1

__C declaration:__ @river_xkb_keyboard_v1_get_user_data@

__defined at:__ @river-xkb-config-v1-client-protocol.h 553:1@

__exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO (RIP.Ptr RIP.Void))
river_xkb_keyboard_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_bd0648cd8870b01c

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_get_version@
foreign import ccall unsafe "hs_bindgen_d63c87b2f32c2ac4" hs_bindgen_d63c87b2f32c2ac4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_get_version@
hs_bindgen_d63c87b2f32c2ac4 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_d63c87b2f32c2ac4 =
  RIP.fromFFIType hs_bindgen_d63c87b2f32c2ac4_base

{-# NOINLINE river_xkb_keyboard_v1_get_version #-}
{-| __C declaration:__ @river_xkb_keyboard_v1_get_version@

    __defined at:__ @river-xkb-config-v1-client-protocol.h 559:1@

    __exported by:__ @river-xkb-config-v1-client-protocol.h@
-}
river_xkb_keyboard_v1_get_version :: RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO HsBindgen.Runtime.LibC.Word32)
river_xkb_keyboard_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_d63c87b2f32c2ac4

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_destroy@
foreign import ccall unsafe "hs_bindgen_c50e20be550db980" hs_bindgen_c50e20be550db980_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_destroy@
hs_bindgen_c50e20be550db980 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_c50e20be550db980 =
  RIP.fromFFIType hs_bindgen_c50e20be550db980_base

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
  RIP.unsafePerformIO hs_bindgen_c50e20be550db980

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_keymap@
foreign import ccall unsafe "hs_bindgen_5d340bb773b0b0ce" hs_bindgen_5d340bb773b0b0ce_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_keymap@
hs_bindgen_5d340bb773b0b0ce :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (RIP.Ptr River_xkb_keymap_v1) -> IO ()))
hs_bindgen_5d340bb773b0b0ce =
  RIP.fromFFIType hs_bindgen_5d340bb773b0b0ce_base

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
  RIP.unsafePerformIO hs_bindgen_5d340bb773b0b0ce

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_layout_by_index@
foreign import ccall unsafe "hs_bindgen_23986fe37ca915a9" hs_bindgen_23986fe37ca915a9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_layout_by_index@
hs_bindgen_23986fe37ca915a9 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_23986fe37ca915a9 =
  RIP.fromFFIType hs_bindgen_23986fe37ca915a9_base

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
  RIP.unsafePerformIO hs_bindgen_23986fe37ca915a9

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_layout_by_name@
foreign import ccall unsafe "hs_bindgen_74b3a34caa9db78a" hs_bindgen_74b3a34caa9db78a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_set_layout_by_name@
hs_bindgen_74b3a34caa9db78a :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_74b3a34caa9db78a =
  RIP.fromFFIType hs_bindgen_74b3a34caa9db78a_base

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
  RIP.unsafePerformIO hs_bindgen_74b3a34caa9db78a

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_capslock_enable@
foreign import ccall unsafe "hs_bindgen_0a672dba6725870d" hs_bindgen_0a672dba6725870d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_capslock_enable@
hs_bindgen_0a672dba6725870d :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_0a672dba6725870d =
  RIP.fromFFIType hs_bindgen_0a672dba6725870d_base

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
  RIP.unsafePerformIO hs_bindgen_0a672dba6725870d

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_capslock_disable@
foreign import ccall unsafe "hs_bindgen_0bc9627bdc929f3a" hs_bindgen_0bc9627bdc929f3a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_capslock_disable@
hs_bindgen_0bc9627bdc929f3a :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_0bc9627bdc929f3a =
  RIP.fromFFIType hs_bindgen_0bc9627bdc929f3a_base

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
  RIP.unsafePerformIO hs_bindgen_0bc9627bdc929f3a

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_numlock_enable@
foreign import ccall unsafe "hs_bindgen_63abc58edbb3f0c6" hs_bindgen_63abc58edbb3f0c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_numlock_enable@
hs_bindgen_63abc58edbb3f0c6 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_63abc58edbb3f0c6 =
  RIP.fromFFIType hs_bindgen_63abc58edbb3f0c6_base

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
  RIP.unsafePerformIO hs_bindgen_63abc58edbb3f0c6

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_numlock_disable@
foreign import ccall unsafe "hs_bindgen_083f0c27125d53e2" hs_bindgen_083f0c27125d53e2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_numlock_disable@
hs_bindgen_083f0c27125d53e2 :: IO (RIP.FunPtr ((RIP.Ptr River_xkb_keyboard_v1) -> IO ()))
hs_bindgen_083f0c27125d53e2 =
  RIP.fromFFIType hs_bindgen_083f0c27125d53e2_base

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
  RIP.unsafePerformIO hs_bindgen_083f0c27125d53e2

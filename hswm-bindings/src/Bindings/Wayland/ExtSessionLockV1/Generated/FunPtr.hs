{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr
    ( Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_manager_v1_set_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_manager_v1_get_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_manager_v1_get_version
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_manager_v1_destroy
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_manager_v1_lock
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_v1_add_listener
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_v1_set_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_v1_get_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_v1_get_version
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_v1_destroy
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_v1_get_lock_surface
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_v1_unlock_and_destroy
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_surface_v1_add_listener
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_surface_v1_set_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_surface_v1_get_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_surface_v1_get_version
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_surface_v1_destroy
    , Bindings.Wayland.ExtSessionLockV1.Generated.FunPtr.ext_session_lock_surface_v1_ack_configure
    )
  where

import qualified Generated.Wayland.Client
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.ExtSessionLockV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-session-lock-v1-client-protocol.h>"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bf3cac0a78dfa890 (void)) ("
  , "  struct ext_session_lock_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_session_lock_manager_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_bc2fce82e2a5078e (void)) ("
  , "  struct ext_session_lock_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_manager_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_62dfbcbe1dde8edf (void)) ("
  , "  struct ext_session_lock_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_manager_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3533b233ea56baa7 (void)) ("
  , "  struct ext_session_lock_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_manager_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_lock */"
  , "__attribute__ ((const))"
  , "struct ext_session_lock_v1 *(*hs_bindgen_36fea43b9e2f48c6 (void)) ("
  , "  struct ext_session_lock_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_manager_v1_lock;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_f9d9b64825ee87da (void)) ("
  , "  struct ext_session_lock_v1 *arg1,"
  , "  struct ext_session_lock_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &ext_session_lock_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b3045f4d6c1de908 (void)) ("
  , "  struct ext_session_lock_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_session_lock_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_e06690e590871a8d (void)) ("
  , "  struct ext_session_lock_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_e1cf4753776e4925 (void)) ("
  , "  struct ext_session_lock_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_daa6342214c75043 (void)) ("
  , "  struct ext_session_lock_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_lock_surface */"
  , "__attribute__ ((const))"
  , "struct ext_session_lock_surface_v1 *(*hs_bindgen_38d2662846a8a507 (void)) ("
  , "  struct ext_session_lock_v1 *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_output *arg3"
  , ")"
  , "{"
  , "  return &ext_session_lock_v1_get_lock_surface;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_unlock_and_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_26b580d3f50a816f (void)) ("
  , "  struct ext_session_lock_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_v1_unlock_and_destroy;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_a114c40ec473ae15 (void)) ("
  , "  struct ext_session_lock_surface_v1 *arg1,"
  , "  struct ext_session_lock_surface_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &ext_session_lock_surface_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_8909e8fb08e08bc1 (void)) ("
  , "  struct ext_session_lock_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_session_lock_surface_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_5dc313f3a3822c6d (void)) ("
  , "  struct ext_session_lock_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_surface_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_c3fedd8071a70f00 (void)) ("
  , "  struct ext_session_lock_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_surface_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e230bc37e94316b5 (void)) ("
  , "  struct ext_session_lock_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_session_lock_surface_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_ack_configure */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6577910a87728ab1 (void)) ("
  , "  struct ext_session_lock_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &ext_session_lock_surface_v1_ack_configure;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_bf3cac0a78dfa890" hs_bindgen_bf3cac0a78dfa890_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_set_user_data@
hs_bindgen_bf3cac0a78dfa890 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_bf3cac0a78dfa890 =
  RIP.fromFFIType hs_bindgen_bf3cac0a78dfa890_base

{-# NOINLINE ext_session_lock_manager_v1_set_user_data #-}
{-|

  > iface_ext_session_lock_manager_v1

__C declaration:__ @ext_session_lock_manager_v1_set_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 264:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_session_lock_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_bf3cac0a78dfa890

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_bc2fce82e2a5078e" hs_bindgen_bc2fce82e2a5078e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_get_user_data@
hs_bindgen_bc2fce82e2a5078e :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_bc2fce82e2a5078e =
  RIP.fromFFIType hs_bindgen_bc2fce82e2a5078e_base

{-# NOINLINE ext_session_lock_manager_v1_get_user_data #-}
{-|

  > iface_ext_session_lock_manager_v1

__C declaration:__ @ext_session_lock_manager_v1_get_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 271:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> IO (RIP.Ptr RIP.Void))
ext_session_lock_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_bc2fce82e2a5078e

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_62dfbcbe1dde8edf" hs_bindgen_62dfbcbe1dde8edf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_get_version@
hs_bindgen_62dfbcbe1dde8edf :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_62dfbcbe1dde8edf =
  RIP.fromFFIType hs_bindgen_62dfbcbe1dde8edf_base

{-# NOINLINE ext_session_lock_manager_v1_get_version #-}
{-| __C declaration:__ @ext_session_lock_manager_v1_get_version@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 277:1@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_session_lock_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_62dfbcbe1dde8edf

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_3533b233ea56baa7" hs_bindgen_3533b233ea56baa7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_destroy@
hs_bindgen_3533b233ea56baa7 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> IO ()))
hs_bindgen_3533b233ea56baa7 =
  RIP.fromFFIType hs_bindgen_3533b233ea56baa7_base

{-# NOINLINE ext_session_lock_manager_v1_destroy #-}
{-|

  > iface_ext_session_lock_manager_v1

  This informs the compositor that the session lock manager object will no longer be used. Existing objects created through this interface remain valid.

__C declaration:__ @ext_session_lock_manager_v1_destroy@

__defined at:__ @ext-session-lock-v1-client-protocol.h 290:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_destroy :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> IO ())
ext_session_lock_manager_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_3533b233ea56baa7

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_lock@
foreign import ccall unsafe "hs_bindgen_36fea43b9e2f48c6" hs_bindgen_36fea43b9e2f48c6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_manager_v1_lock@
hs_bindgen_36fea43b9e2f48c6 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> IO (RIP.Ptr Ext_session_lock_v1)))
hs_bindgen_36fea43b9e2f48c6 =
  RIP.fromFFIType hs_bindgen_36fea43b9e2f48c6_base

{-# NOINLINE ext_session_lock_manager_v1_lock #-}
{-|

  > iface_ext_session_lock_manager_v1

  This request creates a session lock and asks the compositor to lock the session. The compositor will send either the ext_session_lock_v1.locked or ext_session_lock_v1.finished event on the created object in response to this request.

__C declaration:__ @ext_session_lock_manager_v1_lock@

__defined at:__ @ext-session-lock-v1-client-protocol.h 305:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_lock :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_manager_v1) -> IO (RIP.Ptr Ext_session_lock_v1))
ext_session_lock_manager_v1_lock =
  RIP.unsafePerformIO hs_bindgen_36fea43b9e2f48c6

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_f9d9b64825ee87da" hs_bindgen_f9d9b64825ee87da_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_add_listener@
hs_bindgen_f9d9b64825ee87da :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> (PtrConst.PtrConst Ext_session_lock_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_f9d9b64825ee87da =
  RIP.fromFFIType hs_bindgen_f9d9b64825ee87da_base

{-# NOINLINE ext_session_lock_v1_add_listener #-}
{-|

  > iface_ext_session_lock_v1

__C declaration:__ @ext_session_lock_v1_add_listener@

__defined at:__ @ext-session-lock-v1-client-protocol.h 398:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> (PtrConst.PtrConst Ext_session_lock_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
ext_session_lock_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_f9d9b64825ee87da

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_b3045f4d6c1de908" hs_bindgen_b3045f4d6c1de908_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_set_user_data@
hs_bindgen_b3045f4d6c1de908 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_b3045f4d6c1de908 =
  RIP.fromFFIType hs_bindgen_b3045f4d6c1de908_base

{-# NOINLINE ext_session_lock_v1_set_user_data #-}
{-|

  > iface_ext_session_lock_v1

__C declaration:__ @ext_session_lock_v1_set_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 433:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_session_lock_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_b3045f4d6c1de908

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e06690e590871a8d" hs_bindgen_e06690e590871a8d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_user_data@
hs_bindgen_e06690e590871a8d :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_e06690e590871a8d =
  RIP.fromFFIType hs_bindgen_e06690e590871a8d_base

{-# NOINLINE ext_session_lock_v1_get_user_data #-}
{-|

  > iface_ext_session_lock_v1

__C declaration:__ @ext_session_lock_v1_get_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 440:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> IO (RIP.Ptr RIP.Void))
ext_session_lock_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_e06690e590871a8d

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_version@
foreign import ccall unsafe "hs_bindgen_e1cf4753776e4925" hs_bindgen_e1cf4753776e4925_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_version@
hs_bindgen_e1cf4753776e4925 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_e1cf4753776e4925 =
  RIP.fromFFIType hs_bindgen_e1cf4753776e4925_base

{-# NOINLINE ext_session_lock_v1_get_version #-}
{-| __C declaration:__ @ext_session_lock_v1_get_version@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 446:1@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_session_lock_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_e1cf4753776e4925

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_destroy@
foreign import ccall unsafe "hs_bindgen_daa6342214c75043" hs_bindgen_daa6342214c75043_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_destroy@
hs_bindgen_daa6342214c75043 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> IO ()))
hs_bindgen_daa6342214c75043 =
  RIP.fromFFIType hs_bindgen_daa6342214c75043_base

{-# NOINLINE ext_session_lock_v1_destroy #-}
{-|

  > iface_ext_session_lock_v1

  This informs the compositor that the lock object will no longer be used. Existing objects created through this interface remain valid.

  After this request is made, lock surfaces created through this object should be destroyed by the client as they will no longer be used by the compositor.

  It is a protocol error to make this request if the locked event was sent, the unlock_and_destroy request must be used instead.

__C declaration:__ @ext_session_lock_v1_destroy@

__defined at:__ @ext-session-lock-v1-client-protocol.h 465:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_destroy :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> IO ())
ext_session_lock_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_daa6342214c75043

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_lock_surface@
foreign import ccall unsafe "hs_bindgen_38d2662846a8a507" hs_bindgen_38d2662846a8a507_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_get_lock_surface@
hs_bindgen_38d2662846a8a507 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> (RIP.Ptr Generated.Wayland.Client.Wl_output) -> IO (RIP.Ptr Ext_session_lock_surface_v1)))
hs_bindgen_38d2662846a8a507 =
  RIP.fromFFIType hs_bindgen_38d2662846a8a507_base

{-# NOINLINE ext_session_lock_v1_get_lock_surface #-}
{-|

  > iface_ext_session_lock_v1

  The client is expected to create lock surfaces for all outputs currently present and any new outputs as they are advertised. These won't be displayed by the compositor unless the lock is successful and the locked event is sent.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error, as is attaching/committing a buffer before the first ext_session_lock_surface_v1.configure event.

  Attempting to create more than one lock surface for a given output is a duplicate_output protocol error.

__C declaration:__ @ext_session_lock_v1_get_lock_surface@

__defined at:__ @ext-session-lock-v1-client-protocol.h 487:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_get_lock_surface :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> (RIP.Ptr Generated.Wayland.Client.Wl_output) -> IO (RIP.Ptr Ext_session_lock_surface_v1))
ext_session_lock_v1_get_lock_surface =
  RIP.unsafePerformIO hs_bindgen_38d2662846a8a507

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_unlock_and_destroy@
foreign import ccall unsafe "hs_bindgen_26b580d3f50a816f" hs_bindgen_26b580d3f50a816f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_v1_unlock_and_destroy@
hs_bindgen_26b580d3f50a816f :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> IO ()))
hs_bindgen_26b580d3f50a816f =
  RIP.fromFFIType hs_bindgen_26b580d3f50a816f_base

{-# NOINLINE ext_session_lock_v1_unlock_and_destroy #-}
{-|

  > iface_ext_session_lock_v1

  This request indicates that the session should be unlocked, for example because the user has entered their password and it has been verified by the client.

  This request also informs the compositor that the lock object will no longer be used and should be destroyed. Existing objects created through this interface remain valid.

  After this request is made, lock surfaces created through this object should be destroyed by the client as they will no longer be used by the compositor.

  It is a protocol error to make this request if the locked event has not been sent. In that case, the lock object must be destroyed using the destroy request.

  Note that a correct client that wishes to exit directly after unlocking the session must use the wl_display.sync request to ensure the server receives and processes the unlock_and_destroy request. Otherwise there is no guarantee that the server has unlocked the session due to the asynchronous nature of the Wayland protocol. For example, the server might terminate the client with a protocol error before it processes the unlock_and_destroy request.

__C declaration:__ @ext_session_lock_v1_unlock_and_destroy@

__defined at:__ @ext-session-lock-v1-client-protocol.h 525:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_unlock_and_destroy :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_v1) -> IO ())
ext_session_lock_v1_unlock_and_destroy =
  RIP.unsafePerformIO hs_bindgen_26b580d3f50a816f

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_a114c40ec473ae15" hs_bindgen_a114c40ec473ae15_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_add_listener@
hs_bindgen_a114c40ec473ae15 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> (PtrConst.PtrConst Ext_session_lock_surface_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_a114c40ec473ae15 =
  RIP.fromFFIType hs_bindgen_a114c40ec473ae15_base

{-# NOINLINE ext_session_lock_surface_v1_add_listener #-}
{-|

  > iface_ext_session_lock_surface_v1

__C declaration:__ @ext_session_lock_surface_v1_add_listener@

__defined at:__ @ext-session-lock-v1-client-protocol.h 581:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> (PtrConst.PtrConst Ext_session_lock_surface_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
ext_session_lock_surface_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_a114c40ec473ae15

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_8909e8fb08e08bc1" hs_bindgen_8909e8fb08e08bc1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_set_user_data@
hs_bindgen_8909e8fb08e08bc1 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_8909e8fb08e08bc1 =
  RIP.fromFFIType hs_bindgen_8909e8fb08e08bc1_base

{-# NOINLINE ext_session_lock_surface_v1_set_user_data #-}
{-|

  > iface_ext_session_lock_surface_v1

__C declaration:__ @ext_session_lock_surface_v1_set_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 607:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_session_lock_surface_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_8909e8fb08e08bc1

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_5dc313f3a3822c6d" hs_bindgen_5dc313f3a3822c6d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_get_user_data@
hs_bindgen_5dc313f3a3822c6d :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_5dc313f3a3822c6d =
  RIP.fromFFIType hs_bindgen_5dc313f3a3822c6d_base

{-# NOINLINE ext_session_lock_surface_v1_get_user_data #-}
{-|

  > iface_ext_session_lock_surface_v1

__C declaration:__ @ext_session_lock_surface_v1_get_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 614:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> IO (RIP.Ptr RIP.Void))
ext_session_lock_surface_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_5dc313f3a3822c6d

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_get_version@
foreign import ccall unsafe "hs_bindgen_c3fedd8071a70f00" hs_bindgen_c3fedd8071a70f00_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_get_version@
hs_bindgen_c3fedd8071a70f00 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_c3fedd8071a70f00 =
  RIP.fromFFIType hs_bindgen_c3fedd8071a70f00_base

{-# NOINLINE ext_session_lock_surface_v1_get_version #-}
{-| __C declaration:__ @ext_session_lock_surface_v1_get_version@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 620:1@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_session_lock_surface_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_c3fedd8071a70f00

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_destroy@
foreign import ccall unsafe "hs_bindgen_e230bc37e94316b5" hs_bindgen_e230bc37e94316b5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_destroy@
hs_bindgen_e230bc37e94316b5 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> IO ()))
hs_bindgen_e230bc37e94316b5 =
  RIP.fromFFIType hs_bindgen_e230bc37e94316b5_base

{-# NOINLINE ext_session_lock_surface_v1_destroy #-}
{-|

  > iface_ext_session_lock_surface_v1

  This informs the compositor that the lock surface object will no longer be used.

  It is recommended for a lock client to destroy lock surfaces if their corresponding wl_output global is removed.

  If a lock surface on an active output is destroyed before the ext_session_lock_v1.unlock_and_destroy event is sent, the compositor must fall back to rendering a solid color.

__C declaration:__ @ext_session_lock_surface_v1_destroy@

__defined at:__ @ext-session-lock-v1-client-protocol.h 639:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_destroy :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> IO ())
ext_session_lock_surface_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_e230bc37e94316b5

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_ack_configure@
foreign import ccall unsafe "hs_bindgen_6577910a87728ab1" hs_bindgen_6577910a87728ab1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_get_ext_session_lock_surface_v1_ack_configure@
hs_bindgen_6577910a87728ab1 :: IO (RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_6577910a87728ab1 =
  RIP.fromFFIType hs_bindgen_6577910a87728ab1_base

{-# NOINLINE ext_session_lock_surface_v1_ack_configure #-}
{-|

  > iface_ext_session_lock_surface_v1

  When a configure event is received, if a client commits the surface in response to the configure event, then the client must make an ack_configure request sometime before the commit request, passing along the serial of the configure event.

  If the client receives multiple configure events before it can respond to one, it only has to ack the last configure event.

  A client is not required to commit immediately after sending an ack_configure request - it may even ack_configure several times before its next surface commit.

  A client may send multiple ack_configure requests before committing, but only the last request sent before a commit indicates which configure event the client really is responding to.

  Sending an ack_configure request consumes the configure event referenced by the given serial, as well as all older configure events sent on this object.

  It is a protocol error to issue multiple ack_configure requests referencing the same configure event or to issue an ack_configure request referencing a configure event older than the last configure event acked for a given lock surface.

__C declaration:__ @ext_session_lock_surface_v1_ack_configure@

__defined at:__ @ext-session-lock-v1-client-protocol.h 674:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_ack_configure :: RIP.FunPtr ((RIP.Ptr Ext_session_lock_surface_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
ext_session_lock_surface_v1_ack_configure =
  RIP.unsafePerformIO hs_bindgen_6577910a87728ab1

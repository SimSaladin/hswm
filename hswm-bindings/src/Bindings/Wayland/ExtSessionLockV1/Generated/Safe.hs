{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.ExtSessionLockV1.Generated.Safe
    ( Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_manager_v1_set_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_manager_v1_get_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_manager_v1_get_version
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_manager_v1_destroy
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_manager_v1_lock
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_v1_add_listener
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_v1_set_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_v1_get_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_v1_get_version
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_v1_destroy
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_v1_get_lock_surface
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_v1_unlock_and_destroy
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_surface_v1_add_listener
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_surface_v1_set_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_surface_v1_get_user_data
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_surface_v1_get_version
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_surface_v1_destroy
    , Bindings.Wayland.ExtSessionLockV1.Generated.Safe.ext_session_lock_surface_v1_ack_configure
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
  , "void hs_bindgen_07d6fc60d9dbfe88 ("
  , "  struct ext_session_lock_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_session_lock_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_45949ae328ab816b ("
  , "  struct ext_session_lock_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_session_lock_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_19dede70ab82f81f ("
  , "  struct ext_session_lock_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_session_lock_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_95452b21af922f47 ("
  , "  struct ext_session_lock_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_session_lock_manager_v1_destroy)(arg1);"
  , "}"
  , "struct ext_session_lock_v1 *hs_bindgen_3b34fb11c0b1b37d ("
  , "  struct ext_session_lock_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_session_lock_manager_v1_lock)(arg1);"
  , "}"
  , "signed int hs_bindgen_14e9089d0095f77a ("
  , "  struct ext_session_lock_v1 *arg1,"
  , "  struct ext_session_lock_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_session_lock_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_78b35d5f07b94020 ("
  , "  struct ext_session_lock_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_session_lock_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_40f2b9f4b43cf1ab ("
  , "  struct ext_session_lock_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_session_lock_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3770530be88acce1 ("
  , "  struct ext_session_lock_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_session_lock_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_9474ca758aeed3c8 ("
  , "  struct ext_session_lock_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_session_lock_v1_destroy)(arg1);"
  , "}"
  , "struct ext_session_lock_surface_v1 *hs_bindgen_385bfe23cbdb20df ("
  , "  struct ext_session_lock_v1 *arg1,"
  , "  struct wl_surface *arg2,"
  , "  struct wl_output *arg3"
  , ")"
  , "{"
  , "  return (ext_session_lock_v1_get_lock_surface)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a2fe0ecf154ff708 ("
  , "  struct ext_session_lock_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_session_lock_v1_unlock_and_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_508769a3bfe043b0 ("
  , "  struct ext_session_lock_surface_v1 *arg1,"
  , "  struct ext_session_lock_surface_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_session_lock_surface_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_f466c98b07ed5213 ("
  , "  struct ext_session_lock_surface_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_session_lock_surface_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1d0881a420d0d58d ("
  , "  struct ext_session_lock_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_session_lock_surface_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_55857c65d514478e ("
  , "  struct ext_session_lock_surface_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_session_lock_surface_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_1ff1c3c15a759bed ("
  , "  struct ext_session_lock_surface_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_session_lock_surface_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_9facde67b15d5936 ("
  , "  struct ext_session_lock_surface_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (ext_session_lock_surface_v1_ack_configure)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_07d6fc60d9dbfe88" hs_bindgen_07d6fc60d9dbfe88_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_set_user_data@
hs_bindgen_07d6fc60d9dbfe88 ::
     RIP.Ptr Ext_session_lock_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_07d6fc60d9dbfe88 =
  RIP.fromFFIType hs_bindgen_07d6fc60d9dbfe88_base

{-|

  > iface_ext_session_lock_manager_v1

__C declaration:__ @ext_session_lock_manager_v1_set_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 264:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_set_user_data ::
     RIP.Ptr Ext_session_lock_manager_v1
     -- ^ __C declaration:__ @ext_session_lock_manager_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
ext_session_lock_manager_v1_set_user_data =
  hs_bindgen_07d6fc60d9dbfe88

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_45949ae328ab816b" hs_bindgen_45949ae328ab816b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_get_user_data@
hs_bindgen_45949ae328ab816b ::
     RIP.Ptr Ext_session_lock_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_45949ae328ab816b =
  RIP.fromFFIType hs_bindgen_45949ae328ab816b_base

{-|

  > iface_ext_session_lock_manager_v1

__C declaration:__ @ext_session_lock_manager_v1_get_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 271:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_get_user_data ::
     RIP.Ptr Ext_session_lock_manager_v1
     -- ^ __C declaration:__ @ext_session_lock_manager_v1@
  -> IO (RIP.Ptr RIP.Void)
ext_session_lock_manager_v1_get_user_data =
  hs_bindgen_45949ae328ab816b

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_19dede70ab82f81f" hs_bindgen_19dede70ab82f81f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_get_version@
hs_bindgen_19dede70ab82f81f ::
     RIP.Ptr Ext_session_lock_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_19dede70ab82f81f =
  RIP.fromFFIType hs_bindgen_19dede70ab82f81f_base

{-| __C declaration:__ @ext_session_lock_manager_v1_get_version@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 277:1@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_get_version ::
     RIP.Ptr Ext_session_lock_manager_v1
     -- ^ __C declaration:__ @ext_session_lock_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_session_lock_manager_v1_get_version =
  hs_bindgen_19dede70ab82f81f

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_95452b21af922f47" hs_bindgen_95452b21af922f47_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_destroy@
hs_bindgen_95452b21af922f47 ::
     RIP.Ptr Ext_session_lock_manager_v1
  -> IO ()
hs_bindgen_95452b21af922f47 =
  RIP.fromFFIType hs_bindgen_95452b21af922f47_base

{-|

  > iface_ext_session_lock_manager_v1

  This informs the compositor that the session lock manager object will no longer be used. Existing objects created through this interface remain valid.

__C declaration:__ @ext_session_lock_manager_v1_destroy@

__defined at:__ @ext-session-lock-v1-client-protocol.h 290:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_destroy ::
     RIP.Ptr Ext_session_lock_manager_v1
     -- ^ __C declaration:__ @ext_session_lock_manager_v1@
  -> IO ()
ext_session_lock_manager_v1_destroy =
  hs_bindgen_95452b21af922f47

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_lock@
foreign import ccall safe "hs_bindgen_3b34fb11c0b1b37d" hs_bindgen_3b34fb11c0b1b37d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_manager_v1_lock@
hs_bindgen_3b34fb11c0b1b37d ::
     RIP.Ptr Ext_session_lock_manager_v1
  -> IO (RIP.Ptr Ext_session_lock_v1)
hs_bindgen_3b34fb11c0b1b37d =
  RIP.fromFFIType hs_bindgen_3b34fb11c0b1b37d_base

{-|

  > iface_ext_session_lock_manager_v1

  This request creates a session lock and asks the compositor to lock the session. The compositor will send either the ext_session_lock_v1.locked or ext_session_lock_v1.finished event on the created object in response to this request.

__C declaration:__ @ext_session_lock_manager_v1_lock@

__defined at:__ @ext-session-lock-v1-client-protocol.h 305:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_manager_v1_lock ::
     RIP.Ptr Ext_session_lock_manager_v1
     -- ^ __C declaration:__ @ext_session_lock_manager_v1@
  -> IO (RIP.Ptr Ext_session_lock_v1)
ext_session_lock_manager_v1_lock =
  hs_bindgen_3b34fb11c0b1b37d

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_add_listener@
foreign import ccall safe "hs_bindgen_14e9089d0095f77a" hs_bindgen_14e9089d0095f77a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_add_listener@
hs_bindgen_14e9089d0095f77a ::
     RIP.Ptr Ext_session_lock_v1
  -> PtrConst.PtrConst Ext_session_lock_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_14e9089d0095f77a =
  RIP.fromFFIType hs_bindgen_14e9089d0095f77a_base

{-|

  > iface_ext_session_lock_v1

__C declaration:__ @ext_session_lock_v1_add_listener@

__defined at:__ @ext-session-lock-v1-client-protocol.h 398:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_add_listener ::
     RIP.Ptr Ext_session_lock_v1
     -- ^ __C declaration:__ @ext_session_lock_v1@
  -> PtrConst.PtrConst Ext_session_lock_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
ext_session_lock_v1_add_listener =
  hs_bindgen_14e9089d0095f77a

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_set_user_data@
foreign import ccall safe "hs_bindgen_78b35d5f07b94020" hs_bindgen_78b35d5f07b94020_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_set_user_data@
hs_bindgen_78b35d5f07b94020 ::
     RIP.Ptr Ext_session_lock_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_78b35d5f07b94020 =
  RIP.fromFFIType hs_bindgen_78b35d5f07b94020_base

{-|

  > iface_ext_session_lock_v1

__C declaration:__ @ext_session_lock_v1_set_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 433:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_set_user_data ::
     RIP.Ptr Ext_session_lock_v1
     -- ^ __C declaration:__ @ext_session_lock_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
ext_session_lock_v1_set_user_data =
  hs_bindgen_78b35d5f07b94020

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_get_user_data@
foreign import ccall safe "hs_bindgen_40f2b9f4b43cf1ab" hs_bindgen_40f2b9f4b43cf1ab_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_get_user_data@
hs_bindgen_40f2b9f4b43cf1ab ::
     RIP.Ptr Ext_session_lock_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_40f2b9f4b43cf1ab =
  RIP.fromFFIType hs_bindgen_40f2b9f4b43cf1ab_base

{-|

  > iface_ext_session_lock_v1

__C declaration:__ @ext_session_lock_v1_get_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 440:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_get_user_data ::
     RIP.Ptr Ext_session_lock_v1
     -- ^ __C declaration:__ @ext_session_lock_v1@
  -> IO (RIP.Ptr RIP.Void)
ext_session_lock_v1_get_user_data =
  hs_bindgen_40f2b9f4b43cf1ab

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_get_version@
foreign import ccall safe "hs_bindgen_3770530be88acce1" hs_bindgen_3770530be88acce1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_get_version@
hs_bindgen_3770530be88acce1 ::
     RIP.Ptr Ext_session_lock_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3770530be88acce1 =
  RIP.fromFFIType hs_bindgen_3770530be88acce1_base

{-| __C declaration:__ @ext_session_lock_v1_get_version@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 446:1@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_get_version ::
     RIP.Ptr Ext_session_lock_v1
     -- ^ __C declaration:__ @ext_session_lock_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_session_lock_v1_get_version =
  hs_bindgen_3770530be88acce1

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_destroy@
foreign import ccall safe "hs_bindgen_9474ca758aeed3c8" hs_bindgen_9474ca758aeed3c8_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_destroy@
hs_bindgen_9474ca758aeed3c8 ::
     RIP.Ptr Ext_session_lock_v1
  -> IO ()
hs_bindgen_9474ca758aeed3c8 =
  RIP.fromFFIType hs_bindgen_9474ca758aeed3c8_base

{-|

  > iface_ext_session_lock_v1

  This informs the compositor that the lock object will no longer be used. Existing objects created through this interface remain valid.

  After this request is made, lock surfaces created through this object should be destroyed by the client as they will no longer be used by the compositor.

  It is a protocol error to make this request if the locked event was sent, the unlock_and_destroy request must be used instead.

__C declaration:__ @ext_session_lock_v1_destroy@

__defined at:__ @ext-session-lock-v1-client-protocol.h 465:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_destroy ::
     RIP.Ptr Ext_session_lock_v1
     -- ^ __C declaration:__ @ext_session_lock_v1@
  -> IO ()
ext_session_lock_v1_destroy =
  hs_bindgen_9474ca758aeed3c8

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_get_lock_surface@
foreign import ccall safe "hs_bindgen_385bfe23cbdb20df" hs_bindgen_385bfe23cbdb20df_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_get_lock_surface@
hs_bindgen_385bfe23cbdb20df ::
     RIP.Ptr Ext_session_lock_v1
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
  -> RIP.Ptr Generated.Wayland.Client.Wl_output
  -> IO (RIP.Ptr Ext_session_lock_surface_v1)
hs_bindgen_385bfe23cbdb20df =
  RIP.fromFFIType hs_bindgen_385bfe23cbdb20df_base

{-|

  > iface_ext_session_lock_v1

  The client is expected to create lock surfaces for all outputs currently present and any new outputs as they are advertised. These won't be displayed by the compositor unless the lock is successful and the locked event is sent.

  Providing a wl_surface which already has a role or already has a buffer attached or committed is a protocol error, as is attaching/committing a buffer before the first ext_session_lock_surface_v1.configure event.

  Attempting to create more than one lock surface for a given output is a duplicate_output protocol error.

__C declaration:__ @ext_session_lock_v1_get_lock_surface@

__defined at:__ @ext-session-lock-v1-client-protocol.h 487:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_v1_get_lock_surface ::
     RIP.Ptr Ext_session_lock_v1
     -- ^ __C declaration:__ @ext_session_lock_v1@
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> RIP.Ptr Generated.Wayland.Client.Wl_output
     -- ^ __C declaration:__ @output@
  -> IO (RIP.Ptr Ext_session_lock_surface_v1)
ext_session_lock_v1_get_lock_surface =
  hs_bindgen_385bfe23cbdb20df

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_unlock_and_destroy@
foreign import ccall safe "hs_bindgen_a2fe0ecf154ff708" hs_bindgen_a2fe0ecf154ff708_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_v1_unlock_and_destroy@
hs_bindgen_a2fe0ecf154ff708 ::
     RIP.Ptr Ext_session_lock_v1
  -> IO ()
hs_bindgen_a2fe0ecf154ff708 =
  RIP.fromFFIType hs_bindgen_a2fe0ecf154ff708_base

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
ext_session_lock_v1_unlock_and_destroy ::
     RIP.Ptr Ext_session_lock_v1
     -- ^ __C declaration:__ @ext_session_lock_v1@
  -> IO ()
ext_session_lock_v1_unlock_and_destroy =
  hs_bindgen_a2fe0ecf154ff708

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_add_listener@
foreign import ccall safe "hs_bindgen_508769a3bfe043b0" hs_bindgen_508769a3bfe043b0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_add_listener@
hs_bindgen_508769a3bfe043b0 ::
     RIP.Ptr Ext_session_lock_surface_v1
  -> PtrConst.PtrConst Ext_session_lock_surface_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_508769a3bfe043b0 =
  RIP.fromFFIType hs_bindgen_508769a3bfe043b0_base

{-|

  > iface_ext_session_lock_surface_v1

__C declaration:__ @ext_session_lock_surface_v1_add_listener@

__defined at:__ @ext-session-lock-v1-client-protocol.h 581:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_add_listener ::
     RIP.Ptr Ext_session_lock_surface_v1
     -- ^ __C declaration:__ @ext_session_lock_surface_v1@
  -> PtrConst.PtrConst Ext_session_lock_surface_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
ext_session_lock_surface_v1_add_listener =
  hs_bindgen_508769a3bfe043b0

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_set_user_data@
foreign import ccall safe "hs_bindgen_f466c98b07ed5213" hs_bindgen_f466c98b07ed5213_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_set_user_data@
hs_bindgen_f466c98b07ed5213 ::
     RIP.Ptr Ext_session_lock_surface_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_f466c98b07ed5213 =
  RIP.fromFFIType hs_bindgen_f466c98b07ed5213_base

{-|

  > iface_ext_session_lock_surface_v1

__C declaration:__ @ext_session_lock_surface_v1_set_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 607:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_set_user_data ::
     RIP.Ptr Ext_session_lock_surface_v1
     -- ^ __C declaration:__ @ext_session_lock_surface_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
ext_session_lock_surface_v1_set_user_data =
  hs_bindgen_f466c98b07ed5213

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_get_user_data@
foreign import ccall safe "hs_bindgen_1d0881a420d0d58d" hs_bindgen_1d0881a420d0d58d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_get_user_data@
hs_bindgen_1d0881a420d0d58d ::
     RIP.Ptr Ext_session_lock_surface_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1d0881a420d0d58d =
  RIP.fromFFIType hs_bindgen_1d0881a420d0d58d_base

{-|

  > iface_ext_session_lock_surface_v1

__C declaration:__ @ext_session_lock_surface_v1_get_user_data@

__defined at:__ @ext-session-lock-v1-client-protocol.h 614:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_get_user_data ::
     RIP.Ptr Ext_session_lock_surface_v1
     -- ^ __C declaration:__ @ext_session_lock_surface_v1@
  -> IO (RIP.Ptr RIP.Void)
ext_session_lock_surface_v1_get_user_data =
  hs_bindgen_1d0881a420d0d58d

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_get_version@
foreign import ccall safe "hs_bindgen_55857c65d514478e" hs_bindgen_55857c65d514478e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_get_version@
hs_bindgen_55857c65d514478e ::
     RIP.Ptr Ext_session_lock_surface_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_55857c65d514478e =
  RIP.fromFFIType hs_bindgen_55857c65d514478e_base

{-| __C declaration:__ @ext_session_lock_surface_v1_get_version@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 620:1@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_get_version ::
     RIP.Ptr Ext_session_lock_surface_v1
     -- ^ __C declaration:__ @ext_session_lock_surface_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_session_lock_surface_v1_get_version =
  hs_bindgen_55857c65d514478e

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_destroy@
foreign import ccall safe "hs_bindgen_1ff1c3c15a759bed" hs_bindgen_1ff1c3c15a759bed_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_destroy@
hs_bindgen_1ff1c3c15a759bed ::
     RIP.Ptr Ext_session_lock_surface_v1
  -> IO ()
hs_bindgen_1ff1c3c15a759bed =
  RIP.fromFFIType hs_bindgen_1ff1c3c15a759bed_base

{-|

  > iface_ext_session_lock_surface_v1

  This informs the compositor that the lock surface object will no longer be used.

  It is recommended for a lock client to destroy lock surfaces if their corresponding wl_output global is removed.

  If a lock surface on an active output is destroyed before the ext_session_lock_v1.unlock_and_destroy event is sent, the compositor must fall back to rendering a solid color.

__C declaration:__ @ext_session_lock_surface_v1_destroy@

__defined at:__ @ext-session-lock-v1-client-protocol.h 639:1@

__exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
ext_session_lock_surface_v1_destroy ::
     RIP.Ptr Ext_session_lock_surface_v1
     -- ^ __C declaration:__ @ext_session_lock_surface_v1@
  -> IO ()
ext_session_lock_surface_v1_destroy =
  hs_bindgen_1ff1c3c15a759bed

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_ack_configure@
foreign import ccall safe "hs_bindgen_9facde67b15d5936" hs_bindgen_9facde67b15d5936_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_ExtSessionLockV1_Generated_Bindings.Wayland.ExtSessionLockV1.Generated_Safe_ext_session_lock_surface_v1_ack_configure@
hs_bindgen_9facde67b15d5936 ::
     RIP.Ptr Ext_session_lock_surface_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_9facde67b15d5936 =
  RIP.fromFFIType hs_bindgen_9facde67b15d5936_base

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
ext_session_lock_surface_v1_ack_configure ::
     RIP.Ptr Ext_session_lock_surface_v1
     -- ^ __C declaration:__ @ext_session_lock_surface_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
ext_session_lock_surface_v1_ack_configure =
  hs_bindgen_9facde67b15d5936

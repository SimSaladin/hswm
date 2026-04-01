{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe
    ( Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_list_v1_add_listener
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_list_v1_set_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_list_v1_get_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_list_v1_get_version
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_list_v1_stop
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_list_v1_destroy
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_handle_v1_add_listener
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_handle_v1_set_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_handle_v1_get_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_handle_v1_get_version
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Safe.ext_foreign_toplevel_handle_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Wayland.Protocol.ForeignTopLevelListV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-foreign-toplevel-list-v1-client-protocol.h>"
  , "signed int hs_bindgen_dffc900c0af8b94d ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  struct ext_foreign_toplevel_list_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_bf92d485c57216e3 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0590f4cc9d3feffa ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_3f8a23038ff34629 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_fb2ba7d80d743134 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_49aa6aa102ffb809 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_db4d14fb4c178c91 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  struct ext_foreign_toplevel_handle_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_09ce08d0dbd2f646 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_handle_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c59bff1a1b444ba6 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4f462697803a9f4a ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d8ed8d34178b9795 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_handle_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_add_listener@
foreign import ccall safe "hs_bindgen_dffc900c0af8b94d" hs_bindgen_dffc900c0af8b94d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_add_listener@
hs_bindgen_dffc900c0af8b94d ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> PtrConst.PtrConst Ext_foreign_toplevel_list_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_dffc900c0af8b94d =
  RIP.fromFFIType hs_bindgen_dffc900c0af8b94d_base

{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_add_listener@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 183:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_add_listener ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_list_v1@
  -> PtrConst.PtrConst Ext_foreign_toplevel_list_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
ext_foreign_toplevel_list_v1_add_listener =
  hs_bindgen_dffc900c0af8b94d

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_set_user_data@
foreign import ccall safe "hs_bindgen_bf92d485c57216e3" hs_bindgen_bf92d485c57216e3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_set_user_data@
hs_bindgen_bf92d485c57216e3 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_bf92d485c57216e3 =
  RIP.fromFFIType hs_bindgen_bf92d485c57216e3_base

{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_set_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 213:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_set_user_data ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_list_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
ext_foreign_toplevel_list_v1_set_user_data =
  hs_bindgen_bf92d485c57216e3

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_get_user_data@
foreign import ccall safe "hs_bindgen_0590f4cc9d3feffa" hs_bindgen_0590f4cc9d3feffa_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_get_user_data@
hs_bindgen_0590f4cc9d3feffa ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0590f4cc9d3feffa =
  RIP.fromFFIType hs_bindgen_0590f4cc9d3feffa_base

{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_get_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 220:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_get_user_data ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_list_v1@
  -> IO (RIP.Ptr RIP.Void)
ext_foreign_toplevel_list_v1_get_user_data =
  hs_bindgen_0590f4cc9d3feffa

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_get_version@
foreign import ccall safe "hs_bindgen_3f8a23038ff34629" hs_bindgen_3f8a23038ff34629_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_get_version@
hs_bindgen_3f8a23038ff34629 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_3f8a23038ff34629 =
  RIP.fromFFIType hs_bindgen_3f8a23038ff34629_base

{-| __C declaration:__ @ext_foreign_toplevel_list_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 226:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_get_version ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_list_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_foreign_toplevel_list_v1_get_version =
  hs_bindgen_3f8a23038ff34629

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_stop@
foreign import ccall safe "hs_bindgen_fb2ba7d80d743134" hs_bindgen_fb2ba7d80d743134_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_stop@
hs_bindgen_fb2ba7d80d743134 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO ()
hs_bindgen_fb2ba7d80d743134 =
  RIP.fromFFIType hs_bindgen_fb2ba7d80d743134_base

{-|

  > iface_ext_foreign_toplevel_list_v1

  This request indicates that the client no longer wishes to receive events for new toplevels.

  The Wayland protocol is asynchronous, meaning the compositor may send further toplevel events until the stop request is processed. The client should wait for a ext_foreign_toplevel_list_v1.finished event before destroying this object.

__C declaration:__ @ext_foreign_toplevel_list_v1_stop@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 243:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_stop ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_list_v1@
  -> IO ()
ext_foreign_toplevel_list_v1_stop =
  hs_bindgen_fb2ba7d80d743134

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_destroy@
foreign import ccall safe "hs_bindgen_49aa6aa102ffb809" hs_bindgen_49aa6aa102ffb809_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_list_v1_destroy@
hs_bindgen_49aa6aa102ffb809 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO ()
hs_bindgen_49aa6aa102ffb809 =
  RIP.fromFFIType hs_bindgen_49aa6aa102ffb809_base

{-|

  > iface_ext_foreign_toplevel_list_v1

  This request should be called either when the client will no longer use the ext_foreign_toplevel_list_v1 or after the finished event has been received to allow destruction of the object.

  If a client wishes to destroy this object it should send a ext_foreign_toplevel_list_v1.stop request and wait for a ext_foreign_toplevel_list_v1.finished event, then destroy the handles and then this object.

__C declaration:__ @ext_foreign_toplevel_list_v1_destroy@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 261:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_destroy ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_list_v1@
  -> IO ()
ext_foreign_toplevel_list_v1_destroy =
  hs_bindgen_49aa6aa102ffb809

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_add_listener@
foreign import ccall safe "hs_bindgen_db4d14fb4c178c91" hs_bindgen_db4d14fb4c178c91_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_add_listener@
hs_bindgen_db4d14fb4c178c91 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> PtrConst.PtrConst Ext_foreign_toplevel_handle_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_db4d14fb4c178c91 =
  RIP.fromFFIType hs_bindgen_db4d14fb4c178c91_base

{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_add_listener@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 359:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_add_listener ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_handle_v1@
  -> PtrConst.PtrConst Ext_foreign_toplevel_handle_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
ext_foreign_toplevel_handle_v1_add_listener =
  hs_bindgen_db4d14fb4c178c91

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_set_user_data@
foreign import ccall safe "hs_bindgen_09ce08d0dbd2f646" hs_bindgen_09ce08d0dbd2f646_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_set_user_data@
hs_bindgen_09ce08d0dbd2f646 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_09ce08d0dbd2f646 =
  RIP.fromFFIType hs_bindgen_09ce08d0dbd2f646_base

{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_set_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 396:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_set_user_data ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_handle_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
ext_foreign_toplevel_handle_v1_set_user_data =
  hs_bindgen_09ce08d0dbd2f646

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_get_user_data@
foreign import ccall safe "hs_bindgen_c59bff1a1b444ba6" hs_bindgen_c59bff1a1b444ba6_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_get_user_data@
hs_bindgen_c59bff1a1b444ba6 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c59bff1a1b444ba6 =
  RIP.fromFFIType hs_bindgen_c59bff1a1b444ba6_base

{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_get_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 403:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_get_user_data ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_handle_v1@
  -> IO (RIP.Ptr RIP.Void)
ext_foreign_toplevel_handle_v1_get_user_data =
  hs_bindgen_c59bff1a1b444ba6

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_get_version@
foreign import ccall safe "hs_bindgen_4f462697803a9f4a" hs_bindgen_4f462697803a9f4a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_get_version@
hs_bindgen_4f462697803a9f4a ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4f462697803a9f4a =
  RIP.fromFFIType hs_bindgen_4f462697803a9f4a_base

{-| __C declaration:__ @ext_foreign_toplevel_handle_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 409:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_get_version ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_handle_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_foreign_toplevel_handle_v1_get_version =
  hs_bindgen_4f462697803a9f4a

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_destroy@
foreign import ccall safe "hs_bindgen_d8ed8d34178b9795" hs_bindgen_d8ed8d34178b9795_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Safe_ext_foreign_toplevel_handle_v1_destroy@
hs_bindgen_d8ed8d34178b9795 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO ()
hs_bindgen_d8ed8d34178b9795 =
  RIP.fromFFIType hs_bindgen_d8ed8d34178b9795_base

{-|

  > iface_ext_foreign_toplevel_handle_v1

  This request should be used when the client will no longer use the handle or after the closed event has been received to allow destruction of the object.

  When a handle is destroyed, a new handle may not be created by the server until the toplevel is unmapped and then remapped. Destroying a toplevel handle is not recommended unless the client is cleaning up child objects before destroying the ext_foreign_toplevel_list_v1 object, the toplevel was closed or the toplevel handle will not be used in the future.

  Other protocols which extend the ext_foreign_toplevel_handle_v1 interface should require destructors for extension interfaces be called before allowing the toplevel handle to be destroyed.

__C declaration:__ @ext_foreign_toplevel_handle_v1_destroy@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 432:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_destroy ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_handle_v1@
  -> IO ()
ext_foreign_toplevel_handle_v1_destroy =
  hs_bindgen_d8ed8d34178b9795

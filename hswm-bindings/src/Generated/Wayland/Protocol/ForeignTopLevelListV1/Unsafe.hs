{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe
    ( Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_list_v1_add_listener
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_list_v1_set_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_list_v1_get_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_list_v1_get_version
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_list_v1_stop
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_list_v1_destroy
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_handle_v1_add_listener
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_handle_v1_set_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_handle_v1_get_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_handle_v1_get_version
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Unsafe.ext_foreign_toplevel_handle_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Wayland.Protocol.ForeignTopLevelListV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-foreign-toplevel-list-v1-client-protocol.h>"
  , "signed int hs_bindgen_3ee682b3bef75502 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  struct ext_foreign_toplevel_list_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7cb418f7801126d8 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_04d992a5b7b7e4d7 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_00ac513b3926aff7 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_88cbcab903c1149a ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_5c3a3b89a514ed80 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_24f8690dcf1de2a3 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  struct ext_foreign_toplevel_handle_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_95cf96333b34cd77 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_handle_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3ed4d35c705ba7c9 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_883561b18c27bd3d ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_72218bd129226ad5 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_handle_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_3ee682b3bef75502" hs_bindgen_3ee682b3bef75502_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_add_listener@
hs_bindgen_3ee682b3bef75502 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> PtrConst.PtrConst Ext_foreign_toplevel_list_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_3ee682b3bef75502 =
  RIP.fromFFIType hs_bindgen_3ee682b3bef75502_base

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
  hs_bindgen_3ee682b3bef75502

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_7cb418f7801126d8" hs_bindgen_7cb418f7801126d8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_set_user_data@
hs_bindgen_7cb418f7801126d8 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7cb418f7801126d8 =
  RIP.fromFFIType hs_bindgen_7cb418f7801126d8_base

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
  hs_bindgen_7cb418f7801126d8

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_04d992a5b7b7e4d7" hs_bindgen_04d992a5b7b7e4d7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_get_user_data@
hs_bindgen_04d992a5b7b7e4d7 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_04d992a5b7b7e4d7 =
  RIP.fromFFIType hs_bindgen_04d992a5b7b7e4d7_base

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
  hs_bindgen_04d992a5b7b7e4d7

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_get_version@
foreign import ccall unsafe "hs_bindgen_00ac513b3926aff7" hs_bindgen_00ac513b3926aff7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_get_version@
hs_bindgen_00ac513b3926aff7 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_00ac513b3926aff7 =
  RIP.fromFFIType hs_bindgen_00ac513b3926aff7_base

{-| __C declaration:__ @ext_foreign_toplevel_list_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 226:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_get_version ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_list_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_foreign_toplevel_list_v1_get_version =
  hs_bindgen_00ac513b3926aff7

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_stop@
foreign import ccall unsafe "hs_bindgen_88cbcab903c1149a" hs_bindgen_88cbcab903c1149a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_stop@
hs_bindgen_88cbcab903c1149a ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO ()
hs_bindgen_88cbcab903c1149a =
  RIP.fromFFIType hs_bindgen_88cbcab903c1149a_base

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
  hs_bindgen_88cbcab903c1149a

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_destroy@
foreign import ccall unsafe "hs_bindgen_5c3a3b89a514ed80" hs_bindgen_5c3a3b89a514ed80_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_list_v1_destroy@
hs_bindgen_5c3a3b89a514ed80 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO ()
hs_bindgen_5c3a3b89a514ed80 =
  RIP.fromFFIType hs_bindgen_5c3a3b89a514ed80_base

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
  hs_bindgen_5c3a3b89a514ed80

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_24f8690dcf1de2a3" hs_bindgen_24f8690dcf1de2a3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_add_listener@
hs_bindgen_24f8690dcf1de2a3 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> PtrConst.PtrConst Ext_foreign_toplevel_handle_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_24f8690dcf1de2a3 =
  RIP.fromFFIType hs_bindgen_24f8690dcf1de2a3_base

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
  hs_bindgen_24f8690dcf1de2a3

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_95cf96333b34cd77" hs_bindgen_95cf96333b34cd77_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_set_user_data@
hs_bindgen_95cf96333b34cd77 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_95cf96333b34cd77 =
  RIP.fromFFIType hs_bindgen_95cf96333b34cd77_base

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
  hs_bindgen_95cf96333b34cd77

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_3ed4d35c705ba7c9" hs_bindgen_3ed4d35c705ba7c9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_get_user_data@
hs_bindgen_3ed4d35c705ba7c9 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3ed4d35c705ba7c9 =
  RIP.fromFFIType hs_bindgen_3ed4d35c705ba7c9_base

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
  hs_bindgen_3ed4d35c705ba7c9

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_get_version@
foreign import ccall unsafe "hs_bindgen_883561b18c27bd3d" hs_bindgen_883561b18c27bd3d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_get_version@
hs_bindgen_883561b18c27bd3d ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_883561b18c27bd3d =
  RIP.fromFFIType hs_bindgen_883561b18c27bd3d_base

{-| __C declaration:__ @ext_foreign_toplevel_handle_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 409:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_get_version ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_handle_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_foreign_toplevel_handle_v1_get_version =
  hs_bindgen_883561b18c27bd3d

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_destroy@
foreign import ccall unsafe "hs_bindgen_72218bd129226ad5" hs_bindgen_72218bd129226ad5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_Unsafe_ext_foreign_toplevel_handle_v1_destroy@
hs_bindgen_72218bd129226ad5 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO ()
hs_bindgen_72218bd129226ad5 =
  RIP.fromFFIType hs_bindgen_72218bd129226ad5_base

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
  hs_bindgen_72218bd129226ad5

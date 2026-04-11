{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe
    ( Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_list_v1_add_listener
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_list_v1_set_user_data
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_list_v1_get_user_data
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_list_v1_get_version
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_list_v1_stop
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_list_v1_destroy
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_handle_v1_add_listener
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_handle_v1_set_user_data
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_handle_v1_get_user_data
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_handle_v1_get_version
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Safe.ext_foreign_toplevel_handle_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-foreign-toplevel-list-v1-client-protocol.h>"
  , "signed int hs_bindgen_8870a7a319c982fe ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  struct ext_foreign_toplevel_list_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_00e12a7aa55fecfc ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_ea9a9cb9203c8409 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_86deca7a181d4b48 ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_list_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_a931b9695bb3a8ed ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_stop)(arg1);"
  , "}"
  , "void hs_bindgen_c2957ca950e8f60c ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_list_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_889b19018ebcf26b ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  struct ext_foreign_toplevel_handle_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_899b76707ab0bf2b ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_handle_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c779c34a377b5d06 ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_494dd8ce47360a4a ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return (ext_foreign_toplevel_handle_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e71f51e03fb61b9d ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  (ext_foreign_toplevel_handle_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_add_listener@
foreign import ccall safe "hs_bindgen_8870a7a319c982fe" hs_bindgen_8870a7a319c982fe_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_add_listener@
hs_bindgen_8870a7a319c982fe ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> PtrConst.PtrConst Ext_foreign_toplevel_list_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8870a7a319c982fe =
  RIP.fromFFIType hs_bindgen_8870a7a319c982fe_base

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
  hs_bindgen_8870a7a319c982fe

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_set_user_data@
foreign import ccall safe "hs_bindgen_00e12a7aa55fecfc" hs_bindgen_00e12a7aa55fecfc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_set_user_data@
hs_bindgen_00e12a7aa55fecfc ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_00e12a7aa55fecfc =
  RIP.fromFFIType hs_bindgen_00e12a7aa55fecfc_base

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
  hs_bindgen_00e12a7aa55fecfc

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_get_user_data@
foreign import ccall safe "hs_bindgen_ea9a9cb9203c8409" hs_bindgen_ea9a9cb9203c8409_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_get_user_data@
hs_bindgen_ea9a9cb9203c8409 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_ea9a9cb9203c8409 =
  RIP.fromFFIType hs_bindgen_ea9a9cb9203c8409_base

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
  hs_bindgen_ea9a9cb9203c8409

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_get_version@
foreign import ccall safe "hs_bindgen_86deca7a181d4b48" hs_bindgen_86deca7a181d4b48_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_get_version@
hs_bindgen_86deca7a181d4b48 ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_86deca7a181d4b48 =
  RIP.fromFFIType hs_bindgen_86deca7a181d4b48_base

{-| __C declaration:__ @ext_foreign_toplevel_list_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 226:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_get_version ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_list_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_foreign_toplevel_list_v1_get_version =
  hs_bindgen_86deca7a181d4b48

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_stop@
foreign import ccall safe "hs_bindgen_a931b9695bb3a8ed" hs_bindgen_a931b9695bb3a8ed_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_stop@
hs_bindgen_a931b9695bb3a8ed ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO ()
hs_bindgen_a931b9695bb3a8ed =
  RIP.fromFFIType hs_bindgen_a931b9695bb3a8ed_base

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
  hs_bindgen_a931b9695bb3a8ed

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_destroy@
foreign import ccall safe "hs_bindgen_c2957ca950e8f60c" hs_bindgen_c2957ca950e8f60c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_list_v1_destroy@
hs_bindgen_c2957ca950e8f60c ::
     RIP.Ptr Ext_foreign_toplevel_list_v1
  -> IO ()
hs_bindgen_c2957ca950e8f60c =
  RIP.fromFFIType hs_bindgen_c2957ca950e8f60c_base

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
  hs_bindgen_c2957ca950e8f60c

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_add_listener@
foreign import ccall safe "hs_bindgen_889b19018ebcf26b" hs_bindgen_889b19018ebcf26b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_add_listener@
hs_bindgen_889b19018ebcf26b ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> PtrConst.PtrConst Ext_foreign_toplevel_handle_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_889b19018ebcf26b =
  RIP.fromFFIType hs_bindgen_889b19018ebcf26b_base

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
  hs_bindgen_889b19018ebcf26b

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_set_user_data@
foreign import ccall safe "hs_bindgen_899b76707ab0bf2b" hs_bindgen_899b76707ab0bf2b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_set_user_data@
hs_bindgen_899b76707ab0bf2b ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_899b76707ab0bf2b =
  RIP.fromFFIType hs_bindgen_899b76707ab0bf2b_base

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
  hs_bindgen_899b76707ab0bf2b

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_get_user_data@
foreign import ccall safe "hs_bindgen_c779c34a377b5d06" hs_bindgen_c779c34a377b5d06_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_get_user_data@
hs_bindgen_c779c34a377b5d06 ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c779c34a377b5d06 =
  RIP.fromFFIType hs_bindgen_c779c34a377b5d06_base

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
  hs_bindgen_c779c34a377b5d06

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_get_version@
foreign import ccall safe "hs_bindgen_494dd8ce47360a4a" hs_bindgen_494dd8ce47360a4a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_get_version@
hs_bindgen_494dd8ce47360a4a ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_494dd8ce47360a4a =
  RIP.fromFFIType hs_bindgen_494dd8ce47360a4a_base

{-| __C declaration:__ @ext_foreign_toplevel_handle_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 409:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_get_version ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
     -- ^ __C declaration:__ @ext_foreign_toplevel_handle_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
ext_foreign_toplevel_handle_v1_get_version =
  hs_bindgen_494dd8ce47360a4a

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_destroy@
foreign import ccall safe "hs_bindgen_e71f51e03fb61b9d" hs_bindgen_e71f51e03fb61b9d_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_Safe_ext_foreign_toplevel_handle_v1_destroy@
hs_bindgen_e71f51e03fb61b9d ::
     RIP.Ptr Ext_foreign_toplevel_handle_v1
  -> IO ()
hs_bindgen_e71f51e03fb61b9d =
  RIP.fromFFIType hs_bindgen_e71f51e03fb61b9d_base

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
  hs_bindgen_e71f51e03fb61b9d

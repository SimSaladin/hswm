{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr
    ( Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_list_v1_add_listener
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_list_v1_set_user_data
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_list_v1_get_user_data
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_list_v1_get_version
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_list_v1_stop
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_list_v1_destroy
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_handle_v1_add_listener
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_handle_v1_set_user_data
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_handle_v1_get_user_data
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_handle_v1_get_version
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.FunPtr.ext_foreign_toplevel_handle_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-foreign-toplevel-list-v1-client-protocol.h>"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e72c40131ce6b916 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  struct ext_foreign_toplevel_list_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_9445da0094864632 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_458e314fd275f298 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_440a14d1f28925ea (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_248b6eb74f04d8e9 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_stop;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1d56f7c7a22924f3 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_e82609bee843334a (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  struct ext_foreign_toplevel_handle_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6babc243ce186e11 (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_d8fde7a807a4eeac (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_81a293a84cc706b5 (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e6052c421c5a4159 (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_e72c40131ce6b916" hs_bindgen_e72c40131ce6b916_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_add_listener@
hs_bindgen_e72c40131ce6b916 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> (PtrConst.PtrConst Ext_foreign_toplevel_list_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_e72c40131ce6b916 =
  RIP.fromFFIType hs_bindgen_e72c40131ce6b916_base

{-# NOINLINE ext_foreign_toplevel_list_v1_add_listener #-}
{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_add_listener@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 183:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> (PtrConst.PtrConst Ext_foreign_toplevel_list_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
ext_foreign_toplevel_list_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_e72c40131ce6b916

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_9445da0094864632" hs_bindgen_9445da0094864632_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_set_user_data@
hs_bindgen_9445da0094864632 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_9445da0094864632 =
  RIP.fromFFIType hs_bindgen_9445da0094864632_base

{-# NOINLINE ext_foreign_toplevel_list_v1_set_user_data #-}
{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_set_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 213:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_foreign_toplevel_list_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_9445da0094864632

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_458e314fd275f298" hs_bindgen_458e314fd275f298_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_get_user_data@
hs_bindgen_458e314fd275f298 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_458e314fd275f298 =
  RIP.fromFFIType hs_bindgen_458e314fd275f298_base

{-# NOINLINE ext_foreign_toplevel_list_v1_get_user_data #-}
{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_get_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 220:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO (RIP.Ptr RIP.Void))
ext_foreign_toplevel_list_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_458e314fd275f298

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_get_version@
foreign import ccall unsafe "hs_bindgen_440a14d1f28925ea" hs_bindgen_440a14d1f28925ea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_get_version@
hs_bindgen_440a14d1f28925ea :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_440a14d1f28925ea =
  RIP.fromFFIType hs_bindgen_440a14d1f28925ea_base

{-# NOINLINE ext_foreign_toplevel_list_v1_get_version #-}
{-| __C declaration:__ @ext_foreign_toplevel_list_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 226:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_foreign_toplevel_list_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_440a14d1f28925ea

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_stop@
foreign import ccall unsafe "hs_bindgen_248b6eb74f04d8e9" hs_bindgen_248b6eb74f04d8e9_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_stop@
hs_bindgen_248b6eb74f04d8e9 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()))
hs_bindgen_248b6eb74f04d8e9 =
  RIP.fromFFIType hs_bindgen_248b6eb74f04d8e9_base

{-# NOINLINE ext_foreign_toplevel_list_v1_stop #-}
{-|

  > iface_ext_foreign_toplevel_list_v1

  This request indicates that the client no longer wishes to receive events for new toplevels.

  The Wayland protocol is asynchronous, meaning the compositor may send further toplevel events until the stop request is processed. The client should wait for a ext_foreign_toplevel_list_v1.finished event before destroying this object.

__C declaration:__ @ext_foreign_toplevel_list_v1_stop@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 243:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_stop :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ())
ext_foreign_toplevel_list_v1_stop =
  RIP.unsafePerformIO hs_bindgen_248b6eb74f04d8e9

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_destroy@
foreign import ccall unsafe "hs_bindgen_1d56f7c7a22924f3" hs_bindgen_1d56f7c7a22924f3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_list_v1_destroy@
hs_bindgen_1d56f7c7a22924f3 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()))
hs_bindgen_1d56f7c7a22924f3 =
  RIP.fromFFIType hs_bindgen_1d56f7c7a22924f3_base

{-# NOINLINE ext_foreign_toplevel_list_v1_destroy #-}
{-|

  > iface_ext_foreign_toplevel_list_v1

  This request should be called either when the client will no longer use the ext_foreign_toplevel_list_v1 or after the finished event has been received to allow destruction of the object.

  If a client wishes to destroy this object it should send a ext_foreign_toplevel_list_v1.stop request and wait for a ext_foreign_toplevel_list_v1.finished event, then destroy the handles and then this object.

__C declaration:__ @ext_foreign_toplevel_list_v1_destroy@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 261:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_destroy :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ())
ext_foreign_toplevel_list_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_1d56f7c7a22924f3

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_e82609bee843334a" hs_bindgen_e82609bee843334a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_add_listener@
hs_bindgen_e82609bee843334a :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst Ext_foreign_toplevel_handle_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_e82609bee843334a =
  RIP.fromFFIType hs_bindgen_e82609bee843334a_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_add_listener #-}
{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_add_listener@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 359:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst Ext_foreign_toplevel_handle_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
ext_foreign_toplevel_handle_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_e82609bee843334a

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_6babc243ce186e11" hs_bindgen_6babc243ce186e11_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_set_user_data@
hs_bindgen_6babc243ce186e11 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_6babc243ce186e11 =
  RIP.fromFFIType hs_bindgen_6babc243ce186e11_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_set_user_data #-}
{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_set_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 396:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_foreign_toplevel_handle_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_6babc243ce186e11

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_d8fde7a807a4eeac" hs_bindgen_d8fde7a807a4eeac_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_get_user_data@
hs_bindgen_d8fde7a807a4eeac :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_d8fde7a807a4eeac =
  RIP.fromFFIType hs_bindgen_d8fde7a807a4eeac_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_get_user_data #-}
{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_get_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 403:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO (RIP.Ptr RIP.Void))
ext_foreign_toplevel_handle_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_d8fde7a807a4eeac

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_get_version@
foreign import ccall unsafe "hs_bindgen_81a293a84cc706b5" hs_bindgen_81a293a84cc706b5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_get_version@
hs_bindgen_81a293a84cc706b5 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_81a293a84cc706b5 =
  RIP.fromFFIType hs_bindgen_81a293a84cc706b5_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_get_version #-}
{-| __C declaration:__ @ext_foreign_toplevel_handle_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 409:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_foreign_toplevel_handle_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_81a293a84cc706b5

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_destroy@
foreign import ccall unsafe "hs_bindgen_e6052c421c5a4159" hs_bindgen_e6052c421c5a4159_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_Protocol_ForeignTopLevelListV1_Generated_Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated_get_ext_foreign_toplevel_handle_v1_destroy@
hs_bindgen_e6052c421c5a4159 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()))
hs_bindgen_e6052c421c5a4159 =
  RIP.fromFFIType hs_bindgen_e6052c421c5a4159_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_destroy #-}
{-|

  > iface_ext_foreign_toplevel_handle_v1

  This request should be used when the client will no longer use the handle or after the closed event has been received to allow destruction of the object.

  When a handle is destroyed, a new handle may not be created by the server until the toplevel is unmapped and then remapped. Destroying a toplevel handle is not recommended unless the client is cleaning up child objects before destroying the ext_foreign_toplevel_list_v1 object, the toplevel was closed or the toplevel handle will not be used in the future.

  Other protocols which extend the ext_foreign_toplevel_handle_v1 interface should require destructors for extension interfaces be called before allowing the toplevel handle to be destroyed.

__C declaration:__ @ext_foreign_toplevel_handle_v1_destroy@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 432:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_destroy :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())
ext_foreign_toplevel_handle_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_e6052c421c5a4159

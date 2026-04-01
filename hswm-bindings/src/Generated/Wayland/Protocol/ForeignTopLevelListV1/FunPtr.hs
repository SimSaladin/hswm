{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr
    ( Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_list_v1_add_listener
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_list_v1_set_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_list_v1_get_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_list_v1_get_version
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_list_v1_stop
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_list_v1_destroy
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_handle_v1_add_listener
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_handle_v1_set_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_handle_v1_get_user_data
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_handle_v1_get_version
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.FunPtr.ext_foreign_toplevel_handle_v1_destroy
    )
  where

import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Wayland.Protocol.ForeignTopLevelListV1

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-foreign-toplevel-list-v1-client-protocol.h>"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_512bd5c1867a2c22 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  struct ext_foreign_toplevel_list_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_add_listener;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_88a4b2db84bbbff1 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_set_user_data;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_e6a1b137edda5064 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_get_user_data;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_6f7ba0b1e71d13a3 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_get_version;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e82c25d02b4239dc (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_stop;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ad3542d34e209114 (void)) ("
  , "  struct ext_foreign_toplevel_list_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_destroy;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_83dcc29267dca9aa (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  struct ext_foreign_toplevel_handle_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_add_listener;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_15b948a52742de51 (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_set_user_data;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_d0184d8ff0a97c32 (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_get_user_data;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_d019d3c352cdab70 (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_get_version;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a49b38024fd06940 (void)) ("
  , "  struct ext_foreign_toplevel_handle_v1 *arg1"
  , ")"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_512bd5c1867a2c22" hs_bindgen_512bd5c1867a2c22_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_add_listener@
hs_bindgen_512bd5c1867a2c22 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> (PtrConst.PtrConst Ext_foreign_toplevel_list_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_512bd5c1867a2c22 =
  RIP.fromFFIType hs_bindgen_512bd5c1867a2c22_base

{-# NOINLINE ext_foreign_toplevel_list_v1_add_listener #-}
{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_add_listener@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 183:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> (PtrConst.PtrConst Ext_foreign_toplevel_list_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
ext_foreign_toplevel_list_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_512bd5c1867a2c22

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_88a4b2db84bbbff1" hs_bindgen_88a4b2db84bbbff1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_set_user_data@
hs_bindgen_88a4b2db84bbbff1 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_88a4b2db84bbbff1 =
  RIP.fromFFIType hs_bindgen_88a4b2db84bbbff1_base

{-# NOINLINE ext_foreign_toplevel_list_v1_set_user_data #-}
{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_set_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 213:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_foreign_toplevel_list_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_88a4b2db84bbbff1

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e6a1b137edda5064" hs_bindgen_e6a1b137edda5064_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_get_user_data@
hs_bindgen_e6a1b137edda5064 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_e6a1b137edda5064 =
  RIP.fromFFIType hs_bindgen_e6a1b137edda5064_base

{-# NOINLINE ext_foreign_toplevel_list_v1_get_user_data #-}
{-|

  > iface_ext_foreign_toplevel_list_v1

__C declaration:__ @ext_foreign_toplevel_list_v1_get_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 220:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO (RIP.Ptr RIP.Void))
ext_foreign_toplevel_list_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_e6a1b137edda5064

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_get_version@
foreign import ccall unsafe "hs_bindgen_6f7ba0b1e71d13a3" hs_bindgen_6f7ba0b1e71d13a3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_get_version@
hs_bindgen_6f7ba0b1e71d13a3 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_6f7ba0b1e71d13a3 =
  RIP.fromFFIType hs_bindgen_6f7ba0b1e71d13a3_base

{-# NOINLINE ext_foreign_toplevel_list_v1_get_version #-}
{-| __C declaration:__ @ext_foreign_toplevel_list_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 226:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_list_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_foreign_toplevel_list_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_6f7ba0b1e71d13a3

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_stop@
foreign import ccall unsafe "hs_bindgen_e82c25d02b4239dc" hs_bindgen_e82c25d02b4239dc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_stop@
hs_bindgen_e82c25d02b4239dc :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()))
hs_bindgen_e82c25d02b4239dc =
  RIP.fromFFIType hs_bindgen_e82c25d02b4239dc_base

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
  RIP.unsafePerformIO hs_bindgen_e82c25d02b4239dc

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_destroy@
foreign import ccall unsafe "hs_bindgen_ad3542d34e209114" hs_bindgen_ad3542d34e209114_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_destroy@
hs_bindgen_ad3542d34e209114 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()))
hs_bindgen_ad3542d34e209114 =
  RIP.fromFFIType hs_bindgen_ad3542d34e209114_base

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
  RIP.unsafePerformIO hs_bindgen_ad3542d34e209114

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_83dcc29267dca9aa" hs_bindgen_83dcc29267dca9aa_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_add_listener@
hs_bindgen_83dcc29267dca9aa :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst Ext_foreign_toplevel_handle_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_83dcc29267dca9aa =
  RIP.fromFFIType hs_bindgen_83dcc29267dca9aa_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_add_listener #-}
{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_add_listener@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 359:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst Ext_foreign_toplevel_handle_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
ext_foreign_toplevel_handle_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_83dcc29267dca9aa

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_15b948a52742de51" hs_bindgen_15b948a52742de51_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_set_user_data@
hs_bindgen_15b948a52742de51 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_15b948a52742de51 =
  RIP.fromFFIType hs_bindgen_15b948a52742de51_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_set_user_data #-}
{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_set_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 396:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (RIP.Ptr RIP.Void) -> IO ())
ext_foreign_toplevel_handle_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_15b948a52742de51

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_d0184d8ff0a97c32" hs_bindgen_d0184d8ff0a97c32_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_get_user_data@
hs_bindgen_d0184d8ff0a97c32 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_d0184d8ff0a97c32 =
  RIP.fromFFIType hs_bindgen_d0184d8ff0a97c32_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_get_user_data #-}
{-|

  > iface_ext_foreign_toplevel_handle_v1

__C declaration:__ @ext_foreign_toplevel_handle_v1_get_user_data@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 403:1@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO (RIP.Ptr RIP.Void))
ext_foreign_toplevel_handle_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_d0184d8ff0a97c32

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_get_version@
foreign import ccall unsafe "hs_bindgen_d019d3c352cdab70" hs_bindgen_d019d3c352cdab70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_get_version@
hs_bindgen_d019d3c352cdab70 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_d019d3c352cdab70 =
  RIP.fromFFIType hs_bindgen_d019d3c352cdab70_base

{-# NOINLINE ext_foreign_toplevel_handle_v1_get_version #-}
{-| __C declaration:__ @ext_foreign_toplevel_handle_v1_get_version@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 409:1@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
ext_foreign_toplevel_handle_v1_get_version :: RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO HsBindgen.Runtime.LibC.Word32)
ext_foreign_toplevel_handle_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_d019d3c352cdab70

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a49b38024fd06940" hs_bindgen_a49b38024fd06940_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_destroy@
hs_bindgen_a49b38024fd06940 :: IO (RIP.FunPtr ((RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()))
hs_bindgen_a49b38024fd06940 =
  RIP.fromFFIType hs_bindgen_a49b38024fd06940_base

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
  RIP.unsafePerformIO hs_bindgen_a49b38024fd06940

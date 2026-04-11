{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr
    ( Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_manager_v1_set_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_manager_v1_get_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_manager_v1_get_version
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_manager_v1_destroy
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_manager_v1_get_xdg_output
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_v1_add_listener
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_v1_set_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_v1_get_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_v1_get_version
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.FunPtr.zxdg_output_v1_destroy
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.XdgOutputUnstableV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <xdg-output-unstable-v1-client-protocol.h>"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_621a8c1f1d187c08 (void)) ("
  , "  struct zxdg_output_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zxdg_output_manager_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_0fc35954190a9355 (void)) ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zxdg_output_manager_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1db6d93f790e331d (void)) ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zxdg_output_manager_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_143809a1f7466ef2 (void)) ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zxdg_output_manager_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_xdg_output */"
  , "__attribute__ ((const))"
  , "struct zxdg_output_v1 *(*hs_bindgen_7cb7d35aa7fadcc7 (void)) ("
  , "  struct zxdg_output_manager_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return &zxdg_output_manager_v1_get_xdg_output;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_ac8bbca26374e3be (void)) ("
  , "  struct zxdg_output_v1 *arg1,"
  , "  struct zxdg_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zxdg_output_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fca646535a3d4ef5 (void)) ("
  , "  struct zxdg_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zxdg_output_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_e14693e43ba5c711 (void)) ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &zxdg_output_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_e447ff5275067da6 (void)) ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &zxdg_output_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a6639dd49135c36f (void)) ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  return &zxdg_output_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_621a8c1f1d187c08" hs_bindgen_621a8c1f1d187c08_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_set_user_data@
hs_bindgen_621a8c1f1d187c08 :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_621a8c1f1d187c08 =
  RIP.fromFFIType hs_bindgen_621a8c1f1d187c08_base

{-# NOINLINE zxdg_output_manager_v1_set_user_data #-}
{-|

  > iface_zxdg_output_manager_v1

__C declaration:__ @zxdg_output_manager_v1_set_user_data@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 146:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zxdg_output_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_621a8c1f1d187c08

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_0fc35954190a9355" hs_bindgen_0fc35954190a9355_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_user_data@
hs_bindgen_0fc35954190a9355 :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_0fc35954190a9355 =
  RIP.fromFFIType hs_bindgen_0fc35954190a9355_base

{-# NOINLINE zxdg_output_manager_v1_get_user_data #-}
{-|

  > iface_zxdg_output_manager_v1

__C declaration:__ @zxdg_output_manager_v1_get_user_data@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 153:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> IO (RIP.Ptr RIP.Void))
zxdg_output_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_0fc35954190a9355

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_1db6d93f790e331d" hs_bindgen_1db6d93f790e331d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_version@
hs_bindgen_1db6d93f790e331d :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_1db6d93f790e331d =
  RIP.fromFFIType hs_bindgen_1db6d93f790e331d_base

{-# NOINLINE zxdg_output_manager_v1_get_version #-}
{-| __C declaration:__ @zxdg_output_manager_v1_get_version@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 159:1@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zxdg_output_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_1db6d93f790e331d

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_143809a1f7466ef2" hs_bindgen_143809a1f7466ef2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_destroy@
hs_bindgen_143809a1f7466ef2 :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> IO ()))
hs_bindgen_143809a1f7466ef2 =
  RIP.fromFFIType hs_bindgen_143809a1f7466ef2_base

{-# NOINLINE zxdg_output_manager_v1_destroy #-}
{-|

  > iface_zxdg_output_manager_v1

  Using this request a client can tell the server that it is not going to use the xdg_output_manager object anymore.

  Any objects already created through this instance are not affected.

__C declaration:__ @zxdg_output_manager_v1_destroy@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 173:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> IO ())
zxdg_output_manager_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_143809a1f7466ef2

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_xdg_output@
foreign import ccall unsafe "hs_bindgen_7cb7d35aa7fadcc7" hs_bindgen_7cb7d35aa7fadcc7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_get_xdg_output@
hs_bindgen_7cb7d35aa7fadcc7 :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output) -> IO (RIP.Ptr Zxdg_output_v1)))
hs_bindgen_7cb7d35aa7fadcc7 =
  RIP.fromFFIType hs_bindgen_7cb7d35aa7fadcc7_base

{-# NOINLINE zxdg_output_manager_v1_get_xdg_output #-}
{-|

  > iface_zxdg_output_manager_v1

  This creates a new xdg_output object for the given wl_output.

__C declaration:__ @zxdg_output_manager_v1_get_xdg_output@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 185:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_get_xdg_output :: RIP.FunPtr ((RIP.Ptr Zxdg_output_manager_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output) -> IO (RIP.Ptr Zxdg_output_v1))
zxdg_output_manager_v1_get_xdg_output =
  RIP.unsafePerformIO hs_bindgen_7cb7d35aa7fadcc7

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_ac8bbca26374e3be" hs_bindgen_ac8bbca26374e3be_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_add_listener@
hs_bindgen_ac8bbca26374e3be :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst Zxdg_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_ac8bbca26374e3be =
  RIP.fromFFIType hs_bindgen_ac8bbca26374e3be_base

{-# NOINLINE zxdg_output_v1_add_listener #-}
{-|

  > iface_zxdg_output_v1

__C declaration:__ @zxdg_output_v1_add_listener@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 343:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> (PtrConst.PtrConst Zxdg_output_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zxdg_output_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_ac8bbca26374e3be

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_fca646535a3d4ef5" hs_bindgen_fca646535a3d4ef5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_set_user_data@
hs_bindgen_fca646535a3d4ef5 :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_fca646535a3d4ef5 =
  RIP.fromFFIType hs_bindgen_fca646535a3d4ef5_base

{-# NOINLINE zxdg_output_v1_set_user_data #-}
{-|

  > iface_zxdg_output_v1

__C declaration:__ @zxdg_output_v1_set_user_data@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 380:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zxdg_output_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_fca646535a3d4ef5

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e14693e43ba5c711" hs_bindgen_e14693e43ba5c711_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_get_user_data@
hs_bindgen_e14693e43ba5c711 :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_e14693e43ba5c711 =
  RIP.fromFFIType hs_bindgen_e14693e43ba5c711_base

{-# NOINLINE zxdg_output_v1_get_user_data #-}
{-|

  > iface_zxdg_output_v1

__C declaration:__ @zxdg_output_v1_get_user_data@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 387:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> IO (RIP.Ptr RIP.Void))
zxdg_output_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_e14693e43ba5c711

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_e447ff5275067da6" hs_bindgen_e447ff5275067da6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_get_version@
hs_bindgen_e447ff5275067da6 :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_e447ff5275067da6 =
  RIP.fromFFIType hs_bindgen_e447ff5275067da6_base

{-# NOINLINE zxdg_output_v1_get_version #-}
{-| __C declaration:__ @zxdg_output_v1_get_version@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 393:1@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zxdg_output_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_e447ff5275067da6

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a6639dd49135c36f" hs_bindgen_a6639dd49135c36f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_destroy@
hs_bindgen_a6639dd49135c36f :: IO (RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> IO ()))
hs_bindgen_a6639dd49135c36f =
  RIP.fromFFIType hs_bindgen_a6639dd49135c36f_base

{-# NOINLINE zxdg_output_v1_destroy #-}
{-|

  > iface_zxdg_output_v1

  Using this request a client can tell the server that it is not going to use the xdg_output object anymore.

__C declaration:__ @zxdg_output_v1_destroy@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 405:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zxdg_output_v1) -> IO ())
zxdg_output_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_a6639dd49135c36f

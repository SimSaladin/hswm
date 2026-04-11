{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe
    ( Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_manager_v1_set_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_manager_v1_get_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_manager_v1_get_version
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_manager_v1_destroy
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_manager_v1_get_xdg_output
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_v1_add_listener
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_v1_set_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_v1_get_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_v1_get_version
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe.zxdg_output_v1_destroy
    )
  where

import qualified Generated.Wayland.Client
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.XdgOutputUnstableV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <xdg-output-unstable-v1-client-protocol.h>"
  , "void hs_bindgen_8fd4fdd666c9b80d ("
  , "  struct zxdg_output_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zxdg_output_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_51bae655fd460d3a ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zxdg_output_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f24097122ac7ffa5 ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zxdg_output_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_df92a56315de63ac ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (zxdg_output_manager_v1_destroy)(arg1);"
  , "}"
  , "struct zxdg_output_v1 *hs_bindgen_f78bdf37c982fe7e ("
  , "  struct zxdg_output_manager_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return (zxdg_output_manager_v1_get_xdg_output)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_8e3a8d7cff7ab134 ("
  , "  struct zxdg_output_v1 *arg1,"
  , "  struct zxdg_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zxdg_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_3e54d1f464796af9 ("
  , "  struct zxdg_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zxdg_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2dd53d9b17ec99cd ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (zxdg_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_fd0c3fd96483d547 ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (zxdg_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_6936fd34843810b1 ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  (zxdg_output_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_8fd4fdd666c9b80d" hs_bindgen_8fd4fdd666c9b80d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_set_user_data@
hs_bindgen_8fd4fdd666c9b80d ::
     RIP.Ptr Zxdg_output_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_8fd4fdd666c9b80d =
  RIP.fromFFIType hs_bindgen_8fd4fdd666c9b80d_base

{-|

  > iface_zxdg_output_manager_v1

__C declaration:__ @zxdg_output_manager_v1_set_user_data@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 146:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_set_user_data ::
     RIP.Ptr Zxdg_output_manager_v1
     -- ^ __C declaration:__ @zxdg_output_manager_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zxdg_output_manager_v1_set_user_data =
  hs_bindgen_8fd4fdd666c9b80d

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_51bae655fd460d3a" hs_bindgen_51bae655fd460d3a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_get_user_data@
hs_bindgen_51bae655fd460d3a ::
     RIP.Ptr Zxdg_output_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_51bae655fd460d3a =
  RIP.fromFFIType hs_bindgen_51bae655fd460d3a_base

{-|

  > iface_zxdg_output_manager_v1

__C declaration:__ @zxdg_output_manager_v1_get_user_data@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 153:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_get_user_data ::
     RIP.Ptr Zxdg_output_manager_v1
     -- ^ __C declaration:__ @zxdg_output_manager_v1@
  -> IO (RIP.Ptr RIP.Void)
zxdg_output_manager_v1_get_user_data =
  hs_bindgen_51bae655fd460d3a

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_f24097122ac7ffa5" hs_bindgen_f24097122ac7ffa5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_get_version@
hs_bindgen_f24097122ac7ffa5 ::
     RIP.Ptr Zxdg_output_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f24097122ac7ffa5 =
  RIP.fromFFIType hs_bindgen_f24097122ac7ffa5_base

{-| __C declaration:__ @zxdg_output_manager_v1_get_version@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 159:1@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_get_version ::
     RIP.Ptr Zxdg_output_manager_v1
     -- ^ __C declaration:__ @zxdg_output_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zxdg_output_manager_v1_get_version =
  hs_bindgen_f24097122ac7ffa5

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_df92a56315de63ac" hs_bindgen_df92a56315de63ac_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_destroy@
hs_bindgen_df92a56315de63ac ::
     RIP.Ptr Zxdg_output_manager_v1
  -> IO ()
hs_bindgen_df92a56315de63ac =
  RIP.fromFFIType hs_bindgen_df92a56315de63ac_base

{-|

  > iface_zxdg_output_manager_v1

  Using this request a client can tell the server that it is not going to use the xdg_output_manager object anymore.

  Any objects already created through this instance are not affected.

__C declaration:__ @zxdg_output_manager_v1_destroy@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 173:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_destroy ::
     RIP.Ptr Zxdg_output_manager_v1
     -- ^ __C declaration:__ @zxdg_output_manager_v1@
  -> IO ()
zxdg_output_manager_v1_destroy =
  hs_bindgen_df92a56315de63ac

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_get_xdg_output@
foreign import ccall safe "hs_bindgen_f78bdf37c982fe7e" hs_bindgen_f78bdf37c982fe7e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_manager_v1_get_xdg_output@
hs_bindgen_f78bdf37c982fe7e ::
     RIP.Ptr Zxdg_output_manager_v1
  -> RIP.Ptr Generated.Wayland.Client.Wl_output
  -> IO (RIP.Ptr Zxdg_output_v1)
hs_bindgen_f78bdf37c982fe7e =
  RIP.fromFFIType hs_bindgen_f78bdf37c982fe7e_base

{-|

  > iface_zxdg_output_manager_v1

  This creates a new xdg_output object for the given wl_output.

__C declaration:__ @zxdg_output_manager_v1_get_xdg_output@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 185:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_get_xdg_output ::
     RIP.Ptr Zxdg_output_manager_v1
     -- ^ __C declaration:__ @zxdg_output_manager_v1@
  -> RIP.Ptr Generated.Wayland.Client.Wl_output
     -- ^ __C declaration:__ @output@
  -> IO (RIP.Ptr Zxdg_output_v1)
zxdg_output_manager_v1_get_xdg_output =
  hs_bindgen_f78bdf37c982fe7e

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_add_listener@
foreign import ccall safe "hs_bindgen_8e3a8d7cff7ab134" hs_bindgen_8e3a8d7cff7ab134_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_add_listener@
hs_bindgen_8e3a8d7cff7ab134 ::
     RIP.Ptr Zxdg_output_v1
  -> PtrConst.PtrConst Zxdg_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_8e3a8d7cff7ab134 =
  RIP.fromFFIType hs_bindgen_8e3a8d7cff7ab134_base

{-|

  > iface_zxdg_output_v1

__C declaration:__ @zxdg_output_v1_add_listener@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 343:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_add_listener ::
     RIP.Ptr Zxdg_output_v1
     -- ^ __C declaration:__ @zxdg_output_v1@
  -> PtrConst.PtrConst Zxdg_output_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zxdg_output_v1_add_listener =
  hs_bindgen_8e3a8d7cff7ab134

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_set_user_data@
foreign import ccall safe "hs_bindgen_3e54d1f464796af9" hs_bindgen_3e54d1f464796af9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_set_user_data@
hs_bindgen_3e54d1f464796af9 ::
     RIP.Ptr Zxdg_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_3e54d1f464796af9 =
  RIP.fromFFIType hs_bindgen_3e54d1f464796af9_base

{-|

  > iface_zxdg_output_v1

__C declaration:__ @zxdg_output_v1_set_user_data@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 380:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_set_user_data ::
     RIP.Ptr Zxdg_output_v1
     -- ^ __C declaration:__ @zxdg_output_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zxdg_output_v1_set_user_data =
  hs_bindgen_3e54d1f464796af9

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_get_user_data@
foreign import ccall safe "hs_bindgen_2dd53d9b17ec99cd" hs_bindgen_2dd53d9b17ec99cd_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_get_user_data@
hs_bindgen_2dd53d9b17ec99cd ::
     RIP.Ptr Zxdg_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2dd53d9b17ec99cd =
  RIP.fromFFIType hs_bindgen_2dd53d9b17ec99cd_base

{-|

  > iface_zxdg_output_v1

__C declaration:__ @zxdg_output_v1_get_user_data@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 387:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_get_user_data ::
     RIP.Ptr Zxdg_output_v1
     -- ^ __C declaration:__ @zxdg_output_v1@
  -> IO (RIP.Ptr RIP.Void)
zxdg_output_v1_get_user_data =
  hs_bindgen_2dd53d9b17ec99cd

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_get_version@
foreign import ccall safe "hs_bindgen_fd0c3fd96483d547" hs_bindgen_fd0c3fd96483d547_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_get_version@
hs_bindgen_fd0c3fd96483d547 ::
     RIP.Ptr Zxdg_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_fd0c3fd96483d547 =
  RIP.fromFFIType hs_bindgen_fd0c3fd96483d547_base

{-| __C declaration:__ @zxdg_output_v1_get_version@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 393:1@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_get_version ::
     RIP.Ptr Zxdg_output_v1
     -- ^ __C declaration:__ @zxdg_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zxdg_output_v1_get_version =
  hs_bindgen_fd0c3fd96483d547

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_destroy@
foreign import ccall safe "hs_bindgen_6936fd34843810b1" hs_bindgen_6936fd34843810b1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Safe_zxdg_output_v1_destroy@
hs_bindgen_6936fd34843810b1 ::
     RIP.Ptr Zxdg_output_v1
  -> IO ()
hs_bindgen_6936fd34843810b1 =
  RIP.fromFFIType hs_bindgen_6936fd34843810b1_base

{-|

  > iface_zxdg_output_v1

  Using this request a client can tell the server that it is not going to use the xdg_output object anymore.

__C declaration:__ @zxdg_output_v1_destroy@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 405:1@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_destroy ::
     RIP.Ptr Zxdg_output_v1
     -- ^ __C declaration:__ @zxdg_output_v1@
  -> IO ()
zxdg_output_v1_destroy = hs_bindgen_6936fd34843810b1

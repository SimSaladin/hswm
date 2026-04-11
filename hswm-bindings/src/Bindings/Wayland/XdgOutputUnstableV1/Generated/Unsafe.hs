{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe
    ( Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_manager_v1_set_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_manager_v1_get_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_manager_v1_get_version
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_manager_v1_destroy
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_manager_v1_get_xdg_output
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_v1_add_listener
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_v1_set_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_v1_get_user_data
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_v1_get_version
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Unsafe.zxdg_output_v1_destroy
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
  , "void hs_bindgen_a371a5bcc3712d33 ("
  , "  struct zxdg_output_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zxdg_output_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_4366db778517df62 ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zxdg_output_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b6a7baed890fc6a2 ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zxdg_output_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c16fb9abdb94ca03 ("
  , "  struct zxdg_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (zxdg_output_manager_v1_destroy)(arg1);"
  , "}"
  , "struct zxdg_output_v1 *hs_bindgen_042d8ba43dcdd798 ("
  , "  struct zxdg_output_manager_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return (zxdg_output_manager_v1_get_xdg_output)(arg1, arg2);"
  , "}"
  , "signed int hs_bindgen_ccc3da42deb080a2 ("
  , "  struct zxdg_output_v1 *arg1,"
  , "  struct zxdg_output_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zxdg_output_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7a094afd37f5fab3 ("
  , "  struct zxdg_output_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zxdg_output_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_2f04f82671b2b3b1 ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (zxdg_output_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ac656afb16309fc6 ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  return (zxdg_output_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_52dddfc44ccd51b9 ("
  , "  struct zxdg_output_v1 *arg1"
  , ")"
  , "{"
  , "  (zxdg_output_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_a371a5bcc3712d33" hs_bindgen_a371a5bcc3712d33_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_set_user_data@
hs_bindgen_a371a5bcc3712d33 ::
     RIP.Ptr Zxdg_output_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a371a5bcc3712d33 =
  RIP.fromFFIType hs_bindgen_a371a5bcc3712d33_base

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
  hs_bindgen_a371a5bcc3712d33

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_4366db778517df62" hs_bindgen_4366db778517df62_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_get_user_data@
hs_bindgen_4366db778517df62 ::
     RIP.Ptr Zxdg_output_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4366db778517df62 =
  RIP.fromFFIType hs_bindgen_4366db778517df62_base

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
  hs_bindgen_4366db778517df62

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_b6a7baed890fc6a2" hs_bindgen_b6a7baed890fc6a2_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_get_version@
hs_bindgen_b6a7baed890fc6a2 ::
     RIP.Ptr Zxdg_output_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b6a7baed890fc6a2 =
  RIP.fromFFIType hs_bindgen_b6a7baed890fc6a2_base

{-| __C declaration:__ @zxdg_output_manager_v1_get_version@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 159:1@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_manager_v1_get_version ::
     RIP.Ptr Zxdg_output_manager_v1
     -- ^ __C declaration:__ @zxdg_output_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zxdg_output_manager_v1_get_version =
  hs_bindgen_b6a7baed890fc6a2

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_c16fb9abdb94ca03" hs_bindgen_c16fb9abdb94ca03_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_destroy@
hs_bindgen_c16fb9abdb94ca03 ::
     RIP.Ptr Zxdg_output_manager_v1
  -> IO ()
hs_bindgen_c16fb9abdb94ca03 =
  RIP.fromFFIType hs_bindgen_c16fb9abdb94ca03_base

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
  hs_bindgen_c16fb9abdb94ca03

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_get_xdg_output@
foreign import ccall unsafe "hs_bindgen_042d8ba43dcdd798" hs_bindgen_042d8ba43dcdd798_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_manager_v1_get_xdg_output@
hs_bindgen_042d8ba43dcdd798 ::
     RIP.Ptr Zxdg_output_manager_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
  -> IO (RIP.Ptr Zxdg_output_v1)
hs_bindgen_042d8ba43dcdd798 =
  RIP.fromFFIType hs_bindgen_042d8ba43dcdd798_base

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
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
     -- ^ __C declaration:__ @output@
  -> IO (RIP.Ptr Zxdg_output_v1)
zxdg_output_manager_v1_get_xdg_output =
  hs_bindgen_042d8ba43dcdd798

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_ccc3da42deb080a2" hs_bindgen_ccc3da42deb080a2_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_add_listener@
hs_bindgen_ccc3da42deb080a2 ::
     RIP.Ptr Zxdg_output_v1
  -> PtrConst.PtrConst Zxdg_output_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_ccc3da42deb080a2 =
  RIP.fromFFIType hs_bindgen_ccc3da42deb080a2_base

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
  hs_bindgen_ccc3da42deb080a2

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_7a094afd37f5fab3" hs_bindgen_7a094afd37f5fab3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_set_user_data@
hs_bindgen_7a094afd37f5fab3 ::
     RIP.Ptr Zxdg_output_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7a094afd37f5fab3 =
  RIP.fromFFIType hs_bindgen_7a094afd37f5fab3_base

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
  hs_bindgen_7a094afd37f5fab3

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_2f04f82671b2b3b1" hs_bindgen_2f04f82671b2b3b1_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_get_user_data@
hs_bindgen_2f04f82671b2b3b1 ::
     RIP.Ptr Zxdg_output_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_2f04f82671b2b3b1 =
  RIP.fromFFIType hs_bindgen_2f04f82671b2b3b1_base

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
  hs_bindgen_2f04f82671b2b3b1

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_get_version@
foreign import ccall unsafe "hs_bindgen_ac656afb16309fc6" hs_bindgen_ac656afb16309fc6_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_get_version@
hs_bindgen_ac656afb16309fc6 ::
     RIP.Ptr Zxdg_output_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ac656afb16309fc6 =
  RIP.fromFFIType hs_bindgen_ac656afb16309fc6_base

{-| __C declaration:__ @zxdg_output_v1_get_version@

    __defined at:__ @xdg-output-unstable-v1-client-protocol.h 393:1@

    __exported by:__ @xdg-output-unstable-v1-client-protocol.h@
-}
zxdg_output_v1_get_version ::
     RIP.Ptr Zxdg_output_v1
     -- ^ __C declaration:__ @zxdg_output_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zxdg_output_v1_get_version =
  hs_bindgen_ac656afb16309fc6

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_destroy@
foreign import ccall unsafe "hs_bindgen_52dddfc44ccd51b9" hs_bindgen_52dddfc44ccd51b9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_Unsafe_zxdg_output_v1_destroy@
hs_bindgen_52dddfc44ccd51b9 ::
     RIP.Ptr Zxdg_output_v1
  -> IO ()
hs_bindgen_52dddfc44ccd51b9 =
  RIP.fromFFIType hs_bindgen_52dddfc44ccd51b9_base

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
zxdg_output_v1_destroy = hs_bindgen_52dddfc44ccd51b9

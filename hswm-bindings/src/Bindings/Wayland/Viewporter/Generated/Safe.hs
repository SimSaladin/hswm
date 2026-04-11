{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Viewporter.Generated.Safe
    ( Bindings.Wayland.Viewporter.Generated.Safe.wp_viewporter_set_user_data
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewporter_get_user_data
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewporter_get_version
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewporter_destroy
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewporter_get_viewport
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewport_set_user_data
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewport_get_user_data
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewport_get_version
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewport_destroy
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewport_set_source
    , Bindings.Wayland.Viewporter.Generated.Safe.wp_viewport_set_destination
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import Bindings.Wayland.Viewporter.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <viewporter-client-protocol.h>"
  , "void hs_bindgen_fdfebdb316249d3d ("
  , "  struct wp_viewporter *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wp_viewporter_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1bb1b869aa8bf844 ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  return (wp_viewporter_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_62151ff58bd07a5f ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  return (wp_viewporter_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_af6acd2d82f1e2af ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  (wp_viewporter_destroy)(arg1);"
  , "}"
  , "struct wp_viewport *hs_bindgen_3fccedad7b4978ae ("
  , "  struct wp_viewporter *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wp_viewporter_get_viewport)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_1ad1119bdc2d3132 ("
  , "  struct wp_viewport *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wp_viewport_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1ba1e2844d574756 ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  return (wp_viewport_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_a6254f5efa759a52 ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  return (wp_viewport_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_d19fed0e01b811ea ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  (wp_viewport_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_1d5f35fbaadfa3bc ("
  , "  struct wp_viewport *arg1,"
  , "  wl_fixed_t arg2,"
  , "  wl_fixed_t arg3,"
  , "  wl_fixed_t arg4,"
  , "  wl_fixed_t arg5"
  , ")"
  , "{"
  , "  (wp_viewport_set_source)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_2a82dc9b735457f7 ("
  , "  struct wp_viewport *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wp_viewport_set_destination)(arg1, arg2, arg3);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_set_user_data@
foreign import ccall safe "hs_bindgen_fdfebdb316249d3d" hs_bindgen_fdfebdb316249d3d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_set_user_data@
hs_bindgen_fdfebdb316249d3d ::
     RIP.Ptr Wp_viewporter
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_fdfebdb316249d3d =
  RIP.fromFFIType hs_bindgen_fdfebdb316249d3d_base

{-|

  > iface_wp_viewporter

__C declaration:__ @wp_viewporter_set_user_data@

__defined at:__ @viewporter-client-protocol.h 224:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_set_user_data ::
     RIP.Ptr Wp_viewporter
     -- ^ __C declaration:__ @wp_viewporter@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wp_viewporter_set_user_data =
  hs_bindgen_fdfebdb316249d3d

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_get_user_data@
foreign import ccall safe "hs_bindgen_1bb1b869aa8bf844" hs_bindgen_1bb1b869aa8bf844_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_get_user_data@
hs_bindgen_1bb1b869aa8bf844 ::
     RIP.Ptr Wp_viewporter
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1bb1b869aa8bf844 =
  RIP.fromFFIType hs_bindgen_1bb1b869aa8bf844_base

{-|

  > iface_wp_viewporter

__C declaration:__ @wp_viewporter_get_user_data@

__defined at:__ @viewporter-client-protocol.h 231:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_get_user_data ::
     RIP.Ptr Wp_viewporter
     -- ^ __C declaration:__ @wp_viewporter@
  -> IO (RIP.Ptr RIP.Void)
wp_viewporter_get_user_data =
  hs_bindgen_1bb1b869aa8bf844

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_get_version@
foreign import ccall safe "hs_bindgen_62151ff58bd07a5f" hs_bindgen_62151ff58bd07a5f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_get_version@
hs_bindgen_62151ff58bd07a5f ::
     RIP.Ptr Wp_viewporter
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_62151ff58bd07a5f =
  RIP.fromFFIType hs_bindgen_62151ff58bd07a5f_base

{-| __C declaration:__ @wp_viewporter_get_version@

    __defined at:__ @viewporter-client-protocol.h 237:1@

    __exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_get_version ::
     RIP.Ptr Wp_viewporter
     -- ^ __C declaration:__ @wp_viewporter@
  -> IO HsBindgen.Runtime.LibC.Word32
wp_viewporter_get_version =
  hs_bindgen_62151ff58bd07a5f

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_destroy@
foreign import ccall safe "hs_bindgen_af6acd2d82f1e2af" hs_bindgen_af6acd2d82f1e2af_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_destroy@
hs_bindgen_af6acd2d82f1e2af ::
     RIP.Ptr Wp_viewporter
  -> IO ()
hs_bindgen_af6acd2d82f1e2af =
  RIP.fromFFIType hs_bindgen_af6acd2d82f1e2af_base

{-|

  > iface_wp_viewporter

  Informs the server that the client will not be using this protocol object anymore. This does not affect any other objects, wp_viewport objects included.

__C declaration:__ @wp_viewporter_destroy@

__defined at:__ @viewporter-client-protocol.h 250:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_destroy ::
     RIP.Ptr Wp_viewporter
     -- ^ __C declaration:__ @wp_viewporter@
  -> IO ()
wp_viewporter_destroy = hs_bindgen_af6acd2d82f1e2af

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_get_viewport@
foreign import ccall safe "hs_bindgen_3fccedad7b4978ae" hs_bindgen_3fccedad7b4978ae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewporter_get_viewport@
hs_bindgen_3fccedad7b4978ae ::
     RIP.Ptr Wp_viewporter
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr Wp_viewport)
hs_bindgen_3fccedad7b4978ae =
  RIP.fromFFIType hs_bindgen_3fccedad7b4978ae_base

{-|

  > iface_wp_viewporter

  Instantiate an interface extension for the given wl_surface to crop and scale its content. If the given wl_surface already has a wp_viewport object associated, the viewport_exists protocol error is raised.

__C declaration:__ @wp_viewporter_get_viewport@

__defined at:__ @viewporter-client-protocol.h 265:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_get_viewport ::
     RIP.Ptr Wp_viewporter
     -- ^ __C declaration:__ @wp_viewporter@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Wp_viewport)
wp_viewporter_get_viewport =
  hs_bindgen_3fccedad7b4978ae

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_set_user_data@
foreign import ccall safe "hs_bindgen_1ad1119bdc2d3132" hs_bindgen_1ad1119bdc2d3132_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_set_user_data@
hs_bindgen_1ad1119bdc2d3132 ::
     RIP.Ptr Wp_viewport
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1ad1119bdc2d3132 =
  RIP.fromFFIType hs_bindgen_1ad1119bdc2d3132_base

{-|

  > iface_wp_viewport

__C declaration:__ @wp_viewport_set_user_data@

__defined at:__ @viewporter-client-protocol.h 317:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_set_user_data ::
     RIP.Ptr Wp_viewport
     -- ^ __C declaration:__ @wp_viewport@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
wp_viewport_set_user_data =
  hs_bindgen_1ad1119bdc2d3132

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_get_user_data@
foreign import ccall safe "hs_bindgen_1ba1e2844d574756" hs_bindgen_1ba1e2844d574756_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_get_user_data@
hs_bindgen_1ba1e2844d574756 ::
     RIP.Ptr Wp_viewport
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1ba1e2844d574756 =
  RIP.fromFFIType hs_bindgen_1ba1e2844d574756_base

{-|

  > iface_wp_viewport

__C declaration:__ @wp_viewport_get_user_data@

__defined at:__ @viewporter-client-protocol.h 324:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_get_user_data ::
     RIP.Ptr Wp_viewport
     -- ^ __C declaration:__ @wp_viewport@
  -> IO (RIP.Ptr RIP.Void)
wp_viewport_get_user_data =
  hs_bindgen_1ba1e2844d574756

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_get_version@
foreign import ccall safe "hs_bindgen_a6254f5efa759a52" hs_bindgen_a6254f5efa759a52_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_get_version@
hs_bindgen_a6254f5efa759a52 ::
     RIP.Ptr Wp_viewport
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_a6254f5efa759a52 =
  RIP.fromFFIType hs_bindgen_a6254f5efa759a52_base

{-| __C declaration:__ @wp_viewport_get_version@

    __defined at:__ @viewporter-client-protocol.h 330:1@

    __exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_get_version ::
     RIP.Ptr Wp_viewport
     -- ^ __C declaration:__ @wp_viewport@
  -> IO HsBindgen.Runtime.LibC.Word32
wp_viewport_get_version = hs_bindgen_a6254f5efa759a52

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_destroy@
foreign import ccall safe "hs_bindgen_d19fed0e01b811ea" hs_bindgen_d19fed0e01b811ea_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_destroy@
hs_bindgen_d19fed0e01b811ea ::
     RIP.Ptr Wp_viewport
  -> IO ()
hs_bindgen_d19fed0e01b811ea =
  RIP.fromFFIType hs_bindgen_d19fed0e01b811ea_base

{-|

  > iface_wp_viewport

  The associated wl_surface's crop and scale state is removed. The change is applied on the next wl_surface.commit.

__C declaration:__ @wp_viewport_destroy@

__defined at:__ @viewporter-client-protocol.h 342:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_destroy ::
     RIP.Ptr Wp_viewport
     -- ^ __C declaration:__ @wp_viewport@
  -> IO ()
wp_viewport_destroy = hs_bindgen_d19fed0e01b811ea

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_set_source@
foreign import ccall safe "hs_bindgen_1d5f35fbaadfa3bc" hs_bindgen_1d5f35fbaadfa3bc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_set_source@
hs_bindgen_1d5f35fbaadfa3bc ::
     RIP.Ptr Wp_viewport
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
  -> IO ()
hs_bindgen_1d5f35fbaadfa3bc =
  RIP.fromFFIType hs_bindgen_1d5f35fbaadfa3bc_base

{-|

  > iface_wp_viewport

  Set the source rectangle of the associated wl_surface. See wp_viewport for the description, and relation to the wl_buffer size.

  If all of x, y, width and height are -1.0, the source rectangle is unset instead. Any other set of values where width or height are zero or negative, or x or y are negative, raise the bad_value protocol error.

  The crop and scale state is double-buffered, see wl_surface.commit.

__C declaration:__ @wp_viewport_set_source@

__defined at:__ @viewporter-client-protocol.h 363:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_set_source ::
     RIP.Ptr Wp_viewport
     -- ^ __C declaration:__ @wp_viewport@
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
     -- ^ __C declaration:__ @x@
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
     -- ^ __C declaration:__ @y@
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
     -- ^ __C declaration:__ @width@
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
     -- ^ __C declaration:__ @height@
  -> IO ()
wp_viewport_set_source = hs_bindgen_1d5f35fbaadfa3bc

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_set_destination@
foreign import ccall safe "hs_bindgen_2a82dc9b735457f7" hs_bindgen_2a82dc9b735457f7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Safe_wp_viewport_set_destination@
hs_bindgen_2a82dc9b735457f7 ::
     RIP.Ptr Wp_viewport
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_2a82dc9b735457f7 =
  RIP.fromFFIType hs_bindgen_2a82dc9b735457f7_base

{-|

  > iface_wp_viewport

  Set the destination size of the associated wl_surface. See wp_viewport for the description, and relation to the wl_buffer size.

  If width is -1 and height is -1, the destination size is unset instead. Any other pair of values for width and height that contains zero or negative values raises the bad_value protocol error.

  The crop and scale state is double-buffered, see wl_surface.commit.

__C declaration:__ @wp_viewport_set_destination@

__defined at:__ @viewporter-client-protocol.h 384:1@

__exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_set_destination ::
     RIP.Ptr Wp_viewport
     -- ^ __C declaration:__ @wp_viewport@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> IO ()
wp_viewport_set_destination =
  hs_bindgen_2a82dc9b735457f7

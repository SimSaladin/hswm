{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Viewporter.Generated.Unsafe
    ( Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewporter_set_user_data
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewporter_get_user_data
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewporter_get_version
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewporter_destroy
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewporter_get_viewport
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewport_set_user_data
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewport_get_user_data
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewport_get_version
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewport_destroy
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewport_set_source
    , Bindings.Wayland.Viewporter.Generated.Unsafe.wp_viewport_set_destination
    )
  where

import qualified Generated.Wayland.Client
import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import Bindings.Wayland.Viewporter.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <viewporter-client-protocol.h>"
  , "void hs_bindgen_53bfea6d07009257 ("
  , "  struct wp_viewporter *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wp_viewporter_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_54bdd33de1696dbf ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  return (wp_viewporter_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_25b43ea9d5a129f1 ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  return (wp_viewporter_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_13b85d3d531a5034 ("
  , "  struct wp_viewporter *arg1"
  , ")"
  , "{"
  , "  (wp_viewporter_destroy)(arg1);"
  , "}"
  , "struct wp_viewport *hs_bindgen_bbf5017add0b5674 ("
  , "  struct wp_viewporter *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (wp_viewporter_get_viewport)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_956a39bad22f2e65 ("
  , "  struct wp_viewport *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (wp_viewport_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_59708816fed71c16 ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  return (wp_viewport_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e30f151ab85b6fe9 ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  return (wp_viewport_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_773da75c4e1dd1ed ("
  , "  struct wp_viewport *arg1"
  , ")"
  , "{"
  , "  (wp_viewport_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_38b6a8d937ae084e ("
  , "  struct wp_viewport *arg1,"
  , "  wl_fixed_t arg2,"
  , "  wl_fixed_t arg3,"
  , "  wl_fixed_t arg4,"
  , "  wl_fixed_t arg5"
  , ")"
  , "{"
  , "  (wp_viewport_set_source)(arg1, arg2, arg3, arg4, arg5);"
  , "}"
  , "void hs_bindgen_fe20d4a68636f4ba ("
  , "  struct wp_viewport *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (wp_viewport_set_destination)(arg1, arg2, arg3);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_set_user_data@
foreign import ccall unsafe "hs_bindgen_53bfea6d07009257" hs_bindgen_53bfea6d07009257_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_set_user_data@
hs_bindgen_53bfea6d07009257 ::
     RIP.Ptr Wp_viewporter
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_53bfea6d07009257 =
  RIP.fromFFIType hs_bindgen_53bfea6d07009257_base

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
  hs_bindgen_53bfea6d07009257

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_get_user_data@
foreign import ccall unsafe "hs_bindgen_54bdd33de1696dbf" hs_bindgen_54bdd33de1696dbf_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_get_user_data@
hs_bindgen_54bdd33de1696dbf ::
     RIP.Ptr Wp_viewporter
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_54bdd33de1696dbf =
  RIP.fromFFIType hs_bindgen_54bdd33de1696dbf_base

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
  hs_bindgen_54bdd33de1696dbf

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_get_version@
foreign import ccall unsafe "hs_bindgen_25b43ea9d5a129f1" hs_bindgen_25b43ea9d5a129f1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_get_version@
hs_bindgen_25b43ea9d5a129f1 ::
     RIP.Ptr Wp_viewporter
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_25b43ea9d5a129f1 =
  RIP.fromFFIType hs_bindgen_25b43ea9d5a129f1_base

{-| __C declaration:__ @wp_viewporter_get_version@

    __defined at:__ @viewporter-client-protocol.h 237:1@

    __exported by:__ @viewporter-client-protocol.h@
-}
wp_viewporter_get_version ::
     RIP.Ptr Wp_viewporter
     -- ^ __C declaration:__ @wp_viewporter@
  -> IO HsBindgen.Runtime.LibC.Word32
wp_viewporter_get_version =
  hs_bindgen_25b43ea9d5a129f1

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_destroy@
foreign import ccall unsafe "hs_bindgen_13b85d3d531a5034" hs_bindgen_13b85d3d531a5034_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_destroy@
hs_bindgen_13b85d3d531a5034 ::
     RIP.Ptr Wp_viewporter
  -> IO ()
hs_bindgen_13b85d3d531a5034 =
  RIP.fromFFIType hs_bindgen_13b85d3d531a5034_base

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
wp_viewporter_destroy = hs_bindgen_13b85d3d531a5034

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_get_viewport@
foreign import ccall unsafe "hs_bindgen_bbf5017add0b5674" hs_bindgen_bbf5017add0b5674_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewporter_get_viewport@
hs_bindgen_bbf5017add0b5674 ::
     RIP.Ptr Wp_viewporter
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
  -> IO (RIP.Ptr Wp_viewport)
hs_bindgen_bbf5017add0b5674 =
  RIP.fromFFIType hs_bindgen_bbf5017add0b5674_base

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
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Wp_viewport)
wp_viewporter_get_viewport =
  hs_bindgen_bbf5017add0b5674

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_set_user_data@
foreign import ccall unsafe "hs_bindgen_956a39bad22f2e65" hs_bindgen_956a39bad22f2e65_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_set_user_data@
hs_bindgen_956a39bad22f2e65 ::
     RIP.Ptr Wp_viewport
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_956a39bad22f2e65 =
  RIP.fromFFIType hs_bindgen_956a39bad22f2e65_base

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
  hs_bindgen_956a39bad22f2e65

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_get_user_data@
foreign import ccall unsafe "hs_bindgen_59708816fed71c16" hs_bindgen_59708816fed71c16_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_get_user_data@
hs_bindgen_59708816fed71c16 ::
     RIP.Ptr Wp_viewport
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_59708816fed71c16 =
  RIP.fromFFIType hs_bindgen_59708816fed71c16_base

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
  hs_bindgen_59708816fed71c16

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_get_version@
foreign import ccall unsafe "hs_bindgen_e30f151ab85b6fe9" hs_bindgen_e30f151ab85b6fe9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_get_version@
hs_bindgen_e30f151ab85b6fe9 ::
     RIP.Ptr Wp_viewport
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e30f151ab85b6fe9 =
  RIP.fromFFIType hs_bindgen_e30f151ab85b6fe9_base

{-| __C declaration:__ @wp_viewport_get_version@

    __defined at:__ @viewporter-client-protocol.h 330:1@

    __exported by:__ @viewporter-client-protocol.h@
-}
wp_viewport_get_version ::
     RIP.Ptr Wp_viewport
     -- ^ __C declaration:__ @wp_viewport@
  -> IO HsBindgen.Runtime.LibC.Word32
wp_viewport_get_version = hs_bindgen_e30f151ab85b6fe9

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_destroy@
foreign import ccall unsafe "hs_bindgen_773da75c4e1dd1ed" hs_bindgen_773da75c4e1dd1ed_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_destroy@
hs_bindgen_773da75c4e1dd1ed ::
     RIP.Ptr Wp_viewport
  -> IO ()
hs_bindgen_773da75c4e1dd1ed =
  RIP.fromFFIType hs_bindgen_773da75c4e1dd1ed_base

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
wp_viewport_destroy = hs_bindgen_773da75c4e1dd1ed

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_set_source@
foreign import ccall unsafe "hs_bindgen_38b6a8d937ae084e" hs_bindgen_38b6a8d937ae084e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_set_source@
hs_bindgen_38b6a8d937ae084e ::
     RIP.Ptr Wp_viewport
  -> Generated.Wayland.Util.Wl_fixed_t
  -> Generated.Wayland.Util.Wl_fixed_t
  -> Generated.Wayland.Util.Wl_fixed_t
  -> Generated.Wayland.Util.Wl_fixed_t
  -> IO ()
hs_bindgen_38b6a8d937ae084e =
  RIP.fromFFIType hs_bindgen_38b6a8d937ae084e_base

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
  -> Generated.Wayland.Util.Wl_fixed_t
     -- ^ __C declaration:__ @x@
  -> Generated.Wayland.Util.Wl_fixed_t
     -- ^ __C declaration:__ @y@
  -> Generated.Wayland.Util.Wl_fixed_t
     -- ^ __C declaration:__ @width@
  -> Generated.Wayland.Util.Wl_fixed_t
     -- ^ __C declaration:__ @height@
  -> IO ()
wp_viewport_set_source = hs_bindgen_38b6a8d937ae084e

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_set_destination@
foreign import ccall unsafe "hs_bindgen_fe20d4a68636f4ba" hs_bindgen_fe20d4a68636f4ba_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_Unsafe_wp_viewport_set_destination@
hs_bindgen_fe20d4a68636f4ba ::
     RIP.Ptr Wp_viewport
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_fe20d4a68636f4ba =
  RIP.fromFFIType hs_bindgen_fe20d4a68636f4ba_base

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
  hs_bindgen_fe20d4a68636f4ba

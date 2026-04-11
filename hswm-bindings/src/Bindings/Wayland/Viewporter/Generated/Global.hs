{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.Viewporter.Generated.Global
    ( Bindings.Wayland.Viewporter.Generated.Global.wp_viewporter_interface
    , Bindings.Wayland.Viewporter.Generated.Global.wp_viewport_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <viewporter-client-protocol.h>"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_709be052338d9f2f (void)"
  , "{"
  , "  return &wp_viewporter_interface;"
  , "}"
  , "/* Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_b671c2647106ce3d (void)"
  , "{"
  , "  return &wp_viewport_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_interface@
foreign import ccall unsafe "hs_bindgen_709be052338d9f2f" hs_bindgen_709be052338d9f2f_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewporter_interface@
hs_bindgen_709be052338d9f2f :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_709be052338d9f2f =
  RIP.fromFFIType hs_bindgen_709be052338d9f2f_base

{-# NOINLINE hs_bindgen_ad15bb79f0b7d1ff #-}
{-|

  > page_iface_wp_viewporter wp_viewporter

  > page_iface_wp_viewporter_desc Description

  The global interface exposing surface cropping and scaling capabilities is used to instantiate an interface extension for a wl_surface object. This extended interface will then allow cropping and scaling the surface contents, effectively disconnecting the direct relationship between the buffer and the surface size.

  > page_iface_wp_viewporter_api API

  See @iface_wp_viewporter@ .

  > iface_wp_viewporter The wp_viewporter interface

  The global interface exposing surface cropping and scaling capabilities is used to instantiate an interface extension for a wl_surface object. This extended interface will then allow cropping and scaling the surface contents, effectively disconnecting the direct relationship between the buffer and the surface size.

__C declaration:__ @wp_viewporter_interface@

__defined at:__ @viewporter-client-protocol.h 73:34@

__exported by:__ @viewporter-client-protocol.h@

__unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_wp_viewporter_interface@
-}
hs_bindgen_ad15bb79f0b7d1ff :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_ad15bb79f0b7d1ff =
  RIP.unsafePerformIO hs_bindgen_709be052338d9f2f

{-# NOINLINE wp_viewporter_interface #-}
wp_viewporter_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wp_viewporter_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_ad15bb79f0b7d1ff)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_interface@
foreign import ccall unsafe "hs_bindgen_b671c2647106ce3d" hs_bindgen_b671c2647106ce3d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_get_wp_viewport_interface@
hs_bindgen_b671c2647106ce3d :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_b671c2647106ce3d =
  RIP.fromFFIType hs_bindgen_b671c2647106ce3d_base

{-# NOINLINE hs_bindgen_7b10512397ae87bd #-}
{-|

  > page_iface_wp_viewport wp_viewport

  > page_iface_wp_viewport_desc Description

  An additional interface to a wl_surface object, which allows the client to specify the cropping and scaling of the surface contents.

  This interface works with two concepts: the source rectangle (src_x, src_y, src_width, src_height), and the destination size (dst_width, dst_height). The contents of the source rectangle are scaled to the destination size, and content outside the source rectangle is ignored. This state is double-buffered, see wl_surface.commit.

  The two parts of crop and scale state are independent: the source rectangle, and the destination size. Initially both are unset, that is, no scaling is applied. The whole of the current wl_buffer is used as the source, and the surface size is as defined in wl_surface.attach.

  If the destination size is set, it causes the surface size to become dst_width, dst_height. The source (rectangle) is scaled to exactly this size. This overrides whatever the attached wl_buffer size is, unless the wl_buffer is NULL. If the wl_buffer is NULL, the surface has no content and therefore no size. Otherwise, the size is always at least 1x1 in surface local coordinates.

  If the source rectangle is set, it defines what area of the wl_buffer is taken as the source. If the source rectangle is set and the destination size is not set, then src_width and src_height must be integers, and the surface size becomes the source rectangle size. This results in cropping without scaling. If src_width or src_height are not integers and destination size is not set, the bad_size protocol error is raised when the surface state is applied.

  The coordinate transformations from buffer pixel coordinates up to the surface-local coordinates happen in the following order:

  1. buffer_transform (wl_surface.set_buffer_transform)

  2. buffer_scale (wl_surface.set_buffer_scale)

  3. crop and scale (wp_viewport.set*) This means, that the source rectangle coordinates of crop and scale are given in the coordinates after the buffer transform and scale, i.e. in the coordinates that would be the surface-local coordinates if the crop and scale was not applied.

  If src_x or src_y are negative, the bad_value protocol error is raised. Otherwise, if the source rectangle is partially or completely outside of the non-NULL wl_buffer, then the out_of_buffer protocol error is raised when the surface state is applied. A NULL wl_buffer does not raise the out_of_buffer error.

  If the wl_surface associated with the wp_viewport is destroyed, all wp_viewport requests except 'destroy' raise the protocol error no_surface.

  If the wp_viewport object is destroyed, the crop and scale state is removed from the wl_surface. The change will be applied on the next wl_surface.commit.

  > page_iface_wp_viewport_api API

  See @iface_wp_viewport@ .

  > iface_wp_viewport The wp_viewport interface

  An additional interface to a wl_surface object, which allows the client to specify the cropping and scaling of the surface contents.

  This interface works with two concepts: the source rectangle (src_x, src_y, src_width, src_height), and the destination size (dst_width, dst_height). The contents of the source rectangle are scaled to the destination size, and content outside the source rectangle is ignored. This state is double-buffered, see wl_surface.commit.

  The two parts of crop and scale state are independent: the source rectangle, and the destination size. Initially both are unset, that is, no scaling is applied. The whole of the current wl_buffer is used as the source, and the surface size is as defined in wl_surface.attach.

  If the destination size is set, it causes the surface size to become dst_width, dst_height. The source (rectangle) is scaled to exactly this size. This overrides whatever the attached wl_buffer size is, unless the wl_buffer is NULL. If the wl_buffer is NULL, the surface has no content and therefore no size. Otherwise, the size is always at least 1x1 in surface local coordinates.

  If the source rectangle is set, it defines what area of the wl_buffer is taken as the source. If the source rectangle is set and the destination size is not set, then src_width and src_height must be integers, and the surface size becomes the source rectangle size. This results in cropping without scaling. If src_width or src_height are not integers and destination size is not set, the bad_size protocol error is raised when the surface state is applied.

  The coordinate transformations from buffer pixel coordinates up to the surface-local coordinates happen in the following order:

  1. buffer_transform (wl_surface.set_buffer_transform)

  2. buffer_scale (wl_surface.set_buffer_scale)

  3. crop and scale (wp_viewport.set*) This means, that the source rectangle coordinates of crop and scale are given in the coordinates after the buffer transform and scale, i.e. in the coordinates that would be the surface-local coordinates if the crop and scale was not applied.

  If src_x or src_y are negative, the bad_value protocol error is raised. Otherwise, if the source rectangle is partially or completely outside of the non-NULL wl_buffer, then the out_of_buffer protocol error is raised when the surface state is applied. A NULL wl_buffer does not raise the out_of_buffer error.

  If the wl_surface associated with the wp_viewport is destroyed, all wp_viewport requests except 'destroy' raise the protocol error no_surface.

  If the wp_viewport object is destroyed, the crop and scale state is removed from the wl_surface. The change will be applied on the next wl_surface.commit.

__C declaration:__ @wp_viewport_interface@

__defined at:__ @viewporter-client-protocol.h 196:34@

__exported by:__ @viewporter-client-protocol.h@

__unique:__ @Bindings_Wayland_Viewporter_Generated_Bindings.Wayland.Viewporter.Generated_wp_viewport_interface@
-}
hs_bindgen_7b10512397ae87bd :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_7b10512397ae87bd =
  RIP.unsafePerformIO hs_bindgen_b671c2647106ce3d

{-# NOINLINE wp_viewport_interface #-}
wp_viewport_interface :: Bindings.Wayland.Util.Generated.Wl_interface
wp_viewport_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_7b10512397ae87bd)

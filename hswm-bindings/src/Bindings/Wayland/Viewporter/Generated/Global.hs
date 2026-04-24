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
{-| __C declaration:__ @wp_viewporter_interface@

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
{-| __C declaration:__ @wp_viewport_interface@

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

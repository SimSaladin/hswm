{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.FractionalScaleV1.Generated.Global
    ( Bindings.Wayland.FractionalScaleV1.Generated.Global.wp_fractional_scale_manager_v1_interface
    , Bindings.Wayland.FractionalScaleV1.Generated.Global.wp_fractional_scale_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <fractional-scale-v1-client-protocol.h>"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_91b0843e75e35b8e (void)"
  , "{"
  , "  return &wp_fractional_scale_manager_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_91b1d88bffe3ee24 (void)"
  , "{"
  , "  return &wp_fractional_scale_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_91b0843e75e35b8e" hs_bindgen_91b0843e75e35b8e_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_manager_v1_interface@
hs_bindgen_91b0843e75e35b8e :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_91b0843e75e35b8e =
  RIP.fromFFIType hs_bindgen_91b0843e75e35b8e_base

{-# NOINLINE hs_bindgen_42d906124f7ce49c #-}
{-|

  > page_iface_wp_fractional_scale_manager_v1 wp_fractional_scale_manager_v1

  > page_iface_wp_fractional_scale_manager_v1_desc Description

  A global interface for requesting surfaces to use fractional scales.

  > page_iface_wp_fractional_scale_manager_v1_api API

  See @iface_wp_fractional_scale_manager_v1@ .

  > iface_wp_fractional_scale_manager_v1 The wp_fractional_scale_manager_v1 interface

  A global interface for requesting surfaces to use fractional scales.

__C declaration:__ @wp_fractional_scale_manager_v1_interface@

__defined at:__ @fractional-scale-v1-client-protocol.h 86:34@

__exported by:__ @fractional-scale-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_wp_fractional_scale_manager_v1_interface@
-}
hs_bindgen_42d906124f7ce49c :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_42d906124f7ce49c =
  RIP.unsafePerformIO hs_bindgen_91b0843e75e35b8e

{-# NOINLINE wp_fractional_scale_manager_v1_interface #-}
wp_fractional_scale_manager_v1_interface :: Generated.Wayland.Util.Wl_interface
wp_fractional_scale_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_42d906124f7ce49c)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_interface@
foreign import ccall unsafe "hs_bindgen_91b1d88bffe3ee24" hs_bindgen_91b1d88bffe3ee24_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_get_wp_fractional_scale_v1_interface@
hs_bindgen_91b1d88bffe3ee24 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_91b1d88bffe3ee24 =
  RIP.fromFFIType hs_bindgen_91b1d88bffe3ee24_base

{-# NOINLINE hs_bindgen_d4e9f9c612725922 #-}
{-|

  > page_iface_wp_fractional_scale_v1 wp_fractional_scale_v1

  > page_iface_wp_fractional_scale_v1_desc Description

  An additional interface to a wl_surface object which allows the compositor to inform the client of the preferred scale.

  > page_iface_wp_fractional_scale_v1_api API

  See @iface_wp_fractional_scale_v1@ .

  > iface_wp_fractional_scale_v1 The wp_fractional_scale_v1 interface

  An additional interface to a wl_surface object which allows the compositor to inform the client of the preferred scale.

__C declaration:__ @wp_fractional_scale_v1_interface@

__defined at:__ @fractional-scale-v1-client-protocol.h 105:34@

__exported by:__ @fractional-scale-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_FractionalScaleV1_Generated_Bindings.Wayland.FractionalScaleV1.Generated_wp_fractional_scale_v1_interface@
-}
hs_bindgen_d4e9f9c612725922 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_d4e9f9c612725922 =
  RIP.unsafePerformIO hs_bindgen_91b1d88bffe3ee24

{-# NOINLINE wp_fractional_scale_v1_interface #-}
wp_fractional_scale_v1_interface :: Generated.Wayland.Util.Wl_interface
wp_fractional_scale_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d4e9f9c612725922)

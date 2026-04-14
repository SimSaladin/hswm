{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Global
    ( Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Global.zwlr_output_power_manager_v1_interface
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Global.zwlr_output_power_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-output-power-management-unstable-v1-client-protocol.h>"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_5263cd29db3b6cbe (void)"
  , "{"
  , "  return &zwlr_output_power_manager_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_8703c7defa845923 (void)"
  , "{"
  , "  return &zwlr_output_power_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_5263cd29db3b6cbe" hs_bindgen_5263cd29db3b6cbe_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_interface@
hs_bindgen_5263cd29db3b6cbe :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_5263cd29db3b6cbe =
  RIP.fromFFIType hs_bindgen_5263cd29db3b6cbe_base

{-# NOINLINE hs_bindgen_e41b5381946a3521 #-}
{-|

  > page_iface_zwlr_output_power_manager_v1 zwlr_output_power_manager_v1

  > page_iface_zwlr_output_power_manager_v1_desc Description

  This interface is a manager that allows creating per-output power management mode controls.

  > page_iface_zwlr_output_power_manager_v1_api API

  See @iface_zwlr_output_power_manager_v1@ .

  > iface_zwlr_output_power_manager_v1 The zwlr_output_power_manager_v1 interface

  This interface is a manager that allows creating per-output power management mode controls.

__C declaration:__ @zwlr_output_power_manager_v1_interface@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 86:34@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_zwlr_output_power_manager_v1_interface@
-}
hs_bindgen_e41b5381946a3521 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_e41b5381946a3521 =
  RIP.unsafePerformIO hs_bindgen_5263cd29db3b6cbe

{-# NOINLINE zwlr_output_power_manager_v1_interface #-}
zwlr_output_power_manager_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_output_power_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_e41b5381946a3521)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_interface@
foreign import ccall unsafe "hs_bindgen_8703c7defa845923" hs_bindgen_8703c7defa845923_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_interface@
hs_bindgen_8703c7defa845923 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_8703c7defa845923 =
  RIP.fromFFIType hs_bindgen_8703c7defa845923_base

{-# NOINLINE hs_bindgen_d11ee847a45dcf88 #-}
{-|

  > page_iface_zwlr_output_power_v1 zwlr_output_power_v1

  > page_iface_zwlr_output_power_v1_desc Description

  This object offers requests to set the power management mode of an output.

  > page_iface_zwlr_output_power_v1_api API

  See @iface_zwlr_output_power_v1@ .

  > iface_zwlr_output_power_v1 The zwlr_output_power_v1 interface

  This object offers requests to set the power management mode of an output.

__C declaration:__ @zwlr_output_power_v1_interface@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 105:34@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_zwlr_output_power_v1_interface@
-}
hs_bindgen_d11ee847a45dcf88 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_d11ee847a45dcf88 =
  RIP.unsafePerformIO hs_bindgen_8703c7defa845923

{-# NOINLINE zwlr_output_power_v1_interface #-}
zwlr_output_power_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_output_power_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d11ee847a45dcf88)

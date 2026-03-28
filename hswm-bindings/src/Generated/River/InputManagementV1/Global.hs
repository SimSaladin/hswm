{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.InputManagementV1.Global
    ( Generated.River.InputManagementV1.Global.river_input_manager_v1_interface
    , Generated.River.InputManagementV1.Global.river_input_device_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-input-management-v1-client-protocol.h>"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_94c9ab936b9cacb1 (void)"
  , "{"
  , "  return &river_input_manager_v1_interface;"
  , "}"
  , "/* hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_5b117d55f47029f6 (void)"
  , "{"
  , "  return &river_input_device_v1_interface;"
  , "}"
  ]))

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_94c9ab936b9cacb1" hs_bindgen_94c9ab936b9cacb1_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_manager_v1_interface@
hs_bindgen_94c9ab936b9cacb1 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_94c9ab936b9cacb1 =
  RIP.fromFFIType hs_bindgen_94c9ab936b9cacb1_base

{-# NOINLINE hs_bindgen_a4a76a34f5816a36 #-}
{-|

  > page_iface_river_input_manager_v1 river_input_manager_v1

  > page_iface_river_input_manager_v1_desc Description

  Input manager global interface.

  > page_iface_river_input_manager_v1_api API

  See @iface_river_input_manager_v1@ .

  > iface_river_input_manager_v1 The river_input_manager_v1 interface

  Input manager global interface.

__C declaration:__ @river_input_manager_v1_interface@

__defined at:__ @river-input-management-v1-client-protocol.h 74:34@

__exported by:__ @river-input-management-v1-client-protocol.h@

__unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_river_input_manager_v1_interface@
-}
hs_bindgen_a4a76a34f5816a36 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_a4a76a34f5816a36 =
  RIP.unsafePerformIO hs_bindgen_94c9ab936b9cacb1

{-# NOINLINE river_input_manager_v1_interface #-}
river_input_manager_v1_interface :: Generated.Wayland.Util.Wl_interface
river_input_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a4a76a34f5816a36)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_interface@
foreign import ccall unsafe "hs_bindgen_5b117d55f47029f6" hs_bindgen_5b117d55f47029f6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_get_river_input_device_v1_interface@
hs_bindgen_5b117d55f47029f6 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_5b117d55f47029f6 =
  RIP.fromFFIType hs_bindgen_5b117d55f47029f6_base

{-# NOINLINE hs_bindgen_f2d89816298f9216 #-}
{-|

  > page_iface_river_input_device_v1 river_input_device_v1

  > page_iface_river_input_device_v1_desc Description

  An input device represents a physical keyboard, mouse, touchscreen, or drawing tablet tool. It is assigned to exactly one seat at a time. By default, all input devices are assigned to the default seat.

  > page_iface_river_input_device_v1_api API

  See @iface_river_input_device_v1@ .

  > iface_river_input_device_v1 The river_input_device_v1 interface

  An input device represents a physical keyboard, mouse, touchscreen, or drawing tablet tool. It is assigned to exactly one seat at a time. By default, all input devices are assigned to the default seat.

__C declaration:__ @river_input_device_v1_interface@

__defined at:__ @river-input-management-v1-client-protocol.h 95:34@

__exported by:__ @river-input-management-v1-client-protocol.h@

__unique:__ @hswm_river_inputmanagement_Generated.River.InputManagementV1_river_input_device_v1_interface@
-}
hs_bindgen_f2d89816298f9216 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_f2d89816298f9216 =
  RIP.unsafePerformIO hs_bindgen_5b117d55f47029f6

{-# NOINLINE river_input_device_v1_interface #-}
river_input_device_v1_interface :: Generated.Wayland.Util.Wl_interface
river_input_device_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_f2d89816298f9216)

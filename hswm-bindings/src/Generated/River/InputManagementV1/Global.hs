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
  , "/* River_InputManagementV1_Generated.River.InputManagementV1_get_river_input_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_ff3a0fd34a73edd3 (void)"
  , "{"
  , "  return &river_input_manager_v1_interface;"
  , "}"
  , "/* River_InputManagementV1_Generated.River.InputManagementV1_get_river_input_device_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_2a4faf127d549195 (void)"
  , "{"
  , "  return &river_input_device_v1_interface;"
  , "}"
  ]))

-- __unique:__ @River_InputManagementV1_Generated.River.InputManagementV1_get_river_input_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_ff3a0fd34a73edd3" hs_bindgen_ff3a0fd34a73edd3_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_InputManagementV1_Generated.River.InputManagementV1_get_river_input_manager_v1_interface@
hs_bindgen_ff3a0fd34a73edd3 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_ff3a0fd34a73edd3 =
  RIP.fromFFIType hs_bindgen_ff3a0fd34a73edd3_base

{-# NOINLINE hs_bindgen_9c1fb947283322f4 #-}
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

__unique:__ @River_InputManagementV1_Generated.River.InputManagementV1_river_input_manager_v1_interface@
-}
hs_bindgen_9c1fb947283322f4 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_9c1fb947283322f4 =
  RIP.unsafePerformIO hs_bindgen_ff3a0fd34a73edd3

{-# NOINLINE river_input_manager_v1_interface #-}
river_input_manager_v1_interface :: Generated.Wayland.Util.Wl_interface
river_input_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_9c1fb947283322f4)

-- __unique:__ @River_InputManagementV1_Generated.River.InputManagementV1_get_river_input_device_v1_interface@
foreign import ccall unsafe "hs_bindgen_2a4faf127d549195" hs_bindgen_2a4faf127d549195_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_InputManagementV1_Generated.River.InputManagementV1_get_river_input_device_v1_interface@
hs_bindgen_2a4faf127d549195 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_2a4faf127d549195 =
  RIP.fromFFIType hs_bindgen_2a4faf127d549195_base

{-# NOINLINE hs_bindgen_d8cb7e7c49407b9d #-}
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

__unique:__ @River_InputManagementV1_Generated.River.InputManagementV1_river_input_device_v1_interface@
-}
hs_bindgen_d8cb7e7c49407b9d :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_d8cb7e7c49407b9d =
  RIP.unsafePerformIO hs_bindgen_2a4faf127d549195

{-# NOINLINE river_input_device_v1_interface #-}
river_input_device_v1_interface :: Generated.Wayland.Util.Wl_interface
river_input_device_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d8cb7e7c49407b9d)

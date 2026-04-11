{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.InputManagementV1.Generated.Global
    ( Bindings.River.InputManagementV1.Generated.Global.river_input_manager_v1_interface
    , Bindings.River.InputManagementV1.Generated.Global.river_input_device_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-input-management-v1-client-protocol.h>"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_308f1b4a4542d483 (void)"
  , "{"
  , "  return &river_input_manager_v1_interface;"
  , "}"
  , "/* Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_e669758538003f92 (void)"
  , "{"
  , "  return &river_input_device_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_308f1b4a4542d483" hs_bindgen_308f1b4a4542d483_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_manager_v1_interface@
hs_bindgen_308f1b4a4542d483 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_308f1b4a4542d483 =
  RIP.fromFFIType hs_bindgen_308f1b4a4542d483_base

{-# NOINLINE hs_bindgen_87458346588f959e #-}
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

__unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_river_input_manager_v1_interface@
-}
hs_bindgen_87458346588f959e :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_87458346588f959e =
  RIP.unsafePerformIO hs_bindgen_308f1b4a4542d483

{-# NOINLINE river_input_manager_v1_interface #-}
river_input_manager_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_input_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_87458346588f959e)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_interface@
foreign import ccall unsafe "hs_bindgen_e669758538003f92" hs_bindgen_e669758538003f92_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_get_river_input_device_v1_interface@
hs_bindgen_e669758538003f92 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_e669758538003f92 =
  RIP.fromFFIType hs_bindgen_e669758538003f92_base

{-# NOINLINE hs_bindgen_08b85a09320e9df1 #-}
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

__unique:__ @Bindings_River_InputManagementV1_Generated_Bindings.River.InputManagementV1.Generated_river_input_device_v1_interface@
-}
hs_bindgen_08b85a09320e9df1 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_08b85a09320e9df1 =
  RIP.unsafePerformIO hs_bindgen_e669758538003f92

{-# NOINLINE river_input_device_v1_interface #-}
river_input_device_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_input_device_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_08b85a09320e9df1)

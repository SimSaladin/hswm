{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.LibinputConfigV1.Generated.Global
    ( Bindings.River.LibinputConfigV1.Generated.Global.river_libinput_config_v1_interface
    , Bindings.River.LibinputConfigV1.Generated.Global.river_libinput_device_v1_interface
    , Bindings.River.LibinputConfigV1.Generated.Global.river_libinput_accel_config_v1_interface
    , Bindings.River.LibinputConfigV1.Generated.Global.river_libinput_result_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-libinput-config-v1-client-protocol.h>"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_2aa540e8c3b51e4c (void)"
  , "{"
  , "  return &river_libinput_config_v1_interface;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_74c6dfef5487b02a (void)"
  , "{"
  , "  return &river_libinput_device_v1_interface;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_57d8c49954f266be (void)"
  , "{"
  , "  return &river_libinput_accel_config_v1_interface;"
  , "}"
  , "/* Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_1f7089280f371326 (void)"
  , "{"
  , "  return &river_libinput_result_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_interface@
foreign import ccall unsafe "hs_bindgen_2aa540e8c3b51e4c" hs_bindgen_2aa540e8c3b51e4c_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_config_v1_interface@
hs_bindgen_2aa540e8c3b51e4c :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_2aa540e8c3b51e4c =
  RIP.fromFFIType hs_bindgen_2aa540e8c3b51e4c_base

{-# NOINLINE hs_bindgen_e0242fe3e2e5ca70 #-}
{-| __C declaration:__ @river_libinput_config_v1_interface@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 95:34@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@

    __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_river_libinput_config_v1_interface@
-}
hs_bindgen_e0242fe3e2e5ca70 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_e0242fe3e2e5ca70 =
  RIP.unsafePerformIO hs_bindgen_2aa540e8c3b51e4c

{-# NOINLINE river_libinput_config_v1_interface #-}
river_libinput_config_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_libinput_config_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_e0242fe3e2e5ca70)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_interface@
foreign import ccall unsafe "hs_bindgen_74c6dfef5487b02a" hs_bindgen_74c6dfef5487b02a_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_device_v1_interface@
hs_bindgen_74c6dfef5487b02a :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_74c6dfef5487b02a =
  RIP.fromFFIType hs_bindgen_74c6dfef5487b02a_base

{-# NOINLINE hs_bindgen_8d19899c1dc78378 #-}
{-| __C declaration:__ @river_libinput_device_v1_interface@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 120:34@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@

    __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_river_libinput_device_v1_interface@
-}
hs_bindgen_8d19899c1dc78378 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_8d19899c1dc78378 =
  RIP.unsafePerformIO hs_bindgen_74c6dfef5487b02a

{-# NOINLINE river_libinput_device_v1_interface #-}
river_libinput_device_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_libinput_device_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_8d19899c1dc78378)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_interface@
foreign import ccall unsafe "hs_bindgen_57d8c49954f266be" hs_bindgen_57d8c49954f266be_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_accel_config_v1_interface@
hs_bindgen_57d8c49954f266be :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_57d8c49954f266be =
  RIP.fromFFIType hs_bindgen_57d8c49954f266be_base

{-# NOINLINE hs_bindgen_ce2f3f9a3ad7ed47 #-}
{-| __C declaration:__ @river_libinput_accel_config_v1_interface@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 137:34@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@

    __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_river_libinput_accel_config_v1_interface@
-}
hs_bindgen_ce2f3f9a3ad7ed47 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_ce2f3f9a3ad7ed47 =
  RIP.unsafePerformIO hs_bindgen_57d8c49954f266be

{-# NOINLINE river_libinput_accel_config_v1_interface #-}
river_libinput_accel_config_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_libinput_accel_config_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_ce2f3f9a3ad7ed47)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_interface@
foreign import ccall unsafe "hs_bindgen_1f7089280f371326" hs_bindgen_1f7089280f371326_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_get_river_libinput_result_v1_interface@
hs_bindgen_1f7089280f371326 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_1f7089280f371326 =
  RIP.fromFFIType hs_bindgen_1f7089280f371326_base

{-# NOINLINE hs_bindgen_4e4faf8378726833 #-}
{-| __C declaration:__ @river_libinput_result_v1_interface@

    __defined at:__ @river-libinput-config-v1-client-protocol.h 154:34@

    __exported by:__ @river-libinput-config-v1-client-protocol.h@

    __unique:__ @Bindings_River_LibinputConfigV1_Generated_Bindings.River.LibinputConfigV1.Generated_river_libinput_result_v1_interface@
-}
hs_bindgen_4e4faf8378726833 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_4e4faf8378726833 =
  RIP.unsafePerformIO hs_bindgen_1f7089280f371326

{-# NOINLINE river_libinput_result_v1_interface #-}
river_libinput_result_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_libinput_result_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_4e4faf8378726833)

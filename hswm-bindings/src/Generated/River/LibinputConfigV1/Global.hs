{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.LibinputConfigV1.Global
    ( Generated.River.LibinputConfigV1.Global.river_libinput_config_v1_interface
    , Generated.River.LibinputConfigV1.Global.river_libinput_device_v1_interface
    , Generated.River.LibinputConfigV1.Global.river_libinput_accel_config_v1_interface
    , Generated.River.LibinputConfigV1.Global.river_libinput_result_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-libinput-config-v1-client-protocol.h>"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_affe4b00a7f6fbdf (void)"
  , "{"
  , "  return &river_libinput_config_v1_interface;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_d203b3d33aed6073 (void)"
  , "{"
  , "  return &river_libinput_device_v1_interface;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_4a0f516903a3c6bd (void)"
  , "{"
  , "  return &river_libinput_accel_config_v1_interface;"
  , "}"
  , "/* River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_f76d9d6d1614bd81 (void)"
  , "{"
  , "  return &river_libinput_result_v1_interface;"
  , "}"
  ]))

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_interface@
foreign import ccall unsafe "hs_bindgen_affe4b00a7f6fbdf" hs_bindgen_affe4b00a7f6fbdf_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_config_v1_interface@
hs_bindgen_affe4b00a7f6fbdf :: IO (PtrConst.PtrConst Generated.Wayland.Util.WlInterface)
hs_bindgen_affe4b00a7f6fbdf =
  RIP.fromFFIType hs_bindgen_affe4b00a7f6fbdf_base

{-# NOINLINE hs_bindgen_e8a9fbf081ade52a #-}
{-|

  > page_iface_river_libinput_config_v1 river_libinput_config_v1

  > page_iface_river_libinput_config_v1_desc Description

  Global interface for configuring libinput devices. This global should only be advertised if river_input_manager_v1 is advertised as well.

  > page_iface_river_libinput_config_v1_api API

  See @iface_river_libinput_config_v1@ .

  > iface_river_libinput_config_v1 The river_libinput_config_v1 interface

  Global interface for configuring libinput devices. This global should only be advertised if river_input_manager_v1 is advertised as well.

__C declaration:__ @river_libinput_config_v1_interface@

__defined at:__ @river-libinput-config-v1-client-protocol.h 95:34@

__exported by:__ @river-libinput-config-v1-client-protocol.h@

__unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_river_libinput_config_v1_interface@
-}
hs_bindgen_e8a9fbf081ade52a :: PtrConst.PtrConst Generated.Wayland.Util.WlInterface
hs_bindgen_e8a9fbf081ade52a =
  RIP.unsafePerformIO hs_bindgen_affe4b00a7f6fbdf

{-# NOINLINE river_libinput_config_v1_interface #-}
river_libinput_config_v1_interface :: Generated.Wayland.Util.WlInterface
river_libinput_config_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_e8a9fbf081ade52a)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_interface@
foreign import ccall unsafe "hs_bindgen_d203b3d33aed6073" hs_bindgen_d203b3d33aed6073_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_device_v1_interface@
hs_bindgen_d203b3d33aed6073 :: IO (PtrConst.PtrConst Generated.Wayland.Util.WlInterface)
hs_bindgen_d203b3d33aed6073 =
  RIP.fromFFIType hs_bindgen_d203b3d33aed6073_base

{-# NOINLINE hs_bindgen_10340dda25ec596c #-}
{-|

  > page_iface_river_libinput_device_v1 river_libinput_device_v1

  > page_iface_river_libinput_device_v1_desc Description

  In general, *_support events will be sent exactly once directly after the river_libinput_device_v1 is created. *_default events will be sent after *_support events if the config option is supported, and *_current events willl be sent after the *_default events and again whenever the config option is changed.

  > page_iface_river_libinput_device_v1_api API

  See @iface_river_libinput_device_v1@ .

  > iface_river_libinput_device_v1 The river_libinput_device_v1 interface

  In general, *_support events will be sent exactly once directly after the river_libinput_device_v1 is created. *_default events will be sent after *_support events if the config option is supported, and *_current events willl be sent after the *_default events and again whenever the config option is changed.

__C declaration:__ @river_libinput_device_v1_interface@

__defined at:__ @river-libinput-config-v1-client-protocol.h 120:34@

__exported by:__ @river-libinput-config-v1-client-protocol.h@

__unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_river_libinput_device_v1_interface@
-}
hs_bindgen_10340dda25ec596c :: PtrConst.PtrConst Generated.Wayland.Util.WlInterface
hs_bindgen_10340dda25ec596c =
  RIP.unsafePerformIO hs_bindgen_d203b3d33aed6073

{-# NOINLINE river_libinput_device_v1_interface #-}
river_libinput_device_v1_interface :: Generated.Wayland.Util.WlInterface
river_libinput_device_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_10340dda25ec596c)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_interface@
foreign import ccall unsafe "hs_bindgen_4a0f516903a3c6bd" hs_bindgen_4a0f516903a3c6bd_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_accel_config_v1_interface@
hs_bindgen_4a0f516903a3c6bd :: IO (PtrConst.PtrConst Generated.Wayland.Util.WlInterface)
hs_bindgen_4a0f516903a3c6bd =
  RIP.fromFFIType hs_bindgen_4a0f516903a3c6bd_base

{-# NOINLINE hs_bindgen_64998e7b7b852794 #-}
{-|

  > page_iface_river_libinput_accel_config_v1 river_libinput_accel_config_v1

  > page_iface_river_libinput_accel_config_v1_desc Description

  The result returned by libinput on setting configuration for a device.

  > page_iface_river_libinput_accel_config_v1_api API

  See @iface_river_libinput_accel_config_v1@ .

  > iface_river_libinput_accel_config_v1 The river_libinput_accel_config_v1 interface

  The result returned by libinput on setting configuration for a device.

__C declaration:__ @river_libinput_accel_config_v1_interface@

__defined at:__ @river-libinput-config-v1-client-protocol.h 137:34@

__exported by:__ @river-libinput-config-v1-client-protocol.h@

__unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_river_libinput_accel_config_v1_interface@
-}
hs_bindgen_64998e7b7b852794 :: PtrConst.PtrConst Generated.Wayland.Util.WlInterface
hs_bindgen_64998e7b7b852794 =
  RIP.unsafePerformIO hs_bindgen_4a0f516903a3c6bd

{-# NOINLINE river_libinput_accel_config_v1_interface #-}
river_libinput_accel_config_v1_interface :: Generated.Wayland.Util.WlInterface
river_libinput_accel_config_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_64998e7b7b852794)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_interface@
foreign import ccall unsafe "hs_bindgen_f76d9d6d1614bd81" hs_bindgen_f76d9d6d1614bd81_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_get_river_libinput_result_v1_interface@
hs_bindgen_f76d9d6d1614bd81 :: IO (PtrConst.PtrConst Generated.Wayland.Util.WlInterface)
hs_bindgen_f76d9d6d1614bd81 =
  RIP.fromFFIType hs_bindgen_f76d9d6d1614bd81_base

{-# NOINLINE hs_bindgen_b90e1e2d71b0fd34 #-}
{-|

  > page_iface_river_libinput_result_v1 river_libinput_result_v1

  > page_iface_river_libinput_result_v1_desc Description

  The result returned by libinput on setting configuration for a device.

  > page_iface_river_libinput_result_v1_api API

  See @iface_river_libinput_result_v1@ .

  > iface_river_libinput_result_v1 The river_libinput_result_v1 interface

  The result returned by libinput on setting configuration for a device.

__C declaration:__ @river_libinput_result_v1_interface@

__defined at:__ @river-libinput-config-v1-client-protocol.h 154:34@

__exported by:__ @river-libinput-config-v1-client-protocol.h@

__unique:__ @River_LibinputConfigV1_Generated.River.LibinputConfigV1_river_libinput_result_v1_interface@
-}
hs_bindgen_b90e1e2d71b0fd34 :: PtrConst.PtrConst Generated.Wayland.Util.WlInterface
hs_bindgen_b90e1e2d71b0fd34 =
  RIP.unsafePerformIO hs_bindgen_f76d9d6d1614bd81

{-# NOINLINE river_libinput_result_v1_interface #-}
river_libinput_result_v1_interface :: Generated.Wayland.Util.WlInterface
river_libinput_result_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_b90e1e2d71b0fd34)

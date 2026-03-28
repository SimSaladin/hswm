{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.River.XkbConfigV1.Global
    ( Generated.River.XkbConfigV1.Global.river_xkb_config_v1_interface
    , Generated.River.XkbConfigV1.Global.river_xkb_keymap_v1_interface
    , Generated.River.XkbConfigV1.Global.river_xkb_keyboard_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-config-v1-client-protocol.h>"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_e9c4bc407ffe460c (void)"
  , "{"
  , "  return &river_xkb_config_v1_interface;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c7adfef1e06566b6 (void)"
  , "{"
  , "  return &river_xkb_keymap_v1_interface;"
  , "}"
  , "/* River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_baedbf678c9c3a7b (void)"
  , "{"
  , "  return &river_xkb_keyboard_v1_interface;"
  , "}"
  ]))

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_interface@
foreign import ccall unsafe "hs_bindgen_e9c4bc407ffe460c" hs_bindgen_e9c4bc407ffe460c_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_config_v1_interface@
hs_bindgen_e9c4bc407ffe460c :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_e9c4bc407ffe460c =
  RIP.fromFFIType hs_bindgen_e9c4bc407ffe460c_base

{-# NOINLINE hs_bindgen_78701fbaede2c3d1 #-}
{-|

  > page_iface_river_xkb_config_v1 river_xkb_config_v1

  > page_iface_river_xkb_config_v1_desc Description

  Global interface for configuring xkb devices.

  This global should only be advertised if river_input_manager_v1 is advertised as well.

  > page_iface_river_xkb_config_v1_api API

  See @iface_river_xkb_config_v1@ .

  > iface_river_xkb_config_v1 The river_xkb_config_v1 interface

  Global interface for configuring xkb devices.

  This global should only be advertised if river_input_manager_v1 is advertised as well.

__C declaration:__ @river_xkb_config_v1_interface@

__defined at:__ @river-xkb-config-v1-client-protocol.h 83:34@

__exported by:__ @river-xkb-config-v1-client-protocol.h@

__unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_river_xkb_config_v1_interface@
-}
hs_bindgen_78701fbaede2c3d1 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_78701fbaede2c3d1 =
  RIP.unsafePerformIO hs_bindgen_e9c4bc407ffe460c

{-# NOINLINE river_xkb_config_v1_interface #-}
river_xkb_config_v1_interface :: Generated.Wayland.Util.Wl_interface
river_xkb_config_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_78701fbaede2c3d1)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_interface@
foreign import ccall unsafe "hs_bindgen_c7adfef1e06566b6" hs_bindgen_c7adfef1e06566b6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_interface@
hs_bindgen_c7adfef1e06566b6 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_c7adfef1e06566b6 =
  RIP.fromFFIType hs_bindgen_c7adfef1e06566b6_base

{-# NOINLINE hs_bindgen_377a503280ecd8b0 #-}
{-|

  > page_iface_river_xkb_keymap_v1 river_xkb_keymap_v1

  > page_iface_river_xkb_keymap_v1_desc Description

  This object is the result of attempting to create an xkbcommon keymap.

  > page_iface_river_xkb_keymap_v1_api API

  See @iface_river_xkb_keymap_v1@ .

  > iface_river_xkb_keymap_v1 The river_xkb_keymap_v1 interface

  This object is the result of attempting to create an xkbcommon keymap.

__C declaration:__ @river_xkb_keymap_v1_interface@

__defined at:__ @river-xkb-config-v1-client-protocol.h 100:34@

__exported by:__ @river-xkb-config-v1-client-protocol.h@

__unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_river_xkb_keymap_v1_interface@
-}
hs_bindgen_377a503280ecd8b0 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_377a503280ecd8b0 =
  RIP.unsafePerformIO hs_bindgen_c7adfef1e06566b6

{-# NOINLINE river_xkb_keymap_v1_interface #-}
river_xkb_keymap_v1_interface :: Generated.Wayland.Util.Wl_interface
river_xkb_keymap_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_377a503280ecd8b0)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_interface@
foreign import ccall unsafe "hs_bindgen_baedbf678c9c3a7b" hs_bindgen_baedbf678c9c3a7b_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_interface@
hs_bindgen_baedbf678c9c3a7b :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_baedbf678c9c3a7b =
  RIP.fromFFIType hs_bindgen_baedbf678c9c3a7b_base

{-# NOINLINE hs_bindgen_346dec1c2a8f4d03 #-}
{-|

  > page_iface_river_xkb_keyboard_v1 river_xkb_keyboard_v1

  > page_iface_river_xkb_keyboard_v1_desc Description

  This object represent a physical keyboard which has its configuration and state managed by xkbcommon.

  > page_iface_river_xkb_keyboard_v1_api API

  See @iface_river_xkb_keyboard_v1@ .

  > iface_river_xkb_keyboard_v1 The river_xkb_keyboard_v1 interface

  This object represent a physical keyboard which has its configuration and state managed by xkbcommon.

__C declaration:__ @river_xkb_keyboard_v1_interface@

__defined at:__ @river-xkb-config-v1-client-protocol.h 119:34@

__exported by:__ @river-xkb-config-v1-client-protocol.h@

__unique:__ @River_XkbConfigV1_Generated.River.XkbConfigV1_river_xkb_keyboard_v1_interface@
-}
hs_bindgen_346dec1c2a8f4d03 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_346dec1c2a8f4d03 =
  RIP.unsafePerformIO hs_bindgen_baedbf678c9c3a7b

{-# NOINLINE river_xkb_keyboard_v1_interface #-}
river_xkb_keyboard_v1_interface :: Generated.Wayland.Util.Wl_interface
river_xkb_keyboard_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_346dec1c2a8f4d03)

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
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_1ba03142625428e3 (void)"
  , "{"
  , "  return &river_xkb_config_v1_interface;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_cdc028321fa05913 (void)"
  , "{"
  , "  return &river_xkb_keymap_v1_interface;"
  , "}"
  , "/* hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c0b0c84b740ac6ee (void)"
  , "{"
  , "  return &river_xkb_keyboard_v1_interface;"
  , "}"
  ]))

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_interface@
foreign import ccall unsafe "hs_bindgen_1ba03142625428e3" hs_bindgen_1ba03142625428e3_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_config_v1_interface@
hs_bindgen_1ba03142625428e3 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_1ba03142625428e3 =
  RIP.fromFFIType hs_bindgen_1ba03142625428e3_base

{-# NOINLINE hs_bindgen_62a5f9ebf06db302 #-}
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

__unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_river_xkb_config_v1_interface@
-}
hs_bindgen_62a5f9ebf06db302 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_62a5f9ebf06db302 =
  RIP.unsafePerformIO hs_bindgen_1ba03142625428e3

{-# NOINLINE river_xkb_config_v1_interface #-}
river_xkb_config_v1_interface :: Generated.Wayland.Util.Wl_interface
river_xkb_config_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_62a5f9ebf06db302)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_interface@
foreign import ccall unsafe "hs_bindgen_cdc028321fa05913" hs_bindgen_cdc028321fa05913_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keymap_v1_interface@
hs_bindgen_cdc028321fa05913 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_cdc028321fa05913 =
  RIP.fromFFIType hs_bindgen_cdc028321fa05913_base

{-# NOINLINE hs_bindgen_0c0c8b537648ccb8 #-}
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

__unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_river_xkb_keymap_v1_interface@
-}
hs_bindgen_0c0c8b537648ccb8 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_0c0c8b537648ccb8 =
  RIP.unsafePerformIO hs_bindgen_cdc028321fa05913

{-# NOINLINE river_xkb_keymap_v1_interface #-}
river_xkb_keymap_v1_interface :: Generated.Wayland.Util.Wl_interface
river_xkb_keymap_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0c0c8b537648ccb8)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_interface@
foreign import ccall unsafe "hs_bindgen_c0b0c84b740ac6ee" hs_bindgen_c0b0c84b740ac6ee_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_get_river_xkb_keyboard_v1_interface@
hs_bindgen_c0b0c84b740ac6ee :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_c0b0c84b740ac6ee =
  RIP.fromFFIType hs_bindgen_c0b0c84b740ac6ee_base

{-# NOINLINE hs_bindgen_bba18c7bf2c79f5d #-}
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

__unique:__ @hswm_river_xkbconfig_Generated.River.XkbConfigV1_river_xkb_keyboard_v1_interface@
-}
hs_bindgen_bba18c7bf2c79f5d :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_bba18c7bf2c79f5d =
  RIP.unsafePerformIO hs_bindgen_c0b0c84b740ac6ee

{-# NOINLINE river_xkb_keyboard_v1_interface #-}
river_xkb_keyboard_v1_interface :: Generated.Wayland.Util.Wl_interface
river_xkb_keyboard_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_bba18c7bf2c79f5d)

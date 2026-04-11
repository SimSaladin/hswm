{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.XkbConfigV1.Generated.Global
    ( Bindings.River.XkbConfigV1.Generated.Global.river_xkb_config_v1_interface
    , Bindings.River.XkbConfigV1.Generated.Global.river_xkb_keymap_v1_interface
    , Bindings.River.XkbConfigV1.Generated.Global.river_xkb_keyboard_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-xkb-config-v1-client-protocol.h>"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_77fd3fe57a604e4f (void)"
  , "{"
  , "  return &river_xkb_config_v1_interface;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c4e262357815bc0d (void)"
  , "{"
  , "  return &river_xkb_keymap_v1_interface;"
  , "}"
  , "/* Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_4091930eb0f88db9 (void)"
  , "{"
  , "  return &river_xkb_keyboard_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_interface@
foreign import ccall unsafe "hs_bindgen_77fd3fe57a604e4f" hs_bindgen_77fd3fe57a604e4f_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_config_v1_interface@
hs_bindgen_77fd3fe57a604e4f :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_77fd3fe57a604e4f =
  RIP.fromFFIType hs_bindgen_77fd3fe57a604e4f_base

{-# NOINLINE hs_bindgen_b0a78a046142c564 #-}
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

__unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_river_xkb_config_v1_interface@
-}
hs_bindgen_b0a78a046142c564 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_b0a78a046142c564 =
  RIP.unsafePerformIO hs_bindgen_77fd3fe57a604e4f

{-# NOINLINE river_xkb_config_v1_interface #-}
river_xkb_config_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_xkb_config_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_b0a78a046142c564)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_interface@
foreign import ccall unsafe "hs_bindgen_c4e262357815bc0d" hs_bindgen_c4e262357815bc0d_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keymap_v1_interface@
hs_bindgen_c4e262357815bc0d :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_c4e262357815bc0d =
  RIP.fromFFIType hs_bindgen_c4e262357815bc0d_base

{-# NOINLINE hs_bindgen_baf4a8e1a3f712c5 #-}
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

__unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_river_xkb_keymap_v1_interface@
-}
hs_bindgen_baf4a8e1a3f712c5 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_baf4a8e1a3f712c5 =
  RIP.unsafePerformIO hs_bindgen_c4e262357815bc0d

{-# NOINLINE river_xkb_keymap_v1_interface #-}
river_xkb_keymap_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_xkb_keymap_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_baf4a8e1a3f712c5)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_interface@
foreign import ccall unsafe "hs_bindgen_4091930eb0f88db9" hs_bindgen_4091930eb0f88db9_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_get_river_xkb_keyboard_v1_interface@
hs_bindgen_4091930eb0f88db9 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_4091930eb0f88db9 =
  RIP.fromFFIType hs_bindgen_4091930eb0f88db9_base

{-# NOINLINE hs_bindgen_2f0796f51b88b5fe #-}
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

__unique:__ @Bindings_River_XkbConfigV1_Generated_Bindings.River.XkbConfigV1.Generated_river_xkb_keyboard_v1_interface@
-}
hs_bindgen_2f0796f51b88b5fe :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_2f0796f51b88b5fe =
  RIP.unsafePerformIO hs_bindgen_4091930eb0f88db9

{-# NOINLINE river_xkb_keyboard_v1_interface #-}
river_xkb_keyboard_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_xkb_keyboard_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_2f0796f51b88b5fe)

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.XdgOutputUnstableV1.Generated.Global
    ( Bindings.Wayland.XdgOutputUnstableV1.Generated.Global.zxdg_output_manager_v1_interface
    , Bindings.Wayland.XdgOutputUnstableV1.Generated.Global.zxdg_output_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <xdg-output-unstable-v1-client-protocol.h>"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_edfefaf9adeac090 (void)"
  , "{"
  , "  return &zxdg_output_manager_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_e247b9eb940667b9 (void)"
  , "{"
  , "  return &zxdg_output_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_edfefaf9adeac090" hs_bindgen_edfefaf9adeac090_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_manager_v1_interface@
hs_bindgen_edfefaf9adeac090 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_edfefaf9adeac090 =
  RIP.fromFFIType hs_bindgen_edfefaf9adeac090_base

{-# NOINLINE hs_bindgen_a58583a514084432 #-}
{-|

  > page_iface_zxdg_output_manager_v1 zxdg_output_manager_v1

  > page_iface_zxdg_output_manager_v1_desc Description

  A global factory interface for xdg_output objects.

  > page_iface_zxdg_output_manager_v1_api API

  See @iface_zxdg_output_manager_v1@ .

  > iface_zxdg_output_manager_v1 The zxdg_output_manager_v1 interface

  A global factory interface for xdg_output objects.

__C declaration:__ @zxdg_output_manager_v1_interface@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 95:34@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_zxdg_output_manager_v1_interface@
-}
hs_bindgen_a58583a514084432 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_a58583a514084432 =
  RIP.unsafePerformIO hs_bindgen_edfefaf9adeac090

{-# NOINLINE zxdg_output_manager_v1_interface #-}
zxdg_output_manager_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zxdg_output_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a58583a514084432)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_interface@
foreign import ccall unsafe "hs_bindgen_e247b9eb940667b9" hs_bindgen_e247b9eb940667b9_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_get_zxdg_output_v1_interface@
hs_bindgen_e247b9eb940667b9 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_e247b9eb940667b9 =
  RIP.fromFFIType hs_bindgen_e247b9eb940667b9_base

{-# NOINLINE hs_bindgen_3fea2b0786cf95d6 #-}
{-|

  > page_iface_zxdg_output_v1 zxdg_output_v1

  > page_iface_zxdg_output_v1_desc Description

  An xdg_output describes part of the compositor geometry.

  This typically corresponds to a monitor that displays part of the compositor space.

  For objects version 3 onwards, after all xdg_output properties have been sent (when the object is created and when properties are updated), a wl_output.done event is sent. This allows changes to the output properties to be seen as atomic, even if they happen via multiple events.

  > page_iface_zxdg_output_v1_api API

  See @iface_zxdg_output_v1@ .

  > iface_zxdg_output_v1 The zxdg_output_v1 interface

  An xdg_output describes part of the compositor geometry.

  This typically corresponds to a monitor that displays part of the compositor space.

  For objects version 3 onwards, after all xdg_output properties have been sent (when the object is created and when properties are updated), a wl_output.done event is sent. This allows changes to the output properties to be seen as atomic, even if they happen via multiple events.

__C declaration:__ @zxdg_output_v1_interface@

__defined at:__ @xdg-output-unstable-v1-client-protocol.h 128:34@

__exported by:__ @xdg-output-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_XdgOutputUnstableV1_Generated_Bindings.Wayland.XdgOutputUnstableV1.Generated_zxdg_output_v1_interface@
-}
hs_bindgen_3fea2b0786cf95d6 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_3fea2b0786cf95d6 =
  RIP.unsafePerformIO hs_bindgen_e247b9eb940667b9

{-# NOINLINE zxdg_output_v1_interface #-}
zxdg_output_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zxdg_output_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_3fea2b0786cf95d6)

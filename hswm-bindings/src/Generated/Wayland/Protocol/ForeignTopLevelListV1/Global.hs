{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wayland.Protocol.ForeignTopLevelListV1.Global
    ( Generated.Wayland.Protocol.ForeignTopLevelListV1.Global.ext_foreign_toplevel_list_v1_interface
    , Generated.Wayland.Protocol.ForeignTopLevelListV1.Global.ext_foreign_toplevel_handle_v1_interface
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <ext-foreign-toplevel-list-v1-client-protocol.h>"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_be4bc88a89110541 (void)"
  , "{"
  , "  return &ext_foreign_toplevel_list_v1_interface;"
  , "}"
  , "/* Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_48925b170d70aca8 (void)"
  , "{"
  , "  return &ext_foreign_toplevel_handle_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_interface@
foreign import ccall unsafe "hs_bindgen_be4bc88a89110541" hs_bindgen_be4bc88a89110541_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_list_v1_interface@
hs_bindgen_be4bc88a89110541 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_be4bc88a89110541 =
  RIP.fromFFIType hs_bindgen_be4bc88a89110541_base

{-# NOINLINE hs_bindgen_5e57ef5dc2d40784 #-}
{-|

  > page_iface_ext_foreign_toplevel_list_v1 ext_foreign_toplevel_list_v1

  > page_iface_ext_foreign_toplevel_list_v1_desc Description

  A toplevel is defined as a surface with a role similar to xdg_toplevel. XWayland surfaces may be treated like toplevels in this protocol.

  After a client binds the ext_foreign_toplevel_list_v1, each mapped toplevel window will be sent using the ext_foreign_toplevel_list_v1.toplevel event.

  Clients which only care about the current state can perform a roundtrip after binding this global.

  For each instance of ext_foreign_toplevel_list_v1, the compositor must create a new ext_foreign_toplevel_handle_v1 object for each mapped toplevel.

  If a compositor implementation sends the ext_foreign_toplevel_list_v1.finished event after the global is bound, the compositor must not send any ext_foreign_toplevel_list_v1.toplevel events.

  > page_iface_ext_foreign_toplevel_list_v1_api API

  See @iface_ext_foreign_toplevel_list_v1@ .

  > iface_ext_foreign_toplevel_list_v1 The ext_foreign_toplevel_list_v1 interface

  A toplevel is defined as a surface with a role similar to xdg_toplevel. XWayland surfaces may be treated like toplevels in this protocol.

  After a client binds the ext_foreign_toplevel_list_v1, each mapped toplevel window will be sent using the ext_foreign_toplevel_list_v1.toplevel event.

  Clients which only care about the current state can perform a roundtrip after binding this global.

  For each instance of ext_foreign_toplevel_list_v1, the compositor must create a new ext_foreign_toplevel_handle_v1 object for each mapped toplevel.

  If a compositor implementation sends the ext_foreign_toplevel_list_v1.finished event after the global is bound, the compositor must not send any ext_foreign_toplevel_list_v1.toplevel events.

__C declaration:__ @ext_foreign_toplevel_list_v1_interface@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 122:34@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@

__unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_ext_foreign_toplevel_list_v1_interface@
-}
hs_bindgen_5e57ef5dc2d40784 :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_5e57ef5dc2d40784 =
  RIP.unsafePerformIO hs_bindgen_be4bc88a89110541

{-# NOINLINE ext_foreign_toplevel_list_v1_interface #-}
ext_foreign_toplevel_list_v1_interface :: Generated.Wayland.Util.Wl_interface
ext_foreign_toplevel_list_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_5e57ef5dc2d40784)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_interface@
foreign import ccall unsafe "hs_bindgen_48925b170d70aca8" hs_bindgen_48925b170d70aca8_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_get_ext_foreign_toplevel_handle_v1_interface@
hs_bindgen_48925b170d70aca8 :: IO (PtrConst.PtrConst Generated.Wayland.Util.Wl_interface)
hs_bindgen_48925b170d70aca8 =
  RIP.fromFFIType hs_bindgen_48925b170d70aca8_base

{-# NOINLINE hs_bindgen_602475633ac4c95a #-}
{-|

  > page_iface_ext_foreign_toplevel_handle_v1 ext_foreign_toplevel_handle_v1

  > page_iface_ext_foreign_toplevel_handle_v1_desc Description

  A ext_foreign_toplevel_handle_v1 object represents a mapped toplevel window. A single app may have multiple mapped toplevels.

  > page_iface_ext_foreign_toplevel_handle_v1_api API

  See @iface_ext_foreign_toplevel_handle_v1@ .

  > iface_ext_foreign_toplevel_handle_v1 The ext_foreign_toplevel_handle_v1 interface

  A ext_foreign_toplevel_handle_v1 object represents a mapped toplevel window. A single app may have multiple mapped toplevels.

__C declaration:__ @ext_foreign_toplevel_handle_v1_interface@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 141:34@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@

__unique:__ @Wayland_Protocol_ForeignTopLevelListV1_Generated.Wayland.Protocol.ForeignTopLevelListV1_ext_foreign_toplevel_handle_v1_interface@
-}
hs_bindgen_602475633ac4c95a :: PtrConst.PtrConst Generated.Wayland.Util.Wl_interface
hs_bindgen_602475633ac4c95a =
  RIP.unsafePerformIO hs_bindgen_48925b170d70aca8

{-# NOINLINE ext_foreign_toplevel_handle_v1_interface #-}
ext_foreign_toplevel_handle_v1_interface :: Generated.Wayland.Util.Wl_interface
ext_foreign_toplevel_handle_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_602475633ac4c95a)

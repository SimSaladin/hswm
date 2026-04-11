{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global
    ( Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global.zwlr_output_manager_v1_interface
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global.zwlr_output_head_v1_interface
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global.zwlr_output_mode_v1_interface
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global.zwlr_output_configuration_v1_interface
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Global.zwlr_output_configuration_head_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-output-management-unstable-v1-client-protocol.h>"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_9e3b4f59d4cba935 (void)"
  , "{"
  , "  return &zwlr_output_manager_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_0b0b371db620e298 (void)"
  , "{"
  , "  return &zwlr_output_head_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_1e994dc7c95121a6 (void)"
  , "{"
  , "  return &zwlr_output_mode_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_c6c13640fae7baa0 (void)"
  , "{"
  , "  return &zwlr_output_configuration_v1_interface;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_3434d8578c3147ab (void)"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_9e3b4f59d4cba935" hs_bindgen_9e3b4f59d4cba935_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_interface@
hs_bindgen_9e3b4f59d4cba935 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_9e3b4f59d4cba935 =
  RIP.fromFFIType hs_bindgen_9e3b4f59d4cba935_base

{-# NOINLINE hs_bindgen_d4606acb2516cc08 #-}
{-|

  > page_iface_zwlr_output_manager_v1 zwlr_output_manager_v1

  > page_iface_zwlr_output_manager_v1_desc Description

  This interface is a manager that allows reading and writing the current output device configuration.

  Output devices that display pixels (e.g. a physical monitor or a virtual output in a window) are represented as heads. Heads cannot be created nor destroyed by the client, but they can be enabled or disabled and their properties can be changed. Each head may have one or more available modes.

  Whenever a head appears (e.g. a monitor is plugged in), it will be advertised via the head event. Immediately after the output manager is bound, all current heads are advertised.

  Whenever a head's properties change, the relevant wlr_output_head events will be sent. Not all head properties will be sent: only properties that have changed need to.

  Whenever a head disappears (e.g. a monitor is unplugged), a wlr_output_head.finished event will be sent.

  After one or more heads appear, change or disappear, the done event will be sent. It carries a serial which can be used in a create_configuration request to update heads properties.

  The information obtained from this protocol should only be used for output configuration purposes. This protocol is not designed to be a generic output property advertisement protocol for regular clients. Instead, protocols such as xdg-output should be used.

  > page_iface_zwlr_output_manager_v1_api API

  See @iface_zwlr_output_manager_v1@ .

  > iface_zwlr_output_manager_v1 The zwlr_output_manager_v1 interface

  This interface is a manager that allows reading and writing the current output device configuration.

  Output devices that display pixels (e.g. a physical monitor or a virtual output in a window) are represented as heads. Heads cannot be created nor destroyed by the client, but they can be enabled or disabled and their properties can be changed. Each head may have one or more available modes.

  Whenever a head appears (e.g. a monitor is plugged in), it will be advertised via the head event. Immediately after the output manager is bound, all current heads are advertised.

  Whenever a head's properties change, the relevant wlr_output_head events will be sent. Not all head properties will be sent: only properties that have changed need to.

  Whenever a head disappears (e.g. a monitor is unplugged), a wlr_output_head.finished event will be sent.

  After one or more heads appear, change or disappear, the done event will be sent. It carries a serial which can be used in a create_configuration request to update heads properties.

  The information obtained from this protocol should only be used for output configuration purposes. This protocol is not designed to be a generic output property advertisement protocol for regular clients. Instead, protocols such as xdg-output should be used.

__C declaration:__ @zwlr_output_manager_v1_interface@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 138:34@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_zwlr_output_manager_v1_interface@
-}
hs_bindgen_d4606acb2516cc08 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_d4606acb2516cc08 =
  RIP.unsafePerformIO hs_bindgen_9e3b4f59d4cba935

{-# NOINLINE zwlr_output_manager_v1_interface #-}
zwlr_output_manager_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_output_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_d4606acb2516cc08)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_interface@
foreign import ccall unsafe "hs_bindgen_0b0b371db620e298" hs_bindgen_0b0b371db620e298_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_interface@
hs_bindgen_0b0b371db620e298 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_0b0b371db620e298 =
  RIP.fromFFIType hs_bindgen_0b0b371db620e298_base

{-# NOINLINE hs_bindgen_c7f46dd659d075dc #-}
{-|

  > page_iface_zwlr_output_head_v1 zwlr_output_head_v1

  > page_iface_zwlr_output_head_v1_desc Description

  A head is an output device. The difference between a wl_output object and a head is that heads are advertised even if they are turned off. A head object only advertises properties and cannot be used directly to change them.

  A head has some read-only properties: modes, name, description and physical_size. These cannot be changed by clients.

  Other properties can be updated via a wlr_output_configuration object.

  Properties sent via this interface are applied atomically via the wlr_output_manager.done event. No guarantees are made regarding the order in which properties are sent.

  > page_iface_zwlr_output_head_v1_api API

  See @iface_zwlr_output_head_v1@ .

  > iface_zwlr_output_head_v1 The zwlr_output_head_v1 interface

  A head is an output device. The difference between a wl_output object and a head is that heads are advertised even if they are turned off. A head object only advertises properties and cannot be used directly to change them.

  A head has some read-only properties: modes, name, description and physical_size. These cannot be changed by clients.

  Other properties can be updated via a wlr_output_configuration object.

  Properties sent via this interface are applied atomically via the wlr_output_manager.done event. No guarantees are made regarding the order in which properties are sent.

__C declaration:__ @zwlr_output_head_v1_interface@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 179:34@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_zwlr_output_head_v1_interface@
-}
hs_bindgen_c7f46dd659d075dc :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_c7f46dd659d075dc =
  RIP.unsafePerformIO hs_bindgen_0b0b371db620e298

{-# NOINLINE zwlr_output_head_v1_interface #-}
zwlr_output_head_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_output_head_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_c7f46dd659d075dc)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_interface@
foreign import ccall unsafe "hs_bindgen_1e994dc7c95121a6" hs_bindgen_1e994dc7c95121a6_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_interface@
hs_bindgen_1e994dc7c95121a6 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_1e994dc7c95121a6 =
  RIP.fromFFIType hs_bindgen_1e994dc7c95121a6_base

{-# NOINLINE hs_bindgen_2fe641b0069de34c #-}
{-|

  > page_iface_zwlr_output_mode_v1 zwlr_output_mode_v1

  > page_iface_zwlr_output_mode_v1_desc Description

  This object describes an output mode.

  Some heads don't support output modes, in which case modes won't be advertised.

  Properties sent via this interface are applied atomically via the wlr_output_manager.done event. No guarantees are made regarding the order in which properties are sent.

  > page_iface_zwlr_output_mode_v1_api API

  See @iface_zwlr_output_mode_v1@ .

  > iface_zwlr_output_mode_v1 The zwlr_output_mode_v1 interface

  This object describes an output mode.

  Some heads don't support output modes, in which case modes won't be advertised.

  Properties sent via this interface are applied atomically via the wlr_output_manager.done event. No guarantees are made regarding the order in which properties are sent.

__C declaration:__ @zwlr_output_mode_v1_interface@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 210:34@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_zwlr_output_mode_v1_interface@
-}
hs_bindgen_2fe641b0069de34c :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_2fe641b0069de34c =
  RIP.unsafePerformIO hs_bindgen_1e994dc7c95121a6

{-# NOINLINE zwlr_output_mode_v1_interface #-}
zwlr_output_mode_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_output_mode_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_2fe641b0069de34c)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_interface@
foreign import ccall unsafe "hs_bindgen_c6c13640fae7baa0" hs_bindgen_c6c13640fae7baa0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_interface@
hs_bindgen_c6c13640fae7baa0 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_c6c13640fae7baa0 =
  RIP.fromFFIType hs_bindgen_c6c13640fae7baa0_base

{-# NOINLINE hs_bindgen_97f55a3bc2f8e2d1 #-}
{-|

  > page_iface_zwlr_output_configuration_v1 zwlr_output_configuration_v1

  > page_iface_zwlr_output_configuration_v1_desc Description

  This object is used by the client to describe a full output configuration.

  First, the client needs to setup the output configuration. Each head can be either enabled (and configured) or disabled. It is a protocol error to send two enable_head or disable_head requests with the same head. It is a protocol error to omit a head in a configuration.

  Then, the client can apply or test the configuration. The compositor will then reply with a succeeded, failed or cancelled event. Finally the client should destroy the configuration object.

  > page_iface_zwlr_output_configuration_v1_api API

  See @iface_zwlr_output_configuration_v1@ .

  > iface_zwlr_output_configuration_v1 The zwlr_output_configuration_v1 interface

  This object is used by the client to describe a full output configuration.

  First, the client needs to setup the output configuration. Each head can be either enabled (and configured) or disabled. It is a protocol error to send two enable_head or disable_head requests with the same head. It is a protocol error to omit a head in a configuration.

  Then, the client can apply or test the configuration. The compositor will then reply with a succeeded, failed or cancelled event. Finally the client should destroy the configuration object.

__C declaration:__ @zwlr_output_configuration_v1_interface@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 245:34@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_zwlr_output_configuration_v1_interface@
-}
hs_bindgen_97f55a3bc2f8e2d1 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_97f55a3bc2f8e2d1 =
  RIP.unsafePerformIO hs_bindgen_c6c13640fae7baa0

{-# NOINLINE zwlr_output_configuration_v1_interface #-}
zwlr_output_configuration_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_output_configuration_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_97f55a3bc2f8e2d1)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_interface@
foreign import ccall unsafe "hs_bindgen_3434d8578c3147ab" hs_bindgen_3434d8578c3147ab_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_interface@
hs_bindgen_3434d8578c3147ab :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_3434d8578c3147ab =
  RIP.fromFFIType hs_bindgen_3434d8578c3147ab_base

{-# NOINLINE hs_bindgen_6046d0c6a34765d6 #-}
{-|

  > page_iface_zwlr_output_configuration_head_v1 zwlr_output_configuration_head_v1

  > page_iface_zwlr_output_configuration_head_v1_desc Description

  This object is used by the client to update a single head's configuration.

  It is a protocol error to set the same property twice.

  > page_iface_zwlr_output_configuration_head_v1_api API

  See @iface_zwlr_output_configuration_head_v1@ .

  > iface_zwlr_output_configuration_head_v1 The zwlr_output_configuration_head_v1 interface

  This object is used by the client to update a single head's configuration.

  It is a protocol error to set the same property twice.

__C declaration:__ @zwlr_output_configuration_head_v1_interface@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 266:34@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@

__unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_zwlr_output_configuration_head_v1_interface@
-}
hs_bindgen_6046d0c6a34765d6 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_6046d0c6a34765d6 =
  RIP.unsafePerformIO hs_bindgen_3434d8578c3147ab

{-# NOINLINE zwlr_output_configuration_head_v1_interface #-}
zwlr_output_configuration_head_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
zwlr_output_configuration_head_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_6046d0c6a34765d6)

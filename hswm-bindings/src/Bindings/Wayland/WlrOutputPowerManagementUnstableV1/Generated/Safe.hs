{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe
    ( Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_manager_v1_set_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_manager_v1_get_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_manager_v1_get_version
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_manager_v1_get_output_power
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_manager_v1_destroy
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_v1_add_listener
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_v1_set_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_v1_get_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_v1_get_version
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_v1_set_mode
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.Safe.zwlr_output_power_v1_destroy
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-output-power-management-unstable-v1-client-protocol.h>"
  , "void hs_bindgen_40bdea1bc80b50f4 ("
  , "  struct zwlr_output_power_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_power_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c5edf9c5e94645b5 ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_power_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_ef95dc9bf20b3cc5 ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_power_manager_v1_get_version)(arg1);"
  , "}"
  , "struct zwlr_output_power_v1 *hs_bindgen_c2ce75b068810f70 ("
  , "  struct zwlr_output_power_manager_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return (zwlr_output_power_manager_v1_get_output_power)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_d10c1d63e1c67483 ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_power_manager_v1_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_82b52accfbdca738 ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  struct zwlr_output_power_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_power_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_6a2d907f7f27251a ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_power_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_e2eb88647f07fdd7 ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_power_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_f6ed71771f562508 ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_power_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_7b7dfb2625189854 ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_output_power_v1_set_mode)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0298c11e46927fe3 ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_power_v1_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_40bdea1bc80b50f4" hs_bindgen_40bdea1bc80b50f4_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_set_user_data@
hs_bindgen_40bdea1bc80b50f4 ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_40bdea1bc80b50f4 =
  RIP.fromFFIType hs_bindgen_40bdea1bc80b50f4_base

{-|

  > iface_zwlr_output_power_manager_v1

__C declaration:__ @zwlr_output_power_manager_v1_set_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 123:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_set_user_data ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_power_manager_v1_set_user_data =
  hs_bindgen_40bdea1bc80b50f4

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_c5edf9c5e94645b5" hs_bindgen_c5edf9c5e94645b5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_get_user_data@
hs_bindgen_c5edf9c5e94645b5 ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c5edf9c5e94645b5 =
  RIP.fromFFIType hs_bindgen_c5edf9c5e94645b5_base

{-|

  > iface_zwlr_output_power_manager_v1

__C declaration:__ @zwlr_output_power_manager_v1_get_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 130:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_user_data ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_power_manager_v1_get_user_data =
  hs_bindgen_c5edf9c5e94645b5

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_ef95dc9bf20b3cc5" hs_bindgen_ef95dc9bf20b3cc5_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_get_version@
hs_bindgen_ef95dc9bf20b3cc5 ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_ef95dc9bf20b3cc5 =
  RIP.fromFFIType hs_bindgen_ef95dc9bf20b3cc5_base

{-| __C declaration:__ @zwlr_output_power_manager_v1_get_version@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 136:1@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_version ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_power_manager_v1_get_version =
  hs_bindgen_ef95dc9bf20b3cc5

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_get_output_power@
foreign import ccall safe "hs_bindgen_c2ce75b068810f70" hs_bindgen_c2ce75b068810f70_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_get_output_power@
hs_bindgen_c2ce75b068810f70 ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
  -> IO (RIP.Ptr Zwlr_output_power_v1)
hs_bindgen_c2ce75b068810f70 =
  RIP.fromFFIType hs_bindgen_c2ce75b068810f70_base

{-|

  > iface_zwlr_output_power_manager_v1

  Create an output power management mode control that can be used to adjust the power management mode for a given output.

__C declaration:__ @zwlr_output_power_manager_v1_get_output_power@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 148:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_output_power ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output
     -- ^ __C declaration:__ @output@
  -> IO (RIP.Ptr Zwlr_output_power_v1)
zwlr_output_power_manager_v1_get_output_power =
  hs_bindgen_c2ce75b068810f70

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_d10c1d63e1c67483" hs_bindgen_d10c1d63e1c67483_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_manager_v1_destroy@
hs_bindgen_d10c1d63e1c67483 ::
     RIP.Ptr Zwlr_output_power_manager_v1
  -> IO ()
hs_bindgen_d10c1d63e1c67483 =
  RIP.fromFFIType hs_bindgen_d10c1d63e1c67483_base

{-|

  > iface_zwlr_output_power_manager_v1

  All objects created by the manager will still remain valid, until their appropriate destroy request has been called.

__C declaration:__ @zwlr_output_power_manager_v1_destroy@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 165:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_destroy ::
     RIP.Ptr Zwlr_output_power_manager_v1
     -- ^ __C declaration:__ @zwlr_output_power_manager_v1@
  -> IO ()
zwlr_output_power_manager_v1_destroy =
  hs_bindgen_d10c1d63e1c67483

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_add_listener@
foreign import ccall safe "hs_bindgen_82b52accfbdca738" hs_bindgen_82b52accfbdca738_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_add_listener@
hs_bindgen_82b52accfbdca738 ::
     RIP.Ptr Zwlr_output_power_v1
  -> PtrConst.PtrConst Zwlr_output_power_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_82b52accfbdca738 =
  RIP.fromFFIType hs_bindgen_82b52accfbdca738_base

{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_add_listener@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 235:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_add_listener ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> PtrConst.PtrConst Zwlr_output_power_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwlr_output_power_v1_add_listener =
  hs_bindgen_82b52accfbdca738

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_set_user_data@
foreign import ccall safe "hs_bindgen_6a2d907f7f27251a" hs_bindgen_6a2d907f7f27251a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_set_user_data@
hs_bindgen_6a2d907f7f27251a ::
     RIP.Ptr Zwlr_output_power_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_6a2d907f7f27251a =
  RIP.fromFFIType hs_bindgen_6a2d907f7f27251a_base

{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_set_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 265:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_set_user_data ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_power_v1_set_user_data =
  hs_bindgen_6a2d907f7f27251a

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_get_user_data@
foreign import ccall safe "hs_bindgen_e2eb88647f07fdd7" hs_bindgen_e2eb88647f07fdd7_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_get_user_data@
hs_bindgen_e2eb88647f07fdd7 ::
     RIP.Ptr Zwlr_output_power_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_e2eb88647f07fdd7 =
  RIP.fromFFIType hs_bindgen_e2eb88647f07fdd7_base

{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_get_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 272:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_get_user_data ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_power_v1_get_user_data =
  hs_bindgen_e2eb88647f07fdd7

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_get_version@
foreign import ccall safe "hs_bindgen_f6ed71771f562508" hs_bindgen_f6ed71771f562508_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_get_version@
hs_bindgen_f6ed71771f562508 ::
     RIP.Ptr Zwlr_output_power_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_f6ed71771f562508 =
  RIP.fromFFIType hs_bindgen_f6ed71771f562508_base

{-| __C declaration:__ @zwlr_output_power_v1_get_version@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 278:1@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_get_version ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_power_v1_get_version =
  hs_bindgen_f6ed71771f562508

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_set_mode@
foreign import ccall safe "hs_bindgen_7b7dfb2625189854" hs_bindgen_7b7dfb2625189854_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_set_mode@
hs_bindgen_7b7dfb2625189854 ::
     RIP.Ptr Zwlr_output_power_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_7b7dfb2625189854 =
  RIP.fromFFIType hs_bindgen_7b7dfb2625189854_base

{-|

  > iface_zwlr_output_power_v1

  Set an output's power save mode to the given mode. The mode change is effective immediately. If the output does not support the given mode a failed event is sent.

__C declaration:__ @zwlr_output_power_v1_set_mode@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 291:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_set_mode ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @mode@
  -> IO ()
zwlr_output_power_v1_set_mode =
  hs_bindgen_7b7dfb2625189854

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_destroy@
foreign import ccall safe "hs_bindgen_0298c11e46927fe3" hs_bindgen_0298c11e46927fe3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_Safe_zwlr_output_power_v1_destroy@
hs_bindgen_0298c11e46927fe3 ::
     RIP.Ptr Zwlr_output_power_v1
  -> IO ()
hs_bindgen_0298c11e46927fe3 =
  RIP.fromFFIType hs_bindgen_0298c11e46927fe3_base

{-|

  > iface_zwlr_output_power_v1

  Destroys the output power management mode control object.

__C declaration:__ @zwlr_output_power_v1_destroy@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 303:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_destroy ::
     RIP.Ptr Zwlr_output_power_v1
     -- ^ __C declaration:__ @zwlr_output_power_v1@
  -> IO ()
zwlr_output_power_v1_destroy =
  hs_bindgen_0298c11e46927fe3

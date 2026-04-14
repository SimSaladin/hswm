{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr
    ( Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_manager_v1_set_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_manager_v1_get_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_manager_v1_get_version
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_manager_v1_get_output_power
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_manager_v1_destroy
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_v1_add_listener
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_v1_set_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_v1_get_user_data
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_v1_get_version
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_v1_set_mode
    , Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated.FunPtr.zwlr_output_power_v1_destroy
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
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_60134e3cfd5971b1 (void)) ("
  , "  struct zwlr_output_power_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_power_manager_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_5587300f5ef664e0 (void)) ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_power_manager_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b4940683d3c4bcd6 (void)) ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_power_manager_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_output_power */"
  , "__attribute__ ((const))"
  , "struct zwlr_output_power_v1 *(*hs_bindgen_79067f34444cef80 (void)) ("
  , "  struct zwlr_output_power_manager_v1 *arg1,"
  , "  struct wl_output *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_power_manager_v1_get_output_power;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_884e7fdea6225d2c (void)) ("
  , "  struct zwlr_output_power_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_power_manager_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c1f273e692ed608e (void)) ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  struct zwlr_output_power_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwlr_output_power_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_526d6c2594d552fb (void)) ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_power_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_933c1072a2a66d06 (void)) ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_power_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_24f97d81ec77b3e8 (void)) ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_power_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_set_mode */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a5091e7afb12fc40 (void)) ("
  , "  struct zwlr_output_power_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_power_v1_set_mode;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a4acce33d92fb4fd (void)) ("
  , "  struct zwlr_output_power_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_power_v1_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_60134e3cfd5971b1" hs_bindgen_60134e3cfd5971b1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_set_user_data@
hs_bindgen_60134e3cfd5971b1 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_60134e3cfd5971b1 =
  RIP.fromFFIType hs_bindgen_60134e3cfd5971b1_base

{-# NOINLINE zwlr_output_power_manager_v1_set_user_data #-}
{-|

  > iface_zwlr_output_power_manager_v1

__C declaration:__ @zwlr_output_power_manager_v1_set_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 123:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_output_power_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_60134e3cfd5971b1

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_5587300f5ef664e0" hs_bindgen_5587300f5ef664e0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_user_data@
hs_bindgen_5587300f5ef664e0 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_5587300f5ef664e0 =
  RIP.fromFFIType hs_bindgen_5587300f5ef664e0_base

{-# NOINLINE zwlr_output_power_manager_v1_get_user_data #-}
{-|

  > iface_zwlr_output_power_manager_v1

__C declaration:__ @zwlr_output_power_manager_v1_get_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 130:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_output_power_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_5587300f5ef664e0

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_b4940683d3c4bcd6" hs_bindgen_b4940683d3c4bcd6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_version@
hs_bindgen_b4940683d3c4bcd6 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_b4940683d3c4bcd6 =
  RIP.fromFFIType hs_bindgen_b4940683d3c4bcd6_base

{-# NOINLINE zwlr_output_power_manager_v1_get_version #-}
{-| __C declaration:__ @zwlr_output_power_manager_v1_get_version@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 136:1@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_output_power_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_b4940683d3c4bcd6

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_output_power@
foreign import ccall unsafe "hs_bindgen_79067f34444cef80" hs_bindgen_79067f34444cef80_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_get_output_power@
hs_bindgen_79067f34444cef80 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output) -> IO (RIP.Ptr Zwlr_output_power_v1)))
hs_bindgen_79067f34444cef80 =
  RIP.fromFFIType hs_bindgen_79067f34444cef80_base

{-# NOINLINE zwlr_output_power_manager_v1_get_output_power #-}
{-|

  > iface_zwlr_output_power_manager_v1

  Create an output power management mode control that can be used to adjust the power management mode for a given output.

__C declaration:__ @zwlr_output_power_manager_v1_get_output_power@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 148:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_get_output_power :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_output) -> IO (RIP.Ptr Zwlr_output_power_v1))
zwlr_output_power_manager_v1_get_output_power =
  RIP.unsafePerformIO hs_bindgen_79067f34444cef80

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_884e7fdea6225d2c" hs_bindgen_884e7fdea6225d2c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_manager_v1_destroy@
hs_bindgen_884e7fdea6225d2c :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> IO ()))
hs_bindgen_884e7fdea6225d2c =
  RIP.fromFFIType hs_bindgen_884e7fdea6225d2c_base

{-# NOINLINE zwlr_output_power_manager_v1_destroy #-}
{-|

  > iface_zwlr_output_power_manager_v1

  All objects created by the manager will still remain valid, until their appropriate destroy request has been called.

__C declaration:__ @zwlr_output_power_manager_v1_destroy@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 165:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_manager_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_manager_v1) -> IO ())
zwlr_output_power_manager_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_884e7fdea6225d2c

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_c1f273e692ed608e" hs_bindgen_c1f273e692ed608e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_add_listener@
hs_bindgen_c1f273e692ed608e :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> (PtrConst.PtrConst Zwlr_output_power_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_c1f273e692ed608e =
  RIP.fromFFIType hs_bindgen_c1f273e692ed608e_base

{-# NOINLINE zwlr_output_power_v1_add_listener #-}
{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_add_listener@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 235:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> (PtrConst.PtrConst Zwlr_output_power_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwlr_output_power_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_c1f273e692ed608e

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_526d6c2594d552fb" hs_bindgen_526d6c2594d552fb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_set_user_data@
hs_bindgen_526d6c2594d552fb :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_526d6c2594d552fb =
  RIP.fromFFIType hs_bindgen_526d6c2594d552fb_base

{-# NOINLINE zwlr_output_power_v1_set_user_data #-}
{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_set_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 265:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_output_power_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_526d6c2594d552fb

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_933c1072a2a66d06" hs_bindgen_933c1072a2a66d06_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_get_user_data@
hs_bindgen_933c1072a2a66d06 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_933c1072a2a66d06 =
  RIP.fromFFIType hs_bindgen_933c1072a2a66d06_base

{-# NOINLINE zwlr_output_power_v1_get_user_data #-}
{-|

  > iface_zwlr_output_power_v1

__C declaration:__ @zwlr_output_power_v1_get_user_data@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 272:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_output_power_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_933c1072a2a66d06

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_get_version@
foreign import ccall unsafe "hs_bindgen_24f97d81ec77b3e8" hs_bindgen_24f97d81ec77b3e8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_get_version@
hs_bindgen_24f97d81ec77b3e8 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_24f97d81ec77b3e8 =
  RIP.fromFFIType hs_bindgen_24f97d81ec77b3e8_base

{-# NOINLINE zwlr_output_power_v1_get_version #-}
{-| __C declaration:__ @zwlr_output_power_v1_get_version@

    __defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 278:1@

    __exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_output_power_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_24f97d81ec77b3e8

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_set_mode@
foreign import ccall unsafe "hs_bindgen_a5091e7afb12fc40" hs_bindgen_a5091e7afb12fc40_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_set_mode@
hs_bindgen_a5091e7afb12fc40 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_a5091e7afb12fc40 =
  RIP.fromFFIType hs_bindgen_a5091e7afb12fc40_base

{-# NOINLINE zwlr_output_power_v1_set_mode #-}
{-|

  > iface_zwlr_output_power_v1

  Set an output's power save mode to the given mode. The mode change is effective immediately. If the output does not support the given mode a failed event is sent.

__C declaration:__ @zwlr_output_power_v1_set_mode@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 291:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_set_mode :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
zwlr_output_power_v1_set_mode =
  RIP.unsafePerformIO hs_bindgen_a5091e7afb12fc40

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_destroy@
foreign import ccall unsafe "hs_bindgen_a4acce33d92fb4fd" hs_bindgen_a4acce33d92fb4fd_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputPowerManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputPowerManagementUnstableV1.Generated_get_zwlr_output_power_v1_destroy@
hs_bindgen_a4acce33d92fb4fd :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> IO ()))
hs_bindgen_a4acce33d92fb4fd =
  RIP.fromFFIType hs_bindgen_a4acce33d92fb4fd_base

{-# NOINLINE zwlr_output_power_v1_destroy #-}
{-|

  > iface_zwlr_output_power_v1

  Destroys the output power management mode control object.

__C declaration:__ @zwlr_output_power_v1_destroy@

__defined at:__ @wlr-output-power-management-unstable-v1-client-protocol.h 303:1@

__exported by:__ @wlr-output-power-management-unstable-v1-client-protocol.h@
-}
zwlr_output_power_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_output_power_v1) -> IO ())
zwlr_output_power_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_a4acce33d92fb4fd

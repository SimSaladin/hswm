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
{-| __C declaration:__ @zwlr_output_manager_v1_interface@

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
{-| __C declaration:__ @zwlr_output_head_v1_interface@

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
{-| __C declaration:__ @zwlr_output_mode_v1_interface@

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
{-| __C declaration:__ @zwlr_output_configuration_v1_interface@

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
{-| __C declaration:__ @zwlr_output_configuration_head_v1_interface@

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

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.River.WindowManagementV1.Generated.Global
    ( Bindings.River.WindowManagementV1.Generated.Global.river_window_manager_v1_interface
    , Bindings.River.WindowManagementV1.Generated.Global.river_window_v1_interface
    , Bindings.River.WindowManagementV1.Generated.Global.river_decoration_v1_interface
    , Bindings.River.WindowManagementV1.Generated.Global.river_shell_surface_v1_interface
    , Bindings.River.WindowManagementV1.Generated.Global.river_node_v1_interface
    , Bindings.River.WindowManagementV1.Generated.Global.river_output_v1_interface
    , Bindings.River.WindowManagementV1.Generated.Global.river_seat_v1_interface
    , Bindings.River.WindowManagementV1.Generated.Global.river_pointer_binding_v1_interface
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.PtrConst as PtrConst

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <river-window-management-v1-client-protocol.h>"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_d20fdd912a662f41 (void)"
  , "{"
  , "  return &river_window_manager_v1_interface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_4d1e38c7b09a4374 (void)"
  , "{"
  , "  return &river_window_v1_interface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_e2ee10fdb427a0aa (void)"
  , "{"
  , "  return &river_decoration_v1_interface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_822230afee363124 (void)"
  , "{"
  , "  return &river_shell_surface_v1_interface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_ec8a37d13cab10e9 (void)"
  , "{"
  , "  return &river_node_v1_interface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_cdd3ace0a150b6f0 (void)"
  , "{"
  , "  return &river_output_v1_interface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_004809a6d549b530 (void)"
  , "{"
  , "  return &river_seat_v1_interface;"
  , "}"
  , "/* Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_interface */"
  , "__attribute__ ((const))"
  , "struct wl_interface const *hs_bindgen_e20a1144c5a59c55 (void)"
  , "{"
  , "  return &river_pointer_binding_v1_interface;"
  , "}"
  ]))

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_interface@
foreign import ccall unsafe "hs_bindgen_d20fdd912a662f41" hs_bindgen_d20fdd912a662f41_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_manager_v1_interface@
hs_bindgen_d20fdd912a662f41 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_d20fdd912a662f41 =
  RIP.fromFFIType hs_bindgen_d20fdd912a662f41_base

{-# NOINLINE hs_bindgen_8ee85284b7f33ca7 #-}
{-| __C declaration:__ @river_window_manager_v1_interface@

    __defined at:__ @river-window-management-v1-client-protocol.h 230:34@

    __exported by:__ @river-window-management-v1-client-protocol.h@

    __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_river_window_manager_v1_interface@
-}
hs_bindgen_8ee85284b7f33ca7 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_8ee85284b7f33ca7 =
  RIP.unsafePerformIO hs_bindgen_d20fdd912a662f41

{-# NOINLINE river_window_manager_v1_interface #-}
river_window_manager_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_window_manager_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_8ee85284b7f33ca7)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_interface@
foreign import ccall unsafe "hs_bindgen_4d1e38c7b09a4374" hs_bindgen_4d1e38c7b09a4374_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_window_v1_interface@
hs_bindgen_4d1e38c7b09a4374 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_4d1e38c7b09a4374 =
  RIP.fromFFIType hs_bindgen_4d1e38c7b09a4374_base

{-# NOINLINE hs_bindgen_0ed48f435f676fc0 #-}
{-| __C declaration:__ @river_window_v1_interface@

    __defined at:__ @river-window-management-v1-client-protocol.h 259:34@

    __exported by:__ @river-window-management-v1-client-protocol.h@

    __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_river_window_v1_interface@
-}
hs_bindgen_0ed48f435f676fc0 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_0ed48f435f676fc0 =
  RIP.unsafePerformIO hs_bindgen_4d1e38c7b09a4374

{-# NOINLINE river_window_v1_interface #-}
river_window_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_window_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0ed48f435f676fc0)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_interface@
foreign import ccall unsafe "hs_bindgen_e2ee10fdb427a0aa" hs_bindgen_e2ee10fdb427a0aa_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_decoration_v1_interface@
hs_bindgen_e2ee10fdb427a0aa :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_e2ee10fdb427a0aa =
  RIP.fromFFIType hs_bindgen_e2ee10fdb427a0aa_base

{-# NOINLINE hs_bindgen_72b268d051123b76 #-}
{-| __C declaration:__ @river_decoration_v1_interface@

    __defined at:__ @river-window-management-v1-client-protocol.h 292:34@

    __exported by:__ @river-window-management-v1-client-protocol.h@

    __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_river_decoration_v1_interface@
-}
hs_bindgen_72b268d051123b76 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_72b268d051123b76 =
  RIP.unsafePerformIO hs_bindgen_e2ee10fdb427a0aa

{-# NOINLINE river_decoration_v1_interface #-}
river_decoration_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_decoration_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_72b268d051123b76)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_interface@
foreign import ccall unsafe "hs_bindgen_822230afee363124" hs_bindgen_822230afee363124_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_shell_surface_v1_interface@
hs_bindgen_822230afee363124 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_822230afee363124 =
  RIP.fromFFIType hs_bindgen_822230afee363124_base

{-# NOINLINE hs_bindgen_0a4417ddbc4d6892 #-}
{-| __C declaration:__ @river_shell_surface_v1_interface@

    __defined at:__ @river-window-management-v1-client-protocol.h 313:34@

    __exported by:__ @river-window-management-v1-client-protocol.h@

    __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_river_shell_surface_v1_interface@
-}
hs_bindgen_0a4417ddbc4d6892 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_0a4417ddbc4d6892 =
  RIP.unsafePerformIO hs_bindgen_822230afee363124

{-# NOINLINE river_shell_surface_v1_interface #-}
river_shell_surface_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_shell_surface_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0a4417ddbc4d6892)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_interface@
foreign import ccall unsafe "hs_bindgen_ec8a37d13cab10e9" hs_bindgen_ec8a37d13cab10e9_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_node_v1_interface@
hs_bindgen_ec8a37d13cab10e9 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_ec8a37d13cab10e9 =
  RIP.fromFFIType hs_bindgen_ec8a37d13cab10e9_base

{-# NOINLINE hs_bindgen_a1ece090e86910c3 #-}
{-| __C declaration:__ @river_node_v1_interface@

    __defined at:__ @river-window-management-v1-client-protocol.h 344:34@

    __exported by:__ @river-window-management-v1-client-protocol.h@

    __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_river_node_v1_interface@
-}
hs_bindgen_a1ece090e86910c3 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_a1ece090e86910c3 =
  RIP.unsafePerformIO hs_bindgen_ec8a37d13cab10e9

{-# NOINLINE river_node_v1_interface #-}
river_node_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_node_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_a1ece090e86910c3)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_interface@
foreign import ccall unsafe "hs_bindgen_cdd3ace0a150b6f0" hs_bindgen_cdd3ace0a150b6f0_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_output_v1_interface@
hs_bindgen_cdd3ace0a150b6f0 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_cdd3ace0a150b6f0 =
  RIP.fromFFIType hs_bindgen_cdd3ace0a150b6f0_base

{-# NOINLINE hs_bindgen_667daa9038dea846 #-}
{-| __C declaration:__ @river_output_v1_interface@

    __defined at:__ @river-window-management-v1-client-protocol.h 369:34@

    __exported by:__ @river-window-management-v1-client-protocol.h@

    __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_river_output_v1_interface@
-}
hs_bindgen_667daa9038dea846 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_667daa9038dea846 =
  RIP.unsafePerformIO hs_bindgen_cdd3ace0a150b6f0

{-# NOINLINE river_output_v1_interface #-}
river_output_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_output_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_667daa9038dea846)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_interface@
foreign import ccall unsafe "hs_bindgen_004809a6d549b530" hs_bindgen_004809a6d549b530_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_seat_v1_interface@
hs_bindgen_004809a6d549b530 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_004809a6d549b530 =
  RIP.fromFFIType hs_bindgen_004809a6d549b530_base

{-# NOINLINE hs_bindgen_0cf6d877e1dc8988 #-}
{-| __C declaration:__ @river_seat_v1_interface@

    __defined at:__ @river-window-management-v1-client-protocol.h 418:34@

    __exported by:__ @river-window-management-v1-client-protocol.h@

    __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_river_seat_v1_interface@
-}
hs_bindgen_0cf6d877e1dc8988 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_0cf6d877e1dc8988 =
  RIP.unsafePerformIO hs_bindgen_004809a6d549b530

{-# NOINLINE river_seat_v1_interface #-}
river_seat_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_seat_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_0cf6d877e1dc8988)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_interface@
foreign import ccall unsafe "hs_bindgen_e20a1144c5a59c55" hs_bindgen_e20a1144c5a59c55_base ::
     IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_get_river_pointer_binding_v1_interface@
hs_bindgen_e20a1144c5a59c55 :: IO (PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface)
hs_bindgen_e20a1144c5a59c55 =
  RIP.fromFFIType hs_bindgen_e20a1144c5a59c55_base

{-# NOINLINE hs_bindgen_3c525a927d819b65 #-}
{-| __C declaration:__ @river_pointer_binding_v1_interface@

    __defined at:__ @river-window-management-v1-client-protocol.h 461:34@

    __exported by:__ @river-window-management-v1-client-protocol.h@

    __unique:__ @Bindings_River_WindowManagementV1_Generated_Bindings.River.WindowManagementV1.Generated_river_pointer_binding_v1_interface@
-}
hs_bindgen_3c525a927d819b65 :: PtrConst.PtrConst Bindings.Wayland.Util.Generated.Wl_interface
hs_bindgen_3c525a927d819b65 =
  RIP.unsafePerformIO hs_bindgen_e20a1144c5a59c55

{-# NOINLINE river_pointer_binding_v1_interface #-}
river_pointer_binding_v1_interface :: Bindings.Wayland.Util.Generated.Wl_interface
river_pointer_binding_v1_interface =
  RIP.unsafePerformIO (PtrConst.peek hs_bindgen_3c525a927d819b65)

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe
    ( Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_manager_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_manager_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_manager_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_manager_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_manager_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_manager_v1_create_configuration
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_manager_v1_stop
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_head_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_head_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_head_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_head_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_head_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_head_v1_release
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_mode_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_mode_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_mode_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_mode_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_mode_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_mode_v1_release
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_enable_head
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_disable_head
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_apply
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_test
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_set_mode
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_set_custom_mode
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_set_position
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_set_transform
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_set_scale
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Safe.zwlr_output_configuration_head_v1_set_adaptive_sync
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-output-management-unstable-v1-client-protocol.h>"
  , "signed int hs_bindgen_57b8abf70ae4cb0d ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  struct zwlr_output_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_manager_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_7cd5a0ccf158a3d7 ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_6376cbf1142a9ae3 ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_09aa342e64552a6f ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8267b7e974d6cc87 ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_manager_v1_destroy)(arg1);"
  , "}"
  , "struct zwlr_output_configuration_v1 *hs_bindgen_135e6bd5684c4ce3 ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (zwlr_output_manager_v1_create_configuration)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_a001796580578afc ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_manager_v1_stop)(arg1);"
  , "}"
  , "signed int hs_bindgen_649bf31808512f79 ("
  , "  struct zwlr_output_head_v1 *arg1,"
  , "  struct zwlr_output_head_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_head_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_4eea76e1f2f0281e ("
  , "  struct zwlr_output_head_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_head_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_aad3ce95479b22fd ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_head_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_e14c32f4852c00b7 ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_head_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_270d647b6ee84b53 ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_head_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_0cbf7998f31dfdb0 ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_head_v1_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_1fb1b1e3d8b37add ("
  , "  struct zwlr_output_mode_v1 *arg1,"
  , "  struct zwlr_output_mode_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_mode_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9e552a4714efefc0 ("
  , "  struct zwlr_output_mode_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_mode_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_465cee8a52457cca ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_mode_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6349ff4e1489516d ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_mode_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_53e42f8ca811338e ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_mode_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_dea6b0b94ef8fbac ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_mode_v1_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_6ce8b9f1770bce30 ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_configuration_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_982f8dc37451e752 ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_aa0ed9663093d571 ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_171e7b307416396f ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_v1_get_version)(arg1);"
  , "}"
  , "struct zwlr_output_configuration_head_v1 *hs_bindgen_1fac2cf07607f484 ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_head_v1 *arg2"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_v1_enable_head)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2ae3e58b8608f7ba ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_head_v1 *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_disable_head)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_671a0e1542ab64ce ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_apply)(arg1);"
  , "}"
  , "void hs_bindgen_eeeeb61be7aad082 ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_test)(arg1);"
  , "}"
  , "void hs_bindgen_d4ef5f8739e0c6fe ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_a439a9e4bedf700f ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f2ea4f72e5ac6d5f ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_head_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_46eb3dd539aa8e15 ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_head_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_1b9a3ff4f2c4942a ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_6b81cf850d5b1e6c ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  struct zwlr_output_mode_v1 *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_mode)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_cb92fc32a1f65b6b ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_custom_mode)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_9fdedc2ed9ad54df ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b78e04a6a5b730af ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_b3e23982089a30ce ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  wl_fixed_t arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_scale)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_048de8ad09d87637 ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_adaptive_sync)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_add_listener@
foreign import ccall safe "hs_bindgen_57b8abf70ae4cb0d" hs_bindgen_57b8abf70ae4cb0d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_add_listener@
hs_bindgen_57b8abf70ae4cb0d ::
     RIP.Ptr Zwlr_output_manager_v1
  -> PtrConst.PtrConst Zwlr_output_manager_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_57b8abf70ae4cb0d =
  RIP.fromFFIType hs_bindgen_57b8abf70ae4cb0d_base

{-|

  > iface_zwlr_output_manager_v1

__C declaration:__ @zwlr_output_manager_v1_add_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 321:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_add_listener ::
     RIP.Ptr Zwlr_output_manager_v1
     -- ^ __C declaration:__ @zwlr_output_manager_v1@
  -> PtrConst.PtrConst Zwlr_output_manager_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwlr_output_manager_v1_add_listener =
  hs_bindgen_57b8abf70ae4cb0d

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_set_user_data@
foreign import ccall safe "hs_bindgen_7cd5a0ccf158a3d7" hs_bindgen_7cd5a0ccf158a3d7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_set_user_data@
hs_bindgen_7cd5a0ccf158a3d7 ::
     RIP.Ptr Zwlr_output_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_7cd5a0ccf158a3d7 =
  RIP.fromFFIType hs_bindgen_7cd5a0ccf158a3d7_base

{-|

  > iface_zwlr_output_manager_v1

__C declaration:__ @zwlr_output_manager_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 355:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_set_user_data ::
     RIP.Ptr Zwlr_output_manager_v1
     -- ^ __C declaration:__ @zwlr_output_manager_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_manager_v1_set_user_data =
  hs_bindgen_7cd5a0ccf158a3d7

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_get_user_data@
foreign import ccall safe "hs_bindgen_6376cbf1142a9ae3" hs_bindgen_6376cbf1142a9ae3_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_get_user_data@
hs_bindgen_6376cbf1142a9ae3 ::
     RIP.Ptr Zwlr_output_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_6376cbf1142a9ae3 =
  RIP.fromFFIType hs_bindgen_6376cbf1142a9ae3_base

{-|

  > iface_zwlr_output_manager_v1

__C declaration:__ @zwlr_output_manager_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 362:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_get_user_data ::
     RIP.Ptr Zwlr_output_manager_v1
     -- ^ __C declaration:__ @zwlr_output_manager_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_manager_v1_get_user_data =
  hs_bindgen_6376cbf1142a9ae3

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_get_version@
foreign import ccall safe "hs_bindgen_09aa342e64552a6f" hs_bindgen_09aa342e64552a6f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_get_version@
hs_bindgen_09aa342e64552a6f ::
     RIP.Ptr Zwlr_output_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_09aa342e64552a6f =
  RIP.fromFFIType hs_bindgen_09aa342e64552a6f_base

{-| __C declaration:__ @zwlr_output_manager_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 368:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_get_version ::
     RIP.Ptr Zwlr_output_manager_v1
     -- ^ __C declaration:__ @zwlr_output_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_manager_v1_get_version =
  hs_bindgen_09aa342e64552a6f

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_destroy@
foreign import ccall safe "hs_bindgen_8267b7e974d6cc87" hs_bindgen_8267b7e974d6cc87_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_destroy@
hs_bindgen_8267b7e974d6cc87 ::
     RIP.Ptr Zwlr_output_manager_v1
  -> IO ()
hs_bindgen_8267b7e974d6cc87 =
  RIP.fromFFIType hs_bindgen_8267b7e974d6cc87_base

{-|

  > iface_zwlr_output_manager_v1

__C declaration:__ @zwlr_output_manager_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 375:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_destroy ::
     RIP.Ptr Zwlr_output_manager_v1
     -- ^ __C declaration:__ @zwlr_output_manager_v1@
  -> IO ()
zwlr_output_manager_v1_destroy =
  hs_bindgen_8267b7e974d6cc87

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_create_configuration@
foreign import ccall safe "hs_bindgen_135e6bd5684c4ce3" hs_bindgen_135e6bd5684c4ce3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_create_configuration@
hs_bindgen_135e6bd5684c4ce3 ::
     RIP.Ptr Zwlr_output_manager_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Zwlr_output_configuration_v1)
hs_bindgen_135e6bd5684c4ce3 =
  RIP.fromFFIType hs_bindgen_135e6bd5684c4ce3_base

{-|

  > iface_zwlr_output_manager_v1

  Create a new output configuration object. This allows to update head properties.

__C declaration:__ @zwlr_output_manager_v1_create_configuration@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 387:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_create_configuration ::
     RIP.Ptr Zwlr_output_manager_v1
     -- ^ __C declaration:__ @zwlr_output_manager_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO (RIP.Ptr Zwlr_output_configuration_v1)
zwlr_output_manager_v1_create_configuration =
  hs_bindgen_135e6bd5684c4ce3

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_stop@
foreign import ccall safe "hs_bindgen_a001796580578afc" hs_bindgen_a001796580578afc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_manager_v1_stop@
hs_bindgen_a001796580578afc ::
     RIP.Ptr Zwlr_output_manager_v1
  -> IO ()
hs_bindgen_a001796580578afc =
  RIP.fromFFIType hs_bindgen_a001796580578afc_base

{-|

  > iface_zwlr_output_manager_v1

  Indicates the client no longer wishes to receive events for output configuration changes. However the compositor may emit further events, until the finished event is emitted.

  The client must not send any more requests after this one.

__C declaration:__ @zwlr_output_manager_v1_stop@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 407:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_stop ::
     RIP.Ptr Zwlr_output_manager_v1
     -- ^ __C declaration:__ @zwlr_output_manager_v1@
  -> IO ()
zwlr_output_manager_v1_stop =
  hs_bindgen_a001796580578afc

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_add_listener@
foreign import ccall safe "hs_bindgen_649bf31808512f79" hs_bindgen_649bf31808512f79_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_add_listener@
hs_bindgen_649bf31808512f79 ::
     RIP.Ptr Zwlr_output_head_v1
  -> PtrConst.PtrConst Zwlr_output_head_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_649bf31808512f79 =
  RIP.fromFFIType hs_bindgen_649bf31808512f79_base

{-|

  > iface_zwlr_output_head_v1

__C declaration:__ @zwlr_output_head_v1_add_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 674:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_add_listener ::
     RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @zwlr_output_head_v1@
  -> PtrConst.PtrConst Zwlr_output_head_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwlr_output_head_v1_add_listener =
  hs_bindgen_649bf31808512f79

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_set_user_data@
foreign import ccall safe "hs_bindgen_4eea76e1f2f0281e" hs_bindgen_4eea76e1f2f0281e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_set_user_data@
hs_bindgen_4eea76e1f2f0281e ::
     RIP.Ptr Zwlr_output_head_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_4eea76e1f2f0281e =
  RIP.fromFFIType hs_bindgen_4eea76e1f2f0281e_base

{-|

  > iface_zwlr_output_head_v1

__C declaration:__ @zwlr_output_head_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 747:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_set_user_data ::
     RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @zwlr_output_head_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_head_v1_set_user_data =
  hs_bindgen_4eea76e1f2f0281e

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_get_user_data@
foreign import ccall safe "hs_bindgen_aad3ce95479b22fd" hs_bindgen_aad3ce95479b22fd_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_get_user_data@
hs_bindgen_aad3ce95479b22fd ::
     RIP.Ptr Zwlr_output_head_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_aad3ce95479b22fd =
  RIP.fromFFIType hs_bindgen_aad3ce95479b22fd_base

{-|

  > iface_zwlr_output_head_v1

__C declaration:__ @zwlr_output_head_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 754:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_get_user_data ::
     RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @zwlr_output_head_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_head_v1_get_user_data =
  hs_bindgen_aad3ce95479b22fd

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_get_version@
foreign import ccall safe "hs_bindgen_e14c32f4852c00b7" hs_bindgen_e14c32f4852c00b7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_get_version@
hs_bindgen_e14c32f4852c00b7 ::
     RIP.Ptr Zwlr_output_head_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_e14c32f4852c00b7 =
  RIP.fromFFIType hs_bindgen_e14c32f4852c00b7_base

{-| __C declaration:__ @zwlr_output_head_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 760:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_get_version ::
     RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @zwlr_output_head_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_head_v1_get_version =
  hs_bindgen_e14c32f4852c00b7

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_destroy@
foreign import ccall safe "hs_bindgen_270d647b6ee84b53" hs_bindgen_270d647b6ee84b53_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_destroy@
hs_bindgen_270d647b6ee84b53 ::
     RIP.Ptr Zwlr_output_head_v1
  -> IO ()
hs_bindgen_270d647b6ee84b53 =
  RIP.fromFFIType hs_bindgen_270d647b6ee84b53_base

{-|

  > iface_zwlr_output_head_v1

__C declaration:__ @zwlr_output_head_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 767:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_destroy ::
     RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @zwlr_output_head_v1@
  -> IO ()
zwlr_output_head_v1_destroy =
  hs_bindgen_270d647b6ee84b53

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_release@
foreign import ccall safe "hs_bindgen_0cbf7998f31dfdb0" hs_bindgen_0cbf7998f31dfdb0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_head_v1_release@
hs_bindgen_0cbf7998f31dfdb0 ::
     RIP.Ptr Zwlr_output_head_v1
  -> IO ()
hs_bindgen_0cbf7998f31dfdb0 =
  RIP.fromFFIType hs_bindgen_0cbf7998f31dfdb0_base

{-|

  > iface_zwlr_output_head_v1

  This request indicates that the client will no longer use this head object.

__C declaration:__ @zwlr_output_head_v1_release@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 779:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_release ::
     RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @zwlr_output_head_v1@
  -> IO ()
zwlr_output_head_v1_release =
  hs_bindgen_0cbf7998f31dfdb0

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_add_listener@
foreign import ccall safe "hs_bindgen_1fb1b1e3d8b37add" hs_bindgen_1fb1b1e3d8b37add_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_add_listener@
hs_bindgen_1fb1b1e3d8b37add ::
     RIP.Ptr Zwlr_output_mode_v1
  -> PtrConst.PtrConst Zwlr_output_mode_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_1fb1b1e3d8b37add =
  RIP.fromFFIType hs_bindgen_1fb1b1e3d8b37add_base

{-|

  > iface_zwlr_output_mode_v1

__C declaration:__ @zwlr_output_mode_v1_add_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 836:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_add_listener ::
     RIP.Ptr Zwlr_output_mode_v1
     -- ^ __C declaration:__ @zwlr_output_mode_v1@
  -> PtrConst.PtrConst Zwlr_output_mode_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwlr_output_mode_v1_add_listener =
  hs_bindgen_1fb1b1e3d8b37add

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_set_user_data@
foreign import ccall safe "hs_bindgen_9e552a4714efefc0" hs_bindgen_9e552a4714efefc0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_set_user_data@
hs_bindgen_9e552a4714efefc0 ::
     RIP.Ptr Zwlr_output_mode_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_9e552a4714efefc0 =
  RIP.fromFFIType hs_bindgen_9e552a4714efefc0_base

{-|

  > iface_zwlr_output_mode_v1

__C declaration:__ @zwlr_output_mode_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 869:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_set_user_data ::
     RIP.Ptr Zwlr_output_mode_v1
     -- ^ __C declaration:__ @zwlr_output_mode_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_mode_v1_set_user_data =
  hs_bindgen_9e552a4714efefc0

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_get_user_data@
foreign import ccall safe "hs_bindgen_465cee8a52457cca" hs_bindgen_465cee8a52457cca_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_get_user_data@
hs_bindgen_465cee8a52457cca ::
     RIP.Ptr Zwlr_output_mode_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_465cee8a52457cca =
  RIP.fromFFIType hs_bindgen_465cee8a52457cca_base

{-|

  > iface_zwlr_output_mode_v1

__C declaration:__ @zwlr_output_mode_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 876:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_get_user_data ::
     RIP.Ptr Zwlr_output_mode_v1
     -- ^ __C declaration:__ @zwlr_output_mode_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_mode_v1_get_user_data =
  hs_bindgen_465cee8a52457cca

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_get_version@
foreign import ccall safe "hs_bindgen_6349ff4e1489516d" hs_bindgen_6349ff4e1489516d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_get_version@
hs_bindgen_6349ff4e1489516d ::
     RIP.Ptr Zwlr_output_mode_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6349ff4e1489516d =
  RIP.fromFFIType hs_bindgen_6349ff4e1489516d_base

{-| __C declaration:__ @zwlr_output_mode_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 882:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_get_version ::
     RIP.Ptr Zwlr_output_mode_v1
     -- ^ __C declaration:__ @zwlr_output_mode_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_mode_v1_get_version =
  hs_bindgen_6349ff4e1489516d

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_destroy@
foreign import ccall safe "hs_bindgen_53e42f8ca811338e" hs_bindgen_53e42f8ca811338e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_destroy@
hs_bindgen_53e42f8ca811338e ::
     RIP.Ptr Zwlr_output_mode_v1
  -> IO ()
hs_bindgen_53e42f8ca811338e =
  RIP.fromFFIType hs_bindgen_53e42f8ca811338e_base

{-|

  > iface_zwlr_output_mode_v1

__C declaration:__ @zwlr_output_mode_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 889:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_destroy ::
     RIP.Ptr Zwlr_output_mode_v1
     -- ^ __C declaration:__ @zwlr_output_mode_v1@
  -> IO ()
zwlr_output_mode_v1_destroy =
  hs_bindgen_53e42f8ca811338e

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_release@
foreign import ccall safe "hs_bindgen_dea6b0b94ef8fbac" hs_bindgen_dea6b0b94ef8fbac_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_mode_v1_release@
hs_bindgen_dea6b0b94ef8fbac ::
     RIP.Ptr Zwlr_output_mode_v1
  -> IO ()
hs_bindgen_dea6b0b94ef8fbac =
  RIP.fromFFIType hs_bindgen_dea6b0b94ef8fbac_base

{-|

  > iface_zwlr_output_mode_v1

  This request indicates that the client will no longer use this mode object.

__C declaration:__ @zwlr_output_mode_v1_release@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 901:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_release ::
     RIP.Ptr Zwlr_output_mode_v1
     -- ^ __C declaration:__ @zwlr_output_mode_v1@
  -> IO ()
zwlr_output_mode_v1_release =
  hs_bindgen_dea6b0b94ef8fbac

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_add_listener@
foreign import ccall safe "hs_bindgen_6ce8b9f1770bce30" hs_bindgen_6ce8b9f1770bce30_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_add_listener@
hs_bindgen_6ce8b9f1770bce30 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> PtrConst.PtrConst Zwlr_output_configuration_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_6ce8b9f1770bce30 =
  RIP.fromFFIType hs_bindgen_6ce8b9f1770bce30_base

{-|

  > iface_zwlr_output_configuration_v1

__C declaration:__ @zwlr_output_configuration_v1_add_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 978:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_add_listener ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> PtrConst.PtrConst Zwlr_output_configuration_v1_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwlr_output_configuration_v1_add_listener =
  hs_bindgen_6ce8b9f1770bce30

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_set_user_data@
foreign import ccall safe "hs_bindgen_982f8dc37451e752" hs_bindgen_982f8dc37451e752_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_set_user_data@
hs_bindgen_982f8dc37451e752 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_982f8dc37451e752 =
  RIP.fromFFIType hs_bindgen_982f8dc37451e752_base

{-|

  > iface_zwlr_output_configuration_v1

__C declaration:__ @zwlr_output_configuration_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1027:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_set_user_data ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_configuration_v1_set_user_data =
  hs_bindgen_982f8dc37451e752

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_get_user_data@
foreign import ccall safe "hs_bindgen_aa0ed9663093d571" hs_bindgen_aa0ed9663093d571_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_get_user_data@
hs_bindgen_aa0ed9663093d571 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_aa0ed9663093d571 =
  RIP.fromFFIType hs_bindgen_aa0ed9663093d571_base

{-|

  > iface_zwlr_output_configuration_v1

__C declaration:__ @zwlr_output_configuration_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1034:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_get_user_data ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_configuration_v1_get_user_data =
  hs_bindgen_aa0ed9663093d571

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_get_version@
foreign import ccall safe "hs_bindgen_171e7b307416396f" hs_bindgen_171e7b307416396f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_get_version@
hs_bindgen_171e7b307416396f ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_171e7b307416396f =
  RIP.fromFFIType hs_bindgen_171e7b307416396f_base

{-| __C declaration:__ @zwlr_output_configuration_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1040:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_get_version ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_configuration_v1_get_version =
  hs_bindgen_171e7b307416396f

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_enable_head@
foreign import ccall safe "hs_bindgen_1fac2cf07607f484" hs_bindgen_1fac2cf07607f484_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_enable_head@
hs_bindgen_1fac2cf07607f484 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> RIP.Ptr Zwlr_output_head_v1
  -> IO (RIP.Ptr Zwlr_output_configuration_head_v1)
hs_bindgen_1fac2cf07607f484 =
  RIP.fromFFIType hs_bindgen_1fac2cf07607f484_base

{-|

  > iface_zwlr_output_configuration_v1

  Enable a head. This request creates a head configuration object that can be used to change the head's properties.

__C declaration:__ @zwlr_output_configuration_v1_enable_head@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1052:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_enable_head ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @head@
  -> IO (RIP.Ptr Zwlr_output_configuration_head_v1)
zwlr_output_configuration_v1_enable_head =
  hs_bindgen_1fac2cf07607f484

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_disable_head@
foreign import ccall safe "hs_bindgen_2ae3e58b8608f7ba" hs_bindgen_2ae3e58b8608f7ba_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_disable_head@
hs_bindgen_2ae3e58b8608f7ba ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> RIP.Ptr Zwlr_output_head_v1
  -> IO ()
hs_bindgen_2ae3e58b8608f7ba =
  RIP.fromFFIType hs_bindgen_2ae3e58b8608f7ba_base

{-|

  > iface_zwlr_output_configuration_v1

  Disable a head.

__C declaration:__ @zwlr_output_configuration_v1_disable_head@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1068:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_disable_head ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @head@
  -> IO ()
zwlr_output_configuration_v1_disable_head =
  hs_bindgen_2ae3e58b8608f7ba

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_apply@
foreign import ccall safe "hs_bindgen_671a0e1542ab64ce" hs_bindgen_671a0e1542ab64ce_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_apply@
hs_bindgen_671a0e1542ab64ce ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO ()
hs_bindgen_671a0e1542ab64ce =
  RIP.fromFFIType hs_bindgen_671a0e1542ab64ce_base

{-|

  > iface_zwlr_output_configuration_v1

  Apply the new output configuration.

  In case the configuration is successfully applied, there is no guarantee that the new output state matches completely the requested configuration. For instance, a compositor might round the scale if it doesn't support fractional scaling.

  After this request has been sent, the compositor must respond with an succeeded, failed or cancelled event. Sending a request that isn't the destructor is a protocol error.

__C declaration:__ @zwlr_output_configuration_v1_apply@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1089:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_apply ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> IO ()
zwlr_output_configuration_v1_apply =
  hs_bindgen_671a0e1542ab64ce

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_test@
foreign import ccall safe "hs_bindgen_eeeeb61be7aad082" hs_bindgen_eeeeb61be7aad082_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_test@
hs_bindgen_eeeeb61be7aad082 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO ()
hs_bindgen_eeeeb61be7aad082 =
  RIP.fromFFIType hs_bindgen_eeeeb61be7aad082_base

{-|

  > iface_zwlr_output_configuration_v1

  Test the new output configuration. The configuration won't be applied, but will only be validated.

  Even if the compositor succeeds to test a configuration, applying it may fail.

  After this request has been sent, the compositor must respond with an succeeded, failed or cancelled event. Sending a request that isn't the destructor is a protocol error.

__C declaration:__ @zwlr_output_configuration_v1_test@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1109:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_test ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> IO ()
zwlr_output_configuration_v1_test =
  hs_bindgen_eeeeb61be7aad082

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_destroy@
foreign import ccall safe "hs_bindgen_d4ef5f8739e0c6fe" hs_bindgen_d4ef5f8739e0c6fe_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_v1_destroy@
hs_bindgen_d4ef5f8739e0c6fe ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO ()
hs_bindgen_d4ef5f8739e0c6fe =
  RIP.fromFFIType hs_bindgen_d4ef5f8739e0c6fe_base

{-|

  > iface_zwlr_output_configuration_v1

  Using this request a client can tell the compositor that it is not going to use the configuration object anymore. Any changes to the outputs that have not been applied will be discarded.

  This request also destroys wlr_output_configuration_head objects created via this object.

__C declaration:__ @zwlr_output_configuration_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1126:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_destroy ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> IO ()
zwlr_output_configuration_v1_destroy =
  hs_bindgen_d4ef5f8739e0c6fe

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_user_data@
foreign import ccall safe "hs_bindgen_a439a9e4bedf700f" hs_bindgen_a439a9e4bedf700f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_user_data@
hs_bindgen_a439a9e4bedf700f ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_a439a9e4bedf700f =
  RIP.fromFFIType hs_bindgen_a439a9e4bedf700f_base

{-|

  > iface_zwlr_output_configuration_head_v1

__C declaration:__ @zwlr_output_configuration_head_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1202:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_user_data ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwlr_output_configuration_head_v1_set_user_data =
  hs_bindgen_a439a9e4bedf700f

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_get_user_data@
foreign import ccall safe "hs_bindgen_f2ea4f72e5ac6d5f" hs_bindgen_f2ea4f72e5ac6d5f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_get_user_data@
hs_bindgen_f2ea4f72e5ac6d5f ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f2ea4f72e5ac6d5f =
  RIP.fromFFIType hs_bindgen_f2ea4f72e5ac6d5f_base

{-|

  > iface_zwlr_output_configuration_head_v1

__C declaration:__ @zwlr_output_configuration_head_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1209:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_get_user_data ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> IO (RIP.Ptr RIP.Void)
zwlr_output_configuration_head_v1_get_user_data =
  hs_bindgen_f2ea4f72e5ac6d5f

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_get_version@
foreign import ccall safe "hs_bindgen_46eb3dd539aa8e15" hs_bindgen_46eb3dd539aa8e15_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_get_version@
hs_bindgen_46eb3dd539aa8e15 ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_46eb3dd539aa8e15 =
  RIP.fromFFIType hs_bindgen_46eb3dd539aa8e15_base

{-| __C declaration:__ @zwlr_output_configuration_head_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1215:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_get_version ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_configuration_head_v1_get_version =
  hs_bindgen_46eb3dd539aa8e15

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_destroy@
foreign import ccall safe "hs_bindgen_1b9a3ff4f2c4942a" hs_bindgen_1b9a3ff4f2c4942a_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_destroy@
hs_bindgen_1b9a3ff4f2c4942a ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> IO ()
hs_bindgen_1b9a3ff4f2c4942a =
  RIP.fromFFIType hs_bindgen_1b9a3ff4f2c4942a_base

{-|

  > iface_zwlr_output_configuration_head_v1

__C declaration:__ @zwlr_output_configuration_head_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1222:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_destroy ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> IO ()
zwlr_output_configuration_head_v1_destroy =
  hs_bindgen_1b9a3ff4f2c4942a

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_mode@
foreign import ccall safe "hs_bindgen_6b81cf850d5b1e6c" hs_bindgen_6b81cf850d5b1e6c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_mode@
hs_bindgen_6b81cf850d5b1e6c ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> RIP.Ptr Zwlr_output_mode_v1
  -> IO ()
hs_bindgen_6b81cf850d5b1e6c =
  RIP.fromFFIType hs_bindgen_6b81cf850d5b1e6c_base

{-|

  > iface_zwlr_output_configuration_head_v1

  This request sets the head's mode.

__C declaration:__ @zwlr_output_configuration_head_v1_set_mode@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1233:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_mode ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> RIP.Ptr Zwlr_output_mode_v1
     -- ^ __C declaration:__ @mode@
  -> IO ()
zwlr_output_configuration_head_v1_set_mode =
  hs_bindgen_6b81cf850d5b1e6c

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_custom_mode@
foreign import ccall safe "hs_bindgen_cb92fc32a1f65b6b" hs_bindgen_cb92fc32a1f65b6b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_custom_mode@
hs_bindgen_cb92fc32a1f65b6b ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_cb92fc32a1f65b6b =
  RIP.fromFFIType hs_bindgen_cb92fc32a1f65b6b_base

{-|

  > iface_zwlr_output_configuration_head_v1

  This request assigns a custom mode to the head. The size is given in physical hardware units of the output device. If set to zero, the refresh rate is unspecified.

  It is a protocol error to set both a mode and a custom mode.

__C declaration:__ @zwlr_output_configuration_head_v1_set_custom_mode@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1249:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_custom_mode ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @width@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @height@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @refresh@
  -> IO ()
zwlr_output_configuration_head_v1_set_custom_mode =
  hs_bindgen_cb92fc32a1f65b6b

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_position@
foreign import ccall safe "hs_bindgen_9fdedc2ed9ad54df" hs_bindgen_9fdedc2ed9ad54df_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_position@
hs_bindgen_9fdedc2ed9ad54df ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_9fdedc2ed9ad54df =
  RIP.fromFFIType hs_bindgen_9fdedc2ed9ad54df_base

{-|

  > iface_zwlr_output_configuration_head_v1

  This request sets the head's position in the global compositor space.

__C declaration:__ @zwlr_output_configuration_head_v1_set_position@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1261:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_position ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @x@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @y@
  -> IO ()
zwlr_output_configuration_head_v1_set_position =
  hs_bindgen_9fdedc2ed9ad54df

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_transform@
foreign import ccall safe "hs_bindgen_b78e04a6a5b730af" hs_bindgen_b78e04a6a5b730af_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_transform@
hs_bindgen_b78e04a6a5b730af ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_b78e04a6a5b730af =
  RIP.fromFFIType hs_bindgen_b78e04a6a5b730af_base

{-|

  > iface_zwlr_output_configuration_head_v1

  This request sets the head's transform.

__C declaration:__ @zwlr_output_configuration_head_v1_set_transform@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1273:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_transform ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @transform@
  -> IO ()
zwlr_output_configuration_head_v1_set_transform =
  hs_bindgen_b78e04a6a5b730af

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_scale@
foreign import ccall safe "hs_bindgen_b3e23982089a30ce" hs_bindgen_b3e23982089a30ce_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_scale@
hs_bindgen_b3e23982089a30ce ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
  -> IO ()
hs_bindgen_b3e23982089a30ce =
  RIP.fromFFIType hs_bindgen_b3e23982089a30ce_base

{-|

  > iface_zwlr_output_configuration_head_v1

  This request sets the head's scale.

__C declaration:__ @zwlr_output_configuration_head_v1_set_scale@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1285:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_scale ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> Bindings.Wayland.Util.Generated.Wl_fixed_t
     -- ^ __C declaration:__ @scale@
  -> IO ()
zwlr_output_configuration_head_v1_set_scale =
  hs_bindgen_b3e23982089a30ce

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_adaptive_sync@
foreign import ccall safe "hs_bindgen_048de8ad09d87637" hs_bindgen_048de8ad09d87637_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Safe_zwlr_output_configuration_head_v1_set_adaptive_sync@
hs_bindgen_048de8ad09d87637 ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_048de8ad09d87637 =
  RIP.fromFFIType hs_bindgen_048de8ad09d87637_base

{-|

  > iface_zwlr_output_configuration_head_v1

  This request enables/disables adaptive sync. Adaptive sync is also known as Variable Refresh Rate or VRR.

__C declaration:__ @zwlr_output_configuration_head_v1_set_adaptive_sync@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1298:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_adaptive_sync ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @state@
  -> IO ()
zwlr_output_configuration_head_v1_set_adaptive_sync =
  hs_bindgen_048de8ad09d87637

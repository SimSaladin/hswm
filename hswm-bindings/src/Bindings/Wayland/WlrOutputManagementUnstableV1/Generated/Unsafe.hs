{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe
    ( Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_manager_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_manager_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_manager_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_manager_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_manager_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_manager_v1_create_configuration
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_manager_v1_stop
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_head_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_head_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_head_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_head_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_head_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_head_v1_release
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_mode_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_mode_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_mode_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_mode_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_mode_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_mode_v1_release
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_enable_head
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_disable_head
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_apply
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_test
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_set_mode
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_set_custom_mode
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_set_position
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_set_transform
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_set_scale
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Unsafe.zwlr_output_configuration_head_v1_set_adaptive_sync
    )
  where

import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.WlrOutputManagementUnstableV1.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <wlr-output-management-unstable-v1-client-protocol.h>"
  , "signed int hs_bindgen_c836cc2551dd443e ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  struct zwlr_output_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_manager_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_3100bf38e0ad0cc0 ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_manager_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_206081ff9a03c212 ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_manager_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_dde0d24509f75aef ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_manager_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_c8367879e5189e4c ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_manager_v1_destroy)(arg1);"
  , "}"
  , "struct zwlr_output_configuration_v1 *hs_bindgen_d4145ea8950bb74c ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return (zwlr_output_manager_v1_create_configuration)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_3402e721fa2b13b0 ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_manager_v1_stop)(arg1);"
  , "}"
  , "signed int hs_bindgen_48cfe92b57c17552 ("
  , "  struct zwlr_output_head_v1 *arg1,"
  , "  struct zwlr_output_head_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_head_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_278e2ba94d60a19a ("
  , "  struct zwlr_output_head_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_head_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5ccd3e821089fb65 ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_head_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_955ba58adaaed5ea ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_head_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_65902fad3ee903f9 ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_head_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_2c38e5f868774a49 ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_head_v1_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_5c7abdc3f302b4cc ("
  , "  struct zwlr_output_mode_v1 *arg1,"
  , "  struct zwlr_output_mode_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_mode_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_31824d4dcc15dd2f ("
  , "  struct zwlr_output_mode_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_mode_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_5993d1b0f809e5d9 ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_mode_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_8daa9a535ab8421a ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_mode_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ff7877d7f07ba916 ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_mode_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_ec9402d68bf37c8e ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_mode_v1_release)(arg1);"
  , "}"
  , "signed int hs_bindgen_7bde53c4e1ce2682 ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_configuration_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_v1_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_bb423662c4efe1a6 ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_12e32271976e6217 ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_20b611479c76c59b ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_v1_get_version)(arg1);"
  , "}"
  , "struct zwlr_output_configuration_head_v1 *hs_bindgen_6f2cb47030fd2bae ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_head_v1 *arg2"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_v1_enable_head)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_ccfa6d48724dab83 ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_head_v1 *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_disable_head)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_46ca71a5f714d818 ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_apply)(arg1);"
  , "}"
  , "void hs_bindgen_7dd2db7b2f2eed43 ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_test)(arg1);"
  , "}"
  , "void hs_bindgen_3c5a5f00e9f949e9 ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_fddb26124a64e3ee ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_67b63f72701cb6f5 ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_head_v1_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_5c2075c8ac49edfa ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  return (zwlr_output_configuration_head_v1_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e1e62d63283c3bd1 ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_f2a947b4e0c2a30c ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  struct zwlr_output_mode_v1 *arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_mode)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_76cc6feec5100579 ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_custom_mode)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_c9ca075eb11187f7 ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_position)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_93e434d8967e00cf ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_transform)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_4aa84d8e3979a584 ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  wl_fixed_t arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_scale)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_24a416fc4974daba ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwlr_output_configuration_head_v1_set_adaptive_sync)(arg1, arg2);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_c836cc2551dd443e" hs_bindgen_c836cc2551dd443e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_add_listener@
hs_bindgen_c836cc2551dd443e ::
     RIP.Ptr Zwlr_output_manager_v1
  -> PtrConst.PtrConst Zwlr_output_manager_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_c836cc2551dd443e =
  RIP.fromFFIType hs_bindgen_c836cc2551dd443e_base

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
  hs_bindgen_c836cc2551dd443e

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_3100bf38e0ad0cc0" hs_bindgen_3100bf38e0ad0cc0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_set_user_data@
hs_bindgen_3100bf38e0ad0cc0 ::
     RIP.Ptr Zwlr_output_manager_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_3100bf38e0ad0cc0 =
  RIP.fromFFIType hs_bindgen_3100bf38e0ad0cc0_base

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
  hs_bindgen_3100bf38e0ad0cc0

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_206081ff9a03c212" hs_bindgen_206081ff9a03c212_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_get_user_data@
hs_bindgen_206081ff9a03c212 ::
     RIP.Ptr Zwlr_output_manager_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_206081ff9a03c212 =
  RIP.fromFFIType hs_bindgen_206081ff9a03c212_base

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
  hs_bindgen_206081ff9a03c212

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_dde0d24509f75aef" hs_bindgen_dde0d24509f75aef_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_get_version@
hs_bindgen_dde0d24509f75aef ::
     RIP.Ptr Zwlr_output_manager_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_dde0d24509f75aef =
  RIP.fromFFIType hs_bindgen_dde0d24509f75aef_base

{-| __C declaration:__ @zwlr_output_manager_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 368:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_get_version ::
     RIP.Ptr Zwlr_output_manager_v1
     -- ^ __C declaration:__ @zwlr_output_manager_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_manager_v1_get_version =
  hs_bindgen_dde0d24509f75aef

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_c8367879e5189e4c" hs_bindgen_c8367879e5189e4c_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_destroy@
hs_bindgen_c8367879e5189e4c ::
     RIP.Ptr Zwlr_output_manager_v1
  -> IO ()
hs_bindgen_c8367879e5189e4c =
  RIP.fromFFIType hs_bindgen_c8367879e5189e4c_base

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
  hs_bindgen_c8367879e5189e4c

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_create_configuration@
foreign import ccall unsafe "hs_bindgen_d4145ea8950bb74c" hs_bindgen_d4145ea8950bb74c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_create_configuration@
hs_bindgen_d4145ea8950bb74c ::
     RIP.Ptr Zwlr_output_manager_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO (RIP.Ptr Zwlr_output_configuration_v1)
hs_bindgen_d4145ea8950bb74c =
  RIP.fromFFIType hs_bindgen_d4145ea8950bb74c_base

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
  hs_bindgen_d4145ea8950bb74c

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_3402e721fa2b13b0" hs_bindgen_3402e721fa2b13b0_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_manager_v1_stop@
hs_bindgen_3402e721fa2b13b0 ::
     RIP.Ptr Zwlr_output_manager_v1
  -> IO ()
hs_bindgen_3402e721fa2b13b0 =
  RIP.fromFFIType hs_bindgen_3402e721fa2b13b0_base

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
  hs_bindgen_3402e721fa2b13b0

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_48cfe92b57c17552" hs_bindgen_48cfe92b57c17552_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_add_listener@
hs_bindgen_48cfe92b57c17552 ::
     RIP.Ptr Zwlr_output_head_v1
  -> PtrConst.PtrConst Zwlr_output_head_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_48cfe92b57c17552 =
  RIP.fromFFIType hs_bindgen_48cfe92b57c17552_base

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
  hs_bindgen_48cfe92b57c17552

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_278e2ba94d60a19a" hs_bindgen_278e2ba94d60a19a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_set_user_data@
hs_bindgen_278e2ba94d60a19a ::
     RIP.Ptr Zwlr_output_head_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_278e2ba94d60a19a =
  RIP.fromFFIType hs_bindgen_278e2ba94d60a19a_base

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
  hs_bindgen_278e2ba94d60a19a

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_5ccd3e821089fb65" hs_bindgen_5ccd3e821089fb65_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_get_user_data@
hs_bindgen_5ccd3e821089fb65 ::
     RIP.Ptr Zwlr_output_head_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5ccd3e821089fb65 =
  RIP.fromFFIType hs_bindgen_5ccd3e821089fb65_base

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
  hs_bindgen_5ccd3e821089fb65

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_get_version@
foreign import ccall unsafe "hs_bindgen_955ba58adaaed5ea" hs_bindgen_955ba58adaaed5ea_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_get_version@
hs_bindgen_955ba58adaaed5ea ::
     RIP.Ptr Zwlr_output_head_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_955ba58adaaed5ea =
  RIP.fromFFIType hs_bindgen_955ba58adaaed5ea_base

{-| __C declaration:__ @zwlr_output_head_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 760:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_get_version ::
     RIP.Ptr Zwlr_output_head_v1
     -- ^ __C declaration:__ @zwlr_output_head_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_head_v1_get_version =
  hs_bindgen_955ba58adaaed5ea

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_destroy@
foreign import ccall unsafe "hs_bindgen_65902fad3ee903f9" hs_bindgen_65902fad3ee903f9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_destroy@
hs_bindgen_65902fad3ee903f9 ::
     RIP.Ptr Zwlr_output_head_v1
  -> IO ()
hs_bindgen_65902fad3ee903f9 =
  RIP.fromFFIType hs_bindgen_65902fad3ee903f9_base

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
  hs_bindgen_65902fad3ee903f9

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_release@
foreign import ccall unsafe "hs_bindgen_2c38e5f868774a49" hs_bindgen_2c38e5f868774a49_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_head_v1_release@
hs_bindgen_2c38e5f868774a49 ::
     RIP.Ptr Zwlr_output_head_v1
  -> IO ()
hs_bindgen_2c38e5f868774a49 =
  RIP.fromFFIType hs_bindgen_2c38e5f868774a49_base

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
  hs_bindgen_2c38e5f868774a49

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_5c7abdc3f302b4cc" hs_bindgen_5c7abdc3f302b4cc_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_add_listener@
hs_bindgen_5c7abdc3f302b4cc ::
     RIP.Ptr Zwlr_output_mode_v1
  -> PtrConst.PtrConst Zwlr_output_mode_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_5c7abdc3f302b4cc =
  RIP.fromFFIType hs_bindgen_5c7abdc3f302b4cc_base

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
  hs_bindgen_5c7abdc3f302b4cc

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_31824d4dcc15dd2f" hs_bindgen_31824d4dcc15dd2f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_set_user_data@
hs_bindgen_31824d4dcc15dd2f ::
     RIP.Ptr Zwlr_output_mode_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_31824d4dcc15dd2f =
  RIP.fromFFIType hs_bindgen_31824d4dcc15dd2f_base

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
  hs_bindgen_31824d4dcc15dd2f

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_5993d1b0f809e5d9" hs_bindgen_5993d1b0f809e5d9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_get_user_data@
hs_bindgen_5993d1b0f809e5d9 ::
     RIP.Ptr Zwlr_output_mode_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_5993d1b0f809e5d9 =
  RIP.fromFFIType hs_bindgen_5993d1b0f809e5d9_base

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
  hs_bindgen_5993d1b0f809e5d9

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8daa9a535ab8421a" hs_bindgen_8daa9a535ab8421a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_get_version@
hs_bindgen_8daa9a535ab8421a ::
     RIP.Ptr Zwlr_output_mode_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_8daa9a535ab8421a =
  RIP.fromFFIType hs_bindgen_8daa9a535ab8421a_base

{-| __C declaration:__ @zwlr_output_mode_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 882:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_get_version ::
     RIP.Ptr Zwlr_output_mode_v1
     -- ^ __C declaration:__ @zwlr_output_mode_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_mode_v1_get_version =
  hs_bindgen_8daa9a535ab8421a

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_destroy@
foreign import ccall unsafe "hs_bindgen_ff7877d7f07ba916" hs_bindgen_ff7877d7f07ba916_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_destroy@
hs_bindgen_ff7877d7f07ba916 ::
     RIP.Ptr Zwlr_output_mode_v1
  -> IO ()
hs_bindgen_ff7877d7f07ba916 =
  RIP.fromFFIType hs_bindgen_ff7877d7f07ba916_base

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
  hs_bindgen_ff7877d7f07ba916

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_release@
foreign import ccall unsafe "hs_bindgen_ec9402d68bf37c8e" hs_bindgen_ec9402d68bf37c8e_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_mode_v1_release@
hs_bindgen_ec9402d68bf37c8e ::
     RIP.Ptr Zwlr_output_mode_v1
  -> IO ()
hs_bindgen_ec9402d68bf37c8e =
  RIP.fromFFIType hs_bindgen_ec9402d68bf37c8e_base

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
  hs_bindgen_ec9402d68bf37c8e

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_7bde53c4e1ce2682" hs_bindgen_7bde53c4e1ce2682_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_add_listener@
hs_bindgen_7bde53c4e1ce2682 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> PtrConst.PtrConst Zwlr_output_configuration_v1_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_7bde53c4e1ce2682 =
  RIP.fromFFIType hs_bindgen_7bde53c4e1ce2682_base

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
  hs_bindgen_7bde53c4e1ce2682

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_bb423662c4efe1a6" hs_bindgen_bb423662c4efe1a6_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_set_user_data@
hs_bindgen_bb423662c4efe1a6 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_bb423662c4efe1a6 =
  RIP.fromFFIType hs_bindgen_bb423662c4efe1a6_base

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
  hs_bindgen_bb423662c4efe1a6

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_12e32271976e6217" hs_bindgen_12e32271976e6217_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_get_user_data@
hs_bindgen_12e32271976e6217 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_12e32271976e6217 =
  RIP.fromFFIType hs_bindgen_12e32271976e6217_base

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
  hs_bindgen_12e32271976e6217

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_get_version@
foreign import ccall unsafe "hs_bindgen_20b611479c76c59b" hs_bindgen_20b611479c76c59b_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_get_version@
hs_bindgen_20b611479c76c59b ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_20b611479c76c59b =
  RIP.fromFFIType hs_bindgen_20b611479c76c59b_base

{-| __C declaration:__ @zwlr_output_configuration_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1040:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_get_version ::
     RIP.Ptr Zwlr_output_configuration_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_configuration_v1_get_version =
  hs_bindgen_20b611479c76c59b

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_enable_head@
foreign import ccall unsafe "hs_bindgen_6f2cb47030fd2bae" hs_bindgen_6f2cb47030fd2bae_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_enable_head@
hs_bindgen_6f2cb47030fd2bae ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> RIP.Ptr Zwlr_output_head_v1
  -> IO (RIP.Ptr Zwlr_output_configuration_head_v1)
hs_bindgen_6f2cb47030fd2bae =
  RIP.fromFFIType hs_bindgen_6f2cb47030fd2bae_base

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
  hs_bindgen_6f2cb47030fd2bae

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_disable_head@
foreign import ccall unsafe "hs_bindgen_ccfa6d48724dab83" hs_bindgen_ccfa6d48724dab83_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_disable_head@
hs_bindgen_ccfa6d48724dab83 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> RIP.Ptr Zwlr_output_head_v1
  -> IO ()
hs_bindgen_ccfa6d48724dab83 =
  RIP.fromFFIType hs_bindgen_ccfa6d48724dab83_base

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
  hs_bindgen_ccfa6d48724dab83

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_apply@
foreign import ccall unsafe "hs_bindgen_46ca71a5f714d818" hs_bindgen_46ca71a5f714d818_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_apply@
hs_bindgen_46ca71a5f714d818 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO ()
hs_bindgen_46ca71a5f714d818 =
  RIP.fromFFIType hs_bindgen_46ca71a5f714d818_base

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
  hs_bindgen_46ca71a5f714d818

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_test@
foreign import ccall unsafe "hs_bindgen_7dd2db7b2f2eed43" hs_bindgen_7dd2db7b2f2eed43_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_test@
hs_bindgen_7dd2db7b2f2eed43 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO ()
hs_bindgen_7dd2db7b2f2eed43 =
  RIP.fromFFIType hs_bindgen_7dd2db7b2f2eed43_base

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
  hs_bindgen_7dd2db7b2f2eed43

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_destroy@
foreign import ccall unsafe "hs_bindgen_3c5a5f00e9f949e9" hs_bindgen_3c5a5f00e9f949e9_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_v1_destroy@
hs_bindgen_3c5a5f00e9f949e9 ::
     RIP.Ptr Zwlr_output_configuration_v1
  -> IO ()
hs_bindgen_3c5a5f00e9f949e9 =
  RIP.fromFFIType hs_bindgen_3c5a5f00e9f949e9_base

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
  hs_bindgen_3c5a5f00e9f949e9

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_fddb26124a64e3ee" hs_bindgen_fddb26124a64e3ee_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_user_data@
hs_bindgen_fddb26124a64e3ee ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_fddb26124a64e3ee =
  RIP.fromFFIType hs_bindgen_fddb26124a64e3ee_base

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
  hs_bindgen_fddb26124a64e3ee

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_67b63f72701cb6f5" hs_bindgen_67b63f72701cb6f5_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_get_user_data@
hs_bindgen_67b63f72701cb6f5 ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_67b63f72701cb6f5 =
  RIP.fromFFIType hs_bindgen_67b63f72701cb6f5_base

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
  hs_bindgen_67b63f72701cb6f5

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_get_version@
foreign import ccall unsafe "hs_bindgen_5c2075c8ac49edfa" hs_bindgen_5c2075c8ac49edfa_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_get_version@
hs_bindgen_5c2075c8ac49edfa ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_5c2075c8ac49edfa =
  RIP.fromFFIType hs_bindgen_5c2075c8ac49edfa_base

{-| __C declaration:__ @zwlr_output_configuration_head_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1215:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_get_version ::
     RIP.Ptr Zwlr_output_configuration_head_v1
     -- ^ __C declaration:__ @zwlr_output_configuration_head_v1@
  -> IO HsBindgen.Runtime.LibC.Word32
zwlr_output_configuration_head_v1_get_version =
  hs_bindgen_5c2075c8ac49edfa

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_destroy@
foreign import ccall unsafe "hs_bindgen_e1e62d63283c3bd1" hs_bindgen_e1e62d63283c3bd1_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_destroy@
hs_bindgen_e1e62d63283c3bd1 ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> IO ()
hs_bindgen_e1e62d63283c3bd1 =
  RIP.fromFFIType hs_bindgen_e1e62d63283c3bd1_base

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
  hs_bindgen_e1e62d63283c3bd1

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_mode@
foreign import ccall unsafe "hs_bindgen_f2a947b4e0c2a30c" hs_bindgen_f2a947b4e0c2a30c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_mode@
hs_bindgen_f2a947b4e0c2a30c ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> RIP.Ptr Zwlr_output_mode_v1
  -> IO ()
hs_bindgen_f2a947b4e0c2a30c =
  RIP.fromFFIType hs_bindgen_f2a947b4e0c2a30c_base

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
  hs_bindgen_f2a947b4e0c2a30c

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_custom_mode@
foreign import ccall unsafe "hs_bindgen_76cc6feec5100579" hs_bindgen_76cc6feec5100579_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_custom_mode@
hs_bindgen_76cc6feec5100579 ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_76cc6feec5100579 =
  RIP.fromFFIType hs_bindgen_76cc6feec5100579_base

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
  hs_bindgen_76cc6feec5100579

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_position@
foreign import ccall unsafe "hs_bindgen_c9ca075eb11187f7" hs_bindgen_c9ca075eb11187f7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_position@
hs_bindgen_c9ca075eb11187f7 ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_c9ca075eb11187f7 =
  RIP.fromFFIType hs_bindgen_c9ca075eb11187f7_base

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
  hs_bindgen_c9ca075eb11187f7

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_transform@
foreign import ccall unsafe "hs_bindgen_93e434d8967e00cf" hs_bindgen_93e434d8967e00cf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_transform@
hs_bindgen_93e434d8967e00cf ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_93e434d8967e00cf =
  RIP.fromFFIType hs_bindgen_93e434d8967e00cf_base

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
  hs_bindgen_93e434d8967e00cf

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_scale@
foreign import ccall unsafe "hs_bindgen_4aa84d8e3979a584" hs_bindgen_4aa84d8e3979a584_base ::
     RIP.Ptr RIP.Void
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_scale@
hs_bindgen_4aa84d8e3979a584 ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> Generated.Wayland.Util.Wl_fixed_t
  -> IO ()
hs_bindgen_4aa84d8e3979a584 =
  RIP.fromFFIType hs_bindgen_4aa84d8e3979a584_base

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
  -> Generated.Wayland.Util.Wl_fixed_t
     -- ^ __C declaration:__ @scale@
  -> IO ()
zwlr_output_configuration_head_v1_set_scale =
  hs_bindgen_4aa84d8e3979a584

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_adaptive_sync@
foreign import ccall unsafe "hs_bindgen_24a416fc4974daba" hs_bindgen_24a416fc4974daba_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_Unsafe_zwlr_output_configuration_head_v1_set_adaptive_sync@
hs_bindgen_24a416fc4974daba ::
     RIP.Ptr Zwlr_output_configuration_head_v1
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_24a416fc4974daba =
  RIP.fromFFIType hs_bindgen_24a416fc4974daba_base

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
  hs_bindgen_24a416fc4974daba

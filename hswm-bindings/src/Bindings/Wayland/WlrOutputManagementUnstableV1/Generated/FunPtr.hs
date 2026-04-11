{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr
    ( Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_manager_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_manager_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_manager_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_manager_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_manager_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_manager_v1_create_configuration
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_manager_v1_stop
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_head_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_head_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_head_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_head_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_head_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_head_v1_release
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_mode_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_mode_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_mode_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_mode_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_mode_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_mode_v1_release
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_add_listener
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_enable_head
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_disable_head
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_apply
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_test
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_set_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_get_user_data
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_get_version
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_destroy
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_set_mode
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_set_custom_mode
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_set_position
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_set_transform
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_set_scale
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.FunPtr.zwlr_output_configuration_head_v1_set_adaptive_sync
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
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b82f5bb4372bac4d (void)) ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  struct zwlr_output_manager_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwlr_output_manager_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_49420786d62af558 (void)) ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_manager_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_8e968720df9c84c8 (void)) ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_manager_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_8803bc4089445025 (void)) ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_manager_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_15e1c57a283cc45a (void)) ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_manager_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_create_configuration */"
  , "__attribute__ ((const))"
  , "struct zwlr_output_configuration_v1 *(*hs_bindgen_f35208b0c2321b04 (void)) ("
  , "  struct zwlr_output_manager_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_manager_v1_create_configuration;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_stop */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_94967fc7dd6d38bc (void)) ("
  , "  struct zwlr_output_manager_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_manager_v1_stop;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_cad66b0b292cabb5 (void)) ("
  , "  struct zwlr_output_head_v1 *arg1,"
  , "  struct zwlr_output_head_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwlr_output_head_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_51a8b67ceec72f06 (void)) ("
  , "  struct zwlr_output_head_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_head_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c5a427986310ce4e (void)) ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_head_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_a6af1b7fe9184c52 (void)) ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_head_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1646cd83f02c4f36 (void)) ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_head_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7925cd5f17133c5e (void)) ("
  , "  struct zwlr_output_head_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_head_v1_release;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_0509c0e7c43bd189 (void)) ("
  , "  struct zwlr_output_mode_v1 *arg1,"
  , "  struct zwlr_output_mode_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwlr_output_mode_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_bdaf81a4e036a965 (void)) ("
  , "  struct zwlr_output_mode_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_mode_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_3cd7b4af3c24ccec (void)) ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_mode_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_b38ecb6018b4f2d0 (void)) ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_mode_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4e059a5a11f396d1 (void)) ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_mode_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6476c32ae4673d14 (void)) ("
  , "  struct zwlr_output_mode_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_mode_v1_release;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_31ff3ebe19ddcfdb (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_configuration_v1_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_5eba53132ccbf9ed (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_94c679972fd524f3 (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_fad361301635a5c8 (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_enable_head */"
  , "__attribute__ ((const))"
  , "struct zwlr_output_configuration_head_v1 *(*hs_bindgen_53e3ac0863e6cd15 (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_head_v1 *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_enable_head;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_disable_head */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_02574e543a322535 (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1,"
  , "  struct zwlr_output_head_v1 *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_disable_head;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_apply */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6cb1de186d3cd2a5 (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_apply;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_test */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_87ffdabff3974b56 (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_test;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_75051e143cfedccf (void)) ("
  , "  struct zwlr_output_configuration_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f9ac72ef7a252118 (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_e5701956dbab4e80 (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_74428623fe16ef2f (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_0b4ab2a69f14298b (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_mode */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_146e753977bd12d5 (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  struct zwlr_output_mode_v1 *arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_set_mode;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_custom_mode */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2f341cabbc487c66 (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_set_custom_mode;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_position */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4e011389c9b0a78c (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2,"
  , "  int32_t arg3"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_set_position;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_transform */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_db63a7e9fb827956 (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  int32_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_set_transform;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_scale */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_960f036a089e1212 (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  wl_fixed_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_set_scale;"
  , "}"
  , "/* Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_adaptive_sync */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b36b58b4a58d69c3 (void)) ("
  , "  struct zwlr_output_configuration_head_v1 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &zwlr_output_configuration_head_v1_set_adaptive_sync;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_b82f5bb4372bac4d" hs_bindgen_b82f5bb4372bac4d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_add_listener@
hs_bindgen_b82f5bb4372bac4d :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> (PtrConst.PtrConst Zwlr_output_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_b82f5bb4372bac4d =
  RIP.fromFFIType hs_bindgen_b82f5bb4372bac4d_base

{-# NOINLINE zwlr_output_manager_v1_add_listener #-}
{-|

  > iface_zwlr_output_manager_v1

__C declaration:__ @zwlr_output_manager_v1_add_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 321:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> (PtrConst.PtrConst Zwlr_output_manager_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwlr_output_manager_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_b82f5bb4372bac4d

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_49420786d62af558" hs_bindgen_49420786d62af558_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_set_user_data@
hs_bindgen_49420786d62af558 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_49420786d62af558 =
  RIP.fromFFIType hs_bindgen_49420786d62af558_base

{-# NOINLINE zwlr_output_manager_v1_set_user_data #-}
{-|

  > iface_zwlr_output_manager_v1

__C declaration:__ @zwlr_output_manager_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 355:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_output_manager_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_49420786d62af558

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_8e968720df9c84c8" hs_bindgen_8e968720df9c84c8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_get_user_data@
hs_bindgen_8e968720df9c84c8 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_8e968720df9c84c8 =
  RIP.fromFFIType hs_bindgen_8e968720df9c84c8_base

{-# NOINLINE zwlr_output_manager_v1_get_user_data #-}
{-|

  > iface_zwlr_output_manager_v1

__C declaration:__ @zwlr_output_manager_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 362:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_output_manager_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_8e968720df9c84c8

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_get_version@
foreign import ccall unsafe "hs_bindgen_8803bc4089445025" hs_bindgen_8803bc4089445025_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_get_version@
hs_bindgen_8803bc4089445025 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_8803bc4089445025 =
  RIP.fromFFIType hs_bindgen_8803bc4089445025_base

{-# NOINLINE zwlr_output_manager_v1_get_version #-}
{-| __C declaration:__ @zwlr_output_manager_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 368:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_output_manager_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_8803bc4089445025

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_destroy@
foreign import ccall unsafe "hs_bindgen_15e1c57a283cc45a" hs_bindgen_15e1c57a283cc45a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_destroy@
hs_bindgen_15e1c57a283cc45a :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> IO ()))
hs_bindgen_15e1c57a283cc45a =
  RIP.fromFFIType hs_bindgen_15e1c57a283cc45a_base

{-# NOINLINE zwlr_output_manager_v1_destroy #-}
{-|

  > iface_zwlr_output_manager_v1

__C declaration:__ @zwlr_output_manager_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 375:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> IO ())
zwlr_output_manager_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_15e1c57a283cc45a

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_create_configuration@
foreign import ccall unsafe "hs_bindgen_f35208b0c2321b04" hs_bindgen_f35208b0c2321b04_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_create_configuration@
hs_bindgen_f35208b0c2321b04 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Zwlr_output_configuration_v1)))
hs_bindgen_f35208b0c2321b04 =
  RIP.fromFFIType hs_bindgen_f35208b0c2321b04_base

{-# NOINLINE zwlr_output_manager_v1_create_configuration #-}
{-|

  > iface_zwlr_output_manager_v1

  Create a new output configuration object. This allows to update head properties.

__C declaration:__ @zwlr_output_manager_v1_create_configuration@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 387:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_create_configuration :: RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO (RIP.Ptr Zwlr_output_configuration_v1))
zwlr_output_manager_v1_create_configuration =
  RIP.unsafePerformIO hs_bindgen_f35208b0c2321b04

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_stop@
foreign import ccall unsafe "hs_bindgen_94967fc7dd6d38bc" hs_bindgen_94967fc7dd6d38bc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_manager_v1_stop@
hs_bindgen_94967fc7dd6d38bc :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> IO ()))
hs_bindgen_94967fc7dd6d38bc =
  RIP.fromFFIType hs_bindgen_94967fc7dd6d38bc_base

{-# NOINLINE zwlr_output_manager_v1_stop #-}
{-|

  > iface_zwlr_output_manager_v1

  Indicates the client no longer wishes to receive events for output configuration changes. However the compositor may emit further events, until the finished event is emitted.

  The client must not send any more requests after this one.

__C declaration:__ @zwlr_output_manager_v1_stop@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 407:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_manager_v1_stop :: RIP.FunPtr ((RIP.Ptr Zwlr_output_manager_v1) -> IO ())
zwlr_output_manager_v1_stop =
  RIP.unsafePerformIO hs_bindgen_94967fc7dd6d38bc

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_cad66b0b292cabb5" hs_bindgen_cad66b0b292cabb5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_add_listener@
hs_bindgen_cad66b0b292cabb5 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst Zwlr_output_head_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_cad66b0b292cabb5 =
  RIP.fromFFIType hs_bindgen_cad66b0b292cabb5_base

{-# NOINLINE zwlr_output_head_v1_add_listener #-}
{-|

  > iface_zwlr_output_head_v1

__C declaration:__ @zwlr_output_head_v1_add_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 674:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst Zwlr_output_head_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwlr_output_head_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_cad66b0b292cabb5

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_51a8b67ceec72f06" hs_bindgen_51a8b67ceec72f06_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_set_user_data@
hs_bindgen_51a8b67ceec72f06 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_51a8b67ceec72f06 =
  RIP.fromFFIType hs_bindgen_51a8b67ceec72f06_base

{-# NOINLINE zwlr_output_head_v1_set_user_data #-}
{-|

  > iface_zwlr_output_head_v1

__C declaration:__ @zwlr_output_head_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 747:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_output_head_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_51a8b67ceec72f06

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_c5a427986310ce4e" hs_bindgen_c5a427986310ce4e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_get_user_data@
hs_bindgen_c5a427986310ce4e :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c5a427986310ce4e =
  RIP.fromFFIType hs_bindgen_c5a427986310ce4e_base

{-# NOINLINE zwlr_output_head_v1_get_user_data #-}
{-|

  > iface_zwlr_output_head_v1

__C declaration:__ @zwlr_output_head_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 754:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_output_head_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c5a427986310ce4e

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_get_version@
foreign import ccall unsafe "hs_bindgen_a6af1b7fe9184c52" hs_bindgen_a6af1b7fe9184c52_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_get_version@
hs_bindgen_a6af1b7fe9184c52 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_a6af1b7fe9184c52 =
  RIP.fromFFIType hs_bindgen_a6af1b7fe9184c52_base

{-# NOINLINE zwlr_output_head_v1_get_version #-}
{-| __C declaration:__ @zwlr_output_head_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 760:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_output_head_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_a6af1b7fe9184c52

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_destroy@
foreign import ccall unsafe "hs_bindgen_1646cd83f02c4f36" hs_bindgen_1646cd83f02c4f36_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_destroy@
hs_bindgen_1646cd83f02c4f36 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> IO ()))
hs_bindgen_1646cd83f02c4f36 =
  RIP.fromFFIType hs_bindgen_1646cd83f02c4f36_base

{-# NOINLINE zwlr_output_head_v1_destroy #-}
{-|

  > iface_zwlr_output_head_v1

__C declaration:__ @zwlr_output_head_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 767:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> IO ())
zwlr_output_head_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_1646cd83f02c4f36

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_release@
foreign import ccall unsafe "hs_bindgen_7925cd5f17133c5e" hs_bindgen_7925cd5f17133c5e_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_head_v1_release@
hs_bindgen_7925cd5f17133c5e :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> IO ()))
hs_bindgen_7925cd5f17133c5e =
  RIP.fromFFIType hs_bindgen_7925cd5f17133c5e_base

{-# NOINLINE zwlr_output_head_v1_release #-}
{-|

  > iface_zwlr_output_head_v1

  This request indicates that the client will no longer use this head object.

__C declaration:__ @zwlr_output_head_v1_release@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 779:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_head_v1_release :: RIP.FunPtr ((RIP.Ptr Zwlr_output_head_v1) -> IO ())
zwlr_output_head_v1_release =
  RIP.unsafePerformIO hs_bindgen_7925cd5f17133c5e

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_0509c0e7c43bd189" hs_bindgen_0509c0e7c43bd189_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_add_listener@
hs_bindgen_0509c0e7c43bd189 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> (PtrConst.PtrConst Zwlr_output_mode_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_0509c0e7c43bd189 =
  RIP.fromFFIType hs_bindgen_0509c0e7c43bd189_base

{-# NOINLINE zwlr_output_mode_v1_add_listener #-}
{-|

  > iface_zwlr_output_mode_v1

__C declaration:__ @zwlr_output_mode_v1_add_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 836:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> (PtrConst.PtrConst Zwlr_output_mode_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwlr_output_mode_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_0509c0e7c43bd189

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_bdaf81a4e036a965" hs_bindgen_bdaf81a4e036a965_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_set_user_data@
hs_bindgen_bdaf81a4e036a965 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_bdaf81a4e036a965 =
  RIP.fromFFIType hs_bindgen_bdaf81a4e036a965_base

{-# NOINLINE zwlr_output_mode_v1_set_user_data #-}
{-|

  > iface_zwlr_output_mode_v1

__C declaration:__ @zwlr_output_mode_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 869:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_output_mode_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_bdaf81a4e036a965

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_3cd7b4af3c24ccec" hs_bindgen_3cd7b4af3c24ccec_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_get_user_data@
hs_bindgen_3cd7b4af3c24ccec :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_3cd7b4af3c24ccec =
  RIP.fromFFIType hs_bindgen_3cd7b4af3c24ccec_base

{-# NOINLINE zwlr_output_mode_v1_get_user_data #-}
{-|

  > iface_zwlr_output_mode_v1

__C declaration:__ @zwlr_output_mode_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 876:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_output_mode_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_3cd7b4af3c24ccec

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_get_version@
foreign import ccall unsafe "hs_bindgen_b38ecb6018b4f2d0" hs_bindgen_b38ecb6018b4f2d0_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_get_version@
hs_bindgen_b38ecb6018b4f2d0 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_b38ecb6018b4f2d0 =
  RIP.fromFFIType hs_bindgen_b38ecb6018b4f2d0_base

{-# NOINLINE zwlr_output_mode_v1_get_version #-}
{-| __C declaration:__ @zwlr_output_mode_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 882:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_output_mode_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_b38ecb6018b4f2d0

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_destroy@
foreign import ccall unsafe "hs_bindgen_4e059a5a11f396d1" hs_bindgen_4e059a5a11f396d1_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_destroy@
hs_bindgen_4e059a5a11f396d1 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
hs_bindgen_4e059a5a11f396d1 =
  RIP.fromFFIType hs_bindgen_4e059a5a11f396d1_base

{-# NOINLINE zwlr_output_mode_v1_destroy #-}
{-|

  > iface_zwlr_output_mode_v1

__C declaration:__ @zwlr_output_mode_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 889:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> IO ())
zwlr_output_mode_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_4e059a5a11f396d1

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_release@
foreign import ccall unsafe "hs_bindgen_6476c32ae4673d14" hs_bindgen_6476c32ae4673d14_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_mode_v1_release@
hs_bindgen_6476c32ae4673d14 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
hs_bindgen_6476c32ae4673d14 =
  RIP.fromFFIType hs_bindgen_6476c32ae4673d14_base

{-# NOINLINE zwlr_output_mode_v1_release #-}
{-|

  > iface_zwlr_output_mode_v1

  This request indicates that the client will no longer use this mode object.

__C declaration:__ @zwlr_output_mode_v1_release@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 901:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_mode_v1_release :: RIP.FunPtr ((RIP.Ptr Zwlr_output_mode_v1) -> IO ())
zwlr_output_mode_v1_release =
  RIP.unsafePerformIO hs_bindgen_6476c32ae4673d14

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_add_listener@
foreign import ccall unsafe "hs_bindgen_31ff3ebe19ddcfdb" hs_bindgen_31ff3ebe19ddcfdb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_add_listener@
hs_bindgen_31ff3ebe19ddcfdb :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> (PtrConst.PtrConst Zwlr_output_configuration_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_31ff3ebe19ddcfdb =
  RIP.fromFFIType hs_bindgen_31ff3ebe19ddcfdb_base

{-# NOINLINE zwlr_output_configuration_v1_add_listener #-}
{-|

  > iface_zwlr_output_configuration_v1

__C declaration:__ @zwlr_output_configuration_v1_add_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 978:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_add_listener :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> (PtrConst.PtrConst Zwlr_output_configuration_v1_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwlr_output_configuration_v1_add_listener =
  RIP.unsafePerformIO hs_bindgen_31ff3ebe19ddcfdb

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_5eba53132ccbf9ed" hs_bindgen_5eba53132ccbf9ed_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_set_user_data@
hs_bindgen_5eba53132ccbf9ed :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_5eba53132ccbf9ed =
  RIP.fromFFIType hs_bindgen_5eba53132ccbf9ed_base

{-# NOINLINE zwlr_output_configuration_v1_set_user_data #-}
{-|

  > iface_zwlr_output_configuration_v1

__C declaration:__ @zwlr_output_configuration_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1027:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_output_configuration_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_5eba53132ccbf9ed

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_94c679972fd524f3" hs_bindgen_94c679972fd524f3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_get_user_data@
hs_bindgen_94c679972fd524f3 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_94c679972fd524f3 =
  RIP.fromFFIType hs_bindgen_94c679972fd524f3_base

{-# NOINLINE zwlr_output_configuration_v1_get_user_data #-}
{-|

  > iface_zwlr_output_configuration_v1

__C declaration:__ @zwlr_output_configuration_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1034:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_output_configuration_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_94c679972fd524f3

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_get_version@
foreign import ccall unsafe "hs_bindgen_fad361301635a5c8" hs_bindgen_fad361301635a5c8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_get_version@
hs_bindgen_fad361301635a5c8 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_fad361301635a5c8 =
  RIP.fromFFIType hs_bindgen_fad361301635a5c8_base

{-# NOINLINE zwlr_output_configuration_v1_get_version #-}
{-| __C declaration:__ @zwlr_output_configuration_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1040:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_output_configuration_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_fad361301635a5c8

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_enable_head@
foreign import ccall unsafe "hs_bindgen_53e3ac0863e6cd15" hs_bindgen_53e3ac0863e6cd15_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_enable_head@
hs_bindgen_53e3ac0863e6cd15 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO (RIP.Ptr Zwlr_output_configuration_head_v1)))
hs_bindgen_53e3ac0863e6cd15 =
  RIP.fromFFIType hs_bindgen_53e3ac0863e6cd15_base

{-# NOINLINE zwlr_output_configuration_v1_enable_head #-}
{-|

  > iface_zwlr_output_configuration_v1

  Enable a head. This request creates a head configuration object that can be used to change the head's properties.

__C declaration:__ @zwlr_output_configuration_v1_enable_head@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1052:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_enable_head :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO (RIP.Ptr Zwlr_output_configuration_head_v1))
zwlr_output_configuration_v1_enable_head =
  RIP.unsafePerformIO hs_bindgen_53e3ac0863e6cd15

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_disable_head@
foreign import ccall unsafe "hs_bindgen_02574e543a322535" hs_bindgen_02574e543a322535_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_disable_head@
hs_bindgen_02574e543a322535 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()))
hs_bindgen_02574e543a322535 =
  RIP.fromFFIType hs_bindgen_02574e543a322535_base

{-# NOINLINE zwlr_output_configuration_v1_disable_head #-}
{-|

  > iface_zwlr_output_configuration_v1

  Disable a head.

__C declaration:__ @zwlr_output_configuration_v1_disable_head@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1068:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_disable_head :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())
zwlr_output_configuration_v1_disable_head =
  RIP.unsafePerformIO hs_bindgen_02574e543a322535

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_apply@
foreign import ccall unsafe "hs_bindgen_6cb1de186d3cd2a5" hs_bindgen_6cb1de186d3cd2a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_apply@
hs_bindgen_6cb1de186d3cd2a5 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO ()))
hs_bindgen_6cb1de186d3cd2a5 =
  RIP.fromFFIType hs_bindgen_6cb1de186d3cd2a5_base

{-# NOINLINE zwlr_output_configuration_v1_apply #-}
{-|

  > iface_zwlr_output_configuration_v1

  Apply the new output configuration.

  In case the configuration is successfully applied, there is no guarantee that the new output state matches completely the requested configuration. For instance, a compositor might round the scale if it doesn't support fractional scaling.

  After this request has been sent, the compositor must respond with an succeeded, failed or cancelled event. Sending a request that isn't the destructor is a protocol error.

__C declaration:__ @zwlr_output_configuration_v1_apply@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1089:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_apply :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO ())
zwlr_output_configuration_v1_apply =
  RIP.unsafePerformIO hs_bindgen_6cb1de186d3cd2a5

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_test@
foreign import ccall unsafe "hs_bindgen_87ffdabff3974b56" hs_bindgen_87ffdabff3974b56_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_test@
hs_bindgen_87ffdabff3974b56 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO ()))
hs_bindgen_87ffdabff3974b56 =
  RIP.fromFFIType hs_bindgen_87ffdabff3974b56_base

{-# NOINLINE zwlr_output_configuration_v1_test #-}
{-|

  > iface_zwlr_output_configuration_v1

  Test the new output configuration. The configuration won't be applied, but will only be validated.

  Even if the compositor succeeds to test a configuration, applying it may fail.

  After this request has been sent, the compositor must respond with an succeeded, failed or cancelled event. Sending a request that isn't the destructor is a protocol error.

__C declaration:__ @zwlr_output_configuration_v1_test@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1109:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_test :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO ())
zwlr_output_configuration_v1_test =
  RIP.unsafePerformIO hs_bindgen_87ffdabff3974b56

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_destroy@
foreign import ccall unsafe "hs_bindgen_75051e143cfedccf" hs_bindgen_75051e143cfedccf_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_v1_destroy@
hs_bindgen_75051e143cfedccf :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO ()))
hs_bindgen_75051e143cfedccf =
  RIP.fromFFIType hs_bindgen_75051e143cfedccf_base

{-# NOINLINE zwlr_output_configuration_v1_destroy #-}
{-|

  > iface_zwlr_output_configuration_v1

  Using this request a client can tell the compositor that it is not going to use the configuration object anymore. Any changes to the outputs that have not been applied will be discarded.

  This request also destroys wlr_output_configuration_head objects created via this object.

__C declaration:__ @zwlr_output_configuration_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1126:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_v1) -> IO ())
zwlr_output_configuration_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_75051e143cfedccf

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_user_data@
foreign import ccall unsafe "hs_bindgen_f9ac72ef7a252118" hs_bindgen_f9ac72ef7a252118_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_user_data@
hs_bindgen_f9ac72ef7a252118 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_f9ac72ef7a252118 =
  RIP.fromFFIType hs_bindgen_f9ac72ef7a252118_base

{-# NOINLINE zwlr_output_configuration_head_v1_set_user_data #-}
{-|

  > iface_zwlr_output_configuration_head_v1

__C declaration:__ @zwlr_output_configuration_head_v1_set_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1202:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> (RIP.Ptr RIP.Void) -> IO ())
zwlr_output_configuration_head_v1_set_user_data =
  RIP.unsafePerformIO hs_bindgen_f9ac72ef7a252118

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_get_user_data@
foreign import ccall unsafe "hs_bindgen_e5701956dbab4e80" hs_bindgen_e5701956dbab4e80_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_get_user_data@
hs_bindgen_e5701956dbab4e80 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_e5701956dbab4e80 =
  RIP.fromFFIType hs_bindgen_e5701956dbab4e80_base

{-# NOINLINE zwlr_output_configuration_head_v1_get_user_data #-}
{-|

  > iface_zwlr_output_configuration_head_v1

__C declaration:__ @zwlr_output_configuration_head_v1_get_user_data@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1209:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> IO (RIP.Ptr RIP.Void))
zwlr_output_configuration_head_v1_get_user_data =
  RIP.unsafePerformIO hs_bindgen_e5701956dbab4e80

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_get_version@
foreign import ccall unsafe "hs_bindgen_74428623fe16ef2f" hs_bindgen_74428623fe16ef2f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_get_version@
hs_bindgen_74428623fe16ef2f :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_74428623fe16ef2f =
  RIP.fromFFIType hs_bindgen_74428623fe16ef2f_base

{-# NOINLINE zwlr_output_configuration_head_v1_get_version #-}
{-| __C declaration:__ @zwlr_output_configuration_head_v1_get_version@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1215:1@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_get_version :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> IO HsBindgen.Runtime.LibC.Word32)
zwlr_output_configuration_head_v1_get_version =
  RIP.unsafePerformIO hs_bindgen_74428623fe16ef2f

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_destroy@
foreign import ccall unsafe "hs_bindgen_0b4ab2a69f14298b" hs_bindgen_0b4ab2a69f14298b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_destroy@
hs_bindgen_0b4ab2a69f14298b :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> IO ()))
hs_bindgen_0b4ab2a69f14298b =
  RIP.fromFFIType hs_bindgen_0b4ab2a69f14298b_base

{-# NOINLINE zwlr_output_configuration_head_v1_destroy #-}
{-|

  > iface_zwlr_output_configuration_head_v1

__C declaration:__ @zwlr_output_configuration_head_v1_destroy@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1222:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_destroy :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> IO ())
zwlr_output_configuration_head_v1_destroy =
  RIP.unsafePerformIO hs_bindgen_0b4ab2a69f14298b

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_mode@
foreign import ccall unsafe "hs_bindgen_146e753977bd12d5" hs_bindgen_146e753977bd12d5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_mode@
hs_bindgen_146e753977bd12d5 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
hs_bindgen_146e753977bd12d5 =
  RIP.fromFFIType hs_bindgen_146e753977bd12d5_base

{-# NOINLINE zwlr_output_configuration_head_v1_set_mode #-}
{-|

  > iface_zwlr_output_configuration_head_v1

  This request sets the head's mode.

__C declaration:__ @zwlr_output_configuration_head_v1_set_mode@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1233:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_mode :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
zwlr_output_configuration_head_v1_set_mode =
  RIP.unsafePerformIO hs_bindgen_146e753977bd12d5

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_custom_mode@
foreign import ccall unsafe "hs_bindgen_2f341cabbc487c66" hs_bindgen_2f341cabbc487c66_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_custom_mode@
hs_bindgen_2f341cabbc487c66 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_2f341cabbc487c66 =
  RIP.fromFFIType hs_bindgen_2f341cabbc487c66_base

{-# NOINLINE zwlr_output_configuration_head_v1_set_custom_mode #-}
{-|

  > iface_zwlr_output_configuration_head_v1

  This request assigns a custom mode to the head. The size is given in physical hardware units of the output device. If set to zero, the refresh rate is unspecified.

  It is a protocol error to set both a mode and a custom mode.

__C declaration:__ @zwlr_output_configuration_head_v1_set_custom_mode@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1249:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_custom_mode :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
zwlr_output_configuration_head_v1_set_custom_mode =
  RIP.unsafePerformIO hs_bindgen_2f341cabbc487c66

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_position@
foreign import ccall unsafe "hs_bindgen_4e011389c9b0a78c" hs_bindgen_4e011389c9b0a78c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_position@
hs_bindgen_4e011389c9b0a78c :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_4e011389c9b0a78c =
  RIP.fromFFIType hs_bindgen_4e011389c9b0a78c_base

{-# NOINLINE zwlr_output_configuration_head_v1_set_position #-}
{-|

  > iface_zwlr_output_configuration_head_v1

  This request sets the head's position in the global compositor space.

__C declaration:__ @zwlr_output_configuration_head_v1_set_position@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1261:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_position :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
zwlr_output_configuration_head_v1_set_position =
  RIP.unsafePerformIO hs_bindgen_4e011389c9b0a78c

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_transform@
foreign import ccall unsafe "hs_bindgen_db63a7e9fb827956" hs_bindgen_db63a7e9fb827956_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_transform@
hs_bindgen_db63a7e9fb827956 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_db63a7e9fb827956 =
  RIP.fromFFIType hs_bindgen_db63a7e9fb827956_base

{-# NOINLINE zwlr_output_configuration_head_v1_set_transform #-}
{-|

  > iface_zwlr_output_configuration_head_v1

  This request sets the head's transform.

__C declaration:__ @zwlr_output_configuration_head_v1_set_transform@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1273:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_transform :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
zwlr_output_configuration_head_v1_set_transform =
  RIP.unsafePerformIO hs_bindgen_db63a7e9fb827956

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_scale@
foreign import ccall unsafe "hs_bindgen_960f036a089e1212" hs_bindgen_960f036a089e1212_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_scale@
hs_bindgen_960f036a089e1212 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_960f036a089e1212 =
  RIP.fromFFIType hs_bindgen_960f036a089e1212_base

{-# NOINLINE zwlr_output_configuration_head_v1_set_scale #-}
{-|

  > iface_zwlr_output_configuration_head_v1

  This request sets the head's scale.

__C declaration:__ @zwlr_output_configuration_head_v1_set_scale@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1285:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_scale :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
zwlr_output_configuration_head_v1_set_scale =
  RIP.unsafePerformIO hs_bindgen_960f036a089e1212

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_adaptive_sync@
foreign import ccall unsafe "hs_bindgen_b36b58b4a58d69c3" hs_bindgen_b36b58b4a58d69c3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrOutputManagementUnstableV1_Generated_Bindings.Wayland.WlrOutputManagementUnstableV1.Generated_get_zwlr_output_configuration_head_v1_set_adaptive_sync@
hs_bindgen_b36b58b4a58d69c3 :: IO (RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_b36b58b4a58d69c3 =
  RIP.fromFFIType hs_bindgen_b36b58b4a58d69c3_base

{-# NOINLINE zwlr_output_configuration_head_v1_set_adaptive_sync #-}
{-|

  > iface_zwlr_output_configuration_head_v1

  This request enables/disables adaptive sync. Adaptive sync is also known as Variable Refresh Rate or VRR.

__C declaration:__ @zwlr_output_configuration_head_v1_set_adaptive_sync@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1298:1@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zwlr_output_configuration_head_v1_set_adaptive_sync :: RIP.FunPtr ((RIP.Ptr Zwlr_output_configuration_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
zwlr_output_configuration_head_v1_set_adaptive_sync =
  RIP.unsafePerformIO hs_bindgen_b36b58b4a58d69c3

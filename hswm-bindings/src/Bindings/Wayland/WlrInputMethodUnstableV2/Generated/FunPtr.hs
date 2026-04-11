{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr
    ( Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_commit_string
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_set_preedit_string
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_delete_surrounding_text
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_commit
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_get_input_popup_surface
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_grab_keyboard
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_popup_surface_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_popup_surface_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_popup_surface_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_popup_surface_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_popup_surface_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_keyboard_grab_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_keyboard_grab_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_keyboard_grab_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_keyboard_grab_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_keyboard_grab_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_keyboard_grab_v2_release
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_manager_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_manager_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_manager_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_manager_v2_get_input_method
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.FunPtr.zwp_input_method_manager_v2_destroy
    )
  where

import qualified Bindings.Wayland.Client.Generated
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Bindings.Wayland.WlrInputMethodUnstableV2.Generated

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <input-method-unstable-v2-client-protocol.h>"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_c33f62911fd4019f (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct zwp_input_method_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_901a6fda55ed1042 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c09a97945770a483 (void)) ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7158b9b72be673a5 (void)) ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_commit_string */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3d18a94cd4c845e5 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_commit_string;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_set_preedit_string */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_a536616c5a1c4710 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_set_preedit_string;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_delete_surrounding_text */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_f1cb7faeb79778fb (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_delete_surrounding_text;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4725e5feb92da63d (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_commit;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_input_popup_surface */"
  , "__attribute__ ((const))"
  , "struct zwp_input_popup_surface_v2 *(*hs_bindgen_de9297d2280cf2d8 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_get_input_popup_surface;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_grab_keyboard */"
  , "__attribute__ ((const))"
  , "struct zwp_input_method_keyboard_grab_v2 *(*hs_bindgen_31d7beac59bbd7df (void)) ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_grab_keyboard;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_7ac909d56c729e99 (void)) ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_979581092a8bfe70 (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  struct zwp_input_popup_surface_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4a998338b9fe95f4 (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c45741f20fef972a (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_cff54cc35687715c (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_09956b22e71e2d12 (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_9b9e0978df6bb206 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  struct zwp_input_method_keyboard_grab_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_add_listener;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_fabd79448331e5b2 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c6603fa5dfb80705 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_825cf1fe51af3b38 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3f5887a8f9a58c4a (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_destroy;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6a794f0a5285735b (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_release;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_6e0289f097ae82c3 (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_set_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_a0addb999fa40083 (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_get_user_data;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_7427cb564d494932 (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_get_version;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_input_method */"
  , "__attribute__ ((const))"
  , "struct zwp_input_method_v2 *(*hs_bindgen_21320ea233f34b22 (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_get_input_method;"
  , "}"
  , "/* Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_19c4ffa7f607692c (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_destroy;"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_c33f62911fd4019f" hs_bindgen_c33f62911fd4019f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_add_listener@
hs_bindgen_c33f62911fd4019f :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst Zwp_input_method_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_c33f62911fd4019f =
  RIP.fromFFIType hs_bindgen_c33f62911fd4019f_base

{-# NOINLINE zwp_input_method_v2_add_listener #-}
{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 387:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_add_listener :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst Zwp_input_method_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwp_input_method_v2_add_listener =
  RIP.unsafePerformIO hs_bindgen_c33f62911fd4019f

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_901a6fda55ed1042" hs_bindgen_901a6fda55ed1042_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_set_user_data@
hs_bindgen_901a6fda55ed1042 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_901a6fda55ed1042 =
  RIP.fromFFIType hs_bindgen_901a6fda55ed1042_base

{-# NOINLINE zwp_input_method_v2_set_user_data #-}
{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 462:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (RIP.Ptr RIP.Void) -> IO ())
zwp_input_method_v2_set_user_data =
  RIP.unsafePerformIO hs_bindgen_901a6fda55ed1042

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_c09a97945770a483" hs_bindgen_c09a97945770a483_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_user_data@
hs_bindgen_c09a97945770a483 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c09a97945770a483 =
  RIP.fromFFIType hs_bindgen_c09a97945770a483_base

{-# NOINLINE zwp_input_method_v2_get_user_data #-}
{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 469:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO (RIP.Ptr RIP.Void))
zwp_input_method_v2_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c09a97945770a483

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_version@
foreign import ccall unsafe "hs_bindgen_7158b9b72be673a5" hs_bindgen_7158b9b72be673a5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_version@
hs_bindgen_7158b9b72be673a5 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7158b9b72be673a5 =
  RIP.fromFFIType hs_bindgen_7158b9b72be673a5_base

{-# NOINLINE zwp_input_method_v2_get_version #-}
{-| __C declaration:__ @zwp_input_method_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 475:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_version :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO HsBindgen.Runtime.LibC.Word32)
zwp_input_method_v2_get_version =
  RIP.unsafePerformIO hs_bindgen_7158b9b72be673a5

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_commit_string@
foreign import ccall unsafe "hs_bindgen_3d18a94cd4c845e5" hs_bindgen_3d18a94cd4c845e5_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_commit_string@
hs_bindgen_3d18a94cd4c845e5 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_3d18a94cd4c845e5 =
  RIP.fromFFIType hs_bindgen_3d18a94cd4c845e5_base

{-# NOINLINE zwp_input_method_v2_commit_string #-}
{-|

  > iface_zwp_input_method_v2

  Send the commit string text for insertion to the application.

  Inserts a string at current cursor position (see commit event sequence). The string to commit could be either just a single character after a key press or the result of some composing.

  The argument text is a buffer containing the string to insert. There is a maximum length of wayland messages, so text can not be longer than 4000 bytes.

  Values set with this event are double-buffered. They must be applied and reset to initial on the next zwp_text_input_v3.commit request.

  The initial value of text is an empty string.

__C declaration:__ @zwp_input_method_v2_commit_string@

__defined at:__ @input-method-unstable-v2-client-protocol.h 499:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_commit_string :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
zwp_input_method_v2_commit_string =
  RIP.unsafePerformIO hs_bindgen_3d18a94cd4c845e5

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_set_preedit_string@
foreign import ccall unsafe "hs_bindgen_a536616c5a1c4710" hs_bindgen_a536616c5a1c4710_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_set_preedit_string@
hs_bindgen_a536616c5a1c4710 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_a536616c5a1c4710 =
  RIP.fromFFIType hs_bindgen_a536616c5a1c4710_base

{-# NOINLINE zwp_input_method_v2_set_preedit_string #-}
{-|

  > iface_zwp_input_method_v2

  Send the pre-edit string text to the application text input.

  Place a new composing text (pre-edit) at the current cursor position. Any previously set composing text must be removed. Any previously existing selected text must be removed. The cursor is moved to a new position within the preedit string.

  The argument text is a buffer containing the preedit string. There is a maximum length of wayland messages, so text can not be longer than 4000 bytes.

  The arguments cursor_begin and cursor_end are counted in bytes relative to the beginning of the submitted string buffer. Cursor should be hidden by the text input when both are equal to -1.

  cursor_begin indicates the beginning of the cursor. cursor_end indicates the end of the cursor. It may be equal or different than cursor_begin.

  Values set with this event are double-buffered. They must be applied on the next zwp_input_method_v2.commit event.

  The initial value of text is an empty string. The initial value of cursor_begin, and cursor_end are both 0.

__C declaration:__ @zwp_input_method_v2_set_preedit_string@

__defined at:__ @input-method-unstable-v2-client-protocol.h 534:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_set_preedit_string :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
zwp_input_method_v2_set_preedit_string =
  RIP.unsafePerformIO hs_bindgen_a536616c5a1c4710

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_delete_surrounding_text@
foreign import ccall unsafe "hs_bindgen_f1cb7faeb79778fb" hs_bindgen_f1cb7faeb79778fb_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_delete_surrounding_text@
hs_bindgen_f1cb7faeb79778fb :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_f1cb7faeb79778fb =
  RIP.fromFFIType hs_bindgen_f1cb7faeb79778fb_base

{-# NOINLINE zwp_input_method_v2_delete_surrounding_text #-}
{-|

  > iface_zwp_input_method_v2

  Remove the surrounding text.

  before_length and after_length are the number of bytes before and after the current cursor index (excluding the preedit text) to delete.

  If any preedit text is present, it is replaced with the cursor for the purpose of this event. In effect before_length is counted from the beginning of preedit text, and after_length from its end (see commit event sequence).

  Values set with this event are double-buffered. They must be applied and reset to initial on the next zwp_input_method_v2.commit request.

  The initial values of both before_length and after_length are 0.

__C declaration:__ @zwp_input_method_v2_delete_surrounding_text@

__defined at:__ @input-method-unstable-v2-client-protocol.h 559:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_delete_surrounding_text :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
zwp_input_method_v2_delete_surrounding_text =
  RIP.unsafePerformIO hs_bindgen_f1cb7faeb79778fb

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_commit@
foreign import ccall unsafe "hs_bindgen_4725e5feb92da63d" hs_bindgen_4725e5feb92da63d_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_commit@
hs_bindgen_4725e5feb92da63d :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_4725e5feb92da63d =
  RIP.fromFFIType hs_bindgen_4725e5feb92da63d_base

{-# NOINLINE zwp_input_method_v2_commit #-}
{-|

  > iface_zwp_input_method_v2

  Apply state changes from commit_string, set_preedit_string and delete_surrounding_text requests.

  The state relating to these events is double-buffered, and each one modifies the pending state. This request replaces the current state with the pending state.

  The connected text input is expected to proceed by evaluating the changes in the following order:

  1. Replace existing preedit string with the cursor.

  2. Delete requested surrounding text.

  3. Insert commit string with the cursor at its end.

  4. Calculate surrounding text to send.

  5. Insert new preedit text in cursor position.

  6. Place cursor inside preedit text.

  The serial number reflects the last state of the zwp_input_method_v2 object known to the client. The value of the serial argument must be equal to the number of done events already issued by that object. When the compositor receives a commit request with a serial different than the number of past done events, it must proceed as normal, except it should not change the current state of the zwp_input_method_v2 object.

__C declaration:__ @zwp_input_method_v2_commit@

__defined at:__ @input-method-unstable-v2-client-protocol.h 593:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_commit :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
zwp_input_method_v2_commit =
  RIP.unsafePerformIO hs_bindgen_4725e5feb92da63d

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_input_popup_surface@
foreign import ccall unsafe "hs_bindgen_de9297d2280cf2d8" hs_bindgen_de9297d2280cf2d8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_get_input_popup_surface@
hs_bindgen_de9297d2280cf2d8 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr Zwp_input_popup_surface_v2)))
hs_bindgen_de9297d2280cf2d8 =
  RIP.fromFFIType hs_bindgen_de9297d2280cf2d8_base

{-# NOINLINE zwp_input_method_v2_get_input_popup_surface #-}
{-|

  > iface_zwp_input_method_v2

  Creates a new zwp_input_popup_surface_v2 object wrapping a given surface.

  The surface gets assigned the "input_popup" role. If the surface already has an assigned role, the compositor must issue a protocol error.

__C declaration:__ @zwp_input_method_v2_get_input_popup_surface@

__defined at:__ @input-method-unstable-v2-client-protocol.h 610:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_input_popup_surface :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface) -> IO (RIP.Ptr Zwp_input_popup_surface_v2))
zwp_input_method_v2_get_input_popup_surface =
  RIP.unsafePerformIO hs_bindgen_de9297d2280cf2d8

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_grab_keyboard@
foreign import ccall unsafe "hs_bindgen_31d7beac59bbd7df" hs_bindgen_31d7beac59bbd7df_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_grab_keyboard@
hs_bindgen_31d7beac59bbd7df :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO (RIP.Ptr Zwp_input_method_keyboard_grab_v2)))
hs_bindgen_31d7beac59bbd7df =
  RIP.fromFFIType hs_bindgen_31d7beac59bbd7df_base

{-# NOINLINE zwp_input_method_v2_grab_keyboard #-}
{-|

  > iface_zwp_input_method_v2

  Allow an input method to receive hardware keyboard input and process key events to generate text events (with pre-edit) over the wire. This allows input methods which compose multiple key events for inputting text like it is done for CJK languages.

  The compositor should send all keyboard events on the seat to the grab holder via the returned wl_keyboard object. Nevertheless, the compositor may decide not to forward any particular event. The compositor must not further process any event after it has been forwarded to the grab holder.

  Releasing the resulting wl_keyboard object releases the grab.

__C declaration:__ @zwp_input_method_v2_grab_keyboard@

__defined at:__ @input-method-unstable-v2-client-protocol.h 637:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_grab_keyboard :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO (RIP.Ptr Zwp_input_method_keyboard_grab_v2))
zwp_input_method_v2_grab_keyboard =
  RIP.unsafePerformIO hs_bindgen_31d7beac59bbd7df

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_destroy@
foreign import ccall unsafe "hs_bindgen_7ac909d56c729e99" hs_bindgen_7ac909d56c729e99_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_v2_destroy@
hs_bindgen_7ac909d56c729e99 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO ()))
hs_bindgen_7ac909d56c729e99 =
  RIP.fromFFIType hs_bindgen_7ac909d56c729e99_base

{-# NOINLINE zwp_input_method_v2_destroy #-}
{-|

  > iface_zwp_input_method_v2

  Destroys the zwp_text_input_v2 object and any associated child objects, i.e. zwp_input_popup_surface_v2 and zwp_input_method_keyboard_grab_v2.

__C declaration:__ @zwp_input_method_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 655:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_destroy :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO ())
zwp_input_method_v2_destroy =
  RIP.unsafePerformIO hs_bindgen_7ac909d56c729e99

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_979581092a8bfe70" hs_bindgen_979581092a8bfe70_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_add_listener@
hs_bindgen_979581092a8bfe70 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> (PtrConst.PtrConst Zwp_input_popup_surface_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_979581092a8bfe70 =
  RIP.fromFFIType hs_bindgen_979581092a8bfe70_base

{-# NOINLINE zwp_input_popup_surface_v2_add_listener #-}
{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 687:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_add_listener :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> (PtrConst.PtrConst Zwp_input_popup_surface_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwp_input_popup_surface_v2_add_listener =
  RIP.unsafePerformIO hs_bindgen_979581092a8bfe70

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_4a998338b9fe95f4" hs_bindgen_4a998338b9fe95f4_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_set_user_data@
hs_bindgen_4a998338b9fe95f4 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_4a998338b9fe95f4 =
  RIP.fromFFIType hs_bindgen_4a998338b9fe95f4_base

{-# NOINLINE zwp_input_popup_surface_v2_set_user_data #-}
{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 708:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> (RIP.Ptr RIP.Void) -> IO ())
zwp_input_popup_surface_v2_set_user_data =
  RIP.unsafePerformIO hs_bindgen_4a998338b9fe95f4

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_c45741f20fef972a" hs_bindgen_c45741f20fef972a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_get_user_data@
hs_bindgen_c45741f20fef972a :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c45741f20fef972a =
  RIP.fromFFIType hs_bindgen_c45741f20fef972a_base

{-# NOINLINE zwp_input_popup_surface_v2_get_user_data #-}
{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 715:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO (RIP.Ptr RIP.Void))
zwp_input_popup_surface_v2_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c45741f20fef972a

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_get_version@
foreign import ccall unsafe "hs_bindgen_cff54cc35687715c" hs_bindgen_cff54cc35687715c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_get_version@
hs_bindgen_cff54cc35687715c :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_cff54cc35687715c =
  RIP.fromFFIType hs_bindgen_cff54cc35687715c_base

{-# NOINLINE zwp_input_popup_surface_v2_get_version #-}
{-| __C declaration:__ @zwp_input_popup_surface_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 721:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_version :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO HsBindgen.Runtime.LibC.Word32)
zwp_input_popup_surface_v2_get_version =
  RIP.unsafePerformIO hs_bindgen_cff54cc35687715c

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_destroy@
foreign import ccall unsafe "hs_bindgen_09956b22e71e2d12" hs_bindgen_09956b22e71e2d12_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_popup_surface_v2_destroy@
hs_bindgen_09956b22e71e2d12 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO ()))
hs_bindgen_09956b22e71e2d12 =
  RIP.fromFFIType hs_bindgen_09956b22e71e2d12_base

{-# NOINLINE zwp_input_popup_surface_v2_destroy #-}
{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 730:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_destroy :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO ())
zwp_input_popup_surface_v2_destroy =
  RIP.unsafePerformIO hs_bindgen_09956b22e71e2d12

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_9b9e0978df6bb206" hs_bindgen_9b9e0978df6bb206_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_add_listener@
hs_bindgen_9b9e0978df6bb206 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> (PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_9b9e0978df6bb206 =
  RIP.fromFFIType hs_bindgen_9b9e0978df6bb206_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_add_listener #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 819:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_add_listener :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> (PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwp_input_method_keyboard_grab_v2_add_listener =
  RIP.unsafePerformIO hs_bindgen_9b9e0978df6bb206

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_fabd79448331e5b2" hs_bindgen_fabd79448331e5b2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_set_user_data@
hs_bindgen_fabd79448331e5b2 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_fabd79448331e5b2 =
  RIP.fromFFIType hs_bindgen_fabd79448331e5b2_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_set_user_data #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 852:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> (RIP.Ptr RIP.Void) -> IO ())
zwp_input_method_keyboard_grab_v2_set_user_data =
  RIP.unsafePerformIO hs_bindgen_fabd79448331e5b2

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_c6603fa5dfb80705" hs_bindgen_c6603fa5dfb80705_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_get_user_data@
hs_bindgen_c6603fa5dfb80705 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c6603fa5dfb80705 =
  RIP.fromFFIType hs_bindgen_c6603fa5dfb80705_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_get_user_data #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 859:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO (RIP.Ptr RIP.Void))
zwp_input_method_keyboard_grab_v2_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c6603fa5dfb80705

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_get_version@
foreign import ccall unsafe "hs_bindgen_825cf1fe51af3b38" hs_bindgen_825cf1fe51af3b38_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_get_version@
hs_bindgen_825cf1fe51af3b38 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_825cf1fe51af3b38 =
  RIP.fromFFIType hs_bindgen_825cf1fe51af3b38_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_get_version #-}
{-| __C declaration:__ @zwp_input_method_keyboard_grab_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 865:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_version :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO HsBindgen.Runtime.LibC.Word32)
zwp_input_method_keyboard_grab_v2_get_version =
  RIP.unsafePerformIO hs_bindgen_825cf1fe51af3b38

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_destroy@
foreign import ccall unsafe "hs_bindgen_3f5887a8f9a58c4a" hs_bindgen_3f5887a8f9a58c4a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_destroy@
hs_bindgen_3f5887a8f9a58c4a :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO ()))
hs_bindgen_3f5887a8f9a58c4a =
  RIP.fromFFIType hs_bindgen_3f5887a8f9a58c4a_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_destroy #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 872:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_destroy :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO ())
zwp_input_method_keyboard_grab_v2_destroy =
  RIP.unsafePerformIO hs_bindgen_3f5887a8f9a58c4a

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_release@
foreign import ccall unsafe "hs_bindgen_6a794f0a5285735b" hs_bindgen_6a794f0a5285735b_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_keyboard_grab_v2_release@
hs_bindgen_6a794f0a5285735b :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO ()))
hs_bindgen_6a794f0a5285735b =
  RIP.fromFFIType hs_bindgen_6a794f0a5285735b_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_release #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_release@

__defined at:__ @input-method-unstable-v2-client-protocol.h 881:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_release :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO ())
zwp_input_method_keyboard_grab_v2_release =
  RIP.unsafePerformIO hs_bindgen_6a794f0a5285735b

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_6e0289f097ae82c3" hs_bindgen_6e0289f097ae82c3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_set_user_data@
hs_bindgen_6e0289f097ae82c3 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_6e0289f097ae82c3 =
  RIP.fromFFIType hs_bindgen_6e0289f097ae82c3_base

{-# NOINLINE zwp_input_method_manager_v2_set_user_data #-}
{-|

  > iface_zwp_input_method_manager_v2

__C declaration:__ @zwp_input_method_manager_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 902:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> (RIP.Ptr RIP.Void) -> IO ())
zwp_input_method_manager_v2_set_user_data =
  RIP.unsafePerformIO hs_bindgen_6e0289f097ae82c3

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_a0addb999fa40083" hs_bindgen_a0addb999fa40083_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_user_data@
hs_bindgen_a0addb999fa40083 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_a0addb999fa40083 =
  RIP.fromFFIType hs_bindgen_a0addb999fa40083_base

{-# NOINLINE zwp_input_method_manager_v2_get_user_data #-}
{-|

  > iface_zwp_input_method_manager_v2

__C declaration:__ @zwp_input_method_manager_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 909:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO (RIP.Ptr RIP.Void))
zwp_input_method_manager_v2_get_user_data =
  RIP.unsafePerformIO hs_bindgen_a0addb999fa40083

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_version@
foreign import ccall unsafe "hs_bindgen_7427cb564d494932" hs_bindgen_7427cb564d494932_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_version@
hs_bindgen_7427cb564d494932 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_7427cb564d494932 =
  RIP.fromFFIType hs_bindgen_7427cb564d494932_base

{-# NOINLINE zwp_input_method_manager_v2_get_version #-}
{-| __C declaration:__ @zwp_input_method_manager_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 915:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_version :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO HsBindgen.Runtime.LibC.Word32)
zwp_input_method_manager_v2_get_version =
  RIP.unsafePerformIO hs_bindgen_7427cb564d494932

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_input_method@
foreign import ccall unsafe "hs_bindgen_21320ea233f34b22" hs_bindgen_21320ea233f34b22_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_get_input_method@
hs_bindgen_21320ea233f34b22 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat) -> IO (RIP.Ptr Zwp_input_method_v2)))
hs_bindgen_21320ea233f34b22 =
  RIP.fromFFIType hs_bindgen_21320ea233f34b22_base

{-# NOINLINE zwp_input_method_manager_v2_get_input_method #-}
{-|

  > iface_zwp_input_method_manager_v2

  Request a new input zwp_input_method_v2 object associated with a given seat.

__C declaration:__ @zwp_input_method_manager_v2_get_input_method@

__defined at:__ @input-method-unstable-v2-client-protocol.h 927:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_input_method :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> (RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat) -> IO (RIP.Ptr Zwp_input_method_v2))
zwp_input_method_manager_v2_get_input_method =
  RIP.unsafePerformIO hs_bindgen_21320ea233f34b22

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_destroy@
foreign import ccall unsafe "hs_bindgen_19c4ffa7f607692c" hs_bindgen_19c4ffa7f607692c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_get_zwp_input_method_manager_v2_destroy@
hs_bindgen_19c4ffa7f607692c :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO ()))
hs_bindgen_19c4ffa7f607692c =
  RIP.fromFFIType hs_bindgen_19c4ffa7f607692c_base

{-# NOINLINE zwp_input_method_manager_v2_destroy #-}
{-|

  > iface_zwp_input_method_manager_v2

  Destroys the zwp_input_method_manager_v2 object.

  The zwp_input_method_v2 objects originating from it remain valid.

__C declaration:__ @zwp_input_method_manager_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 945:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_destroy :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO ())
zwp_input_method_manager_v2_destroy =
  RIP.unsafePerformIO hs_bindgen_19c4ffa7f607692c

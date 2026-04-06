{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wlr.InputMethodV2.FunPtr
    ( Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_add_listener
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_set_user_data
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_get_user_data
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_get_version
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_commit_string
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_set_preedit_string
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_delete_surrounding_text
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_commit
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_get_input_popup_surface
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_grab_keyboard
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_v2_destroy
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_popup_surface_v2_add_listener
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_popup_surface_v2_set_user_data
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_popup_surface_v2_get_user_data
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_popup_surface_v2_get_version
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_popup_surface_v2_destroy
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_keyboard_grab_v2_add_listener
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_keyboard_grab_v2_set_user_data
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_keyboard_grab_v2_get_user_data
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_keyboard_grab_v2_get_version
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_keyboard_grab_v2_destroy
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_keyboard_grab_v2_release
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_manager_v2_set_user_data
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_manager_v2_get_user_data
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_manager_v2_get_version
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_manager_v2_get_input_method
    , Generated.Wlr.InputMethodV2.FunPtr.zwp_input_method_manager_v2_destroy
    )
  where

import qualified Generated.Wayland.Client
import qualified HsBindgen.Runtime.Internal.CAPI
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import Generated.Wlr.InputMethodV2

$(HsBindgen.Runtime.Internal.CAPI.addCSource (HsBindgen.Runtime.Internal.CAPI.unlines
  [ "#include <input-method-unstable-v2-client-protocol.h>"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_fff1e27bf0026101 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct zwp_input_method_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_add_listener;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_1dadac563f7b6cfe (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_set_user_data;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_c38b182331ecee93 (void)) ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_get_user_data;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_e25e9dc5f3b37d76 (void)) ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_get_version;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_commit_string */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_3dc735ac6e42e3f7 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_commit_string;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_set_preedit_string */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_b761f905563cbf8f (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_set_preedit_string;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_delete_surrounding_text */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_36fd714c985e6523 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_delete_surrounding_text;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_commit */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_2944af8e4e068ce7 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_commit;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_input_popup_surface */"
  , "__attribute__ ((const))"
  , "struct zwp_input_popup_surface_v2 *(*hs_bindgen_dc6ca3ccf9ad80a6 (void)) ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_get_input_popup_surface;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_grab_keyboard */"
  , "__attribute__ ((const))"
  , "struct zwp_input_method_keyboard_grab_v2 *(*hs_bindgen_d1c0c64fe1a40fea (void)) ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_grab_keyboard;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_dce849ec73d0f756 (void)) ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_v2_destroy;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_04bcc4d363af9825 (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  struct zwp_input_popup_surface_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_add_listener;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_28137eb64dc6ca8c (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_set_user_data;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_6cf43f8e462b7ba6 (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_get_user_data;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_1a3970c63db0732f (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_get_version;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_ebf6d37c323148c7 (void)) ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_popup_surface_v2_destroy;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_add_listener */"
  , "__attribute__ ((const))"
  , "signed int (*hs_bindgen_b7a4d4da4f499152 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  struct zwp_input_method_keyboard_grab_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_add_listener;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4e06d339f548e110 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_set_user_data;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_9006e4d9e333a9f3 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_get_user_data;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_c0859cd3e79105e2 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_get_version;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_690a43bc092fefbc (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_destroy;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_release */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_565d0d709618b900 (void)) ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_keyboard_grab_v2_release;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_set_user_data */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_4d8be434696dc72a (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_set_user_data;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_user_data */"
  , "__attribute__ ((const))"
  , "void *(*hs_bindgen_843af5fa33387b98 (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_get_user_data;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_version */"
  , "__attribute__ ((const))"
  , "uint32_t (*hs_bindgen_72c32d07645b5181 (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_get_version;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_input_method */"
  , "__attribute__ ((const))"
  , "struct zwp_input_method_v2 *(*hs_bindgen_7c8ca548e79254f8 (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_get_input_method;"
  , "}"
  , "/* Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_destroy */"
  , "__attribute__ ((const))"
  , "void (*hs_bindgen_e49ef885ad092275 (void)) ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return &zwp_input_method_manager_v2_destroy;"
  , "}"
  ]))

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_fff1e27bf0026101" hs_bindgen_fff1e27bf0026101_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_add_listener@
hs_bindgen_fff1e27bf0026101 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst Zwp_input_method_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_fff1e27bf0026101 =
  RIP.fromFFIType hs_bindgen_fff1e27bf0026101_base

{-# NOINLINE zwp_input_method_v2_add_listener #-}
{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 387:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_add_listener :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst Zwp_input_method_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwp_input_method_v2_add_listener =
  RIP.unsafePerformIO hs_bindgen_fff1e27bf0026101

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_1dadac563f7b6cfe" hs_bindgen_1dadac563f7b6cfe_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_set_user_data@
hs_bindgen_1dadac563f7b6cfe :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_1dadac563f7b6cfe =
  RIP.fromFFIType hs_bindgen_1dadac563f7b6cfe_base

{-# NOINLINE zwp_input_method_v2_set_user_data #-}
{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 462:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (RIP.Ptr RIP.Void) -> IO ())
zwp_input_method_v2_set_user_data =
  RIP.unsafePerformIO hs_bindgen_1dadac563f7b6cfe

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_c38b182331ecee93" hs_bindgen_c38b182331ecee93_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_user_data@
hs_bindgen_c38b182331ecee93 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_c38b182331ecee93 =
  RIP.fromFFIType hs_bindgen_c38b182331ecee93_base

{-# NOINLINE zwp_input_method_v2_get_user_data #-}
{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 469:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO (RIP.Ptr RIP.Void))
zwp_input_method_v2_get_user_data =
  RIP.unsafePerformIO hs_bindgen_c38b182331ecee93

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_version@
foreign import ccall unsafe "hs_bindgen_e25e9dc5f3b37d76" hs_bindgen_e25e9dc5f3b37d76_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_version@
hs_bindgen_e25e9dc5f3b37d76 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_e25e9dc5f3b37d76 =
  RIP.fromFFIType hs_bindgen_e25e9dc5f3b37d76_base

{-# NOINLINE zwp_input_method_v2_get_version #-}
{-| __C declaration:__ @zwp_input_method_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 475:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_version :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO HsBindgen.Runtime.LibC.Word32)
zwp_input_method_v2_get_version =
  RIP.unsafePerformIO hs_bindgen_e25e9dc5f3b37d76

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_commit_string@
foreign import ccall unsafe "hs_bindgen_3dc735ac6e42e3f7" hs_bindgen_3dc735ac6e42e3f7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_commit_string@
hs_bindgen_3dc735ac6e42e3f7 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_3dc735ac6e42e3f7 =
  RIP.fromFFIType hs_bindgen_3dc735ac6e42e3f7_base

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
  RIP.unsafePerformIO hs_bindgen_3dc735ac6e42e3f7

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_set_preedit_string@
foreign import ccall unsafe "hs_bindgen_b761f905563cbf8f" hs_bindgen_b761f905563cbf8f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_set_preedit_string@
hs_bindgen_b761f905563cbf8f :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_b761f905563cbf8f =
  RIP.fromFFIType hs_bindgen_b761f905563cbf8f_base

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
  RIP.unsafePerformIO hs_bindgen_b761f905563cbf8f

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_delete_surrounding_text@
foreign import ccall unsafe "hs_bindgen_36fd714c985e6523" hs_bindgen_36fd714c985e6523_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_delete_surrounding_text@
hs_bindgen_36fd714c985e6523 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_36fd714c985e6523 =
  RIP.fromFFIType hs_bindgen_36fd714c985e6523_base

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
  RIP.unsafePerformIO hs_bindgen_36fd714c985e6523

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_commit@
foreign import ccall unsafe "hs_bindgen_2944af8e4e068ce7" hs_bindgen_2944af8e4e068ce7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_commit@
hs_bindgen_2944af8e4e068ce7 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_2944af8e4e068ce7 =
  RIP.fromFFIType hs_bindgen_2944af8e4e068ce7_base

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
  RIP.unsafePerformIO hs_bindgen_2944af8e4e068ce7

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_input_popup_surface@
foreign import ccall unsafe "hs_bindgen_dc6ca3ccf9ad80a6" hs_bindgen_dc6ca3ccf9ad80a6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_get_input_popup_surface@
hs_bindgen_dc6ca3ccf9ad80a6 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> IO (RIP.Ptr Zwp_input_popup_surface_v2)))
hs_bindgen_dc6ca3ccf9ad80a6 =
  RIP.fromFFIType hs_bindgen_dc6ca3ccf9ad80a6_base

{-# NOINLINE zwp_input_method_v2_get_input_popup_surface #-}
{-|

  > iface_zwp_input_method_v2

  Creates a new zwp_input_popup_surface_v2 object wrapping a given surface.

  The surface gets assigned the "input_popup" role. If the surface already has an assigned role, the compositor must issue a protocol error.

__C declaration:__ @zwp_input_method_v2_get_input_popup_surface@

__defined at:__ @input-method-unstable-v2-client-protocol.h 610:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_input_popup_surface :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> (RIP.Ptr Generated.Wayland.Client.Wl_surface) -> IO (RIP.Ptr Zwp_input_popup_surface_v2))
zwp_input_method_v2_get_input_popup_surface =
  RIP.unsafePerformIO hs_bindgen_dc6ca3ccf9ad80a6

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_grab_keyboard@
foreign import ccall unsafe "hs_bindgen_d1c0c64fe1a40fea" hs_bindgen_d1c0c64fe1a40fea_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_grab_keyboard@
hs_bindgen_d1c0c64fe1a40fea :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO (RIP.Ptr Zwp_input_method_keyboard_grab_v2)))
hs_bindgen_d1c0c64fe1a40fea =
  RIP.fromFFIType hs_bindgen_d1c0c64fe1a40fea_base

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
  RIP.unsafePerformIO hs_bindgen_d1c0c64fe1a40fea

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_destroy@
foreign import ccall unsafe "hs_bindgen_dce849ec73d0f756" hs_bindgen_dce849ec73d0f756_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_v2_destroy@
hs_bindgen_dce849ec73d0f756 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_v2) -> IO ()))
hs_bindgen_dce849ec73d0f756 =
  RIP.fromFFIType hs_bindgen_dce849ec73d0f756_base

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
  RIP.unsafePerformIO hs_bindgen_dce849ec73d0f756

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_04bcc4d363af9825" hs_bindgen_04bcc4d363af9825_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_add_listener@
hs_bindgen_04bcc4d363af9825 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> (PtrConst.PtrConst Zwp_input_popup_surface_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_04bcc4d363af9825 =
  RIP.fromFFIType hs_bindgen_04bcc4d363af9825_base

{-# NOINLINE zwp_input_popup_surface_v2_add_listener #-}
{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 687:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_add_listener :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> (PtrConst.PtrConst Zwp_input_popup_surface_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwp_input_popup_surface_v2_add_listener =
  RIP.unsafePerformIO hs_bindgen_04bcc4d363af9825

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_28137eb64dc6ca8c" hs_bindgen_28137eb64dc6ca8c_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_set_user_data@
hs_bindgen_28137eb64dc6ca8c :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_28137eb64dc6ca8c =
  RIP.fromFFIType hs_bindgen_28137eb64dc6ca8c_base

{-# NOINLINE zwp_input_popup_surface_v2_set_user_data #-}
{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 708:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> (RIP.Ptr RIP.Void) -> IO ())
zwp_input_popup_surface_v2_set_user_data =
  RIP.unsafePerformIO hs_bindgen_28137eb64dc6ca8c

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_6cf43f8e462b7ba6" hs_bindgen_6cf43f8e462b7ba6_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_get_user_data@
hs_bindgen_6cf43f8e462b7ba6 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_6cf43f8e462b7ba6 =
  RIP.fromFFIType hs_bindgen_6cf43f8e462b7ba6_base

{-# NOINLINE zwp_input_popup_surface_v2_get_user_data #-}
{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 715:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO (RIP.Ptr RIP.Void))
zwp_input_popup_surface_v2_get_user_data =
  RIP.unsafePerformIO hs_bindgen_6cf43f8e462b7ba6

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_get_version@
foreign import ccall unsafe "hs_bindgen_1a3970c63db0732f" hs_bindgen_1a3970c63db0732f_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_get_version@
hs_bindgen_1a3970c63db0732f :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_1a3970c63db0732f =
  RIP.fromFFIType hs_bindgen_1a3970c63db0732f_base

{-# NOINLINE zwp_input_popup_surface_v2_get_version #-}
{-| __C declaration:__ @zwp_input_popup_surface_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 721:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_version :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO HsBindgen.Runtime.LibC.Word32)
zwp_input_popup_surface_v2_get_version =
  RIP.unsafePerformIO hs_bindgen_1a3970c63db0732f

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_destroy@
foreign import ccall unsafe "hs_bindgen_ebf6d37c323148c7" hs_bindgen_ebf6d37c323148c7_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_popup_surface_v2_destroy@
hs_bindgen_ebf6d37c323148c7 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO ()))
hs_bindgen_ebf6d37c323148c7 =
  RIP.fromFFIType hs_bindgen_ebf6d37c323148c7_base

{-# NOINLINE zwp_input_popup_surface_v2_destroy #-}
{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 730:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_destroy :: RIP.FunPtr ((RIP.Ptr Zwp_input_popup_surface_v2) -> IO ())
zwp_input_popup_surface_v2_destroy =
  RIP.unsafePerformIO hs_bindgen_ebf6d37c323148c7

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_b7a4d4da4f499152" hs_bindgen_b7a4d4da4f499152_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_add_listener@
hs_bindgen_b7a4d4da4f499152 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> (PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt))
hs_bindgen_b7a4d4da4f499152 =
  RIP.fromFFIType hs_bindgen_b7a4d4da4f499152_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_add_listener #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 819:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_add_listener :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> (PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener) -> (RIP.Ptr RIP.Void) -> IO RIP.CInt)
zwp_input_method_keyboard_grab_v2_add_listener =
  RIP.unsafePerformIO hs_bindgen_b7a4d4da4f499152

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_4e06d339f548e110" hs_bindgen_4e06d339f548e110_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_set_user_data@
hs_bindgen_4e06d339f548e110 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_4e06d339f548e110 =
  RIP.fromFFIType hs_bindgen_4e06d339f548e110_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_set_user_data #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 852:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> (RIP.Ptr RIP.Void) -> IO ())
zwp_input_method_keyboard_grab_v2_set_user_data =
  RIP.unsafePerformIO hs_bindgen_4e06d339f548e110

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_9006e4d9e333a9f3" hs_bindgen_9006e4d9e333a9f3_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_get_user_data@
hs_bindgen_9006e4d9e333a9f3 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_9006e4d9e333a9f3 =
  RIP.fromFFIType hs_bindgen_9006e4d9e333a9f3_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_get_user_data #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 859:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO (RIP.Ptr RIP.Void))
zwp_input_method_keyboard_grab_v2_get_user_data =
  RIP.unsafePerformIO hs_bindgen_9006e4d9e333a9f3

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_get_version@
foreign import ccall unsafe "hs_bindgen_c0859cd3e79105e2" hs_bindgen_c0859cd3e79105e2_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_get_version@
hs_bindgen_c0859cd3e79105e2 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_c0859cd3e79105e2 =
  RIP.fromFFIType hs_bindgen_c0859cd3e79105e2_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_get_version #-}
{-| __C declaration:__ @zwp_input_method_keyboard_grab_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 865:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_version :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO HsBindgen.Runtime.LibC.Word32)
zwp_input_method_keyboard_grab_v2_get_version =
  RIP.unsafePerformIO hs_bindgen_c0859cd3e79105e2

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_destroy@
foreign import ccall unsafe "hs_bindgen_690a43bc092fefbc" hs_bindgen_690a43bc092fefbc_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_destroy@
hs_bindgen_690a43bc092fefbc :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO ()))
hs_bindgen_690a43bc092fefbc =
  RIP.fromFFIType hs_bindgen_690a43bc092fefbc_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_destroy #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 872:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_destroy :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO ())
zwp_input_method_keyboard_grab_v2_destroy =
  RIP.unsafePerformIO hs_bindgen_690a43bc092fefbc

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_release@
foreign import ccall unsafe "hs_bindgen_565d0d709618b900" hs_bindgen_565d0d709618b900_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_keyboard_grab_v2_release@
hs_bindgen_565d0d709618b900 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO ()))
hs_bindgen_565d0d709618b900 =
  RIP.fromFFIType hs_bindgen_565d0d709618b900_base

{-# NOINLINE zwp_input_method_keyboard_grab_v2_release #-}
{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_release@

__defined at:__ @input-method-unstable-v2-client-protocol.h 881:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_release :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> IO ())
zwp_input_method_keyboard_grab_v2_release =
  RIP.unsafePerformIO hs_bindgen_565d0d709618b900

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_4d8be434696dc72a" hs_bindgen_4d8be434696dc72a_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_set_user_data@
hs_bindgen_4d8be434696dc72a :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> (RIP.Ptr RIP.Void) -> IO ()))
hs_bindgen_4d8be434696dc72a =
  RIP.fromFFIType hs_bindgen_4d8be434696dc72a_base

{-# NOINLINE zwp_input_method_manager_v2_set_user_data #-}
{-|

  > iface_zwp_input_method_manager_v2

__C declaration:__ @zwp_input_method_manager_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 902:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_set_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> (RIP.Ptr RIP.Void) -> IO ())
zwp_input_method_manager_v2_set_user_data =
  RIP.unsafePerformIO hs_bindgen_4d8be434696dc72a

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_843af5fa33387b98" hs_bindgen_843af5fa33387b98_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_user_data@
hs_bindgen_843af5fa33387b98 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO (RIP.Ptr RIP.Void)))
hs_bindgen_843af5fa33387b98 =
  RIP.fromFFIType hs_bindgen_843af5fa33387b98_base

{-# NOINLINE zwp_input_method_manager_v2_get_user_data #-}
{-|

  > iface_zwp_input_method_manager_v2

__C declaration:__ @zwp_input_method_manager_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 909:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_user_data :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO (RIP.Ptr RIP.Void))
zwp_input_method_manager_v2_get_user_data =
  RIP.unsafePerformIO hs_bindgen_843af5fa33387b98

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_version@
foreign import ccall unsafe "hs_bindgen_72c32d07645b5181" hs_bindgen_72c32d07645b5181_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_version@
hs_bindgen_72c32d07645b5181 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO HsBindgen.Runtime.LibC.Word32))
hs_bindgen_72c32d07645b5181 =
  RIP.fromFFIType hs_bindgen_72c32d07645b5181_base

{-# NOINLINE zwp_input_method_manager_v2_get_version #-}
{-| __C declaration:__ @zwp_input_method_manager_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 915:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_version :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO HsBindgen.Runtime.LibC.Word32)
zwp_input_method_manager_v2_get_version =
  RIP.unsafePerformIO hs_bindgen_72c32d07645b5181

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_input_method@
foreign import ccall unsafe "hs_bindgen_7c8ca548e79254f8" hs_bindgen_7c8ca548e79254f8_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_get_input_method@
hs_bindgen_7c8ca548e79254f8 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> (RIP.Ptr Generated.Wayland.Client.Wl_seat) -> IO (RIP.Ptr Zwp_input_method_v2)))
hs_bindgen_7c8ca548e79254f8 =
  RIP.fromFFIType hs_bindgen_7c8ca548e79254f8_base

{-# NOINLINE zwp_input_method_manager_v2_get_input_method #-}
{-|

  > iface_zwp_input_method_manager_v2

  Request a new input zwp_input_method_v2 object associated with a given seat.

__C declaration:__ @zwp_input_method_manager_v2_get_input_method@

__defined at:__ @input-method-unstable-v2-client-protocol.h 927:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_input_method :: RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> (RIP.Ptr Generated.Wayland.Client.Wl_seat) -> IO (RIP.Ptr Zwp_input_method_v2))
zwp_input_method_manager_v2_get_input_method =
  RIP.unsafePerformIO hs_bindgen_7c8ca548e79254f8

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_destroy@
foreign import ccall unsafe "hs_bindgen_e49ef885ad092275" hs_bindgen_e49ef885ad092275_base ::
     IO (RIP.FunPtr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_get_zwp_input_method_manager_v2_destroy@
hs_bindgen_e49ef885ad092275 :: IO (RIP.FunPtr ((RIP.Ptr Zwp_input_method_manager_v2) -> IO ()))
hs_bindgen_e49ef885ad092275 =
  RIP.fromFFIType hs_bindgen_e49ef885ad092275_base

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
  RIP.unsafePerformIO hs_bindgen_e49ef885ad092275

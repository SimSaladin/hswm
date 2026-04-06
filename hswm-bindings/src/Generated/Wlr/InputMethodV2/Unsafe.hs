{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wlr.InputMethodV2.Unsafe
    ( Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_add_listener
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_set_user_data
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_get_user_data
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_get_version
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_commit_string
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_set_preedit_string
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_delete_surrounding_text
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_commit
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_get_input_popup_surface
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_grab_keyboard
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_v2_destroy
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_popup_surface_v2_add_listener
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_popup_surface_v2_set_user_data
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_popup_surface_v2_get_user_data
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_popup_surface_v2_get_version
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_popup_surface_v2_destroy
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_keyboard_grab_v2_add_listener
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_keyboard_grab_v2_set_user_data
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_keyboard_grab_v2_get_user_data
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_keyboard_grab_v2_get_version
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_keyboard_grab_v2_destroy
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_keyboard_grab_v2_release
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_manager_v2_set_user_data
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_manager_v2_get_user_data
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_manager_v2_get_version
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_manager_v2_get_input_method
    , Generated.Wlr.InputMethodV2.Unsafe.zwp_input_method_manager_v2_destroy
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
  , "signed int hs_bindgen_b5375f7d4fb9554b ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct zwp_input_method_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_b537d52ea9166128 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_737585dac51b8151 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_6cf9362119aca630 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_0ebc648dd293dec5 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_commit_string)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_0a86661841df99f1 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_set_preedit_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_39e46edc2733d1f8 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_delete_surrounding_text)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_9142453275c0b9ec ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_commit)(arg1, arg2);"
  , "}"
  , "struct zwp_input_popup_surface_v2 *hs_bindgen_98c998aa608acf6b ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_input_popup_surface)(arg1, arg2);"
  , "}"
  , "struct zwp_input_method_keyboard_grab_v2 *hs_bindgen_225796f9f5dc5d00 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_grab_keyboard)(arg1);"
  , "}"
  , "void hs_bindgen_820ddee524f5e4d3 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_08ffcb591ce00f8f ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  struct zwp_input_popup_surface_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_3a4b85f876e7a0b7 ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_popup_surface_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f687644bb0d13eb8 ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_41ec926f5d559f44 ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_f9b84969f2e91abb ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_popup_surface_v2_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_e9bd0aa5af87f8a9 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  struct zwp_input_method_keyboard_grab_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e945d64889a8457b ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_afed6c99fa4df959 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_b74fd52b631e77ab ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_4b1543732a7eabdc ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_7e7b1a93d177c2ea ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_release)(arg1);"
  , "}"
  , "void hs_bindgen_cbbf6ff9b344c79f ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_manager_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_30e769cc7724936e ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_78234fe9ea50645a ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_version)(arg1);"
  , "}"
  , "struct zwp_input_method_v2 *hs_bindgen_4d889ba18ea4b3c9 ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_input_method)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_fa2d3b8d92748086 ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_manager_v2_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_b5375f7d4fb9554b" hs_bindgen_b5375f7d4fb9554b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_add_listener@
hs_bindgen_b5375f7d4fb9554b ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst Zwp_input_method_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_b5375f7d4fb9554b =
  RIP.fromFFIType hs_bindgen_b5375f7d4fb9554b_base

{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 387:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_add_listener ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> PtrConst.PtrConst Zwp_input_method_v2_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwp_input_method_v2_add_listener =
  hs_bindgen_b5375f7d4fb9554b

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_b537d52ea9166128" hs_bindgen_b537d52ea9166128_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_set_user_data@
hs_bindgen_b537d52ea9166128 ::
     RIP.Ptr Zwp_input_method_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_b537d52ea9166128 =
  RIP.fromFFIType hs_bindgen_b537d52ea9166128_base

{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 462:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_set_user_data ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwp_input_method_v2_set_user_data =
  hs_bindgen_b537d52ea9166128

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_737585dac51b8151" hs_bindgen_737585dac51b8151_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_get_user_data@
hs_bindgen_737585dac51b8151 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_737585dac51b8151 =
  RIP.fromFFIType hs_bindgen_737585dac51b8151_base

{-|

  > iface_zwp_input_method_v2

__C declaration:__ @zwp_input_method_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 469:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_user_data ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> IO (RIP.Ptr RIP.Void)
zwp_input_method_v2_get_user_data =
  hs_bindgen_737585dac51b8151

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_get_version@
foreign import ccall unsafe "hs_bindgen_6cf9362119aca630" hs_bindgen_6cf9362119aca630_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_get_version@
hs_bindgen_6cf9362119aca630 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_6cf9362119aca630 =
  RIP.fromFFIType hs_bindgen_6cf9362119aca630_base

{-| __C declaration:__ @zwp_input_method_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 475:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_version ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_v2_get_version =
  hs_bindgen_6cf9362119aca630

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_commit_string@
foreign import ccall unsafe "hs_bindgen_0ebc648dd293dec5" hs_bindgen_0ebc648dd293dec5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_commit_string@
hs_bindgen_0ebc648dd293dec5 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_0ebc648dd293dec5 =
  RIP.fromFFIType hs_bindgen_0ebc648dd293dec5_base

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
zwp_input_method_v2_commit_string ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @text@
  -> IO ()
zwp_input_method_v2_commit_string =
  hs_bindgen_0ebc648dd293dec5

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_set_preedit_string@
foreign import ccall unsafe "hs_bindgen_0a86661841df99f1" hs_bindgen_0a86661841df99f1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_set_preedit_string@
hs_bindgen_0a86661841df99f1 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_0a86661841df99f1 =
  RIP.fromFFIType hs_bindgen_0a86661841df99f1_base

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
zwp_input_method_v2_set_preedit_string ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> PtrConst.PtrConst RIP.CChar
     -- ^ __C declaration:__ @text@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @cursor_begin@
  -> HsBindgen.Runtime.LibC.Int32
     -- ^ __C declaration:__ @cursor_end@
  -> IO ()
zwp_input_method_v2_set_preedit_string =
  hs_bindgen_0a86661841df99f1

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_delete_surrounding_text@
foreign import ccall unsafe "hs_bindgen_39e46edc2733d1f8" hs_bindgen_39e46edc2733d1f8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_delete_surrounding_text@
hs_bindgen_39e46edc2733d1f8 ::
     RIP.Ptr Zwp_input_method_v2
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_39e46edc2733d1f8 =
  RIP.fromFFIType hs_bindgen_39e46edc2733d1f8_base

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
zwp_input_method_v2_delete_surrounding_text ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @before_length@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @after_length@
  -> IO ()
zwp_input_method_v2_delete_surrounding_text =
  hs_bindgen_39e46edc2733d1f8

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_commit@
foreign import ccall unsafe "hs_bindgen_9142453275c0b9ec" hs_bindgen_9142453275c0b9ec_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_commit@
hs_bindgen_9142453275c0b9ec ::
     RIP.Ptr Zwp_input_method_v2
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_9142453275c0b9ec =
  RIP.fromFFIType hs_bindgen_9142453275c0b9ec_base

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
zwp_input_method_v2_commit ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> HsBindgen.Runtime.LibC.Word32
     -- ^ __C declaration:__ @serial@
  -> IO ()
zwp_input_method_v2_commit =
  hs_bindgen_9142453275c0b9ec

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_get_input_popup_surface@
foreign import ccall unsafe "hs_bindgen_98c998aa608acf6b" hs_bindgen_98c998aa608acf6b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_get_input_popup_surface@
hs_bindgen_98c998aa608acf6b ::
     RIP.Ptr Zwp_input_method_v2
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
  -> IO (RIP.Ptr Zwp_input_popup_surface_v2)
hs_bindgen_98c998aa608acf6b =
  RIP.fromFFIType hs_bindgen_98c998aa608acf6b_base

{-|

  > iface_zwp_input_method_v2

  Creates a new zwp_input_popup_surface_v2 object wrapping a given surface.

  The surface gets assigned the "input_popup" role. If the surface already has an assigned role, the compositor must issue a protocol error.

__C declaration:__ @zwp_input_method_v2_get_input_popup_surface@

__defined at:__ @input-method-unstable-v2-client-protocol.h 610:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_input_popup_surface ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Zwp_input_popup_surface_v2)
zwp_input_method_v2_get_input_popup_surface =
  hs_bindgen_98c998aa608acf6b

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_grab_keyboard@
foreign import ccall unsafe "hs_bindgen_225796f9f5dc5d00" hs_bindgen_225796f9f5dc5d00_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_grab_keyboard@
hs_bindgen_225796f9f5dc5d00 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO (RIP.Ptr Zwp_input_method_keyboard_grab_v2)
hs_bindgen_225796f9f5dc5d00 =
  RIP.fromFFIType hs_bindgen_225796f9f5dc5d00_base

{-|

  > iface_zwp_input_method_v2

  Allow an input method to receive hardware keyboard input and process key events to generate text events (with pre-edit) over the wire. This allows input methods which compose multiple key events for inputting text like it is done for CJK languages.

  The compositor should send all keyboard events on the seat to the grab holder via the returned wl_keyboard object. Nevertheless, the compositor may decide not to forward any particular event. The compositor must not further process any event after it has been forwarded to the grab holder.

  Releasing the resulting wl_keyboard object releases the grab.

__C declaration:__ @zwp_input_method_v2_grab_keyboard@

__defined at:__ @input-method-unstable-v2-client-protocol.h 637:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_grab_keyboard ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> IO (RIP.Ptr Zwp_input_method_keyboard_grab_v2)
zwp_input_method_v2_grab_keyboard =
  hs_bindgen_225796f9f5dc5d00

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_destroy@
foreign import ccall unsafe "hs_bindgen_820ddee524f5e4d3" hs_bindgen_820ddee524f5e4d3_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_v2_destroy@
hs_bindgen_820ddee524f5e4d3 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO ()
hs_bindgen_820ddee524f5e4d3 =
  RIP.fromFFIType hs_bindgen_820ddee524f5e4d3_base

{-|

  > iface_zwp_input_method_v2

  Destroys the zwp_text_input_v2 object and any associated child objects, i.e. zwp_input_popup_surface_v2 and zwp_input_method_keyboard_grab_v2.

__C declaration:__ @zwp_input_method_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 655:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_destroy ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> IO ()
zwp_input_method_v2_destroy =
  hs_bindgen_820ddee524f5e4d3

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_08ffcb591ce00f8f" hs_bindgen_08ffcb591ce00f8f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_add_listener@
hs_bindgen_08ffcb591ce00f8f ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> PtrConst.PtrConst Zwp_input_popup_surface_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_08ffcb591ce00f8f =
  RIP.fromFFIType hs_bindgen_08ffcb591ce00f8f_base

{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 687:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_add_listener ::
     RIP.Ptr Zwp_input_popup_surface_v2
     -- ^ __C declaration:__ @zwp_input_popup_surface_v2@
  -> PtrConst.PtrConst Zwp_input_popup_surface_v2_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwp_input_popup_surface_v2_add_listener =
  hs_bindgen_08ffcb591ce00f8f

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_3a4b85f876e7a0b7" hs_bindgen_3a4b85f876e7a0b7_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_set_user_data@
hs_bindgen_3a4b85f876e7a0b7 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_3a4b85f876e7a0b7 =
  RIP.fromFFIType hs_bindgen_3a4b85f876e7a0b7_base

{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 708:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_set_user_data ::
     RIP.Ptr Zwp_input_popup_surface_v2
     -- ^ __C declaration:__ @zwp_input_popup_surface_v2@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwp_input_popup_surface_v2_set_user_data =
  hs_bindgen_3a4b85f876e7a0b7

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_f687644bb0d13eb8" hs_bindgen_f687644bb0d13eb8_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_get_user_data@
hs_bindgen_f687644bb0d13eb8 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f687644bb0d13eb8 =
  RIP.fromFFIType hs_bindgen_f687644bb0d13eb8_base

{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 715:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_user_data ::
     RIP.Ptr Zwp_input_popup_surface_v2
     -- ^ __C declaration:__ @zwp_input_popup_surface_v2@
  -> IO (RIP.Ptr RIP.Void)
zwp_input_popup_surface_v2_get_user_data =
  hs_bindgen_f687644bb0d13eb8

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_get_version@
foreign import ccall unsafe "hs_bindgen_41ec926f5d559f44" hs_bindgen_41ec926f5d559f44_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_get_version@
hs_bindgen_41ec926f5d559f44 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_41ec926f5d559f44 =
  RIP.fromFFIType hs_bindgen_41ec926f5d559f44_base

{-| __C declaration:__ @zwp_input_popup_surface_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 721:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_version ::
     RIP.Ptr Zwp_input_popup_surface_v2
     -- ^ __C declaration:__ @zwp_input_popup_surface_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_popup_surface_v2_get_version =
  hs_bindgen_41ec926f5d559f44

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_destroy@
foreign import ccall unsafe "hs_bindgen_f9b84969f2e91abb" hs_bindgen_f9b84969f2e91abb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_popup_surface_v2_destroy@
hs_bindgen_f9b84969f2e91abb ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO ()
hs_bindgen_f9b84969f2e91abb =
  RIP.fromFFIType hs_bindgen_f9b84969f2e91abb_base

{-|

  > iface_zwp_input_popup_surface_v2

__C declaration:__ @zwp_input_popup_surface_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 730:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_destroy ::
     RIP.Ptr Zwp_input_popup_surface_v2
     -- ^ __C declaration:__ @zwp_input_popup_surface_v2@
  -> IO ()
zwp_input_popup_surface_v2_destroy =
  hs_bindgen_f9b84969f2e91abb

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_e9bd0aa5af87f8a9" hs_bindgen_e9bd0aa5af87f8a9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_add_listener@
hs_bindgen_e9bd0aa5af87f8a9 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_e9bd0aa5af87f8a9 =
  RIP.fromFFIType hs_bindgen_e9bd0aa5af87f8a9_base

{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_add_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 819:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_add_listener ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener
     -- ^ __C declaration:__ @listener@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @data@
  -> IO RIP.CInt
zwp_input_method_keyboard_grab_v2_add_listener =
  hs_bindgen_e9bd0aa5af87f8a9

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_e945d64889a8457b" hs_bindgen_e945d64889a8457b_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_set_user_data@
hs_bindgen_e945d64889a8457b ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e945d64889a8457b =
  RIP.fromFFIType hs_bindgen_e945d64889a8457b_base

{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 852:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_set_user_data ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwp_input_method_keyboard_grab_v2_set_user_data =
  hs_bindgen_e945d64889a8457b

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_afed6c99fa4df959" hs_bindgen_afed6c99fa4df959_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_get_user_data@
hs_bindgen_afed6c99fa4df959 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_afed6c99fa4df959 =
  RIP.fromFFIType hs_bindgen_afed6c99fa4df959_base

{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 859:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_user_data ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> IO (RIP.Ptr RIP.Void)
zwp_input_method_keyboard_grab_v2_get_user_data =
  hs_bindgen_afed6c99fa4df959

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_get_version@
foreign import ccall unsafe "hs_bindgen_b74fd52b631e77ab" hs_bindgen_b74fd52b631e77ab_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_get_version@
hs_bindgen_b74fd52b631e77ab ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_b74fd52b631e77ab =
  RIP.fromFFIType hs_bindgen_b74fd52b631e77ab_base

{-| __C declaration:__ @zwp_input_method_keyboard_grab_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 865:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_version ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_keyboard_grab_v2_get_version =
  hs_bindgen_b74fd52b631e77ab

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_destroy@
foreign import ccall unsafe "hs_bindgen_4b1543732a7eabdc" hs_bindgen_4b1543732a7eabdc_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_destroy@
hs_bindgen_4b1543732a7eabdc ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO ()
hs_bindgen_4b1543732a7eabdc =
  RIP.fromFFIType hs_bindgen_4b1543732a7eabdc_base

{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 872:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_destroy ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> IO ()
zwp_input_method_keyboard_grab_v2_destroy =
  hs_bindgen_4b1543732a7eabdc

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_release@
foreign import ccall unsafe "hs_bindgen_7e7b1a93d177c2ea" hs_bindgen_7e7b1a93d177c2ea_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_keyboard_grab_v2_release@
hs_bindgen_7e7b1a93d177c2ea ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO ()
hs_bindgen_7e7b1a93d177c2ea =
  RIP.fromFFIType hs_bindgen_7e7b1a93d177c2ea_base

{-|

  > iface_zwp_input_method_keyboard_grab_v2

__C declaration:__ @zwp_input_method_keyboard_grab_v2_release@

__defined at:__ @input-method-unstable-v2-client-protocol.h 881:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_release ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> IO ()
zwp_input_method_keyboard_grab_v2_release =
  hs_bindgen_7e7b1a93d177c2ea

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_cbbf6ff9b344c79f" hs_bindgen_cbbf6ff9b344c79f_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_set_user_data@
hs_bindgen_cbbf6ff9b344c79f ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_cbbf6ff9b344c79f =
  RIP.fromFFIType hs_bindgen_cbbf6ff9b344c79f_base

{-|

  > iface_zwp_input_method_manager_v2

__C declaration:__ @zwp_input_method_manager_v2_set_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 902:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_set_user_data ::
     RIP.Ptr Zwp_input_method_manager_v2
     -- ^ __C declaration:__ @zwp_input_method_manager_v2@
  -> RIP.Ptr RIP.Void
     -- ^ __C declaration:__ @user_data@
  -> IO ()
zwp_input_method_manager_v2_set_user_data =
  hs_bindgen_cbbf6ff9b344c79f

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_30e769cc7724936e" hs_bindgen_30e769cc7724936e_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_get_user_data@
hs_bindgen_30e769cc7724936e ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_30e769cc7724936e =
  RIP.fromFFIType hs_bindgen_30e769cc7724936e_base

{-|

  > iface_zwp_input_method_manager_v2

__C declaration:__ @zwp_input_method_manager_v2_get_user_data@

__defined at:__ @input-method-unstable-v2-client-protocol.h 909:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_user_data ::
     RIP.Ptr Zwp_input_method_manager_v2
     -- ^ __C declaration:__ @zwp_input_method_manager_v2@
  -> IO (RIP.Ptr RIP.Void)
zwp_input_method_manager_v2_get_user_data =
  hs_bindgen_30e769cc7724936e

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_get_version@
foreign import ccall unsafe "hs_bindgen_78234fe9ea50645a" hs_bindgen_78234fe9ea50645a_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_get_version@
hs_bindgen_78234fe9ea50645a ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_78234fe9ea50645a =
  RIP.fromFFIType hs_bindgen_78234fe9ea50645a_base

{-| __C declaration:__ @zwp_input_method_manager_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 915:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_version ::
     RIP.Ptr Zwp_input_method_manager_v2
     -- ^ __C declaration:__ @zwp_input_method_manager_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_manager_v2_get_version =
  hs_bindgen_78234fe9ea50645a

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_get_input_method@
foreign import ccall unsafe "hs_bindgen_4d889ba18ea4b3c9" hs_bindgen_4d889ba18ea4b3c9_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_get_input_method@
hs_bindgen_4d889ba18ea4b3c9 ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> RIP.Ptr Generated.Wayland.Client.Wl_seat
  -> IO (RIP.Ptr Zwp_input_method_v2)
hs_bindgen_4d889ba18ea4b3c9 =
  RIP.fromFFIType hs_bindgen_4d889ba18ea4b3c9_base

{-|

  > iface_zwp_input_method_manager_v2

  Request a new input zwp_input_method_v2 object associated with a given seat.

__C declaration:__ @zwp_input_method_manager_v2_get_input_method@

__defined at:__ @input-method-unstable-v2-client-protocol.h 927:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_input_method ::
     RIP.Ptr Zwp_input_method_manager_v2
     -- ^ __C declaration:__ @zwp_input_method_manager_v2@
  -> RIP.Ptr Generated.Wayland.Client.Wl_seat
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr Zwp_input_method_v2)
zwp_input_method_manager_v2_get_input_method =
  hs_bindgen_4d889ba18ea4b3c9

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_destroy@
foreign import ccall unsafe "hs_bindgen_fa2d3b8d92748086" hs_bindgen_fa2d3b8d92748086_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Unsafe_zwp_input_method_manager_v2_destroy@
hs_bindgen_fa2d3b8d92748086 ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO ()
hs_bindgen_fa2d3b8d92748086 =
  RIP.fromFFIType hs_bindgen_fa2d3b8d92748086_base

{-|

  > iface_zwp_input_method_manager_v2

  Destroys the zwp_input_method_manager_v2 object.

  The zwp_input_method_v2 objects originating from it remain valid.

__C declaration:__ @zwp_input_method_manager_v2_destroy@

__defined at:__ @input-method-unstable-v2-client-protocol.h 945:1@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_destroy ::
     RIP.Ptr Zwp_input_method_manager_v2
     -- ^ __C declaration:__ @zwp_input_method_manager_v2@
  -> IO ()
zwp_input_method_manager_v2_destroy =
  hs_bindgen_fa2d3b8d92748086

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe
    ( Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_commit_string
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_set_preedit_string
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_delete_surrounding_text
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_commit
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_get_input_popup_surface
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_grab_keyboard
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_popup_surface_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_popup_surface_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_popup_surface_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_popup_surface_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_popup_surface_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_keyboard_grab_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_keyboard_grab_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_keyboard_grab_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_keyboard_grab_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_keyboard_grab_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_keyboard_grab_v2_release
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_manager_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_manager_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_manager_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_manager_v2_get_input_method
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Unsafe.zwp_input_method_manager_v2_destroy
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
  , "signed int hs_bindgen_9d717627be8c6112 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct zwp_input_method_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_99babd96b953f7ee ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_4df201281f30d16b ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_62393c4ef8dcfcbe ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_3bb6aa6ddc144752 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_commit_string)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_212c1f6e34eb7a56 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_set_preedit_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_9b19282d188d5352 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_delete_surrounding_text)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_a6b490ef883a98ca ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_commit)(arg1, arg2);"
  , "}"
  , "struct zwp_input_popup_surface_v2 *hs_bindgen_ebe1c8735ff90a1a ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_input_popup_surface)(arg1, arg2);"
  , "}"
  , "struct zwp_input_method_keyboard_grab_v2 *hs_bindgen_2993f79e3099526d ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_grab_keyboard)(arg1);"
  , "}"
  , "void hs_bindgen_969fe3152e44bfcf ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_c3ed9b1dc9133402 ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  struct zwp_input_popup_surface_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_139b6f8782137f72 ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_popup_surface_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_f12da39d008a3d89 ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_7f4ba4ad7c7fb78e ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_da328d6a1c84e810 ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_popup_surface_v2_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_13e3fcf0f7ace79e ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  struct zwp_input_method_keyboard_grab_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_59fc2496fb0ca778 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_c3829f9b63715fa9 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_84a76ef253d7f137 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_ae8f0eeb821ecf34 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_9634d21d4c93eee5 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_release)(arg1);"
  , "}"
  , "void hs_bindgen_dfbf47ac87c0823e ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_manager_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_7124559d0e6d8cfd ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2d41b360e5470e4f ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_version)(arg1);"
  , "}"
  , "struct zwp_input_method_v2 *hs_bindgen_8928d23c1b268038 ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_input_method)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_bae46b14e2436741 ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_manager_v2_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_9d717627be8c6112" hs_bindgen_9d717627be8c6112_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_add_listener@
hs_bindgen_9d717627be8c6112 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst Zwp_input_method_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_9d717627be8c6112 =
  RIP.fromFFIType hs_bindgen_9d717627be8c6112_base

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
  hs_bindgen_9d717627be8c6112

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_99babd96b953f7ee" hs_bindgen_99babd96b953f7ee_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_set_user_data@
hs_bindgen_99babd96b953f7ee ::
     RIP.Ptr Zwp_input_method_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_99babd96b953f7ee =
  RIP.fromFFIType hs_bindgen_99babd96b953f7ee_base

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
  hs_bindgen_99babd96b953f7ee

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_4df201281f30d16b" hs_bindgen_4df201281f30d16b_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_get_user_data@
hs_bindgen_4df201281f30d16b ::
     RIP.Ptr Zwp_input_method_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_4df201281f30d16b =
  RIP.fromFFIType hs_bindgen_4df201281f30d16b_base

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
  hs_bindgen_4df201281f30d16b

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_get_version@
foreign import ccall unsafe "hs_bindgen_62393c4ef8dcfcbe" hs_bindgen_62393c4ef8dcfcbe_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_get_version@
hs_bindgen_62393c4ef8dcfcbe ::
     RIP.Ptr Zwp_input_method_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_62393c4ef8dcfcbe =
  RIP.fromFFIType hs_bindgen_62393c4ef8dcfcbe_base

{-| __C declaration:__ @zwp_input_method_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 475:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_version ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_v2_get_version =
  hs_bindgen_62393c4ef8dcfcbe

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_commit_string@
foreign import ccall unsafe "hs_bindgen_3bb6aa6ddc144752" hs_bindgen_3bb6aa6ddc144752_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_commit_string@
hs_bindgen_3bb6aa6ddc144752 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_3bb6aa6ddc144752 =
  RIP.fromFFIType hs_bindgen_3bb6aa6ddc144752_base

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
  hs_bindgen_3bb6aa6ddc144752

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_set_preedit_string@
foreign import ccall unsafe "hs_bindgen_212c1f6e34eb7a56" hs_bindgen_212c1f6e34eb7a56_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_set_preedit_string@
hs_bindgen_212c1f6e34eb7a56 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_212c1f6e34eb7a56 =
  RIP.fromFFIType hs_bindgen_212c1f6e34eb7a56_base

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
  hs_bindgen_212c1f6e34eb7a56

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_delete_surrounding_text@
foreign import ccall unsafe "hs_bindgen_9b19282d188d5352" hs_bindgen_9b19282d188d5352_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_delete_surrounding_text@
hs_bindgen_9b19282d188d5352 ::
     RIP.Ptr Zwp_input_method_v2
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_9b19282d188d5352 =
  RIP.fromFFIType hs_bindgen_9b19282d188d5352_base

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
  hs_bindgen_9b19282d188d5352

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_commit@
foreign import ccall unsafe "hs_bindgen_a6b490ef883a98ca" hs_bindgen_a6b490ef883a98ca_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_commit@
hs_bindgen_a6b490ef883a98ca ::
     RIP.Ptr Zwp_input_method_v2
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_a6b490ef883a98ca =
  RIP.fromFFIType hs_bindgen_a6b490ef883a98ca_base

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
  hs_bindgen_a6b490ef883a98ca

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_get_input_popup_surface@
foreign import ccall unsafe "hs_bindgen_ebe1c8735ff90a1a" hs_bindgen_ebe1c8735ff90a1a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_get_input_popup_surface@
hs_bindgen_ebe1c8735ff90a1a ::
     RIP.Ptr Zwp_input_method_v2
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr Zwp_input_popup_surface_v2)
hs_bindgen_ebe1c8735ff90a1a =
  RIP.fromFFIType hs_bindgen_ebe1c8735ff90a1a_base

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
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
     -- ^ __C declaration:__ @surface@
  -> IO (RIP.Ptr Zwp_input_popup_surface_v2)
zwp_input_method_v2_get_input_popup_surface =
  hs_bindgen_ebe1c8735ff90a1a

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_grab_keyboard@
foreign import ccall unsafe "hs_bindgen_2993f79e3099526d" hs_bindgen_2993f79e3099526d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_grab_keyboard@
hs_bindgen_2993f79e3099526d ::
     RIP.Ptr Zwp_input_method_v2
  -> IO (RIP.Ptr Zwp_input_method_keyboard_grab_v2)
hs_bindgen_2993f79e3099526d =
  RIP.fromFFIType hs_bindgen_2993f79e3099526d_base

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
  hs_bindgen_2993f79e3099526d

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_destroy@
foreign import ccall unsafe "hs_bindgen_969fe3152e44bfcf" hs_bindgen_969fe3152e44bfcf_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_v2_destroy@
hs_bindgen_969fe3152e44bfcf ::
     RIP.Ptr Zwp_input_method_v2
  -> IO ()
hs_bindgen_969fe3152e44bfcf =
  RIP.fromFFIType hs_bindgen_969fe3152e44bfcf_base

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
  hs_bindgen_969fe3152e44bfcf

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_c3ed9b1dc9133402" hs_bindgen_c3ed9b1dc9133402_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_add_listener@
hs_bindgen_c3ed9b1dc9133402 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> PtrConst.PtrConst Zwp_input_popup_surface_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_c3ed9b1dc9133402 =
  RIP.fromFFIType hs_bindgen_c3ed9b1dc9133402_base

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
  hs_bindgen_c3ed9b1dc9133402

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_139b6f8782137f72" hs_bindgen_139b6f8782137f72_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_set_user_data@
hs_bindgen_139b6f8782137f72 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_139b6f8782137f72 =
  RIP.fromFFIType hs_bindgen_139b6f8782137f72_base

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
  hs_bindgen_139b6f8782137f72

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_f12da39d008a3d89" hs_bindgen_f12da39d008a3d89_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_get_user_data@
hs_bindgen_f12da39d008a3d89 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_f12da39d008a3d89 =
  RIP.fromFFIType hs_bindgen_f12da39d008a3d89_base

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
  hs_bindgen_f12da39d008a3d89

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_get_version@
foreign import ccall unsafe "hs_bindgen_7f4ba4ad7c7fb78e" hs_bindgen_7f4ba4ad7c7fb78e_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_get_version@
hs_bindgen_7f4ba4ad7c7fb78e ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_7f4ba4ad7c7fb78e =
  RIP.fromFFIType hs_bindgen_7f4ba4ad7c7fb78e_base

{-| __C declaration:__ @zwp_input_popup_surface_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 721:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_version ::
     RIP.Ptr Zwp_input_popup_surface_v2
     -- ^ __C declaration:__ @zwp_input_popup_surface_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_popup_surface_v2_get_version =
  hs_bindgen_7f4ba4ad7c7fb78e

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_destroy@
foreign import ccall unsafe "hs_bindgen_da328d6a1c84e810" hs_bindgen_da328d6a1c84e810_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_popup_surface_v2_destroy@
hs_bindgen_da328d6a1c84e810 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO ()
hs_bindgen_da328d6a1c84e810 =
  RIP.fromFFIType hs_bindgen_da328d6a1c84e810_base

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
  hs_bindgen_da328d6a1c84e810

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_add_listener@
foreign import ccall unsafe "hs_bindgen_13e3fcf0f7ace79e" hs_bindgen_13e3fcf0f7ace79e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_add_listener@
hs_bindgen_13e3fcf0f7ace79e ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_13e3fcf0f7ace79e =
  RIP.fromFFIType hs_bindgen_13e3fcf0f7ace79e_base

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
  hs_bindgen_13e3fcf0f7ace79e

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_59fc2496fb0ca778" hs_bindgen_59fc2496fb0ca778_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_set_user_data@
hs_bindgen_59fc2496fb0ca778 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_59fc2496fb0ca778 =
  RIP.fromFFIType hs_bindgen_59fc2496fb0ca778_base

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
  hs_bindgen_59fc2496fb0ca778

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_c3829f9b63715fa9" hs_bindgen_c3829f9b63715fa9_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_get_user_data@
hs_bindgen_c3829f9b63715fa9 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_c3829f9b63715fa9 =
  RIP.fromFFIType hs_bindgen_c3829f9b63715fa9_base

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
  hs_bindgen_c3829f9b63715fa9

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_get_version@
foreign import ccall unsafe "hs_bindgen_84a76ef253d7f137" hs_bindgen_84a76ef253d7f137_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_get_version@
hs_bindgen_84a76ef253d7f137 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_84a76ef253d7f137 =
  RIP.fromFFIType hs_bindgen_84a76ef253d7f137_base

{-| __C declaration:__ @zwp_input_method_keyboard_grab_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 865:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_version ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_keyboard_grab_v2_get_version =
  hs_bindgen_84a76ef253d7f137

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_destroy@
foreign import ccall unsafe "hs_bindgen_ae8f0eeb821ecf34" hs_bindgen_ae8f0eeb821ecf34_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_destroy@
hs_bindgen_ae8f0eeb821ecf34 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO ()
hs_bindgen_ae8f0eeb821ecf34 =
  RIP.fromFFIType hs_bindgen_ae8f0eeb821ecf34_base

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
  hs_bindgen_ae8f0eeb821ecf34

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_release@
foreign import ccall unsafe "hs_bindgen_9634d21d4c93eee5" hs_bindgen_9634d21d4c93eee5_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_keyboard_grab_v2_release@
hs_bindgen_9634d21d4c93eee5 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO ()
hs_bindgen_9634d21d4c93eee5 =
  RIP.fromFFIType hs_bindgen_9634d21d4c93eee5_base

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
  hs_bindgen_9634d21d4c93eee5

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_set_user_data@
foreign import ccall unsafe "hs_bindgen_dfbf47ac87c0823e" hs_bindgen_dfbf47ac87c0823e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_set_user_data@
hs_bindgen_dfbf47ac87c0823e ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_dfbf47ac87c0823e =
  RIP.fromFFIType hs_bindgen_dfbf47ac87c0823e_base

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
  hs_bindgen_dfbf47ac87c0823e

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_get_user_data@
foreign import ccall unsafe "hs_bindgen_7124559d0e6d8cfd" hs_bindgen_7124559d0e6d8cfd_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_get_user_data@
hs_bindgen_7124559d0e6d8cfd ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_7124559d0e6d8cfd =
  RIP.fromFFIType hs_bindgen_7124559d0e6d8cfd_base

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
  hs_bindgen_7124559d0e6d8cfd

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_get_version@
foreign import ccall unsafe "hs_bindgen_2d41b360e5470e4f" hs_bindgen_2d41b360e5470e4f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_get_version@
hs_bindgen_2d41b360e5470e4f ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2d41b360e5470e4f =
  RIP.fromFFIType hs_bindgen_2d41b360e5470e4f_base

{-| __C declaration:__ @zwp_input_method_manager_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 915:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_version ::
     RIP.Ptr Zwp_input_method_manager_v2
     -- ^ __C declaration:__ @zwp_input_method_manager_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_manager_v2_get_version =
  hs_bindgen_2d41b360e5470e4f

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_get_input_method@
foreign import ccall unsafe "hs_bindgen_8928d23c1b268038" hs_bindgen_8928d23c1b268038_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_get_input_method@
hs_bindgen_8928d23c1b268038 ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> IO (RIP.Ptr Zwp_input_method_v2)
hs_bindgen_8928d23c1b268038 =
  RIP.fromFFIType hs_bindgen_8928d23c1b268038_base

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
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
     -- ^ __C declaration:__ @seat@
  -> IO (RIP.Ptr Zwp_input_method_v2)
zwp_input_method_manager_v2_get_input_method =
  hs_bindgen_8928d23c1b268038

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_destroy@
foreign import ccall unsafe "hs_bindgen_bae46b14e2436741" hs_bindgen_bae46b14e2436741_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Unsafe_zwp_input_method_manager_v2_destroy@
hs_bindgen_bae46b14e2436741 ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO ()
hs_bindgen_bae46b14e2436741 =
  RIP.fromFFIType hs_bindgen_bae46b14e2436741_base

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
  hs_bindgen_bae46b14e2436741

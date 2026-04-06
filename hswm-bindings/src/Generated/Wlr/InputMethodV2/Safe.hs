{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Generated.Wlr.InputMethodV2.Safe
    ( Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_add_listener
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_set_user_data
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_get_user_data
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_get_version
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_commit_string
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_set_preedit_string
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_delete_surrounding_text
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_commit
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_get_input_popup_surface
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_grab_keyboard
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_v2_destroy
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_popup_surface_v2_add_listener
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_popup_surface_v2_set_user_data
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_popup_surface_v2_get_user_data
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_popup_surface_v2_get_version
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_popup_surface_v2_destroy
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_keyboard_grab_v2_add_listener
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_keyboard_grab_v2_set_user_data
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_keyboard_grab_v2_get_user_data
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_keyboard_grab_v2_get_version
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_keyboard_grab_v2_destroy
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_keyboard_grab_v2_release
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_manager_v2_set_user_data
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_manager_v2_get_user_data
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_manager_v2_get_version
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_manager_v2_get_input_method
    , Generated.Wlr.InputMethodV2.Safe.zwp_input_method_manager_v2_destroy
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
  , "signed int hs_bindgen_51865410c3b1fb36 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct zwp_input_method_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_e6c1b98ce0fa6b5c ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_345ba0c5665d1981 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_278c0e429f7e08c1 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_db6a6a1494904ba3 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_commit_string)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_aeb6ea8a71bb2c94 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_set_preedit_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_df0f29318431f0d3 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_delete_surrounding_text)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_93fdbe0242d5b1a1 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_commit)(arg1, arg2);"
  , "}"
  , "struct zwp_input_popup_surface_v2 *hs_bindgen_85f4a474828255f5 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_input_popup_surface)(arg1, arg2);"
  , "}"
  , "struct zwp_input_method_keyboard_grab_v2 *hs_bindgen_2487efb612389559 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_grab_keyboard)(arg1);"
  , "}"
  , "void hs_bindgen_8d8e2c5ee6edb155 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_2c632bc61ed13a72 ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  struct zwp_input_popup_surface_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_0e2b307fec7cf06e ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_popup_surface_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_1abf9e7bf4ea7f87 ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2e77ea8c9b78390d ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_6dc658061d3dbc10 ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_popup_surface_v2_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_6604259b3d0f82de ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  struct zwp_input_method_keyboard_grab_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_37ebf6c140bfc056 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_341bd79bdd1d8a2d ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_2b39c8117b51c028 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_8dcd53b52e883052 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_3cf1f45868da7431 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_release)(arg1);"
  , "}"
  , "void hs_bindgen_955aeadf9d58305a ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_manager_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_220773c96c23c55a ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_98fd41806285ff1f ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_version)(arg1);"
  , "}"
  , "struct zwp_input_method_v2 *hs_bindgen_9f4e4bc377ff220d ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_input_method)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_56360c85f598514b ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_manager_v2_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_add_listener@
foreign import ccall safe "hs_bindgen_51865410c3b1fb36" hs_bindgen_51865410c3b1fb36_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_add_listener@
hs_bindgen_51865410c3b1fb36 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst Zwp_input_method_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_51865410c3b1fb36 =
  RIP.fromFFIType hs_bindgen_51865410c3b1fb36_base

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
  hs_bindgen_51865410c3b1fb36

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_set_user_data@
foreign import ccall safe "hs_bindgen_e6c1b98ce0fa6b5c" hs_bindgen_e6c1b98ce0fa6b5c_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_set_user_data@
hs_bindgen_e6c1b98ce0fa6b5c ::
     RIP.Ptr Zwp_input_method_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_e6c1b98ce0fa6b5c =
  RIP.fromFFIType hs_bindgen_e6c1b98ce0fa6b5c_base

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
  hs_bindgen_e6c1b98ce0fa6b5c

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_get_user_data@
foreign import ccall safe "hs_bindgen_345ba0c5665d1981" hs_bindgen_345ba0c5665d1981_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_get_user_data@
hs_bindgen_345ba0c5665d1981 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_345ba0c5665d1981 =
  RIP.fromFFIType hs_bindgen_345ba0c5665d1981_base

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
  hs_bindgen_345ba0c5665d1981

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_get_version@
foreign import ccall safe "hs_bindgen_278c0e429f7e08c1" hs_bindgen_278c0e429f7e08c1_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_get_version@
hs_bindgen_278c0e429f7e08c1 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_278c0e429f7e08c1 =
  RIP.fromFFIType hs_bindgen_278c0e429f7e08c1_base

{-| __C declaration:__ @zwp_input_method_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 475:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_version ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_v2_get_version =
  hs_bindgen_278c0e429f7e08c1

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_commit_string@
foreign import ccall safe "hs_bindgen_db6a6a1494904ba3" hs_bindgen_db6a6a1494904ba3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_commit_string@
hs_bindgen_db6a6a1494904ba3 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_db6a6a1494904ba3 =
  RIP.fromFFIType hs_bindgen_db6a6a1494904ba3_base

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
  hs_bindgen_db6a6a1494904ba3

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_set_preedit_string@
foreign import ccall safe "hs_bindgen_aeb6ea8a71bb2c94" hs_bindgen_aeb6ea8a71bb2c94_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_set_preedit_string@
hs_bindgen_aeb6ea8a71bb2c94 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_aeb6ea8a71bb2c94 =
  RIP.fromFFIType hs_bindgen_aeb6ea8a71bb2c94_base

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
  hs_bindgen_aeb6ea8a71bb2c94

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_delete_surrounding_text@
foreign import ccall safe "hs_bindgen_df0f29318431f0d3" hs_bindgen_df0f29318431f0d3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_delete_surrounding_text@
hs_bindgen_df0f29318431f0d3 ::
     RIP.Ptr Zwp_input_method_v2
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_df0f29318431f0d3 =
  RIP.fromFFIType hs_bindgen_df0f29318431f0d3_base

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
  hs_bindgen_df0f29318431f0d3

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_commit@
foreign import ccall safe "hs_bindgen_93fdbe0242d5b1a1" hs_bindgen_93fdbe0242d5b1a1_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_commit@
hs_bindgen_93fdbe0242d5b1a1 ::
     RIP.Ptr Zwp_input_method_v2
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_93fdbe0242d5b1a1 =
  RIP.fromFFIType hs_bindgen_93fdbe0242d5b1a1_base

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
  hs_bindgen_93fdbe0242d5b1a1

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_get_input_popup_surface@
foreign import ccall safe "hs_bindgen_85f4a474828255f5" hs_bindgen_85f4a474828255f5_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_get_input_popup_surface@
hs_bindgen_85f4a474828255f5 ::
     RIP.Ptr Zwp_input_method_v2
  -> RIP.Ptr Generated.Wayland.Client.Wl_surface
  -> IO (RIP.Ptr Zwp_input_popup_surface_v2)
hs_bindgen_85f4a474828255f5 =
  RIP.fromFFIType hs_bindgen_85f4a474828255f5_base

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
  hs_bindgen_85f4a474828255f5

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_grab_keyboard@
foreign import ccall safe "hs_bindgen_2487efb612389559" hs_bindgen_2487efb612389559_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_grab_keyboard@
hs_bindgen_2487efb612389559 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO (RIP.Ptr Zwp_input_method_keyboard_grab_v2)
hs_bindgen_2487efb612389559 =
  RIP.fromFFIType hs_bindgen_2487efb612389559_base

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
  hs_bindgen_2487efb612389559

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_destroy@
foreign import ccall safe "hs_bindgen_8d8e2c5ee6edb155" hs_bindgen_8d8e2c5ee6edb155_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_v2_destroy@
hs_bindgen_8d8e2c5ee6edb155 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO ()
hs_bindgen_8d8e2c5ee6edb155 =
  RIP.fromFFIType hs_bindgen_8d8e2c5ee6edb155_base

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
  hs_bindgen_8d8e2c5ee6edb155

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_add_listener@
foreign import ccall safe "hs_bindgen_2c632bc61ed13a72" hs_bindgen_2c632bc61ed13a72_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_add_listener@
hs_bindgen_2c632bc61ed13a72 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> PtrConst.PtrConst Zwp_input_popup_surface_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_2c632bc61ed13a72 =
  RIP.fromFFIType hs_bindgen_2c632bc61ed13a72_base

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
  hs_bindgen_2c632bc61ed13a72

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_set_user_data@
foreign import ccall safe "hs_bindgen_0e2b307fec7cf06e" hs_bindgen_0e2b307fec7cf06e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_set_user_data@
hs_bindgen_0e2b307fec7cf06e ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_0e2b307fec7cf06e =
  RIP.fromFFIType hs_bindgen_0e2b307fec7cf06e_base

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
  hs_bindgen_0e2b307fec7cf06e

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_get_user_data@
foreign import ccall safe "hs_bindgen_1abf9e7bf4ea7f87" hs_bindgen_1abf9e7bf4ea7f87_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_get_user_data@
hs_bindgen_1abf9e7bf4ea7f87 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_1abf9e7bf4ea7f87 =
  RIP.fromFFIType hs_bindgen_1abf9e7bf4ea7f87_base

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
  hs_bindgen_1abf9e7bf4ea7f87

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_get_version@
foreign import ccall safe "hs_bindgen_2e77ea8c9b78390d" hs_bindgen_2e77ea8c9b78390d_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_get_version@
hs_bindgen_2e77ea8c9b78390d ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2e77ea8c9b78390d =
  RIP.fromFFIType hs_bindgen_2e77ea8c9b78390d_base

{-| __C declaration:__ @zwp_input_popup_surface_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 721:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_version ::
     RIP.Ptr Zwp_input_popup_surface_v2
     -- ^ __C declaration:__ @zwp_input_popup_surface_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_popup_surface_v2_get_version =
  hs_bindgen_2e77ea8c9b78390d

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_destroy@
foreign import ccall safe "hs_bindgen_6dc658061d3dbc10" hs_bindgen_6dc658061d3dbc10_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_popup_surface_v2_destroy@
hs_bindgen_6dc658061d3dbc10 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO ()
hs_bindgen_6dc658061d3dbc10 =
  RIP.fromFFIType hs_bindgen_6dc658061d3dbc10_base

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
  hs_bindgen_6dc658061d3dbc10

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_add_listener@
foreign import ccall safe "hs_bindgen_6604259b3d0f82de" hs_bindgen_6604259b3d0f82de_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_add_listener@
hs_bindgen_6604259b3d0f82de ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_6604259b3d0f82de =
  RIP.fromFFIType hs_bindgen_6604259b3d0f82de_base

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
  hs_bindgen_6604259b3d0f82de

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_set_user_data@
foreign import ccall safe "hs_bindgen_37ebf6c140bfc056" hs_bindgen_37ebf6c140bfc056_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_set_user_data@
hs_bindgen_37ebf6c140bfc056 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_37ebf6c140bfc056 =
  RIP.fromFFIType hs_bindgen_37ebf6c140bfc056_base

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
  hs_bindgen_37ebf6c140bfc056

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_get_user_data@
foreign import ccall safe "hs_bindgen_341bd79bdd1d8a2d" hs_bindgen_341bd79bdd1d8a2d_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_get_user_data@
hs_bindgen_341bd79bdd1d8a2d ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_341bd79bdd1d8a2d =
  RIP.fromFFIType hs_bindgen_341bd79bdd1d8a2d_base

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
  hs_bindgen_341bd79bdd1d8a2d

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_get_version@
foreign import ccall safe "hs_bindgen_2b39c8117b51c028" hs_bindgen_2b39c8117b51c028_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_get_version@
hs_bindgen_2b39c8117b51c028 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_2b39c8117b51c028 =
  RIP.fromFFIType hs_bindgen_2b39c8117b51c028_base

{-| __C declaration:__ @zwp_input_method_keyboard_grab_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 865:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_version ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_keyboard_grab_v2_get_version =
  hs_bindgen_2b39c8117b51c028

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_destroy@
foreign import ccall safe "hs_bindgen_8dcd53b52e883052" hs_bindgen_8dcd53b52e883052_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_destroy@
hs_bindgen_8dcd53b52e883052 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO ()
hs_bindgen_8dcd53b52e883052 =
  RIP.fromFFIType hs_bindgen_8dcd53b52e883052_base

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
  hs_bindgen_8dcd53b52e883052

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_release@
foreign import ccall safe "hs_bindgen_3cf1f45868da7431" hs_bindgen_3cf1f45868da7431_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_keyboard_grab_v2_release@
hs_bindgen_3cf1f45868da7431 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO ()
hs_bindgen_3cf1f45868da7431 =
  RIP.fromFFIType hs_bindgen_3cf1f45868da7431_base

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
  hs_bindgen_3cf1f45868da7431

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_set_user_data@
foreign import ccall safe "hs_bindgen_955aeadf9d58305a" hs_bindgen_955aeadf9d58305a_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_set_user_data@
hs_bindgen_955aeadf9d58305a ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_955aeadf9d58305a =
  RIP.fromFFIType hs_bindgen_955aeadf9d58305a_base

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
  hs_bindgen_955aeadf9d58305a

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_get_user_data@
foreign import ccall safe "hs_bindgen_220773c96c23c55a" hs_bindgen_220773c96c23c55a_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_get_user_data@
hs_bindgen_220773c96c23c55a ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_220773c96c23c55a =
  RIP.fromFFIType hs_bindgen_220773c96c23c55a_base

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
  hs_bindgen_220773c96c23c55a

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_get_version@
foreign import ccall safe "hs_bindgen_98fd41806285ff1f" hs_bindgen_98fd41806285ff1f_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_get_version@
hs_bindgen_98fd41806285ff1f ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_98fd41806285ff1f =
  RIP.fromFFIType hs_bindgen_98fd41806285ff1f_base

{-| __C declaration:__ @zwp_input_method_manager_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 915:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_version ::
     RIP.Ptr Zwp_input_method_manager_v2
     -- ^ __C declaration:__ @zwp_input_method_manager_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_manager_v2_get_version =
  hs_bindgen_98fd41806285ff1f

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_get_input_method@
foreign import ccall safe "hs_bindgen_9f4e4bc377ff220d" hs_bindgen_9f4e4bc377ff220d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_get_input_method@
hs_bindgen_9f4e4bc377ff220d ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> RIP.Ptr Generated.Wayland.Client.Wl_seat
  -> IO (RIP.Ptr Zwp_input_method_v2)
hs_bindgen_9f4e4bc377ff220d =
  RIP.fromFFIType hs_bindgen_9f4e4bc377ff220d_base

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
  hs_bindgen_9f4e4bc377ff220d

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_destroy@
foreign import ccall safe "hs_bindgen_56360c85f598514b" hs_bindgen_56360c85f598514b_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Wlr_InputMethodV2_Generated.Wlr.InputMethodV2_Safe_zwp_input_method_manager_v2_destroy@
hs_bindgen_56360c85f598514b ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO ()
hs_bindgen_56360c85f598514b =
  RIP.fromFFIType hs_bindgen_56360c85f598514b_base

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
  hs_bindgen_56360c85f598514b

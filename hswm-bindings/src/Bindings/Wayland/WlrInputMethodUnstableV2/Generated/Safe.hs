{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe
    ( Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_commit_string
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_set_preedit_string
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_delete_surrounding_text
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_commit
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_get_input_popup_surface
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_grab_keyboard
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_popup_surface_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_popup_surface_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_popup_surface_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_popup_surface_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_popup_surface_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_keyboard_grab_v2_add_listener
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_keyboard_grab_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_keyboard_grab_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_keyboard_grab_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_keyboard_grab_v2_destroy
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_keyboard_grab_v2_release
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_manager_v2_set_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_manager_v2_get_user_data
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_manager_v2_get_version
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_manager_v2_get_input_method
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe.zwp_input_method_manager_v2_destroy
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
  , "signed int hs_bindgen_0cd97ff36c1e1d74 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct zwp_input_method_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_175777d08e50ee61 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_a98b600d6182a950 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_d6a47bb8678a61d7 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_5b1f4b19d128953e ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_commit_string)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_2ce16cb8247e1abf ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  char const *arg2,"
  , "  int32_t arg3,"
  , "  int32_t arg4"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_set_preedit_string)(arg1, arg2, arg3, arg4);"
  , "}"
  , "void hs_bindgen_169c6c136803450d ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2,"
  , "  uint32_t arg3"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_delete_surrounding_text)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_d649ec8fb25a0bf0 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  uint32_t arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_commit)(arg1, arg2);"
  , "}"
  , "struct zwp_input_popup_surface_v2 *hs_bindgen_cee1b2818f9af2d8 ("
  , "  struct zwp_input_method_v2 *arg1,"
  , "  struct wl_surface *arg2"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_get_input_popup_surface)(arg1, arg2);"
  , "}"
  , "struct zwp_input_method_keyboard_grab_v2 *hs_bindgen_3f3758527d6ea770 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_v2_grab_keyboard)(arg1);"
  , "}"
  , "void hs_bindgen_a6f68cf7fbf3ec10 ("
  , "  struct zwp_input_method_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_v2_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_bb72ef516a311508 ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  struct zwp_input_popup_surface_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_99c6a6a6e87b6f14 ("
  , "  struct zwp_input_popup_surface_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_popup_surface_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_d5109ed372958aba ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_24bba6ce055b1a03 ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_popup_surface_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_24ea3ee6b0b13981 ("
  , "  struct zwp_input_popup_surface_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_popup_surface_v2_destroy)(arg1);"
  , "}"
  , "signed int hs_bindgen_181c2f6bdd2ac8bf ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  struct zwp_input_method_keyboard_grab_v2_listener const *arg2,"
  , "  void *arg3"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_add_listener)(arg1, arg2, arg3);"
  , "}"
  , "void hs_bindgen_1b64d8c9f1684184 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_3b43d7af9513779f ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_25737b6f03b32117 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_keyboard_grab_v2_get_version)(arg1);"
  , "}"
  , "void hs_bindgen_e4ce62fcaec561bb ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_destroy)(arg1);"
  , "}"
  , "void hs_bindgen_56b441b561d56d62 ("
  , "  struct zwp_input_method_keyboard_grab_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_keyboard_grab_v2_release)(arg1);"
  , "}"
  , "void hs_bindgen_2142da842646cbd3 ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  void *arg2"
  , ")"
  , "{"
  , "  (zwp_input_method_manager_v2_set_user_data)(arg1, arg2);"
  , "}"
  , "void *hs_bindgen_0296dfbec8d9c8be ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_user_data)(arg1);"
  , "}"
  , "uint32_t hs_bindgen_4134ce25acc8a0f9 ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_version)(arg1);"
  , "}"
  , "struct zwp_input_method_v2 *hs_bindgen_35fe6b5207c230a0 ("
  , "  struct zwp_input_method_manager_v2 *arg1,"
  , "  struct wl_seat *arg2"
  , ")"
  , "{"
  , "  return (zwp_input_method_manager_v2_get_input_method)(arg1, arg2);"
  , "}"
  , "void hs_bindgen_c5c5e1e0a5420a93 ("
  , "  struct zwp_input_method_manager_v2 *arg1"
  , ")"
  , "{"
  , "  (zwp_input_method_manager_v2_destroy)(arg1);"
  , "}"
  ]))

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_add_listener@
foreign import ccall safe "hs_bindgen_0cd97ff36c1e1d74" hs_bindgen_0cd97ff36c1e1d74_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_add_listener@
hs_bindgen_0cd97ff36c1e1d74 ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst Zwp_input_method_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_0cd97ff36c1e1d74 =
  RIP.fromFFIType hs_bindgen_0cd97ff36c1e1d74_base

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
  hs_bindgen_0cd97ff36c1e1d74

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_set_user_data@
foreign import ccall safe "hs_bindgen_175777d08e50ee61" hs_bindgen_175777d08e50ee61_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_set_user_data@
hs_bindgen_175777d08e50ee61 ::
     RIP.Ptr Zwp_input_method_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_175777d08e50ee61 =
  RIP.fromFFIType hs_bindgen_175777d08e50ee61_base

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
  hs_bindgen_175777d08e50ee61

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_get_user_data@
foreign import ccall safe "hs_bindgen_a98b600d6182a950" hs_bindgen_a98b600d6182a950_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_get_user_data@
hs_bindgen_a98b600d6182a950 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_a98b600d6182a950 =
  RIP.fromFFIType hs_bindgen_a98b600d6182a950_base

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
  hs_bindgen_a98b600d6182a950

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_get_version@
foreign import ccall safe "hs_bindgen_d6a47bb8678a61d7" hs_bindgen_d6a47bb8678a61d7_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_get_version@
hs_bindgen_d6a47bb8678a61d7 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_d6a47bb8678a61d7 =
  RIP.fromFFIType hs_bindgen_d6a47bb8678a61d7_base

{-| __C declaration:__ @zwp_input_method_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 475:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_v2_get_version ::
     RIP.Ptr Zwp_input_method_v2
     -- ^ __C declaration:__ @zwp_input_method_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_v2_get_version =
  hs_bindgen_d6a47bb8678a61d7

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_commit_string@
foreign import ccall safe "hs_bindgen_5b1f4b19d128953e" hs_bindgen_5b1f4b19d128953e_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_commit_string@
hs_bindgen_5b1f4b19d128953e ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst RIP.CChar
  -> IO ()
hs_bindgen_5b1f4b19d128953e =
  RIP.fromFFIType hs_bindgen_5b1f4b19d128953e_base

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
  hs_bindgen_5b1f4b19d128953e

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_set_preedit_string@
foreign import ccall safe "hs_bindgen_2ce16cb8247e1abf" hs_bindgen_2ce16cb8247e1abf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Int32
  -> RIP.Int32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_set_preedit_string@
hs_bindgen_2ce16cb8247e1abf ::
     RIP.Ptr Zwp_input_method_v2
  -> PtrConst.PtrConst RIP.CChar
  -> HsBindgen.Runtime.LibC.Int32
  -> HsBindgen.Runtime.LibC.Int32
  -> IO ()
hs_bindgen_2ce16cb8247e1abf =
  RIP.fromFFIType hs_bindgen_2ce16cb8247e1abf_base

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
  hs_bindgen_2ce16cb8247e1abf

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_delete_surrounding_text@
foreign import ccall safe "hs_bindgen_169c6c136803450d" hs_bindgen_169c6c136803450d_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_delete_surrounding_text@
hs_bindgen_169c6c136803450d ::
     RIP.Ptr Zwp_input_method_v2
  -> HsBindgen.Runtime.LibC.Word32
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_169c6c136803450d =
  RIP.fromFFIType hs_bindgen_169c6c136803450d_base

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
  hs_bindgen_169c6c136803450d

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_commit@
foreign import ccall safe "hs_bindgen_d649ec8fb25a0bf0" hs_bindgen_d649ec8fb25a0bf0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Word32
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_commit@
hs_bindgen_d649ec8fb25a0bf0 ::
     RIP.Ptr Zwp_input_method_v2
  -> HsBindgen.Runtime.LibC.Word32
  -> IO ()
hs_bindgen_d649ec8fb25a0bf0 =
  RIP.fromFFIType hs_bindgen_d649ec8fb25a0bf0_base

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
  hs_bindgen_d649ec8fb25a0bf0

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_get_input_popup_surface@
foreign import ccall safe "hs_bindgen_cee1b2818f9af2d8" hs_bindgen_cee1b2818f9af2d8_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_get_input_popup_surface@
hs_bindgen_cee1b2818f9af2d8 ::
     RIP.Ptr Zwp_input_method_v2
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_surface
  -> IO (RIP.Ptr Zwp_input_popup_surface_v2)
hs_bindgen_cee1b2818f9af2d8 =
  RIP.fromFFIType hs_bindgen_cee1b2818f9af2d8_base

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
  hs_bindgen_cee1b2818f9af2d8

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_grab_keyboard@
foreign import ccall safe "hs_bindgen_3f3758527d6ea770" hs_bindgen_3f3758527d6ea770_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_grab_keyboard@
hs_bindgen_3f3758527d6ea770 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO (RIP.Ptr Zwp_input_method_keyboard_grab_v2)
hs_bindgen_3f3758527d6ea770 =
  RIP.fromFFIType hs_bindgen_3f3758527d6ea770_base

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
  hs_bindgen_3f3758527d6ea770

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_destroy@
foreign import ccall safe "hs_bindgen_a6f68cf7fbf3ec10" hs_bindgen_a6f68cf7fbf3ec10_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_v2_destroy@
hs_bindgen_a6f68cf7fbf3ec10 ::
     RIP.Ptr Zwp_input_method_v2
  -> IO ()
hs_bindgen_a6f68cf7fbf3ec10 =
  RIP.fromFFIType hs_bindgen_a6f68cf7fbf3ec10_base

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
  hs_bindgen_a6f68cf7fbf3ec10

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_add_listener@
foreign import ccall safe "hs_bindgen_bb72ef516a311508" hs_bindgen_bb72ef516a311508_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_add_listener@
hs_bindgen_bb72ef516a311508 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> PtrConst.PtrConst Zwp_input_popup_surface_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_bb72ef516a311508 =
  RIP.fromFFIType hs_bindgen_bb72ef516a311508_base

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
  hs_bindgen_bb72ef516a311508

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_set_user_data@
foreign import ccall safe "hs_bindgen_99c6a6a6e87b6f14" hs_bindgen_99c6a6a6e87b6f14_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_set_user_data@
hs_bindgen_99c6a6a6e87b6f14 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_99c6a6a6e87b6f14 =
  RIP.fromFFIType hs_bindgen_99c6a6a6e87b6f14_base

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
  hs_bindgen_99c6a6a6e87b6f14

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_get_user_data@
foreign import ccall safe "hs_bindgen_d5109ed372958aba" hs_bindgen_d5109ed372958aba_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_get_user_data@
hs_bindgen_d5109ed372958aba ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_d5109ed372958aba =
  RIP.fromFFIType hs_bindgen_d5109ed372958aba_base

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
  hs_bindgen_d5109ed372958aba

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_get_version@
foreign import ccall safe "hs_bindgen_24bba6ce055b1a03" hs_bindgen_24bba6ce055b1a03_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_get_version@
hs_bindgen_24bba6ce055b1a03 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_24bba6ce055b1a03 =
  RIP.fromFFIType hs_bindgen_24bba6ce055b1a03_base

{-| __C declaration:__ @zwp_input_popup_surface_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 721:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_popup_surface_v2_get_version ::
     RIP.Ptr Zwp_input_popup_surface_v2
     -- ^ __C declaration:__ @zwp_input_popup_surface_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_popup_surface_v2_get_version =
  hs_bindgen_24bba6ce055b1a03

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_destroy@
foreign import ccall safe "hs_bindgen_24ea3ee6b0b13981" hs_bindgen_24ea3ee6b0b13981_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_popup_surface_v2_destroy@
hs_bindgen_24ea3ee6b0b13981 ::
     RIP.Ptr Zwp_input_popup_surface_v2
  -> IO ()
hs_bindgen_24ea3ee6b0b13981 =
  RIP.fromFFIType hs_bindgen_24ea3ee6b0b13981_base

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
  hs_bindgen_24ea3ee6b0b13981

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_add_listener@
foreign import ccall safe "hs_bindgen_181c2f6bdd2ac8bf" hs_bindgen_181c2f6bdd2ac8bf_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO RIP.Int32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_add_listener@
hs_bindgen_181c2f6bdd2ac8bf ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> PtrConst.PtrConst Zwp_input_method_keyboard_grab_v2_listener
  -> RIP.Ptr RIP.Void
  -> IO RIP.CInt
hs_bindgen_181c2f6bdd2ac8bf =
  RIP.fromFFIType hs_bindgen_181c2f6bdd2ac8bf_base

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
  hs_bindgen_181c2f6bdd2ac8bf

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_set_user_data@
foreign import ccall safe "hs_bindgen_1b64d8c9f1684184" hs_bindgen_1b64d8c9f1684184_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_set_user_data@
hs_bindgen_1b64d8c9f1684184 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_1b64d8c9f1684184 =
  RIP.fromFFIType hs_bindgen_1b64d8c9f1684184_base

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
  hs_bindgen_1b64d8c9f1684184

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_get_user_data@
foreign import ccall safe "hs_bindgen_3b43d7af9513779f" hs_bindgen_3b43d7af9513779f_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_get_user_data@
hs_bindgen_3b43d7af9513779f ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_3b43d7af9513779f =
  RIP.fromFFIType hs_bindgen_3b43d7af9513779f_base

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
  hs_bindgen_3b43d7af9513779f

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_get_version@
foreign import ccall safe "hs_bindgen_25737b6f03b32117" hs_bindgen_25737b6f03b32117_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_get_version@
hs_bindgen_25737b6f03b32117 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_25737b6f03b32117 =
  RIP.fromFFIType hs_bindgen_25737b6f03b32117_base

{-| __C declaration:__ @zwp_input_method_keyboard_grab_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 865:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_keyboard_grab_v2_get_version ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
     -- ^ __C declaration:__ @zwp_input_method_keyboard_grab_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_keyboard_grab_v2_get_version =
  hs_bindgen_25737b6f03b32117

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_destroy@
foreign import ccall safe "hs_bindgen_e4ce62fcaec561bb" hs_bindgen_e4ce62fcaec561bb_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_destroy@
hs_bindgen_e4ce62fcaec561bb ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO ()
hs_bindgen_e4ce62fcaec561bb =
  RIP.fromFFIType hs_bindgen_e4ce62fcaec561bb_base

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
  hs_bindgen_e4ce62fcaec561bb

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_release@
foreign import ccall safe "hs_bindgen_56b441b561d56d62" hs_bindgen_56b441b561d56d62_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_keyboard_grab_v2_release@
hs_bindgen_56b441b561d56d62 ::
     RIP.Ptr Zwp_input_method_keyboard_grab_v2
  -> IO ()
hs_bindgen_56b441b561d56d62 =
  RIP.fromFFIType hs_bindgen_56b441b561d56d62_base

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
  hs_bindgen_56b441b561d56d62

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_set_user_data@
foreign import ccall safe "hs_bindgen_2142da842646cbd3" hs_bindgen_2142da842646cbd3_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_set_user_data@
hs_bindgen_2142da842646cbd3 ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> RIP.Ptr RIP.Void
  -> IO ()
hs_bindgen_2142da842646cbd3 =
  RIP.fromFFIType hs_bindgen_2142da842646cbd3_base

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
  hs_bindgen_2142da842646cbd3

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_get_user_data@
foreign import ccall safe "hs_bindgen_0296dfbec8d9c8be" hs_bindgen_0296dfbec8d9c8be_base ::
     RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_get_user_data@
hs_bindgen_0296dfbec8d9c8be ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO (RIP.Ptr RIP.Void)
hs_bindgen_0296dfbec8d9c8be =
  RIP.fromFFIType hs_bindgen_0296dfbec8d9c8be_base

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
  hs_bindgen_0296dfbec8d9c8be

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_get_version@
foreign import ccall safe "hs_bindgen_4134ce25acc8a0f9" hs_bindgen_4134ce25acc8a0f9_base ::
     RIP.Ptr RIP.Void
  -> IO RIP.Word32

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_get_version@
hs_bindgen_4134ce25acc8a0f9 ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO HsBindgen.Runtime.LibC.Word32
hs_bindgen_4134ce25acc8a0f9 =
  RIP.fromFFIType hs_bindgen_4134ce25acc8a0f9_base

{-| __C declaration:__ @zwp_input_method_manager_v2_get_version@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 915:1@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zwp_input_method_manager_v2_get_version ::
     RIP.Ptr Zwp_input_method_manager_v2
     -- ^ __C declaration:__ @zwp_input_method_manager_v2@
  -> IO HsBindgen.Runtime.LibC.Word32
zwp_input_method_manager_v2_get_version =
  hs_bindgen_4134ce25acc8a0f9

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_get_input_method@
foreign import ccall safe "hs_bindgen_35fe6b5207c230a0" hs_bindgen_35fe6b5207c230a0_base ::
     RIP.Ptr RIP.Void
  -> RIP.Ptr RIP.Void
  -> IO (RIP.Ptr RIP.Void)

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_get_input_method@
hs_bindgen_35fe6b5207c230a0 ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> RIP.Ptr Bindings.Wayland.Client.Generated.Wl_seat
  -> IO (RIP.Ptr Zwp_input_method_v2)
hs_bindgen_35fe6b5207c230a0 =
  RIP.fromFFIType hs_bindgen_35fe6b5207c230a0_base

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
  hs_bindgen_35fe6b5207c230a0

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_destroy@
foreign import ccall safe "hs_bindgen_c5c5e1e0a5420a93" hs_bindgen_c5c5e1e0a5420a93_base ::
     RIP.Ptr RIP.Void
  -> IO ()

-- __unique:__ @Bindings_Wayland_WlrInputMethodUnstableV2_Generated_Bindings.Wayland.WlrInputMethodUnstableV2.Generated_Safe_zwp_input_method_manager_v2_destroy@
hs_bindgen_c5c5e1e0a5420a93 ::
     RIP.Ptr Zwp_input_method_manager_v2
  -> IO ()
hs_bindgen_c5c5e1e0a5420a93 =
  RIP.fromFFIType hs_bindgen_c5c5e1e0a5420a93_base

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
  hs_bindgen_c5c5e1e0a5420a93

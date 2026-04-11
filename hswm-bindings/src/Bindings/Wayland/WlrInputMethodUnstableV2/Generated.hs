{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE UndecidableInstances #-}

module Bindings.Wayland.WlrInputMethodUnstableV2.Generated
    ( Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Zwp_input_method_keyboard_grab_v2
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Zwp_input_method_manager_v2
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Zwp_input_method_v2
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Zwp_input_popup_surface_v2
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Zwp_input_method_v2_error(..)
    , pattern Bindings.Wayland.WlrInputMethodUnstableV2.Generated.ZWP_INPUT_METHOD_V2_ERROR_ROLE
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Zwp_input_method_v2_listener(..)
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_COMMIT_STRING
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_SET_PREEDIT_STRING
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_DELETE_SURROUNDING_TEXT
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_COMMIT
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_GET_INPUT_POPUP_SURFACE
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_GRAB_KEYBOARD
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_DESTROY
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_ACTIVATE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_DEACTIVATE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_SURROUNDING_TEXT_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_TEXT_CHANGE_CAUSE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_CONTENT_TYPE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_DONE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_UNAVAILABLE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_COMMIT_STRING_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_SET_PREEDIT_STRING_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_DELETE_SURROUNDING_TEXT_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_COMMIT_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_GET_INPUT_POPUP_SURFACE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_GRAB_KEYBOARD_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_V2_DESTROY_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Zwp_input_popup_surface_v2_listener(..)
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_POPUP_SURFACE_V2_DESTROY
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_POPUP_SURFACE_V2_TEXT_INPUT_RECTANGLE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_POPUP_SURFACE_V2_DESTROY_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Zwp_input_method_keyboard_grab_v2_listener(..)
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_RELEASE
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_KEYMAP_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_KEY_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_MODIFIERS_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_REPEAT_INFO_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_RELEASE_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_MANAGER_V2_GET_INPUT_METHOD
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_MANAGER_V2_DESTROY
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_MANAGER_V2_GET_INPUT_METHOD_SINCE_VERSION
    , Bindings.Wayland.WlrInputMethodUnstableV2.Generated.zWP_INPUT_METHOD_MANAGER_V2_DESTROY_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-| __C declaration:__ @struct zwp_input_method_keyboard_grab_v2@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 76:8@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
data Zwp_input_method_keyboard_grab_v2

{-| __C declaration:__ @struct zwp_input_method_manager_v2@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 77:8@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
data Zwp_input_method_manager_v2

{-| __C declaration:__ @struct zwp_input_method_v2@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 78:8@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
data Zwp_input_method_v2

{-| __C declaration:__ @struct zwp_input_popup_surface_v2@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 79:8@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
data Zwp_input_popup_surface_v2

{-| __C declaration:__ @enum zwp_input_method_v2_error@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 206:6@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
newtype Zwp_input_method_v2_error = Zwp_input_method_v2_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwp_input_method_v2_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwp_input_method_v2_error where

  readRaw =
    \ptr0 ->
          pure Zwp_input_method_v2_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwp_input_method_v2_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwp_input_method_v2_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwp_input_method_v2_error instance RIP.Storable Zwp_input_method_v2_error

deriving via RIP.CUInt instance RIP.Prim Zwp_input_method_v2_error

instance CEnum.CEnum Zwp_input_method_v2_error where

  type CEnumZ Zwp_input_method_v2_error = RIP.CUInt

  toCEnum = Zwp_input_method_v2_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "ZWP_INPUT_METHOD_V2_ERROR_ROLE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwp_input_method_v2_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwp_input_method_v2_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwp_input_method_v2_error where

  minDeclaredValue = ZWP_INPUT_METHOD_V2_ERROR_ROLE

  maxDeclaredValue = ZWP_INPUT_METHOD_V2_ERROR_ROLE

instance Show Zwp_input_method_v2_error where

  showsPrec = CEnum.shows

instance Read Zwp_input_method_v2_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwp_input_method_v2_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwp_input_method_v2_error "unwrap" where

  type CFieldType Zwp_input_method_v2_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| wl_surface has another role

__C declaration:__ @ZWP_INPUT_METHOD_V2_ERROR_ROLE@

__defined at:__ @input-method-unstable-v2-client-protocol.h 210:2@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
pattern ZWP_INPUT_METHOD_V2_ERROR_ROLE :: Zwp_input_method_v2_error
pattern ZWP_INPUT_METHOD_V2_ERROR_ROLE = Zwp_input_method_v2_error 0

{-|

  > iface_zwp_input_method_v2

  > zwp_input_method_v2_listener

__C declaration:__ @struct zwp_input_method_v2_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 218:8@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
data Zwp_input_method_v2_listener = Zwp_input_method_v2_listener
  { activate :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())
    {- ^ input method has been requested

       Notification that a text input focused on this seat requested the input method to be activated.

       This event serves the purpose of providing the compositor with an active input method.

       This event resets all state associated with previous surrounding_text, text_change_cause, and content_type events, as well as the state associated with set_preedit_string, commit_string, and delete_surrounding_text requests. In addition, it marks the zwp_input_method_v2 object as active, and makes any existing zwp_input_popup_surface_v2 objects visible.

       The surrounding_text, and content_type events must follow before the next done event if the text input supports the respective functionality.

       State set with this event is double-buffered. It will get applied on the next zwp_input_method_v2.done event, and stay valid until changed.

    __C declaration:__ @activate@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 243:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , deactivate :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())
    {- ^ deactivate event

       Notification that no focused text input currently needs an active input method on this seat.

       This event marks the zwp_input_method_v2 object as inactive. The compositor must make all existing zwp_input_popup_surface_v2 objects invisible until the next activate event.

       State set with this event is double-buffered. It will get applied on the next zwp_input_method_v2.done event, and stay valid until changed.

    __C declaration:__ @deactivate@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 259:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , surrounding_text :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ surrounding text event

       Updates the surrounding plain text around the cursor, excluding the preedit text.

       If any preedit text is present, it is replaced with the cursor for the purpose of this event.

       The argument text is a buffer containing the surrounding text, and must include the cursor position, and the complete selection. It should contain additional characters before and after these. There is a maximum length of wayland messages, so text can not be longer than 4000 bytes.

       cursor is the byte offset of the cursor within the text buffer.

       anchor is the byte offset of the selection anchor within the text buffer. If there is no selected text, anchor must be the same as cursor.

       If this event does not arrive before the first done event, the input method may assume that the text input does not support this functionality and ignore following surrounding_text events.

       Values set with this event are double-buffered. They will get applied and set to initial values on the next zwp_input_method_v2.done event.

       The initial state for affected fields is empty, meaning that the text input does not support sending surrounding text. If the empty values get applied, subsequent attempts to change them may have no effect.

    __C declaration:__ @surrounding_text@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 295:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , text_change_cause :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ indicates the cause of surrounding text change

       Tells the input method why the text surrounding the cursor changed.

       Whenever the client detects an external change in text, cursor, or anchor position, it must issue this request to the compositor. This request is intended to give the input method a chance to update the preedit text in an appropriate way, e.g. by removing it when the user starts typing with a keyboard.

       cause describes the source of the change.

       The value set with this event is double-buffered. It will get applied and set to its initial value on the next zwp_input_method_v2.done event.

       The initial value of cause is input_method.

    __C declaration:__ @text_change_cause@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 320:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , content_type :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ content purpose and hint

       Indicates the content type and hint for the current zwp_input_method_v2 instance.

       Values set with this event are double-buffered. They will get applied on the next zwp_input_method_v2.done event.

       The initial value for hint is none, and the initial value for purpose is normal.

    __C declaration:__ @content_type@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 335:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())
    {- ^ apply state

       Atomically applies state changes recently sent to the client.

       The done event establishes and updates the state of the client, and must be issued after any changes to apply them.

       Text input state (content purpose, content hint, surrounding text, and change cause) is conceptually double-buffered within an input method context.

       Events modify the pending state, as opposed to the current state in use by the input method. A done event atomically applies all pending state, replacing the current state. After done, the new pending state is as documented for each related request.

       Events must be applied in the order of arrival.

       Neither current nor pending state are modified unless noted otherwise.

    __C declaration:__ @done@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 361:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , unavailable :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())
    {- ^ input method unavailable

       The input method ceased to be available.

       The compositor must issue this event as the only event on the object if there was another input_method object associated with the same seat at the time of its creation.

       The compositor must issue this request when the object is no longer usable, e.g. due to seat removal.

       The input method context becomes inert and should be destroyed after deactivation is handled. Any further requests and events except for the destroy request must be ignored.

    __C declaration:__ @unavailable@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 379:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwp_input_method_v2_listener where

  staticSizeOf = \_ -> (56 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwp_input_method_v2_listener where

  readRaw =
    \ptr0 ->
          pure Zwp_input_method_v2_listener
      <*> HasCField.readRaw (RIP.Proxy @"activate") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"deactivate") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"surrounding_text") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"text_change_cause") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"content_type") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"done") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"unavailable") ptr0

instance Marshal.WriteRaw Zwp_input_method_v2_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwp_input_method_v2_listener
            activate2
            deactivate3
            surrounding_text4
            text_change_cause5
            content_type6
            done7
            unavailable8 ->
                 HasCField.writeRaw (RIP.Proxy @"activate") ptr0 activate2
              >> HasCField.writeRaw (RIP.Proxy @"deactivate") ptr0 deactivate3
              >> HasCField.writeRaw (RIP.Proxy @"surrounding_text") ptr0 surrounding_text4
              >> HasCField.writeRaw (RIP.Proxy @"text_change_cause") ptr0 text_change_cause5
              >> HasCField.writeRaw (RIP.Proxy @"content_type") ptr0 content_type6
              >> HasCField.writeRaw (RIP.Proxy @"done") ptr0 done7
              >> HasCField.writeRaw (RIP.Proxy @"unavailable") ptr0 unavailable8

deriving via Marshal.EquivStorable Zwp_input_method_v2_listener instance RIP.Storable Zwp_input_method_v2_listener

instance HasCField.HasCField Zwp_input_method_v2_listener "activate" where

  type CFieldType Zwp_input_method_v2_listener "activate" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ()))
         ) => RIP.HasField "activate" (RIP.Ptr Zwp_input_method_v2_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"activate")

instance HasCField.HasCField Zwp_input_method_v2_listener "deactivate" where

  type CFieldType Zwp_input_method_v2_listener "deactivate" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ()))
         ) => RIP.HasField "deactivate" (RIP.Ptr Zwp_input_method_v2_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"deactivate")

instance HasCField.HasCField Zwp_input_method_v2_listener "surrounding_text" where

  type CFieldType Zwp_input_method_v2_listener "surrounding_text" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "surrounding_text" (RIP.Ptr Zwp_input_method_v2_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"surrounding_text")

instance HasCField.HasCField Zwp_input_method_v2_listener "text_change_cause" where

  type CFieldType Zwp_input_method_v2_listener "text_change_cause" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "text_change_cause" (RIP.Ptr Zwp_input_method_v2_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"text_change_cause")

instance HasCField.HasCField Zwp_input_method_v2_listener "content_type" where

  type CFieldType Zwp_input_method_v2_listener "content_type" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "content_type" (RIP.Ptr Zwp_input_method_v2_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"content_type")

instance HasCField.HasCField Zwp_input_method_v2_listener "done" where

  type CFieldType Zwp_input_method_v2_listener "done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ()))
         ) => RIP.HasField "done" (RIP.Ptr Zwp_input_method_v2_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"done")

instance HasCField.HasCField Zwp_input_method_v2_listener "unavailable" where

  type CFieldType Zwp_input_method_v2_listener "unavailable" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ()))
         ) => RIP.HasField "unavailable" (RIP.Ptr Zwp_input_method_v2_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"unavailable")

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_COMMIT_STRING@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 394:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_COMMIT_STRING :: RIP.CInt
zWP_INPUT_METHOD_V2_COMMIT_STRING = (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_SET_PREEDIT_STRING@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 395:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_SET_PREEDIT_STRING :: RIP.CInt
zWP_INPUT_METHOD_V2_SET_PREEDIT_STRING =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_DELETE_SURROUNDING_TEXT@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 396:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_DELETE_SURROUNDING_TEXT :: RIP.CInt
zWP_INPUT_METHOD_V2_DELETE_SURROUNDING_TEXT =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_COMMIT@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 397:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_COMMIT :: RIP.CInt
zWP_INPUT_METHOD_V2_COMMIT = (3 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_GET_INPUT_POPUP_SURFACE@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 398:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_GET_INPUT_POPUP_SURFACE :: RIP.CInt
zWP_INPUT_METHOD_V2_GET_INPUT_POPUP_SURFACE =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_GRAB_KEYBOARD@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 399:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_GRAB_KEYBOARD :: RIP.CInt
zWP_INPUT_METHOD_V2_GRAB_KEYBOARD = (5 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_DESTROY@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 400:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_DESTROY :: RIP.CInt
zWP_INPUT_METHOD_V2_DESTROY = (6 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_ACTIVATE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 405:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_ACTIVATE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_ACTIVATE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_DEACTIVATE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 409:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_DEACTIVATE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_DEACTIVATE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_SURROUNDING_TEXT_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 413:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_SURROUNDING_TEXT_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_SURROUNDING_TEXT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_TEXT_CHANGE_CAUSE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 417:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_TEXT_CHANGE_CAUSE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_TEXT_CHANGE_CAUSE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_CONTENT_TYPE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 421:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_CONTENT_TYPE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_CONTENT_TYPE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_DONE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 425:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_DONE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_DONE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_UNAVAILABLE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 429:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_UNAVAILABLE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_UNAVAILABLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_COMMIT_STRING_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 434:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_COMMIT_STRING_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_COMMIT_STRING_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_SET_PREEDIT_STRING_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 438:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_SET_PREEDIT_STRING_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_SET_PREEDIT_STRING_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_DELETE_SURROUNDING_TEXT_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 442:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_DELETE_SURROUNDING_TEXT_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_DELETE_SURROUNDING_TEXT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_COMMIT_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 446:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_COMMIT_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_COMMIT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_GET_INPUT_POPUP_SURFACE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 450:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_GET_INPUT_POPUP_SURFACE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_GET_INPUT_POPUP_SURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_GRAB_KEYBOARD_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 454:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_GRAB_KEYBOARD_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_GRAB_KEYBOARD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_V2_DESTROY_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 458:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_V2_DESTROY_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_V2_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_zwp_input_popup_surface_v2

  > zwp_input_popup_surface_v2_listener

__C declaration:__ @struct zwp_input_popup_surface_v2_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 665:8@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
data Zwp_input_popup_surface_v2_listener = Zwp_input_popup_surface_v2_listener
  { text_input_rectangle :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ set text input area position

       Notify about the position of the area of the text input expressed as a rectangle in surface local coordinates.

       This is a hint to the input method telling it the relative position of the text being entered.

    __C declaration:__ @text_input_rectangle@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 675:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwp_input_popup_surface_v2_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwp_input_popup_surface_v2_listener where

  readRaw =
    \ptr0 ->
          pure Zwp_input_popup_surface_v2_listener
      <*> HasCField.readRaw (RIP.Proxy @"text_input_rectangle") ptr0

instance Marshal.WriteRaw Zwp_input_popup_surface_v2_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwp_input_popup_surface_v2_listener text_input_rectangle2 ->
            HasCField.writeRaw (RIP.Proxy @"text_input_rectangle") ptr0 text_input_rectangle2

deriving via Marshal.EquivStorable Zwp_input_popup_surface_v2_listener instance RIP.Storable Zwp_input_popup_surface_v2_listener

instance HasCField.HasCField Zwp_input_popup_surface_v2_listener "text_input_rectangle" where

  type CFieldType Zwp_input_popup_surface_v2_listener "text_input_rectangle" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "text_input_rectangle" (RIP.Ptr Zwp_input_popup_surface_v2_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"text_input_rectangle")

{-| __C declaration:__ @macro ZWP_INPUT_POPUP_SURFACE_V2_DESTROY@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 694:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_POPUP_SURFACE_V2_DESTROY :: RIP.CInt
zWP_INPUT_POPUP_SURFACE_V2_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_POPUP_SURFACE_V2_TEXT_INPUT_RECTANGLE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 699:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_POPUP_SURFACE_V2_TEXT_INPUT_RECTANGLE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_POPUP_SURFACE_V2_TEXT_INPUT_RECTANGLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_POPUP_SURFACE_V2_DESTROY_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 704:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_POPUP_SURFACE_V2_DESTROY_SINCE_VERSION :: RIP.CInt
zWP_INPUT_POPUP_SURFACE_V2_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_zwp_input_method_keyboard_grab_v2

  > zwp_input_method_keyboard_grab_v2_listener

__C declaration:__ @struct zwp_input_method_keyboard_grab_v2_listener@

__defined at:__ @input-method-unstable-v2-client-protocol.h 740:8@

__exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
data Zwp_input_method_keyboard_grab_v2_listener = Zwp_input_method_keyboard_grab_v2_listener
  { keymap :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ keyboard mapping

       This event provides a file descriptor to the client which can be memory-mapped to provide a keyboard mapping description.

       [__@format@ /(input)/__]: keymap format

       [__@fd@ /(input)/__]: keymap file descriptor

       [__@size@ /(input)/__]: keymap size, in bytes

    __C declaration:__ @keymap@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 750:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , key :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ key event

       A key was pressed or released. The time argument is a timestamp with millisecond granularity, with an undefined base.

       [__@serial@ /(input)/__]: serial number of the key event

       [__@time@ /(input)/__]: timestamp with millisecond granularity

       [__@key@ /(input)/__]: key that produced the event

       [__@state@ /(input)/__]: physical state of the key

    __C declaration:__ @key@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 765:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , modifiers :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ modifier and group state

       Notifies clients that the modifier and/or group state has changed, and it should update its local state.

       [__@serial@ /(input)/__]: serial number of the modifiers event

       [__@mods_depressed@ /(input)/__]: depressed modifiers

       [__@mods_latched@ /(input)/__]: latched modifiers

       [__@mods_locked@ /(input)/__]: locked modifiers

       [__@group@ /(input)/__]: keyboard layout

    __C declaration:__ @modifiers@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 782:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  , repeat_info :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ repeat rate and delay

       Informs the client about the keyboard's repeat rate and delay.

       This event is sent as soon as the zwp_input_method_keyboard_grab_v2 object has been created, and is guaranteed to be received by the client before any key press event.

       Negative values for either rate or delay are illegal. A rate of zero will disable any repeating (regardless of the value of delay).

       This event can be sent later on as well with a new value if necessary, so clients should continue listening for the event past the creation of zwp_input_method_keyboard_grab_v2.

       [__@rate@ /(input)/__]: the rate of repeating keys in characters per second

       [__@delay@ /(input)/__]: delay in milliseconds since key down until repeating starts

    __C declaration:__ @repeat_info@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 809:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwp_input_method_keyboard_grab_v2_listener where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwp_input_method_keyboard_grab_v2_listener where

  readRaw =
    \ptr0 ->
          pure Zwp_input_method_keyboard_grab_v2_listener
      <*> HasCField.readRaw (RIP.Proxy @"keymap") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"key") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"modifiers") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"repeat_info") ptr0

instance Marshal.WriteRaw Zwp_input_method_keyboard_grab_v2_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwp_input_method_keyboard_grab_v2_listener
            keymap2
            key3
            modifiers4
            repeat_info5 ->
                 HasCField.writeRaw (RIP.Proxy @"keymap") ptr0 keymap2
              >> HasCField.writeRaw (RIP.Proxy @"key") ptr0 key3
              >> HasCField.writeRaw (RIP.Proxy @"modifiers") ptr0 modifiers4
              >> HasCField.writeRaw (RIP.Proxy @"repeat_info") ptr0 repeat_info5

deriving via Marshal.EquivStorable Zwp_input_method_keyboard_grab_v2_listener instance RIP.Storable Zwp_input_method_keyboard_grab_v2_listener

instance HasCField.HasCField Zwp_input_method_keyboard_grab_v2_listener "keymap" where

  type CFieldType Zwp_input_method_keyboard_grab_v2_listener "keymap" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "keymap" (RIP.Ptr Zwp_input_method_keyboard_grab_v2_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"keymap")

instance HasCField.HasCField Zwp_input_method_keyboard_grab_v2_listener "key" where

  type CFieldType Zwp_input_method_keyboard_grab_v2_listener "key" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "key" (RIP.Ptr Zwp_input_method_keyboard_grab_v2_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"key")

instance HasCField.HasCField Zwp_input_method_keyboard_grab_v2_listener "modifiers" where

  type CFieldType Zwp_input_method_keyboard_grab_v2_listener "modifiers" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "modifiers" (RIP.Ptr Zwp_input_method_keyboard_grab_v2_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"modifiers")

instance HasCField.HasCField Zwp_input_method_keyboard_grab_v2_listener "repeat_info" where

  type CFieldType Zwp_input_method_keyboard_grab_v2_listener "repeat_info" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "repeat_info" (RIP.Ptr Zwp_input_method_keyboard_grab_v2_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"repeat_info")

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_KEYBOARD_GRAB_V2_RELEASE@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 826:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_RELEASE :: RIP.CInt
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_RELEASE =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_KEYBOARD_GRAB_V2_KEYMAP_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 831:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_KEYMAP_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_KEYMAP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_KEYBOARD_GRAB_V2_KEY_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 835:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_KEY_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_KEY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_KEYBOARD_GRAB_V2_MODIFIERS_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 839:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_MODIFIERS_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_MODIFIERS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_KEYBOARD_GRAB_V2_REPEAT_INFO_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 843:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_REPEAT_INFO_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_REPEAT_INFO_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_KEYBOARD_GRAB_V2_RELEASE_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 848:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_RELEASE_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_KEYBOARD_GRAB_V2_RELEASE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_MANAGER_V2_GET_INPUT_METHOD@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 887:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_MANAGER_V2_GET_INPUT_METHOD :: RIP.CInt
zWP_INPUT_METHOD_MANAGER_V2_GET_INPUT_METHOD =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_MANAGER_V2_DESTROY@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 888:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_MANAGER_V2_DESTROY :: RIP.CInt
zWP_INPUT_METHOD_MANAGER_V2_DESTROY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_MANAGER_V2_GET_INPUT_METHOD_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 894:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_MANAGER_V2_GET_INPUT_METHOD_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_MANAGER_V2_GET_INPUT_METHOD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWP_INPUT_METHOD_MANAGER_V2_DESTROY_SINCE_VERSION@

    __defined at:__ @input-method-unstable-v2-client-protocol.h 898:9@

    __exported by:__ @input-method-unstable-v2-client-protocol.h@
-}
zWP_INPUT_METHOD_MANAGER_V2_DESTROY_SINCE_VERSION :: RIP.CInt
zWP_INPUT_METHOD_MANAGER_V2_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_d1116b1b0204d4a9_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_d1116b1b0204d4a9 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_d1116b1b0204d4a9 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d1116b1b0204d4a9_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e2ee835ca6cafff9_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_e2ee835ca6cafff9 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_e2ee835ca6cafff9 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e2ee835ca6cafff9_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_d1116b1b0204d4a9

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_e2ee835ca6cafff9

foreign import ccall safe "wrapper" hs_bindgen_9681ca152aa61ece_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_9681ca152aa61ece ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_9681ca152aa61ece =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_9681ca152aa61ece_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_7c60ef347321759c_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_7c60ef347321759c ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_7c60ef347321759c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_7c60ef347321759c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_9681ca152aa61ece

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_7c60ef347321759c

foreign import ccall safe "wrapper" hs_bindgen_c403467e241366e6_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_c403467e241366e6 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_c403467e241366e6 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c403467e241366e6_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e7addaeb16ed35a4_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_e7addaeb16ed35a4 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_e7addaeb16ed35a4 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e7addaeb16ed35a4_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_c403467e241366e6

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_e7addaeb16ed35a4

foreign import ccall safe "wrapper" hs_bindgen_8b5ba0b46bc3ef96_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_8b5ba0b46bc3ef96 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_8b5ba0b46bc3ef96 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_8b5ba0b46bc3ef96_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_c4dc86642832079a_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_c4dc86642832079a ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_c4dc86642832079a =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_c4dc86642832079a_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_8b5ba0b46bc3ef96

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_keyboard_grab_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_c4dc86642832079a

foreign import ccall safe "wrapper" hs_bindgen_46d86a9f614d118a_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())@
hs_bindgen_46d86a9f614d118a ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ()))
hs_bindgen_46d86a9f614d118a =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_46d86a9f614d118a_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_0c04e6e28499ed0f_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())@
hs_bindgen_0c04e6e28499ed0f ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ()
hs_bindgen_0c04e6e28499ed0f =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_0c04e6e28499ed0f_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ()) where

  toFunPtr = hs_bindgen_46d86a9f614d118a

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> IO ()) where

  fromFunPtr = hs_bindgen_0c04e6e28499ed0f

foreign import ccall safe "wrapper" hs_bindgen_cb2fb99805f54e54_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_cb2fb99805f54e54 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_cb2fb99805f54e54 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_cb2fb99805f54e54_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_425fb0114c57c805_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_425fb0114c57c805 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_425fb0114c57c805 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_425fb0114c57c805_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_cb2fb99805f54e54

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_425fb0114c57c805

foreign import ccall safe "wrapper" hs_bindgen_b42f21c90d29fd8b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_b42f21c90d29fd8b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_b42f21c90d29fd8b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_b42f21c90d29fd8b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_402c7b58679ef010_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_402c7b58679ef010 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_402c7b58679ef010 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_402c7b58679ef010_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_b42f21c90d29fd8b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_402c7b58679ef010

foreign import ccall safe "wrapper" hs_bindgen_daf1dfc24ee34443_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_daf1dfc24ee34443 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_daf1dfc24ee34443 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_daf1dfc24ee34443_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_2b5ee12923ada652_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_2b5ee12923ada652 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_2b5ee12923ada652 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_2b5ee12923ada652_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_daf1dfc24ee34443

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_method_v2) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_2b5ee12923ada652

foreign import ccall safe "wrapper" hs_bindgen_ed3e89ff119e7155_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_ed3e89ff119e7155 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_ed3e89ff119e7155 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ed3e89ff119e7155_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_8d4b905f312a2aa2_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_8d4b905f312a2aa2 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_8d4b905f312a2aa2 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_8d4b905f312a2aa2_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_ed3e89ff119e7155

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwp_input_popup_surface_v2) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_8d4b905f312a2aa2

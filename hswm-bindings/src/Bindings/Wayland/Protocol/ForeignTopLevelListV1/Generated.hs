{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

module Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated
    ( Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Ext_foreign_toplevel_handle_v1
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Ext_foreign_toplevel_list_v1
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Ext_foreign_toplevel_list_v1_listener(..)
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_LIST_V1_STOP
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_LIST_V1_DESTROY
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_LIST_V1_TOPLEVEL_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_LIST_V1_FINISHED_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_LIST_V1_STOP_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_LIST_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.Ext_foreign_toplevel_handle_v1_listener(..)
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DESTROY
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_HANDLE_V1_CLOSED_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DONE_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_HANDLE_V1_TITLE_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_HANDLE_V1_APP_ID_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_HANDLE_V1_IDENTIFIER_SINCE_VERSION
    , Bindings.Wayland.Protocol.ForeignTopLevelListV1.Generated.eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DESTROY_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-|

  > page_ext_foreign_toplevel_list_v1 The ext_foreign_toplevel_list_v1 protocol

  list toplevels

  > page_desc_ext_foreign_toplevel_list_v1 Description

  The purpose of this protocol is to provide protocol object handles for toplevels, possibly originating from another client.

  This protocol is intentionally minimalistic and expects additional functionality (e.g. creating a screencopy source from a toplevel handle, getting information about the state of the toplevel) to be implemented in extension protocols.

  The compositor may choose to restrict this protocol to a special client launched by the compositor itself or expose it to all clients, this is compositor policy.

  The key words "must", "must not", "required", "shall", "shall not", "should", "should not", "recommended",  "may", and "optional" in this document are to be interpreted as described in IETF RFC 2119.

  Warning! The protocol described in this file is currently in the testing phase. Backward compatible changes may be added together with the corresponding interface version bump. Backward incompatible changes can only be done by creating a new major version of the extension.

  > page_ifaces_ext_foreign_toplevel_list_v1 Interfaces

  -

  > page_iface_ext_foreign_toplevel_list_v1 - list toplevels

  -

  > page_iface_ext_foreign_toplevel_handle_v1 - a mapped toplevel

  > page_copyright_ext_foreign_toplevel_list_v1 Copyright

  Copyright © 2018 Ilia Bozhinov Copyright © 2020 Isaac Freund Copyright © 2022 wb9688 Copyright © 2023 i509VCB

  Permission to use, copy, modify, distribute, and sell this software and its documentation for any purpose is hereby granted without fee, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation, and that the name of the copyright holders not be used in advertising or publicity pertaining to distribution of the software without specific, written prior permission.  The copyright holders make no representations about the suitability of this software for any purpose.  It is provided "as is" without express or implied warranty.

  THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

__C declaration:__ @struct ext_foreign_toplevel_handle_v1@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 74:8@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
data Ext_foreign_toplevel_handle_v1

{-| __C declaration:__ @struct ext_foreign_toplevel_list_v1@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 75:8@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
data Ext_foreign_toplevel_list_v1

{-|

  > iface_ext_foreign_toplevel_list_v1

  > ext_foreign_toplevel_list_v1_listener

__C declaration:__ @struct ext_foreign_toplevel_list_v1_listener@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 148:8@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
data Ext_foreign_toplevel_list_v1_listener = Ext_foreign_toplevel_list_v1_listener
  { toplevel :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())
    {- ^ a toplevel has been created

       This event is emitted whenever a new toplevel window is created. It is emitted for all toplevels, regardless of the app that has created them.

       All initial properties of the toplevel (identifier, title, app_id) will be sent immediately after this event using the corresponding events for ext_foreign_toplevel_handle_v1. The compositor will use the ext_foreign_toplevel_handle_v1.done event to indicate when all data has been sent.

    __C declaration:__ @toplevel@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 162:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
    -}
  , finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ())
    {- ^ the compositor has finished with the toplevel manager

       This event indicates that the compositor is done sending events to this object. The client should destroy the object. See ext_foreign_toplevel_list_v1.destroy for more information.

       The compositor must not send any more toplevel events after this event.

    __C declaration:__ @finished@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 175:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Ext_foreign_toplevel_list_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Ext_foreign_toplevel_list_v1_listener where

  readRaw =
    \ptr0 ->
          pure Ext_foreign_toplevel_list_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"toplevel") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0

instance Marshal.WriteRaw Ext_foreign_toplevel_list_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Ext_foreign_toplevel_list_v1_listener toplevel2 finished3 ->
               HasCField.writeRaw (RIP.Proxy @"toplevel") ptr0 toplevel2
            >> HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished3

deriving via Marshal.EquivStorable Ext_foreign_toplevel_list_v1_listener instance RIP.Storable Ext_foreign_toplevel_list_v1_listener

instance HasCField.HasCField Ext_foreign_toplevel_list_v1_listener "toplevel" where

  type CFieldType Ext_foreign_toplevel_list_v1_listener "toplevel" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()))
         ) => RIP.HasField "toplevel" (RIP.Ptr Ext_foreign_toplevel_list_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"toplevel")

instance HasCField.HasCField Ext_foreign_toplevel_list_v1_listener "finished" where

  type CFieldType Ext_foreign_toplevel_list_v1_listener "finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()))
         ) => RIP.HasField "finished" (RIP.Ptr Ext_foreign_toplevel_list_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_LIST_V1_STOP@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 190:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_LIST_V1_STOP :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_LIST_V1_STOP = (0 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_LIST_V1_DESTROY@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 191:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_LIST_V1_DESTROY :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_LIST_V1_DESTROY =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_LIST_V1_TOPLEVEL_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 196:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_LIST_V1_TOPLEVEL_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_LIST_V1_TOPLEVEL_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_LIST_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 200:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_LIST_V1_FINISHED_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_LIST_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_LIST_V1_STOP_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 205:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_LIST_V1_STOP_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_LIST_V1_STOP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_LIST_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 209:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_LIST_V1_DESTROY_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_LIST_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-|

  > iface_ext_foreign_toplevel_handle_v1

  > ext_foreign_toplevel_handle_v1_listener

__C declaration:__ @struct ext_foreign_toplevel_handle_v1_listener@

__defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 271:8@

__exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
data Ext_foreign_toplevel_handle_v1_listener = Ext_foreign_toplevel_handle_v1_listener
  { closed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())
    {- ^ the toplevel has been closed

       The server will emit no further events on the ext_foreign_toplevel_handle_v1 after this event. Any requests received aside from the destroy request must be ignored. Upon receiving this event, the client should destroy the handle.

       Other protocols which extend the ext_foreign_toplevel_handle_v1 interface must also ignore requests other than destructors.

    __C declaration:__ @closed@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 283:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
    -}
  , done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())
    {- ^ all information about the toplevel has been sent

       This event is sent after all changes in the toplevel state have been sent.

       This allows changes to the ext_foreign_toplevel_handle_v1 properties to be atomically applied. Other protocols which extend the ext_foreign_toplevel_handle_v1 interface may use this event to also atomically apply any pending state.

       This event must not be sent after the ext_foreign_toplevel_handle_v1.closed event.

    __C declaration:__ @done@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 299:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
    -}
  , title :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ title change

       The title of the toplevel has changed.

       The configured state must not be applied immediately. See ext_foreign_toplevel_handle_v1.done for details.

    __C declaration:__ @title@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 309:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
    -}
  , app_id :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ app_id change

       The app id of the toplevel has changed.

       The configured state must not be applied immediately. See ext_foreign_toplevel_handle_v1.done for details.

    __C declaration:__ @app_id@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 320:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
    -}
  , identifier :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ a stable identifier for a toplevel

       This identifier is used to check if two or more toplevel handles belong to the same toplevel.

       The identifier is useful for command line tools or privileged clients which may need to reference an exact toplevel across processes or instances of the ext_foreign_toplevel_list_v1 global.

       The compositor must only send this event when the handle is created.

       The identifier must be unique per toplevel and it's handles. Two different toplevels must not have the same identifier. The identifier is only valid as long as the toplevel is mapped. If the toplevel is unmapped the identifier must not be reused. An identifier must not be reused by the compositor to ensure there are no races when sharing identifiers between processes.

       An identifier is a string that contains up to 32 printable ASCII bytes. An identifier must not be an empty string. It is recommended that a compositor includes an opaque generation value in identifiers. How the generation value is used when generating the identifier is implementation dependent.

    __C declaration:__ @identifier@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 350:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Ext_foreign_toplevel_handle_v1_listener where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Ext_foreign_toplevel_handle_v1_listener where

  readRaw =
    \ptr0 ->
          pure Ext_foreign_toplevel_handle_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"closed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"done") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"title") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"app_id") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"identifier") ptr0

instance Marshal.WriteRaw Ext_foreign_toplevel_handle_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Ext_foreign_toplevel_handle_v1_listener
            closed2
            done3
            title4
            app_id5
            identifier6 ->
                 HasCField.writeRaw (RIP.Proxy @"closed") ptr0 closed2
              >> HasCField.writeRaw (RIP.Proxy @"done") ptr0 done3
              >> HasCField.writeRaw (RIP.Proxy @"title") ptr0 title4
              >> HasCField.writeRaw (RIP.Proxy @"app_id") ptr0 app_id5
              >> HasCField.writeRaw (RIP.Proxy @"identifier") ptr0 identifier6

deriving via Marshal.EquivStorable Ext_foreign_toplevel_handle_v1_listener instance RIP.Storable Ext_foreign_toplevel_handle_v1_listener

instance HasCField.HasCField Ext_foreign_toplevel_handle_v1_listener "closed" where

  type CFieldType Ext_foreign_toplevel_handle_v1_listener "closed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()))
         ) => RIP.HasField "closed" (RIP.Ptr Ext_foreign_toplevel_handle_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"closed")

instance HasCField.HasCField Ext_foreign_toplevel_handle_v1_listener "done" where

  type CFieldType Ext_foreign_toplevel_handle_v1_listener "done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()))
         ) => RIP.HasField "done" (RIP.Ptr Ext_foreign_toplevel_handle_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"done")

instance HasCField.HasCField Ext_foreign_toplevel_handle_v1_listener "title" where

  type CFieldType Ext_foreign_toplevel_handle_v1_listener "title" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "title" (RIP.Ptr Ext_foreign_toplevel_handle_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"title")

instance HasCField.HasCField Ext_foreign_toplevel_handle_v1_listener "app_id" where

  type CFieldType Ext_foreign_toplevel_handle_v1_listener "app_id" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "app_id" (RIP.Ptr Ext_foreign_toplevel_handle_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"app_id")

instance HasCField.HasCField Ext_foreign_toplevel_handle_v1_listener "identifier" where

  type CFieldType Ext_foreign_toplevel_handle_v1_listener "identifier" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "identifier" (RIP.Ptr Ext_foreign_toplevel_handle_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"identifier")

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_HANDLE_V1_DESTROY@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 366:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DESTROY :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DESTROY =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_HANDLE_V1_CLOSED_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 371:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_CLOSED_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_CLOSED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_HANDLE_V1_DONE_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 375:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DONE_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DONE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_HANDLE_V1_TITLE_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 379:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_TITLE_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_TITLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_HANDLE_V1_APP_ID_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 383:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_APP_ID_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_APP_ID_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_HANDLE_V1_IDENTIFIER_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 387:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_IDENTIFIER_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_IDENTIFIER_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_FOREIGN_TOPLEVEL_HANDLE_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @ext-foreign-toplevel-list-v1-client-protocol.h 392:9@

    __exported by:__ @ext-foreign-toplevel-list-v1-client-protocol.h@
-}
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DESTROY_SINCE_VERSION :: RIP.CInt
eXT_FOREIGN_TOPLEVEL_HANDLE_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_c7010bb0c9dfe553_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())@
hs_bindgen_c7010bb0c9dfe553 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()))
hs_bindgen_c7010bb0c9dfe553 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c7010bb0c9dfe553_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3f3a992eaeec1f9d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())@
hs_bindgen_3f3a992eaeec1f9d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()
hs_bindgen_3f3a992eaeec1f9d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3f3a992eaeec1f9d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()) where

  toFunPtr = hs_bindgen_c7010bb0c9dfe553

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_3f3a992eaeec1f9d

foreign import ccall safe "wrapper" hs_bindgen_0ce555e1a0b939e3_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_0ce555e1a0b939e3 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_0ce555e1a0b939e3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0ce555e1a0b939e3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_1e229449014615c1_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_1e229449014615c1 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_1e229449014615c1 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_1e229449014615c1_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_0ce555e1a0b939e3

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_1e229449014615c1

foreign import ccall safe "wrapper" hs_bindgen_87ee27fcf2a01c84_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ())@
hs_bindgen_87ee27fcf2a01c84 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()))
hs_bindgen_87ee27fcf2a01c84 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_87ee27fcf2a01c84_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_a0b65cc830933260_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ())@
hs_bindgen_a0b65cc830933260 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()
hs_bindgen_a0b65cc830933260 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_a0b65cc830933260_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()) where

  toFunPtr = hs_bindgen_87ee27fcf2a01c84

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_a0b65cc830933260

foreign import ccall safe "wrapper" hs_bindgen_6310bec1607e55ff_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())@
hs_bindgen_6310bec1607e55ff ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()))
hs_bindgen_6310bec1607e55ff =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_6310bec1607e55ff_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_d70229248a36b12e_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())@
hs_bindgen_d70229248a36b12e ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()
hs_bindgen_d70229248a36b12e =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_d70229248a36b12e_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()) where

  toFunPtr = hs_bindgen_6310bec1607e55ff

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Ext_foreign_toplevel_list_v1) -> (RIP.Ptr Ext_foreign_toplevel_handle_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_d70229248a36b12e

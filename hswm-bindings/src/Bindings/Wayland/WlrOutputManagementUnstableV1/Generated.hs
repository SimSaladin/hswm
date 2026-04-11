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

module Bindings.Wayland.WlrOutputManagementUnstableV1.Generated
    ( Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_configuration_head_v1
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_configuration_v1
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_head_v1
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_manager_v1
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_mode_v1
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_manager_v1_listener(..)
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MANAGER_V1_CREATE_CONFIGURATION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MANAGER_V1_STOP
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MANAGER_V1_HEAD_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MANAGER_V1_DONE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MANAGER_V1_FINISHED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MANAGER_V1_CREATE_CONFIGURATION_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MANAGER_V1_STOP_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_head_v1_adaptive_sync_state(..)
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_DISABLED
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_ENABLED
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_head_v1_listener(..)
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_RELEASE
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_NAME_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_DESCRIPTION_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_PHYSICAL_SIZE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_MODE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_ENABLED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_CURRENT_MODE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_POSITION_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_TRANSFORM_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_SCALE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_FINISHED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_MAKE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_MODEL_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_SERIAL_NUMBER_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_HEAD_V1_RELEASE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_mode_v1_listener(..)
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MODE_V1_RELEASE
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MODE_V1_SIZE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MODE_V1_REFRESH_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MODE_V1_PREFERRED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MODE_V1_FINISHED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_MODE_V1_RELEASE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_configuration_v1_error(..)
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_CONFIGURED_HEAD
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_UNCONFIGURED_HEAD
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_USED
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_configuration_v1_listener(..)
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_ENABLE_HEAD
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_DISABLE_HEAD
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_APPLY
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_TEST
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_DESTROY
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_SUCCEEDED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_FAILED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_CANCELLED_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_ENABLE_HEAD_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_DISABLE_HEAD_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_APPLY_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_TEST_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.Zwlr_output_configuration_head_v1_error(..)
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_ALREADY_SET
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_MODE
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_CUSTOM_MODE
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_TRANSFORM
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_SCALE
    , pattern Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_MODE
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_CUSTOM_MODE
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_POSITION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_TRANSFORM
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_SCALE
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_ADAPTIVE_SYNC
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_MODE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_CUSTOM_MODE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_POSITION_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_TRANSFORM_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_SCALE_SINCE_VERSION
    , Bindings.Wayland.WlrOutputManagementUnstableV1.Generated.zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_ADAPTIVE_SYNC_SINCE_VERSION
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-|

  > page_wlr_output_management_unstable_v1 The wlr_output_management_unstable_v1 protocol

  protocol to configure output devices

  > page_desc_wlr_output_management_unstable_v1 Description

  This protocol exposes interfaces to obtain and modify output device configuration.

  Warning! The protocol described in this file is experimental and backward incompatible changes may be made. Backward compatible changes may be added together with the corresponding interface version bump. Backward incompatible changes are done by bumping the version number in the protocol and interface names and resetting the interface version. Once the protocol is to be declared stable, the 'z' prefix and the version number in the protocol and interface names are removed and the interface version number is reset.

  > page_ifaces_wlr_output_management_unstable_v1 Interfaces

  -

  > page_iface_zwlr_output_manager_v1 - output device configuration manager

  -

  > page_iface_zwlr_output_head_v1 - output device

  -

  > page_iface_zwlr_output_mode_v1 - output mode

  -

  > page_iface_zwlr_output_configuration_v1 - output configuration

  -

  > page_iface_zwlr_output_configuration_head_v1 - head configuration

  > page_copyright_wlr_output_management_unstable_v1 Copyright

  Copyright © 2019 Purism SPC

  Permission to use, copy, modify, distribute, and sell this software and its documentation for any purpose is hereby granted without fee, provided that the above copyright notice appear in all copies and that both that copyright notice and this permission notice appear in supporting documentation, and that the name of the copyright holders not be used in advertising or publicity pertaining to distribution of the software without specific, written prior permission.  The copyright holders make no representations about the suitability of this software for any purpose.  It is provided "as is" without express or implied warranty.

  THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

__C declaration:__ @struct zwlr_output_configuration_head_v1@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 65:8@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_configuration_head_v1

{-| __C declaration:__ @struct zwlr_output_configuration_v1@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 66:8@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_configuration_v1

{-| __C declaration:__ @struct zwlr_output_head_v1@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 67:8@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_head_v1

{-| __C declaration:__ @struct zwlr_output_manager_v1@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 68:8@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_manager_v1

{-| __C declaration:__ @struct zwlr_output_mode_v1@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 69:8@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_mode_v1

{-|

  > iface_zwlr_output_manager_v1

  > zwlr_output_manager_v1_listener

__C declaration:__ @struct zwlr_output_manager_v1_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 273:8@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_manager_v1_listener = Zwlr_output_manager_v1_listener
  { head :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())
    {- ^ introduce a new head

       This event introduces a new head. This happens whenever a new head appears (e.g. a monitor is plugged in) or after the output manager is bound.

    __C declaration:__ @head@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 281:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ sent all information about current configuration

       This event is sent after all information has been sent after binding to the output manager object and after any subsequent changes. This applies to child head and mode objects as well. In other words, this event is sent whenever a head or mode is created or destroyed and whenever one of their properties has been changed. Not all state is re-sent each time the current configuration changes: only the actual changes are sent.

       This allows changes to the output configuration to be seen as atomic, even if they happen via multiple events.

       A serial is sent to be used in a future create_configuration request.

       [__@serial@ /(input)/__]: current configuration serial

    __C declaration:__ @done@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 302:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ())
    {- ^ the compositor has finished with the manager

       This event indicates that the compositor is done sending manager events. The compositor will destroy the object immediately after sending this event, so it will become invalid and the client should release any resources associated with it.

    __C declaration:__ @finished@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 313:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwlr_output_manager_v1_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwlr_output_manager_v1_listener where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_manager_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"head") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"done") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0

instance Marshal.WriteRaw Zwlr_output_manager_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_manager_v1_listener head2 done3 finished4 ->
               HasCField.writeRaw (RIP.Proxy @"head") ptr0 head2
            >> HasCField.writeRaw (RIP.Proxy @"done") ptr0 done3
            >> HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished4

deriving via Marshal.EquivStorable Zwlr_output_manager_v1_listener instance RIP.Storable Zwlr_output_manager_v1_listener

instance HasCField.HasCField Zwlr_output_manager_v1_listener "head" where

  type CFieldType Zwlr_output_manager_v1_listener "head" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()))
         ) => RIP.HasField "head" (RIP.Ptr Zwlr_output_manager_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"head")

instance HasCField.HasCField Zwlr_output_manager_v1_listener "done" where

  type CFieldType Zwlr_output_manager_v1_listener "done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "done" (RIP.Ptr Zwlr_output_manager_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"done")

instance HasCField.HasCField Zwlr_output_manager_v1_listener "finished" where

  type CFieldType Zwlr_output_manager_v1_listener "finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ()))
         ) => RIP.HasField "finished" (RIP.Ptr Zwlr_output_manager_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

{-| __C declaration:__ @macro ZWLR_OUTPUT_MANAGER_V1_CREATE_CONFIGURATION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 328:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MANAGER_V1_CREATE_CONFIGURATION :: RIP.CInt
zWLR_OUTPUT_MANAGER_V1_CREATE_CONFIGURATION =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MANAGER_V1_STOP@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 329:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MANAGER_V1_STOP :: RIP.CInt
zWLR_OUTPUT_MANAGER_V1_STOP = (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MANAGER_V1_HEAD_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 334:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MANAGER_V1_HEAD_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MANAGER_V1_HEAD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MANAGER_V1_DONE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 338:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MANAGER_V1_DONE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MANAGER_V1_DONE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MANAGER_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 342:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MANAGER_V1_FINISHED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MANAGER_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MANAGER_V1_CREATE_CONFIGURATION_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 347:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MANAGER_V1_CREATE_CONFIGURATION_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MANAGER_V1_CREATE_CONFIGURATION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MANAGER_V1_STOP_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 351:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MANAGER_V1_STOP_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MANAGER_V1_STOP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum zwlr_output_head_v1_adaptive_sync_state@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 415:6@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
newtype Zwlr_output_head_v1_adaptive_sync_state = Zwlr_output_head_v1_adaptive_sync_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_output_head_v1_adaptive_sync_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_output_head_v1_adaptive_sync_state where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_head_v1_adaptive_sync_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_output_head_v1_adaptive_sync_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_head_v1_adaptive_sync_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_output_head_v1_adaptive_sync_state instance RIP.Storable Zwlr_output_head_v1_adaptive_sync_state

deriving via RIP.CUInt instance RIP.Prim Zwlr_output_head_v1_adaptive_sync_state

instance CEnum.CEnum Zwlr_output_head_v1_adaptive_sync_state where

  type CEnumZ Zwlr_output_head_v1_adaptive_sync_state =
    RIP.CUInt

  toCEnum = Zwlr_output_head_v1_adaptive_sync_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_DISABLED")
                                   , (1, RIP.singleton "ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_ENABLED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_output_head_v1_adaptive_sync_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_output_head_v1_adaptive_sync_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwlr_output_head_v1_adaptive_sync_state where

  minDeclaredValue =
    ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_DISABLED

  maxDeclaredValue =
    ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_ENABLED

instance Show Zwlr_output_head_v1_adaptive_sync_state where

  showsPrec = CEnum.shows

instance Read Zwlr_output_head_v1_adaptive_sync_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_output_head_v1_adaptive_sync_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_output_head_v1_adaptive_sync_state "unwrap" where

  type CFieldType Zwlr_output_head_v1_adaptive_sync_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| adaptive sync is disabled

__C declaration:__ @ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_DISABLED@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 419:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_DISABLED :: Zwlr_output_head_v1_adaptive_sync_state
pattern ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_DISABLED = Zwlr_output_head_v1_adaptive_sync_state 0

{-| adaptive sync is enabled

__C declaration:__ @ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_ENABLED@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 423:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_ENABLED :: Zwlr_output_head_v1_adaptive_sync_state
pattern ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_STATE_ENABLED = Zwlr_output_head_v1_adaptive_sync_state 1

{-|

  > iface_zwlr_output_head_v1

  > zwlr_output_head_v1_listener

__C declaration:__ @struct zwlr_output_head_v1_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 431:8@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_head_v1_listener = Zwlr_output_head_v1_listener
  { name :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ head name

       This event describes the head name.

       The naming convention is compositor defined, but limited to alphanumeric characters and dashes (-). Each name is unique among all wlr_output_head objects, but if a wlr_output_head object is destroyed the same name may be reused later. The names will also remain consistent across sessions with the same hardware and software configuration.

       Examples of names include 'HDMI-A-1', 'WL-1', 'X11-1', etc. However, do not assume that the name is a reflection of an underlying DRM connector, X11 connection, etc.

       If this head matches a wl_output, the wl_output.name event must report the same name.

       The name event is sent after a wlr_output_head object is created. This event is only sent once per object, and the name does not change over the lifetime of the wlr_output_head object.

    __C declaration:__ @name@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 455:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , description :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ head description

       This event describes a human-readable description of the head.

       The description is a UTF-8 string with no convention defined for its contents. Examples might include 'Foocorp 11" Display' or 'Virtual X11 output via :1'. However, do not assume that the name is a reflection of the make, model, serial of the underlying DRM connector or the display name of the underlying X11 connection, etc.

       If this head matches a wl_output, the wl_output.description event must report the same name.

       The description event is sent after a wlr_output_head object is created. This event is only sent once per object, and the description does not change over the lifetime of the wlr_output_head object.

    __C declaration:__ @description@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 478:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , physical_size :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ head physical size

       This event describes the physical size of the head. This event is only sent if the head has a physical size (e.g. is not a projector or a virtual device).

       The physical size event is sent after a wlr_output_head object is created. This event is only sent once per object, and the physical size does not change over the lifetime of the wlr_output_head object.

       [__@width@ /(input)/__]: width in millimeters of the output

       [__@height@ /(input)/__]: height in millimeters of the output

    __C declaration:__ @physical_size@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 495:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , mode :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
    {- ^ introduce a mode

       This event introduces a mode for this head. It is sent once per supported mode.

    __C declaration:__ @mode@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 505:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , enabled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ head is enabled or disabled

       This event describes whether the head is enabled. A disabled head is not mapped to a region of the global compositor space.

       When a head is disabled, some properties (current_mode, position, transform and scale) are irrelevant.

       [__@enabled@ /(input)/__]: zero if disabled, non-zero if enabled

    __C declaration:__ @enabled@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 518:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , current_mode :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
    {- ^ current mode

       This event describes the mode currently in use for this head. It is only sent if the output is enabled.

    __C declaration:__ @current_mode@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 527:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , position :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ current position

       This events describes the position of the head in the global compositor space. It is only sent if the output is enabled.

       [__@x@ /(input)/__]: x position within the global compositor space

       [__@y@ /(input)/__]: y position within the global compositor space

    __C declaration:__ @position@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 538:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , transform :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ current transformation

       This event describes the transformation currently applied to the head. It is only sent if the output is enabled.

    __C declaration:__ @transform@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 548:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , scale :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ current scale

       This events describes the scale of the head in the global compositor space. It is only sent if the output is enabled.

    __C declaration:__ @scale@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 557:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())
    {- ^ the head has disappeared

       This event indicates that the head is no longer available. The head object becomes inert. Clients should send a destroy request and release any resources associated with it.

    __C declaration:__ @finished@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 567:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , make :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ head manufacturer

       This event describes the manufacturer of the head.

       Together with the model and serial_number events the purpose is to allow clients to recognize heads from previous sessions and for example load head-specific configurations back.

       It is not guaranteed this event will be ever sent. A reason for that can be that the compositor does not have information about the make of the head or the definition of a make is not sensible in the current setup, for example in a virtual session. Clients can still try to identify the head by available information from other events but should be aware that there is an increased risk of false positives.

       If sent, the make event is sent after a wlr_output_head object is created and only sent once per object. The make does not change over the lifetime of the wlr_output_head object.

       It is not recommended to display the make string in UI to users. For that the string provided by the description event should be preferred.

       @since:  2

    __C declaration:__ @make@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 595:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , model :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ head model

       This event describes the model of the head.

       Together with the make and serial_number events the purpose is to allow clients to recognize heads from previous sessions and for example load head-specific configurations back.

       It is not guaranteed this event will be ever sent. A reason for that can be that the compositor does not have information about the model of the head or the definition of a model is not sensible in the current setup, for example in a virtual session. Clients can still try to identify the head by available information from other events but should be aware that there is an increased risk of false positives.

       If sent, the model event is sent after a wlr_output_head object is created and only sent once per object. The model does not change over the lifetime of the wlr_output_head object.

       It is not recommended to display the model string in UI to users. For that the string provided by the description event should be preferred.

       @since:  2

    __C declaration:__ @model@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 624:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , serial_number :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ head serial number

       This event describes the serial number of the head.

       Together with the make and model events the purpose is to allow clients to recognize heads from previous sessions and for example load head- specific configurations back.

       It is not guaranteed this event will be ever sent. A reason for that can be that the compositor does not have information about the serial number of the head or the definition of a serial number is not sensible in the current setup. Clients can still try to identify the head by available information from other events but should be aware that there is an increased risk of false positives.

       If sent, the serial number event is sent after a wlr_output_head object is created and only sent once per object. The serial number does not change over the lifetime of the wlr_output_head object.

       It is not recommended to display the serial_number string in UI to users. For that the string provided by the description event should be preferred.

       @since:  2

    __C declaration:__ @serial_number@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 654:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , adaptive_sync :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ current adaptive sync state

       This event describes whether adaptive sync is currently enabled for the head or not. Adaptive sync is also known as Variable Refresh Rate or VRR.

       @since:  4

    __C declaration:__ @adaptive_sync@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 665:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwlr_output_head_v1_listener where

  staticSizeOf = \_ -> (112 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwlr_output_head_v1_listener where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_head_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"description") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"physical_size") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"mode") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"enabled") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"current_mode") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"position") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"transform") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scale") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"make") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"model") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"serial_number") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"adaptive_sync") ptr0

instance Marshal.WriteRaw Zwlr_output_head_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_head_v1_listener
            name2
            description3
            physical_size4
            mode5
            enabled6
            current_mode7
            position8
            transform9
            scale10
            finished11
            make12
            model13
            serial_number14
            adaptive_sync15 ->
                 HasCField.writeRaw (RIP.Proxy @"name") ptr0 name2
              >> HasCField.writeRaw (RIP.Proxy @"description") ptr0 description3
              >> HasCField.writeRaw (RIP.Proxy @"physical_size") ptr0 physical_size4
              >> HasCField.writeRaw (RIP.Proxy @"mode") ptr0 mode5
              >> HasCField.writeRaw (RIP.Proxy @"enabled") ptr0 enabled6
              >> HasCField.writeRaw (RIP.Proxy @"current_mode") ptr0 current_mode7
              >> HasCField.writeRaw (RIP.Proxy @"position") ptr0 position8
              >> HasCField.writeRaw (RIP.Proxy @"transform") ptr0 transform9
              >> HasCField.writeRaw (RIP.Proxy @"scale") ptr0 scale10
              >> HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished11
              >> HasCField.writeRaw (RIP.Proxy @"make") ptr0 make12
              >> HasCField.writeRaw (RIP.Proxy @"model") ptr0 model13
              >> HasCField.writeRaw (RIP.Proxy @"serial_number") ptr0 serial_number14
              >> HasCField.writeRaw (RIP.Proxy @"adaptive_sync") ptr0 adaptive_sync15

deriving via Marshal.EquivStorable Zwlr_output_head_v1_listener instance RIP.Storable Zwlr_output_head_v1_listener

instance HasCField.HasCField Zwlr_output_head_v1_listener "name" where

  type CFieldType Zwlr_output_head_v1_listener "name" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "name" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField Zwlr_output_head_v1_listener "description" where

  type CFieldType Zwlr_output_head_v1_listener "description" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "description" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"description")

instance HasCField.HasCField Zwlr_output_head_v1_listener "physical_size" where

  type CFieldType Zwlr_output_head_v1_listener "physical_size" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "physical_size" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"physical_size")

instance HasCField.HasCField Zwlr_output_head_v1_listener "mode" where

  type CFieldType Zwlr_output_head_v1_listener "mode" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
         ) => RIP.HasField "mode" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"mode")

instance HasCField.HasCField Zwlr_output_head_v1_listener "enabled" where

  type CFieldType Zwlr_output_head_v1_listener "enabled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "enabled" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enabled")

instance HasCField.HasCField Zwlr_output_head_v1_listener "current_mode" where

  type CFieldType Zwlr_output_head_v1_listener "current_mode" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
         ) => RIP.HasField "current_mode" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"current_mode")

instance HasCField.HasCField Zwlr_output_head_v1_listener "position" where

  type CFieldType Zwlr_output_head_v1_listener "position" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "position" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"position")

instance HasCField.HasCField Zwlr_output_head_v1_listener "transform" where

  type CFieldType Zwlr_output_head_v1_listener "transform" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 56

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "transform" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"transform")

instance HasCField.HasCField Zwlr_output_head_v1_listener "scale" where

  type CFieldType Zwlr_output_head_v1_listener "scale" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 64

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "scale" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"scale")

instance HasCField.HasCField Zwlr_output_head_v1_listener "finished" where

  type CFieldType Zwlr_output_head_v1_listener "finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())

  offset# = \_ -> \_ -> 72

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()))
         ) => RIP.HasField "finished" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

instance HasCField.HasCField Zwlr_output_head_v1_listener "make" where

  type CFieldType Zwlr_output_head_v1_listener "make" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 80

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "make" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"make")

instance HasCField.HasCField Zwlr_output_head_v1_listener "model" where

  type CFieldType Zwlr_output_head_v1_listener "model" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 88

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "model" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"model")

instance HasCField.HasCField Zwlr_output_head_v1_listener "serial_number" where

  type CFieldType Zwlr_output_head_v1_listener "serial_number" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 96

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "serial_number" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"serial_number")

instance HasCField.HasCField Zwlr_output_head_v1_listener "adaptive_sync" where

  type CFieldType Zwlr_output_head_v1_listener "adaptive_sync" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 104

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "adaptive_sync" (RIP.Ptr Zwlr_output_head_v1_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"adaptive_sync")

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_RELEASE@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 681:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_RELEASE :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_RELEASE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_NAME_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 686:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_NAME_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_NAME_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_DESCRIPTION_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 690:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_DESCRIPTION_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_DESCRIPTION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_PHYSICAL_SIZE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 694:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_PHYSICAL_SIZE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_PHYSICAL_SIZE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_MODE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 698:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_MODE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_MODE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_ENABLED_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 702:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_ENABLED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_ENABLED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_CURRENT_MODE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 706:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_CURRENT_MODE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_CURRENT_MODE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_POSITION_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 710:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_POSITION_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_POSITION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_TRANSFORM_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 714:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_TRANSFORM_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_TRANSFORM_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_SCALE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 718:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_SCALE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_SCALE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 722:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_FINISHED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_MAKE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 726:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_MAKE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_MAKE_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_MODEL_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 730:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_MODEL_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_MODEL_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_SERIAL_NUMBER_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 734:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_SERIAL_NUMBER_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_SERIAL_NUMBER_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 738:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_ADAPTIVE_SYNC_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_HEAD_V1_RELEASE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 743:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_HEAD_V1_RELEASE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_HEAD_V1_RELEASE_SINCE_VERSION =
  (3 :: RIP.CInt)

{-|

  > iface_zwlr_output_mode_v1

  > zwlr_output_mode_v1_listener

__C declaration:__ @struct zwlr_output_mode_v1_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 789:8@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_mode_v1_listener = Zwlr_output_mode_v1_listener
  { size :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ mode size

       This event describes the mode size. The size is given in physical hardware units of the output device. This is not necessarily the same as the output size in the global compositor space. For instance, the output may be scaled or transformed.

       [__@width@ /(input)/__]: width of the mode in hardware units

       [__@height@ /(input)/__]: height of the mode in hardware units

    __C declaration:__ @size@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 800:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , refresh :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ mode refresh rate

       This event describes the mode's fixed vertical refresh rate. It is only sent if the mode has a fixed refresh rate.

       [__@refresh@ /(input)/__]: vertical refresh rate in mHz

    __C declaration:__ @refresh@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 811:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , preferred :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
    {- ^ mode is preferred

       This event advertises this mode as preferred.

    __C declaration:__ @preferred@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 819:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
    {- ^ the mode has disappeared

       This event indicates that the mode is no longer available. The mode object becomes inert. Clients should send a destroy request and release any resources associated with it.

    __C declaration:__ @finished@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 828:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwlr_output_mode_v1_listener where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwlr_output_mode_v1_listener where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_mode_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"size") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"refresh") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"preferred") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0

instance Marshal.WriteRaw Zwlr_output_mode_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_mode_v1_listener size2 refresh3 preferred4 finished5 ->
               HasCField.writeRaw (RIP.Proxy @"size") ptr0 size2
            >> HasCField.writeRaw (RIP.Proxy @"refresh") ptr0 refresh3
            >> HasCField.writeRaw (RIP.Proxy @"preferred") ptr0 preferred4
            >> HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished5

deriving via Marshal.EquivStorable Zwlr_output_mode_v1_listener instance RIP.Storable Zwlr_output_mode_v1_listener

instance HasCField.HasCField Zwlr_output_mode_v1_listener "size" where

  type CFieldType Zwlr_output_mode_v1_listener "size" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "size" (RIP.Ptr Zwlr_output_mode_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"size")

instance HasCField.HasCField Zwlr_output_mode_v1_listener "refresh" where

  type CFieldType Zwlr_output_mode_v1_listener "refresh" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "refresh" (RIP.Ptr Zwlr_output_mode_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"refresh")

instance HasCField.HasCField Zwlr_output_mode_v1_listener "preferred" where

  type CFieldType Zwlr_output_mode_v1_listener "preferred" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
         ) => RIP.HasField "preferred" (RIP.Ptr Zwlr_output_mode_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"preferred")

instance HasCField.HasCField Zwlr_output_mode_v1_listener "finished" where

  type CFieldType Zwlr_output_mode_v1_listener "finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
         ) => RIP.HasField "finished" (RIP.Ptr Zwlr_output_mode_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

{-| __C declaration:__ @macro ZWLR_OUTPUT_MODE_V1_RELEASE@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 843:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MODE_V1_RELEASE :: RIP.CInt
zWLR_OUTPUT_MODE_V1_RELEASE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MODE_V1_SIZE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 848:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MODE_V1_SIZE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MODE_V1_SIZE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MODE_V1_REFRESH_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 852:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MODE_V1_REFRESH_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MODE_V1_REFRESH_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MODE_V1_PREFERRED_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 856:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MODE_V1_PREFERRED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MODE_V1_PREFERRED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MODE_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 860:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MODE_V1_FINISHED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MODE_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_MODE_V1_RELEASE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 865:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_MODE_V1_RELEASE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_MODE_V1_RELEASE_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @enum zwlr_output_configuration_v1_error@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 909:6@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
newtype Zwlr_output_configuration_v1_error = Zwlr_output_configuration_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_output_configuration_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_output_configuration_v1_error where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_configuration_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_output_configuration_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_configuration_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_output_configuration_v1_error instance RIP.Storable Zwlr_output_configuration_v1_error

deriving via RIP.CUInt instance RIP.Prim Zwlr_output_configuration_v1_error

instance CEnum.CEnum Zwlr_output_configuration_v1_error where

  type CEnumZ Zwlr_output_configuration_v1_error =
    RIP.CUInt

  toCEnum = Zwlr_output_configuration_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_CONFIGURED_HEAD")
                                   , (2, RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_UNCONFIGURED_HEAD")
                                   , (3, RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_USED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_output_configuration_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_output_configuration_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwlr_output_configuration_v1_error where

  minDeclaredValue =
    ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_CONFIGURED_HEAD

  maxDeclaredValue =
    ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_USED

instance Show Zwlr_output_configuration_v1_error where

  showsPrec = CEnum.shows

instance Read Zwlr_output_configuration_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_output_configuration_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_output_configuration_v1_error "unwrap" where

  type CFieldType Zwlr_output_configuration_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| head has been configured twice

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_CONFIGURED_HEAD@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 913:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_CONFIGURED_HEAD :: Zwlr_output_configuration_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_CONFIGURED_HEAD = Zwlr_output_configuration_v1_error 1

{-| head has not been configured

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_UNCONFIGURED_HEAD@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 917:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_UNCONFIGURED_HEAD :: Zwlr_output_configuration_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_UNCONFIGURED_HEAD = Zwlr_output_configuration_v1_error 2

{-| request sent after configuration has been applied or tested

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_USED@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 921:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_USED :: Zwlr_output_configuration_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_V1_ERROR_ALREADY_USED = Zwlr_output_configuration_v1_error 3

{-|

  > iface_zwlr_output_configuration_v1

  > zwlr_output_configuration_v1_listener

__C declaration:__ @struct zwlr_output_configuration_v1_listener@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 929:8@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
data Zwlr_output_configuration_v1_listener = Zwlr_output_configuration_v1_listener
  { succeeded :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())
    {- ^ configuration changes succeeded

       Sent after the compositor has successfully applied the changes or tested them.

       Upon receiving this event, the client should destroy this object.

       If the current configuration has changed, events to describe the changes will be sent followed by a wlr_output_manager.done event.

    __C declaration:__ @succeeded@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 943:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , failed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())
    {- ^ configuration changes failed

       Sent if the compositor rejects the changes or failed to apply them. The compositor should revert any changes made by the apply request that triggered this event.

       Upon receiving this event, the client should destroy this object.

    __C declaration:__ @failed@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 955:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  , cancelled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())
    {- ^ configuration has been cancelled

       Sent if the compositor cancels the configuration because the state of an output changed and the client has outdated information (e.g. after an output has been hotplugged).

       The client can create a new configuration with a newer serial and try again.

       Upon receiving this event, the client should destroy this object.

    __C declaration:__ @cancelled@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 970:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Zwlr_output_configuration_v1_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Zwlr_output_configuration_v1_listener where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_configuration_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"succeeded") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"failed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"cancelled") ptr0

instance Marshal.WriteRaw Zwlr_output_configuration_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_configuration_v1_listener succeeded2 failed3 cancelled4 ->
               HasCField.writeRaw (RIP.Proxy @"succeeded") ptr0 succeeded2
            >> HasCField.writeRaw (RIP.Proxy @"failed") ptr0 failed3
            >> HasCField.writeRaw (RIP.Proxy @"cancelled") ptr0 cancelled4

deriving via Marshal.EquivStorable Zwlr_output_configuration_v1_listener instance RIP.Storable Zwlr_output_configuration_v1_listener

instance HasCField.HasCField Zwlr_output_configuration_v1_listener "succeeded" where

  type CFieldType Zwlr_output_configuration_v1_listener "succeeded" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ()))
         ) => RIP.HasField "succeeded" (RIP.Ptr Zwlr_output_configuration_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"succeeded")

instance HasCField.HasCField Zwlr_output_configuration_v1_listener "failed" where

  type CFieldType Zwlr_output_configuration_v1_listener "failed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ()))
         ) => RIP.HasField "failed" (RIP.Ptr Zwlr_output_configuration_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"failed")

instance HasCField.HasCField Zwlr_output_configuration_v1_listener "cancelled" where

  type CFieldType Zwlr_output_configuration_v1_listener "cancelled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ()))
         ) => RIP.HasField "cancelled" (RIP.Ptr Zwlr_output_configuration_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"cancelled")

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_ENABLE_HEAD@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 985:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_ENABLE_HEAD :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_ENABLE_HEAD =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_DISABLE_HEAD@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 986:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_DISABLE_HEAD :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_DISABLE_HEAD =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_APPLY@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 987:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_APPLY :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_APPLY = (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_TEST@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 988:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_TEST :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_TEST = (3 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_DESTROY@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 989:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_DESTROY :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_DESTROY =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_SUCCEEDED_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 994:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_SUCCEEDED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_SUCCEEDED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_FAILED_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 998:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_FAILED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_FAILED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_CANCELLED_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1002:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_CANCELLED_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_CANCELLED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_ENABLE_HEAD_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1007:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_ENABLE_HEAD_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_ENABLE_HEAD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_DISABLE_HEAD_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1011:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_DISABLE_HEAD_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_DISABLE_HEAD_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_APPLY_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1015:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_APPLY_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_APPLY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_TEST_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1019:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_TEST_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_TEST_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1023:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_V1_DESTROY_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum zwlr_output_configuration_head_v1_error@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1134:6@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
newtype Zwlr_output_configuration_head_v1_error = Zwlr_output_configuration_head_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Zwlr_output_configuration_head_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Zwlr_output_configuration_head_v1_error where

  readRaw =
    \ptr0 ->
          pure Zwlr_output_configuration_head_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Zwlr_output_configuration_head_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Zwlr_output_configuration_head_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Zwlr_output_configuration_head_v1_error instance RIP.Storable Zwlr_output_configuration_head_v1_error

deriving via RIP.CUInt instance RIP.Prim Zwlr_output_configuration_head_v1_error

instance CEnum.CEnum Zwlr_output_configuration_head_v1_error where

  type CEnumZ Zwlr_output_configuration_head_v1_error =
    RIP.CUInt

  toCEnum = Zwlr_output_configuration_head_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_ALREADY_SET")
                                   , (2, RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_MODE")
                                   , (3, RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_CUSTOM_MODE")
                                   , (4, RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_TRANSFORM")
                                   , (5, RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_SCALE")
                                   , ( 6
                                     , RIP.singleton "ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE"
                                     )
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Zwlr_output_configuration_head_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Zwlr_output_configuration_head_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Zwlr_output_configuration_head_v1_error where

  minDeclaredValue =
    ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_ALREADY_SET

  maxDeclaredValue =
    ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE

instance Show Zwlr_output_configuration_head_v1_error where

  showsPrec = CEnum.shows

instance Read Zwlr_output_configuration_head_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Zwlr_output_configuration_head_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Zwlr_output_configuration_head_v1_error "unwrap" where

  type CFieldType Zwlr_output_configuration_head_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| property has already been set

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_ALREADY_SET@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1138:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_ALREADY_SET :: Zwlr_output_configuration_head_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_ALREADY_SET = Zwlr_output_configuration_head_v1_error 1

{-| mode doesn't belong to head

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_MODE@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1142:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_MODE :: Zwlr_output_configuration_head_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_MODE = Zwlr_output_configuration_head_v1_error 2

{-| mode is invalid

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_CUSTOM_MODE@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1146:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_CUSTOM_MODE :: Zwlr_output_configuration_head_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_CUSTOM_MODE = Zwlr_output_configuration_head_v1_error 3

{-| transform value outside enum

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_TRANSFORM@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1150:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_TRANSFORM :: Zwlr_output_configuration_head_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_TRANSFORM = Zwlr_output_configuration_head_v1_error 4

{-| scale negative or zero

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_SCALE@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1154:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_SCALE :: Zwlr_output_configuration_head_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_SCALE = Zwlr_output_configuration_head_v1_error 5

{-| invalid enum value used in the set_adaptive_sync request

  @since:  4

__C declaration:__ @ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE@

__defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1159:2@

__exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE :: Zwlr_output_configuration_head_v1_error
pattern ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE = Zwlr_output_configuration_head_v1_error 6

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1164:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_ERROR_INVALID_ADAPTIVE_SYNC_STATE_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_MODE@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1167:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_MODE :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_MODE =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_CUSTOM_MODE@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1168:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_CUSTOM_MODE :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_CUSTOM_MODE =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_POSITION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1169:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_POSITION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_POSITION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_TRANSFORM@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1170:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_TRANSFORM :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_TRANSFORM =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_SCALE@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1171:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_SCALE :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_SCALE =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_ADAPTIVE_SYNC@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1172:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_ADAPTIVE_SYNC :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_ADAPTIVE_SYNC =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_MODE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1178:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_MODE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_MODE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_CUSTOM_MODE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1182:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_CUSTOM_MODE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_CUSTOM_MODE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_POSITION_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1186:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_POSITION_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_POSITION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_TRANSFORM_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1190:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_TRANSFORM_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_TRANSFORM_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_SCALE_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1194:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_SCALE_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_SCALE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro ZWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_ADAPTIVE_SYNC_SINCE_VERSION@

    __defined at:__ @wlr-output-management-unstable-v1-client-protocol.h 1198:9@

    __exported by:__ @wlr-output-management-unstable-v1-client-protocol.h@
-}
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_ADAPTIVE_SYNC_SINCE_VERSION :: RIP.CInt
zWLR_OUTPUT_CONFIGURATION_HEAD_V1_SET_ADAPTIVE_SYNC_SINCE_VERSION =
  (4 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_a78997c96869db8a_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())@
hs_bindgen_a78997c96869db8a ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ()))
hs_bindgen_a78997c96869db8a =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_a78997c96869db8a_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_f9019cf523abfecd_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())@
hs_bindgen_f9019cf523abfecd ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ()
hs_bindgen_f9019cf523abfecd =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_f9019cf523abfecd_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ()) where

  toFunPtr = hs_bindgen_a78997c96869db8a

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_configuration_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_f9019cf523abfecd

foreign import ccall safe "wrapper" hs_bindgen_a07329181997e376_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())@
hs_bindgen_a07329181997e376 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()))
hs_bindgen_a07329181997e376 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_a07329181997e376_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_31b23b142c8c666d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())@
hs_bindgen_31b23b142c8c666d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()
hs_bindgen_31b23b142c8c666d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_31b23b142c8c666d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()) where

  toFunPtr = hs_bindgen_a07329181997e376

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_31b23b142c8c666d

foreign import ccall safe "wrapper" hs_bindgen_87d91ef6b35bb47c_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())@
hs_bindgen_87d91ef6b35bb47c ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
hs_bindgen_87d91ef6b35bb47c =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_87d91ef6b35bb47c_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_383df10c2d4ebb2c_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())@
hs_bindgen_383df10c2d4ebb2c ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()
hs_bindgen_383df10c2d4ebb2c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_383df10c2d4ebb2c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()) where

  toFunPtr = hs_bindgen_87d91ef6b35bb47c

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_383df10c2d4ebb2c

foreign import ccall safe "wrapper" hs_bindgen_0f4ec8767f4e8fff_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_0f4ec8767f4e8fff ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_0f4ec8767f4e8fff =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0f4ec8767f4e8fff_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_0a6f6ff09549a362_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_0a6f6ff09549a362 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_0a6f6ff09549a362 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_0a6f6ff09549a362_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_0f4ec8767f4e8fff

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_0a6f6ff09549a362

foreign import ccall safe "wrapper" hs_bindgen_bcfbcecae420b34a_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_bcfbcecae420b34a ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_bcfbcecae420b34a =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_bcfbcecae420b34a_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e670abbc0518e67f_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_e670abbc0518e67f ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_e670abbc0518e67f =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e670abbc0518e67f_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_bcfbcecae420b34a

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_e670abbc0518e67f

foreign import ccall safe "wrapper" hs_bindgen_ae4516666289cab2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_ae4516666289cab2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_ae4516666289cab2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ae4516666289cab2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_b4dc784cf65f80fe_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_b4dc784cf65f80fe ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_b4dc784cf65f80fe =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_b4dc784cf65f80fe_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_ae4516666289cab2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_b4dc784cf65f80fe

foreign import ccall safe "wrapper" hs_bindgen_86c7ff6ccad3f9de_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_86c7ff6ccad3f9de ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_86c7ff6ccad3f9de =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_86c7ff6ccad3f9de_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e82386bcf8d0d20a_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_e82386bcf8d0d20a ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_e82386bcf8d0d20a =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e82386bcf8d0d20a_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_86c7ff6ccad3f9de

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_e82386bcf8d0d20a

foreign import ccall safe "wrapper" hs_bindgen_adf3344f9b7455d6_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_adf3344f9b7455d6 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_adf3344f9b7455d6 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_adf3344f9b7455d6_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_67cbb9d06d036c41_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_67cbb9d06d036c41 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_67cbb9d06d036c41 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_67cbb9d06d036c41_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_adf3344f9b7455d6

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_head_v1) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_67cbb9d06d036c41

foreign import ccall safe "wrapper" hs_bindgen_368259c80982085b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ())@
hs_bindgen_368259c80982085b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ()))
hs_bindgen_368259c80982085b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_368259c80982085b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_caea25b331ef7eff_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ())@
hs_bindgen_caea25b331ef7eff ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ()
hs_bindgen_caea25b331ef7eff =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_caea25b331ef7eff_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ()) where

  toFunPtr = hs_bindgen_368259c80982085b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_caea25b331ef7eff

foreign import ccall safe "wrapper" hs_bindgen_865823199460de65_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())@
hs_bindgen_865823199460de65 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()))
hs_bindgen_865823199460de65 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_865823199460de65_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_2fe136d9a13aac3a_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())@
hs_bindgen_2fe136d9a13aac3a ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()
hs_bindgen_2fe136d9a13aac3a =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_2fe136d9a13aac3a_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()) where

  toFunPtr = hs_bindgen_865823199460de65

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> (RIP.Ptr Zwlr_output_head_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_2fe136d9a13aac3a

foreign import ccall safe "wrapper" hs_bindgen_f77fb8298d6ecea5_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_f77fb8298d6ecea5 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_f77fb8298d6ecea5 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f77fb8298d6ecea5_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_d861b895dcd47d38_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_d861b895dcd47d38 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_d861b895dcd47d38 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_d861b895dcd47d38_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_f77fb8298d6ecea5

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_manager_v1) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_d861b895dcd47d38

foreign import ccall safe "wrapper" hs_bindgen_9b9e687a25e82268_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())@
hs_bindgen_9b9e687a25e82268 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()))
hs_bindgen_9b9e687a25e82268 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_9b9e687a25e82268_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_44cb31e2a7058856_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())@
hs_bindgen_44cb31e2a7058856 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()
hs_bindgen_44cb31e2a7058856 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_44cb31e2a7058856_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()) where

  toFunPtr = hs_bindgen_9b9e687a25e82268

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> IO ()) where

  fromFunPtr = hs_bindgen_44cb31e2a7058856

foreign import ccall safe "wrapper" hs_bindgen_ebf848142f24891a_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_ebf848142f24891a ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_ebf848142f24891a =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ebf848142f24891a_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_8f153b5ce639ce3a_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_8f153b5ce639ce3a ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_8f153b5ce639ce3a =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_8f153b5ce639ce3a_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_ebf848142f24891a

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_8f153b5ce639ce3a

foreign import ccall safe "wrapper" hs_bindgen_464b2e0506e76606_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_464b2e0506e76606 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_464b2e0506e76606 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_464b2e0506e76606_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_94d2a54695090bc2_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_94d2a54695090bc2 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_94d2a54695090bc2 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_94d2a54695090bc2_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_464b2e0506e76606

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Zwlr_output_mode_v1) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_94d2a54695090bc2

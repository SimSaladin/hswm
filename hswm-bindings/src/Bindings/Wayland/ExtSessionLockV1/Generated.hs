{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
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

module Bindings.Wayland.ExtSessionLockV1.Generated
    ( Bindings.Wayland.ExtSessionLockV1.Generated.Ext_session_lock_manager_v1
    , Bindings.Wayland.ExtSessionLockV1.Generated.Ext_session_lock_surface_v1
    , Bindings.Wayland.ExtSessionLockV1.Generated.Ext_session_lock_v1
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_MANAGER_V1_DESTROY
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_MANAGER_V1_LOCK
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_MANAGER_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_MANAGER_V1_LOCK_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.Ext_session_lock_v1_error(..)
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_V1_ERROR_INVALID_DESTROY
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_V1_ERROR_INVALID_UNLOCK
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_V1_ERROR_ROLE
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_V1_ERROR_DUPLICATE_OUTPUT
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_V1_ERROR_ALREADY_CONSTRUCTED
    , Bindings.Wayland.ExtSessionLockV1.Generated.Ext_session_lock_v1_listener(..)
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_V1_DESTROY
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_V1_GET_LOCK_SURFACE
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_V1_UNLOCK_AND_DESTROY
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_V1_LOCKED_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_V1_FINISHED_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_V1_GET_LOCK_SURFACE_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_V1_UNLOCK_AND_DESTROY_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.Ext_session_lock_surface_v1_error(..)
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_SURFACE_V1_ERROR_COMMIT_BEFORE_FIRST_ACK
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_SURFACE_V1_ERROR_NULL_BUFFER
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_SURFACE_V1_ERROR_DIMENSIONS_MISMATCH
    , pattern Bindings.Wayland.ExtSessionLockV1.Generated.EXT_SESSION_LOCK_SURFACE_V1_ERROR_INVALID_SERIAL
    , Bindings.Wayland.ExtSessionLockV1.Generated.Ext_session_lock_surface_v1_listener(..)
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_SURFACE_V1_DESTROY
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_SURFACE_V1_ACK_CONFIGURE
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_SURFACE_V1_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_SURFACE_V1_DESTROY_SINCE_VERSION
    , Bindings.Wayland.ExtSessionLockV1.Generated.eXT_SESSION_LOCK_SURFACE_V1_ACK_CONFIGURE_SINCE_VERSION
    )
  where

import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct ext_session_lock_manager_v1@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 69:8@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
data Ext_session_lock_manager_v1

{-| __C declaration:__ @struct ext_session_lock_surface_v1@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 70:8@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
data Ext_session_lock_surface_v1

{-| __C declaration:__ @struct ext_session_lock_v1@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 71:8@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
data Ext_session_lock_v1

{-| __C declaration:__ @macro EXT_SESSION_LOCK_MANAGER_V1_DESTROY@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 249:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_MANAGER_V1_DESTROY :: RIP.CInt
eXT_SESSION_LOCK_MANAGER_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_MANAGER_V1_LOCK@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 250:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_MANAGER_V1_LOCK :: RIP.CInt
eXT_SESSION_LOCK_MANAGER_V1_LOCK = (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_MANAGER_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 256:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_MANAGER_V1_DESTROY_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_MANAGER_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_MANAGER_V1_LOCK_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 260:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_MANAGER_V1_LOCK_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_MANAGER_V1_LOCK_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum ext_session_lock_v1_error@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 317:6@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
newtype Ext_session_lock_v1_error = Ext_session_lock_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Ext_session_lock_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Ext_session_lock_v1_error where

  readRaw =
    \ptr0 ->
          pure Ext_session_lock_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Ext_session_lock_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Ext_session_lock_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Ext_session_lock_v1_error instance RIP.Storable Ext_session_lock_v1_error

deriving via RIP.CUInt instance RIP.Prim Ext_session_lock_v1_error

instance CEnum.CEnum Ext_session_lock_v1_error where

  type CEnumZ Ext_session_lock_v1_error = RIP.CUInt

  toCEnum = Ext_session_lock_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "EXT_SESSION_LOCK_V1_ERROR_INVALID_DESTROY")
                                   , (1, RIP.singleton "EXT_SESSION_LOCK_V1_ERROR_INVALID_UNLOCK")
                                   , (2, RIP.singleton "EXT_SESSION_LOCK_V1_ERROR_ROLE")
                                   , (3, RIP.singleton "EXT_SESSION_LOCK_V1_ERROR_DUPLICATE_OUTPUT")
                                   , (4, RIP.singleton "EXT_SESSION_LOCK_V1_ERROR_ALREADY_CONSTRUCTED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Ext_session_lock_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Ext_session_lock_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Ext_session_lock_v1_error where

  minDeclaredValue =
    EXT_SESSION_LOCK_V1_ERROR_INVALID_DESTROY

  maxDeclaredValue =
    EXT_SESSION_LOCK_V1_ERROR_ALREADY_CONSTRUCTED

instance Show Ext_session_lock_v1_error where

  showsPrec = CEnum.shows

instance Read Ext_session_lock_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Ext_session_lock_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Ext_session_lock_v1_error "unwrap" where

  type CFieldType Ext_session_lock_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @EXT_SESSION_LOCK_V1_ERROR_INVALID_DESTROY@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 321:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_V1_ERROR_INVALID_DESTROY :: Ext_session_lock_v1_error
pattern EXT_SESSION_LOCK_V1_ERROR_INVALID_DESTROY = Ext_session_lock_v1_error 0

{-| __C declaration:__ @EXT_SESSION_LOCK_V1_ERROR_INVALID_UNLOCK@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 325:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_V1_ERROR_INVALID_UNLOCK :: Ext_session_lock_v1_error
pattern EXT_SESSION_LOCK_V1_ERROR_INVALID_UNLOCK = Ext_session_lock_v1_error 1

{-| __C declaration:__ @EXT_SESSION_LOCK_V1_ERROR_ROLE@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 329:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_V1_ERROR_ROLE :: Ext_session_lock_v1_error
pattern EXT_SESSION_LOCK_V1_ERROR_ROLE = Ext_session_lock_v1_error 2

{-| __C declaration:__ @EXT_SESSION_LOCK_V1_ERROR_DUPLICATE_OUTPUT@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 333:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_V1_ERROR_DUPLICATE_OUTPUT :: Ext_session_lock_v1_error
pattern EXT_SESSION_LOCK_V1_ERROR_DUPLICATE_OUTPUT = Ext_session_lock_v1_error 3

{-| __C declaration:__ @EXT_SESSION_LOCK_V1_ERROR_ALREADY_CONSTRUCTED@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 337:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_V1_ERROR_ALREADY_CONSTRUCTED :: Ext_session_lock_v1_error
pattern EXT_SESSION_LOCK_V1_ERROR_ALREADY_CONSTRUCTED = Ext_session_lock_v1_error 4

{-| __C declaration:__ @struct ext_session_lock_v1_listener@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 345:8@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
data Ext_session_lock_v1_listener = Ext_session_lock_v1_listener
  { locked :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())
    {- ^ session successfully locked

         This client is now responsible for displaying graphics while the session is locked and deciding when to unlock the session.

         The locked event must not be sent until a new "locked" frame has been presented on all outputs and no security sensitive normal/unlocked content is possibly visible.

         If this event is sent, making the destroy request is a protocol error, the lock object must be destroyed using the unlock_and_destroy request.

         __C declaration:__ @locked@

         __defined at:__ @ext-session-lock-v1-client-protocol.h 360:9@

         __exported by:__ @ext-session-lock-v1-client-protocol.h@
    -}
  , finished :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())
    {- ^ the session lock object should be destroyed

         The compositor has decided that the session lock should be destroyed as it will no longer be used by the compositor. Exactly when this event is sent is compositor policy, but it must never be sent more than once for a given session lock object.

         This might be sent because there is already another ext_session_lock_v1 object held by a client, or the compositor has decided to deny the request to lock the session for some other reason. This might also be sent because the compositor implements some alternative, secure way to authenticate and unlock the session.

         The finished event should be sent immediately on creation of this object if the compositor decides that the locked event will not be sent.

         If the locked event is sent on creation of this object the finished event may still be sent at some later time in this object's lifetime. This is compositor policy.

         Upon receiving this event, the client should make either the destroy request or the unlock_and_destroy request, depending on whether or not the locked event was received on this object.

         __C declaration:__ @finished@

         __defined at:__ @ext-session-lock-v1-client-protocol.h 390:9@

         __exported by:__ @ext-session-lock-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Ext_session_lock_v1_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Ext_session_lock_v1_listener where

  readRaw =
    \ptr0 ->
          pure Ext_session_lock_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"locked") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"finished") ptr0

instance Marshal.WriteRaw Ext_session_lock_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Ext_session_lock_v1_listener locked2 finished3 ->
               HasCField.writeRaw (RIP.Proxy @"locked") ptr0 locked2
            >> HasCField.writeRaw (RIP.Proxy @"finished") ptr0 finished3

deriving via Marshal.EquivStorable Ext_session_lock_v1_listener instance RIP.Storable Ext_session_lock_v1_listener

instance HasCField.HasCField Ext_session_lock_v1_listener "locked" where

  type CFieldType Ext_session_lock_v1_listener "locked" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())
         ) => RIP.HasField "locked" (RIP.Ptr Ext_session_lock_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"locked")

instance HasCField.HasCField Ext_session_lock_v1_listener "finished" where

  type CFieldType Ext_session_lock_v1_listener "finished" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())
         ) => RIP.HasField "finished" (RIP.Ptr Ext_session_lock_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"finished")

{-| __C declaration:__ @macro EXT_SESSION_LOCK_V1_DESTROY@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 405:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_V1_DESTROY :: RIP.CInt
eXT_SESSION_LOCK_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_V1_GET_LOCK_SURFACE@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 406:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_V1_GET_LOCK_SURFACE :: RIP.CInt
eXT_SESSION_LOCK_V1_GET_LOCK_SURFACE =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_V1_UNLOCK_AND_DESTROY@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 407:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_V1_UNLOCK_AND_DESTROY :: RIP.CInt
eXT_SESSION_LOCK_V1_UNLOCK_AND_DESTROY =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_V1_LOCKED_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 412:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_V1_LOCKED_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_V1_LOCKED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_V1_FINISHED_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 416:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_V1_FINISHED_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_V1_FINISHED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 421:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_V1_DESTROY_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_V1_GET_LOCK_SURFACE_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 425:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_V1_GET_LOCK_SURFACE_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_V1_GET_LOCK_SURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_V1_UNLOCK_AND_DESTROY_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 429:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_V1_UNLOCK_AND_DESTROY_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_V1_UNLOCK_AND_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum ext_session_lock_surface_v1_error@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 533:6@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
newtype Ext_session_lock_surface_v1_error = Ext_session_lock_surface_v1_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Ext_session_lock_surface_v1_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Ext_session_lock_surface_v1_error where

  readRaw =
    \ptr0 ->
          pure Ext_session_lock_surface_v1_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Ext_session_lock_surface_v1_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Ext_session_lock_surface_v1_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Ext_session_lock_surface_v1_error instance RIP.Storable Ext_session_lock_surface_v1_error

deriving via RIP.CUInt instance RIP.Prim Ext_session_lock_surface_v1_error

instance CEnum.CEnum Ext_session_lock_surface_v1_error where

  type CEnumZ Ext_session_lock_surface_v1_error =
    RIP.CUInt

  toCEnum = Ext_session_lock_surface_v1_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "EXT_SESSION_LOCK_SURFACE_V1_ERROR_COMMIT_BEFORE_FIRST_ACK")
                                   , (1, RIP.singleton "EXT_SESSION_LOCK_SURFACE_V1_ERROR_NULL_BUFFER")
                                   , (2, RIP.singleton "EXT_SESSION_LOCK_SURFACE_V1_ERROR_DIMENSIONS_MISMATCH")
                                   , (3, RIP.singleton "EXT_SESSION_LOCK_SURFACE_V1_ERROR_INVALID_SERIAL")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Ext_session_lock_surface_v1_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Ext_session_lock_surface_v1_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Ext_session_lock_surface_v1_error where

  minDeclaredValue =
    EXT_SESSION_LOCK_SURFACE_V1_ERROR_COMMIT_BEFORE_FIRST_ACK

  maxDeclaredValue =
    EXT_SESSION_LOCK_SURFACE_V1_ERROR_INVALID_SERIAL

instance Show Ext_session_lock_surface_v1_error where

  showsPrec = CEnum.shows

instance Read Ext_session_lock_surface_v1_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Ext_session_lock_surface_v1_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Ext_session_lock_surface_v1_error "unwrap" where

  type CFieldType Ext_session_lock_surface_v1_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @EXT_SESSION_LOCK_SURFACE_V1_ERROR_COMMIT_BEFORE_FIRST_ACK@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 537:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_SURFACE_V1_ERROR_COMMIT_BEFORE_FIRST_ACK :: Ext_session_lock_surface_v1_error
pattern EXT_SESSION_LOCK_SURFACE_V1_ERROR_COMMIT_BEFORE_FIRST_ACK = Ext_session_lock_surface_v1_error 0

{-| __C declaration:__ @EXT_SESSION_LOCK_SURFACE_V1_ERROR_NULL_BUFFER@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 541:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_SURFACE_V1_ERROR_NULL_BUFFER :: Ext_session_lock_surface_v1_error
pattern EXT_SESSION_LOCK_SURFACE_V1_ERROR_NULL_BUFFER = Ext_session_lock_surface_v1_error 1

{-| __C declaration:__ @EXT_SESSION_LOCK_SURFACE_V1_ERROR_DIMENSIONS_MISMATCH@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 545:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_SURFACE_V1_ERROR_DIMENSIONS_MISMATCH :: Ext_session_lock_surface_v1_error
pattern EXT_SESSION_LOCK_SURFACE_V1_ERROR_DIMENSIONS_MISMATCH = Ext_session_lock_surface_v1_error 2

{-| __C declaration:__ @EXT_SESSION_LOCK_SURFACE_V1_ERROR_INVALID_SERIAL@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 549:2@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
pattern EXT_SESSION_LOCK_SURFACE_V1_ERROR_INVALID_SERIAL :: Ext_session_lock_surface_v1_error
pattern EXT_SESSION_LOCK_SURFACE_V1_ERROR_INVALID_SERIAL = Ext_session_lock_surface_v1_error 3

{-| __C declaration:__ @struct ext_session_lock_surface_v1_listener@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 557:8@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
data Ext_session_lock_surface_v1_listener = Ext_session_lock_surface_v1_listener
  { configure :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ the client should resize its surface

         This event is sent once on binding the interface and may be sent again at the compositor's discretion, for example if output geometry changes.

         The width and height are in surface-local coordinates and are exact requirements. Failing to match these surface dimensions in the next commit after acking a configure is a protocol error.

         [__@serial@__]: serial for use in ack_configure

         __C declaration:__ @configure@

         __defined at:__ @ext-session-lock-v1-client-protocol.h 570:9@

         __exported by:__ @ext-session-lock-v1-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Ext_session_lock_surface_v1_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Ext_session_lock_surface_v1_listener where

  readRaw =
    \ptr0 ->
          pure Ext_session_lock_surface_v1_listener
      <*> HasCField.readRaw (RIP.Proxy @"configure") ptr0

instance Marshal.WriteRaw Ext_session_lock_surface_v1_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Ext_session_lock_surface_v1_listener configure2 ->
            HasCField.writeRaw (RIP.Proxy @"configure") ptr0 configure2

deriving via Marshal.EquivStorable Ext_session_lock_surface_v1_listener instance RIP.Storable Ext_session_lock_surface_v1_listener

instance HasCField.HasCField Ext_session_lock_surface_v1_listener "configure" where

  type CFieldType Ext_session_lock_surface_v1_listener "configure" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
         ) => RIP.HasField "configure" (RIP.Ptr Ext_session_lock_surface_v1_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"configure")

{-| __C declaration:__ @macro EXT_SESSION_LOCK_SURFACE_V1_DESTROY@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 588:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_SURFACE_V1_DESTROY :: RIP.CInt
eXT_SESSION_LOCK_SURFACE_V1_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_SURFACE_V1_ACK_CONFIGURE@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 589:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_SURFACE_V1_ACK_CONFIGURE :: RIP.CInt
eXT_SESSION_LOCK_SURFACE_V1_ACK_CONFIGURE =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_SURFACE_V1_CONFIGURE_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 594:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_SURFACE_V1_CONFIGURE_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_SURFACE_V1_CONFIGURE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_SURFACE_V1_DESTROY_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 599:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_SURFACE_V1_DESTROY_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_SURFACE_V1_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro EXT_SESSION_LOCK_SURFACE_V1_ACK_CONFIGURE_SINCE_VERSION@

    __defined at:__ @ext-session-lock-v1-client-protocol.h 603:9@

    __exported by:__ @ext-session-lock-v1-client-protocol.h@
-}
eXT_SESSION_LOCK_SURFACE_V1_ACK_CONFIGURE_SINCE_VERSION :: RIP.CInt
eXT_SESSION_LOCK_SURFACE_V1_ACK_CONFIGURE_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_d80458c13e5918ea_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_d80458c13e5918ea ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_d80458c13e5918ea =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d80458c13e5918ea_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_17cebc598cecb813_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_17cebc598cecb813 ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_17cebc598cecb813 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_17cebc598cecb813_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_d80458c13e5918ea

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_surface_v1 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_17cebc598cecb813

foreign import ccall safe "wrapper" hs_bindgen_45616de839c9980e_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())@
hs_bindgen_45616de839c9980e ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ()))
hs_bindgen_45616de839c9980e =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_45616de839c9980e_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_336e619d38f5cc33_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())@
hs_bindgen_336e619d38f5cc33 ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ()
hs_bindgen_336e619d38f5cc33 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_336e619d38f5cc33_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ()) where

  toFunPtr = hs_bindgen_45616de839c9980e

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Ext_session_lock_v1 -> IO ()) where

  fromFunPtr = hs_bindgen_336e619d38f5cc33

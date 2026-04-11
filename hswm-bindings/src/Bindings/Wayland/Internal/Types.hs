{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

------------------------------------------------------------------------------
-- |
-- Module      : Bindings.Wayland.Internal.Types
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module Bindings.Wayland.Internal.Types
  ( module Bindings.Wayland.Internal.Types
  , module ReExports
  ) where

import           Control.Monad
import           Data.Kind (Type)
import           Data.Proxy
import           Data.Void
import           Foreign
import           Foreign.C
import           GHC.Records
import           HsBindgen.Runtime.Prelude as ReExports (FromFunPtr(..), PtrConst, ToFunPtr(..), CEnum(..), CEnumZ(..))
import           Control.Exception
import Control.Monad.IO.Class

-- * Exceptions

data WlClientException = WlListenerAddFailed
  deriving Show
instance Exception WlClientException

-- * Common fields and attributes
--
--   - Reading @Version@
--   - Read/write @userdata@
--   - Object destruction ('HasDestructor')

class IsWlObject object where

  getVersion :: object -> IO Word32

  getUserData :: object -> IO (Ptr Void)

  setUserData :: object -> Ptr Void -> IO ()

class HasDestructor object where

  objectDestroy :: object -> IO ()

class IsUserData a where

  toUserData :: a -> Ptr Void

  fromUserData :: Ptr Void -> IO a

instance IsUserData () where
  toUserData _ = nullPtr
  fromUserData _ = pure ()

instance IsUserData (StablePtr a) where
  toUserData = castPtr . castStablePtrToPtr
  fromUserData = pure . castPtrToStablePtr . castPtr

--instance {-# OVERLAPPABLE #-} (HasField "unwrap" ty (Ptr a), Storable ty) => IsUserData ty where
--  toUserData = castPtr . getField @"unwrap"
--  fromUserData = peek . castPtr

instance {-# OVERLAPPABLE #-} IsUserData (Ptr a) where
  toUserData = castPtr
  fromUserData = pure . castPtr

-- * Listeners, listener events

listenerAdd :: (MonadIO m, AddListener a, IsUserData ud)
            => a -- ^ The target object
            -> PtrConst (ObjectListener a) -- ^ Listener instance (function pointers)
            -> ud -- ^ Userdata
            -> m ()
listenerAdd obj l ud = liftIO $ do
  res <- objectListenerAdd obj l (toUserData ud)
  when (res < 0) $ throwIO WlListenerAddFailed

class AddListener object where

  type ObjectListener object :: Type

  objectListenerAdd :: object -> PtrConst (ObjectListener object) -> Ptr Void -> IO CInt

class ListenerEvent ev where

  type Listener ev :: Type

  freeListener :: Proxy ev -> Listener ev -> IO ()

{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE TypeFamilyDependencies #-}


-- |
-- Module      : Wayland.Types
-- Description : Common types
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Wayland.Types (
  -- * Exceptions
  WlClientException(..),
  -- * Types
  Version,
  ObjectName,
  IsWlObject(..),
  HasDestructor(..),
  HasInterface(..),
  HasListener(..),
  IsUserData(..),
  -- * Functions
  listenerAdd,
  listenerAdd_,
  -- * Re-exports
  module ReExports,
  ) where

import           Control.Exception
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Kind (Type)
import           Data.Proxy
import           Data.Void
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           HsBindgen.Runtime.Prelude as ReExports (FromFunPtr(..), PtrConst, ToFunPtr(..), CEnum(..), CEnumZ)
import           Data.Typeable

data WlClientException = WlListenerAddFailed
  deriving (Eq, Show)

instance Exception WlClientException

type Version = Word32

type ObjectName = Word32

-- | Class of Wayland objects that support operations:
--
--   - Reading @Version@
--
--   - Read/write @userdata@
class Typeable object => IsWlObject object where
  -- | Read object version.
  getVersion :: object -> IO Version

  -- | Read object user data.
  getUserData :: object -> IO (Ptr Void)

  -- | Write object user data.
  setUserData :: object -> Ptr Void -> IO ()

-- | Wayland objects that have destructors.
class Typeable object => HasDestructor object where

  objectDestroy :: object -> IO ()

-- | Wayland objects that have interface (e.g. for global registry).
class Typeable object => HasInterface object where

  -- | The interface's type, always 'Wl_interface'
  type InterfaceType object :: Type

  -- | The interface global (constant).
  objectInterface :: Proxy object -> ConstPtr (InterfaceType object)

  -- | Name of this interface (e.g. in global registry).
  objectInterfaceName :: Proxy object -> String

  -- | Interface version.
  objectInterfaceVersion :: Proxy object -> Version

  -- | Object constructor.
  objectBindWrap :: Ptr () -> object

-- | Objects for which it is possible to create listeners.
class Typeable object => HasListener object where

  -- | The listener interface.
  type ObjectListener object = r | r -> object

  -- | The event type of the listener.
  type ObjectListenerEvent object = r | r -> object

  -- | Create a new listener.
  createListener :: MonadIO m => (ObjectListenerEvent object -> IO ()) -> m (ConstPtr (ObjectListener object))

  -- | Add listener to object with the given user data.
  objectListenerAdd :: object -> ConstPtr (ObjectListener object) -> Ptr Void -> IO CInt

  -- | Free (destroy) the listener.
  freeListener :: Proxy object -> ConstPtr (ObjectListener object) -> IO ()

-- | Class of values that can be used as user data.
class Typeable a => IsUserData a where

  toUserData   :: a -> Ptr Void

  fromUserData :: Ptr Void -> IO a

instance IsUserData () where
  toUserData   _ = nullPtr
  fromUserData _ = pure ()

instance Typeable a => IsUserData (StablePtr a) where
  toUserData   = castPtr . castStablePtrToPtr
  fromUserData = pure . castPtrToStablePtr . castPtr

instance {-# OVERLAPPABLE #-}Typeable a =>  IsUserData (Ptr a) where
  toUserData   = castPtr
  fromUserData = pure . castPtr

listenerAdd :: (MonadIO m, HasListener object, IsUserData userdata)
            => object -- ^ The target object
            -> PtrConst (ObjectListener object) -- ^ Listener instance (function pointers)
            -> userdata -- ^ Userdata
            -> m ()
{-# INLINE listenerAdd #-}
listenerAdd obj l ud = liftIO $ do
  res <- objectListenerAdd obj l (toUserData ud)
  when (res < 0) $ throwIO WlListenerAddFailed

listenerAdd_ :: (MonadIO m, HasListener object)
            => object -- ^ The target object
            -> PtrConst (ObjectListener object) -- ^ Listener instance (function pointers)
            -> m ()
{-# INLINE listenerAdd_ #-}
listenerAdd_ obj l = liftIO $ do
  res <- objectListenerAdd obj l nullPtr
  when (res < 0) $ throwIO WlListenerAddFailed

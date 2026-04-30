{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : Bindings.Wayland.Internal.Types
-- Description : Common types
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.Internal.Types (
  -- * Exceptions
  WlClientException(..),
  -- * Classes
  IsWlObject(..),
  HasDestructor(..),
  HasInterface(..),
  HasListener(..),
  IsUserData(..),
  -- * Functions
  listenerAdd,
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

-- * Exceptions

data WlClientException = WlListenerAddFailed
  deriving (Eq, Show)

instance Exception WlClientException

-- | Class of wayland objects that support operations:
--
--   - Reading @Version@
--   - Read/write @userdata@
class IsWlObject object where
  -- | Read object version.
  getVersion :: object -> IO Word32

  -- | Read object user data.
  getUserData :: object -> IO (Ptr Void)

  -- | Write object user data.
  setUserData :: object -> Ptr Void -> IO ()

-- | Wayland objects that have destructors.
class HasDestructor object where
  objectDestroy :: object -> IO ()

-- | Wayland objects that have interface (e.g. for global registry).
class HasInterface object where
  -- | The interface's type, always 'Wl_interface'
  type InterfaceType object

  -- | The interface global (constant).
  objectInterface :: Proxy object -> ConstPtr (InterfaceType object)

  -- | Name of this interface (e.g. in global registry).
  objectInterfaceName :: Proxy object -> String

  -- | Interface version.
  objectInterfaceVersion :: Proxy object -> Int

  -- | Object constructor.
  objectBindWrap :: Ptr () -> object

-- | Objects for which it is possible to create listeners.
class HasListener object where

  -- | The listener interface.
  type ObjectListener object :: Type

  -- | The event type of the listener.
  type ObjectListenerEvent object :: Type

  -- | Create a new listener.
  createListener :: MonadIO m => Proxy object -> (ObjectListenerEvent object -> IO ()) -> m (ConstPtr (ObjectListener object))

  -- | Add listener to object with the given user data.
  objectListenerAdd :: object -> ConstPtr (ObjectListener object) -> Ptr Void -> IO CInt

  -- | Free (destroy) the listener.
  freeListener :: Proxy object -> ConstPtr (ObjectListener object) -> IO ()

-- | Class of values that can be used as user data.
class IsUserData a where
  toUserData   :: a -> Ptr Void
  fromUserData :: Ptr Void -> IO a

instance IsUserData () where
  toUserData   _ = nullPtr
  fromUserData _ = pure ()

instance IsUserData (StablePtr a) where
  toUserData   = castPtr . castStablePtrToPtr
  fromUserData = pure . castPtrToStablePtr . castPtr

instance {-# OVERLAPPABLE #-} IsUserData (Ptr a) where
  toUserData   = castPtr
  fromUserData = pure . castPtr

listenerAdd :: (MonadIO m, HasListener object, IsUserData userdata)
            => object -- ^ The target object
            -> PtrConst (ObjectListener object) -- ^ Listener instance (function pointers)
            -> userdata -- ^ Userdata
            -> m ()
listenerAdd obj l ud = liftIO $ do
  res <- objectListenerAdd obj l (toUserData ud)
  when (res < 0) $ throwIO WlListenerAddFailed

{-# LANGUAGE DefaultSignatures      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE TypeFamilyDependencies #-}
{-# LANGUAGE UndecidableInstances   #-}


-- |
-- Module      : WL.Internals.Types
-- Description : Common types
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module WL.Internals.Types (
  -- * Types
  Version,
  ObjectName,
  IsWlObject(..),
  HasMethod(..),
  HasDestructor(..),
  HasInterface(..),
  HasListener(..),
  IsUserData(..),
  -- * Re-exports
  module ReExports,
  ) where

import           WL.Util.Generated (Wl_interface)

import           Control.Monad.IO.Class
import           Data.Kind (Type)
import           Data.Proxy
import           Data.Typeable
import           Data.Void
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr
import           GHC.TypeLits
import           HsBindgen.Runtime.Prelude as ReExports (CEnum(..), CEnumZ, FromFunPtr(..),
                                                         PtrConst, ToFunPtr(..))
import Data.Coerce

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

  -- | @wl_proxy@ wrapper
  toProxy :: object -> Ptr a
  default toProxy :: (Coercible object (Ptr Void)) => object -> Ptr a
  toProxy = castPtr . coerce

-- | Wayland objects that have destructors.
class Typeable object => HasDestructor object where

  objectDestroy :: MonadIO m => object -> m ()

-- | Wayland objects that have interface (e.g. for global registry).
class IsWlObject object => HasInterface object where

  -- | The interface global (constant).
  objectInterface :: Proxy object -> ConstPtr Wl_interface

  -- | Name of this interface (e.g. in global registry).
  objectInterfaceName :: Proxy object -> String

  -- | Interface version.
  objectInterfaceVersion :: Proxy object -> Version

  -- | Object constructor.
  objectBindWrap :: Ptr () -> object
  default objectBindWrap :: Coercible (Ptr ()) object => Ptr () -> object
  objectBindWrap = coerce

-- | Objects for which it is possible to create listeners.
class HasInterface object => HasListener object where

  -- | The listener interface.
  type ObjectListener object = r | r -> object

  -- | The event type of the listener.
  type ObjectListenerEvent object = r | r -> object

  -- | Create a new listener with provided callback function.
  --
  -- The created listener should be freed with 'freeListener'.
  createListener :: MonadIO m => (ObjectListenerEvent object -> IO ()) -> m (ConstPtr (ObjectListener object))

  -- | Add listener to object with the given user data.
  objectListenerAdd :: object -> ConstPtr (ObjectListener object) -> Ptr Void -> IO CInt

  -- | Free (destroy) the listener.
  freeListener :: MonadIO m => ConstPtr (ObjectListener object) -> m ()

-- | Simply calls 'freeListener'.
instance (HasListener object, Typeable a, a ~ ObjectListener object) => HasDestructor (ConstPtr a) where
  objectDestroy = freeListener

-- | Class of values that can be used as user data.
class Typeable a => IsUserData a where

  toUserData :: a -> Ptr Void
  default toUserData :: Coercible a (Ptr Void) => a -> Ptr Void
  toUserData = coerce

  fromUserData :: Ptr Void -> IO a
  default fromUserData :: Coercible (Ptr Void) a => Ptr Void -> IO a
  fromUserData = pure . coerce

-- | @NULL@
instance IsUserData () where
  toUserData   _ = nullPtr
  fromUserData _ = pure ()

instance Typeable a => IsUserData (StablePtr a) where
  toUserData   = castPtr . castStablePtrToPtr
  fromUserData = pure . castPtrToStablePtr . castPtr

instance {-# OVERLAPPABLE #-} Typeable a => IsUserData (Ptr a)

-- | Invoke methods by their C names via labels.
class Typeable object => HasMethod (method :: Symbol) object (since :: Nat) | object method -> since where

  type ObjectMethod object (method :: Symbol) :: Type

  objectMethod :: Proxy method -> object -> ObjectMethod object method

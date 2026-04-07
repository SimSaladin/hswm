{-# LANGUAGE DefaultSignatures #-}
-- |
-- Module      : HSWM.Types.WM
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Basic window management -related types.
module HSWM.Types.WM where

import HSWM.XKB
import Data.Aeson qualified as A
import Data.Typeable

-- | Virtual workspace indices
type WorkspaceId = String

-- | Physical screen indices
newtype ScreenId = S Int
  deriving stock (Eq, Show, Read, Generic)
  deriving newtype (Ord, Enum, Num, Integral, Real, A.ToJSON, A.FromJSON)

instance Bounded ScreenId where
  minBound = S 1
  maxBound = S maxBound

instance Default ScreenId where def = S (-1)

-- | The output dimensions
data ScreenDetail = SD {x, y, width, height :: !Int}
  deriving (Eq, Show, Read, Generic, Default)

data WorkspaceDetail = WD
  deriving (Eq, Show, Read, Generic, Default)

-- ---------------------------------------------------------------------
-- Extensible state/config
--

-- | Every module must make the data it wants to store
-- an instance of this class.
--
-- Minimal complete definition: initialValue
class (Typeable a) => ExtensionClass a where
  {-# MINIMAL initialValue #-}

  -- | Defines an initial value for the state extension
  initialValue :: a

  -- | Specifies whether the state extension should be
  -- persistent. Setting this method to 'PersistentExtension'
  -- will make the stored data survive restarts, but
  -- requires a to be an instance of Read and Show.
  --
  -- It defaults to 'StateExtension', i.e. no persistence.
  extensionType :: a -> StateExtension
  extensionType = StateExtension

-- | Existential type to store a state extension.
data StateExtension
  = -- | Non-persistent state extension
    forall a. (ExtensionClass a) => StateExtension a
  | -- | Persistent extension
    forall a. (Read a, Show a, ExtensionClass a) => PersistentExtension a

-- | Existential type to store a config extension.
data ConfExtension = forall a. (Typeable a) => ConfExtension a

---------------------------------------------------------
-- Actions

data SomeAction m where
  SomeAction :: forall m a. (IsAction m a) => a -> SomeAction m

class (Monad m, MonadIO m) => IsAction m a where
  runner :: a -> m ()

  actionSubmap :: a -> [((ModMask, KeySym), SomeAction m)]
  actionSubmap _ = []

  -- | Description based on the value (defaults to type info)
  actionDescription :: Proxy m -> a -> String
  actionDescription = typeDescription

  -- | Description based on type info
  typeDescription :: Proxy m -> a -> String
  default typeDescription :: (Typeable a) => Proxy m -> a -> String
  typeDescription _ = show . typeOf

instance MonadIO m => IsAction m (SomeAction m) where
  runner            (SomeAction a) = runner a
  actionSubmap      (SomeAction a) = actionSubmap a
  actionDescription mp (SomeAction a) = actionDescription mp a
  typeDescription   mp (SomeAction a) = typeDescription mp a

instance (MonadIO m) => Show (SomeAction m) where
  show x = case x of
                SomeAction (val :: IsAction m a => a) -> actionDescription (Proxy :: Proxy m) val
instance (MonadIO m) => Display (SomeAction m) where
  textDisplay = toText . show

data Submap m = Submap
  { submapKeys :: [((ModMask, KeySym), SomeAction m)],
    submapDefault :: Maybe (SomeAction m)
  }
  deriving (Show, Generic)

instance (MonadIO m, Typeable m) => IsAction m (Submap m) where
  runner Submap {..} = whenJust submapDefault runner
  actionSubmap Submap {..} = submapKeys
-- actionDescription Submap{..} = "Submap"

instance MonadIO m => IsAction m (IO ()) where
  runner = liftIO

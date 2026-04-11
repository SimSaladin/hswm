module Wayland
  ( module Wayland,
  )
where

import Data.List qualified as L
import Bindings.Wayland.Client qualified as WL

type Version = Word32

type WlRegistry = WL.Registry

------------------------------------------------------------------
-- Registry tracking

-- | Tracks the global objects that are available through wl_registry.
newtype RegistryCache = RegistryCache {objects :: [RegistryItem]} deriving (Show)

instance Semigroup RegistryCache where
  (<>) a b = RegistryCache (a.objects <> b.objects)

instance Monoid RegistryCache where
  mempty = RegistryCache []
  mappend = (<>)

data RegistryItem = RegistryItem
  { -- | Name (unique)
    name :: !Word32,
    -- | Interface description
    interface :: !String,
    -- | Interface version
    version :: !Version,
    registry :: !WlRegistry
  }
  deriving (Show, Generic)

removeGlobal :: Word32 -> RegistryCache -> RegistryCache
removeGlobal name_ r = r {objects = L.filter (\o -> name_ /= o.name) r.objects}

registerGlobal :: Word32 -> String -> Version -> WlRegistry -> RegistryCache -> RegistryCache
registerGlobal name text version wlr r = r {objects = RegistryItem name text version wlr : r.objects}

tryBindGlobal ::
  (MonadIO m) =>
  IORef RegistryCache ->
  -- | Interface name and version of the target object
  (String, Version) ->
  (WlRegistry -> Word32 -> Version -> m a) -> -- bind
  m (Maybe a)
tryBindGlobal rref (k, v) bind =
  io (readIORef rref) >>= \x -> case L.find (\i -> i.interface == k && v <= i.version) (objects x) of
    Just obj -> Just <$> bind obj.registry obj.name v
    Nothing -> return Nothing

requireGlobal :: (MonadIO m, MonadThrow m) => IORef RegistryCache -> (String, Version) -> (WlRegistry -> Word32 -> Version -> m a) -> m a
requireGlobal rref (k, v) bind =
  io (readIORef rref) >>= \x -> case L.find (\i -> i.interface == k && v <= i.version) $ objects x of
    Just obj -> bind obj.registry obj.name obj.version
    Nothing -> throwM $ NoSuchRegistryObject k v

data WlRegistryException = NoSuchRegistryObject String Version deriving (Show, Eq)

instance Exception WlRegistryException

handleRegistryEvent :: (MonadIO m, MonadReader env m, HasLogFunc env) => IORef RegistryCache -> WL.RegistryEvent -> m ()
handleRegistryEvent ref (WL.RegistryGlobal _ registry name iface version) = do
  log' $ display $ "[GLOBALS] new registry item: " <> toText iface <> " version=" <> tshow version <> " (" <> tshow name <> ")"
  modifyIORef ref $ registerGlobal name iface version registry
handleRegistryEvent ref (WL.RegistryGlobalRemove _ _ name) = do
  log' $ display $ "[GLOBALS] registry entry removed: " <> tshow name
  modifyIORef ref (removeGlobal name)

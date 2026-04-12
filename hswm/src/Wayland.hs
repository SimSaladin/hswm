module Wayland
  ( module Wayland,
  )
where

import Data.List qualified as L
import Foreign
import Bindings.Wayland.Client qualified as WL
import HSWM.Types.TypeMap

------------------------------------------------------------------
-- * Registry tracking

type Name = Word32

type Version = Word32

type InterfaceVersion = (String, Version)

type WlRegistry = WL.Registry

data WlRegistryException = NoSuchRegistryObject String Version deriving (Show, Eq)

instance Exception WlRegistryException

data RegistryItem = RegistryItem
  { -- | Object name (unique)
    name :: !Name,
    -- | Interface description
    interface :: !String,
    -- | Interface version
    version :: !Version,
    registry :: !WlRegistry
  }
  deriving (Show, Generic)

-- | Tracks the global objects that are available through wl_registry.
newtype RegistryCache = RegistryCache {objects :: [RegistryItem]} deriving (Show)

instance Semigroup RegistryCache where
  (<>) a b = RegistryCache (a.objects <> b.objects)

instance Monoid RegistryCache where
  mempty = RegistryCache []
  mappend = (<>)

class HasGlobalsRegistry a where
  globalsRegistryL :: Lens' a (IORef RegistryCache)

instance HasGlobalsRegistry (IORef RegistryCache) where
  globalsRegistryL = lens id const

-- * Registering to global items

bindGlobalWith :: (Typeable a, MonadUnliftIO m, MonadThrow m, MonadLogger m, MonadReader env m,
                   HasGlobalsRegistry env, HasGlobalTMap env, WL.AddListener a)
               => InterfaceVersion
               -> ConstPtr WL.Wl_interface
               -> (Ptr b -> a) -- ^ Wrapper for the created client object
               -> [(ConstPtr (WL.ObjectListener a), Ptr a)] -- ^ Optionally a listener/listeners to add after creation
               -> m a
bindGlobalWith ifaceVer@(_nm, _ver) iface toa listeners = do
  obj <- bindGlobalWith_ ifaceVer iface toa
  obj <$ forM_ listeners (\(l, ud) -> io $ WL.listenerAdd obj l ud)

bindGlobalWith_ :: (Typeable a, MonadUnliftIO m, MonadThrow m, MonadLogger m, MonadReader env m,
                   HasGlobalsRegistry env, HasGlobalTMap env)
               => InterfaceVersion
               -> ConstPtr WL.Wl_interface
               -> (Ptr b -> a) -- ^ Wrapper for the created client object
               -> m a
bindGlobalWith_ ifaceVer@(_nm, _ver) iface toa = do
  reg <- asks (view globalsRegistryL)
  obj <- requireGlobal reg ifaceVer (\r n v -> toa <$> io (WL.registryBind r n iface (fi v)))
  obj <$ putObject obj

requireGlobal :: (MonadIO m, MonadThrow m, MonadLogger m) => IORef RegistryCache -> InterfaceVersion -> (WlRegistry -> Name -> Version -> m a) -> m a
requireGlobal rref (k, v) bind = tryBindGlobal rref (k, v) bind >>= maybe (throwM $ NoSuchRegistryObject k v) return

tryBindGlobal :: (MonadIO m, MonadThrow m, MonadLogger m) => IORef RegistryCache -> InterfaceVersion -> (WlRegistry -> Name -> Version -> m a) -> m (Maybe a)
tryBindGlobal rref (k, v) bind = io (readIORef rref) >>= \x -> case L.find (\i -> i.interface == k && v <= i.version) (objects x) of
  Just obj -> do logInfo $ "GLOBALS: new item binding" :# [ "iface" .= k, "version" .= obj.version, "name" .= obj.name, "version-wanted" .= v ]
                 Just <$> bind obj.registry obj.name (min v obj.version)
  Nothing -> return Nothing

-- * Handling Global events

handleRegistryEvent :: (MonadIO m, MonadReader env m, MonadLogger m) => IORef RegistryCache -> WL.RegistryEvent -> m ()
handleRegistryEvent ref (WL.RegistryGlobal _ registry name iface version) = do
  logInfo $ "GLOBALS: new registry item" :# [ "iface" .= iface, "version" .= version, "name" .= name ]
  modifyIORef ref $ registerGlobal name iface version registry
    where
  registerGlobal :: Name -> String -> Version -> WlRegistry -> RegistryCache -> RegistryCache
  registerGlobal nm text ver wlr r = r {objects = RegistryItem nm text ver wlr : r.objects}

handleRegistryEvent ref (WL.RegistryGlobalRemove _ _ name) = do
  logInfo $ "GLOBALS: item removed" :# [ "name" .= name ]
  modifyIORef ref (removeGlobal name)
    where
  removeGlobal :: Name -> RegistryCache -> RegistryCache
  removeGlobal name_ r = r {objects = L.filter (\o -> name_ /= o.name) r.objects}

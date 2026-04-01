module Wayland
  ( module Wayland
  , module Wayland.FFI
  ) where

import           Wayland.FFI

import           Data.IORef
import qualified Data.List as L
import           Foreign
import           Foreign.C

openDisplay :: String -> IO WlDisplay
openDisplay s = do
  display <- if s == "" then wl_display_connect nullPtr
                        else withCString s wl_display_connect
  when (display == nullPtr) $ throwIO WaylandDisplayConnectFailed
  return display

------------------------------------------------------------------
-- Registry tracking

-- | Tracks the global objects that are available through wl_registry.
newtype RegistryCache = RegistryCache { objects :: [RegistryItem] } deriving (Show)

instance Semigroup RegistryCache where
  (<>) a b = RegistryCache (a.objects <> b.objects)
instance Monoid RegistryCache where
  mempty = RegistryCache []
  mappend = (<>)

data RegistryItem = RegistryItem
  { name      :: Word32 -- ^ Name (unique)
  , interface :: String -- ^ Interface description
  , version   :: Version -- ^ Interface version
  , registry  :: WlRegistry
  } deriving (Show, Generic)

removeGlobal :: Word32 -> RegistryCache -> RegistryCache
removeGlobal name_ r = r { objects = L.filter (\o -> name_ /= o.name) r.objects }

registerGlobal :: Word32 -> String -> Version -> WlRegistry -> RegistryCache -> RegistryCache
registerGlobal name text version wlr r = r { objects = RegistryItem name text version wlr : r.objects }

tryBindGlobal :: MonadIO m => IORef RegistryCache -> (String, Version) -- ^ Interface name and version of the target object
              -> (WlRegistry -> Word32 -> Version -> m a) -- bind
              -> m (Maybe a)
tryBindGlobal rref (k, v) bind = io (readIORef rref) >>= \x -> case L.find (\i -> i.interface == k && v <= i.version) (objects x) of
    Just obj -> Just <$> bind obj.registry obj.name v
    Nothing  -> return Nothing

requireGlobal :: MonadIO m => IORef RegistryCache -> (String, Version) -> (WlRegistry -> Word32 -> Version -> m a) -> m a
requireGlobal rref (k, v) bind = io (readIORef rref) >>= \x -> case L.find (\i -> i.interface == k && v <= i.version) $ objects x of
    Just obj -> bind obj.registry obj.name obj.version
    Nothing  -> throw $ NoSuchRegistryObject k v

data RegistryException = NoSuchRegistryObject String Version deriving (Show, Eq)
instance Exception RegistryException

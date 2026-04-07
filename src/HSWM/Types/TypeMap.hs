-- |
-- Module      : HSWM.Types.TypeMap
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Type-indexed globals
module HSWM.Types.TypeMap where

import RIO
import Data.TMap qualified as TM
import Data.Typeable
import Prelude

newtype TypeMap = TypeMap {unTypeMap :: TM.TMap}
  deriving (Show, Generic)

instance Default TypeMap where def = TypeMap TM.empty

class HasGlobalTMap env where
  globalTMap :: Lens' env TypeMap

instance HasGlobalTMap TypeMap where
  globalTMap = lens id (\s _ -> s)

type MonadStateGlobal s m = (HasGlobalTMap s, MonadState s m)

-- | Partial function, assumes the type exists already.
getObject :: (Typeable a, MonadStateGlobal s m) => m a
getObject =
  gets (TM.lookup . unTypeMap . view globalTMap) >>= \case
    (Nothing :: Maybe a) -> error ("getObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
    Just x -> return x

getOrCreateObject :: (Typeable a, MonadStateGlobal s m, MonadIO m) => IO a -> m a
getOrCreateObject m = gets (TM.lookup . unTypeMap . view globalTMap) >>= \case
    Just x -> return x
    Nothing -> liftIO m >>= \x -> modifyWlObjects (TM.insert x) >> return x

withObjects :: MonadStateGlobal s m => (TM.TMap -> m a) -> m a
withObjects f = gets (unTypeMap . view globalTMap) >>= f

putObject :: (MonadStateGlobal s m, Typeable a) => a -> m ()
putObject x = modifyWlObjects $ TM.insert x

withObjectDef :: (MonadStateGlobal s m, Typeable a) => b -> (a -> m b) -> m b
withObjectDef od f = gets (TM.lookup . unTypeMap . view globalTMap) >>= \case
    Nothing -> return od
    Just x -> f x

withObject :: (Typeable a, MonadStateGlobal s m) => (a -> m b) -> m b
withObject f = gets (TM.lookup . unTypeMap . view globalTMap) >>= \case
    (Nothing :: Maybe a) -> error ("withObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
    Just x -> f x

modifyWlObjects :: MonadStateGlobal s m => (TM.TMap -> TM.TMap) -> m ()
modifyWlObjects f = modify $ over globalTMap $ TypeMap . f . unTypeMap

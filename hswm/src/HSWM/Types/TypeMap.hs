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

import Data.Typeable
import Data.TMap qualified as TM

newtype TypeMap = TypeMap {unTypeMap :: TM.TMap}
  deriving (Show, Generic)

instance Default TypeMap where def = TypeMap TM.empty

class HasGlobalTMap env where
  globalTMap :: Lens' env (TMVar TypeMap)

instance HasGlobalTMap (TMVar TypeMap) where
  globalTMap = lens id const

type MonadStateGlobal s m = (HasGlobalTMap s, MonadReader s m, MonadUnliftIO m, MonadLogger m)

-- | Partial function, assumes the type exists already.
getObject :: (Typeable a, MonadStateGlobal s m) => m a
getObject = do
  tm <- asks (view globalTMap) >>= atomically . readTMVar
  case TM.lookup $ unTypeMap tm of
    (Nothing :: Maybe a) -> error ("getObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
    Just x -> return x

withTMVar :: (MonadUnliftIO m, MonadLogger m, MonadReader env m) => TMVar s -> (s -> m (a, s)) -> m a
withTMVar var f = bracketOnError (atomically $ takeTMVar var) (atomically . tryPutTMVar var) $ \s -> do
  (a, s') <- f s
  atomically $ putTMVar var s'
  return a

getOrCreateObject :: forall a s m. (Typeable a, MonadStateGlobal s m, MonadIO m) => m a -> m a
getOrCreateObject m = do
  --let typeS = show $ typeRep (Proxy :: Proxy a)
  --logDebug $ "get or create type object" :# [ "type" .= typeS ]
  tmV <- asks (view globalTMap)
  withTMVar tmV $ \tm -> do
    case TM.lookup $ unTypeMap tm of
      Just x -> return (x, tm)
      Nothing -> do
        a <- m
        return (a, TypeMap $ TM.insert a $ unTypeMap tm)

getOrCreateObjectIO :: forall a s m. (Typeable a, MonadStateGlobal s m, MonadIO m) => IO a -> m a
getOrCreateObjectIO m = do
  --let typeS = show $ typeRep (Proxy :: Proxy a)
  --logDebug $ "get or create type object" :# [ "type" .= typeS ]
  tmV <- asks (view globalTMap)
  withTMVar tmV $ \tm -> do
    case TM.lookup $ unTypeMap tm of
      Just x -> return (x, tm)
      Nothing -> do
        a <- liftIO m
        return (a, TypeMap $ TM.insert a $ unTypeMap tm)

withObjects :: (MonadStateGlobal s m) => (TM.TMap -> m a) -> m a
withObjects f = do
  tm <- asks (view globalTMap) >>= atomically . readTMVar
  f (unTypeMap tm)

putObject :: (MonadStateGlobal s m, Typeable a) => a -> m ()
putObject x = do
  tmV <- asks (view globalTMap)
  withTMVar tmV $ \s -> return ((), TypeMap . TM.insert x $ unTypeMap s)

withObjectDef :: (MonadStateGlobal s m, Typeable a) => b -> (a -> m b) -> m b
withObjectDef od f = do
  tm <- asks (view globalTMap) >>= atomically . readTMVar
  case TM.lookup $ unTypeMap tm of
    Nothing -> return od
    Just x -> f x

withObject :: (Typeable a, MonadStateGlobal s m) => (a -> m b) -> m b
withObject f = do
  tm <- asks (view globalTMap) >>= atomically . readTMVar
  case TM.lookup $ unTypeMap tm of
    (Nothing :: Maybe a) -> error ("withObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
    Just x -> f x

modifyWlObjects :: (MonadStateGlobal s m) => (TM.TMap -> TM.TMap) -> m ()
modifyWlObjects f = do
  tmV <- asks (view globalTMap)
  withTMVar tmV $ \s -> return ((), TypeMap . f $ unTypeMap s)

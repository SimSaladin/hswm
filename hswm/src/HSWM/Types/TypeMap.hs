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

-- * Types

newtype TypeMap = TypeMap {unTypeMap :: TM.TMap}
  deriving (Show, Generic)

instance Default TypeMap where def = TypeMap TM.empty

class HasGlobalTMap env where
  globalTMap :: Lens' env (TMVar TypeMap)

instance HasGlobalTMap (TMVar TypeMap) where
  globalTMap = lens id const

type MonadStateGlobal env m = (HasGlobalTMap env, MonadReader env m, MonadUnliftIO m, MonadLogger m)

-- * With

withObjectDef :: forall a s m b. (MonadStateGlobal s m, Typeable a, Default a) => (a -> m b) -> m b
withObjectDef f = do
  modifyObjectDef @a id
  withObjects $ \tm -> f $ fromMaybe def (TM.lookup tm)
{-# INLINE withObjectDef #-}

-- | Fails if the object does not exist.
withObject :: forall a s m b.  (MonadStateGlobal s m, Typeable a) => (a -> m b) -> m b
{-# INLINE withObject #-}
withObject f = withObjects $ maybe notFound f . TM.lookup
  where notFound = error ("withObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))

-- * Get / Create

getObjectDef :: forall a s m. (MonadStateGlobal s m, Typeable a, Default a) => m a
getObjectDef = withObjectsEx $ \tm ->
  case TM.lookup $ unTypeMap tm of
    Just x -> return (x, tm)
    Nothing -> let x = def in return (x, TypeMap $ TM.insert x $ unTypeMap tm)
{-# INLINE getObjectDef #-}

-- | Partial function, assumes the type exists already.
getObject :: forall a s m. HasCallStack => (MonadStateGlobal s m, Typeable a) => m a
getObject = withObjects $ maybe notFound return . TM.lookup
  where notFound = error ("getObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
{-# INLINE getObject #-}

getOrCreateObject :: forall a s m. (MonadStateGlobal s m, Typeable a) => m a -> m a
getOrCreateObject m = withObjectsEx $ \tm ->
  let notFound = m >>= \a -> return (a, TypeMap $ TM.insert a $ unTypeMap tm)
   in maybe notFound (\x -> return (x, tm)) $ TM.lookup $ unTypeMap tm
{-# INLINE getOrCreateObject #-}

getOrCreateObjectIO :: forall a s m. (MonadStateGlobal s m, Typeable a) => IO a -> m a
getOrCreateObjectIO = getOrCreateObject . liftIO
{-# INLINE getOrCreateObjectIO #-}

-- * Put / Modify

-- | Insert new or replace existing.
putObject :: forall a s m. (MonadStateGlobal s m, Typeable a) => a -> m ()
putObject x = withObjectsEx $ \s -> return ((), TypeMap . TM.insert x $ unTypeMap s)
{-# INLINE putObject #-}

-- | Modify object (if it exists).
modifyObject :: forall a s m. (Typeable a, MonadStateGlobal s m) => (a -> a) -> m ()
modifyObject f = withObjectsEx $ \s -> return ((), TypeMap . g $ unTypeMap s)
  where
    g tm = maybe id (TM.insert . f) (TM.lookup tm) tm
{-# INLINE modifyObject #-}

-- | Modify object (if it does not exist, @def@ is used to initialize the value).
modifyObjectDef :: forall a s m. (Typeable a, Default a, MonadStateGlobal s m) => (a -> a) -> m ()
modifyObjectDef f = withObjectsEx $ \s -> return ((), TypeMap . g $ unTypeMap s)
  where
    g tm = TM.insert (f . fromMaybe def $ TM.lookup tm) tm
{-# INLINE modifyObjectDef #-}

modifyObjectDef' :: forall a s m b. (Typeable a, Default a, MonadStateGlobal s m) => (a -> (b, a)) -> m b
modifyObjectDef' f = withObjectsEx $ g . unTypeMap
  where
    g tm = let (r, a') = f $ fromMaybe def $ TM.lookup tm
            in return (r, TypeMap $ TM.insert a' tm)
{-# INLINE modifyObjectDef' #-}

-- * Internal

withObjects :: forall a s m. (MonadStateGlobal s m) => (TM.TMap -> m a) -> m a
withObjects f = asks (view globalTMap) >>= atomically . readTMVar >>= f . unTypeMap
{-# INLINE withObjects #-}

-- | Do @m@ with the map state locked.
withObjectsEx :: forall a s m. (MonadStateGlobal s m) => (TypeMap -> m (a, TypeMap)) -> m a
withObjectsEx f = asks (view globalTMap) >>= flip withTMVar f
{-# INLINE withObjectsEx #-}

withTMVar :: (MonadUnliftIO m, MonadLogger m, MonadReader env m) => TMVar s -> (s -> m (a, s)) -> m a
{-# INLINE withTMVar #-}
withTMVar var f = bracketOnError (atomically $ takeTMVar var) (atomically . tryPutTMVar var) $ \s -> do
  (a, s') <- f s
  atomically $ putTMVar var s'
  return a

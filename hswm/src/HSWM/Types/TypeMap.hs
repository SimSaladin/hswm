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

withObjectDef :: forall a s m b. (MonadStateGlobal s m, Typeable a) => b -> (a -> m b) -> m b
withObjectDef od f = withObjects $ maybe (return od) f . TM.lookup
{-# INLINE withObjectDef #-}

withObject :: forall a s m b.  (MonadStateGlobal s m, Typeable a) => (a -> m b) -> m b
withObject f = withObjects $ maybe notFound f . TM.lookup
  where notFound = error ("withObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))
{-# INLINE withObject #-}

-- * Get / Create

getObjectDef :: forall a s m. (MonadStateGlobal s m, Typeable a, Default a) => m a
getObjectDef = withObjects $ return . fromMaybe def . TM.lookup
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

putObject :: forall a s m. (MonadStateGlobal s m, Typeable a) => a -> m ()
putObject x = withObjectsEx $ \s -> return ((), TypeMap . TM.insert x $ unTypeMap s)
{-# INLINE putObject #-}

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

withObjectsEx :: forall a s m. (MonadStateGlobal s m) => (TypeMap -> m (a, TypeMap)) -> m a
withObjectsEx f = asks (view globalTMap) >>= flip withTMVar f
{-# INLINE withObjectsEx #-}

withTMVar :: (MonadUnliftIO m, MonadLogger m, MonadReader env m) => TMVar s -> (s -> m (a, s)) -> m a
withTMVar var f = bracketOnError (atomically $ takeTMVar var) (atomically . tryPutTMVar var) $ \s -> do
  (a, s') <- f s
  atomically $ putTMVar var s'
  return a
{-# INLINE withTMVar #-}

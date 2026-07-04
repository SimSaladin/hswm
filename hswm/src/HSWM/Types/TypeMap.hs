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

instance Default TypeMap where
  def = TypeMap TM.empty

class HasGlobalTMap env where
  globalTMap :: Lens' env (TMVar TypeMap)

instance HasGlobalTMap (TMVar TypeMap) where
  globalTMap = lens id const

type MonadStateGlobal env m = (MonadReader env m, HasGlobalTMap env, MonadUnliftIO m, MonadLogger m, MonadThrow m)

type MonadGlobalRead env m = (MonadReader env m, HasGlobalTMap env, MonadIO m, MonadLogger m, MonadThrow m)

newtype TypeMapException = TypeMapError String
  deriving (Eq, Ord, Show)
instance Exception TypeMapException

-- * With

-- | Fails if the object does not exist.
withObject :: forall a s m b.  (MonadGlobalRead s m, Typeable a) => (a -> m b) -> m b
withObject f = withObjects $ maybe notFound f . TM.lookup
  where
    notFound = throwM $ TypeMapError ("withObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))

withObjectDef :: forall a s m b. (MonadStateGlobal s m, Typeable a, Default a) => (a -> m b) -> m b
withObjectDef f = do
  modifyObjectDef @a id
  withObjects $ \tm -> f $ fromMaybe def (TM.lookup tm)

{-# INLINE withObject #-}
{-# INLINE withObjectDef #-}

-- * Get / Create

-- | Partial function, assumes the type exists already.
getObject :: forall a s m. HasCallStack => (MonadGlobalRead s m, Typeable a) => m a
getObject = withObjects $ maybe notFound return . TM.lookup
  where
    notFound = throwM $ TypeMapError ("getObject: no such object: " ++ show (typeRep (Proxy :: Proxy a)))

getObjectDef :: forall a s m. (MonadStateGlobal s m, Typeable a, Default a) => m a
getObjectDef = withObjectsEx $ \tm ->
  case TM.lookup $ unTypeMap tm of
    Just x -> return (x, tm)
    Nothing -> let x = def in return (x, TypeMap $ TM.insert x $ unTypeMap tm)

getOrCreateObject :: forall a s m. (MonadStateGlobal s m, Typeable a) => m a -> m a
getOrCreateObject m = withObjectsEx $ \tm ->
  let notFound = m >>= \a -> return (a, TypeMap $ TM.insert a $ unTypeMap tm)
   in maybe notFound (\x -> return (x, tm)) $ TM.lookup $ unTypeMap tm

getOrCreateObjectIO :: forall a s m. (MonadStateGlobal s m, Typeable a) => IO a -> m a
getOrCreateObjectIO = getOrCreateObject . liftIO

{-# INLINE getObject #-}
{-# INLINE getObjectDef #-}
{-# INLINE getOrCreateObject #-}
{-# INLINE getOrCreateObjectIO #-}

-- * Put

-- | Insert new or replace existing.
putObject :: forall a s m. (MonadStateGlobal s m, Typeable a) => a -> m ()
putObject x = withObjectsEx $ \s -> return ((), TypeMap . TM.insert x $ unTypeMap s)

-- * Modify

-- | Modify object (if it exists).
modifyObject :: forall a s m. (MonadStateGlobal s m, Typeable a) => (a -> a) -> m ()
modifyObject f = withObjectsEx $ \s -> return ((), TypeMap . g $ unTypeMap s)
  where
    g tm = maybe id (TM.insert . f) (TM.lookup tm) tm

-- | Modify object (if it does not exist, @def@ is used to initialize the value).
modifyObjectDef :: forall a s m. (Typeable a, Default a, MonadStateGlobal s m) => (a -> a) -> m ()
modifyObjectDef f = withObjectsEx $ \s -> return ((), TypeMap . g $ unTypeMap s)
  where
    g tm = TM.insert (f . fromMaybe def $ TM.lookup tm) tm

modifyObjectDef' :: forall a s m b. (Typeable a, Default a, MonadStateGlobal s m) => (a -> (b, a)) -> m b
modifyObjectDef' f = withObjectsEx $ g . unTypeMap
  where
    g tm = let (r, a') = f $ fromMaybe def $ TM.lookup tm
            in return (r, TypeMap $ TM.insert a' tm)

{-# INLINE putObject #-}
{-# INLINE modifyObject #-}
{-# INLINE modifyObjectDef #-}
{-# INLINE modifyObjectDef' #-}

-- * Internal

-- | Read-only operations (no 'MonadUnliftIO' constraint)
withObjects :: forall a s m. (MonadReader s m, HasGlobalTMap s, MonadIO m) => (TM.TMap -> m a) -> m a
withObjects f = asks (view globalTMap) >>= atomically . readTMVar >>= f . unTypeMap

-- | Do @m@ with the map state locked.
withObjectsEx :: forall a s m. (MonadStateGlobal s m) => (TypeMap -> m (a, TypeMap)) -> m a
withObjectsEx f = asks (view globalTMap) >>= flip withTMVar f

withTMVar :: (MonadUnliftIO m, MonadReader env m) => TMVar s -> (s -> m (a, s)) -> m a
withTMVar var f = bracketOnError (atomically $ takeTMVar var) (atomically . tryPutTMVar var) $ \s -> do
  (a, s') <- f s
  atomically $ putTMVar var s'
  return a

{-# INLINE withObjects #-}
{-# INLINE withObjectsEx #-}
{-# INLINE withTMVar #-}

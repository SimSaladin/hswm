{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DefaultSignatures #-}


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

import Data.Aeson qualified as A
--import Data.TMap qualified as TM
import Data.TypeRepMap qualified as TM
import Data.Typeable
import GHC.Generics
import qualified Data.Map as M
import Data.Kind

-- * Types

type MonadStateGlobal env m = (MonadReader env m, HasGlobalTMap env, MonadEffectsIO m)

type MonadStateGlobal' env m = (MonadReader env m, HasGlobalTMap env, MonadEffects m)

-- | XXX: there's probably a better place for this somewhre...
type MonadEffectsIO m = (MonadUnliftIO m, MonadLoggerIO m, MonadMask m, MonadThrow m, MonadFail m)

-- | XXX: there's probably a better place for this somewhre...
type MonadEffects m = (MonadIO m, MonadLogger m, MonadMask m, MonadThrow m, MonadFail m)

-- ** Constraints

-- ** TypeMap

class Typeable a => Inspect a where
  inspect :: a -> String
  default inspect :: (Generic a, GInspect (Rep a)) => a -> String
  inspect x = ginspect (from @_ @() x)

instance {-# OVERLAPS #-} (Generic a, Typeable a, Inspect (Rep a ())) => Inspect (Generically a) where
  inspect (Generically x) = inspect (from @_ @() x)

instance Typeable a => Inspect (IORef a) where
  inspect _ = "<IORef>"
instance Typeable a => Inspect (IO a) where
  inspect _ = "<IO>"
instance Inspect a => Inspect (Maybe a) where
  inspect Nothing = "Nothing"
  inspect (Just x) = "Just " ++ inspect x
instance {-# OVERLAPS #-} (Inspect a, Typeable k, Show k) => Inspect (M.Map k a) where
  inspect = show . fmap inspect

instance {-# OVERLAPPABLE #-} (Typeable a, Show a) => Inspect a where
  inspect = show

class GInspect f where
  ginspect :: f p -> String

instance  GInspect U1 where
  ginspect U1 = ""
instance Inspect c => GInspect (K1 i c) where
  ginspect (K1 x) = inspect x
instance GInspect f => GInspect (D1 c f) where
  ginspect (M1 x) = ginspect x
instance (GInspect f, Selector i) => GInspect (S1 i f) where
  ginspect y@(M1 x)
    | selName y == "" = ginspect x
    | otherwise = selName y ++ " = " ++ ginspect x
instance (GInspect f, Constructor c) => GInspect (C1 c f) where
  ginspect y@(M1 x) = conName y ++ " " ++ (if conIsRecord y then "{ " ++ ginspect x ++ " }"
                                                            else ginspect x)
instance (GInspect c1, GInspect c2) => GInspect (c1 :+: c2) where
  ginspect (L1 x) = ginspect x
  ginspect (R1 x) = ginspect x
instance (GInspect (S1 i f), GInspect c2, Selector i) => GInspect (S1 i f :*: c2) where
  ginspect (x :*: y)
    | selName x == "" = ginspect x ++ ", " ++ ginspect y
    | otherwise     = ginspect x ++ " " ++ ginspect y
instance (GInspect c2, GInspect (c1 :*: c1')) => GInspect ((c1 :*: c1') :*: c2) where
  ginspect (x :*: y) = ginspect x ++ ", " ++ ginspect y

data TF (a :: Type) = Inspect a => TF { runTF :: !a }

unwrapVal :: Inspect a => TF a -> a
unwrapVal (TF x) = x
wrapVal :: Inspect a => a -> TF a
wrapVal x = TF x

newtype TypeMap = TypeMap {unTypeMap :: TM.TypeRepMap TF}
  deriving (Show, Generic)

instance Default TypeMap where
  def = TypeMap TM.empty

class HasGlobalTMap env where
  globalTMap :: Lens' env (TMVar TypeMap)

instance HasGlobalTMap (TMVar TypeMap) where
  globalTMap = lens id const

-- ** Exceptions

data TypeMapException
  = TypeMapKeyNotFound TypeRep
  | TypeMapKeyExists TypeRep
  deriving (Eq, Ord, Show)
instance Exception TypeMapException

-- * With

-- | Fails if the object does not exist.
-- No 'MonadUnliftIO' needed.
withObject :: forall a s m b. (HasCallStack) => (MonadStateGlobal' s m, Inspect a, Typeable a) => (a -> m b) -> m b
withObject f = withObjects $ maybe notFound (f . unwrapVal) . TM.lookup . unTypeMap
  where
    notFound = throwM $ TypeMapKeyNotFound (typeRep $ Proxy @a)

withObjectDef :: forall a s m b. (HasCallStack) => (MonadStateGlobal s m, Inspect a, Typeable a, Default a) => (a -> m b) -> m b
withObjectDef f = do
  modifyObjectDef @a id
  withObjects $ \(TypeMap tm) -> f . unwrapVal $ fromMaybe (wrapVal def) (TM.lookup tm)

-- | Does nothing if a suitable element was not found.
withOptionalObject ::
  forall a s m.
  (HasCallStack) =>
  (MonadStateGlobal' s m, Inspect a, Typeable a) =>
  (a -> m ()) -> m ()
withOptionalObject f = withObjects $ maybe (return ()) (f . unwrapVal) . TM.lookup . unTypeMap

{-# INLINE withObject #-}
{-# INLINE withObjectDef #-}

-- * Get / Create

-- | Partial function, assumes the type exists already.
-- No 'MonadUnliftIO' needed.
getObject :: forall a s m. (HasCallStack) => (MonadStateGlobal' s m, Inspect a, Typeable a) => m a
getObject = withObjects $ maybe notFound (return . unwrapVal) . TM.lookup . unTypeMap
  where
    notFound = throwM $ TypeMapKeyNotFound (typeRep $ Proxy @a)

-- | Version of 'getObject' that returns the 'def' value when an object is not found.
--   Needs 'MonadUnliftIO'.
getObjectDef :: forall a s m. (MonadStateGlobal s m, Inspect a, Typeable a, Default a) => m a
getObjectDef = withObjectsEx $ \tm ->
  case TM.lookup $ unTypeMap tm of
    Just x -> return (unwrapVal x, tm)
    Nothing -> let x = def in return (x, TypeMap $ TM.insert (wrapVal x) $ unTypeMap tm)

--   Needs 'MonadUnliftIO'.
--   Needs 'MonadUnliftIO'.
getOrCreateObject :: forall a s m. (MonadStateGlobal s m, Inspect a, Typeable a) => m a -> m a
getOrCreateObject m = withObjectsEx $ \tm ->
  let notFound = m >>= \a -> return (a, TypeMap $ TM.insert (wrapVal a) $ unTypeMap tm)
   in maybe notFound (\x -> return (unwrapVal x, tm)) $ TM.lookup $ unTypeMap tm

getOrCreateObjectIO :: forall a s m. (MonadStateGlobal s m, Inspect a, Typeable a) => IO a -> m a
getOrCreateObjectIO = getOrCreateObject . liftIO

-- | Create an object that is unique. Throws 'TypeMapKeyExists' on existing keys.
--   Needs 'MonadUnliftIO'.
createUnique :: forall a s m. (MonadStateGlobal s m, Inspect a, Typeable a) => m a -> m a
createUnique f = withObjectsEx $ \(TypeMap tm) ->
  if TM.member @a tm
    then throwM $ TypeMapKeyExists (typeRep $ Proxy @a)
    else f >>= \x -> return (x, TypeMap $ TM.insert (wrapVal x) tm)

createUnique_ :: forall a s m. (MonadStateGlobal s m, Inspect a, Typeable a) => m a -> m ()
createUnique_ = void . createUnique

{-# INLINE getObject #-}
{-# INLINE getObjectDef #-}
{-# INLINE getOrCreateObject #-}
{-# INLINE getOrCreateObjectIO #-}

-- * Put

-- | Insert new or replace existing.
--   Needs 'MonadUnliftIO'.
putObject :: forall a s m. (MonadStateGlobal s m, Inspect a, Typeable a) => a -> m ()
putObject x = withObjectsEx $ \s -> return ((), TypeMap . TM.insert (wrapVal x) $ unTypeMap s)

-- * Modify

-- | Modify object (if it exists).
--   Needs 'MonadUnliftIO'.
modifyObject :: forall a s m. (MonadStateGlobal s m, Inspect a, Typeable a) => (a -> a) -> m ()
modifyObject f = withObjectsEx $ \s -> return ((), TypeMap . g $ unTypeMap s)
  where
    g tm = maybe id (TM.insert . wrapVal . f . unwrapVal) (TM.lookup tm) tm

-- | Modify object (if it does not exist, @def@ is used to initialize the value).
modifyObjectDef :: forall a s m. (Typeable a, Inspect a, Default a, MonadStateGlobal s m) => (a -> a) -> m ()
modifyObjectDef f = modifyObjectDef' (\x -> ((), f x))

modifyObjectDef' :: forall a s m b. (Typeable a, Inspect a, Default a, MonadStateGlobal s m) => (a -> (b, a)) -> m b
modifyObjectDef' f = withObjectsEx $ g . unTypeMap
  where
    g tm =
      let (r, a') = (f . unwrapVal) . fromMaybe (wrapVal def) $ TM.lookup tm
       in return (r, TypeMap $ TM.insert (wrapVal a') tm)

{-# INLINE putObject #-}
{-# INLINE modifyObject #-}
{-# INLINE modifyObjectDef #-}
{-# INLINE modifyObjectDef' #-}

-- * Internal

-- | Read-only operations; no 'MonadUnliftIO' needed.
withObjects :: forall a s m. (MonadStateGlobal' s m) => (TypeMap -> m a) -> m a
withObjects f = asks (view globalTMap) >>= atomically . readTMVar >>= f

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

dumpObjects :: (MonadStateGlobal s m) => m A.Value
dumpObjects = withObjects $ return . A.object . TM.toListWith f . unTypeMap
  where
    f (TF x) = fromString (show (typeOf x)) .= inspect x

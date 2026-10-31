{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : HSWM.Types.TypeMap
-- Description : Type-indexed global store
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Type-indexed globals
module HSWM.Types.TypeMap
  ( MonadStateGlobal, MonadStateGlobal',
  TypeMap,
  TypeMapException(..),
  HasGlobalTMap(..),
  -- * With
  withObject, withObjectDef, withOptionalObject,
  -- * get
  getObject, getObjectDef, getOrCreateObject, getOrCreateObjectIO,
  -- * Create unique
  createUnique, createUnique_,
  -- * Put
  putObject,
  -- * Modify
  modifyObject, modifyObjectDef, modifyObjectDef',
  -- * Debug
  dumpObjects,
  --- * Inspect
  Inspect(..),
  ) where

import Data.Aeson qualified as A
import Data.Kind
import Data.Map qualified as M
import Data.TypeRepMap qualified as TM
import Data.Typeable
import GHC.Generics

-- * Types

type MonadStateGlobal env m = (MonadStateGlobal' env m, MonadUnliftIO m, MonadMask m)

type MonadStateGlobal' env m = (MonadReader env m, HasGlobalTMap env, MonadIO m, MonadLogger m)

-- ** Constraints

-- ** TypeMap

class (Typeable a) => Inspect a where
  inspect :: a -> String
  inspect = inspectPrec 0

  inspectPrec :: Int -> a -> String
  default inspectPrec :: (Generic a, GInspect (Rep a)) => Int -> a -> String
  inspectPrec p x = ginspect p Top (from @_ @() x)

instance (Typeable a) => Inspect (MVar a) where
  inspectPrec _ _ = "<MVar " ++ show (typeRep (Proxy @a)) ++ ">"
instance (Typeable a) => Inspect (IORef a) where
  inspectPrec _ _ = "<IORef " ++ show (typeRep (Proxy @a)) ++ ">"
instance (Typeable a) => Inspect (IO a) where
  inspectPrec _ _ = "<IO " ++ show (typeRep (Proxy @a)) ++ ">"
instance (Inspect a) => Inspect (Maybe a) where
  inspect Nothing = "Nothing"
  inspect (Just x) = "Just " ++ inspectPrec 1 x
instance (Inspect a, Typeable k, Show k) => Inspect (M.Map k a) where
  inspectPrec _ x = unlines [ inspect k ++ " -> " ++ inspect v | (k, v) <- M.toList x ]

instance (Generic a, Typeable a, GInspect (Rep a)) => Inspect (Generically a) where
  inspectPrec p (Generically x) = ginspect p Top (from @_ @() x)
instance {-# OVERLAPPABLE #-} (Typeable a, Show a) => Inspect a where
  inspectPrec _ = show

class GInspect f where
  ginspect :: Int -> IType -> f p -> String

data IType = Rec | Top

instance (GInspect f) => GInspect (D1 c f) where
  ginspect p t (M1 x) = ginspect p t x
instance (GInspect f, Constructor c) => GInspect (C1 c f) where
  ginspect p _ y@(M1 x) = brackets $
    conName y
      ++ " "
      ++ ( if conIsRecord y
             then "{ " ++ ginspect (p + 1) Rec x ++ " }"
             else ginspect (p + 1) Top x
         )
    where
      brackets s
        | p > 0 = "(" ++ s ++ ")"
        | otherwise = s
instance (GInspect c1, GInspect c2) => GInspect (c1 :+: c2) where
  ginspect p t (L1 x) = ginspect p t x
  ginspect p t (R1 x) = ginspect p t x
instance (GInspect c1, GInspect c2) => GInspect (c1 :*: c2) where
  ginspect p t@Rec (x :*: y) = ginspect p t x ++ ", " ++ ginspect p t y
  ginspect p t (x :*: y)   = ginspect p t x ++ " " ++ ginspect p t y
instance (GInspect f, Selector i) => GInspect (S1 i f) where
  ginspect p Rec y@(M1 x) = selName y ++ " = " ++ ginspect (p + 1) Top x
  ginspect p _ (M1 x) = ginspect (p + 1) Top x
instance (Inspect c) => GInspect (K1 i c) where
  ginspect _ _ (K1 x) = inspect x
instance GInspect U1 where
  ginspect _ _ U1 = ""

data TF (a :: Type) = (Inspect a) => TF !a

unwrapVal :: (Inspect a) => TF a -> a
unwrapVal (TF x) = x

wrapVal :: (Inspect a) => a -> TF a
wrapVal = TF

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
withObject :: forall a s m b. (HasCallStack, MonadStateGlobal' s m, Inspect a) => (a -> m b) -> m b
withObject f = withObjects $ maybe notFound (f . unwrapVal) . TM.lookup . unTypeMap
  where
    notFound = throwIO $ TypeMapKeyNotFound (typeRep $ Proxy @a)

withObjectDef :: forall a s m b. (HasCallStack, MonadStateGlobal' s m, Inspect a, Default a) => (a -> m b) -> m b
withObjectDef f = do
  modifyObjectDef @a id
  withObject f

-- | Does nothing if a suitable element was not found.
withOptionalObject :: forall a s m. (HasCallStack, MonadStateGlobal' s m, Inspect a) => (a -> m ()) -> m ()
withOptionalObject f = withObjects $ maybe (return ()) (f . unwrapVal) . TM.lookup . unTypeMap

{-# INLINE withObject #-}
{-# INLINE withObjectDef #-}

-- * Get / Create

-- | Partial function, assumes the type exists already.
getObject :: forall a s m. (HasCallStack, MonadStateGlobal' s m, Inspect a) => m a
getObject = withObjects $ maybe notFound (return . unwrapVal) . TM.lookup . unTypeMap
  where
    notFound = throwIO $ TypeMapKeyNotFound (typeRep $ Proxy @a)

-- | Version of 'getObject' that returns the 'def' value when an object is not found.
getObjectDef :: forall a s m. (MonadStateGlobal' s m, Inspect a, Default a) => m a
getObjectDef = withObjectsSTM $ \tm ->
  case TM.lookup $ unTypeMap tm of
    Just x -> return (unwrapVal x, tm)
    Nothing -> let x = def in return (x, TypeMap $ TM.insert (wrapVal x) $ unTypeMap tm)

--   Needs 'MonadUnliftIO'.
--   Needs 'MonadUnliftIO'.
getOrCreateObject :: forall a s m. (HasCallStack, MonadStateGlobal s m, Inspect a) => m a -> m a
getOrCreateObject m = withObjectsEx $ \tm ->
  let notFound = m >>= \a -> return (a, TypeMap $ TM.insert (wrapVal a) $ unTypeMap tm)
   in maybe notFound (\x -> return (unwrapVal x, tm)) $ TM.lookup $ unTypeMap tm

getOrCreateObjectIO :: forall a s m. (HasCallStack, MonadStateGlobal s m, Inspect a) => IO a -> m a
getOrCreateObjectIO = getOrCreateObject . liftIO

-- | Create an object that is unique. Throws 'TypeMapKeyExists' on existing keys.
--   Needs 'MonadUnliftIO'.
createUnique :: forall a s m. (HasCallStack, MonadStateGlobal s m, Inspect a) => m a -> m a
createUnique f = withObjectsEx $ \(TypeMap tm) ->
  if TM.member @a tm
    then throwIO $ TypeMapKeyExists (typeRep $ Proxy @a)
    else f >>= \x -> return (x, TypeMap $ TM.insert (wrapVal x) tm)

createUnique_ :: forall a s m. (HasCallStack, MonadStateGlobal s m, Inspect a) => m a -> m ()
createUnique_ = void . createUnique

{-# INLINE getObject #-}
{-# INLINE getObjectDef #-}
{-# INLINE getOrCreateObject #-}
{-# INLINE getOrCreateObjectIO #-}

-- * Put

-- | Insert new or replace existing.
putObject :: forall a s m. (MonadStateGlobal' s m, Inspect a) => a -> m ()
putObject x = withObjectsSTM $ \s -> return ((), TypeMap . TM.insert (wrapVal x) $ unTypeMap s)

-- * Modify

-- | Modify object (if it exists).
modifyObject :: forall a s m. (MonadStateGlobal' s m, Inspect a) => (a -> a) -> m ()
modifyObject f = withObjectsSTM $ \s -> return ((), TypeMap . g $ unTypeMap s)
  where
    g tm = maybe id (TM.insert . wrapVal . f . unwrapVal) (TM.lookup tm) tm

-- | Modify object (if it does not exist, @def@ is used to initialize the value).
modifyObjectDef :: forall a s m. (Inspect a, Default a, MonadStateGlobal' s m) => (a -> a) -> m ()
modifyObjectDef f = modifyObjectDef' (\x -> ((), f x))

modifyObjectDef' :: forall a s m b. (Inspect a, Default a, MonadStateGlobal' s m) => (a -> (b, a)) -> m b
modifyObjectDef' f = withObjectsSTM $ g . unTypeMap
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

withTMVar :: (MonadIO m, MonadMask m, MonadReader env m) => TMVar s -> (s -> m (a, s)) -> m a
withTMVar var f = bracketOnError (atomically $ takeTMVar var) (atomically . tryPutTMVar var) $ \s -> do
  (a, s') <- f s
  atomically $ putTMVar var s'
  return a

withObjectsSTM :: forall a s m. (MonadStateGlobal' s m) => (TypeMap -> STM (a, TypeMap)) -> m a
withObjectsSTM f = do
  var <- asks (view globalTMap)
  atomically $ do
    v <- takeTMVar var
    (a, v') <- f v
    _ <- v' `seq` putTMVar var v'
    return a

{-# INLINE withObjects #-}
{-# INLINE withObjectsEx #-}
{-# INLINE withTMVar #-}

dumpObjects :: (MonadStateGlobal' s m) => m A.Value
dumpObjects = withObjects $ return . A.object . TM.toListWith f . unTypeMap
  where
    f (TF x) = fromString (tyConModule (typeRepTyCon (typeOf x)) ++ "." ++ show (typeOf x)) .= inspect x

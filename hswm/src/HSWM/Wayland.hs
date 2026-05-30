module HSWM.Wayland where

import           HSWM.Types.TypeMap

import qualified Wayland as WL

import           Foreign

-- * Registry tracking

class HasGlobalsRegistry env where
  globalsRegistryL :: Lens' env (MVar WL.RegistryState)

instance HasGlobalsRegistry (MVar WL.RegistryState) where
  globalsRegistryL = lens id const

type HasGlobals env m = (MonadUnliftIO m, MonadLogger m, MonadThrow m, MonadReader env m, HasGlobalsRegistry env, HasGlobalTMap env)

bindGlobalWith :: forall a env m.
  ( HasGlobals env m
  , WL.IsWlObject a
  , WL.HasInterface a
  ) => WL.ObjectName -> Maybe WL.Version -> m a
bindGlobalWith name mver = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  WL.bindGlobal regState (Just name) mver

bindGlobalAuto_ :: forall a env m.
  ( HasGlobals env m
  , WL.IsWlObject a
  , WL.HasInterface a
  ) => m a
bindGlobalAuto_ = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing

bindGlobalAuto :: forall a env m.
  ( HasGlobals env m
  , Show a
  , WL.IsWlObject a
  , WL.HasInterface a
  , WL.HasListener a
  ) => [(ConstPtr (WL.ObjectListener a), Ptr ())] -> m a
bindGlobalAuto xs = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  o <- getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing
  forM_ xs $ uncurry (WL.listenerAdd o)
  return o

bindGlobalAuto' :: forall a env m.
  ( HasGlobals env m
  , Show a
  , Typeable (WL.ObjectListener a)
  , WL.IsWlObject a
  , WL.HasInterface a
  , WL.HasListener a
  ) => m a
bindGlobalAuto' = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  o <- getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing
  withObject $ \l -> WL.listenerAdd o l (nullPtr :: Ptr ())
  return o

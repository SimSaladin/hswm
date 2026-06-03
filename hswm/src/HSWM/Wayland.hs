module HSWM.Wayland where

import           HSWM.Types.TypeMap

import qualified Wayland as WL

-- * Registry tracking

class HasGlobalsRegistry env where
  globalsRegistryL :: Lens' env (MVar WL.RegistryState)

instance HasGlobalsRegistry (MVar WL.RegistryState) where
  globalsRegistryL = lens id const

type HasGlobals env m = (MonadUnliftIO m, MonadLogger m, MonadThrow m, MonadReader env m, HasGlobalsRegistry env, HasGlobalTMap env)

-- | Bind global by its name.
bindGlobalWith
  :: forall a env m. (HasGlobals env m, WL.IsWlObject a, WL.HasInterface a)
  => WL.ObjectName -> Maybe WL.Version -> m a
bindGlobalWith name mver = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  WL.bindGlobal regState (Just name) mver

-- | bind global by type.
bindGlobalAuto_
  :: forall a env m. (HasGlobals env m, WL.IsWlObject a, WL.HasInterface a)
  => m a
bindGlobalAuto_ = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing

-- | Bind global by type + add listener.
bindGlobalAuto
  :: forall a env m. (HasGlobals env m, WL.IsWlObject a, WL.HasInterface a, WL.HasListener a, Show a)
  => (ConstPtr (WL.ObjectListener a)) -- ^ listener
  -> Ptr () -- ^ User data
  -> m a
bindGlobalAuto listener udata = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  o <- getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing
  WL.listenerAdd o listener udata
  return o

-- | Bind global by type + add listener if one has been created.
bindGlobalAuto'
  :: forall a env m. (HasGlobals env m, WL.IsWlObject a, WL.HasInterface a, WL.HasListener a, Show a, Typeable (WL.ObjectListener a))
  => m a
bindGlobalAuto' = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  o <- getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing
  withObject $ \l -> WL.listenerAdd o l (nullPtr :: Ptr ())
  return o

module HSWM.Wayland where

import           HSWM.Types.TypeMap

import qualified WL.Client as WL

-- * Registry tracking

class HasGlobalsRegistry env where
  globalsRegistryL :: Lens' env (MVar WL.RegistryState)

instance HasGlobalsRegistry (MVar WL.RegistryState) where
  globalsRegistryL = lens id const

type MonadGlobals env m = (MonadUnliftIO m, MonadLogger m, MonadThrow m, MonadReader env m, HasGlobalsRegistry env, HasGlobalTMap env)

-- | Bind global by its name.
bindGlobalName
  :: forall a env m. (MonadGlobals env m, WL.IsWlObject a, WL.HasInterface a)
  => WL.ObjectName -- ^ The object name (id)
  -> Maybe WL.Version -- ^ Optional max version
  -> m a
bindGlobalName name mver = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  WL.bindGlobal regState (Just name) mver

-- | Bind global by type.
bindGlobal
  :: forall a env m. (MonadGlobals env m, WL.IsWlObject a, WL.HasInterface a)
  => m a
bindGlobal = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing

-- | Bind global by type + add listener.
bindGlobalWithListener
  :: forall a env m. (MonadGlobals env m, WL.IsWlObject a, WL.HasInterface a, WL.HasListener a, Show a)
  => (ConstPtr (WL.ObjectListener a)) -- ^ listener
  -> Ptr () -- ^ User data
  -> m a
bindGlobalWithListener listener udata = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  o <- getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing
  WL.listenerAdd o listener udata
  return o

-- | Bind global by type + add listener if one has been created.
bindGlobalWithAutoListener
  :: forall a env m. (MonadGlobals env m, WL.IsWlObject a, WL.HasInterface a, WL.HasListener a, Show a, Typeable (WL.ObjectListener a))
  => m a
bindGlobalWithAutoListener = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  o <- getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing
  withObject $ \l -> WL.listenerAdd o l (nullPtr :: Ptr ())
  return o

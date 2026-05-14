module HSWM.Wayland where

import           HSWM.Types.TypeMap

import qualified Wayland as WL

import           Foreign

------------------------------------------------------------------
-- * Registry tracking

type RegistryCache = WL.RegistryState

class HasGlobalsRegistry env where
  globalsRegistryL :: Lens' env (MVar RegistryCache)

instance HasGlobalsRegistry (MVar RegistryCache) where
  globalsRegistryL = lens id const

type HasGlobals env m = (MonadUnliftIO m, MonadLogger m, MonadReader env m, HasGlobalsRegistry env, HasGlobalTMap env)

bindGlobalWith :: forall a env m.
  ( HasGlobals env m
  , WL.IsWlObject a
  , WL.HasInterface a
  , WL.InterfaceType a ~ WL.Wl_interface
  ) => WL.ObjectName -> Maybe WL.Version -> m a
bindGlobalWith name mver = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  WL.bindGlobal regState (Just name) mver

bindGlobalAuto_ :: forall a env m.
  ( HasGlobals env m
  , WL.IsWlObject a
  , WL.HasInterface a
  , WL.InterfaceType a ~ WL.Wl_interface
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
  , WL.InterfaceType a ~ WL.Wl_interface
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
  , WL.InterfaceType a ~ WL.Wl_interface
  ) => m a
bindGlobalAuto' = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  o <- getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing
  withObject $ \l -> WL.listenerAdd o l (nullPtr :: Ptr ())
  return o

-- * Callbacks

-- | Wait for a callback to trigger.
callbackWait_ :: MonadIO m => WL.Callback -> m ()
callbackWait_ cb = liftIO $ do
  mvar <- newEmptyMVar
  cbListener <- WL.createListener $ \WL.CallbackDone{} -> putMVar mvar ()
  WL.listenerAdd_ cb cbListener
  takeMVar mvar

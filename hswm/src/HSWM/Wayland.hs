module HSWM.Wayland where

import           HSWM.Types.TypeMap

import qualified Wayland as WL

import qualified Data.List as L
import           Foreign

------------------------------------------------------------------
-- * Registry tracking

type RegistryCache = WL.RegistryState

class HasGlobalsRegistry env where
  globalsRegistryL :: Lens' env (MVar RegistryCache)

instance HasGlobalsRegistry (MVar RegistryCache) where
  globalsRegistryL = lens id const

type HasGlobals env m = (MonadUnliftIO m, MonadLogger m, MonadReader env m, HasGlobalsRegistry env, HasGlobalTMap env)

bindGlobalAuto_ :: forall a env m. (Typeable a, WL.HasInterface a, WL.InterfaceType a ~ WL.Wl_interface, HasGlobals env m) => m a
bindGlobalAuto_ = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing

bindGlobalAuto :: forall a env m. (Typeable a, WL.HasInterface a, WL.HasListener a, WL.InterfaceType a ~ WL.Wl_interface, HasGlobals env m)
               => [(ConstPtr (WL.ObjectListener a), Ptr ())] -> m a
bindGlobalAuto xs = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  o <- getOrCreateObjectIO $ WL.bindGlobal regState Nothing Nothing
  forM_ xs $ \(l, ud) -> WL.listenerAdd o l ud
  return o

-- * Callbacks

-- | Wait for a callback to trigger.
callbackWait_ :: MonadIO m => WL.Callback -> m ()
callbackWait_ cb = liftIO $ do
  mvar <- newEmptyMVar
  cbListener <- WL.createListener $ \WL.CallbackDone{} -> putMVar mvar ()
  WL.listenerAdd_ cb cbListener
  takeMVar mvar

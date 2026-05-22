module HSWM.Wayland where

import           HSWM.Types.TypeMap

import qualified Wayland as WL

import qualified Data.Set as S
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

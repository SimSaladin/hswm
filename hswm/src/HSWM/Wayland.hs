module HSWM.Wayland where

import           HSWM.Types.TypeMap

import qualified WL.Client as WL

type MonadGlobals env m = (MonadUnliftIO m, MonadLogger m, MonadThrow m, MonadReader env m, HasGlobalsRegistry env, HasGlobalTMap env)

class HasGlobalsRegistry env where
  globalsRegistryL :: Lens' env (MVar WL.RegistryState)

instance HasGlobalsRegistry (MVar WL.RegistryState) where
  globalsRegistryL = lens id const

-- | Bind global by type.
--
-- Special case of 'globalBind'.
bindGlobal :: forall a env m. (MonadGlobals env m, WL.HasInterface a) => m a
bindGlobal = globalBind True Nothing Nothing

-- | Bind global by its name.
--
-- Special case of 'globalBind'.
bindGlobalName
  :: forall a env m. (MonadGlobals env m, WL.HasInterface a)
  => WL.ObjectName -- ^ The object name (id)
  -> Maybe WL.Version -- ^ Optional max version
  -> m a
bindGlobalName name mver = globalBind False mver (Just name)

-- | Bind global by type + add listener if one has been created.
--
-- Special case of 'globalBindAndListen'.
bindGlobalWithAutoListener :: forall a env m. (MonadGlobals env m, WL.HasListener a) => m a
bindGlobalWithAutoListener = globalBindAndListen True Nothing (Nothing @()) Nothing Nothing

-- | Bind global by type + add listener.
--
-- Special case of 'globalBindAndListen'.
bindGlobalWithListener
  :: forall a env m. (MonadGlobals env m, WL.HasListener a)
  => ConstPtr (WL.ObjectListener a) -- ^ listener
  -> Ptr () -- ^ User data
  -> m a
bindGlobalWithListener listener udata = globalBindAndListen True (Just listener) (Just udata) Nothing Nothing

globalBind
  :: forall a env m. (MonadGlobals env m, WL.HasInterface a)
  => Bool -- ^ Register in global typemap? Should only be used for globals that can't have multiple bindings per type!
  -> Maybe WL.Version -- ^ Maximum interface version to accept
  -> Maybe WL.ObjectName -- ^ Bind to the specific object. By default binds to first announced object whose interface and version match requirements.
  -> m a
globalBind uniq mverMax mname = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  (if uniq then createUnique else id) $
    WL.bindGlobal regState mname mverMax

-- | Bind a global and register a listener for it.
globalBindAndListen
  :: forall a env m userdata. (MonadGlobals env m, WL.HasListener a, WL.IsUserData userdata)
  => Bool -- ^ Register in global typemap? Should only be used for globals that can't have multiple bindings per type!
  -> Maybe (ConstPtr (WL.ObjectListener a)) -- ^ Bind to a custom listener.
  -> Maybe userdata -- ^ Set some custom userdata for the listener
  -> Maybe WL.Version -- ^ Maximum interface version to accept
  -> Maybe WL.ObjectName -- ^ Bind to the specific object. By default binds to first announced object whose interface and version match requirements.
  -> m a
globalBindAndListen uniq mbListen mbData mverMax mname = do
  o <- globalBind uniq mverMax mname
  case mbListen of
    Just listen -> WL.listenerAdd o listen udata
    Nothing -> withObject $ \listen -> WL.listenerAdd o listen udata
  return o
  where
    udata = maybe nullPtr WL.toUserData mbData

-- | Create a type-directed listener
mkListener :: forall m env o. (MonadStateGlobal env m, WL.HasListener o) => (WL.ObjectListenerEvent o -> m ()) -> m ()
mkListener f = createUnique_ $ do
  run <- askRunInIO
  WL.createListener (run . f)

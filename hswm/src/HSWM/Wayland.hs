module HSWM.Wayland where

import           HSWM.Types.TypeMap
import qualified WL.Client as WL

type MonadGlobals env m = (MonadEffectsIO m, MonadReader env m, HasGlobalsRegistry env, HasGlobalTMap env)

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
bindGlobalWithAutoListener
  :: forall a env m. (MonadGlobals env m, WL.HasListener a) => m a
bindGlobalWithAutoListener =
  globalBindAndListen True Nothing (Nothing @()) Nothing Nothing

-- | Bind global by type + add listener.
--
-- Special case of 'globalBindAndListen'.
bindGlobalWithListener
  :: forall a env m. (MonadGlobals env m, WL.HasListener a)
  => ConstPtr (WL.ObjectListener a) -- ^ listener
  -> Ptr () -- ^ User data
  -> m a
bindGlobalWithListener listener udata =
  globalBindAndListen True (Just listener) (Just udata) Nothing Nothing

-- | Bind a global and register a listener for it.
--
-- Roughly 'globalBind' + 'addGlobalListener'
globalBindAndListen
  :: forall a env m udata. (MonadGlobals env m, WL.HasListener a, WL.IsUserData udata)
  => Bool -- ^ Register in global typemap? Should only be used for globals that can't have multiple bindings per type!
  -> Maybe (ConstPtr (WL.ObjectListener a)) -- ^ Bind to a custom listener.
  -> Maybe udata -- ^ Set some custom userdata for the listener
  -> Maybe WL.Version -- ^ Maximum interface version to accept
  -> Maybe WL.ObjectName -- ^ Bind to the specific object. By default binds to first announced object whose interface and version match requirements.
  -> m a
globalBindAndListen uniq mbListen mbData mverMax mname = do
  o <- globalBind uniq mverMax mname
  l <- maybe getObject return mbListen
  WL.listenerAdd o l $ maybe nullPtr WL.toUserData mbData
  return o

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

-- * Create and track event listeners

-- | Create new wayland listener of the inferred type.
-- If a listener with the same type already exists, an exception is raised.
mkListener
  :: forall m env a. (MonadStateGlobal env m, WL.HasListener a)
  => (WL.ObjectListenerEvent a -> m ()) -> m ()
mkListener f = createUnique_ $ do
  run <- askRunInIO
  WL.createListener (run . f)

-- | Given a wayland object, attach the previously created listener to it (see 'mkListener').
addGlobalListener
  :: forall a env m udata. (MonadStateGlobal env m, WL.IsUserData udata, WL.HasListener a)
  => a -> Maybe udata -> m ()
addGlobalListener obj mbData = do
    l <- getObject @(ConstPtr (WL.ObjectListener a))
    WL.listenerAdd obj l $ maybe nullPtr WL.toUserData mbData

-- | 'addGlobalListener' with empty user data.
addGlobalListener_ :: forall a env m. (MonadStateGlobal env m, WL.HasListener a) => a -> m ()
addGlobalListener_ = flip addGlobalListener (Nothing @())

-- * HasGlobalsRegistry

class HasGlobalsRegistry env where
  globalsRegistryL :: Lens' env (MVar WL.RegistryState)

instance HasGlobalsRegistry (MVar WL.RegistryState) where
  globalsRegistryL = lens id const

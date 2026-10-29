-- |
-- Module      : HSWM.Wayland
-- Description : Most important wayland functionality: object binding and listener creation.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Wayland where

import HSWM.Core
import WL.Client qualified as WL
import Data.Kind
import GHC.Records

type MonadGlobals env m = (MonadEffectsIO m, MonadReader env m, HasGlobalsRegistry env, HasGlobalTMap env, MonadMask m)

-- | Bind global by type.
--
-- Special case of 'globalBind'.
bindGlobal :: forall a env m. (HasCallStack, MonadGlobals env m, WL.HasInterface a, Inspect a) => m a
bindGlobal = globalBind True Nothing Nothing

-- | Bind global by its name.
--
-- Special case of 'globalBind'.
bindGlobalName ::
  forall a env m.
  (HasCallStack, MonadGlobals env m, WL.HasInterface a, Inspect a) =>
  WL.ObjectName
  -- ^ The object name (id)
  -> Maybe WL.Version
  -- ^ Optional max version
  -> m a
bindGlobalName name mver = globalBind False mver (Just name)

-- | Bind global by type + add listener if one has been created.
--
-- Special case of 'globalBindAndListen'.
bindGlobalWithAutoListener ::
  forall a env m. (HasCallStack, MonadH m, MonadGlobals env m, WL.HasListener a, Inspect a, HandleEvent H (WL.ObjectListenerEvent a)) => m a
bindGlobalWithAutoListener = do
  l <- getOrCreateGlobalListener
  globalBindAndListen True (Just l) (Nothing @()) Nothing Nothing

-- | Bind global by type + add listener.
--
-- Special case of 'globalBindAndListen'.
bindGlobalWithListener ::
  forall a env m.
  (HasCallStack, MonadGlobals env m, WL.HasListener a, Inspect a) =>
  ConstPtr (WL.ObjectListener a)
  -- ^ listener
  -> Ptr ()
  -- ^ User data
  -> m a
bindGlobalWithListener listener udata =
  globalBindAndListen True (Just listener) (Just udata) Nothing Nothing

-- | Bind a global and register a listener for it.
--
-- Roughly 'globalBind' + 'addGlobalListener'
globalBindAndListen ::
  forall a env m udata.
  (HasCallStack, MonadGlobals env m, WL.HasListener a, Inspect a, WL.IsUserData udata) =>
  Bool
  -- ^ Register in global typemap? Should only be used for globals that can't have multiple bindings per type!
  -> Maybe (ConstPtr (WL.ObjectListener a))
  -- ^ Bind to a custom listener.
  -> Maybe udata
  -- ^ Set some custom userdata for the listener
  -> Maybe WL.Version
  -- ^ Maximum interface version to accept
  -> Maybe WL.ObjectName
  -- ^ Bind to the specific object. By default binds to first announced object whose interface and version match requirements.
  -> m a
globalBindAndListen uniq mbListen mbData mverMax mname = do
  o <- globalBind uniq mverMax mname
  l <- maybe getObject return mbListen
  WL.listenerAdd o l $ maybe nullPtr WL.toUserData mbData
  return o

globalBind ::
  forall a env m.
  (HasCallStack, MonadGlobals env m, WL.HasInterface a, Inspect a) =>
  Bool
  -- ^ Register in global typemap? Should only be used for globals that can't have multiple bindings per type!
  -> Maybe WL.Version
  -- ^ Maximum interface version to accept
  -> Maybe WL.ObjectName
  -- ^ Bind to the specific object. By default binds to first announced object whose interface and version match requirements.
  -> m a
globalBind uniq mverMax mname = do
  regState <- asks (view globalsRegistryL) >>= readMVar
  (if uniq then createUnique else id) $
    WL.bindGlobal regState mname mverMax

-- * Create and track event listeners

-- | Create new wayland listener of the inferred type.
-- If a listener with the same type already exists, an exception is raised.
mkListener ::
  forall m env a.
  (HasCallStack, MonadStateGlobal env m, WL.HasListener a, Inspect a) =>
  (WL.ObjectListenerEvent a -> m ()) -> m ()
mkListener f = createUnique_ $ do
  run <- askRunInIO
  WL.createListener (run . f)

-- | Given a wayland object, attach the previously created listener to it (see 'mkListener').
addGlobalListener ::
  forall a m udata.
  (HasCallStack, MonadH m, WL.IsUserData udata, WL.HasListener a, Inspect a, HandleEvent H (WL.ObjectListenerEvent a)) =>
  a -> Maybe udata -> m ()
addGlobalListener obj mbData = do
  l <- getOrCreateGlobalListener
  liftH $ WL.listenerAdd obj l $ maybe nullPtr WL.toUserData mbData

-- | 'addGlobalListener' with empty user data.
addGlobalListener_ :: forall a m. (HasCallStack, MonadH m, WL.HasListener a, Inspect a, HandleEvent H (WL.ObjectListenerEvent a)) => a -> m ()
addGlobalListener_ = flip addGlobalListener (Nothing @())

getOrCreateGlobalListener ::
  forall a m.
  (HasCallStack, MonadH m, WL.HasListener a, Inspect a, HandleEvent H (WL.ObjectListenerEvent a)) =>
  m (ConstPtr (WL.ObjectListener a))
getOrCreateGlobalListener = liftH $ do
  getOrCreateObject $ do
    runInIO <- askRunInIO
    WL.createListener $ runInIO . handleWithHook'

-- * Object methods

objectCommand :: forall o f. (Inspect o) => (o -> f) -> H f
objectCommand f = do
  o <- getObject @o
  return (f o)

-- * WIP

class (MonadIO m, Inspect a) => TypedUserData m a where

  type UserDataType m a :: Type

  -- | Dereference the opaque pointer to expected data type.
  toTypedUserData :: Proxy a -> Ptr Void -> m (UserDataType m a)
  toTypedUserData _ = io . deRefStablePtr . castPtrToStablePtr . castPtr

  -- | Creates a new pointer that's suitable to be used as userdata in wayland protocols with the given content.
  fromTypedUserData :: Proxy a -> UserDataType m a -> m (Ptr Void)
  fromTypedUserData _ = io . fmap (castPtr . castStablePtrToPtr) . newStablePtr

addListenerWithTypedUserData
  :: forall a m. (TypedUserData m a, MonadH m, WL.HasListener a, HandleEvent H (WL.ObjectListenerEvent a))
  => a
  -> UserDataType m a
  -> m ()
addListenerWithTypedUserData obj ud = do
  addGlobalListener obj . Just =<< fromTypedUserData (Proxy @a) ud

-- | Create an event handler that automatically extracts the userdata pointer
-- and dereferences it for use in the handler.
eventHandlerWithTypedUserData
  :: forall a m.
    (TypedUserData m a,
    HasField "userdata" (WL.ObjectListenerEvent a) (Ptr Void)
    )
  => (UserDataType m a -> WL.ObjectListenerEvent a -> m ())
  -> WL.ObjectListenerEvent a
  -> m ()
eventHandlerWithTypedUserData f e = do
  let udPtr = getField @"userdata" e
  dec <- toTypedUserData (Proxy @a) udPtr
  f dec e

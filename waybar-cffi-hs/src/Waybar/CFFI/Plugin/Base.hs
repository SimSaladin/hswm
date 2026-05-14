{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DefaultSignatures #-}

-- |
-- Module      : Waybar.CFFI.Plugin.Base
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Waybar.CFFI.Plugin.Base (
  WaybarPlugin(..),
  GlobalState,
  PluginConfig,
  PluginState,
  PluginAction,
  Env(..),
  IConf(..),
  Context,
  ContextM,
  getInstance,
  getConfig,
  getGlobal,
  modifyGlobal,
  getState,
  getStateRef,
  modifyState,
  queueUpdate,
  queueUpdateAll,
  runContext,
  -- * Re-exports
  A.FromJSON,
  A.ToJSON,
  Signal,
  Default(..),
  Const(..),
  ) where

import            Control.Monad
import           Control.Monad.Reader
import           Data.Default
import           Data.IORef (IORef, readIORef, modifyIORef)
import           Data.Kind (Type)
import           GHC.Generics (Generic)
import           Prelude hiding (init)
import           Data.Proxy
import           Data.Version
import           Control.Applicative
import           GHC.Conc (Signal)

import qualified Data.Aeson as A
import qualified GI.Gtk.Objects.Container as Gtk

-- | Common execution context (see 'runContext').
type Context plugin = ContextM plugin (IConf plugin) -- ContextT plugin (ReaderT (IConf a) IO)

type ContextM plugin a = ContextT plugin (ReaderT (Env plugin a) IO)

-- | Data types that implement this class can be turned into Waybar CFFI plugins.
class (MonadTrans (ContextT a)) => WaybarPlugin a where

  -- | Execution context of the plugin callbacks.
  type ContextT a :: (Type -> Type) -> Type -> Type

  -- | Execute in callback context. See also: 'Context'.
  runContextT :: Proxy a -> ContextT a m r -> m r

  -- | Called once on library load.
  initGlobal :: Proxy a -> ContextM a () (GlobalState a)
  default initGlobal :: Default (GlobalState a) => Proxy a -> ContextM a () (GlobalState a)
  initGlobal _ = return def

  -- | Called once at exit.
  deinitGlobal :: Proxy a -> GlobalState a -> ContextM a () ()
  deinitGlobal _ _ = return ()

  -- | Initalize a new instance.
  init :: A.FromJSON (PluginConfig a) => ContextM a (IConf (Const () a)) a

  -- | Destroy the instance.
  deinit :: Context a ()
  deinit = return ()

  -- | Update the UI (redraw).
  update :: Context a ()
  update = return ()

  -- | Called when Waybar receives a POSIX signal and forwards it to each module
  -- (e.g. SIGUSR2 for reloading the config.)
  refresh :: Signal -> Context a ()
  refresh _ = return ()

  -- | Called on module action (see
  -- https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
  doaction :: Read (PluginAction a) => PluginAction a -> Context a ()
  doaction _ = pure ()

-- | Global state type. Initialized once per library loading.
type family GlobalState (plugin :: Type) :: Type

-- | Plugin (instance) config.
type family PluginConfig (plugin :: Type) :: Type

type family PluginState (plugin :: Type) :: Type

-- | Plugin actions. Must have a 'Read' instance.
type family PluginAction (plugin :: Type) :: Type

data Env plugin a = Env
  { envGlobal      :: IORef (GlobalState plugin)
  , envInstances   :: IORef [IConf plugin]
  , envInstance    :: a
  }

-- | A module instance.
data IConf a = IConf
  { instId           :: {-# UNPACK #-} !Int
  , instData         :: !a -- ^ Module-specific data.
  , instState        :: !(IORef (PluginState a))
  , instConfig       :: !(PluginConfig a) -- ^ Plugin (instance config)
  , instQueueUpdate  :: !(IO ()) -- ^ Queue update to waybar
  , instRootWidget   :: {-# UNPACK #-} !Gtk.Container -- ^ Widget root widget
  , wbVersion        :: !Version -- ^ Waybar version
  } deriving (Generic)

instance Eq (IConf a) where
  a == b = instId a == instId b

type instance PluginConfig (Const () a) = PluginConfig a

type instance PluginState (Const () a) = PluginState a

-- | Get the current module instance.
getInstance :: (WaybarPlugin plugin) => ContextM plugin (IConf b) b
{-# INLINE getInstance #-}
getInstance = lift $ asks $ instData . envInstance

-- | Get the module config.
getConfig :: (WaybarPlugin plugin) => ContextM plugin (IConf a) (PluginConfig a)
{-# INLINE getConfig #-}
getConfig = lift $ asks $ instConfig . envInstance

-- | Get the module state.
getStateRef :: (WaybarPlugin plugin) => ContextM plugin (IConf a) (IORef (PluginState a))
{-# INLINE getStateRef #-}
getStateRef = lift $ asks (instState . envInstance)

getState :: (WaybarPlugin plugin) => ContextM plugin (IConf a) (PluginState a)
{-# INLINE getState #-}
getState = getStateRef >>= lift . liftIO . readIORef

modifyState :: forall plugin g a. (WaybarPlugin plugin, g ~ PluginState a) => (g -> g) -> ContextM plugin (IConf a) ()
{-# INLINE modifyState #-}
modifyState f = lift $ asks (instState . envInstance) >>= liftIO . flip modifyIORef f

-- | Get the global state.
getGlobal :: (WaybarPlugin plugin) => ContextM plugin a (GlobalState plugin)
{-# INLINE getGlobal #-}
getGlobal = lift $ asks envGlobal >>= liftIO . readIORef

modifyGlobal :: forall plugin g b. (WaybarPlugin plugin, g ~ GlobalState plugin) => (g -> g) -> ContextM plugin b ()
{-# INLINE modifyGlobal #-}
modifyGlobal f = lift $ asks envGlobal >>= liftIO . flip modifyIORef f

-- | Queue update (redraw).
queueUpdate :: (WaybarPlugin plugin) => ContextM plugin (IConf a) ()
{-# INLINE queueUpdate #-}
queueUpdate = lift $ asks (instQueueUpdate . envInstance) >>= liftIO

-- | Queue update (redraw).
queueUpdateAll :: (WaybarPlugin plugin) => ContextM plugin a ()
{-# INLINE queueUpdateAll #-}
queueUpdateAll = lift $ do
  xs <- asks envInstances >>= liftIO . readIORef
  forM_ xs $ liftIO . instQueueUpdate

runContext :: forall plugin a r. (WaybarPlugin plugin) => Env plugin a -> ContextM plugin a r -> IO r
{-# INLINE runContext #-}
runContext env m = runReaderT (runContextT @plugin Proxy m) env

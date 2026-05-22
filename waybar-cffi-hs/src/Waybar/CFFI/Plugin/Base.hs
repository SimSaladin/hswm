{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE TypeFamilyDependencies #-}


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
  Env(..),
  IConf,
  IConf'(..),
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

import qualified Data.Aeson as A
import qualified GI.Gtk.Objects.Container as Gtk

import           Prelude hiding (init)

import           Control.Applicative
import           Control.Monad
import           Control.Monad.Reader
import           Data.Default
import           Data.IORef (IORef, modifyIORef, readIORef)
import           Data.Kind (Type)
import           Data.Proxy
import           Data.Version
import           GHC.Conc (Signal)
import           GHC.Generics (Generic)

-- | Data types that implement this class can be turned into Waybar CFFI plugins.
class (MonadTrans (ContextT plugin), A.FromJSON (PluginConfig plugin), Read (PluginAction plugin)) => WaybarPlugin (plugin :: Type) where

  -- | Global state type. Initialized once per library loading.
  type GlobalState plugin = (r :: Type) | r -> plugin

  -- | Plugin (instance) config.
  type PluginConfig (plugin :: Type) :: Type

  -- | Plugin (instance) mutable state.
  type PluginState (plugin :: Type) :: Type

  -- | Execution context of the plugin callbacks.
  type ContextT (plugin :: Type) :: ((Type -> Type) -> Type -> Type)

  -- | Execute in callback context. See also: 'Context'.
  runContextT :: Proxy plugin -> ContextT plugin m r -> m r

  -- | Called once on library load.
  initGlobal :: Proxy plugin -> ContextM plugin () (GlobalState plugin)
  default initGlobal :: Default (GlobalState plugin) => Proxy plugin -> ContextM plugin () (GlobalState plugin)
  initGlobal _ = return def

  -- | Called once at exit.
  deinitGlobal :: Proxy plugin -> GlobalState plugin -> ContextM plugin () ()
  deinitGlobal _ _ = return ()

  -- | Initalize a new instance.
  init :: ContextM plugin (IConf' plugin ()) plugin

  -- | Destroy the instance.
  deinit :: Context plugin ()
  deinit = return ()

  -- | Update the UI (redraw).
  update :: Context plugin ()
  update = return ()

  -- | Called when Waybar receives a POSIX signal and forwards it to each module
  -- (e.g. SIGUSR2 for reloading the config.)
  refresh :: Signal -> Context plugin ()
  refresh _ = return ()

  -- | Plugin actions. Must have a 'Read' instance.
  type PluginAction (plugin :: Type) :: Type

  -- | Called on module action (see
  -- https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
  doaction :: PluginAction plugin -> Context plugin ()
  doaction _ = pure ()

-- | Common execution context (see 'runContext').
type ContextM plugin inst = ContextT plugin (ReaderT (Env plugin inst) IO)

-- | Common execution context (see 'runContext').
type Context plugin = ContextM plugin (IConf plugin)

-- | Reader monad environment.
data Env plugin a = Env
  { envGlobal      :: IORef (GlobalState plugin) -- ^ Global state reference.
  , envInstances   :: IORef [IConf plugin]       -- ^ All active plugin instances.
  , envInstance    :: a                          -- ^ Current plugin instance.
  } deriving (Generic)

-- | A module instance.
type IConf plugin = IConf' plugin plugin

data IConf' plugin a = IConf
  { instId           :: {-# UNPACK #-} !Int           -- ^ Instance ID (unique)
  , instWbVersion    :: !Version                      -- ^ Waybar version
  , instRootWidget   :: {-# UNPACK #-} !Gtk.Container -- ^ Plugin instance GTK root container
  , instQueueUpdate  :: !(IO ())                      -- ^ Callback to queue update
  , instConfig       :: !(PluginConfig plugin)        -- ^ Plugin instance config (read from waybar config)
  , instState        :: !(IORef (PluginState plugin)) -- ^ Plugin instance state (modifiable).
  , instData         :: a                             -- ^ Module-specific data.
  } deriving (Generic)

instance Eq (IConf' plugin a) where
  a == b = instId a == instId b

-- | Get the current module instance.
getInstance :: (WaybarPlugin plugin) => ContextM plugin (IConf' plugin a) a
{-# INLINE getInstance #-}
getInstance = lift $ asks $ instData . envInstance

-- | Get the module config.
getConfig :: (WaybarPlugin plugin) => ContextM plugin (IConf' plugin a) (PluginConfig plugin)
{-# INLINE getConfig #-}
getConfig = lift $ asks $ instConfig . envInstance

-- | Get the module state.
getStateRef :: (WaybarPlugin plugin) => ContextM plugin (IConf' plugin a) (IORef (PluginState plugin))
{-# INLINE getStateRef #-}
getStateRef = lift $ asks (instState . envInstance)

getState :: (WaybarPlugin plugin) => ContextM plugin (IConf' plugin a) (PluginState plugin)
{-# INLINE getState #-}
getState = getStateRef >>= lift . liftIO . readIORef

modifyState :: forall plugin s a. (WaybarPlugin plugin, s ~ PluginState plugin)
            => (s -> s) -> ContextM plugin (IConf' plugin a) ()
{-# INLINE modifyState #-}
modifyState f = lift $ asks (instState . envInstance) >>= liftIO . flip modifyIORef f

-- | Get the global state.
getGlobal :: (WaybarPlugin plugin) => ContextM plugin a (GlobalState plugin)
{-# INLINE getGlobal #-}
getGlobal = lift $ asks envGlobal >>= liftIO . readIORef

modifyGlobal :: forall plugin s a. (WaybarPlugin plugin, s ~ GlobalState plugin)
             => (s -> s) -> ContextM plugin a ()
{-# INLINE modifyGlobal #-}
modifyGlobal f = lift $ asks envGlobal >>= liftIO . flip modifyIORef f

-- | Queue update (redraw).
queueUpdate :: (WaybarPlugin plugin) => ContextM plugin (IConf' plugin a) ()
{-# INLINE queueUpdate #-}
queueUpdate = lift $ asks (instQueueUpdate . envInstance) >>= liftIO

-- | Queue update (redraw).
queueUpdateAll :: (WaybarPlugin plugin) => ContextM plugin a ()
{-# INLINE queueUpdateAll #-}
queueUpdateAll = lift $ do
  xs <- asks envInstances >>= liftIO . readIORef
  forM_ xs $ liftIO . instQueueUpdate

runContext :: forall plugin a b. (WaybarPlugin plugin)
           => Env plugin a -> ContextM plugin a b -> IO b
{-# INLINE runContext #-}
runContext env m = runReaderT (runContextT @plugin Proxy m) env

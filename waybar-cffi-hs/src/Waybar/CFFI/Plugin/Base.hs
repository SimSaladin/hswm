{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE TypeFamilyDependencies #-}

-- |
-- Module      : Waybar.CFFI.Plugin.Base
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin.Base (
  -- * Plugin interface
  WaybarPlugin (..),

  -- * ContextT
  PluginM,
  GlobalM,
  ContextT,
  runContextT,

  -- * Global state
  EnvGlobal (..),
  GlobalState,
  getGlobal,
  queueUpdateAll,
  modifyGlobal,

  -- * Instance operations
  Env (..),
  PluginState,
  PluginConfig,
  queueUpdate,
  getInstance,
  getConfig,
  getState,
  getStateRef,
  modifyState,

  -- * Re-exports
  A.FromJSON,
  A.ToJSON,
  Signal,
  Default (..),
  Const (..),
) where

import Data.Aeson qualified as A
import GI.Gtk.Objects.Container qualified as Gtk

import Prelude hiding (init)

import Control.Applicative
import Control.Monad
import Control.Monad.Reader
import Data.Default
import Data.IORef (IORef, atomicModifyIORef, readIORef)
import Data.Kind (Type)
import Data.Version
import GHC.Conc (Signal)
import GHC.Generics (Generic)
import GHC.Records

-- | Data types that implement this class can be turned into Waybar CFFI plugins.
class (MonadTrans (PluginContextT plugin), A.FromJSON (PluginConfig plugin)) => WaybarPlugin (plugin :: Type) where
  -- | Execution context of the plugin callbacks.
  type PluginContextT plugin :: ((Type -> Type) -> Type -> Type)

  -- | Execute in callback context. See also: 'ContextT'.
  runPluginContextT :: PluginContextT plugin m r -> m r

  -- | Initalize a new instance.
  init :: PluginM plugin plugin

  pluginStateInit :: PluginConfig plugin -> GlobalM plugin (PluginState plugin)
  default pluginStateInit :: (Default (PluginState plugin)) => PluginConfig plugin -> GlobalM plugin (PluginState plugin)
  pluginStateInit _ = return def

  -- | Destroy the instance.
  deinit :: PluginM plugin ()
  deinit = return ()

  -- | Update the UI (redraw).
  update :: PluginM plugin ()
  update = return ()

  -- | Called when Waybar receives a POSIX signal and forwards it to each module
  --     (e.g. SIGUSR2 for reloading the config.)
  refresh :: Signal -> PluginM plugin ()
  refresh _ = return ()

  -- | Called on module action (see
  --     https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
  doaction :: String -> PluginM plugin ()
  doaction _ = pure ()

  -- | Called once on library load.
  initGlobal :: GlobalM plugin (GlobalState plugin)
  default initGlobal :: (Default (GlobalState plugin)) => GlobalM plugin (GlobalState plugin)
  initGlobal = return def

  -- | Called once at exit.
  deinitGlobal :: GlobalState plugin -> GlobalM plugin ()
  deinitGlobal _ = return ()

-- | Common execution context (see 'runContext').
type PluginM plugin = ContextT plugin Env

-- | Execution context for global (shared) plugin init/deinit.
type GlobalM plugin = ContextT plugin EnvGlobal

-- | Common execution context (see 'runContext').
type ContextT plugin (f :: Type -> Type) = PluginContextT plugin (ReaderT (f plugin) IO)

-- | Global plugin state (shared between instances).
data EnvGlobal plugin = EnvGlobal
  { _global :: IORef (GlobalState plugin)
  -- ^ Global state reference.
  , _instances :: IORef [Env plugin]
  -- ^ All active plugin instances.
  }
  deriving (Generic)

-- | Global state type. Initialized once per library loading.
data family GlobalState plugin :: Type

-- | Reader monad environment.
data Env plugin = Env
  { _global :: IORef (GlobalState plugin)
  -- ^ See "EnvGlobal"
  , _instances :: IORef [Env plugin]
  -- ^ See "EnvGlobal"
  , instState :: !(IORef (PluginState plugin))
  -- ^ Plugin instance state (modifiable).
  , instConfig :: !(PluginConfig plugin)
  -- ^ Plugin instance config (read from waybar config)
  , instData :: plugin
  -- ^ Module-specific data.
  , instId :: {-# UNPACK #-} !Int
  -- ^ Instance ID (unique)
  , instWbVersion :: !Version
  -- ^ Waybar version
  , instRootWidget :: {-# UNPACK #-} !Gtk.Container
  -- ^ Plugin instance GTK root container
  , instQueueUpdate :: !(IO ())
  -- ^ Callback to queue update
  }
  deriving (Generic)

-- \| Plugin (instance) mutable state.
data family PluginState plugin :: Type

-- | Plugin (instance) config.
data family PluginConfig plugin :: Type

instance Eq (Env plugin) where
  a == b = instId a == instId b

runContextT :: forall plugin f a. (WaybarPlugin plugin) => f plugin -> ContextT plugin f a -> IO a
runContextT env m = runReaderT (runPluginContextT @plugin m) env

-- * Global operations

type HasGlobal plugin f m =
  ( WaybarPlugin plugin
  , HasField "_instances" (f plugin) (IORef [Env plugin])
  , HasField "_global" (f plugin) (IORef (GlobalState plugin))
  , m ~ ContextT plugin f
  , MonadIO m
  )

getGlobal :: (HasGlobal plugin env m) => m (GlobalState plugin)
getGlobal = lift $ asks (getField @"_global") >>= liftIO . readIORef

modifyGlobal :: (HasGlobal plugin env m, s ~ GlobalState plugin) => (s -> s) -> m ()
modifyGlobal f = lift $ asks (getField @"_global") >>= liftIO . flip atomicModifyIORef (\x -> (f x, ()))

getInstancesRef :: (HasGlobal plugin f m) => m (IORef [Env plugin])
getInstancesRef = lift $ asks $ getField @"_instances"

-- | Queue update (redraw) for all plugin instances.
queueUpdateAll :: (HasGlobal plugin env m) => m ()
queueUpdateAll = do
  xs <- getInstancesRef >>= liftIO . readIORef
  forM_ xs $ liftIO . instQueueUpdate

-- * Instance operations

-- | Queue update (redraw).
queueUpdate :: (WaybarPlugin plugin) => PluginM plugin ()
queueUpdate = lift $ asks instQueueUpdate >>= liftIO

-- | Get the current module instance.
getInstance :: (WaybarPlugin plugin) => PluginM plugin plugin
getInstance = lift $ asks instData

-- | Get the module config.
getConfig :: (WaybarPlugin plugin) => PluginM plugin (PluginConfig plugin)
getConfig = lift $ asks instConfig

-- | Get the module state.
getStateRef :: (WaybarPlugin plugin) => PluginM plugin (IORef (PluginState plugin))
getStateRef = lift $ asks instState

getState :: (WaybarPlugin plugin) => PluginM plugin (PluginState plugin)
getState = getStateRef >>= lift . liftIO . readIORef

modifyState ::
  forall plugin s.
  (WaybarPlugin plugin, s ~ PluginState plugin) =>
  (s -> s) -> PluginM plugin ()
modifyState f = lift $ asks instState >>= liftIO . flip atomicModifyIORef (\x -> (f x, ()))

{-# INLINE runContextT #-}
{-# INLINE queueUpdateAll #-}
{-# INLINE getInstance #-}
{-# INLINE getConfig #-}
{-# INLINE getStateRef #-}
{-# INLINE getState #-}
{-# INLINE modifyState #-}
{-# INLINE queueUpdate #-}

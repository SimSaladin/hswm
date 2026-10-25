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
  WaybarPlugin (..),
  Env (..),
  EnvGlobal (..),
  Context,
  ContextT',
  SetupGlobal,
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
import Data.Proxy
import Data.Version
import GHC.Conc (Signal)
import GHC.Generics (Generic)
import GHC.Records

-- | Data types that implement this class can be turned into Waybar CFFI plugins.
class (MonadTrans (ContextT plugin), A.FromJSON (PluginConfig plugin)) => WaybarPlugin (plugin :: Type) where
  -- | Execution context of the plugin callbacks.
  type ContextT plugin :: ((Type -> Type) -> Type -> Type)

  -- | Execute in callback context. See also: 'Context'.
  runContextT :: Proxy plugin -> ContextT plugin m r -> m r

  -- | Global state type. Initialized once per library loading.
  data GlobalState plugin :: Type

  -- | Plugin (instance) config.
  data PluginConfig plugin :: Type

  -- | Plugin (instance) mutable state.
  data PluginState plugin :: Type

  -- | Called once on library load.
  initGlobal :: SetupGlobal plugin (GlobalState plugin)
  default initGlobal :: (Default (GlobalState plugin)) => SetupGlobal plugin (GlobalState plugin)
  initGlobal = return def

  -- | Called once at exit.
  deinitGlobal :: GlobalState plugin -> SetupGlobal plugin ()
  deinitGlobal _ = return ()

  -- | Initalize a new instance.
  init :: ContextT' plugin Env plugin

  -- | Destroy the instance.
  deinit :: Context plugin ()
  deinit = return ()

  -- | Update the UI (redraw).
  update :: Context plugin ()
  update = return ()

  -- | Called when Waybar receives a POSIX signal and forwards it to each module
  --     (e.g. SIGUSR2 for reloading the config.)
  refresh :: Signal -> Context plugin ()
  refresh _ = return ()

  -- | Called on module action (see
  --     https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
  doaction :: String -> Context plugin ()
  doaction _ = pure ()

-- | Common execution context (see 'runContext').
type Context plugin = ContextT' plugin Env

-- | Execution context for global (shared) plugin init/deinit.
type SetupGlobal plugin = ContextT' plugin EnvGlobal

-- | Common execution context (see 'runContext').
type ContextT' plugin (env :: Type -> Type) = ContextT plugin (ReaderT (env plugin) IO)

data EnvGlobal plugin = EnvGlobal
  { _global :: IORef (GlobalState plugin)
  -- ^ Global state reference.
  , _instances :: IORef [Env plugin]
  -- ^ All active plugin instances.
  }
  deriving (Generic)

-- | Reader monad environment.
data Env plugin = Env
  { _global :: IORef (GlobalState plugin)
  -- ^ Global state reference.
  , _instances :: IORef [Env plugin]
  -- ^ All active plugin instances.
  , instId :: {-# UNPACK #-} !Int
  -- ^ Instance ID (unique)
  , instWbVersion :: !Version
  -- ^ Waybar version
  , instRootWidget :: {-# UNPACK #-} !Gtk.Container
  -- ^ Plugin instance GTK root container
  , instQueueUpdate :: !(IO ())
  -- ^ Callback to queue update
  , instConfig :: !(PluginConfig plugin)
  -- ^ Plugin instance config (read from waybar config)
  , instState :: !(IORef (PluginState plugin))
  -- ^ Plugin instance state (modifiable).
  , instData :: plugin
  -- ^ Module-specific data.
  }
  deriving (Generic)

instance Eq (Env plugin) where
  a == b = instId a == instId b

type HasGlobal plugin env m =
  ( WaybarPlugin plugin
  , HasField "_instances" (env plugin) (IORef [Env plugin])
  , HasField "_global" (env plugin) (IORef (GlobalState plugin))
  , m ~ ContextT' plugin env
  , MonadIO m
  )

runContext :: forall plugin env a. (WaybarPlugin plugin) => env plugin -> ContextT' plugin env a -> IO a
runContext env m = runReaderT (runContextT @plugin Proxy m) env

getGlobal :: (HasGlobal plugin env m) => m (GlobalState plugin)
getGlobal = lift $ asks (getField @"_global") >>= liftIO . readIORef

modifyGlobal :: (HasGlobal plugin env m, s ~ GlobalState plugin) => (s -> s) -> m ()
modifyGlobal f = lift $ asks (getField @"_global") >>= liftIO . flip atomicModifyIORef (\x -> (f x, ()))

getInstancesRef :: (HasGlobal plugin env m) => m (IORef [Env plugin])
getInstancesRef = lift $ asks $ getField @"_instances"

-- | Queue update (redraw) for all plugin instances.
queueUpdateAll :: (WaybarPlugin plugin, HasGlobal plugin env m) => m ()
queueUpdateAll = do
  xs <- getInstancesRef >>= liftIO . readIORef
  forM_ xs $ liftIO . instQueueUpdate

-- | Get the current module instance.
getInstance :: (WaybarPlugin plugin) => ContextT' plugin Env plugin
getInstance = lift $ asks instData

-- | Get the module config.
getConfig :: (WaybarPlugin plugin) => ContextT' plugin Env (PluginConfig plugin)
getConfig = lift $ asks instConfig

-- | Get the module state.
getStateRef :: (WaybarPlugin plugin) => ContextT' plugin Env (IORef (PluginState plugin))
getStateRef = lift $ asks instState

getState :: (WaybarPlugin plugin) => ContextT' plugin Env (PluginState plugin)
getState = getStateRef >>= lift . liftIO . readIORef

modifyState ::
  forall plugin s.
  (WaybarPlugin plugin, s ~ PluginState plugin) =>
  (s -> s) -> ContextT' plugin Env ()
modifyState f = lift $ asks instState >>= liftIO . flip atomicModifyIORef (\x -> (f x, ()))

-- | Queue update (redraw).
queueUpdate :: (WaybarPlugin plugin) => ContextT' plugin Env ()
queueUpdate = lift $ asks instQueueUpdate >>= liftIO

{-# INLINE runContext #-}
{-# INLINE queueUpdateAll #-}
{-# INLINE getInstance #-}
{-# INLINE getConfig #-}
{-# INLINE getStateRef #-}
{-# INLINE getState #-}
{-# INLINE modifyState #-}
{-# INLINE queueUpdate #-}

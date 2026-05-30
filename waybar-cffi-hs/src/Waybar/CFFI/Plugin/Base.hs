{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE TypeFamilyDependencies #-}
{-# LANGUAGE DuplicateRecordFields #-}


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
  EnvGlobal(..),
  Context,
  ContextM,
  ContextGlobalM,
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
import           Data.IORef (IORef, readIORef, atomicModifyIORef)
import           Data.Kind (Type)
import           Data.Proxy
import           Data.Version
import           GHC.Conc (Signal)
import           GHC.Generics (Generic)
import GHC.Records

-- | Data types that implement this class can be turned into Waybar CFFI plugins.
class (MonadTrans (ContextT plugin), A.FromJSON (PluginConfig plugin), Read (PluginAction plugin)) => WaybarPlugin (plugin :: Type) where

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
  initGlobal :: ContextGlobalM plugin (GlobalState plugin)
  default initGlobal :: Default (GlobalState plugin) => ContextGlobalM plugin (GlobalState plugin)
  initGlobal = return def

  -- | Called once at exit.
  deinitGlobal :: GlobalState plugin -> ContextGlobalM plugin ()
  deinitGlobal _ = return ()

  -- | Initalize a new instance.
  init :: ContextM plugin Env plugin

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
  type PluginAction plugin :: Type

  -- | Called on module action (see
  -- https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
  doaction :: PluginAction plugin -> Context plugin ()
  doaction _ = pure ()

-- | Common execution context (see 'runContext').
type ContextM plugin (env :: Type -> Type) = ContextT plugin (ReaderT (env plugin) IO)

type ContextGlobalM plugin = ContextM plugin EnvGlobal

-- | Common execution context (see 'runContext').
type Context plugin = ContextM plugin Env

data EnvGlobal plugin = EnvGlobal
  { _global      :: IORef (GlobalState plugin) -- ^ Global state reference.
  , _instances   :: IORef [Env plugin]         -- ^ All active plugin instances.
  } deriving (Generic)

-- | Reader monad environment.
data Env plugin = Env
  { _global          :: IORef (GlobalState plugin) -- ^ Global state reference.
  , _instances       :: IORef [Env plugin]       -- ^ All active plugin instances.
  , instId           :: {-# UNPACK #-} !Int           -- ^ Instance ID (unique)
  , instWbVersion    :: !Version                      -- ^ Waybar version
  , instRootWidget   :: {-# UNPACK #-} !Gtk.Container -- ^ Plugin instance GTK root container
  , instQueueUpdate  :: !(IO ())                      -- ^ Callback to queue update
  , instConfig       :: !(PluginConfig plugin)        -- ^ Plugin instance config (read from waybar config)
  , instState        :: !(IORef (PluginState plugin)) -- ^ Plugin instance state (modifiable).
  , instData         :: plugin                        -- ^ Module-specific data.
  } deriving (Generic)

instance Eq (Env plugin) where
  a == b = instId a == instId b

type HasGlobal plugin env m =
  (WaybarPlugin plugin,
  HasField "_instances" (env plugin) (IORef [Env plugin]),
  HasField "_global" (env plugin) (IORef (GlobalState plugin)),
  MonadIO m, m ~ ContextM plugin env)

runContext :: forall plugin env a. (WaybarPlugin plugin) => env plugin -> ContextM plugin env a -> IO a
{-# INLINE runContext #-}
runContext env m = runReaderT (runContextT @plugin Proxy m) env

getGlobal :: (HasGlobal plugin env m) => m (GlobalState plugin)
getGlobal = lift $ asks (getField @"_global") >>= liftIO . readIORef

modifyGlobal :: (HasGlobal plugin env m, s ~ GlobalState plugin) => (s -> s) -> m ()
modifyGlobal f = lift $ asks (getField @"_global") >>= liftIO . flip atomicModifyIORef (\x -> (f x, ()))

getInstancesRef :: (HasGlobal plugin env m) => m (IORef [Env plugin])
getInstancesRef = lift $ asks $ getField @"_instances"

-- | Queue update (redraw) for all plugin instances.
queueUpdateAll :: (WaybarPlugin plugin, HasGlobal plugin env m) => m ()
{-# INLINE queueUpdateAll #-}
queueUpdateAll = do
  xs <- getInstancesRef >>= liftIO . readIORef
  forM_ xs $ liftIO . instQueueUpdate

-- | Get the current module instance.
getInstance :: (WaybarPlugin plugin) => ContextM plugin Env plugin
{-# INLINE getInstance #-}
getInstance = lift $ asks instData

-- | Get the module config.
getConfig :: (WaybarPlugin plugin) => ContextM plugin Env (PluginConfig plugin)
{-# INLINE getConfig #-}
getConfig = lift $ asks instConfig

-- | Get the module state.
getStateRef :: (WaybarPlugin plugin) => ContextM plugin Env (IORef (PluginState plugin))
{-# INLINE getStateRef #-}
getStateRef = lift $ asks instState

getState :: (WaybarPlugin plugin) => ContextM plugin Env (PluginState plugin)
{-# INLINE getState #-}
getState = getStateRef >>= lift . liftIO . readIORef

modifyState :: forall plugin s. (WaybarPlugin plugin, s ~ PluginState plugin)
            => (s -> s) -> ContextM plugin Env ()
{-# INLINE modifyState #-}
modifyState f = lift $ asks instState >>= liftIO . flip atomicModifyIORef (\x -> (f x, ()))

-- | Queue update (redraw).
queueUpdate :: (WaybarPlugin plugin) => ContextM plugin Env ()
{-# INLINE queueUpdate #-}
queueUpdate = lift $ asks instQueueUpdate >>= liftIO

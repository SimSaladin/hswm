{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedRecordDot #-}
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
  PluginConfig,
  PluginState,
  GlobalState,

  -- * Global state
  getGlobalState,
  modifyGlobalState,
  HasGlobal,

  -- * Instance state
  getInstanceState,
  modifyInstanceState,

  -- * Plugin Configuration
  getInstanceData,
  getInstanceConf,

  -- * Instance Id
  getInstanceId,
  InstanceId,

  -- * Queue update
  queueUpdate,
  queueUpdateAll,

  -- * Root Widget
  getRootWidget,

  -- * Waybar version
  getWaybarVersion,

  -- * Internals
  PluginM,
  GlobalM,
  ContextT,
  runContextT,
  Env,
  newEnv,
  setInstanceData,
  EnvGlobal,
  newEnvGlobal,
  getStateRef,

  -- * Re-exports
  A.FromJSON,
  A.ToJSON,
  Default (..),
  Const (..),
  Signal,
  getField,
) where

import Data.Aeson qualified as A
import GI.Gtk qualified as Gtk
import Waybar.CFFI.Plugin.ABIv2

import Prelude hiding (init)

import Control.Applicative
import Control.Monad.Reader
import Data.Default
import Data.IORef
import Data.Kind (Type)
import Data.Version
import Foreign
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

  -- | This callback initializes the plugin state. For types that implement "Default" there
  -- exists a default implementation.
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

-- | Execution context of plugin instances. See 'runContextT'.
--
-- - @MonadReader (Env plugin)@
-- - @MonadIO@
type PluginM plugin = ContextT plugin Env

-- | Execution context of shared (global) init\/deinit actions.
--
-- - @MonadReader (EnvGlobal plugin)@
-- - @MonadIO@
type GlobalM plugin = ContextT plugin EnvGlobal

-- | The context consists of Reader environment (t'Env' or t'EnvGlobal') plus plugin-specified type ('PluginState' or
-- 'GlobalState', respectively).
type ContextT plugin (f :: Type -> Type) = PluginContextT plugin (ReaderT (f plugin) IO)

-- | Global plugin state (shared between instances).
data EnvGlobal plugin = EnvGlobal
  { _global :: IORef (GlobalState plugin)
  -- ^ Global state reference.
  , _instances :: IORef [Env plugin]
  -- ^ All active plugin instances.
  }
  deriving (Generic)

newEnvGlobal :: IO (EnvGlobal plugin)
newEnvGlobal = EnvGlobal <$> newIORef undefined <*> newIORef mempty

-- | Plugin instance reader environment.
data Env plugin = Env
  { _global :: IORef (GlobalState plugin)
  -- ^ See "EnvGlobal"
  , _instances :: IORef [Env plugin]
  -- ^ See "EnvGlobal"
  , instConfig :: !(PluginConfig plugin)
  -- ^ Plugin instance config. Read from the config (JSON) supplied by waybar at startup.
  , instData :: plugin
  -- ^ Plugin instance value. Initialized at startup by plugin code.
  , instId :: {-# UNPACK #-} !InstanceId
  -- ^ Plugin instance unique identifier (managed automatically).
  , instQueueUpdate :: !(IO ())
  -- ^ The queue update callback.
  , instState :: !(IORef (PluginState plugin))
  -- ^ Plugin instance state reference.
  , instWbVersion :: !Version
  -- ^ Waybar version as reported by waybar at startup.
  , instRootWidget :: {-# UNPACK #-} !Gtk.Container
  -- ^ Plugin instance GTK root container.
  }
  deriving (Generic)

setInstanceData :: Env plugin -> plugin -> Env plugin
setInstanceData env idata = env{instData = idata}

newEnv :: (WaybarPlugin plugin) => EnvGlobal plugin -> InitInfo -> PluginConfig plugin -> IO (Env plugin)
newEnv genv nfo conf =
  Env genv._global genv._instances conf inst instanceId qupd
    <$> (newIORef =<< runContextT genv (pluginStateInit conf))
    <*> parseWaybarVersion nfo
    <*> (mkGetRootWidget (get_root_widget nfo) (wbcffi_module nfo) >>= Gtk.newObject Gtk.Container)
  where
    inst = undefined
    qupd = mkQueueUpdate (queue_update nfo) (wbcffi_module nfo)
    IntPtr instanceId = ptrToIntPtr (wbcffi_module nfo)

type InstanceId = Int

instance Eq (Env plugin) where
  a == b = instId a == instId b

-- | Global state type. Initialized once per library loading.
data family GlobalState plugin :: Type

-- | Plugin (instance) state (mutable).
data family PluginState plugin :: Type

-- | Plugin (instance) config.
data family PluginConfig plugin :: Type

runContextT :: forall plugin f a. (WaybarPlugin plugin) => f plugin -> ContextT plugin f a -> IO a
runContextT env m = runReaderT (runPluginContextT @plugin m) env

-- * Global operations

type HasGlobal plugin env m =
  ( WaybarPlugin plugin
  , MonadReader env m
  , HasField "GlobalState" env (IORef (GlobalState plugin))
  , HasField "GlobalInstances" env (IORef [Env plugin])
  )

instance HasField "GlobalInstances" (Env plugin) (IORef [Env plugin]) where
  getField = getField @"_instances"
instance HasField "GlobalInstances" (EnvGlobal plugin) (IORef [Env plugin]) where
  getField = getField @"_instances"

instance HasField "GlobalState" (Env plugin) (IORef (GlobalState plugin)) where
  getField = getField @"_global"
instance HasField "GlobalState" (EnvGlobal plugin) (IORef (GlobalState plugin)) where
  getField = getField @"_global"

getGlobalStateRef :: (HasGlobal plugin env m) => m (IORef (GlobalState plugin))
getGlobalStateRef = asks $ getField @"GlobalState"

-- | Reads the in
getGlobalInstancesRef :: (HasGlobal plugin env m) => m (IORef [Env plugin])
getGlobalInstancesRef = asks $ getField @"GlobalInstances"

-- | Read the global state.
getGlobalState :: (HasGlobal plugin env m, MonadIO m) => m (GlobalState plugin)
getGlobalState = getGlobalStateRef >>= liftIO . readIORef

-- | Modify the global state.
modifyGlobalState :: (HasGlobal plugin env m, MonadIO m, s ~ GlobalState plugin) => (s -> s) -> m ()
modifyGlobalState f = getGlobalStateRef >>= liftIO . flip atomicModifyIORef (\x -> (f x, ()))

-- | Queue update (redraw) of all instances.
queueUpdateAll :: forall plugin env m. (HasGlobal plugin env m, MonadIO m) => m ()
queueUpdateAll =
  getGlobalInstancesRef @plugin @env @m
    >>= liftIO . readIORef
    >>= liftIO . mapM_ instQueueUpdate

-- * Instance operations

-- | Reported waybar version.
getInstanceId :: (WaybarPlugin plugin) => PluginM plugin InstanceId
getInstanceId = lift $ asks instId

-- | Reported waybar version.
getWaybarVersion :: (WaybarPlugin plugin) => PluginM plugin Version
getWaybarVersion = lift $ asks instWbVersion

-- | The root widget supplied by waybar.
getRootWidget :: (WaybarPlugin plugin) => PluginM plugin Gtk.Container
getRootWidget = lift $ asks instRootWidget

-- | Queue update (redraw) of this instance.
queueUpdate :: (WaybarPlugin plugin) => PluginM plugin ()
queueUpdate = lift $ asks instQueueUpdate >>= liftIO

-- | Get the current module instance.
getInstanceData :: (WaybarPlugin plugin) => PluginM plugin plugin
getInstanceData = lift $ asks instData

-- | Get the module config.
getInstanceConf :: (WaybarPlugin plugin) => PluginM plugin (PluginConfig plugin)
getInstanceConf = lift $ asks instConfig

-- | Read the instance state.
getInstanceState :: (WaybarPlugin plugin) => PluginM plugin (PluginState plugin)
getInstanceState = getStateRef >>= lift . liftIO . readIORef

-- | Modify the instance state.
modifyInstanceState ::
  forall plugin s.
  (WaybarPlugin plugin, s ~ PluginState plugin) =>
  (s -> s) -> PluginM plugin ()
modifyInstanceState f = lift $ asks instState >>= liftIO . flip atomicModifyIORef (\x -> (f x, ()))

-- | Get the module state.
getStateRef :: (WaybarPlugin plugin) => PluginM plugin (IORef (PluginState plugin))
getStateRef = lift $ asks instState

{-# INLINE runContextT #-}
{-# INLINE queueUpdateAll #-}
{-# INLINE getInstanceData #-}
{-# INLINE getInstanceConf #-}
{-# INLINE getStateRef #-}
{-# INLINE getInstanceState #-}
{-# INLINE modifyInstanceState #-}
{-# INLINE queueUpdate #-}

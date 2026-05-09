{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

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
  IConf(..),
  Context,
  getInstance,
  queueUpdate,
  -- * Re-exports
  A.FromJSON,
  A.ToJSON,
  ) where

import qualified Data.Aeson as A
import           Data.Dynamic
import           Data.IORef (IORef)
import           Data.Kind (Type)
import           Prelude hiding (init)

import           GHC.Generics as RXP (Generic)

import           Control.Monad.Reader
import           Data.Default
import           GI.Gtk.Objects.Container as Container

-- | Data types that implement this class can be turned into Waybar CFFI plugins.
class (Typeable a, Typeable (GlobalState a), A.FromJSON (PluginConfig a), Monad (Context a)) => WaybarPlugin a where

  -- | Global state type. Initialized once per library loading.
  data GlobalState a :: Type

  -- | Plugin (instance) config.
  data PluginConfig a :: Type

  -- | Execution context of the plugin callbacks.
  type ContextT a :: (Type -> Type) -> Type -> Type

  -- | Called once on library load.
  initGlobalState :: IO (GlobalState a)
  default initGlobalState :: Default (GlobalState a) => IO (GlobalState a)
  initGlobalState = return def

  -- | Called once at exit.
  deinitGlobalState :: GlobalState a -> IO ()
  deinitGlobalState _ = return ()

  -- | Execute in callback context.
  runContext :: ContextT a m r -> m r

  -- | Initalize a new instance.
  init :: (forall b. Context a b -> IO b) -> String -> PluginConfig a -> Container -> ContextT a IO a

  -- | Destroy the instance.
  deinit :: Context a ()

  -- | Update the UI (redraw).
  update :: Context a ()
  update = return ()

  -- | Signal (e.g. SIGUSR2 for reloading the config.)
  refresh :: Int -> Context a ()
  refresh _ = return ()

  -- | Action is triggered.
  doaction :: String -> Context a ()
  doaction _ = pure ()

-- | A module instance.
data IConf a = IConf
  { wbVersion     :: !String -- ^ Waybar version
  , rootWidget    :: {-# UNPACK #-} !Container -- ^ Widget root widget
  , globalStRef   :: {-# UNPACK #-} !(IORef (GlobalState a))
  , config        :: !(PluginConfig a) -- ^ Plugin (instance config)
  , wbQueueUpdate :: !(IO ()) -- ^ Queue update to waybar
  , instanceData  :: !a -- ^ Module-specific data.
  } deriving (Generic)

-- | Common execution context (see 'runContext').
type Context a = ContextT a (ReaderT (IConf a) IO)

-- | Get the current module instance.
getInstance :: MonadReader (IConf a) (Context a) => Context a a
getInstance = asks instanceData

-- | Queue update (redraw).
queueUpdate :: (MonadReader (IConf a) (Context a), MonadIO (Context a)) => Context a ()
queueUpdate = asks wbQueueUpdate >>= liftIO

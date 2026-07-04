{-# LANGUAGE NoImplicitPrelude #-}

-- |
-- Module      : HSWM.Prelude
-- Description : Custom Prelude
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Prelude (
  -- * Base
  module RIO.Prelude.Types,
  module RIO.Prelude,
  module RIO,
  module Base,

  -- * Lenses
  module Lens.Micro.Platform,
  Lens.Each,
  module UnliftIO.Exception.Lens,

  -- * Logging
  module Control.Monad.Logger.Aeson,
  log', display,

  -- * UnliftIO
  module UnliftIO,
  module UnliftIO.Concurrent,
  module UnliftIO.Directory,
  module UnliftIO.Environment,
  module UnliftIO.Foreign,
  module UnliftIO.IO.File,

  -- * Other
  -- ** Async
  cancelMany,
  -- ** Control.Monad.Catch
  module Control.Monad.Catch,
  -- ** Misc.
  toText, io, fi, whenJust,
  module Data.Default,
  module Misc,
  ) where

import           "unliftio" UnliftIO
import           "unliftio" UnliftIO.Concurrent
import           "unliftio" UnliftIO.Directory
import           "unliftio" UnliftIO.Foreign
import           "unliftio" UnliftIO.Environment
import           "unliftio" UnliftIO.Exception.Lens
import           "unliftio" UnliftIO.IO.File

import           "base" Data.List as Base (zip3)
import           "base" Data.Monoid as Base (Any(..), Endo(..))
import           "base" Data.Semigroup as Base (All(..))
import           "base" Foreign.C.ConstPtr as Base
import           "base" Prelude as Base (scanl, until)
import           "base" Text.Read as Base (reads)

import           "rio" RIO (ExitCode(..), exitFailure, exitSuccess, threadDelay)
import           "rio" RIO.Prelude
import           "rio" RIO.Prelude.Types

import           "stm" Control.Concurrent.STM as Misc (flushTQueue)
import           "exceptions" Control.Monad.Catch (MonadCatch, MonadMask, throwM)
import           "mtl" Control.Monad.State as Misc (MonadState, gets, modify)
import           "data-default" Data.Default
import qualified "async" Control.Concurrent.Async as Async
import qualified "text" Data.Text as T
import           "monad-logger-aeson" Control.Monad.Logger.Aeson hiding (Message)
import           "monad-logger-aeson" Control.Monad.Logger.Aeson as LA (Message)
import           "microlens-platform" Lens.Micro.Platform hiding ((.=))
import qualified "microlens" Lens.Micro.Internal as Lens

toText :: String -> T.Text
toText = T.pack

-- | 'liftIO' abbreviation.
io :: (MonadIO m) => IO a -> m a
io = liftIO

-- | 'fromIntegral' abbreviation.
fi :: (Integral a, Num b) => a -> b
fi = fromIntegral

-- | Conditionally run an action, using a @Maybe a@ to decide.
whenJust :: (Monad m) => Maybe a -> (a -> m ()) -> m ()
whenJust mg f = maybe (return ()) f mg

log' :: MonadLogger m => LA.Message -> m ()
log' = logInfo
{-# DEPRECATED log' "Use something else" #-}

-- XXX temp glue code..
display :: (Show a, IsString b) => a -> b
display = fromString . show
{-# DEPRECATED display "use something else" #-}

-- | "Async.cancelMany" lifted to "MonadIO".
cancelMany :: MonadIO m => [Async ()] -> m ()
cancelMany = io . Async.cancelMany

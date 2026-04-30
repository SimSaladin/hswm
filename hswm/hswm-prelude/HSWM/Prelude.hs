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
  -- * Basics
  module RIO,
  module Control.Monad.IO.Unlift,
  module BasePrelude,
  module UnliftIO.IO,
  module UnliftIO.Async,
  module UnliftIO.Directory,
  module UnliftIO,
  module Control.Monad.Catch,
  -- * Logging
  module Control.Monad.Logger.Aeson,
  -- * Misc. utilities
  module HSWM.Prelude,
  ) where

import           "base" Control.Concurrent as BasePrelude (forkFinally, forkIO, killThread)
import qualified "async" Control.Concurrent.Async as Async
import           "stm" Control.Concurrent.STM as BasePrelude (flushTQueue)
import           "exceptions" Control.Monad.Catch (MonadCatch, MonadMask, throwM)
import           "mtl" Control.Monad.State as BasePrelude (MonadState, gets, modify)
import           "data-default" Data.Default as BasePrelude
import           "base" Data.List as BasePrelude (zip3)
import           "base" Data.Monoid as BasePrelude (Any(..), Endo(..))
import           "base" Data.Semigroup as BasePrelude (All(..))
import qualified "text" Data.Text as T
import           "base" Foreign.C.ConstPtr as BasePrelude
import           "base" Prelude as BasePrelude (scanl, until)
import           "base" Text.Read as BasePrelude (reads)

import           Control.Monad.IO.Unlift
import           Control.Monad.Logger.Aeson as LA (Message)
import           Control.Monad.Logger.Aeson hiding (Message)
import           RIO (ExitCode, Lens', exitFailure, exitSuccess, threadDelay, view)
import           RIO.Lens as RIO
import           RIO.Prelude as RIO
import           RIO.Prelude.Simple as RIO
import           RIO.Prelude.Types as RIO
import           UnliftIO
import           UnliftIO.Async
import           UnliftIO.Directory
import           UnliftIO.IO

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

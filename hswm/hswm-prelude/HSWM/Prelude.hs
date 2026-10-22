{-# LANGUAGE NoImplicitPrelude #-}

-- |
-- Module      : HSWM.Prelude
-- Description : Custom Prelude
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
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
  toText,
  io,
  fi,
  whenJust,
  module Data.Default,
  module Misc,
  BS.StrictByteString,
  LazyByteString,
  T.StrictText,
  TL.LazyText,
) where

import "unliftio" UnliftIO
import "unliftio" UnliftIO.Concurrent
import "unliftio" UnliftIO.Directory
import "unliftio" UnliftIO.Environment
import "unliftio" UnliftIO.Exception.Lens
import "unliftio" UnliftIO.Foreign
import "unliftio" UnliftIO.IO.File

import "base" Data.List as Base (zip3)
import "base" Data.Monoid as Base (Any (..), Endo (..))
import "base" Data.Semigroup as Base (All (..))
import "base" Foreign.C.ConstPtr as Base
import "base" Text.Read as Base (reads)
import "base" Prelude as Base (scanl, until)

import "rio" RIO (ExitCode (..), exitFailure, exitSuccess, threadDelay)
import "rio" RIO.Prelude
import "rio" RIO.Prelude.Types

import "async" Control.Concurrent.Async qualified as Async
import "bytestring" Data.ByteString qualified as BS
import "bytestring" Data.ByteString.Lazy (LazyByteString)
import "data-default" Data.Default
import "exceptions" Control.Monad.Catch (MonadCatch, MonadMask, throwM)
import "microlens" Lens.Micro.Internal qualified as Lens
import "microlens-platform" Lens.Micro.Platform hiding ((.=))
import "monad-logger-aeson" Control.Monad.Logger.Aeson hiding (Message)
import "mtl" Control.Monad.State as Misc (MonadState, gets, modify)
import "stm" Control.Concurrent.STM as Misc (flushTQueue)
import "text" Data.Text qualified as T
import "text" Data.Text.Lazy qualified as TL

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

-- | "Async.cancelMany" lifted to "MonadIO".
cancelMany :: (MonadIO m) => [Async ()] -> m ()
cancelMany = io . Async.cancelMany

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
  -- ** RIO
  module RIO,
  -- ** From base
  module Base,

  -- * UnliftIO
  module Control.Monad.IO.Unlift,
  module UnliftIO.Async,
  module UnliftIO.Chan,
  module UnliftIO.IO,
  module UnliftIO.IORef,
  module UnliftIO.Memoize,
  module UnliftIO.MVar,
  module UnliftIO.QSem,
  module UnliftIO.QSemN,
  module UnliftIO.STM,
  module UnliftIO.Temporary,
  module UnliftIO.Timeout,
  module UnliftIO.Directory,
  module UnliftIO.Environment,
  module UnliftIO.Foreign,
  module UnliftIO.IO.File,
  -- ** UnliftIO.Concurrent
  module UnliftIO.Concurrent,

  -- * Exception
  -- ** Control.Exception.Safe
  module Control.Exception.Safe,
  -- ** UnliftIO.Exception
  module UnliftIO.Exception,
  throwIO,

  -- * Lenses
  module Lens.Micro.Platform,
  Lens.Each,

  -- * Logging
  module Control.Monad.Logger.Aeson,

  -- * Other
  threadWaitReadSTM,
  threadWaitWriteSTM,

  -- ** Async
  cancelMany,

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
  ShortText,
  Fd,
) where

import Control.Monad.IO.Unlift
import UnliftIO.Async
import UnliftIO.Chan
import UnliftIO.IO
import UnliftIO.IORef
import UnliftIO.Memoize
import UnliftIO.MVar
import UnliftIO.QSem
import UnliftIO.QSemN
import UnliftIO.STM
import UnliftIO.Temporary
import UnliftIO.Timeout
import "unliftio" UnliftIO.Concurrent hiding (throwTo)
import "unliftio" UnliftIO.Directory
import "unliftio" UnliftIO.Environment
import "unliftio" UnliftIO.Foreign
import "unliftio" UnliftIO.IO.File

import UnliftIO.Exception (throwString)
import Control.Exception.Safe hiding (throwString, throwIO)
import qualified Control.Exception.Safe as Safe

import "base" Data.List as Base (zip3)
import "base" Data.Monoid as Base (Any (..), Endo (..))
import "base" Data.Semigroup as Base (All (..))
import "base" Foreign.C.ConstPtr as Base
import "base" Text.Read as Base (reads)
import "base" Prelude as Base (scanl, until)

import "rio" RIO (ExitCode (..), exitFailure, exitSuccess)
import "rio" RIO.Prelude
import "rio" RIO.Prelude.Types

import Data.Text.Short (ShortText)
import "async" Control.Concurrent.Async qualified as Async
import "bytestring" Data.ByteString qualified as BS
import "bytestring" Data.ByteString.Lazy (LazyByteString)
import "data-default" Data.Default
import "microlens" Lens.Micro.Internal qualified as Lens
import "microlens-platform" Lens.Micro.Platform hiding ((.=))
import "monad-logger-aeson" Control.Monad.Logger.Aeson hiding (Message)
import "mtl" Control.Monad.State as Misc (MonadState, gets, modify)
import "stm" Control.Concurrent.STM as Misc (flushTQueue)
import "text" Data.Text qualified as T
import "text" Data.Text.Lazy qualified as TL
import GHC.Stack
import qualified Control.Concurrent
import System.Posix (Fd)

threadWaitReadSTM :: MonadIO m => Fd -> m (STM (), IO ())
threadWaitReadSTM = liftIO . Control.Concurrent.threadWaitReadSTM

threadWaitWriteSTM :: MonadIO m => Fd -> m (STM (), IO ())
threadWaitWriteSTM = liftIO . Control.Concurrent.threadWaitWriteSTM

throwIO :: (HasCallStack, MonadIO m, Exception e) => e -> m a
throwIO = withFrozenCallStack (io . Safe.throwIO)

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
cancelMany :: (MonadIO m) => [Async.Async ()] -> m ()
cancelMany = io . Async.cancelMany

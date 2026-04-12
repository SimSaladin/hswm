{-# LANGUAGE NoImplicitPrelude #-}

module HSWM.Prelude
  ( module RIO,
    module Control.Monad.Logger.Aeson,
    module Control.Monad.IO.Unlift,
    module BasePrelude,
    module UnliftIO.IO,
    module UnliftIO,
    module Control.Monad.Catch,
    toText,
    io,
    fi,
    whenJust,
    log',
    display
  )
where

import RIO.Prelude as RIO
import RIO.Prelude.Simple as RIO
import RIO.Prelude.Types as RIO
import RIO.Lens as RIO
import RIO (Lens', view, ExitCode, exitFailure, exitSuccess, threadDelay)

import UnliftIO
import UnliftIO.IO
import Control.Monad.IO.Unlift

import "base" Text.Read as BasePrelude (reads)
import "base" Data.List as BasePrelude (zip3)
import "base" Data.Monoid as BasePrelude (Any (..), Endo (..))
import "base" Data.Semigroup as BasePrelude (All (..))
import "base" Prelude as BasePrelude (scanl, until)
import "base" Control.Concurrent as BasePrelude (forkFinally, forkIO, killThread)
import "base" Foreign.C.ConstPtr as BasePrelude
import "data-default" Data.Default as BasePrelude
import "stm" Control.Concurrent.STM as BasePrelude (flushTQueue)
import "mtl" Control.Monad.State as BasePrelude (MonadState, gets, modify)

import "text" Data.Text qualified as T

import "exceptions" Control.Monad.Catch (MonadCatch, MonadMask, throwM)

import Control.Monad.Logger.Aeson hiding (Message)
import Control.Monad.Logger.Aeson as LA (Message)

toText :: String -> T.Text
toText = T.pack

io :: (MonadIO m) => IO a -> m a
io = liftIO

fi :: (Integral a, Num b) => a -> b
fi = fromIntegral

-- | Conditionally run an action, using a @Maybe a@ to decide.
whenJust :: (Monad m) => Maybe a -> (a -> m ()) -> m ()
whenJust mg f = maybe (return ()) f mg

log' :: MonadLogger m => LA.Message -> m ()
log' = logInfo

-- XXX temp glue code..
display :: (Show a, IsString b) => a -> b
display = fromString . show

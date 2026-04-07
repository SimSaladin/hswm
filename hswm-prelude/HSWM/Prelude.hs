{-# LANGUAGE NoImplicitPrelude #-}

module HSWM.Prelude
  ( module RIO
  , module BasePrelude
  , toText, io, fi, whenJust
  , log'
  , debug'
  , warn'
  ) where

import RIO

import           "base" Prelude as BasePrelude (until, scanl)
import           "base" Data.List as BasePrelude (zip3)
-- import           "base" Data.Functor as BasePrelude ((<&>))
-- import           "base" Data.Maybe as BasePrelude
import           "base" Data.Monoid as BasePrelude (Any(..), Endo(..))
import           "base" Data.Semigroup as BasePrelude (All(..))
-- import           "base" Text.Printf as BasePrelude

-- import           Control.Concurrent as BasePrelude
-- import           Control.Concurrent.STM as BasePrelude
-- import           Control.Exception as BasePrelude
-- import           Control.Logging as BasePrelude
-- import           Control.Monad.Reader as BasePrelude
import           Control.Monad.State as BasePrelude (MonadState, gets, modify)
import           Data.Default as BasePrelude
-- import           Data.Text as BasePrelude (Text)
import qualified Data.Text as T
-- import           Data.Typeable as BasePrelude (Typeable)
-- import           Foreign as BasePrelude (Int32)
import           Foreign.C.ConstPtr as BasePrelude
-- import           GHC.Generics as BasePrelude (Generic)
import Text.Read as BasePrelude (reads)
import Control.Concurrent as BasePrelude (forkIO, forkFinally, killThread)
import Control.Concurrent.STM as BasePrelude (flushTQueue)

-- tshow :: Show a => a -> T.Text
-- tshow = T.pack . show

toText :: String -> T.Text
toText = T.pack

io :: MonadIO m => IO a -> m a
io = liftIO

fi :: (Integral a, Num b) => a -> b
fi = fromIntegral

-- | Conditionally run an action, using a @Maybe a@ to decide.
whenJust :: Monad m => Maybe a -> (a -> m ()) -> m ()
whenJust mg f = maybe (return ()) f mg

log' :: (MonadIO m, MonadReader env m, HasLogFunc env) => Utf8Builder -> m ()
log' = logInfo
debug' :: (MonadIO m, MonadReader env m, HasLogFunc env) => Utf8Builder -> m ()
debug' = logDebug
warn' :: (MonadIO m, MonadReader env m, HasLogFunc env) => Utf8Builder -> m ()
warn' = logWarn

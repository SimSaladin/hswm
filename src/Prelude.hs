{-# LANGUAGE PackageImports #-}

module Prelude (
  module BasePrelude,
  tshow, toText, io
  ) where

import "base"    Control.Monad as BasePrelude
import "base"    Data.Maybe as BasePrelude
import "base"    Prelude as BasePrelude hiding (log)
import "base"    Text.Printf as BasePrelude

import           Control.Concurrent as BasePrelude
import           Control.Concurrent.STM as BasePrelude
import           Control.Exception as BasePrelude
import           Control.Logging as BasePrelude
import           Control.Monad.Reader as BasePrelude
import           Control.Monad.State as BasePrelude
import           Data.Default as BasePrelude
import           Data.Typeable as BasePrelude (Typeable)
import           Data.Text as BasePrelude (Text)
import qualified Data.Text as T

tshow :: Show a => a -> T.Text
tshow = T.pack . show

toText :: String -> T.Text
toText = T.pack

io :: MonadIO m => IO a -> m a
io = liftIO

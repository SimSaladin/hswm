{-# LANGUAGE PackageImports #-}

module Prelude (
  module BasePrelude,
  tshow, toText, io, fi, whenJust
  ) where

import "base"    Control.Monad as BasePrelude
import "base"    Data.Maybe as BasePrelude
import "base"    Prelude as BasePrelude hiding (log)
import "base"    Text.Printf as BasePrelude
import Data.Semigroup as BasePrelude (All(..))
import Data.Monoid as BasePrelude          (Endo(..),Any(..))


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

fi :: (Integral a, Num b) => a -> b
fi = fromIntegral

-- | Conditionally run an action, using a @Maybe a@ to decide.
whenJust :: Monad m => Maybe a -> (a -> m ()) -> m ()
whenJust mg f = maybe (return ()) f mg

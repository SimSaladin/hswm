{-# LANGUAGE PackageImports #-}

module Prelude
  ( module BasePrelude
  , tshow, toText, io, fi, whenJust
  ) where

import "base"    Prelude as BasePrelude hiding (log)
import "base"    Control.Monad as BasePrelude
import "base"    Data.Maybe as BasePrelude
import "base"    Data.Monoid as BasePrelude (Endo(..),Any(..))
import "base"    Data.Semigroup as BasePrelude (All(..))
import "base"    Text.Printf as BasePrelude
import "base"    Data.Functor as BasePrelude ((<&>))

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
import           Foreign as BasePrelude (Int32)
import           GHC.Generics as BasePrelude (Generic)
import           Foreign.C.ConstPtr as BasePrelude

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

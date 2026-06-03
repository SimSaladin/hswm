{-# LANGUAGE DefaultSignatures #-}

-- |
-- Module      : HSWM.Types.Action
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Action
  ( module HSWM.Types.Action
  , KeySym
  , ModMask
  , XkbRuleNames
  ) where

import qualified River as R
import           Text.XkbCommon
import           Text.XkbCommon.KeySyms (key_NoSymbol)

import qualified Data.Map as M
import           Data.Typeable

data XkbBinding a = XkbBinding
  { xkb_binding :: {-# UNPACK #-} !R.RiverXkbBinding
  , river_seat  :: {-# UNPACK #-} !R.RiverSeat
  , action      :: !a
  , subKeymap   :: !(XkbBindingMap a)
  , autorepeat  :: {-# UNPACK #-} !Bool
  , running     :: {-# UNPACK #-} !(MVar (Async ()))
  } deriving (Generic)

data PointerBinding a = PointerBinding
  { pointer_binding :: !R.RiverPointerBinding
  , river_seat      :: !R.RiverSeat
  , action          :: !a
  } deriving (Generic)

type XkbBindingMap a = M.Map XBKey (StablePtr (XkbBinding a))

-- * Keys & buttons

type Button = Word32

type XBKey = (ModMask, KeySym)

-- * IsKeySym

class IsKeySym a where

  toKeySym :: a -> KeySym

instance IsKeySym KeySym where
  toKeySym = id

instance IsKeySym String where
  toKeySym s = fromMaybe key_NoSymbol $ keysymFromName s <|> keysymFromNameCaseInsensitive s

-- * SomeAction

data SomeAction m where
  SomeAction :: forall m a. (IsAction m a) => a -> SomeAction m

instance (MonadIO m) => Show (SomeAction m) where
  show x = case x of
    SomeAction (val :: (IsAction m a) => a) -> actionDescription (Proxy :: Proxy m) val

-- * Submap

data Submap m = Submap
  { submapKeys    :: [(XBKey, SomeAction m)],
    submapDefault :: Maybe (SomeAction m)
  } deriving (Show, Generic)

-- * IsAction

class (MonadIO m) => IsAction m a where
  runner :: a -> m ()

  actionSubmap :: a -> [((ModMask, KeySym), SomeAction m)]
  actionSubmap _ = []

  -- | Description based on the value (defaults to type info)
  actionDescription :: Proxy m -> a -> String
  actionDescription = typeDescription

  -- | Description based on type info
  typeDescription :: Proxy m -> a -> String
  default typeDescription :: (Typeable a) => Proxy m -> a -> String
  typeDescription _ = show . typeOf

instance (MonadIO m) => IsAction m (IO ()) where
  runner = liftIO

instance (MonadIO m, Typeable m, Typeable a) => IsAction m (m a) where
  runner = void

instance (MonadIO m) => IsAction m (SomeAction m) where
  runner (SomeAction a) = runner a
  actionSubmap (SomeAction a) = actionSubmap a
  actionDescription mp (SomeAction a) = actionDescription mp a
  typeDescription mp (SomeAction a) = typeDescription mp a

instance (MonadIO m, Typeable m) => IsAction m (Submap m) where
  runner Submap {..} = whenJust submapDefault runner
  actionSubmap Submap {..} = submapKeys

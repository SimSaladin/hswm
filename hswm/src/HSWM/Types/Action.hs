{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE NoFieldSelectors  #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE UndecidableInstances #-}


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

import           HSWM.Types.Lens

import qualified River as R
import           Text.XkbCommon
import           Text.XkbCommon.KeySyms (key_NoSymbol)

import qualified Data.Map as M
import           Data.Typeable

-- * XkbBinding, PointerBinding, etc.

type XkbBindingMap a = M.Map XBKey (StablePtr (XkbBinding a))

data XkbBinding a = XkbBinding
  { boundAction     :: !a
  , boundSubmap     :: !(XkbBindingMap a)
  , defaultSubmapAction :: !(Maybe a)
  , autorepeat      :: {-# UNPACK #-} !Bool
  , riverXkbBinding :: {-# UNPACK #-} !R.RiverXkbBinding
  , riverSeat       :: {-# UNPACK #-} !R.RiverSeat -- ^ Needed to know which seat triggered an action.
  , runningVar      :: {-# UNPACK #-} !(MVar (Async ()))
  }
  deriving stock (Generic)
  deriving anyclass (NFData)

data PointerBinding a = PointerBinding
  { boundAction         :: !a
  , riverPointerBinding :: {-# UNPACK #-} !R.RiverPointerBinding
  , riverSeat           :: {-# UNPACK #-} !R.RiverSeat
  }
  deriving stock (Generic)
  deriving anyclass (NFData)

data Submap m = Submap
  { submapKeys    :: [(XBKey, SomeAction m)]
  , submapDefault :: Maybe (SomeAction m)
  } deriving stock (Eq, Show, Generic)
  deriving anyclass (Default, NFData)

type Button = Word32
type XBKey  = (ModMask, KeySym)

-- * IsKeySym

class IsKeySym a where

  toKeySym :: a -> KeySym

instance IsKeySym KeySym where
  toKeySym = id

instance IsKeySym String where
  toKeySym s = fromMaybe key_NoSymbol $ keysymFromName s <|> keysymFromNameCaseInsensitive s

-- * IsAction

class Functor m => IsAction m a where
  -- | How to execute the action @a@ in @m@.
  runner :: a -> m ()

  -- | Action may trigger submap bindings.
  actionSubmap :: a -> Submap m
  actionSubmap _ = def

  -- | Description based on the value (defaults to type info)
  actionDescription :: Proxy m -> a -> String
  actionDescription = typeDescription

  -- | Description based on type info
  typeDescription :: Proxy m -> a -> String
  default typeDescription :: (Typeable a) => Proxy m -> a -> String
  typeDescription _ = show . typeOf

instance (Functor m, Typeable m) => IsAction m (m ()) where
  runner = id

instance (MonadIO m) => IsAction m (IO ()) where
  runner = liftIO

instance (MonadIO m, Typeable m) => IsAction m (Submap m) where
  runner Submap {..} = whenJust submapDefault runner
  actionSubmap = id

-- * SomeAction

data SomeAction m where
  SomeAction :: forall m a. (IsAction m a) => a -> SomeAction m

instance Eq (SomeAction m) where
  SomeAction a == SomeAction b =
    typeDescription proxy a == typeDescription proxy b &&
    actionDescription proxy a == actionDescription proxy b &&
    actionSubmap @m a == actionSubmap @m b
   where proxy = Proxy @m

instance (MonadIO m) => Show (SomeAction m) where
  show x = case x of
    SomeAction (val :: (IsAction m a) => a) -> actionDescription (Proxy :: Proxy m) val

instance NFData (SomeAction m) where
  rnf (SomeAction a) = a `seq` ()

instance MonadIO m => IsAction m (SomeAction m) where
  runner (SomeAction a) = runner a
  actionSubmap (SomeAction a) = actionSubmap a
  actionDescription mp (SomeAction a) = actionDescription mp a
  typeDescription mp (SomeAction a) = typeDescription mp a

-- * Lenses

makeFieldClassesIfMissing [ "boundAction", "riverSeat" ]

makeLensesWith' classPerField
  [ ''XkbBinding
  , ''PointerBinding
  ]

instance HasRiverId (XkbBinding a) where
  type RiverId (XkbBinding a) = R.RiverXkbBinding
  riverId = riverXkbBinding

instance HasRiverId (PointerBinding a) where
  type RiverId (PointerBinding a) = R.RiverPointerBinding
  riverId = riverPointerBinding

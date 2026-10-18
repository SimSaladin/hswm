{-# LANGUAGE DefaultSignatures    #-}
{-# LANGUAGE NoFieldSelectors     #-}
{-# LANGUAGE TemplateHaskell      #-}
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

import qualified Data.List as L
import qualified Data.Map as M
import           Data.Typeable
import           Data.Generics.Instances ()
import           Data.Data
import qualified Data.Aeson as A

-- * XkbBinding, PointerBinding, etc.

type Button = Word32
type XBKey  = (ModMask, KeySym)
type SKey a = StablePtr (XkbBinding a)

type XkbBindingMap a = M.Map XBKey (SKey a)

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
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Default, NFData)

instance ToJSON (Submap m) where
  toJSON     = A.genericToJSON aesonOptions
  toEncoding = A.genericToEncoding aesonOptions
  omitField (Submap [] Nothing) = True
  omitField _                   = False

-- Data instances

deriving instance (Data a, Data (StablePtr (XkbBinding a))) => Data (XkbBinding a)
deriving instance (Data a, Data (StablePtr (XkbBinding a))) => Data (PointerBinding a)

-- * IsKeySym

class IsKeySym a where

  toKeySym :: a -> KeySym

instance IsKeySym KeySym where
  toKeySym = id

instance IsKeySym String where
  toKeySym s = fromMaybe key_NoSymbol $ keysymFromName s <|> keysymFromNameCaseInsensitive s

-- * IsModMask

class IsModMask a where
  toModMask :: ModMask -> a -> ModMask
  modifierIndices :: a -> [ModIndex]
  modifierIndices a =
    let mm = toModMask 0 a
     in [ i | i <- take 8 (L.iterate (.<<. 1) 1), mm .&. i /= 0 ]

instance IsModMask ModMask where
  toModMask _ = id

-- | E.g. @C-M-S@, @ctrl-meta-shift@
instance IsModMask String where
  toModMask = resolveModMask

instance IsModMask [ModIndex] where
  toModMask _ = foldl' (.|.) 0
  modifierIndices = id

resolveModMask :: ModMask -- ^ Default mod mask
               -> String
               -> ModMask
resolveModMask d s = go s
  where
    go x = case L.span (/= '-') x of
      (m, '-' : xs) -> get1 m .|. go xs
      (m, []) -> get1 m
      _ -> error $ "malformed mod mask: " ++ s
    get1 y = case map toLower y of
      ""      -> 0
      "m"     -> d
      "none"  -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_NONE
      "shift" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_SHIFT
      "s"     -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_SHIFT
      "ctrl"  -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_CTRL
      "c"     -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_CTRL
      "mod1"  -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "m1"    -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "alt"   -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "a"     -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "mod3"  -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD3
      "m3"    -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD3
      "mod4"  -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "m4"    -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "super" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "logo"  -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "mod5"  -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD5
      "m5"    -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD5
      _       -> error $ "unrecognized modifier: " ++ y

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

data SomeAction m = forall a. (IsAction m a) => SomeAction a

instance Typeable m => Data (SomeAction m) where
  toConstr _ = error "toConstr"
  gunfold _ _ = error "gunfold"
  dataTypeOf _ = mkNoRepType "SomeAction"

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

instance ToJSON (SomeAction m) where
  toJSON (SomeAction (val :: IsAction m a => a)) = A.object $
    [ "description" .= actionDescription (Proxy @m) val
    , "typeDescription" .= typeDescription (Proxy @m) val ] ++
    [ "submap" .= x | let x = actionSubmap @m val, not (omitField x) ]
  toEncoding (SomeAction (val :: IsAction m a => a)) = A.pairs $
    "description" .= actionDescription (Proxy @m) val <>
    "typeDescription" .= typeDescription (Proxy @m) val <>
    (let x = actionSubmap @m val in if omitField x then mempty else "submap" .= x)

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

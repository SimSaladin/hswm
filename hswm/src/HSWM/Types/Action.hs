{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Types.Action
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Action (
  module HSWM.Types.Action,
  KeySym,
  ModMask,
  XkbRuleNames,
) where

import HSWM.Types.Lens

import River qualified as R
import Text.XkbCommon
import Text.XkbCommon.EventCodes (fromEventCodeBTN)
import Text.XkbCommon.KeySyms (key_NoSymbol)

import Data.Aeson qualified as A
import Data.Aeson.Encoding.Internal qualified as A
import Data.Data
import Data.Generics.Instances ()
import Data.List qualified as L
import Data.Map qualified as M

-- * XkbBinding, PointerBinding, etc.

-- | In pointer bindings.
type Button = Word32

-- | A single key (press) with modifiers.
data XBKey = XBKey {keyModMask :: ModMask, keyKeySym :: KeySym}
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (NFData)

instance ToJSON XBKey where
  toJSON x = A.toJSON (ppXBKey @Text x)
  toEncoding x = A.toEncoding (ppXBKey @Text x)

instance A.ToJSONKey XBKey where
  toJSONKey = A.ToJSONKeyText ppXBKey (A.text . ppXBKey)

-- * Keymap utils

ppModifiers :: (IsString a) => ModMask -> [a]
ppModifiers bm =
  [ s
  | (s, x) <-
      [ ("C", R.RiverSeatModifiersCtrl)
      , ("S", R.RiverSeatModifiersShift)
      , ("M1", R.RiverSeatModifiersMod1)
      , ("M3", R.RiverSeatModifiersMod3)
      , ("M4", R.RiverSeatModifiersMod4)
      , ("M5", R.RiverSeatModifiersMod5)
      ]
  , fi x.unwrap .&. bm /= 0
  ]

ppXBKey :: (IsString a) => XBKey -> a
ppXBKey (XBKey m ksym) =
  fromString . L.intercalate "+" $
    ppModifiers m ++ [fromMaybe "???" $ keysymName ksym]

ppPKey :: (IsString a) => PKey -> a
ppPKey (PKey m btn) =
  fromString . L.intercalate "+" $
    ppModifiers m ++ [fromMaybe "???" $ fromEventCodeBTN btn]

ppButton :: (ModMask, Button) -> String
ppButton (m, btn) =
  L.intercalate "+" $
    ppModifiers m ++ [fromMaybe "???" $ fromEventCodeBTN btn]

newtype Both a = Both {unBoth :: (a, StablePtr a)}
  deriving stock (Eq, Show, Generic, Data)
  deriving newtype (NFData)

instance (ToJSON a) => ToJSON (Both a) where
  toJSON (Both (a, _)) = toJSON a
  toEncoding (Both (a, _)) = toEncoding a

type XkbBindingMap2 a = XkbBindingMap' Both a

type XkbBindingMap a = XkbBindingMap' StablePtr a -- M.Map XBKey (XkbBindingPtr a)
type XkbBindingPtr a = XkbBindingPtr' StablePtr a -- StablePtr (XkbBinding a)
type XkbBinding a = XkbBinding' StablePtr a

type XkbBindingMap' f a = M.Map XBKey (XkbBindingPtr' f a)
type XkbBindingPtr' f a = f (XkbBinding' f a)
data XkbBinding' f a = XkbBinding
  { boundAction :: !a
  , boundSubmap :: !(XkbBindingMap' f a)
  , defaultSubmapAction :: !(Maybe a)
  , autorepeat :: {-# UNPACK #-} !Bool
  , riverXkbBinding :: {-# UNPACK #-} !R.RiverXkbBinding
  , riverSeat :: {-# UNPACK #-} !R.RiverSeat
  -- ^ Needed to know which seat triggered an action.
  , runningVar :: {-# UNPACK #-} !(MVar (Async ()))
  }
  deriving stock (Generic)

deriving instance (Eq a, Eq (f (XkbBinding' f a))) => Eq (XkbBinding' f a)
deriving instance (Show a, Show (f (XkbBinding' f a))) => Show (XkbBinding' f a)
deriving anyclass instance (NFData a, NFData (f (XkbBinding' f a))) => NFData (XkbBinding' f a)
deriving instance (Typeable f, Data a, Data (f (XkbBinding' f a))) => Data (XkbBinding' f a)

instance ToJSON (XkbBinding' Both (SomeAction m)) where
  toJSON v =
    A.object
      [ "bound_action" A..= v.boundAction
      , "submap" A..= v.boundSubmap
      , "submap_default_action" A..= v.defaultSubmapAction
      , "autorepeat" A..= v.autorepeat
      , "river_seat" A..= v.riverSeat
      ]
  toEncoding v =
    A.pairs $
      A.pairStr "bound_action" (A.toEncoding v.boundAction)
        <> A.pairStr "submap" (A.toEncoding v.boundSubmap)
        <> A.pairStr "submap_default_action" (A.toEncoding v.defaultSubmapAction)
        <> A.pairStr "autorepeat" (A.toEncoding v.autorepeat)
        <> A.pairStr "river_seat" (A.toEncoding v.riverSeat)

data PKey = PKey {keyModMask :: !ModMask, keyButton :: !Button}
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (NFData)

instance ToJSON PKey where
  toJSON x = A.toJSON (ppPKey @Text x)
  toEncoding x = A.toEncoding (ppPKey @Text x)

instance A.ToJSONKey PKey where
  toJSONKey = A.ToJSONKeyText ppPKey (A.text . ppPKey)

type PointerBindings a = M.Map PKey (PointerBindingPtr a)

type PointerBindingPtr a = StablePtr (PointerBinding a)

data PointerBinding a = PointerBinding
  { boundAction :: !a
  , riverPointerBinding :: {-# UNPACK #-} !R.RiverPointerBinding
  , riverSeat :: {-# UNPACK #-} !R.RiverSeat
  }
  deriving stock (Eq, Generic)
  deriving anyclass (NFData)

data Submap a = Submap
  { submapKeys :: [(XBKey, a)]
  , submapDefault :: Maybe a
  -- ^ Default action to trigger when a subkey is not found.
  }
  deriving stock (Eq, Show, Generic, Functor)
  deriving anyclass (Default, NFData)

instance ToJSON (Submap (SomeAction m)) where
  toJSON = A.genericToJSON aesonOptions
  toEncoding = A.genericToEncoding aesonOptions
  omitField x = x == Submap [] Nothing

-- * IsKeySym

class IsKeySym a where
  toKeySym :: a -> KeySym

instance IsKeySym KeySym where
  toKeySym = id

-- | Uses 'keysymFromNameCaseInsensitive'
instance IsKeySym String where
  toKeySym s = fromMaybe key_NoSymbol $ keysymFromName s <|> keysymFromNameCaseInsensitive s

-- * IsModMask

class IsModMask a where
  toModMask :: ModMask -> a -> ModMask

  modifierIndices :: a -> [ModIndex]
  modifierIndices a = [i | i <- take 8 (L.iterate (.<<. 1) 1), mm .&. i /= 0]
    where
      mm = toModMask 0 a

instance IsModMask ModMask where
  toModMask _ = id

-- | E.g. @C-M-S@, @ctrl-meta-shift@
instance IsModMask String where
  toModMask = resolveModMask

instance IsModMask [ModIndex] where
  toModMask _ = foldl' (.|.) 0
  modifierIndices = id

resolveModMask ::
  ModMask
  -- ^ Default mod mask
  -> String
  -> ModMask
resolveModMask d s = go s
  where
    go x = case L.span (/= '-') x of
      (m, '-' : xs) -> get1 m .|. go xs
      (m, []) -> get1 m
      _ -> error $ "malformed mod mask: " ++ s
    get1 y = case map toLower y of
      "" -> 0
      "m" -> d
      "none" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_NONE
      "shift" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_SHIFT
      "s" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_SHIFT
      "ctrl" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_CTRL
      "c" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_CTRL
      "mod1" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "m1" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "alt" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "a" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD1
      "mod3" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD3
      "m3" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD3
      "mod4" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "m4" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "super" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "logo" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD4
      "mod5" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD5
      "m5" -> fi $ (.unwrap) R.RIVER_SEAT_V1_MODIFIERS_MOD5
      _ -> error $ "unrecognized modifier: " ++ y

-- * IsAction

class (Functor m) => IsAction m a where
  -- | How to execute the action @a@ in @m@.
  runner :: a -> m ()
  runner = passthruOrDef (error "runner not defined") (const runner) (Proxy @m)

  -- | If True, this action should run repeatedly when the trigger is held.
  onHoldRepeat :: Proxy m -> a -> Bool
  onHoldRepeat = passthruOrDef False onHoldRepeat

  -- | Action may trigger submap bindings.
  actionSubmap :: a -> Submap (SomeAction m)
  --actionSubmap _ = def
  actionSubmap = passthruOrDef def (\_ -> actionSubmap) (Proxy @m)

  -- | Description based on the value (defaults to type info)
  actionDescription :: Proxy m -> a -> String
  actionDescription = passthruOrDef "" actionDescription
  --actionDescription _ _ = ""

  actionDescriptionFallback :: Proxy m -> a -> String
  default actionDescriptionFallback :: (Typeable a) => Proxy m -> a -> String
  actionDescriptionFallback p a = passthruOrDef (show (typeOf a)) actionDescriptionFallback p a

  actionCategories :: Proxy m -> a -> [String]
  actionCategories = passthruOrDef [] actionCategories

  actionPassthru :: Proxy m -> a -> Maybe (SomeAction m)
  actionPassthru _ _ = Nothing

passthruOrDef :: IsAction m a => r -> (forall a2. IsAction m a2 => Proxy m -> a2 -> r) -> Proxy m -> a -> r
passthruOrDef d f p a =
  case actionPassthru p a of
    Just (SomeAction a2) -> f p a2
    Nothing -> d

instance (Functor m, Typeable m) => IsAction m (m ()) where
  runner = id

instance (MonadIO m) => IsAction m (IO ()) where
  runner = liftIO

instance (MonadIO m, Typeable m) => IsAction m (Submap (SomeAction m)) where
  runner Submap{..} = whenJust submapDefault runner
  actionSubmap = id
  actionDescription _ _ = "(Submap)"

-- * SomeAction

data SomeAction m = forall a. (IsAction m a) => SomeAction a

instance (Typeable m, Functor m) => IsAction m (SomeAction m) where
  actionPassthru _ = Just

instance Eq (SomeAction m) where
  SomeAction a == SomeAction b =
    actionDescription proxy a == actionDescription proxy b
      && actionSubmap @m a == actionSubmap @m b
    where
      proxy = Proxy @m

instance Show (SomeAction m) where
  show (SomeAction v) =
    let p = Proxy @m
        desc = actionDescription p v
        repeat = onHoldRepeat p v
        cats = actionCategories p v
        subm = show (actionSubmap v :: Submap (SomeAction m))
      in "SomeAction{\"" ++ desc ++ "\", repeat: " ++ show repeat ++ ", categories: " ++ show cats ++ ", submap: " ++ subm ++ "}"

instance NFData (SomeAction m) where
  rnf (SomeAction a) =
    a `seq`
      runner @m a `seq`
        onHoldRepeat @m Proxy a `seq`
          rnf (actionDescription @m Proxy a) `seq`
            rnf (actionSubmap @m a)

instance ToJSON (SomeAction m) where
  toJSON (SomeAction val) =
    A.object $
      ("description" .= actionDescription @m Proxy val)
        : ["submap" .= x | let x = actionSubmap @m val, not (omitField x)]
  toEncoding (SomeAction val) =
    A.pairs $
      "description"
        .= actionDescription @m Proxy val
          <> (let x = actionSubmap @m val in if omitField x then mempty else "submap" .= x)

-- * Lenses

makeFieldClassesIfMissing ["boundAction", "riverSeat"]

makeLensesWith' classPerField [''PointerBinding]
makeLensesCombine' id [] [''XkbBinding']

instance HasRiverId (XkbBinding a) where
  type RiverId (XkbBinding a) = R.RiverXkbBinding
  riverId = riverXkbBinding

instance HasRiverId (PointerBinding a) where
  type RiverId (PointerBinding a) = R.RiverPointerBinding
  riverId = riverPointerBinding

-- Data instances

--- deriving instance (Data a, Data (StablePtr (XkbBinding a))) => Data (XkbBinding a)
deriving instance (Data a) => Data (PointerBinding a)

instance (Typeable m) => Data (SomeAction m) where
  toConstr _ = error "toConstr"
  gunfold _ _ = error "gunfold"
  dataTypeOf _ = mkNoRepType "SomeAction"

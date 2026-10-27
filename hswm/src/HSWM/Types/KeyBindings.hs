{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Types.KeyBindings
-- Description : Key bindings data structure
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.KeyBindings where

import           HSWM.Types.Action (XBKey(..), IsKeySym(..), ModMask, IsModMask(..), HasRiverSeat(..)) -- , HasKeyBindings(..))
import           HSWM.Types.Lens
import           HSWM.Utils
import qualified River as R

import qualified Data.Aeson as A
import qualified Data.List as L
import qualified Data.Map as M
import           Prettyprinter.Combinators (renderString)
import qualified Data.Set as S

data KeyBindings k a = KeyBindings
  { -- | 'bindings' contains the current level bound keys.
    -- A 'Right' is a normal action (maybe repeating). A 'Left' represents an action
    -- that triggers a submap binding.
    bindings :: M.Map k (Either (KeyBindings k a) a)

  , -- | If 'bindings' is submap, 'previous' is 'Just' the previous layer.
    previous :: Maybe (KeyBindings k a)
  } deriving (Eq, Ord, Show, Generic, Data)
  deriving anyclass (NFData, Default)

-- | Only picks the bindings on the current level
bindingsToList1 :: KeyBindings k a -> [(k, a)]
bindingsToList1 binds = [ (k, a) | (k, Right a) <- M.toList binds.bindings ]

flatBindings :: KeyBindings k a -> [([k], a)]
flatBindings v = go [] $ M.toList v.bindings where
  go pre ((k,Right a) : xs) = (pre ++ [k], a) : go pre xs
  go pre ((k,Left bs) : xs) = go (pre ++ [k]) (M.toList bs.bindings) ++ go pre xs
  go _                   [] = []

-- | state for managing river bindings (turning on and off)
data KeyBindingsState k = KeyBindingsState
  { -- | River objects created for input purposes.
    riverBoundKeys :: M.Map k R.RiverXkbBinding
  , riverBoundKeysEnabled :: S.Set k
  } deriving (Eq, Ord, Show, Generic, Data)
  deriving anyclass (NFData, Default)

-- | The result of resolving an activated binding (in the active key map).
data BindingAction k a
  = BindingRunAction
    { runAction :: a
    , mbReplaceKeyBindings :: Maybe (KeyBindings k a)  -- reset back to top-level map;
    }
  | BindingNotFound
    { mbReplaceKeyBindings :: Maybe (KeyBindings k a)  -- XXX: reset back to top-level map;
    , bindingKey :: k
    }
  | BindingActivateSubmap
    { replaceKeyBindings :: KeyBindings k a        -- XXX: enter this keymap, remember old
    }

data BoundKeyInfo a = BoundKeyInfo
  { boundKey :: {-# UNPACK #-} !XBKey
  , riverXkbBinding :: {-# UNPACK #-} !R.RiverXkbBinding
  , riverSeat :: {-# UNPACK #-} !R.RiverSeat -- ^ Needed to know which seat triggered an action.
  , runningVar :: {-# UNPACK #-} !(MVar (Async ()))
  }
  deriving stock (Generic)

makeLensesWith classPerField ''BindingAction
makeLensesWith classPerField ''KeyBindings
makeLensesWith classPerField ''KeyBindingsState
makeLensesCombine ["riverSeat"] [''BoundKeyInfo]

bindingsNeeded :: Ord k => KeyBindingsState k -> KeyBindings k v -> M.Map k R.RiverXkbBinding
bindingsNeeded st binds = st.riverBoundKeys `M.restrictKeys` M.keysSet binds.bindings

activateBinding :: (Ord k) => k -> KeyBindings k a -> BindingAction k a
activateBinding k v =
  case M.lookup k v.bindings of
    Just (Right act) -> BindingRunAction act (rollbackSubmaps v)
    Just   (Left sm) -> BindingActivateSubmap (activateSubmap sm)
    Nothing          -> BindingNotFound (rollbackSubmaps v) k
  where
    activateSubmap sm = sm { previous = Just v }
    rollbackSubmaps ((.previous) -> Just x) = Just (go x)
                  where go ((.previous) -> Just m2) = go m2
                        go                   m2  = m2


    rollbackSubmaps _ = Nothing

toKeyBindings :: ModMask -> (String, a) -> KeyBindings XBKey a
toKeyBindings defmm (k, a) = withKeys (L.words k)
  where
    withKeys       [] = error "no keys in the key string!"
    withKeys      [x] = def { bindings = M.singleton (parseXBKey x) (Right a) }
    withKeys (x : xs) = def { bindings = M.singleton (parseXBKey x) (Left $ withKeys xs) }

    parseXBKey s =
      let (rkey, rmods) = L.span (/= '-') (L.reverse s)
          (key, mods) = (L.reverse rkey, L.reverse $ drop 1 rmods)
          key' = toKeySym key
          modm = toModMask defmm mods
       in XBKey modm key'


deriving via (PPGeneric (Either (KeyBindings k a) a)) instance (Pretty k, Pretty a) => Pretty (Either (KeyBindings k a) a)
deriving via (PPGeneric (KeyBindings k a)) instance (Pretty k, Pretty a) => Pretty (KeyBindings k a)

instance (Ord key, Pretty action, Pretty key) => Monoid (KeyBindings key action) where mempty = def
-- instance Ord key => Default (KeyBindings key action) where def = KeyBindings mempty Nothing
instance (Ord key, Pretty key, Pretty action) => Semigroup (KeyBindings key action) where
  a <> b
    | Just{} <- b.previous = error "can't concat submap on rhs"
    | otherwise = a{bindings = M.unionWithKey f a.bindings b.bindings}
      where
        f :: (a ~ Either (KeyBindings key action) action) => key -> a -> a -> a
        f _ (Left m1) (Left m2) = Left (m1 <> m2)
        f k       a1        a2  = error $ "Can't combine submaps at " ++ pshow k ++ ": " ++ pshow a1 ++ "  VS " ++ pshow a2

        pshow :: Pretty a => a -> String
        pshow  = renderString . pretty

instance (A.ToJSON k, A.ToJSONKey k, A.ToJSON a)  => ToJSON (KeyBindings k a) where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance (A.ToJSON k, A.ToJSONKey k)  => ToJSON (KeyBindingsState k) where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

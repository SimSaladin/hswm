{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : HSWM.Config
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Config
  ( module HSWM.Config,
  )
where

import           HSWM.Core
import           HSWM.Operations
import qualified HSWM.Util.PangoMarkup as P
import           HSWM.Utils

import           Data.Foldable
import qualified Data.List as L
import qualified Data.Text as T

-- | Concatenate many messages
data a :>>: b = a :>>: b
  deriving stock (Eq, Show, Generic)

infixr 6 :>>:

instance (IsAction H a, IsAction H b, Typeable a, Typeable b) => IsAction H (a :>>: b) where
  runner              (a :>>: b) = runner a >> runner b
  onHoldRepeat      p (a :>>: b) = onHoldRepeat p a && onHoldRepeat p b
  actionDescription p (a :>>: b) = actionDescription p a ++ ", " ++ actionDescription p b
  actionSubmap        (a :>>: b) = Submap { submapKeys = s1.submapKeys <> s2.submapKeys
                                          , submapDefault = s1.submapDefault <|> s2.submapDefault -- XXX
                                          }
                                    where s1 = actionSubmap a
                                          s2 = actionSubmap b

data RepeatOnHold a = a :%* Int deriving (Eq, Show, Generic)

infixr 6 :%*

instance (Typeable a, IsAction H a) => IsAction H (RepeatOnHold a) where
  runner              (a :%* _) = runner a
  onHoldRepeat _      (_ :%* n) = n > 0
  actionDescription p (a :%* _) = actionDescription p a
  actionSubmap        (a :%* _) = actionSubmap a

-- * NamedAction

data NamedAction = NamedAction String (SomeAction H)
  deriving stock (Generic)

instance IsAction H NamedAction where
  runner              (NamedAction _  a) = runner a
  onHoldRepeat      p (NamedAction _  a) = onHoldRepeat p a
  actionSubmap        (NamedAction _  a) = actionSubmap a
  actionDescription _ (NamedAction nm _) = nm

named :: (IsAction H a) => String -> a -> SomeAction H
named str a = SomeAction $ NamedAction str (SomeAction a)

-- * IsKeyAction

class IsKeyAction a where
  toKeyAction :: String -> a -> SomeAction H

instance {-# OVERLAPPABLE #-} IsKeyAction (SomeAction H) where
  toKeyAction d a = SomeAction $ NamedAction d a

instance {-# OVERLAPPABLE #-} (IsKeyAction a, IsKeyAction b) => IsKeyAction (a :>>: b) where
  toKeyAction d (a :>>: b) =
    let aa = toKeyAction "" a
        ba = toKeyAction "" b
    in toKeyAction d $ SomeAction @H $ aa :>>: ba

instance {-# OVERLAPPABLE #-} IsKeyAction (H b) where
  toKeyAction d = named d . void

instance {-# OVERLAPPABLE #-} IsKeyAction (HS b) where
  toKeyAction d = named @(H ()) d . runInHS . void

instance {-# OVERLAPPABLE #-} (Message a, Show a) => IsKeyAction a where
  toKeyAction d a = named ((if null d then "" else d ++ ": ") ++ show a) (runInHS $ sendMessage a :: H ())

-- | Attach a description to some action: @ restart <?> "Restart" @
(<?>) :: IsKeyAction a => a -> String -> SomeAction H
action <?> desc = toKeyAction desc action

infixr 1 <?>

-- * Add keys to config

addKeys :: (IsKeySym k, IsAction m a) => [((ModMask, k), a)] -> ConfigDoM m
addKeys keys c = c
  { keyBindings = c.keyBindings <> [(XBKey m (toKeySym k), SomeAction a) | ((m, k), a) <- keys] }

addKeys' :: forall m. (m ~ H, Typeable m, MonadIO m) => [(String, SomeAction m)] -> ConfigDoM m
addKeys' keys c = c
  { keyBindings = c.keyBindings <> fromKeyTree (parseSubmaps doMod keys) }
  where
    doMod = resolveModMask (resolveModMask 0 c.defaultModMask)

-- * Parse ADT

data KeyTree k a = KeyAction { _key :: k, _action :: a }
                 | KeySubmap { _key :: k, _submap :: [KeyTree k a] }
  deriving (Show, Generic)

-- | Convert KeyTrees to flat key list.
fromKeyTree
  :: forall a m. (a ~ SomeAction m, Typeable m, MonadIO m, m ~ H)
  => [KeyTree XBKey a] -> [(XBKey, a)]
fromKeyTree = map doKey
  where
    doKey (KeyAction mk a ) = (mk, a)
    doKey (KeySubmap mk xs) =
      let helpAction = toKeyAction ("Submap " <> ppXBKey @String mk) $ showKeyHelpFor (ppXBKey mk) skeys
          skeys = fromKeyTree xs
       in (mk, SomeAction $ submap @m @a (Just helpAction) skeys)

-- | @submap defaultAction submapKeys@
submap
  :: forall m a. (IsAction m a, MonadIO m, a ~ SomeAction m)
  => Maybe a -> [(XBKey, a)] -> Submap a
submap defAct subKeys = Submap
  { submapKeys    = [(mk, SomeAction a) | (mk, a) <- subKeys]
  , submapDefault = SomeAction <$> defAct
  }

-- | Parse KeyTrees from @(mods-keys-sequence, action)@ pairs.
parseSubmaps
  :: forall a. (String -> ModMask) -- ^ Get modifier mask
  -> [(String, a)] -> [KeyTree XBKey a]
parseSubmaps getMod ks0 = combine $ do
  (s, a) <- ks0
  let ks = [ XBKey (getMod $ L.intercalate "-" (L.init bk)) (toKeySym $ L.last bk) | k <- L.words s, let bk = breakKeys k ]
  return $ mkKeyTree ks a

combine :: Eq k => [KeyTree k a] -> [KeyTree k a]
combine xs@(x@KeySubmap{} :  _) = let (lhs, rhs) = L.partition (\y -> y._key == x._key) xs
                                      smap = combine $ L.concat [sm | KeySubmap _ sm <- lhs]
                                   in KeySubmap x._key smap : combine rhs
combine    (x@KeyAction{} : xs) = x : combine xs
combine                      [] = []

mkKeyTree :: [k] -> a -> KeyTree k a
mkKeyTree    [k] a = KeyAction k a
mkKeyTree (k:ks) a = KeySubmap k [mkKeyTree ks a]
mkKeyTree     [] _ = error "mkKeyTree"

breakKeys :: String -> [String]
breakKeys  "" = []
breakKeys str = case L.span (/= '-') str of
  (k, '-' : xs) -> k : breakKeys xs
  (k,       []) -> [k]
  (_,        _) -> error "breakKeys"

-- * Show key help

showKeyHelp :: H ()
showKeyHelp = do
  binds <- view (config . keyBindings)
  showKeyHelpFor "" binds

showKeyHelpFor :: String -> [(XBKey, SomeAction H)] -> H ()
showKeyHelpFor lead binds = do
  let out :: [(Text, String)]
      out = [ (ppXBKey @Text xk, actionDescription (Proxy @H) a)
                  | (xk, a) <- L.sortOn (ppXBKey @String . fst) binds ]
  let indent = maximum $ map (T.length . fst) out
  let text = P.render $ P.monospace $ mconcat
          [ P.text (T.justifyRight indent ' ' mk) <> " " <> P.text a <> "\n"
            | (mk, a) <- out ]
  void . runProcess $
    proc "notify-send" [ "--app-name=hswm", "Keys " ++ lead, "--", T.unpack text ]

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

-- * NamedAction

data NamedAction = NamedAction String (SomeAction H)

instance IsAction H NamedAction where
  runner (NamedAction _ a) = runner a
  actionSubmap (NamedAction _ a) = actionSubmap a
  actionDescription _ (NamedAction nm _) = nm

named :: (IsAction H a) => String -> a -> SomeAction H
named str a = SomeAction $ NamedAction str (SomeAction a)

-- * IsKeyAction

class IsKeyAction a where
  toKeyAction :: String -> a -> SomeAction H

instance {-# OVERLAPPABLE #-} IsKeyAction (SomeAction H) where
  toKeyAction d a = SomeAction $ NamedAction d a

instance {-# OVERLAPPABLE #-} IsKeyAction (H b) where
  toKeyAction d = named d . void

instance {-# OVERLAPPABLE #-} IsKeyAction (HS b) where
  toKeyAction d = named @(H ()) d . runInHS . void

instance {-# OVERLAPPABLE #-} (Message a, Show a) => IsKeyAction a where
  toKeyAction d a = named (d ++ ": " ++ show a) (runInHS $ sendMessage a :: H ())

-- | Attach a description to some action: @ restart <?> "Restart" @
(<?>) :: IsKeyAction a => a -> String -> SomeAction H
action <?> desc = toKeyAction desc action

-- | Attach a description to some action: @ "Restart" <??> restart @
(<??>) :: IsKeyAction a => String -> a -> SomeAction H
desc <??> action = toKeyAction desc action

infixr 1 <??>, <?>

-- * Add keys to config

addKeys :: (IsKeySym k, IsAction m a) => [((ModMask, k), a)] -> ConfigDoM m
addKeys keys c = c
  { keyBindings = c.keyBindings <> [((m, toKeySym k), SomeAction a) | ((m, k), a) <- keys] }

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
      let helpAction = toKeyAction ("Help submap: " ++ show mk) $ showKeyHelpFor skeys
          skeys = fromKeyTree xs
       in (mk, SomeAction $ submap @m @a (Just helpAction) skeys)

-- | @submap defaultAction submapKeys@
submap
  :: forall m a a0. (IsAction m a, IsAction m a0, IsAction m (Submap m), MonadIO m)
  => Maybe a -> [(XBKey, a0)] -> Submap m
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
    let ks = [ (getMod $ L.intercalate "-" (L.init bk), toKeySym $ L.last bk) | k <- L.words s, let bk = breakKeys k ]
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
  (_,        _) -> error "breakkeys"

-- * Show key help

showKeyHelp :: H ()
showKeyHelp = do
  binds <- view (config . keyBindings)
  showKeyHelpFor binds

showKeyHelpFor :: [(XBKey, SomeAction H)] -> H ()
showKeyHelpFor binds = do
  let pretty = [ (ppXBKey (m, k), actionDescription (Proxy @H) a)
                  | ((m, k), a) <- L.sortOn (ppXBKey . fst) binds ]
  let indent = maximum $ map (length . fst) pretty
  let text = P.render $ P.Monospace $ mconcat
          [ P.text (T.justifyLeft indent ' ' (toText mk)) <> " " <> P.text a <> "\n"
            | (mk, a) <- pretty ]
  void . runProcess $
    proc "notify-send" [ "--app-name=hswm", "Keys", "--", T.unpack text ]

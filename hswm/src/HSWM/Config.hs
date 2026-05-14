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

infixr 1 <??>, <?>

-- | Attach a description to some action:
--
-- @
--   restart <?> "Restart"
-- @
(<?>) :: IsKeyAction a => a -> String -> SomeAction H
action <?> desc = toKeyAction desc action

-- | Attach a description to some action:
--
-- @
--   "Restart" <??> restart
-- @
(<??>) :: IsKeyAction a => String -> a -> SomeAction H
desc <??> action = toKeyAction desc action

class IsKeyAction a where
  toKeyAction :: String -> a -> SomeAction H

instance {-# OVERLAPPABLE #-} IsKeyAction (H b) where
  toKeyAction d = named d . void

instance {-# OVERLAPPABLE #-} IsKeyAction (HS b) where
  toKeyAction d = named @(H ()) d . runInHS . void

instance {-# OVERLAPPABLE #-} IsKeyAction (SomeAction H) where
  toKeyAction d a = SomeAction $ NamedAction d a

instance {-# OVERLAPPABLE #-} (Message a, Show a) => IsKeyAction a where
  toKeyAction d a = SomeAction $ named (d ++ ": " ++ show a) (runInHS $ sendMessage a :: H ())

-- * Named

data NamedAction = NamedAction String (SomeAction H)

instance IsAction H NamedAction where
  runner (NamedAction _ a) = runner a
  actionSubmap (NamedAction _ a) = actionSubmap a
  actionDescription _ (NamedAction nm _) = nm

named :: (IsAction H a) => String -> a -> SomeAction H
named str a = SomeAction $ NamedAction str (SomeAction a)

-- * Keys/submaps

addKeys :: (IsKeySym k, IsAction m a) => [((ModMask, k), a)] -> ConfigDoM m
addKeys keys c = c
  { keyBindings = keyBindings c ++ [((m, toKeySym k), SomeAction a) | ((m, k), a) <- keys] }

addKeys' :: [(String, SomeAction H)] -> ConfigDoM H
addKeys' keys c = c
  { keyBindings = keyBindings c ++ [((m, toKeySym k), a)
    | ((m, k), a) <- fromADTKeys c.defaultModMask $ parseSubmaps keys] }

submap ::
  forall m a k.
  (Monad m, IsAction m a, IsAction m (Submap m), IsKeySym k) =>
  Maybe (SomeAction m) -> [((ModMask, k), a)] -> SomeAction m
submap defAct subKeys =
  let submapKeys :: [((ModMask, KeySym), SomeAction m)]
      submapKeys = [((m, toKeySym k), SomeAction a) | ((m, k), a) <- subKeys]

      submapDefault = SomeAction <$> defAct

      smap = Submap {..}
   in SomeAction smap

fromADTKeys :: String -> [KeyAction (String, KeySym) (SomeAction H)] -> [((ModMask, KeySym), SomeAction H)]
fromADTKeys defaultModMask = map doKey
  where
    doKey (KeyAction k a) = (doMK k, a)
    doKey (KeySubmap k xs) = (doMK k, submap Nothing (fromADTKeys defaultModMask xs))
    doMK (m, k) = (resolveModMask (resolveModMask 0 defaultModMask) m, k)

data KeyAction mk a
  = KeyAction mk a
  | KeySubmap mk [KeyAction mk a]
  deriving (Show, Generic)

parseSubmaps :: [(String, SomeAction H)] -> [KeyAction (String, KeySym) (SomeAction H)]
parseSubmaps ks0 =
  let sanitized = [(L.words s, a) | (s, a) <- ks0] :: [([String], SomeAction H)]

      keypaths :: [([(String, KeySym)], SomeAction H)]
      keypaths = do
        (keyseq, a) <- sanitized
        return ([(L.intercalate "-" (L.init (breakKeys k)) :: String, toKeySym $ L.last (breakKeys k) :: KeySym) | k <- keyseq], a)

      toADT :: ([(String, KeySym)], SomeAction H) -> KeyAction (String, KeySym) (SomeAction H)
      toADT ([k], a) = KeyAction k a
      toADT (k : ks, a) = KeySubmap k [toADT (ks, a)]
      toADT ([], _) = error "toADT"

      chains = map toADT keypaths :: [KeyAction (String, KeySym) (SomeAction H)]

      combine :: [KeyAction (String, KeySym) (SomeAction H)] -> [KeyAction (String, KeySym) (SomeAction H)]
      combine [] = []
      combine (x@(KeyAction _ _) : xs) = x : combine xs
      combine trees@(KeySubmap k _ : _) =
        let (lhs, rhs) = L.partition (\x -> key x == k) trees
         in KeySubmap k (combine $ L.concat [xs | KeySubmap _ xs <- lhs]) : combine rhs
   in combine chains
  where
    breakKeys :: String -> [String]
    breakKeys "" = []
    breakKeys str = case L.span (/= '-') str of
      (k, []) -> [k]
      (k, '-' : xs) -> k : breakKeys xs
      (_, _) -> error "breakkeys"

    key (KeyAction k _) = k
    key (KeySubmap k _) = k

showKeyHelp :: H ()
showKeyHelp = do
  binds <- asks (keyBindings . config)
  let pretty = [ (ppXkbModsKey m k, actionDescription (Proxy :: Proxy H) a) | ((m, k), a) <- L.sortOn (uncurry ppXkbModsKey . fst) binds ]
  let indent = maximum $ map (length . fst) pretty
  let res = P.Monospace $ mconcat [ P.text (T.justifyLeft indent ' ' (toText mk)) <> " " <> P.text a <> "\n" | (mk, a) <- pretty ]
  void . runProcess $
    proc "notify-send" [ "--app-name=hswm", "Keys", "--", T.unpack (P.render res) ]

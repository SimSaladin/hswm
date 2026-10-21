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

import           Data.Typeable
import           Data.Foldable
import qualified Data.List as L
import qualified Data.Text as T

class ToAction a where
  toAction :: a -> SomeAction H

instance ToAction (SomeAction H) where toAction = id
instance ToAction (H a) where toAction = SomeAction . void
instance ToAction (HS a) where toAction = SomeAction . void . runInHS @H
instance ToAction (IO a) where toAction = SomeAction . void
instance (Typeable a, Typeable b, IsAction H a, IsAction H b) => ToAction (a :>>: b) where
  toAction = SomeAction
instance (Message a, Show a) => ToAction (SendMessage a) where
  toAction = SomeAction

newtype SendMessage a = SendMessage a

instance (Message a, Show a) => IsAction H (SendMessage a) where
  runner (SendMessage msg) = runInHS (sendMessage msg)
  actionDescription _ (SendMessage msg) = "Send '" ++ show msg ++ "' (" ++ show (typeOf msg) ++ ")"
  --onHoldRepeat _ _ = True -- ?

-- | Attach a description to some action: @ restart <?> "Restart" @
--
(<?>) :: ToAction a => a -> String -> SomeAction H
action <?> desc = SomeAction $ NamedAction desc (toAction action)

infixr 1 <?>

-- | Control key autorepeat
data RepeatOnHold a = a :%* Int deriving (Eq, Show, Generic)

infixr 6 :%*

instance (Typeable a, IsAction H a) => IsAction H (RepeatOnHold a) where
  runner              (a :%* _) = runner a
  onHoldRepeat _      (_ :%* n) = n > 0
  actionDescription p (a :%* _) = actionDescription p a
  actionDescriptionFallback p (a :%* _) = actionDescriptionFallback p a
  actionSubmap        (a :%* _) = actionSubmap a

-- * NamedAction

-- | Add a label to an action
data NamedAction = NamedAction String (SomeAction H)
  deriving stock (Generic)

instance IsAction H NamedAction where
  runner              (NamedAction _  a) = runner a
  onHoldRepeat      p (NamedAction _  a) = onHoldRepeat p a
  actionSubmap        (NamedAction _  a) = actionSubmap a
  actionDescription p (NamedAction nm a) = nm ++ (
    let sub = actionDescription p a in
    if sub /= "" then ": " ++ sub else "")
  actionDescriptionFallback p (NamedAction nm a) = nm ++ (
    let sub = actionDescriptionFallback p a in
    if sub /= "" then ": " ++ sub else "")

named :: (IsAction H a) => String -> a -> SomeAction H
named str a = SomeAction $ NamedAction str (SomeAction a)

-- | Concatenate many messages
data a :>>: b = a :>>: b
  deriving stock (Eq, Show, Generic)

infixr 6 :>>:

instance (IsAction H a, IsAction H b, Typeable a, Typeable b) => IsAction H (a :>>: b) where
  runner              (a :>>: b) = runner a >> runner b
  onHoldRepeat      p (a :>>: b) = onHoldRepeat p a && onHoldRepeat p b
  actionDescription p (a :>>: b) = L.intercalate " && " $ filter (/= "") [ actionDescription p a, actionDescription p b ]
  actionDescriptionFallback p (a :>>: b) = L.intercalate " && " $ filter (/= "") [ actionDescriptionFallback p a, actionDescriptionFallback p b ]
  actionSubmap        (a :>>: b) = Submap { submapKeys = s1.submapKeys <> s2.submapKeys
                                          , submapDefault = s1.submapDefault <|> s2.submapDefault -- XXX
                                          }
                                    where s1 = actionSubmap a
                                          s2 = actionSubmap b

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
      let helpAction = showKeyHelpFor (ppXBKey mk) skeys <?> ("Submap " <> ppXBKey @String mk)
          skeys = fromKeyTree xs
       in (mk, SomeAction $ submap @m @a (Just helpAction) skeys)

-- | @submap defaultAction submapKeys@
submap
  :: forall m a. (IsAction m a, MonadIO m, a ~ SomeAction m)
  => Maybe a
  -> [(XBKey, a)]
  -> Submap a
submap defAct subKeys = Submap
  { submapKeys    = [(mk, SomeAction a) | (mk, a) <- subKeys]
  , submapDefault = SomeAction <$> defAct
  }

-- | Parse KeyTrees from @(mods-keys-sequence, action)@ pairs.
parseSubmaps
  :: forall a.
    (String -> ModMask) -- ^ Get modifier mask
  -> [(String, a)]
  -> [KeyTree XBKey a]
parseSubmaps getMod ks0 = combine $ do
  (s, a) <- ks0
  let ks = [ XBKey (getMod $ L.intercalate "-" (L.init bk)) (toKeySym $ L.last bk) | k <- L.words s, let bk = breakKeys k ]
  return $ mkKeyTree ks a
  where
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

-- | Top-level bindings.
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

  void $ notifySend def ("Keys " ++ lead) (Just $ "<span font-size='12pt'>\n" ++ T.unpack text ++ "</span>")

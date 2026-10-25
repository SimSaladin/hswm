{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : HSWM.Config
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Config (
  module HSWM.Config,
)
where

import HSWM.Core
import HSWM.Operations
import HSWM.Util.PangoMarkup qualified as P
import HSWM.Utils

import Data.Foldable
import Data.List qualified as L
import Data.Text qualified as T
import Data.Typeable
import GHC.TypeLits

infixl 4 <?>
infixl 4 <!>
infixl 4 <%>

-- * SendMessage

newtype SendMessage a = SendMessage a

instance (Message a, Show a) => IsAction H (SendMessage a) where
  runner (SendMessage msg) = runInHS (sendMessage msg)
  actionDescription _ (SendMessage msg) = "Send '" ++ show msg ++ "' (" ++ show (typeOf msg) ++ ")"
  actionCategories _ _ = ["Message"]

-- * NamedAction and descriptions

-- | Add a label to an action
-- data NamedAction a = NamedAction String a
newtype (<?>) a (desc :: Symbol) = NamedAction {fromNamedAction :: a}
  deriving stock (Generic)

-- | Attach a description to some action: @ restart <?> "Restart" @
(<?>) :: (IsAction H a) => a -> String -> SomeAction H
(<?>) = flip named

named :: forall a. (IsAction H a) => String -> a -> SomeAction H
named str a = withSomeSSymbol str $ \case
  (ssym :: SSymbol s) -> withKnownSymbol ssym $ SomeAction (NamedAction a :: a <?> s)

instance (KnownSymbol desc, IsAction H a) => IsAction H (a <?> desc) where
  actionPassthru _ (NamedAction a) = Just $ SomeAction a
  actionDescription p (NamedAction a) =
    symbolVal (Proxy @desc)
      ++ ( let sub = actionDescription p a
            in if sub /= "" then ": " ++ sub else ""
         )
  actionDescriptionFallback p (NamedAction a) =
    symbolVal (Proxy @desc)
      ++ ( let sub = actionDescriptionFallback p a
            in if sub /= "" then ": " ++ sub else ""
         )

-- * Autorepeat

-- | Control key autorepeat
newtype (<!>) action (repeat :: Nat) = RepeatOnHold {getRepeat :: action}

instance (Typeable a, IsAction H a, KnownNat repeat) => IsAction H (a <!> repeat) where
  onHoldRepeat _ _ = natVal (Proxy @repeat) > 0
  actionPassthru _ (RepeatOnHold a) = Just $ SomeAction a

(<!>) :: forall a. (Typeable a, IsAction H a) => a -> Integer -> SomeAction H
action <!> n = withSomeSNat n $ \case
  Just (snat :: SNat n) -> withKnownNat snat $ SomeAction (RepeatOnHold action :: a <!> n)
  Nothing -> error "invalid SNat"

-- * Categories

category :: String -> [(a, SomeAction H)] -> [(a, SomeAction H)]
category cat = over (each . _2) (<%> [cat])

data WithCategories a = WithCategories [String] a deriving (Eq, Show, Generic)

-- | Add categories to action
(<%>) :: (Typeable a, IsAction H a) => a -> [String] -> SomeAction H
action <%> cats = SomeAction $ WithCategories cats action

instance (Typeable a, IsAction H a) => IsAction H (WithCategories a) where
  actionPassthru _ (_ `WithCategories` a) = Just $ SomeAction a
  actionSubmap (xs `WithCategories` a) = (actionSubmap a :: Submap (SomeAction H)) <&> (<%> xs)
  actionCategories p (xs `WithCategories` a) = xs ++ actionCategories p a

-- * Combine actions

-- | Concatenate many messages
data a :>>: b = a :>>: b
  deriving stock (Eq, Show, Generic)

infixr 6 :>>:

instance (IsAction H a, IsAction H b, Typeable a, Typeable b) => IsAction H (a :>>: b) where
  runner (a :>>: b) = runner a >> runner b
  onHoldRepeat p (a :>>: b) = onHoldRepeat p a && onHoldRepeat p b
  actionDescription p (a :>>: b) = L.intercalate " && " $ filter (/= "") [actionDescription p a, actionDescription p b]
  actionDescriptionFallback p (a :>>: b) = L.intercalate " && " $ filter (/= "") [actionDescriptionFallback p a, actionDescriptionFallback p b]
  actionCategories p (a :>>: b) = actionCategories p a ++ actionCategories p b
  actionSubmap (a :>>: b) =
    Submap
      { submapKeys = s1.submapKeys <> s2.submapKeys
      , submapDefault = s1.submapDefault <|> s2.submapDefault -- XXX
      }
    where
      s1 = actionSubmap a
      s2 = actionSubmap b

-- * Add keys to config

addKeys :: (IsKeySym k, IsAction m a) => [((ModMask, k), a)] -> ConfigDoM m
addKeys keys c =
  c
    { keyBindings = c.keyBindings <> [(XBKey m (toKeySym k), SomeAction a) | ((m, k), a) <- keys]
    }

addKeys' :: forall m. (m ~ H, Typeable m, MonadIO m) => [(String, SomeAction m)] -> ConfigDoM m
addKeys' keys c = c{keyBindings = c.keyBindings <> interpretStringKeys c keys}

-- * Parse ADT

interpretStringKeys :: (a ~ SomeAction m, m ~ H, Foldable t) => HSWMConfig m l -> t (String, a) -> [(XBKey, a)]
interpretStringKeys c = fromKeyTree . parseSubmaps doMod . toList
  where
    doMod = resolveModMask (resolveModMask 0 c.defaultModMask)

data KeyTree k a
  = KeyAction {_key :: k, _action :: a}
  | KeySubmap {_key :: k, _submap :: [KeyTree k a]}
  deriving (Show, Generic)

-- | Convert KeyTrees to flat key list.
fromKeyTree :: forall a. (a ~ SomeAction H) => [KeyTree XBKey a] -> [(XBKey, a)]
fromKeyTree = map doKey
  where
    doKey (KeyAction mk a) = (mk, a)
    doKey (KeySubmap mk xs) =
      let helpAction = showKeyHelpFor (ppXBKey mk) skeys <?> ("Submap " <> ppXBKey @String mk)
          skeys = fromKeyTree xs
       in (mk, SomeAction $ submap @H @a (Just helpAction) skeys)

-- | @submap defaultAction submapKeys@
submap ::
  forall m a.
  (IsAction m a, MonadIO m, a ~ SomeAction m) =>
  Maybe a
  -> [(XBKey, a)]
  -> Submap a
submap defAct subKeys =
  Submap
    { submapKeys = [(mk, SomeAction a) | (mk, a) <- subKeys]
    , submapDefault = SomeAction <$> defAct
    }

-- | Parse KeyTrees from @(mods-keys-sequence, action)@ pairs.
parseSubmaps ::
  forall a.
  (String -> ModMask)
  -- ^ Get modifier mask
  -> [(String, a)]
  -> [KeyTree XBKey a]
parseSubmaps getMod ks0 = combine $ do
  (s, a) <- ks0
  let ks =
        [ XBKey (getMod $ L.intercalate "-" (L.init bk)) (toKeySym $ L.last bk)
        | k <- L.words s
        , let bk = breakKeys k
        ]
  return $ mkKeyTree ks a
  where
    combine :: (Eq k) => [KeyTree k a] -> [KeyTree k a]
    combine xs@(x@KeySubmap{} : _) =
      let (lhs, rhs) = L.partition (\y -> y._key == x._key) xs
          smap = combine $ L.concat [sm | KeySubmap _ sm <- lhs]
       in KeySubmap x._key smap : combine rhs
    combine (x@KeyAction{} : xs) = x : combine xs
    combine [] = []

    mkKeyTree :: [k] -> a -> KeyTree k a
    mkKeyTree [k] a = KeyAction k a
    mkKeyTree (k : ks) a = KeySubmap k [mkKeyTree ks a]
    mkKeyTree [] _ = error "mkKeyTree"

    breakKeys :: String -> [String]
    breakKeys s = case L.span (/= '-') s of
      ("", _) -> []
      (k, xs) -> k : breakKeys (drop 1 xs)

-- * Show key help

-- | Top-level bindings.
showKeyHelp :: H ()
showKeyHelp = do
  binds <- view (config . keyBindings)
  showKeyHelpFor "" binds

showKeyHelpFor :: String -> [(XBKey, SomeAction H)] -> H ()
showKeyHelpFor lead binds = do
  let out :: [(Text, String)]
      out =
        [ (ppXBKey @Text xk, actionDescription (Proxy @H) a)
        | (xk, a) <- L.sortOn (ppXBKey @String . fst) binds
        ]
  let indent = maximum $ map (T.length . fst) out
  let text =
        P.render $
          P.monospace $
            mconcat
              [ P.text (T.justifyRight indent ' ' mk) <> " " <> P.text a <> "\n"
              | (mk, a) <- out
              ]

  void $ notifySend def ("Keys " ++ lead) (Just $ "<span font-size='12pt'>\n" ++ T.unpack text ++ "</span>")

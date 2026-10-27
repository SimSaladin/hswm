{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ApplicativeDo #-}
{-# LANGUAGE ExtendedDefaultRules #-}


-- |
-- Module      : HSWM.Config
-- Description : User-facing configuration and related types.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Config (
  -- * Actions
  SendMessage(..),
  (:>>:)(..),
  -- ** Action parameters
  (<?>), (<!>), (<@>),
  named,
  type (<!>),
  type (<@>),
  type (<?>),

  -- * The Validator interface
  Validator,
  validateAndAddKeys,
  validateBindings,
  -- ** Combinators
  (.@=), (.@=>), (///), (///&),
  group,
  bindKey,

  -- * Misc.
  category,
  SymlistValue(..),


  -- * Help
  showKeyHelp,
  showKeyHelpFor,
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
import GHC.IsList

infixr 6 :>>:
infixl 4 <?>, <!>, <@>
infixl 9 ///
infixl 1 .@=, .@=>

-- | Wrap a Message as an action for use in keybindings.
newtype SendMessage a = SendMessage a

-- | Concatenate many messages (or actions, indeed)
data (:>>:) a b = a :>>: b
  deriving stock (Eq, Show, Generic)

-- | Add a label to an action
-- data (:<?>) a = (:<?>) String a
newtype (<?>) a (desc :: Symbol) = (:<?>) a
  deriving stock (Generic)

-- | Control key autorepeat
newtype (<!>) a (repeat :: Nat) = (:<!>) a

-- | Categories
newtype (<@>) a (names :: [Symbol]) = (:<@>) a
  deriving (Eq, Show, Generic)

-- * Validator

data Validator a = Validator
  { keys :: [(String, SomeAction H)]
  , curval :: a
  , curmap :: KeyBindings XBKey (SomeAction H)
  }
  deriving (Generic)

deriving via (PPGeneric (Validator a)) instance
  {-# OVERLAPPABLE #-} (Pretty a, Pretty (SomeAction H)
  ) => Pretty (Validator a)

instance Show a => Show (Validator a) where
  show Validator{..} = "Keys: " ++ show keys ++ " -> " ++ show curval ++ " map -> " ++ show curmap

instance Semigroup (Validator a) where
  (<>) = liftA2 undefined

instance Monoid a => Monoid (Validator a) where
  mempty = Validator [] mempty mempty

instance Functor Validator where
  fmap f x = x{curval=f x.curval}

instance Applicative Validator where
  pure x = (mempty::Validator ()){curval=x}
  liftA2 f v1 v2 = v1
    { keys = v1.keys <> v2.keys
    , curval = f v1.curval v2.curval
    , curmap = v1.curmap <> v2.curmap
    }

instance Monad Validator where
  v >>= f = let v2 = f v.curval in liftA2 (const id) v v2

validateBindings :: (key ~ XBKey)
                 => Validator a
                 -> ModMask -- ^ default mod mask. (@"M"@)
                 -> KeyBindings key (SomeAction H)
validateBindings val mm = fold $ map (toKeyBindings mm) val.keys

bindKey :: IsAction H a => String -> a -> Validator ()
bindKey k v = mempty{keys=[(k, SomeAction v)]}

-- | Create a single (key, action) binding.
(.@=) :: IsAction H a => String -> a -> Validator ()
(.@=) = bindKey

-- | Create a series of bindings for a list of subkeys.
--
-- @
-- "Key-prefix-" /// key-list .@=> (\i -> handle i <?> describe i)
-- @
(.@=>) :: IsAction H a => [(String, i)] -> (i -> a) -> Validator ()
xs .@=> f = fold [ bindKey k (f i) | (k, i) <- xs ]

(///) :: String -> [String] -> [(String, Int)]
x /// xs = zip [ x <> y | y <- xs ] [1..]

(///&) :: String -> [(String, k)] -> [(String, k)]
x ///& xs = [ (x <> y, i) | (y, i) <- xs ]

-- | Add the mentioned bindings to the mentioned category.
group :: forall b. String -> Validator b -> Validator ()
group s Validator{keys} = withSomeSSymbol s $ \case
  (ss :: SSymbol s) -> withKnownSymbol ss $ mconcat [ k .@= (v <@> [s]) | (k, v) <- keys ]


instance IsList (Validator ()) where
  type Item (Validator ()) = (String, SomeAction H)
  fromList xs = mempty{keys=xs}
  toList v = v.keys

-- * Functions

-- | Attach a description to some action: @ restart <?> "Restart" @
(<?>) :: forall a. (IsAction H a) => a -> String -> SomeAction H
a <?> str = withSomeSSymbol str $ \case
  (ssym :: SSymbol s) -> withKnownSymbol ssym $ SomeAction ((:<?>) a :: a <?> s)

named :: forall a. (IsAction H a) => String -> a -> SomeAction H
named = flip (<?>)

-- | Autorepeat
(<!>) :: forall a. (Typeable a, IsAction H a) => a -> Integer -> SomeAction H
action <!> n = withSomeSNat n $ \case
  Just (snat :: SNat n) -> withKnownNat snat $ SomeAction ((:<!>) action :: a <!> n)
  Nothing -> error "invalid SNat"

-- | Add categories to action
(<@>) :: forall a. (Typeable a, IsAction H a) => a -> [String] -> SomeAction H
action <@> cats =
  let
      go :: forall xs. (Typeable xs, SymlistValue xs) => Proxy (xs :: [Symbol]) -> [String] -> SomeAction H
      go _ (x:xs) = withSomeSSymbol x $ \case
                  (sy :: SSymbol s) -> withKnownSymbol sy $ go (Proxy :: Proxy (s ': xs)) xs
      go _ [] = SomeAction ((:<@>) action :: a <@> xs)

  in
      go (Proxy @'[]) cats

-- | Add categories to all actions
category :: String -> [(a, SomeAction H)] -> [(a, SomeAction H)]
category cat = over (each . _2) (<@> [cat])

-- * Add keys to config

validateAndAddKeys ::  Validator a -> ConfigDoM H
validateAndAddKeys val c = c & keyBindings .~ validated
  where validated = validateBindings val (toModMask 0 $ c ^. defaultModMask)

-- * Show key help

-- | Top-level bindings.
showKeyHelp :: H ()
showKeyHelp = do
  binds <- view (config . keyBindings)
  showKeyHelpFor "" binds

showKeyHelpFor :: String -> KeyBindings XBKey (SomeAction H) -> H ()
showKeyHelpFor lead binds = do
  let out :: [(Text, String)]
      out =
        [ (ppXBKey @Text xk, actionDescription (Proxy @H) a)
        | (xk, a) <- L.sortOn (ppXBKey @String . fst) $ bindingsToList1 binds
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

instance (Message a, Show a) => IsAction H (SendMessage a) where
  runner (SendMessage msg) = runInHS (sendMessage msg)
  actionDescription _ (SendMessage msg) = "Send '" ++ show msg ++ "' (" ++ show (typeOf msg) ++ ")"
  actionCategories _ _ = ["Message"]

instance (KnownSymbol desc, IsAction H a) => IsAction H (a <?> desc) where
  actionPassthru _ ((:<?>) a) = Just $ SomeAction a
  actionDescription p ((:<?>) a) = symbolVal (Proxy @desc) ++ ( let sub = actionDescription p a in if sub /= "" then ": " ++ sub else "")
  actionDescriptionFallback p ((:<?>) a) = symbolVal (Proxy @desc) ++ ( let sub = actionDescriptionFallback p a in if sub /= "" then ": " ++ sub else "")

instance (Typeable a, IsAction H a, KnownNat repeat) => IsAction H (a <!> repeat) where
  onHoldRepeat _ _ = RepeatInfo { rate = fi $ natVal (Proxy @repeat), delay = 400 } -- TODO configurable delay
  actionPassthru _ ((:<!>) a) = Just $ SomeAction a

instance (IsAction f a, SymlistValue xs) => IsAction f (a <@> xs) where
  actionPassthru _ ((:<@>) a) = Just $ SomeAction a
  actionDescriptionFallback p ((:<@>) a) = actionDescriptionFallback p a
  actionCategories p ((:<@>) a) = symlistVal (undefined :: Proxy xs) ++ actionCategories p a

instance (IsAction H a, IsAction H b, Typeable a, Typeable b) => IsAction H (a :>>: b) where
  runner (a :>>: b) = runner a >> runner b
  onHoldRepeat p (a :>>: b) = let RepeatInfo r1 d1 = onHoldRepeat p a
                                  RepeatInfo r2 d2 = onHoldRepeat p b
                               in RepeatInfo (max r1 r2) (max d1 d2)
  actionDescription p (a :>>: b) = L.intercalate " && " $ filter (/= "") [actionDescription p a, actionDescription p b]
  actionDescriptionFallback p (a :>>: b) = L.intercalate " && " $ filter (/= "") [actionDescriptionFallback p a, actionDescriptionFallback p b]
  actionCategories p (a :>>: b) = actionCategories p a ++ actionCategories p b


-- * Extract type-level categories

class SymlistValue (a :: [Symbol]) where

  -- | Value representation of types of the kind @[Symbol]@.
  symlistVal :: Proxy a -> [String]

instance (KnownSymbol x, SymlistValue xs) => SymlistValue (x ': xs) where

  symlistVal _ = symbolVal (Proxy :: Proxy x) : symlistVal (undefined :: Proxy xs)

instance SymlistValue '[] where
  symlistVal _ = []

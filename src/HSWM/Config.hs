------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Config
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module HSWM.Config
  ( module HSWM.Config
  ) where

import HSWM.Core
import HSWM.Operations
import HSWM.XKB
import HSWM.Utils

import qualified Data.List as L

-- * Named

named :: IsAction a => String -> a -> SomeAction
named str a = toSomeAction $ NamedAction str (SomeAction a)

data NamedAction = NamedAction String SomeAction
                 | NamedActionH String (H ())

instance IsAction NamedAction where
  runner (NamedActionH _ m) = m
  runner (NamedAction _ a) = runner a

  actionSubmap (NamedActionH _ _) = []
  actionSubmap (NamedAction _ a) = actionSubmap a

  actionDescription (NamedActionH nm _) = nm
  actionDescription (NamedAction nm _) = nm

  --typeDescription _ = ""

namedA :: String -> H () -> SomeAction
namedA desc m = SomeAction (NamedActionH desc m)

messageA :: (Message a, Show a) => a -> SomeAction
messageA a = SomeAction $ NamedActionH (show a) (sendMessage a)

windowsA :: String -> (WindowSet -> WindowSet) -> SomeAction
windowsA desc f = SomeAction $ NamedActionH desc $ modifyWindowSet f

windowsMA :: String -> (WindowSet -> H WindowSet) -> SomeAction
windowsMA desc f = SomeAction $ NamedActionH desc $ withWindowSet $ \ws -> f ws >>= modifyWindowSet . const

-- * Keys/submaps

addKeys :: (IsKeySym k, IsAction a) => [((ModMask, k), a)] -> HSWMConfig l -> HSWMConfig l
addKeys keys c = c
  { keyBindings = (keyBindings c) ++
    [ ((m, toKeySym k), toSomeAction a) | ((m, k), a) <- keys ]
  }

submap :: (IsAction a, IsKeySym k) => Maybe SomeAction -> [((ModMask, k), a)] -> SomeAction
submap defAct subKeys = SomeAction $ Submap
  { submapKeys = [ ((m, toKeySym k), toSomeAction a) | ((m, k), a) <- subKeys ]
  , submapDefault = SomeAction <$> defAct }

fromADTKeys :: [ KeyAction (String, KeySym) SomeAction ] -> [((ModMask, KeySym), SomeAction)]
fromADTKeys = map doKey where
  doKey (KeyAction k a) = (doMK k, a)
  doKey (KeySubmap k xs) = (doMK k, submap Nothing (fromADTKeys xs))
  doMK (m, k) = (resolveModMask (resolveModMask 0 "c") m, k)

data KeyAction mk a = KeyAction mk a
                    | KeySubmap mk [KeyAction mk a]
                    deriving (Show, Generic)

parseSubmaps :: [(String, SomeAction)] -> [ KeyAction (String, KeySym) SomeAction ] -- [((String, KeySym), SomeAction)]
parseSubmaps ks0 =
  let sanitized = [(L.words s, a) | (s, a) <- ks0 ] :: [([String], SomeAction)]

      keypaths :: [ ( [(String, KeySym)], SomeAction ) ]
      keypaths = do
        (keyseq, a) <- sanitized -- ([String], a)
        return ( [ (L.intercalate "-" (L.init (breakKeys k)) :: String, toKeySym $ L.last (breakKeys k) :: KeySym) | k <- keyseq ], a)

      toADT :: ([(String, KeySym)], SomeAction) -> KeyAction (String, KeySym) SomeAction
      toADT ([ k ], a)  = KeyAction k a
      toADT (k : ks, a) = KeySubmap k [toADT (ks, a)]
      toADT ([], _)     = error "toADT"

      chains = map toADT keypaths :: [ KeyAction (String, KeySym) SomeAction ]

      combine :: [ KeyAction (String, KeySym) SomeAction ] -> [ KeyAction (String, KeySym) SomeAction ]
      combine [] = []
      combine (x@(KeyAction _ _) : xs) = x : combine xs
      combine trees@(KeySubmap k _ : _) =
        let (lhs, rhs) = L.partition (\x -> key x == k) trees
         in KeySubmap k (combine $ L.concat [ xs | KeySubmap _ xs <- lhs ]) : combine rhs

   in
   combine chains

  where
    breakKeys :: String -> [String]
    breakKeys "" = []
    breakKeys str = case L.span (/= '-') str of
                      (k,       []) -> [k]
                      (k, '-' : xs) -> [k] ++ breakKeys xs
                      (_,        _) -> error "breakkeys"

    key (KeyAction k _) = k
    key (KeySubmap k _) = k

-- * Spawning processes

data LaunchProgram = LaunchProgram String [String]
  deriving (Show, Generic)

instance IsAction LaunchProgram where
  runner (LaunchProgram cmd args) = do
    log' $ "[launch] " <> toText cmd <> " " <> tshow args
    void $ spawnProcess cmd args

-- * KeySym parsing

class IsKeySym a where toKeySym :: a -> KeySym

instance IsKeySym KeySym where toKeySym = id
instance IsKeySym String where toKeySym = xkb_keysym_from_name

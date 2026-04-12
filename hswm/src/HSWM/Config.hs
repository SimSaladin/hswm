{-# LANGUAGE UndecidableInstances #-}

------------------------------------------------------------------------------

------------------------------------------------------------------------------

-- |
-- Module      : HSWM.Config
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module HSWM.Config
  ( module HSWM.Config,
  )
where

import Data.List qualified as L
import HSWM.Core
import HSWM.Operations
import HSWM.Utils
import HSWM.XKB

-- * Named

named :: (IsAction H a) => String -> a -> SomeAction H
named str a = SomeAction $ NamedAction str (SomeAction a)

data NamedAction
  = NamedAction String (SomeAction H)
  | NamedActionH String (H ())
  | NamedActionHS String (HS ())

instance IsAction H NamedAction where
  runner (NamedActionH _ m) = m
  runner (NamedAction _ a) = runner a
  runner (NamedActionHS _ a) = runInHS a

  actionSubmap (NamedActionH _ _) = []
  actionSubmap (NamedActionHS _ _) = []
  actionSubmap (NamedAction _ a) = actionSubmap a

  actionDescription _ (NamedActionH nm _) = nm
  actionDescription _ (NamedActionHS nm _) = nm
  actionDescription _ (NamedAction nm _) = nm

-- typeDescription _ = ""

namedA :: String -> H () -> SomeAction H
namedA desc m = SomeAction (NamedActionH desc m)

namedAS :: String -> HS () -> SomeAction H
namedAS desc m = SomeAction (NamedActionHS desc m)

messageA :: (Message a, Show a) => a -> SomeAction H
messageA a = SomeAction $ NamedActionHS (show a) (sendMessage a)

windowsA :: String -> (WindowSet -> WindowSet) -> SomeAction H
windowsA desc f = SomeAction $ NamedActionHS desc $ modifyWindowSet f

windowsMA :: String -> (WindowSet -> HS WindowSet) -> SomeAction H
windowsMA desc f = SomeAction $ NamedActionHS desc $ withWindowSet $ f >=> modifyWindowSet . const

-- * Keys/submaps

addKeys :: (IsKeySym k, IsAction m a) => [((ModMask, k), a)] -> ConfigDoM m
addKeys keys c =
  c
    { keyBindings =
        keyBindings c
          ++ [((m, toKeySym k), SomeAction a) | ((m, k), a) <- keys]
    }

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

fromADTKeys :: [KeyAction (String, KeySym) (SomeAction H)] -> [((ModMask, KeySym), SomeAction H)]
fromADTKeys = map doKey
  where
    doKey (KeyAction k a) = (doMK k, a)
    doKey (KeySubmap k xs) = (doMK k, submap Nothing (fromADTKeys xs))
    -- TODO hard-coded default Mod mask
    doMK (m, k) = (resolveModMask (resolveModMask 0 "super") m, k)

data KeyAction mk a
  = KeyAction mk a
  | KeySubmap mk [KeyAction mk a]
  deriving (Show, Generic)

parseSubmaps :: [(String, SomeAction H)] -> [KeyAction (String, KeySym) (SomeAction H)]
parseSubmaps ks0 =
  let sanitized = [(L.words s, a) | (s, a) <- ks0] :: [([String], SomeAction H)]

      keypaths :: [([(String, KeySym)], SomeAction H)]
      keypaths = do
        (keyseq, a) <- sanitized -- ([String], a)
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

-- * Spawning processes

data LaunchProgram = LaunchProgram String [String]
  deriving (Show, Generic)

instance (MonadIO m, MonadReader env m, MonadLogger m) => IsAction m LaunchProgram where
  runner (LaunchProgram cmd args) = do
    log' $ display $ "[launch] " <> toText cmd <> " " <> tshow args
    void $ spawnProcess cmd args

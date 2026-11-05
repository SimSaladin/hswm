{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Util.RofiPrompt
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.RofiPrompt (
  module HSWM.Util.RofiPrompt,
  module HSWM.Util.Rofi.Run,
) where

import Data.List qualified as L
import HSWM.Util.PangoMarkup (FromText (..))
import HSWM.Util.PangoMarkup qualified as P
import HSWM.Util.Rofi.Run

import Data.Typeable

-- * Dmenu prompts

-- | For dmenu usage
dmenuPrompt :: (Default a) => RofiPromptConfig a 's'
dmenuPrompt = def & dmenuMode .~ True

-- | Select one of the options.
selectPrompt ::
  forall s i m.
  (RofiRunnable m i 'i' [Int], i ~ [P.Markup], Typeable s) =>
  RofiPromptConfig i 'i'
  -> [(s, P.Markup)]
  -> m (Maybe s)
selectPrompt pc vals = map snd vals --?>> pconf :-->> select
  where
    pconf :: RofiPromptConfig [P.Markup] 'i'
    pconf =
      pc
        & noCustomInput .~ True
        & promptMessage . filtered (== "") .~ "Select " ++ show (typeRep vals)
    select (x : _) = pure $ map fst vals L.!? x
    select [] = pure Nothing

-- * Mode prompts

modePromptWith :: RofiPromptConfig i o -> Mode -> RofiPromptConfig () '_'
modePromptWith pc mo =
  pc
    & showMode ?~ mo
    & modes <>~ [mo]
    & dmenuMode .~ False
    & withHistory' Nothing

modePrompt :: Mode -> RofiPromptConfig () '_'
modePrompt mo = def & showMode ?~ mo & modes <>~ [mo]

-- * Prompt history

withHistory' :: Maybe (PromptHistory i) -> RofiPromptConfig i' o -> RofiPromptConfig i o'
withHistory' hist pc = pc{history = hist}

-- | Add history management to an item.
withHistory ::
  forall i o.
  String
  -- ^ History key
  -> HistoryRestore i
  -> (i -> i -> i)
  -- ^ merge history to other input
  -> (LazyText -> Maybe LazyText) -- save to history
  -> RofiPromptConfig i o
  -> RofiPromptConfig i o
withHistory key fun hmerge save =
  history
    ?~ HistoryUsing
      { historyKey = key
      , historyRestore = fun
      , historyMerge = hmerge
      , historyEncode = save
      }

-- | History with the input/output rows directly
withLineHistory :: (i ~ [a], FromText a, Eq a) => String -> RofiPromptConfig i o -> RofiPromptConfig i o
withLineHistory key =
  withHistory
    key
    (map fromTextLazy)
    (\inp his -> inp <> (L.nub his L.\\ inp))
    Just

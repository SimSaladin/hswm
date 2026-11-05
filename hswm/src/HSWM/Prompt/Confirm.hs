-- |
-- Module      : HSWM.Prompt.Confirm
-- Description : Confirmation prompts
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- (Longer desription of module.)
module HSWM.Prompt.Confirm where

import HSWM
import HSWM.Util.RofiPrompt

-- | Ask for confirmation before proceeding with an action.
confirmPrompt :: RofiPromptConfig i o -> String -> H () -> H ()
confirmPrompt pc text act = selectPrompt @Bool (pc & pconf) values ++> (`when` act)
  where
    pconf =
      clearTypeParams
        &+ prompt .~ "Confirm [y/n]"
        &+ promptMessage .~ text
    values = [(True, "yes"), (False, "no")]

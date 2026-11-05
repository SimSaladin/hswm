{-# LANGUAGE PartialTypeSignatures #-}
{-# OPTIONS_GHC -Wno-typed-holes #-}

-- |
-- Module      : HSWM.Prompt.Windows
-- Description : (No description)
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- (Longer desription of module.)
module HSWM.Prompt.Windows where

import Data.List qualified as L
import Data.Map qualified as M
import HSWM hiding ((-->>))
import HSWM.StackSet qualified as W
import HSWM.Util.PangoMarkup qualified as P
import HSWM.Util.RofiPrompt

-- | Focus the selected window.
windowPromptFocusSelected :: RofiPromptConfig i 'i' -> H ()
windowPromptFocusSelected pc = windowPrompt pc' $ \rw -> do
  windows $ W.focusWindow rw
  manageDirty
  where
    pc' = pc & promptMessage .~ "Focus a window (any workspace)"

-- | Shift the specified window to this tag.
windowPromptShiftHere :: RofiPromptConfig i 'i' -> H ()
windowPromptShiftHere pc = windowPrompt pc' $ \rw -> do
  windows $ \ws -> W.shiftWin (W.currentTag ws) rw ws
  manageDirty
  where
    pc' = pc & promptMessage .~ "Shift a window to this workspace"

-- | Prompt for a window and run a command with the selected window.
windowPrompt :: RofiPromptConfig i 'i' -> (RiverWindow -> H ()) -> H ()
windowPrompt pc operation = do
  (input, getResponse) <- getWindowsInput
  void $ input -->> pc' :-->> doApply . getResponse
  where
    pc' =
      pc
        & clearTypeParams @(RofiColumns [(_, _)]) @'i'
        & noCustomInput .~ True
        & prompt .~ "Select window"

    doApply rw = do
      logInfo $ "window prompt: focusing the chosen window" :# ["window" .= rw]
      operation rw

getWindowsInput :: H (RofiColumns [(_, _)], _)
getWindowsInput = do
  (wss, wins) <- runInHS $ (,) <$> withWindowSet (return . W.workspaces) <*> use _windows
  let columnNames = ("PID", "Workspace", "AppID", "Title")
      findTarget = fst . (rows L.!!) . subtract 1
      fmtWindow ws w =
        ( maybe "-" P.fromShow w.unreliablePid
        , P.text (W.tag ws)
        , P.bold w.appId
        , "\"" <> P.text w.title <> "\""
        )
      rows = do
        ws <- wss
        rw <- W.integrate' (W.stack ws)
        Just w <- [M.lookup rw wins]
        return (rw, fmtWindow ws w)
      input =
        columnsFreezeRow 0 . withColumns $
          columnNames : map snd rows
            & P.justifyColumn _1 P.JustifyR ' '
            & P.justifyColumn _2 P.JustifyC ' '
            & P.justifyColumn _3 P.JustifyL ' '
            & P.justifyColumn _4 P.JustifyL ' '
  return (input, findTarget)

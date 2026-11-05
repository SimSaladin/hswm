-- |
-- Module      : HSWM.Prompt.Bindings
-- Description : Keybindings releated prompts
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Prompt.Bindings where

import Data.List qualified as L
import Data.Text qualified as T
import HSWM hiding ((-->>))
import HSWM.Types.KeyBindings qualified as KB
import HSWM.Util.PangoMarkup qualified as P
import HSWM.Util.RofiPrompt

-- | Prompt with all key bindings selectable
bindsPrompt :: RofiPromptConfig i 'i' -> H ()
bindsPrompt pcfg = do
  binds <- view (config . keyBindings) <&> renderBindings . KB.flatBindings
  void $ mkInput binds -->> pcfg' :-->> doaction binds
  where
    pcfg' =
      pcfg
        & clearTypeParams @(RofiColumns [(_, _)]) @'i'
        & prompt .~ "key binding"
        & promptMessage .~ "Select a key binding to execute"

    columnNames = ("Groups", "Key", "Description")

    mkInput binds =
      columnsFreezeRow 0 $
        withColumns $
          columnNames
            : [(P.text cats, P.bold mk, P.italic desc) | (_, (cats, mk, desc)) <- binds]
            & P.justifyColumn _1 P.JustifyL ' '
            & P.justifyColumn _2 P.JustifyL ' '

    renderBindings :: [([XBKey], SomeAction H)] -> [(SomeAction H, (Text, Text, String))]
    renderBindings binds =
      L.sortBy
        (comparing snd)
        [ (a, (ppCategories, ppKey, ppAction))
        | (xk, a) <- L.sortOn (map (ppXBKey @String) . fst) binds
        , let ppCategories = T.intercalate "," $ map toText $ actionCategories (Proxy @H) a
        , let ppKey = T.unwords $ map (ppXBKey @Text) xk
        , let ppAction = actionDescription (Proxy @H) a
        ]

    doaction binds (x :: Int) = do
      logInfo $ "binds prompt" :# ["res" .= tshow x]
      case binds ^.. ix (x - 1) of
        [(k, _)] -> runner k
        _ -> return ()

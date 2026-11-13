-- |
-- Module      : HSWM.Prompt.Qutebrowser
-- Description : Qutebrowser starter
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- (Longer desription of module.)
module HSWM.Prompt.Qutebrowser where

import Data.Text qualified as T
import HSWM hiding ((-->>))
import HSWM.Util.RofiPrompt
import System.Environment qualified as ENV

-- | Start a specific (or new) qutebrowser session as systemd user service.
qutebrowserPrompt :: RofiPromptConfig [Text] UserStrings -> H ()
qutebrowserPrompt pcfg = do
  dataHome <- io $ ENV.lookupEnv "XDG_DATA_HOME" <&> fromMaybe "/unknown"
  (_, out, _) <-
    readProcess $
      proc
        "find"
        [ dataHome ++ "/qutebrowser/"
        , "-maxdepth"
        , "1"
        , "-mindepth"
        , "1"
        , "-type"
        , "d"
        , "!"
        , "-name"
        , ".*"
        , "!"
        , "-name"
        , "greasemonkey"
        , "!"
        , "-name"
        , "qutebrowser"
        , "-printf"
        , "%P\n"
        ]

  let input :: [Text]
      input = T.lines $ decodeUtf8Lenient $ out ^. strict

  void $ input -->> pcfg :-->> launch
  where
    launch name = do
      logInfo $ "qutebrowser launch" :# ["instance" .= name]
      sdSpawnProcess (def & unit' .~ "qutebrowser@" ++ name) "qutebrowser" ["-r", name]

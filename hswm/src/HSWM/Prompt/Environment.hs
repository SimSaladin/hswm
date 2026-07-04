-- |
-- Module      : HSWM.Prompt.Environment
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Prompt.Environment
  ( environPrompt
  ) where

import           HSWM
import qualified HSWM.Util.PangoMarkup as P
import qualified HSWM.Util.RofiPrompt as RP

import qualified Data.ByteString.Lazy.Char8 as BLC8
import qualified Data.List as L
import qualified Data.Map as M
import qualified System.Environment as ENV

environPrompt :: RP.RofiPromptConfig RP.FilterS -> H ()
environPrompt pc = do
  varsEnv <- io ENV.getEnvironment
  varsSD  <- map parseLine . lines <$> runUserSD ["show-environment"]

  let varsMap = M.unionWith (\(e1, s1) (e2, s2) -> (e1 <|> e2, s1 <|> s2))
        (M.fromList [ (k, (Nothing, Just v)) | (k, v) <- varsSD ])
        (M.fromList [ (k, (Just v, Nothing)) | (k, v) <- varsEnv ])

      rows =
        [ P.render $ P.bold (P.escape k)
          <> maybe mempty (\x -> "=" <> P.escape x) vEnv
          <> (if vEnv /= vSD then maybe mempty (\v -> "=" <> P.escape v) vSD else mempty)
          <> (if isNothing vSD then " " <> P.italic "(not in systemd user env)" else mempty)
          <> (if isNothing vEnv then " " <> P.italic "(not in WM env)" else mempty)
        | (k, (vEnv, vSD)) <- M.toList varsMap]

  let pc' = pc & RP.prompt .~ "Set env variable"
               -- & RP.outputFormat .~ RP.FilterS
  RP.rofiRun' pc' rows >>= (`whenJust` process)

process :: String -> H ()
process input = do
  logInfo $ "environ prompt" :# [ "input" .= input ]
  case L.span (/= '=') input of
    ("", _) -> return ()
    (name, "") -> do
      logInfo $ "Unset environment variable" :# [ "name" .= name ]
      io $ ENV.unsetEnv name
      void $ runUserSD [ "unset-environment", name ]
    (name, '=' : value) -> do
      logInfo $ "Set environment variable" :# [ "name" .= name, "value" .= value ]
      io $ ENV.setEnv name value
      void $ runUserSD [ "set-environment", name ++ "=" ++ value ]
    _ -> return ()

parseLine :: String -> (String, String)
parseLine line =
  let (key, rest) = L.break (== '=') line
   in case rest of
        ('=' : val) -> (key, val)
        _           -> (key, "") -- fallback in case there's no '='

runUserSD :: MonadIO m => [String] -> m String
runUserSD args = do
  (_, out, _) <- readProcess $ proc "systemctl" $ ["--user", "--no-block", "--no-pager"] ++ args
  return $ BLC8.unpack out

-- |
-- Module      : HSWM.Prompt.Environment
-- Description : Rofi prompts for fiddling with environment variables.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Prompt.Environment (
  environPrompt,
) where

import HSWM hiding ((-->>))
import HSWM.Util.PangoMarkup ((~++))
import HSWM.Util.PangoMarkup qualified as P
import HSWM.Util.RofiPrompt
import HSWM.Util.RofiPrompt qualified as RP

import Data.ByteString.Lazy.Char8 qualified as BLC8
import Data.List qualified as L
import Data.Map qualified as M
import System.Environment qualified as ENV

-- TODO use this and finish
data EnvPrompt = EnvPrompt
  { inputFilter :: !(String -> Bool)
  , inputCallerEnv :: !Bool
  , inputSystemdUser :: !Bool
  }
  deriving (Generic)

instance Default EnvPrompt where
  def =
    EnvPrompt
      { inputFilter = const True
      , inputCallerEnv = True
      , inputSystemdUser = True
      }

type ARow = (String, InputRowAttrs)

environPrompt :: EnvPrompt -> RP.RofiPromptConfig i SelectValues -> H ()
environPrompt cfg pc = do
  varsEnv <- if cfg.inputCallerEnv then io ENV.getEnvironment else pure mempty
  varsSD <- if cfg.inputSystemdUser then map parseLine . lines <$> runUserSD ["show-environment"] else mempty
  let varsMap =
        M.unionWith
          (\(e1, s1) (e2, s2) -> (e1 <|> e2, s1 <|> s2))
          (M.fromList [(k, (Nothing, Just v)) | (k, v) <- varsSD])
          (M.fromList [(k, (Just v, Nothing)) | (k, v) <- varsEnv])

      rows :: [ARow]
      rows = do
        (vname, (mbValInEnv, mbValInSD)) <- M.toList varsMap
        case (mbValInEnv, mbValInSD) of
          (Just valInEnv, Just valInSD)
            | valInEnv == valInSD -> [out vname valInEnv "synced" | cfg.inputFilter vname]
            | otherwise -> [out vname v s | cfg.inputFilter vname, (v, s) <- [(valInEnv, "in process"), (valInSD, "in systemd")]]
          (Just val, _) -> [out vname val "only in process" | cfg.inputFilter vname]
          (_, Just val) -> [out vname val "only in systemd" | cfg.inputFilter vname]
          _ -> error "empty"
      pc' :: RP.RofiPromptConfig [ARow] SelectValues
      pc' =
        pc
          & clearTypeParams
          & RP.prompt .~ "Set env variable"
          & RP.promptMessage .~ "\"VAR=VALUE\" to set the value of $VAR. \"VAR\" to unset the variable."

  void $ rows -->> pc' :-->> process
  where
    out :: String -> String -> String -> ARow
    out k v notes =
      let disp = P.bold k <> "=" ~++ v <> "\t" <> P.italic ("(" ~++ notes <> ")")
          sel = k <> "=" <> v
       in (sel, def & display .~ disp)

process :: String -> H ()
process input = do
  logInfo $ "environ prompt" :# ["input" .= input]
  case L.span (/= '=') input of
    ("", _) -> return ()
    (name, "") -> do
      logInfo $ "Unset environment variable" :# ["name" .= name]
      io $ ENV.unsetEnv name
      void $ runUserSD ["unset-environment", name]
    (name, '=' : value) -> do
      logInfo $ "Set environment variable" :# ["name" .= name, "value" .= value]
      io $ ENV.setEnv name value
      void $ runUserSD ["set-environment", name ++ "=" ++ value]
    _ -> return ()

parseLine :: String -> (String, String)
parseLine line =
  let (key, rest) = L.break (== '=') line
   in case rest of
        ('=' : val) -> (key, val)
        _ -> (key, "") -- fallback in case there's no '='

runUserSD :: (MonadIO m) => [String] -> m String
runUserSD args = do
  (_, out, _) <- readProcess $ proc "systemctl" $ ["--user", "--no-block", "--no-pager"] ++ args
  return $ BLC8.unpack out

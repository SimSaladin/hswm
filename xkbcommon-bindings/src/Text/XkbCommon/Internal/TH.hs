{-# LANGUAGE TemplateHaskellQuotes #-}
{-# LANGUAGE CPP #-}
-- |
-- Module      : Text.XkbCommon.Internal.TH
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Text.XkbCommon.Internal.TH where

import           Language.Haskell.TH
import           Language.Haskell.TH.Syntax

autogenDir :: FilePath
autogenDir = AUTOGEN_DIR

mkKeys :: Name -> FilePath -> String -> (String -> String) -> (String -> String) -> Q [Dec]
mkKeys ty filename hdr getVal getName = do
  let keysymsFile = autogenDir ++ "/" ++ filename
  addDependentFile keysymsFile
  keysyms <- fmap lines $ runIO $ readFile keysymsFile
  mapM (go . words) keysyms
    where
      go (ks : descs) = do
        let name = mkName $ getName ks
            withDoc = if null descs then id else withDecDoc (unwords descs)
        withDoc $ forImpD cApi unsafe (hdr ++ " value " ++ getVal ks) name (conT ty)

      go [] = undefined

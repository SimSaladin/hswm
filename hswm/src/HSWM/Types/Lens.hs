{-# LANGUAGE ViewPatterns #-}

-- |
-- Module      : HSWM.Types.Lens
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Lens where

import Language.Haskell.TH
import Data.Char

-- | This uses the same record field names, you want to use @NoFieldSelectors@ with this.
makeLenses' :: [Name] -> Q [Dec]
makeLenses' = fmap join . mapM (makeLensesWith myLensRules)

myLensRules :: LensRules
myLensRules = classyRules & lensField .~ getName
  where
    getName (nameBase -> ty) _ (nameBase -> n)
      -- sub classes or such, prefix
      | n `elem` [ "size", "position", "new", "name" ]
      = [TopName $ mkName $ (ty & _head %~ toLower) ++ (n & _head %~ toUpper)]

      -- TODO conflicts
      | n `elem` [ "river_seat" ] = []
      -- prefix short/common fields with _
      | n `elem` [ "x", "y", "node" ] = [TopName $ mkName $ "_" ++ n]
      | otherwise = [TopName $ mkName n]

{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FunctionalDependencies #-}

-- |
-- Module      : Distribution.HsBindgen.Lens
-- Description : Lenses
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Distribution.HsBindgen.Lens where

import qualified Distribution.HsBindgen.Hooks as H
-- import qualified Distribution.HsBindgen.Types as H

import Lens.Micro
import Lens.Micro.TH
import Language.Haskell.TH
import Data.Char

concat <$> mapM (makeLensesWith (classyRules & lensClass .~ const Nothing & lensField .~ (\_ _ n ->
  case nameBase n of
    b@(x : xs) -> [MethodName (mkName $ "Has" ++ toUpper x : xs) (mkName b)]
    _ -> error "empty")))
  [ ''H.HsBindGen
  ]


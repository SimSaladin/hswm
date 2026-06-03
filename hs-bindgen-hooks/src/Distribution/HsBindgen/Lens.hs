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
import qualified Distribution.HsBindgen.Types as H

import Lens.Micro
import Lens.Micro.TH
import Language.Haskell.TH

concat <$> mapM (makeLensesWith (classyRules & lensField .~ (\_ _ n -> [TopName $ mkName $ nameBase n])))
  [ ''H.HsBindGenSetup
  , ''H.HsBindGen
  , ''H.ProtocolSpec
  ]


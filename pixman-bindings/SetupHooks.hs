{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import Distribution.HsBindgen.Hooks
import Distribution.Simple.SetupHooks (SetupHooks)
import Distribution.Wayland.Hooks
import Prelude

setupHooks :: SetupHooks
setupHooks = bindgenHooks ([pixmanSpec] :: [HsBindGen])

pixmanSpec :: HsBindGen
pixmanSpec =
  newHsBindGen "Pixman.Generated" [makeHeader "pixman.h"]
    & genGlobal
      .~ return False

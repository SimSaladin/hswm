{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StaticPointers #-}
{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import Distribution.HsBindgen.Hooks
import Distribution.Simple.SetupHooks
import Distribution.Wayland.Hooks

setupHooks :: SetupHooks
setupHooks = bindgenHooks ([pixmanSpec] :: [HsBindGen])

pixmanSpec :: HsBindGen
pixmanSpec =
  newHsBindGen "Pixman.Generated" [makeHeader "pixman.h"]
    & genGlobal
    .~ pure False

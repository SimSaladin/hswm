{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StaticPointers    #-}
{-# LANGUAGE DisambiguateRecordFields #-}

{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import           Distribution.Wayland.Hooks
import           Distribution.Simple.SetupHooks

setupHooks :: SetupHooks
setupHooks = bindgenHooks ([ pixmanSpec ] :: [HsBindGen])

pixmanSpec :: HsBindGen
pixmanSpec = newHsBindGen "Pixman.Generated" [ makeHeader "pixman.h" ] & genGlobal .~ pure False

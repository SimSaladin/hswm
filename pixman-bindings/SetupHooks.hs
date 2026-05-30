{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedStrings   #-}

{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import           Distribution.Simple.SetupHooks
import           Distribution.Utils.Path

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks def
  { sources = [ pixmanSpec ] }

pixmanSpec :: HsBindGen
pixmanSpec = def
  { moduleName     = "Pixman.Generated"
  , headers        = [ makeSymbolicPath "pixman.h" ]
  , programSlicing = Just True
  , genGlobal      = Just False
  }

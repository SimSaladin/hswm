{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE StaticPointers #-}


{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import           Distribution.Simple.SetupHooks
import           Distribution.Utils.Path

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks (static ()) def
  { sources = [ pixmanSpec ] }

pixmanSpec :: HsBindGen
pixmanSpec = def
  { moduleName = "Pixman.Generated"
  , headers    = [ makeSymbolicPath "pixman.h" ]
  , genGlobal  = Just False
  }

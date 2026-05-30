{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedStrings   #-}

{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import           Distribution.Simple.SetupHooks

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks def
  { modulesSimple = [ pixmanSpec ] }

pixmanSpec :: HsBindGen
pixmanSpec = def
  { headers = [ "pixman.h" ]
  , moduleName = "Pixman.Generated"
  , uniqueId = "pixman"
  , programSlicing = Just True
  , genGlobal = Just False
  }

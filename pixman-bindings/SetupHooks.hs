{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StaticPointers    #-}

{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import           Distribution.Wayland.Hooks
import           Distribution.Simple.SetupHooks
import           Distribution.Utils.Path

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks def
  { sources = [ pixmanSpec ] }

pixmanSpec :: HsBindGen
pixmanSpec = def
  { moduleName = pure "Pixman.Generated"
  , headers    = [ makeHeader "pixman.h" ]
  , genGlobal  = pure False
  }

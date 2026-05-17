{-# LANGUAGE DeriveAnyClass      #-}
{-# LANGUAGE DerivingStrategies  #-}
{-# LANGUAGE LambdaCase          #-}
{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE RecordWildCards     #-}
{-# LANGUAGE StaticPointers      #-}

{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import           Distribution.Simple.SetupHooks
import Distribution.HsBindgen.Hooks

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks [ pixmanSpec ]

pixmanSpec :: HsBindGen
pixmanSpec = bindGenDef
  { headers = [ "pixman.h" ]
  , moduleName = "Pixman.Generated"
  , uniqueId = "pixman"
  , programSlicing = Just True
  , genGlobal = Just False
  }

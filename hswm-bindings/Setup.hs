{-# OPTIONS_GHC -Wall #-}

import Distribution.PackageDescription
import Distribution.Simple
import Distribution.Simple.Setup ( ConfigFlags(configVerbosity), fromFlag)
import Distribution.Simple.Program
import Distribution.Simple.Program.Types
import Distribution.Types.LocalBuildInfo
import Distribution.Types.LocalBuildConfig qualified as LBC
import Distribution.Types.BuildInfo
import Distribution.Types.PackageDescription
import Distribution.Types.Library
import Distribution.Verbosity
import Distribution.Utils.Path

main :: IO ()
main = defaultMainWithHooks $ addHooks simpleUserHooks

addHooks :: UserHooks -> UserHooks
addHooks oldHooks = oldHooks
  { preBuild = addHook $ preBuild oldHooks
  , preRepl = addHook $ preRepl oldHooks
  , postConf = \args cfg pkg lbi -> do
      let verb = fromFlag (configVerbosity cfg)
      runProgram verb make ["all"]
      postConf oldHooks args cfg pkg lbi
  }

addHook :: (args -> flags -> IO HookedBuildInfo) -> args -> flags -> IO HookedBuildInfo
addHook oldFunc args flags = do
  (mOldLHI, oldExesHI) <- oldFunc args flags
  extraCSources <- map makeSymbolicPath . words <$> getProgramOutput verbose make ["proto-code"]
  case mOldLHI of
    Just oldLHI -> do
      let newLHI = oldLHI { cSources = cSources oldLHI ++ extraCSources }
      pure (Just newLHI, oldExesHI)
    Nothing -> do
      let newLHI = emptyBuildInfo { cSources = extraCSources }
      pure (Just newLHI, oldExesHI)

make = simpleConfiguredProgram "make" (FoundOnSystem "make")

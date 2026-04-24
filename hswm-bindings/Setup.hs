import Distribution.Simple
import Distribution.Simple.Program
import Distribution.Simple.Program.Types
import Distribution.Types.LocalBuildInfo
import Distribution.Types.LocalBuildConfig qualified as LBC
import Distribution.Types.BuildInfo
import Distribution.Types.PackageDescription
import Distribution.Types.Library
import Distribution.Verbosity
import Distribution.Utils.Path

main = defaultMainWithHooks simpleUserHooks
  { confHook = myConf

  }

make = simpleConfiguredProgram "make" (FoundOnSystem "make")

myConf a@(description, buildInfo) flags = do
    localBuildInfo <- confHook simpleUserHooks (description, buildInfo) flags
    let lbdescr = localBuildDescr localBuildInfo
    let pbdescr = LBC.packageBuildDescr lbdescr
    let lpdescr = LBC.localPkgDescr pbdescr
    let Just lib = library lpdescr

    --runProgram verbose make ["clean"]
    runProgram verbose make ["all"]
    files <- getProgramOutput  verbose make ["proto-code"]

    let lib' = lib { libBuildInfo = (libBuildInfo lib) { cSources = cSources (libBuildInfo lib) ++ map makeSymbolicPath (words files) } }

    --print $ libBuildInfo lib'

    return $ localBuildInfo {
     localBuildDescr = lbdescr { LBC.packageBuildDescr = pbdescr { LBC.localPkgDescr = lpdescr { library = Just lib' } } }
                            }

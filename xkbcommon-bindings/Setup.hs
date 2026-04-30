{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -Wall -Wno-x-partial #-}

import           Data.String
import           Distribution.Simple
import           Distribution.Simple.Build
import           Distribution.Simple.BuildPaths
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Simple.Program
import           Distribution.Simple.Program.Types
import           Distribution.Simple.Setup (ConfigFlags(configVerbosity), fromFlag)
import           Distribution.Simple.Utils
import           Distribution.Types.BuildInfo
import           Distribution.Types.Library
import qualified Distribution.Types.LocalBuildConfig as LBC
import           Distribution.Types.LocalBuildInfo
import           Distribution.Types.PackageDescription
import           Distribution.Utils.Path (getSymbolicPath)
import           Distribution.Verbosity (Verbosity)
import           System.IO

main :: IO ()
main = defaultMainWithHooks $ addHooks simpleUserHooks

addHooks :: UserHooks -> UserHooks
addHooks oldHooks = oldHooks
  { confHook = addHook $ confHook oldHooks
  , postConf = addPostConfHook $ postConf oldHooks
  }

autogenDirSym :: String
autogenDirSym = "AUTOGEN_DIR"

addHook :: (args -> flags -> IO LocalBuildInfo) -> args -> flags -> IO LocalBuildInfo
addHook oldFunc args flags = do
  oldLBI <- oldFunc args flags
  let autogenDir = getSymbolicPath $ autogenComponentModulesDir oldLBI (head $ componentNameCLBIs oldLBI $ CLibName defaultLibName)
  let extraCppOptions = [ "-D" ++ autogenDirSym ++ "=\"" ++ autogenDir ++ "\"" ]
  let newLBI = modifyLibBuildInfo oldLBI $ \x -> x { cppOptions = cppOptions x ++ extraCppOptions }
  return newLBI

addPostConfHook :: (args -> ConfigFlags -> PackageDescription -> LocalBuildInfo -> IO ()) -> args -> ConfigFlags -> PackageDescription -> LocalBuildInfo -> IO ()
addPostConfHook oldFunc args cfg pkg lbi = do
  let verb = fromFlag (configVerbosity cfg)
  keysymsList <- resolveHeader verb lbi "xkbcommon/xkbcommon-keysyms.h" >>= getKeySymList verb
  keysList <- resolveHeader verb lbi "linux/input-event-codes.h" >>= getEventCodes verb
  withLibLBI pkg lbi $ \_ clbi -> writeAutogenFiles verb lbi clbi
      [ (AutogenFile "keysyms.lst", fromString keysymsList)
      , (AutogenFile "eventcodes.lst", fromString keysList) ]
  oldFunc args cfg pkg lbi

modifyLibBuildInfo :: LocalBuildInfo -> (BuildInfo -> BuildInfo) -> LocalBuildInfo
modifyLibBuildInfo lbi f = lbi { localBuildDescr = lbd { LBC.packageBuildDescr = pbd { LBC.localPkgDescr = pkg { library = fmap g (library pkg) } } } }
  where
    lbd = localBuildDescr lbi
    pbd = LBC.packageBuildDescr lbd
    pkg = LBC.localPkgDescr pbd
    g lib = lib { libBuildInfo = f (libBuildInfo lib) }

withTempCProgram :: String -> (FilePath -> IO a) -> IO a
withTempCProgram hdr f =
#if MIN_VERSION_Cabal(3,15,0)
  withTempFile
#else
  withTempFile "src"
#endif
  "test.c" $ \fp h -> do
      let text = "#include <" ++ hdr ++ ">\nint main(int argc, char** argv) { return 0; }\n"
      hPutStr h text
      hFlush h
      f fp

resolveHeader :: Verbosity -> LocalBuildInfo -> String -> IO FilePath
resolveHeader verb lbi hdr = withTempCProgram hdr $ \fp -> do
  (gcc, _) <- requireProgram verb gccProgram (withPrograms lbi)
  cppOut <- getProgramOutput verb (simpleConfiguredProgram "sh" (FoundOnSystem "sh"))
    [ "-c"
    , programPath gcc ++ " -H -fsyntax-only " ++ fp ++ " 2>&1"
    ]
  mapM_ print $ lines cppOut
  let headerFile = case map words $ lines cppOut of
                     (_ : file : _) : _ -> file
                     _ -> error "resolveHeader"
  putStrLn $ "Using header file: " ++ headerFile
  return headerFile

getKeySymList :: Verbosity -> FilePath -> IO String
getKeySymList verb headerFile = getProgramOutput verb sedProgram
  [ "-ne"
  , "/^#define XKB_KEY_/ s,^.define XKB_KEY_\\(\\S*\\)[^/]*\\(/\\*\\(.*\\)\\*/\\)\\?,\\1 \\3,p"
  , headerFile
  ]

getEventCodes :: Verbosity -> FilePath -> IO String
getEventCodes verb headerFile = getProgramOutput verb sedProgram
  [ "-ne"
  , "/^#define [^_]/ s,^.define \\(\\S*\\)[^/]*\\(/\\*\\(.*\\)\\*/\\)\\?,\\1 \\3,p"
  , headerFile
  ]

sedProgram :: ConfiguredProgram
sedProgram = simpleConfiguredProgram "sed" (FoundOnSystem "sed")

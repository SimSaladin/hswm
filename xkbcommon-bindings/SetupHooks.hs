{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE StaticPointers #-}
{-# OPTIONS_GHC -Wall #-}


module SetupHooks (setupHooks) where

import           Distribution.Compat.Prelude
import           Distribution.ModuleName (ModuleName, toFilePath)
import           Distribution.Pretty
import           Distribution.Simple.Build (AutogenFile(..), writeAutogenFiles)
import           Distribution.Simple.Program (gccProgram, programInvocation, requireProgram)
import           Distribution.Simple.Program.Run (getProgramInvocationOutputAndErrors)
import           Distribution.Simple.SetupHooks (BuildHooks(..), Command,
                                                 Dict(..), LocalBuildInfo, Location(..),
                                                 PreBuildComponentInputs(..), ProgramLocation(..),
                                                 Rules, SetupHooks(..), TargetInfo(..), Verbosity,
                                                 Component(..),
                                                 autogenComponentModulesDir,
                                                 buildingWhatVerbosity, mkCommand, noSetupHooks,
                                                 registerRule_, rules, staticRule)
import           Distribution.Simple.Utils (die', notice, toUTF8LBS, withTempFile)
import           Distribution.Types.LocalBuildInfo (withPrograms)
import           Distribution.Utils.IOData
import           Distribution.Utils.Path

import           Control.Monad
import qualified Data.List as L

setupHooks :: SetupHooks
setupHooks = noSetupHooks
  { buildHooks = mempty { preBuildComponentRules = Just myPreBuildRules } }

myGenerated :: [Generated]
myGenerated =
  [ (mkGenerated "Text.XkbCommon.KeySyms" "KeySym" "xkbcommon/xkbcommon-keysyms.h") -- system package "libxkbcommon"
    { sStripPrefix = "XKB_KEY_"
    , sAddPrefix = "key_"
    , sImports = [ "Text.XkbCommon.KeySym" ]
    }
  , (mkGenerated "Text.XkbCommon.EventCodes" "Word32" "linux/input-event-codes.h") -- system package "linux-headers"
    { sAddPrefix = "_"
    , sImports = [ "Data.Word" ]
    }
  ]

data Generated = Generated
  { sModule :: ModuleName
  , sType :: String -- ^ E.g. @''Word32@
  , sHeader :: String
  , sStripPrefix :: String
  , sAddPrefix :: String
  , sImports :: [String]
  } deriving (Show, Generic, Binary)

mkGenerated :: ModuleName -> String -> FilePath -> Generated
mkGenerated mo ty hdr = Generated mo ty hdr "" "" []

myPreBuildRules :: Rules PreBuildComponentInputs
myPreBuildRules = rules (static ()) $ \env -> when (buildIsLib env) $ do
  let lbi = env.localBuildInfo
      clbi = env.targetInfo.targetCLBI
  forM_ myGenerated $ \gen ->
    registerRule_ (fromString $ show gen.sModule) $ staticRule (generateCmd (env, gen)) []
      [Location (autogenComponentModulesDir lbi clbi) (makeRelativePathEx (toFilePath gen.sModule) <.> "hs")]
  where
    buildIsLib x | CLib{} <- x.targetInfo.targetComponent = True
                 | otherwise = False

generateCmd :: (PreBuildComponentInputs, Generated) -> Command (PreBuildComponentInputs, Generated) (IO ())
generateCmd = mkCommand (static Dict) $ static \(env, gen) -> do
  let lbi = env.localBuildInfo
      clbi = env.targetInfo.targetCLBI
      verb = buildingWhatVerbosity env.buildingWhat
  defines <- getDefines verb lbi gen
  writeAutogenFiles verb lbi clbi [(AutogenModule gen.sModule "hs", toUTF8LBS defines)]

getDefines :: Verbosity -> LocalBuildInfo -> Generated -> IO String
getDefines verb lbi gen = do
  headerFile <- resolveHeader verb lbi gen
  contents <- readFile headerFile
  return $! unlines $
      [ "{-# LANGUAGE CApiFFI #-}"
      , "-- |"
      , "-- Module      : " ++ prettyShow gen.sModule
      , "-- Description : Bindings to " ++ gen.sHeader
      , "-- Copyright   : (c) Samuli Thomasson, 2026"
      , "-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>"
      , "-- Stability   : unstable"
      , "-- Portability : unportable"
      , "-- Bindings to @" ++ gen.sHeader ++ "@"
      , "module " ++ prettyShow gen.sModule ++ " where"
      ] ++
      [ "import " ++ m | m <- gen.sImports ] ++
      [ getDoc mdesc ++ "foreign import capi unsafe \"" ++ headerFile ++ " value " ++ d ++ "\" " ++ getName d ++ " :: " ++ getType d
         | (d, mdesc) <- parseHeader contents
      ]
    where
      getName d = gen.sAddPrefix ++ fromMaybe d (L.stripPrefix gen.sStripPrefix d)
      getType _ = gen.sType
      getDoc Nothing = ""
      getDoc (Just x) = "-- | " ++ x ++ "\n"

parseHeader :: String -> [(String, Maybe String)]
parseHeader = go . lines where
  go (x : xs)
    | "#define _" `L.isPrefixOf` x = go xs
    | "#define "  `L.isPrefixOf` x = parseDefine x : go xs
    | otherwise = go xs

  go [] = []

parseDefine = go . words where
  go (_: x : xs) = (x, getDoc xs)
  go _ = error "parseDefine"

  getDoc [] = Nothing
  getDoc ("/*" : xs) = Just $ unwords $ getDoc1 xs
  getDoc (_ : xs) = getDoc xs

  getDoc1 ("*/" : _) = []
  getDoc1 (x : xs) = x : getDoc1 xs
  getDoc1 [] = []

resolveHeader :: Verbosity -> LocalBuildInfo -> Generated -> IO FilePath
resolveHeader verb lbi gen = do
  (gcc, _) <- requireProgram verb gccProgram (withPrograms lbi)
  let hdr = gen.sHeader
  withTempCProgram hdr $ \fp -> do
    (_, cppOut, ec) <- getProgramInvocationOutputAndErrors verb $ programInvocation gcc ["-H", "-fsyntax-only", fp]
    unless (ec == ExitSuccess) $ die' verb $ "gcc returned " ++ show ec
    headerFile <- case map words $ lines cppOut of
                       (_ : file : _) : _ -> return file
                       _ -> die' verb $ "failed to locate header file " ++ hdr ++ ": " ++ cppOut
    notice verb $ "Using header file '" ++ headerFile ++ "' for " ++ hdr
    return headerFile

withTempCProgram :: String -> (FilePath -> IO a) -> IO a
withTempCProgram hdr f =
#if MIN_VERSION_Cabal(3,15,0)
  withTempFile
#else
  withTempFile "src"
#endif
  "test.c" $ \fp h -> do
      hPutContents h $ IODataText $ "#include <" ++ hdr ++ ">\nint main(int argc, char** argv) { return 0; }\n"
      f fp

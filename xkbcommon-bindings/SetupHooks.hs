{-# LANGUAGE CPP                      #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE DeriveAnyClass           #-}
{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedRecordDot      #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# LANGUAGE StaticPointers           #-}
{-# OPTIONS_GHC -Wall #-}

module SetupHooks (setupHooks) where

import           Distribution.Compat.Binary
import           Distribution.ModuleName (ModuleName, toFilePath)
import           Distribution.Pretty (prettyShow)
import           Distribution.Simple.Build (AutogenFile(..), writeAutogenFiles)
import           Distribution.Simple.LocalBuildInfo (withPrograms)
import           Distribution.Simple.Program (gccProgram, programInvocation, requireProgram)
import           Distribution.Simple.Program.Run (getProgramInvocationOutputAndErrors)
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils (die', notice, toUTF8LBS, withTempFile)
import           Distribution.Utils.IOData (IOData(..), hPutContents)
import           Distribution.Utils.Path (makeRelativePathEx, (<.>))

import           Control.Monad
import qualified Data.List as L
import           Data.Maybe
import           GHC.Generics (Generic)
import           System.Exit (ExitCode(..))

setupHooks :: SetupHooks
setupHooks = noSetupHooks
  { buildHooks = mempty
    { preBuildComponentRules = Just $ rules (static ()) preBuildHook }
  }

preBuildHook :: PreBuildComponentInputs -> RulesM ()
preBuildHook PreBuildComponentInputs{buildingWhat=flags, localBuildInfo=lbi, targetInfo=tgt}
  | CLibName LMainLibName <- componentName tgt.targetComponent
  = do
    let autogendir = autogenComponentModulesDir lbi tgt.targetCLBI
        mkRule gen = staticRule (action (buildingWhatVerbosity flags, lbi, tgt.targetCLBI, gen)) []
          [Location autogendir (makeRelativePathEx (toFilePath gen.sModule) <.> "hs")]

    -- system package "libxkbcommon"
    registerRule_ "keysyms" $ mkRule GenerateModule
        { sModule = "Text.XkbCommon.KeySyms"
        , sImports = [ "Text.XkbCommon.KeySym" ]
        , sType = "KeySym"
        , sHeader = "xkbcommon/xkbcommon-keysyms.h"
        , sStripPrefix = "XKB_KEY_"
        , sAddPrefix = "key_"
        }

    -- system package "linux-headers"
    registerRule_ "eventcodes" $ mkRule GenerateModule
        { sModule = "Text.XkbCommon.EventCodes"
        , sImports = [ "Data.Word (Word32)" ]
        , sType = "Word32"
        , sHeader = "linux/input-event-codes.h"
        , sAddPrefix = "_"
        , sStripPrefix = ""
        }
  | otherwise = return ()

action = mkCommand (static Dict) $ static \(verb, lbi, clbi, gen) -> do
  defines <- getDefines verb lbi gen
  writeAutogenFiles verb lbi clbi [(AutogenModule gen.sModule "hs", toUTF8LBS defines)]

data GenerateModule = GenerateModule
  { sModule :: ModuleName
  , sImports :: [String]
  , sType :: String -- ^ E.g. @''Word32@
  , sHeader :: String
  , sStripPrefix :: String
  , sAddPrefix :: String
  } deriving (Show, Generic, Binary)

getDefines :: Verbosity -> LocalBuildInfo -> GenerateModule -> IO String
getDefines verb lbi gen = do
  headerFile <- resolveHeader verb lbi gen.sHeader
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

      getDoc (Just x) = "-- | " ++ x ++ "\n"
      getDoc Nothing = ""

parseHeader :: String -> [(String, Maybe String)]
parseHeader = parseLine . lines where
  parseLine (x : xs)
    | "#define _" `L.isPrefixOf` x = parseLine xs
    | "#define "  `L.isPrefixOf` x = parseDefine x : parseLine xs
    | otherwise = parseLine xs
  parseLine [] = []

  parseDefine inp = go $ words inp where
    go (_: x : xs) = (x, getDoc xs)
    go _ = error $ "parseHeader: invalid input: " ++ inp

    getDoc [] = Nothing
    getDoc ("/*" : xs) = Just $ unwords $ getDoc1 xs
    getDoc (_ : xs) = getDoc xs

    getDoc1 ("*/" : _) = []
    getDoc1 (x : xs) = x : getDoc1 xs
    getDoc1 [] = []

resolveHeader :: Verbosity -> LocalBuildInfo -> FilePath -> IO FilePath
resolveHeader verb lbi hdr = do
  (gcc, _) <- requireProgram verb gccProgram (withPrograms lbi)
  let prog = unlines
        [ "#include <" ++ hdr ++ ">"
        , "int main(int argc, char** argv) { return 0; }"
        ]
  withTempCProgram prog $ \fp -> do
    (_, gccErr, ec) <- getProgramInvocationOutputAndErrors verb $ programInvocation gcc ["-H", "-fsyntax-only", fp]
    unless (ec == ExitSuccess) $ die' verb $ "gcc returned " ++ show ec ++ ": " ++ gccErr
    headerFile <- case map words $ lines gccErr of
                       (_ : file : _) : _ -> return file
                       _ -> die' verb $ "Failed to locate header file " ++ hdr ++ ": " ++ gccErr
    notice verb $ "Using header file '" ++ headerFile ++ "' for " ++ hdr
    return headerFile

withTempCProgram :: String -> (FilePath -> IO a) -> IO a
withTempCProgram contents f =
#if MIN_VERSION_Cabal(3,15,0)
  withTempFile
#else
  withTempFile "src"
#endif
  "test.c" $ \fp h -> do
      hPutContents h $ IODataText contents
      f fp

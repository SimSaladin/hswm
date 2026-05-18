{-# LANGUAGE CPP                      #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE DeriveAnyClass           #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedRecordDot      #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# LANGUAGE StaticPointers           #-}
{-# LANGUAGE RecordWildCards          #-}

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
import           Data.Char
import           Data.Function
import qualified Data.List as L
import           Data.Maybe
import           GHC.Generics (Generic)
import           System.Exit (ExitCode(..))
import           Text.Printf

setupHooks :: SetupHooks
setupHooks = mempty
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
        { sModule      = "Text.XkbCommon.KeySyms"
        , sImports     = [ "Text.XkbCommon.KeySym" ]
        , sType        = "KeySym"
        , sHeader      = "xkbcommon/xkbcommon-keysyms.h"
        , sExtra       = ""
        , sHsNameMod   = NmAddPrefix "key_" $ NmStripPrefix "XKB_KEY_" NmId
        , sLookupFn    = Nothing
        , sGroupBy     = Nothing
        }

    -- system package "linux-headers"
    registerRule_ "eventcodes" $ mkRule GenerateModule
        { sModule      = "Text.XkbCommon.EventCodes"
        , sImports     = [ "Data.Word (Word32)" ]
        , sType        = "Word32"
        , sHeader      = "linux/input-event-codes.h"
        , sExtra       = ""
        , sHsNameMod   = NmSnakeCase NmId
        --, sHsNameMod   = NmToLowerHead NmId
        , sLookupFn    = Just "fromEventCode"
        , sGroupBy     = Just '_'
        }

  | otherwise = return ()

      where
        action = mkCommand (static Dict) $ static \(verb, lbi, clbi, gen) -> do
          notice verb $ "Processing: " ++ gen.sHeader
          defines <- getDefines verb lbi gen
          writeAutogenFiles verb lbi clbi [(AutogenModule gen.sModule "hs", toUTF8LBS defines)]

data GenerateModule = GenerateModule
  { sModule       :: ModuleName -- ^ output module name
  , sImports      :: [String] -- ^ modules to import
  , sType         :: String -- ^ Type of forward bindings E.g. @''Word32@
  , sHeader       :: String -- ^ Header file. @foobar.h@
  , sExtra        :: String
  , sHsNameMod    :: NameModifier
  , sLookupFn     :: Maybe String
  , sGroupBy      :: Maybe Char
  } deriving (Show, Generic, Binary)

data NameModifier
  = NmId
  | NmStripPrefix String NameModifier
  | NmAddPrefix String NameModifier
  | NmSnakeCase NameModifier
  | NmToLowerHead NameModifier
  deriving (Show, Generic, Binary)

applyNameModifier :: NameModifier -> String -> String
applyNameModifier = go where
  go NmId                  s = s
  go (NmStripPrefix pre m) s = let x = go m s in fromMaybe x (L.stripPrefix pre x)
  go (NmAddPrefix pre m)   s = pre ++ go m s
  go (NmToLowerHead m)     s = let x = go m s in map toLower (take 1 x) ++ drop 1 x
  go (NmSnakeCase m)       s = let x = go m s in snakeCase False x
    where
      snakeCase cnext (x : xs)
        | x == '_'  = snakeCase True xs
        | cnext     = toUpper x : snakeCase False xs
        | otherwise = toLower x : snakeCase False xs
      snakeCase _ [] = []

getDefines :: Verbosity -> LocalBuildInfo -> GenerateModule -> IO String
getDefines verb lbi gen = do
  headerFile <- resolveHeader verb lbi gen.sHeader
  content <- parseHeader gen headerFile
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
      , "module " ++ prettyShow gen.sModule ++ " where" ]
      ++ [ "import " ++ m | m <- gen.sImports ]
      ++ [ gen.sExtra ]
      ++ [ mkLookupFn nm content | Just nm <- [gen.sLookupFn] ]
      ++ [ forImpD d | Nothing <- [gen.sGroupBy], d <- content ]

      ++ [ unlines $
        [ "\n-- * " ++ L.takeWhile (/= c) d0.cName ++ "\n" ]
          ++ [ mkLookupFn (nm ++ L.takeWhile (/= c) d0.cName) ds | Just nm <- [gen.sLookupFn] ]
          ++ map forImpD ds
            | Just c <- [gen.sGroupBy]
            , ds@(d0:_) <- L.groupBy ((==) `on` L.takeWhile (/= c) . cName) $ L.sortOn (L.takeWhile (/= c) . cName) content ]
    where
      forImpD d@Define{..} =
        "-- | " ++ getDoc d cComment ++ "\n" ++
        printf "foreign import capi unsafe \"%s value %s\"\n  %s :: %s\n" dHeader cName hsName hsType

      getDoc d (Just x) = printf "%s (@%s@)" x d.cName
      getDoc d Nothing = printf "@%s@" d.cName

      mkLookupFn nm ds = unlines $
        [ printf "%s :: %s -> Maybe String" nm gen.sType
        , printf "%s x" nm ] ++
        [ printf "  | x == %s = Just \"%s\"" hsName cName | Define{..} <- ds ] ++
        [ printf "  | otherwise = Nothing" ]

data Define = Define
  { dHeader  :: FilePath
  , cName    :: String
  , cComment :: Maybe String
  , hsName   :: String
  , hsType   :: String
  } deriving (Show, Generic, Binary)

parseHeader :: GenerateModule -> FilePath -> IO [Define]
parseHeader gen hdr = do
  res <- readFile hdr
  return $! parseLine $ lines res
  where
  parseLine (x : xs)
    | "#define _" `L.isPrefixOf` x = parseLine xs
    | "#define "  `L.isPrefixOf` x = parseDefine x : parseLine xs
    | otherwise                    = parseLine xs
  parseLine [] = []

  parseDefine inp = go $ words inp where
    go (_: x : xs) = Define gen.sHeader x (getDoc xs) (getName x) gen.sType
    go           _ = error $ "parseDefine: bad input: " ++ inp

    getName = applyNameModifier gen.sHsNameMod

    getDoc ("/*" : xs) = Just $ unwords $ getDoc1 xs
    getDoc    (_ : xs) = getDoc xs
    getDoc          [] = Nothing

    getDoc1 ("*/" :  _) = []
    getDoc1    (x : xs) = x : getDoc1 xs
    getDoc1          [] = []

-- | Given a header file, find the absolute path to it.
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

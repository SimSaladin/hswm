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

import           Distribution.HsBindgen.Utils

import           Distribution.Compat.Binary (Binary)
import           Distribution.ModuleName (ModuleName)
import           Distribution.Pretty (prettyShow)
import           Distribution.Simple.LocalBuildInfo (withPrograms)
import           Distribution.Simple.Program (gccProgram, programInvocation, requireProgram)
import           Distribution.Simple.Program.Run (getProgramInvocationOutputAndErrors)
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import           Distribution.Types.Library (explicitLibModules)
import           Distribution.Utils.IOData (hPutContents)
import           Distribution.Utils.Path

import qualified System.FilePath as FP
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Char
import           Data.Function
import qualified Data.List as L
import           Data.Maybe
import           GHC.Generics (Generic)
import           System.Exit (ExitCode(..))
import           Text.Printf
import           Data.String

type ActionArgs = (VerbosityFlags, ConfiguredProgram, GenerateModule, Location)

data GenerateModule = GenerateModule
  { sModule       :: ModuleName    -- ^ output module name
  , sImports      :: [String]      -- ^ Import statements
  , sType         :: String        -- ^ Type of forward bindings E.g. @''Word32@
  , sHeader       :: String        -- ^ Header file. @foobar.h@
  , sHsNameMod    :: NameModifier
  , sLookupFn     :: Maybe String
  , sGroupBy      :: Maybe Char
  } deriving (Eq, Show, Generic, Binary)

data NameModifier
  = NmId
  | NmStripPrefix String NameModifier
  | NmAddPrefix String NameModifier
  | NmSnakeCase NameModifier
  | NmToLowerHead NameModifier
  deriving (Eq, Show, Generic, Binary)

data Define = Define
  { dHeader  :: FilePath
  , cName    :: String
  , cComment :: Maybe String
  , hsName   :: String
  , hsType   :: String
  } deriving (Eq, Show, Generic)

setupHooks :: SetupHooks
setupHooks = mempty { buildHooks = mempty { preBuildComponentRules = Just $ rules (static ()) $ myRules settings } }

settings :: [GenerateModule]
settings =
  [ GenerateModule -- system package "libxkbcommon"
      { sModule      = "Text.XkbCommon.KeySyms"
      , sImports     = [ "Text.XkbCommon.KeySym (KeySym)" ]
      , sType        = "KeySym"
      , sHeader      = "xkbcommon/xkbcommon-keysyms.h"
      , sHsNameMod   = NmAddPrefix "key_" $ NmStripPrefix "XKB_KEY_" NmId
      , sLookupFn    = Nothing
      , sGroupBy     = Nothing
      }
  , GenerateModule -- system package "linux-headers"
      { sModule      = "Text.XkbCommon.EventCodes"
      , sImports     = [ "Data.Word (Word32)" ]
      , sType        = "Word32"
      , sHeader      = "linux/input-event-codes.h"
      , sHsNameMod   = NmSnakeCase NmId
      , sLookupFn    = Just "fromEventCode"
      , sGroupBy     = Just '_'
      }
  ]

myRules :: [GenerateModule] -> PreBuildComponentInputs -> RulesM ()
myRules xs PreBuildComponentInputs{buildingWhat=flags, localBuildInfo=lbi, targetInfo=tgt} =
  case tgt.targetComponent of
    CLib lib -> do
      (gcc, _) <- liftIO $ requireProgram verb gccProgram (withPrograms lbi)
      forM_ xs $ \gen -> do
        let loc = Location autogendir $ moduleNameSymbolicPath gen.sModule <.> "hs"
        if gen.sModule `elem` explicitLibModules lib
           then registerRule_ (fromString $ prettyShow gen.sModule) $ staticRule (bindHeaderAction (vflags, gcc, gen, loc)) [] [loc]
           else liftIO $ warn verb $ "Module not configured in cabal, not generating for this component: " ++ prettyShow gen.sModule
    _ -> return ()
  where
      vflags = buildingWhatVerbosity flags
      verb = verbosityFromFlags vflags
      autogendir = autogenComponentModulesDir lbi tgt.targetCLBI

bindHeaderAction :: ActionArgs -> Command ActionArgs (IO ())
bindHeaderAction = mkCommand (static Dict) (static f)
  where
    f (vflags, gcc, gen, loc) = do
      let verb = verbosityFromFlags vflags
          modFile = interpretSymbolicPathCWD $ location loc
      noticeNoWrap verb $ "Processing header '" ++ gen.sHeader ++ "' for module " ++ prettyShow gen.sModule ++ " (file: " ++ modFile ++ ")"
      defines <- getDefines verb gcc gen
      createDirectoryIfMissingVerbose verb True (FP.takeDirectory modFile)
      rewriteFileEx verb modFile defines

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

getDefines :: Verbosity -> ConfiguredProgram -> GenerateModule -> IO String
getDefines verb gcc gen = do
  headerFile <- resolveHeader verb gcc gen.sHeader
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
      , "module " ++ prettyShow gen.sModule ++ " where"
      ]
      ++ [ "import " ++ m | m <- gen.sImports ]

      ++ [ mkLookupFn nm content | Just nm <- [gen.sLookupFn] ]

      ++ [ forImpD d | Nothing <- [gen.sGroupBy], d <- content ]

      ++ [ unlines $ [ "\n-- * " ++ L.takeWhile (/= c) d0.cName ++ "\n" ] ++
                     [ mkLookupFn (nm ++ L.takeWhile (/= c) d0.cName) ds | Just nm <- [gen.sLookupFn] ] ++
                     map forImpD ds
            | Just c <- [gen.sGroupBy]
            , ds@(d0:_) <- L.groupBy ((==) `on` L.takeWhile (/= c) . cName) $ L.sortOn (L.takeWhile (/= c) . cName) content
         ]
  where
    forImpD d@Define{..} =
      printf "-- | %s\nforeign import capi unsafe \"%s value %s\"\n  %s :: %s\n" (getDoc d cComment :: String) dHeader cName hsName hsType

    getDoc d = maybe (printf "@%s@" d.cName) (\x -> printf "%s (@%s@)" x d.cName)

    mkLookupFn nm ds = unlines $
      [ printf "-- | Try to convert values to labels."
      , printf "%s :: %s -> Maybe String" nm gen.sType
      , printf "%s x" nm
      ] ++
      [ printf "  | x == %s = Just \"%s\"" hsName cName | Define{..} <- ds ] ++
      [ printf "  | otherwise = Nothing" ]

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
resolveHeader :: Verbosity -> ConfiguredProgram -> FilePath -> IO FilePath
resolveHeader verb gcc hdr =
  withTempFileContents "test.c" prog $ \fp -> do
    (_, gccErr, ec) <- getProgramInvocationOutputAndErrors verb $ programInvocation gcc ["-H", "-fsyntax-only", fp]
    unless (ec == ExitSuccess) $ die' verb $ "gcc returned " ++ show ec ++ ": " ++ gccErr
    case map words $ lines gccErr of
      (_ : file : _) : _ -> do
        noticeNoWrap verb $ "Using header file '" ++ file ++ "' for " ++ hdr
        return file
      _ -> die' verb $ "Failed to locate header file " ++ hdr ++ ": " ++ gccErr
  where
    prog = unlines
      [ "#include <" ++ hdr ++ ">"
      , "int main(int argc, char** argv) { return 0; }" ]

withTempFileContents :: FilePath -> String -> (FilePath -> IO a) -> IO a
withTempFileContents name contents f =
#if MIN_VERSION_Cabal(3,15,0)
  withTempFile
#else
  withTempFile "src"
#endif
  name $ \fp h -> do
      hPutContents h $ IODataText contents
      f fp

{-# LANGUAGE CPP #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StaticPointers #-}
{-# OPTIONS_GHC -Wall #-}

module SetupHooks where

import Distribution.HsBindgen.Utils

import Distribution.Pretty (prettyShow)
import Distribution.Simple.Program (
  gccProgram,
  programInvocation,
  requireProgram,
 )
import Distribution.Simple.Program.Run (getProgramInvocationOutputAndErrors)

import Distribution.Simple.BuildPaths
import Distribution.Simple.SetupHooks

import qualified Distribution.Compat.CharParsing as P
import Distribution.Parsec
import Distribution.Simple.Utils
import Distribution.Types.Library (explicitLibModules)
import Distribution.Utils.Path

#if MIN_VERSION_Cabal(3,17,0)
#else
import           Distribution.Compat.Binary (Binary)
import           Distribution.ModuleName (ModuleName)
import           Distribution.Simple.LocalBuildInfo (withPrograms)
#endif

import Control.Monad
import Control.Monad.IO.Class
import Data.Char
import Data.Function
import Data.Functor
import qualified Data.List as L
import Data.Maybe
import Data.String
import GHC.Generics (Generic)
import GHC.StaticPtr
import System.Exit (ExitCode (..))
import qualified System.FilePath as FP
import Text.Printf

data GenerateModule = GenerateModule
  { sModule :: ModuleName
  -- ^ output module name
  , sImports :: [String]
  -- ^ Import statements
  , sHeader :: String
  -- ^ Header file. @foobar.h@
  , sLookupFn :: Maybe String
  , sRenderIt :: StaticKey
  -- ^ Macro -> RenderIt
  , sModuleLines :: [String]
  }
  deriving stock (Eq, Show, Generic)

data RenderIt = RenderIt
  { rType :: String
  -- ^ Type of forward bindings E.g. @''Word32@
  , rGroup :: String
  , rName :: String
  }
  deriving stock (Eq, Show, Generic)

instance Binary GenerateModule

type GroupName = String

data ActionArgs = ActionArgs
  { aGenerate :: GenerateModule
  , aResult :: Location
  , aVerbosity :: VerbosityFlags
  }
  deriving stock (Eq, Show, Generic)

instance Binary ActionArgs

setupHooks :: SetupHooks
setupHooks =
  mempty
    { buildHooks =
        mempty
          { preBuildComponentRules = Just $ rules (static ()) $ myRules settings
          }
    }

settings :: [GenerateModule]
settings =
  [ GenerateModule -- system package "libxkbcommon"
      { sModule = "Text.XkbCommon.KeySyms"
      , sImports = ["Text.XkbCommon.KeySym (KeySym)"]
      , sHeader = "xkbcommon/xkbcommon-keysyms.h"
      , sLookupFn = Nothing
      , sRenderIt =
          staticKey $
            static
              \(x :: Macro) ->
                let groupNames =
                      [ "ISO_"
                      , "Arabic_"
                      , "kana_"
                      , "KP_"
                      , "Pointer_"
                      , "Cyrillic_"
                      , "Greek_"
                      , "Thai_"
                      , "Hangul_"
                      , "Armenian_"
                      , "Georgian_"
                      , "braille_"
                      , "XF86"
                      ]
                 in RenderIt
                      { rType = "KeySym"
                      , rGroup = fromMaybe "Other" $ msum [Just $ takeWhile (/= '_') pre | pre <- groupNames, ("XKB_KEY_" ++ pre) `L.isPrefixOf` x.key]
                      , rName = "key_" ++ fromMaybe x.key (L.stripPrefix "XKB_KEY_" x.key)
                      }
      , sModuleLines = []
      }
  , GenerateModule -- system package "linux-headers"
      { sModule = "Text.XkbCommon.EventCodes"
      , sHeader = "linux/input-event-codes.h"
      , sImports = ["Data.Word (Word32)"]
      , sModuleLines =
          [ "-- | Pointer button events"
          , "type Button = Word32"
          ]
      , sLookupFn = Just "fromEventCode"
      , sRenderIt =
          staticKey $
            static
              \(x :: Macro) ->
                let groupName = case L.takeWhile (/= '_') x.key of
                      "BTN" -> "Buttons"
                      s -> s
                 in RenderIt
                      { rType = if groupName == "Buttons" then "Button" else "Word32"
                      , rGroup = groupName
                      , rName = toSnakeCase x.key
                      }
      }
  ]

myRules :: [GenerateModule] -> PreBuildComponentInputs -> RulesM ()
myRules xs PreBuildComponentInputs{buildingWhat = flags, localBuildInfo = lbi, targetInfo = tgt} =
  case tgt.targetComponent of
    CLib lib -> do
      forM_ xs $ \gen -> do
        (gcc, _) <- liftIO $ requireProgram verb gccProgram (withPrograms lbi)
        let res = Location autogendir $ moduleNameSymbolicPath gen.sModule <.> "hs"
        if gen.sModule `elem` explicitLibModules lib
          then do
            registerRule_ (fromString $ prettyShow gen.sModule) $
              dynamicRule
                (static Dict)
                (mkCommand (static Dict) (static getHeaderDeps) (vflags, gcc, gen.sHeader))
                (mkCommand (static Dict) (static bindHeaderAction) (ActionArgs gen res vflags))
                []
                [res]
          else liftIO $ warn verb $ "Module not configured in cabal, not generating for this component: " ++ prettyShow gen.sModule
    _ -> return ()
  where
    vflags = buildingWhatVerbosity flags
    verb = verbosityFromFlags vflags
    autogendir = autogenComponentModulesDir lbi tgt.targetCLBI

getHeaderDeps :: (VerbosityFlags, ConfiguredProgram, FilePath) -> IO ([Dependency], FilePath)
getHeaderDeps (vflags, gcc, hdr) = do
  fp <- resolveHeader verb gcc hdr
  let dep = FileDependency $ Location (makeSymbolicPath "/") (makeRelativePathEx $ drop 1 $ getAbsolutePath fp)
      res = ([dep], getAbsolutePath fp)
  noticeNoWrap verb $ "Header dependencies: " ++ show res
  return res
  where
    verb = verbosityFromFlags vflags

bindHeaderAction :: ActionArgs -> FilePath -> IO ()
bindHeaderAction args@(ActionArgs gen res vflags) headerFile' = do
  let verb = verbosityFromFlags vflags
      modFile = interpretSymbolicPathCWD $ location res
      headerFile = AbsolutePath $ makeSymbolicPath headerFile'
  noticeNoWrap verb $ show args
  noticeNoWrap verb $ "Processing header '" ++ gen.sHeader ++ "' for module " ++ prettyShow gen.sModule ++ " (file: " ++ show headerFile' ++ ")"
  defines <- getDefines verb gen headerFile
  createDirectoryIfMissingVerbose verb True (FP.takeDirectory modFile)
  rewriteFileEx verb modFile defines

toSnakeCase :: String -> String
toSnakeCase = snakeCase False
  where
    snakeCase cnext (x : xs)
      | x == '_' = snakeCase True xs
      | cnext = toUpper x : snakeCase False xs
      | otherwise = toLower x : snakeCase False xs
    snakeCase _ [] = []

getDefines :: Verbosity -> GenerateModule -> AbsolutePath File -> IO String
getDefines verb gen headerFile = do
  content <- parseHeader verb headerFile
  re <- getStatic @(Macro -> RenderIt) gen.sRenderIt

  let mkMacroGroup :: GroupName -> [Macro] -> [String]
      mkMacroGroup gname macros =
        ["{- * " ++ esc gname ++ " -}\n"]
          ++ [forImpD re m | m <- macros]
          ++ [mkLookupFn re (nm ++ gname) macros | gname /= "", Just nm <- [gen.sLookupFn]]
  return $!
    unlines $
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
        ++ ["import " ++ m | m <- gen.sImports]
        ++ gen.sModuleLines
        ++ [mkLookupFn re nm (concatMap snd content) | Just nm <- [gen.sLookupFn]]
        ++ concat [mkMacroGroup (getGroupName re macros) macros | macros@(_ : _) <- grouped re content]
  where
    getStatic :: forall a. StaticKey -> IO a
    getStatic sk = maybe (error "getStatic") deRefStaticPtr <$> unsafeLookupStaticPtr sk

    getGroupName re (x : _) = (re x).rGroup
    getGroupName _ [] = ""

    grouped re xs = L.groupBy ((==) `on` ((.rGroup) . re)) $ L.sortOn ((.rGroup) . re) $ concatMap snd xs

    esc = concatMap $ \case
      c
        | c `elem` ("*<>/\\'`\"@$#-" :: String) -> '\\' : [c]
        | otherwise -> [c]

    forImpD re (m :: Macro) =
      printf
        "{- | %s\n -}\nforeign import capi unsafe \"%s value %s\"\n  %s :: %s\n"
        (getDoc m :: String)
        gen.sHeader
        m.key
        (re m).rName
        (re m).rType

    getDoc m = maybe "" esc m.comment ++ printf "\n\n@%s = %s@" m.key m.value

    mkLookupFn _ _ [] = ""
    mkLookupFn re fnName macros@(m0 : _) =
      unlines $
        [ printf "-- | Try to convert values to labels."
        , printf "%s :: %s -> Maybe String" fnName (re m0).rType
        , printf "%s x" fnName
        ]
          ++ [printf "  | x == %s = Just \"%s\"" (re m).rName m.key | m <- macros]
          ++ [printf "  | otherwise = Nothing"]

parseHeader :: Verbosity -> AbsolutePath File -> IO [(String, [Macro])]
parseHeader verb hdr = do
  res <- readFile $ getAbsolutePath hdr
  case explicitEitherParsec hdrParser res of
    Right xs -> return xs
    Left er -> die' verb er

data Macro = Macro
  { key, value :: String
  , comment :: Maybe String
  }
  deriving (Eq, Show, Read, Generic)

hdrParser :: (CabalParsing m) => m [(String, [Macro])]
hdrParser = parse1
  where
    parse1 = do
      _ <- P.many skipped
      title <- P.optional comment
      case title of
        Just x -> do
          _ <- P.some P.newline
          xs <- P.endBy define (P.some P.newline)
          ((x, xs) :) <$> parse1
        Nothing -> P.eof $> []

    comment =
      P.try $
        ( do
            P.spaces
            _ <- P.string "/*" *> P.munch (== '*') <* P.many hspace
            let trimmed = do
                  P.skipOptional $ P.newline *> P.skipOptional (P.char '*' <* P.notFollowedBy (P.char '/')) *> P.many hspace
                  P.anyChar
            P.manyTill trimmed (P.try (P.spaces *> P.string "*/"))
        )
          P.<?> "comment"

    skipped =
      P.choice
        [ P.try $ void P.newline
        , P.try $ void $ P.string "#ifndef" <* P.manyTill P.anyChar P.newline
        , P.try $ void $ P.string "#define _" <* P.manyTill P.anyChar P.newline
        , P.try $ void $ P.string "#endif" <* P.manyTill P.anyChar P.newline
        ]
        P.<?> "skipped-line"

    hspace = P.satisfy (`elem` (" \t" :: String))

    define = P.try $ do
      _ <- P.string "#define " <* P.many hspace
      key <- P.munch1 (`notElem` (" \t\n" :: String)) <* P.many hspace
      val <- P.many $ P.try $ P.satisfy (/= '\n') <* P.notFollowedBy (P.string "/*")
      mc <- P.optional comment
      return $ Macro key val mc

-- | Given a header file, find the absolute path to it.
resolveHeader :: Verbosity -> ConfiguredProgram -> FilePath -> IO (AbsolutePath File)
resolveHeader verb gcc hdr = do
  noticeNoWrap verb $ "Resolving header: " ++ show hdr
  withTempFileContents "test.c" prog $ \fp -> do
    (_, gccErr, ec) <- getProgramInvocationOutputAndErrors verb $ programInvocation gcc ["-H", "-fsyntax-only", fp]
    unless (ec == ExitSuccess) $ die' verb $ "gcc returned " ++ show ec ++ ": " ++ gccErr
    case map words $ lines gccErr of
      (_ : file : _) : _ -> do
        noticeNoWrap verb $ "Using header file '" ++ show file ++ "' for " ++ hdr
        return $ AbsolutePath $ makeSymbolicPath file
      _ -> die' verb $ "Failed to locate header file " ++ hdr ++ ": " ++ gccErr
  where
    prog =
      unlines
        [ "#include <" ++ hdr ++ ">"
        , "int main(int argc, char** argv) { return 0; }"
        ]

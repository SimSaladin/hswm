{-# LANGUAGE CPP                      #-}
{-# LANGUAGE LambdaCase               #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE DeriveAnyClass           #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedRecordDot      #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# LANGUAGE StaticPointers           #-}
{-# LANGUAGE DisambiguateRecordFields #-}


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
import           Distribution.Parsec
import qualified Distribution.Compat.CharParsing as P

import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Char
import           Data.Function
import           Data.Functor
import qualified Data.List as L
import           Data.Maybe
import           Data.String
import           GHC.Generics (Generic)
import           GHC.StaticPtr
import           System.Exit (ExitCode(..))
import qualified System.FilePath as FP
import           Text.Printf

data GenerateModule = GenerateModule
  { sModule       :: ModuleName    -- ^ output module name
  , sImports      :: [String]      -- ^ Import statements
  , sType         :: String        -- ^ Type of forward bindings E.g. @''Word32@
  , sHeader       :: String        -- ^ Header file. @foobar.h@
  , sHsNameMod    :: Maybe StaticKey -- (StaticPtr (String -> String)) -- NameModifier
  , sLookupFn     :: Maybe String
  , sGroupBy      :: Maybe Char
  } deriving (Eq, Show, Generic, Binary)

type ActionArgs = (VerbosityFlags, GenerateModule, Location)

setupHooks :: SetupHooks
setupHooks = mempty
  { buildHooks = mempty
    { preBuildComponentRules = Just $ rules (static ()) $ myRules settings
    }
  }

settings :: [GenerateModule]
settings =
  [ GenerateModule -- system package "libxkbcommon"
      { sModule      = "Text.XkbCommon.KeySyms"
      , sImports     = [ "Text.XkbCommon.KeySym (KeySym)" ]
      , sType        = "KeySym"
      , sHeader      = "xkbcommon/xkbcommon-keysyms.h"
      , sHsNameMod   = Just $ staticKey $ static \x -> "key_" ++ fromMaybe x (L.stripPrefix "XKB_KEY_" x)
      , sLookupFn    = Nothing
      , sGroupBy     = Nothing
      }
  , GenerateModule -- system package "linux-headers"
      { sModule      = "Text.XkbCommon.EventCodes"
      , sImports     = [ "Data.Word (Word32)" ]
      , sType        = "Word32"
      , sHeader      = "linux/input-event-codes.h"
      , sHsNameMod   = Just $ staticKey $ static toSnakeCase
      , sLookupFn    = Just "fromEventCode"
      , sGroupBy     = Just '_'
      }
  ]

myRules :: [GenerateModule] -> PreBuildComponentInputs -> RulesM ()
myRules xs PreBuildComponentInputs{buildingWhat=flags, localBuildInfo=lbi, targetInfo=tgt} =
  case tgt.targetComponent of
    CLib lib -> do
      forM_ xs $ \gen -> do
        let res = Location autogendir $ moduleNameSymbolicPath gen.sModule <.> "hs"
        if gen.sModule `elem` explicitLibModules lib
           then registerRule_ (fromString $ prettyShow gen.sModule) $
                dynamicRule (static Dict)
                  (mkCommand (static Dict) (static getHeaderDeps) (vflags, withPrograms lbi, gen.sHeader))
                  (mkCommand (static Dict) (static bindHeaderAction) (vflags, gen, res))
                  []
                  [res]
           else liftIO $ warn verb $ "Module not configured in cabal, not generating for this component: " ++ prettyShow gen.sModule
    _ -> return ()
  where
      vflags = buildingWhatVerbosity flags
      verb = verbosityFromFlags vflags
      autogendir = autogenComponentModulesDir lbi tgt.targetCLBI

getHeaderDeps :: (VerbosityFlags, ProgramDb, FilePath) -> IO ([Dependency], FilePath)
getHeaderDeps (vflags, progdb, hdr) = do
    (gcc, _) <- requireProgram verb gccProgram progdb
    fp <- resolveHeader verb gcc hdr
    let dep = FileDependency $ Location (makeSymbolicPath "/") (makeRelativePathEx $ drop 1 $ getAbsolutePath fp)
    return ([dep], getAbsolutePath fp)
  where
      verb = verbosityFromFlags vflags

bindHeaderAction :: ActionArgs -> FilePath -> IO ()
bindHeaderAction (vflags, gen, res) headerFile = do
  let verb = verbosityFromFlags vflags
      modFile = interpretSymbolicPathCWD $ location res
  noticeNoWrap verb $ "Processing header '" ++ gen.sHeader ++ "' for module " ++ prettyShow gen.sModule ++ " (file: " ++ modFile ++ ")"
  defines <- getDefines verb gen headerFile
  createDirectoryIfMissingVerbose verb True (FP.takeDirectory modFile)
  rewriteFileEx verb modFile defines

toSnakeCase :: String -> String
toSnakeCase = snakeCase False
  where
    snakeCase cnext (x : xs)
      | x == '_'  = snakeCase True xs
      | cnext     = toUpper x : snakeCase False xs
      | otherwise = toLower x : snakeCase False xs
    snakeCase _ [] = []

getDefines :: Verbosity -> GenerateModule -> FilePath -> IO String
getDefines verb gen headerFile = do
  content <- parseHeader verb headerFile
  toName <- case gen.sHsNameMod of
              Just key -> maybe (error "hsnamemod") deRefStaticPtr <$> unsafeLookupStaticPtr key
              Nothing -> pure id
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
      ++ [ mkLookupFn toName nm (concatMap snd content) | Just nm <- [gen.sLookupFn] ]
      ++ concat
        [ ("{- * " ++ gname ++ " -}\n")
         : [ forImpD toName m | m <- macros ]
         ++ [ mkLookupFn toName (nm ++ gname) macros | gname /= "", Just nm <- [gen.sLookupFn] ]
         | macros@(_:_) <- grouped content
        , let gname = groupName macros ]
  where
    groupName [] = ""
    groupName (x:_)
      | Nothing <- gen.sGroupBy = ""
      | Just c <- gen.sGroupBy = L.takeWhile (/= c) x.key

    grouped xs
      | Nothing <- gen.sGroupBy = map snd xs
      | Just c <- gen.sGroupBy =
          L.groupBy ((==) `on` L.takeWhile (/= c) . key) $
          L.sortOn (L.takeWhile (/= c) . key) $
          concatMap snd xs

    esc = concatMap $ \case
      '*' -> "\\*"
      c -> [c]

    forImpD toName (m :: Macro) =
      printf "{- | %s\n -}\nforeign import capi unsafe \"%s value %s\"\n  %s :: %s\n"
        (getDoc m :: String)
        gen.sHeader m.key (toName m.key) gen.sType

    getDoc m = maybe "" esc m.comment ++ printf "\n\n@%s = %s@" m.key m.value

    mkLookupFn toName fnName macros = unlines $
      [ printf "-- | Try to convert values to labels."
      , printf "%s :: %s -> Maybe String" fnName gen.sType
      , printf "%s x" fnName
      ] ++
      [ printf "  | x == %s = Just \"%s\"" (toName m.key) m.key | m <- macros ] ++
      [ printf "  | otherwise = Nothing" ]

parseHeader :: Verbosity -> FilePath -> IO [(String, [Macro])]
parseHeader verb hdr = do
  res <- readFile hdr
  case explicitEitherParsec hdrParser res of
    Right xs -> return xs
    Left er -> die' verb er

data Macro = Macro { key, value :: String, comment :: Maybe String }
  deriving (Eq, Show, Read, Generic)

hdrParser :: CabalParsing m => m [(String, [Macro])]
hdrParser = parse1
  where
    parse1 = do
      _     <- P.many skipped
      title <- P.optional comment
      case title of
        Just x -> do
          _  <- P.some P.newline
          xs <- P.endBy define (P.some P.newline)
          ((x, xs) :) <$> parse1
        Nothing -> P.eof $> []

    comment = P.try $ (do
      P.spaces
      _ <- P.string "/*" *> P.munch (== '*') <* P.many hspace
      let trimmed = do
            P.skipOptional $ P.newline *> P.skipOptional (P.char '*' <* P.notFollowedBy (P.char '/')) *> P.many hspace
            P.anyChar
      P.manyTill trimmed (P.try (P.spaces *> P.string "*/"))
                      ) P.<?> "comment"

    skipped = P.choice
      [ P.try $ void P.newline
      , P.try $ void $ P.string "#ifndef"   <* P.manyTill P.anyChar P.newline
      , P.try $ void $ P.string "#define _" <* P.manyTill P.anyChar P.newline
      , P.try $ void $ P.string "#endif"    <* P.manyTill P.anyChar P.newline
      ] P.<?> "skipped-line"

    hspace = P.satisfy (`elem` (" \t" :: String))

    define = P.try $ do
      _   <- P.string "#define " <* P.many hspace
      key <- P.munch1 (`notElem` (" \t\n" :: String)) <* P.many hspace
      val <- P.many $ P.try $ P.satisfy (/= '\n') <* P.notFollowedBy (P.string "/*")
      mc  <- P.optional comment
      return $ Macro key val mc

-- | Given a header file, find the absolute path to it.
resolveHeader :: Verbosity -> ConfiguredProgram -> FilePath -> IO (AbsolutePath File)
resolveHeader verb gcc hdr =
  withTempFileContents "test.c" prog $ \fp -> do
    (_, gccErr, ec) <- getProgramInvocationOutputAndErrors verb $ programInvocation gcc ["-H", "-fsyntax-only", fp]
    unless (ec == ExitSuccess) $ die' verb $ "gcc returned " ++ show ec ++ ": " ++ gccErr
    case map words $ lines gccErr of
      (_ : file : _) : _ -> do
        noticeNoWrap verb $ "Using header file '" ++ file ++ "' for " ++ hdr
        return $ AbsolutePath $ makeSymbolicPath file
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

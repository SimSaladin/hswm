{-# LANGUAGE OverloadedLists #-}

-- |
-- Module      : Distribution.Wayland.Hooks
-- Description : Cabal hooks for generating wayland protocol bindings.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Distribution.Wayland.Hooks where

import           Distribution.HsBindgen.Hooks
import           Distribution.HsBindgen.Utils

import           Distribution.Compat.Binary
import qualified Distribution.Compat.CharParsing as P
import           Distribution.Compat.Lens
import           Distribution.ModuleName
import           Distribution.Parsec
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.LocalBuildInfo
import           Distribution.Utils.Generic
import           Distribution.Utils.Path

import           Control.Applicative
import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Char
import           Data.Foldable
import           Data.Functor
import qualified Data.List as L
import qualified Data.Map.Strict as M
import           Data.Maybe
import           Data.String
import           GHC.Generics (Generic)
import qualified System.FilePath as FP

data ProtocolSpec = ProtocolSpec
  { fullName      :: String -- ^ @river-window-management-v1@
  , baseName      :: String -- ^ @window-management@
  , category      :: String -- ^ @wayland@, @river@, etc.
  , version       :: Maybe Int -- ^ Possible @-v<n>@ suffix
  , stability     :: Stability
  , protocolXML   :: RelativePath DataDir 'File
  -- ^ Relative path of the protocol specification file (.xml)
  , protocolDirs  :: [SymbolicPath Pkg ('Dir DataDir)]
  -- ^ Additional paths in which to look for the the 'protocolXML' file.
  , bindGens      :: M.Map ModuleName HsBindGen
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Binary)

-- |
-- @
-- wayland-viewporter.xml
--
-- protocol/wlr-input-method-unstable-v2.xml
--    =>
--    fullName  : "wlr-input-method-unstable-v2.xml"
--    category  : "wlr"
--    baseName  : "input-method"
--    stability : Unstable
--    version   : Just 2
--    xmlPath   : "protocol/wlr-input-method-unstable-v2.xml"
-- @
instance Parsec ProtocolSpec where
  parsec = do
      P.spaces

      let f dir = ((dir,) <$> P.try pFileBase) <|> g dir

          g prev = do
            dir <- P.munch (/= '/')
            sep <- P.munch1 (== '/')
            f (prev ++ dir ++ sep)

      (dir, (category, (baseName, mstability, version, suffix))) <- f ""

      let fullName = category ++ '-' : baseName ++ maybe "" stability' mstability ++ maybe "" version' version

      return mempty
        { fullName
        , baseName
        , category
        , version
        , stability = maybe (if version == Nothing then Stable else Staging) id mstability
        , protocolXML = normaliseSymbolicPath $
            if take 1 dir /= "/" then makeRelativePathEx dir </> makeRelativePathEx (fullName ++ suffix)
                                 else makeRelativePathEx (fullName ++ suffix)
        , protocolDirs = [ normaliseSymbolicPath $ makeSymbolicPath dir | take 1 dir == "/" ]
        }
    where
      pFileBase = (,) <$> (pCategory <* P.char '-') <*> nameBaseEnd

      nameBaseEnd =
        let go xs = P.try (nameEnd xs) <|> (P.satisfy (\c -> isAsciiAlphaNum c || c == '-') >>= \x -> go (xs ++ [x]))
        in go ""

      nameEnd base = (,,,) base
        <$> P.optional (P.try $ P.char '-' *> pStability)
        <*> P.optional (P.try $ P.char '-' *> pVersion)
        <*> P.string ".xml"

      pCategory  = P.munch1 isAsciiAlphaNum P.<?> "Protocol Category"
      pStability = P.choice [ P.string s $> v | (v, s) <- zip [ Stable, Unstable, Staging ] [ "stable", "unstable", "staging" ] ] P.<?> "Protocol Stability"
      pVersion   = P.char 'v' *> (read <$> P.many P.digit) P.<?> "Protocol Version"

      stability' x = '-' : map toLower (show x)
      version'   x = '-' : 'v' : show x

instance IsString ProtocolSpec where
  fromString str = case eitherParsec str of
                     Right x -> x
                     Left err -> error $ "fromString: " ++ err

data Stability = Unstable | Staging | Stable
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary)

data ProtoResult = InfoMod | EnumHeader | ClientHeader | ServerHeader | PrivateCode
  deriving (Eq, Ord, Enum, Bounded, Show, Read, Generic)
  deriving anyclass (Binary)

getProtoResult :: (RelativePath from 'File -> a) -- ^ autogen .hs/.h
               -> (RelativePath Pkg 'File -> a) -- ^ autogen .c
               -> ProtocolSpec -> ProtoResult -> a
getProtoResult autogenFile cSourceFile spec = \case
  InfoMod      -> autogenFile $ makeRelativePathEx $ toFilePath (toMod spec.fullName) <.> "hs"
  EnumHeader   -> autogenFile $ makeRelativePathEx $ spec.fullName ++ "-enums.h"
  ClientHeader -> autogenFile $ makeRelativePathEx $ spec.fullName ++ "-client-protocol.h"
  ServerHeader -> autogenFile $ makeRelativePathEx $ spec.fullName ++ "-server-protocol.h"
  PrivateCode  -> cSourceFile $ makeRelativePathEx $ spec.fullName ++ "-protocol-private.c"

instance Semigroup ProtocolSpec where
  a <> b = ProtocolSpec
    { fullName     = if b.fullName == "" then a.fullName else b.fullName
    , baseName     = if b.baseName == "" then a.baseName else b.baseName
    , category     = if b.category == "" then a.category else b.category
    , version      = a.version
    , stability    = a.stability
    , protocolXML  = if b.protocolXML == makeRelativePathEx "" then a.protocolXML else b.protocolXML
    , protocolDirs = a.protocolDirs <> b.protocolDirs
    , bindGens     = a.bindGens <> b.bindGens
    }

instance Monoid ProtocolSpec where
  mempty = ProtocolSpec "" "" "" Nothing Unstable (makeRelativePathEx "") [] mempty

instance MkBindRules ProtocolSpec where
  bindTargets spec = M.elems spec.bindGens

  mkBindRules pbci xs = do
    ys <- scannerRules pbci xs
    return $ do
      (spec, rids) <- toList ys
      bgen <- bindTargets spec
      return (bgen, [ RuleDependency $ RuleOutput rid 0 | (_, rid) <- rids ])

fromProtocolXML :: FilePath -> ProtocolSpec
fromProtocolXML file = mempty
  { fullName = base
  -- , baseName = base -- TODO
  , protocolXML = normaliseSymbolicPath $ makeRelativePathEx file
  }
  where
    base = FP.takeBaseName file

preConfPackage :: PreConfPackageInputs -> IO PreConfPackageOutputs
preConfPackage inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  configured <- configurePrograms v progs lbc.withPrograms
  return (noPreConfPackageOutputs inp) { extraConfiguredProgs = configured }
  where
      vflags = fromFlag $ setupVerbosity $ configCommonFlags flags
      v = verbosityFromFlags vflags
      progs = [ "wayland-scanner" ]

preConfComponent :: [ProtocolSpec] -> PreConfComponentInputs -> IO PreConfComponentOutputs
preConfComponent specs pci@PreConfComponentInputs{localBuildConfig=lbc, packageBuildDescr=pbd}
  | CLib{} <- pci.component
  = do
    mdir <- getPkgConfDataDir v lbc.withPrograms "wayland-protocols"
    return $ (noPreConfComponentOutputs pci)
      { componentDiff = buildInfoComponentDiff (componentName pci.component) $ mempty
          & BI.customFieldsBI   .~ [("datadir-wayland-protocols", getAbsolutePath d) | Just d <- [mdir] ]
          & BI.otherModules     .~ mods
          & BI.autogenModules   .~ mods
          & BI.autogenIncludes  .~ includes
          & BI.cSources         .~ extraCSources
      }

  | otherwise = return (noPreConfComponentOutputs pci)

  where
    vflags   = fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags
    v        = verbosityFromFlags vflags
    cbitsdir = {- buildDirPBD pbd </> -} makeSymbolicPath "cbits"

    mods          = [ toMod s.fullName | s <- specs ]
    extraCSources = [ cbitsdir </> getProtoResult undefined id s PrivateCode | s <- specs ]
    includes      = [ getProtoResult id undefined s t | s <- specs, t <- [ EnumHeader, ClientHeader, ServerHeader ] ]


scannerRules :: Traversable t => PreBuildComponentInputs
             -> t ProtocolSpec -> RulesM (t (ProtocolSpec, [(ProtoResult, RuleId)]))
scannerRules pbci specs = do
  (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") pbci.localBuildInfo.localBuildConfig.withPrograms

  forM specs $ \spec -> do
    xml' <- liftIO $ findFileEx v (spec.protocolDirs ++ datadirWL) spec.protocolXML
    let xml = interpretSymbolicPathCWD xml'
    let deps = [FileDependency $ Location (takeDirectorySymbolicPath xml') (makeRelativePathEx $ FP.takeFileName xml)]

    liftIO $ noticeNoWrap v $ "Using protocol XML file " ++ xml  ++ " for " ++ spec.fullName ++ " (" ++ getSymbolicPath spec.protocolXML ++ ")"

    rids <- forM [minBound..maxBound] $ \restype -> do
      let res = getProtoResult (Location autogen) (Location cbits) spec restype
      rid <- registerRule (fromString $ show restype ++ ":" ++ spec.fullName) $
        staticRule (scannerCommand (vflags, scanner, xml', restype, res)) deps [res]
      return (restype, rid)
    return (spec, rids)

  where
    vflags    = buildingWhatVerbosity pbci.buildingWhat
    v         = verbosityFromFlags vflags
    lbi       = pbci.localBuildInfo
    clbi      = targetCLBI pbci.targetInfo
    component = targetComponent pbci.targetInfo
    autogen   = autogenComponentModulesDir lbi clbi
    cbits     = {-componentBuildDir lbi clbi </>-} makeSymbolicPath "cbits"
    datadirWL = component ^. BI.customFieldsBI . getting (map makeSymbolicPath . maybeToList . L.lookup "datadir-wayland-protocols")

toMod :: String -> ModuleName
toMod name = fromString $ "Path_" ++ map f name where
  f '-' = '_'
  f x = x

type ScannerArgs = (VerbosityFlags, ConfiguredProgram, SymbolicPath Pkg File, ProtoResult, Location)

scannerCommand :: ScannerArgs -> Command ScannerArgs (IO ())
scannerCommand = mkCommand (static Dict) $ static scannerAction

scannerAction :: (VerbosityFlags, ConfiguredProgram, SymbolicPath Pkg 'File, ProtoResult, Location) -> IO ()
scannerAction (vflags, scanner, protoXml, restype, res) = do
  createDirectoryIfMissingVerbose v True (FP.takeDirectory dst)
  case restype of
    EnumHeader   -> runProgram v scanner ["--include-core-only", "--strict", "enum-header",   xml, dst]
    ClientHeader -> runProgram v scanner ["--include-core-only", "--strict", "client-header", xml, dst]
    ServerHeader -> runProgram v scanner ["--include-core-only", "--strict", "server-header", xml, dst]
    PrivateCode  -> runProgram v scanner ["--include-core-only", "--strict", "private-code",  xml, dst]
    InfoMod      -> withFileContents xml $ \content -> rewriteFileEx v dst $ unlines
        [ "{-# LANGUAGE MultilineStrings #-}"
        , "module " ++ FP.takeFileName (FP.dropExtension dst) ++ " where"
        , "protoXml :: String"
        , "protoXml ="
        , "  \"\"\""
        , content
        , "  \"\"\""
        ]
 where
   v   = verbosityFromFlags vflags
   xml = interpretSymbolicPathCWD protoXml
   dst = interpretSymbolicPathCWD $ location res

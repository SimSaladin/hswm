{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE PatternSynonyms #-}


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
import           Distribution.Wayland.ProtocolXML

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

pattern Enums, ClientBindings, ServerBindings :: String
pattern Enums = "Enums"
pattern ClientBindings = "Client"
pattern ServerBindings = "Server"

data ProtoResult = InfoMod | EnumHeader | ClientHeader | ServerHeader | PrivateCode
  deriving (Eq, Ord, Enum, Bounded, Show, Read, Generic)
  deriving anyclass (Binary)

-- * PreConfigure

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
          & BI.cSources         .~ extraCSources
      }

  | otherwise = return (noPreConfComponentOutputs pci)

  where
    vflags = fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags
    v = verbosityFromFlags vflags
    mods = map getProtoInfoModule specs
    extraCSources = [ p | s <- specs, p <- getProtoCSources s ]

getProtoInfoModule :: ProtocolSpec -> ModuleName
getProtoInfoModule x = fromString $ "Path_" ++ map fixchar x.fullName where
  fixchar '-' = '_'
  fixchar   c = c

getProtoCSources :: ProtocolSpec -> [SymbolicPath Pkg 'File]
getProtoCSources spec = [makeSymbolicPath $ "cbits" </> spec.fullName ++ "-protocol-private.c"]

getProtoHeader :: ProtocolSpec -> ProtoResult -> RelativePath from 'File
getProtoHeader spec = \case
  EnumHeader   -> makeRelativePathEx $ spec.fullName ++ "-enums.h"
  ClientHeader -> makeRelativePathEx $ spec.fullName ++ "-client-protocol.h"
  ServerHeader -> makeRelativePathEx $ spec.fullName ++ "-server-protocol.h"

getProtoResult :: (RelativePath from 'File -> a) -- ^ autogen .hs/.h
               -> (RelativePath Pkg 'File -> a) -- ^ autogen .c
               -> ProtocolSpec -> ProtoResult -> a
getProtoResult autogenFile cSourceFile spec = \case
  InfoMod      -> autogenFile $ makeRelativePathEx $ toFilePath (getProtoInfoModule spec) <.> "hs"
  EnumHeader   -> autogenFile $ makeRelativePathEx $ spec.fullName ++ "-enums.h"
  ClientHeader -> autogenFile $ makeRelativePathEx $ spec.fullName ++ "-client-protocol.h"
  ServerHeader -> autogenFile $ makeRelativePathEx $ spec.fullName ++ "-server-protocol.h"
  PrivateCode  -> cSourceFile $ makeRelativePathEx $ spec.fullName ++ "-protocol-private.c"

getProtoCSource spec = makeRelativePathEx $ spec.fullName ++ "-protocol-private.c"

-- * File generation

scannerRules :: Traversable t => PreBuildComponentInputs
             -> t ProtocolSpec -> RulesM [(HsBindGen, [Dependency])]
scannerRules pbci specs = do
  (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") pbci.localBuildInfo.localBuildConfig.withPrograms

  -- (ProtocolSpec, [(ProtoResult, RuleId)])
  results <- forM (toList specs) $ \spec -> do
    xml' <- liftIO $ findFileEx v (spec.protocolDirs ++ datadirWL) spec.protocolXML
    let xml = interpretSymbolicPathCWD xml'

    proto <- liftIO $ protocolFromFile xml
    let ifaceNames = [ x.name | x <- proto.interfaces ]
        ifaceDeps = getProtocolInterfaceDeps proto

    liftIO $ notice v $ "Protocol: " ++ proto.name
    liftIO $ notice v $ "Provides: " ++ unwords ifaceNames
    liftIO $ notice v $ "Depends on: " ++ unwords ifaceDeps
    liftIO $ noticeNoWrap v $ "Using protocol XML file " ++ xml  ++ " for " ++ spec.fullName ++ " (" ++ getSymbolicPath spec.protocolXML ++ ")"

    let register restype deps res = registerRule (fromString $ show restype ++ ":" ++ spec.fullName) $
          mkRule vflags scanner xml xml' res restype deps

    cRule <- register PrivateCode [] $ Location cbits $ getProtoCSource spec

    rids <- forM [EnumHeader, ClientHeader, ServerHeader] $ \restype -> do
      let res = Location autogen $ getProtoHeader spec restype
      rid <- register restype [] res
      return (restype, rid, res)

    _infoModRule <- register InfoMod [RuleDependency $ RuleOutput cRule 0] $ Location autogen $ makeRelativePathEx $ toFilePath (getProtoInfoModule spec) <.> "hs"

    return $ do
      bgen <- bindTargets spec
      return (bgen, [ RuleDependency $ RuleOutput rid 0 | (_, rid, Location _ res) <- rids
        , getSymbolicPath res `elem` map getSymbolicPath bgen.headers ])

  return $ mconcat results

  where
    vflags    = buildingWhatVerbosity pbci.buildingWhat
    v         = verbosityFromFlags vflags
    lbi       = pbci.localBuildInfo
    clbi      = targetCLBI pbci.targetInfo
    component = targetComponent pbci.targetInfo
    autogen   = autogenComponentModulesDir lbi clbi
    cbits     = makeSymbolicPath "cbits"
    datadirWL = component ^. BI.customFieldsBI . getting (map makeSymbolicPath . maybeToList . L.lookup "datadir-wayland-protocols")

mkRule vflags scanner xml xml' res restype deps =
  dynamicRule (static Dict)
    (mkCommand (static Dict) (static computeDepsAction) (xml, restype))
    (scannerCommand (vflags, scanner, xml', restype, res))
    ([FileDependency $ Location (takeDirectorySymbolicPath xml') (makeRelativePathEx $ FP.takeFileName xml)] ++ deps)
    [res]

computeDepsAction :: (FilePath, ProtoResult) -> IO ([Dependency], ())
computeDepsAction _ = do
  return ([], ())

type ScannerArgs = (VerbosityFlags, ConfiguredProgram, SymbolicPath Pkg File, ProtoResult, Location)

scannerCommand :: ScannerArgs -> Command ScannerArgs (() -> IO ())
scannerCommand = mkCommand (static Dict) $ static scannerAction

scannerAction :: (VerbosityFlags, ConfiguredProgram, SymbolicPath Pkg 'File, ProtoResult, Location)
              -> a -> IO ()
scannerAction (vflags, scanner, protoXml, restype, res) _ = do
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

-- * ProtocolSpec

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
  , bindGens      :: M.Map String HsBindGen
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Binary)

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

  preBindgenHooks xs = mempty
    { configureHooks = mempty
      { preConfPackageHook = Just preConfPackage
      , preConfComponentHook = Just $ preConfComponent xs } }

  bindTargets spec = M.elems spec.bindGens

  mkBindRules pbci xs = scannerRules pbci xs

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
  parsec :: forall m. CabalParsing m => m ProtocolSpec
  parsec = do
      P.spaces
      r@(dirs, (parts, (mstability, version, suffix))) <- parse
      let fullName = L.intercalate "-" parts ++ maybe "" stability' mstability ++ maybe "" version' version
          category = L.intercalate "-" (take 1 parts)
          baseName = L.intercalate "-" (drop 1 parts)
      return mempty
        { fullName
        , baseName
        , category
        , version
        , stability = maybe (if version == Nothing then Stable else Staging) id mstability
        , protocolXML = normaliseSymbolicPath $
            if take 1 dirs /= [""]
               then makeRelativePathEx (L.intercalate "/" dirs) </> makeRelativePathEx (fullName ++ suffix)
               else makeRelativePathEx (fullName ++ suffix)
        , protocolDirs = [ normaliseSymbolicPath $ makeSymbolicPath (L.intercalate "/" dirs) | take 1 dirs == [""] ]
        }
    where
      parse = do
          dirs <- pDirs
          r <- pFileBase
          pure (dirs, r)

      pFileBase = do
        let go xs = P.try ((xs,) <$> nameEnd) <|> ((pNamePart <* P.optional (P.try (P.char '-'))) >>= \x -> go (xs ++ [x]))
        go []

      -- "[-STABILITY][-VERSION].xml"
      nameEnd = (,,)
        <$> P.optional (P.try $ P.optional (P.try $ P.char '-') *> pStability)
        <*> P.optional (P.try $ P.optional (P.try $ P.char '-') *> pVersion)
        <*> P.string ".xml"

      -- "[foo/[bar/[...]]]"
      pDirs :: m [FilePath]
      pDirs = P.many (P.try pDirectory)

      -- "foo/"
      pDirectory :: m FilePath
      pDirectory = P.munch (/= '/') <* P.munch1 (== '/') P.<?> "Directory"

      -- "[[:alnum:]]+"
      pNamePart :: m String
      pNamePart = P.munch1 isAsciiAlphaNum P.<?> "Name part"

      -- "stable", "unstable", etc.
      pStability :: m Stability
      pStability = P.choice [ P.string s $> v | (v, s) <- zip [ Stable, Unstable, Staging ] [ "stable", "unstable", "staging" ] ] P.<?> "Protocol Stability"

      -- "v1", "v2", etc.
      pVersion :: m Int
      pVersion = P.char 'v' *> P.integral P.<?> "Protocol Version"

      stability' x = '-' : map toLower (show x)
      version'   x = '-' : 'v' : show x

instance IsString ProtocolSpec where
  fromString str = case eitherParsec str of
                     Right x -> x
                     Left err -> error $ "while parsing \"" ++ str ++ "\": " ++ err

data Stability = Unstable | Staging | Stable
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary)

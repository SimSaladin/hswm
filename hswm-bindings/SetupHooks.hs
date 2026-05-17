{-# LANGUAGE DeriveAnyClass      #-}
{-# LANGUAGE DataKinds           #-}
{-# LANGUAGE DerivingStrategies  #-}
{-# LANGUAGE LambdaCase          #-}
{-# LANGUAGE OverloadedLists     #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings   #-}
{-# LANGUAGE RecordWildCards     #-}
{-# LANGUAGE StaticPointers      #-}

{-# OPTIONS_GHC -Wall #-}

module SetupHooks where

import           Distribution.Compat.Binary
import Distribution.Compat.Lens
import Distribution.HsBindgen.Hooks
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.LocalBuildInfo
import qualified Distribution.Types.BuildInfo.Lens as E
import           Distribution.Utils.Path
import Control.Monad
import GHC.IsList
import           GHC.Generics (Generic)
import           Data.String
import Data.Char
import qualified Data.List as L
import qualified Data.List.NonEmpty as NE
import qualified System.FilePath as FP

setupHooks :: SetupHooks
setupHooks = hsBindgenConfigureHooks bindgenSpecsAll <>
  mempty
  { configureHooks = mempty
      { preConfPackageHook = Just preConfPackage
      --, postConfPackageHook = Just postConf
      , preConfComponentHook = Just $ preConfComponent protocolBindSpecs
      }
  , buildHooks = mempty
      { preBuildComponentRules = Just $ rules (static ()) $ \inp -> do
          deps <- map (\r -> [RuleDependency $ RuleOutput r 0]) <$> scannerRules (map fst protocolBindSpecs) inp
          hsBindgenBuildRules' (map (, []) bindgenOnlySpecs ++ zip (map snd protocolBindSpecs) deps) inp
      }
  }

protocolBindSpecs :: [(ProtocolSpec, HsBindGen)]
protocolBindSpecs = protocolSpecsRiver ++ protocolSpecsWayland

bindgenSpecsAll :: [HsBindGen]
bindgenSpecsAll = bindgenOnlySpecs ++ map snd protocolBindSpecs

bindgenOnlySpecs :: [HsBindGen]
bindgenOnlySpecs =
  [ (mkBindgen "Bindings.Wayland.Util.Generated")
    { headers = [ "wayland-util.h" ]
    , genGlobal = Just False
    , extraArgs = [
      "--select-from-main-header-dirs",
      "--select-except-by-decl-name", "wl_log_func_t" ]
    }

  , (mkBindgen "Bindings.Wayland.Client.Generated")
    { headers = [ "wayland-client.h", "wayland-client-core.h", "wayland-client-protocol.h" ]
    , extBindingSpecs = [ BModule "Bindings.Wayland.Util.Generated" ]
    , extraArgs = [
      "--select-except-by-decl-name", "wl_log_func_t",
      "--select-except-by-decl-name", "wl_log_set_handler_client" ]
    }
  ]

protocolSpecsRiver :: [(ProtocolSpec, HsBindGen)]
protocolSpecsRiver =
  [ mkProtocolRiver "river-window-management-v1" mempty
  , mkProtocolRiver "river-input-management-v1" mempty
  , mkProtocolRiver "river-layer-shell-v1"
      mempty { extBindingSpecs = [ bspec "river-window-management" ] }
  , mkProtocolRiver "river-libinput-config-v1"
      mempty { extBindingSpecs = [ bspec "river-input-management" ] }
  , mkProtocolRiver "river-xkb-bindings-v1"
      mempty { extBindingSpecs = [ bspec "river-window-management" ] }
  , mkProtocolRiver "river-xkb-config-v1"
      mempty { extBindingSpecs = [ bspec "river-input-management" ] }
  ] where
    mkProtocolRiver name ext =
      let proto = mkProtocolSpec name
          bindspec = mkBindgenFromProto proto
       in (proto, bindspec <> ext)

protocolSpecsWayland :: [(ProtocolSpec, HsBindGen)]
protocolSpecsWayland =
  [ mkP "wlr-layer-shell-unstable-v1"
      mempty { extBindingSpecs = [ bspec "xdg-shell" ] }
  , mkP "wlr-output-management-unstable-v1" mempty
  , mkP "wlr-output-power-management-unstable-v1" mempty
  , mkP "wlr-input-method-unstable-v2" mempty
  , mkP' "wayland-xdg-shell"
    mempty { protocolXML = makeRelativePathEx "stable/xdg-shell/xdg-shell.xml" }
    mempty
  , mkP' "wayland-viewporter"
    mempty { protocolXML = makeRelativePathEx "stable/viewporter/viewporter.xml" }
    mempty
  , mkP' "wayland-fractional-scale-v1"
    mempty { protocolXML = makeRelativePathEx "staging/fractional-scale/fractional-scale-v1.xml" }
    mempty
  , mkP' "wayland-xdg-output-unstable-v1"
    mempty { protocolXML = makeRelativePathEx "unstable/xdg-output/xdg-output-unstable-v1.xml" }
    mempty
  , mkP' "wayland-ext-idle-notify-v1"
    mempty { protocolXML = makeRelativePathEx "staging/ext-idle-notify/ext-idle-notify-v1.xml" }
    mempty
  , mkP' "wayland-ext-session-lock-v1"
    mempty { protocolXML = makeRelativePathEx "staging/ext-session-lock/ext-session-lock-v1.xml" }
    mempty
  , mkP' "wayland-ext-foreign-toplevel-list-v1"
    mempty { protocolXML = makeRelativePathEx "staging/ext-foreign-toplevel-list/ext-foreign-toplevel-list-v1.xml" }
    mempty
  ] where
    mkP name = mkP' name mempty
    mkP' :: String -> ProtocolSpec -> HsBindGen -> (ProtocolSpec, HsBindGen)
    mkP' name protoExtra bindsExtra =
      let proto = mkProtocolSpec name
          binds = mkBindgenFromProto proto
       in (proto <> protoExtra, binds <> bindsExtra)

bspec :: FilePath -> BindingSpec
bspec x = BFile $ Location sameDirectory $ makeRelativePathEx $ "binding-specs" </> x <.> "yaml"

mkBindgen :: String -> HsBindGen
mkBindgen mo = bindGenDef
  { uniqueId = "hswm-bindings"
  , moduleName = mo
  }

mkBindgenFromProto :: ProtocolSpec -> HsBindGen
mkBindgenFromProto proto = (mkBindgen ("Bindings." ++ getName proto.protocolName ++ ".Generated"))
  { headers = [ proto.protocolName ++ "-client-protocol.h" ]
  , extBindingSpecs =
     [ BModule "Bindings.Wayland.Util.Generated"
     , BModule "Bindings.Wayland.Client.Generated"
     , BFile $ Location sameDirectory $ makeRelativePathEx "binding-specs/wayland-client.yaml"
     ]
  }

getName :: String -> String
getName inp
  | (p:pre, suf) <- L.span (/= '-') inp = (toUpper p : pre) ++ "." ++ go suf
  | otherwise = error "getName: no match"
  where
    go ('-':x:xs) = toUpper x : go xs
    go (x:xs) = x : go xs
    go [] = []

mkProtocolSpec :: String -> ProtocolSpec
mkProtocolSpec name = ProtocolSpec
  { protocolName = name
  , protocolXML = makeRelativePathEx name <.> "xml"
  , protocolXMLSearchPath = [ makeSymbolicPath "protocol" ]
  }

preConfPackage :: PreConfPackageInputs -> IO PreConfPackageOutputs
preConfPackage inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  let v = fromFlag $ setupVerbosity $ configCommonFlags flags
      progs = [ "wayland-scanner" ]
  configured <- forM progs $ \prog -> configureUnconfiguredProgram v (simpleProgram prog) lbc.withPrograms >>= \case
    Just cp -> return (prog, cp)
    Nothing -> die' v $ "Failed to configure program " ++ prog
  return (noPreConfPackageOutputs inp)
      { extraConfiguredProgs = fromList configured }

preConfComponent :: [(ProtocolSpec, HsBindGen)] -> PreConfComponentInputs -> IO PreConfComponentOutputs
preConfComponent specs pci@PreConfComponentInputs{localBuildConfig=lbc, packageBuildDescr=pbd}
  | CLibName LMainLibName <- componentName pci.component = do
    let v = fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags

    pdir <- unwords . take 1 . lines <$> getPkgConfDataDir v lbc.withPrograms "wayland-protocols"

    let dir = buildDirPBD pbd </> makeRelativePathEx "autogen"
    let includes = map (\(s, _) -> makeRelativePathEx $ s.protocolName ++ "-client-protocol.h") specs
    let extraCSources = map (\(s, _) -> dir </> makeRelativePathEx (s.protocolName ++ "-protocol.c")) specs
    let mods = map (\(s, _) -> fromString $ "Path_" ++ map toMod s.protocolName) specs

    return $ (noPreConfComponentOutputs pci)
      { componentDiff = buildInfoComponentDiff (CLibName LMainLibName) mempty
         { autogenIncludes = includes
         , cSources = extraCSources
         , customFieldsBI = [("datadir-wayland-protocols", pdir)]
         , autogenModules = mods
         , otherModules = mods
         }
      }

  | otherwise = return (noPreConfComponentOutputs pci)

--postConf :: PostConfPackageInputs -> IO ()
--postConf inp@PostConfPackageInputs{localBuildConfig=lbc, packageBuildDescr=pbd} = do
--  let v = fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags
--  return ()

scannerRules :: [ProtocolSpec] -> PreBuildComponentInputs -> RulesM [RuleId]
scannerRules specs pbci = forM specs $ \spec -> do
    let res = scannerResult pbci.localBuildInfo pbci.targetInfo spec
    let scanner = case lookupProgram (simpleProgram "wayland-scanner") pbci.localBuildInfo.localBuildConfig.withPrograms of
                           Just p  -> p
                           Nothing -> error "wayland-scanner was not found"

    registerRule (fromString $ "wl-scan-" ++ spec.protocolName) $
      staticRule (scannerCommand (spec, buildingWhatVerbosity pbci.buildingWhat, res, scanner,
                                 componentName $ targetComponent pbci.targetInfo,
                                 view E.customFieldsBI $ targetComponent pbci.targetInfo)) [] res

  where
    scannerCommand = mkCommand (static Dict) $ static scannerAction

scannerResult :: (IsList l, Item l ~ Location) => LocalBuildInfo -> TargetInfo -> ProtocolSpec -> l
scannerResult lbi tgt ProtocolSpec{..} = fromList
  [ Location autogendir (makeRelativePathEx path)
    | path <-
      [ protocolName ++ "-client-protocol.h"
      , protocolName ++ "-protocol.c"
      , "Path_" ++ map toMod protocolName ++ ".hs"
      ]
  ]
  where autogendir = autogenComponentModulesDir lbi (targetCLBI tgt)

toMod '-' = '_'
toMod x = x

scannerAction :: (ProtocolSpec, Verbosity, NE.NonEmpty Location, ConfiguredProgram, ComponentName, [(String, String)]) -> IO ()
scannerAction _params@(spec, v, res, scanner, cName, customfs)
  | CLibName LMainLibName <- cName
  = do
    let datadirWL
            | Just d <- L.lookup "datadir-wayland-protocols" customfs
            = [makeSymbolicPath d]
            | otherwise = []

    let dirs = spec.protocolXMLSearchPath ++ datadirWL

    -- notice v $ "Searching in: " ++ show dirs

    xmlp <- findFileEx v dirs spec.protocolXML
    let xml = interpretSymbolicPathCWD xmlp

    notice v $ "Found protocol XML: " ++ xml

    let clienthdr NE.:| [ privateCode, protoXmlHs ] = fmap (getSymbolicPath . location) res
    runProgram v scanner ["--include-core-only", "--strict", "client-header", xml, clienthdr]
    runProgram v scanner ["--include-core-only", "--strict", "private-code", xml, privateCode]

    withFileContents xml $ \content ->
      rewriteFileEx v protoXmlHs $ unlines
        [ "{-# LANGUAGE MultilineStrings #-}"
        , "module " ++ (FP.takeFileName $ FP.dropExtension protoXmlHs) ++ " where"
        , "protoXml :: String"
        , "protoXml ="
        , "  \"\"\""
        , content
        , "  \"\"\""
        ]

  | otherwise = return ()

data ProtocolSpec = ProtocolSpec
  { protocolName          :: String -- "river-window-management-v1"
  , protocolXML           :: RelativePath DataDir 'File
  , protocolXMLSearchPath :: [SymbolicPath Pkg ('Dir DataDir)]
  }
  deriving stock (Show, Generic)
  deriving anyclass (Binary)

instance Semigroup ProtocolSpec where
  a <> b = ProtocolSpec
    { protocolName = if b.protocolName == "" then a.protocolName else b.protocolName
    , protocolXML = if b.protocolXML == makeRelativePathEx "" then a.protocolXML else b.protocolXML
    , protocolXMLSearchPath = a.protocolXMLSearchPath <> b.protocolXMLSearchPath
    }

instance Monoid ProtocolSpec where
  mempty = ProtocolSpec "" (makeRelativePathEx "") []

getPkgConfDataDir :: Verbosity -> ProgramDb -> String -> IO String
getPkgConfDataDir v progdb arg = do
  (prog, _) <- requireProgram v (simpleProgram "pkg-config") progdb
  getProgramOutput v prog [arg, "--variable=pkgdatadir"]

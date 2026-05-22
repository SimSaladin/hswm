{-# LANGUAGE CPP                 #-}
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

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks

import           Distribution.Compat.Binary
import           Distribution.Compat.Lens
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import qualified Distribution.Types.BuildInfo.Lens as E
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.LocalBuildInfo
import           Distribution.Utils.Path

#if MIN_VERSION_Cabal(3,17,0)
import           Distribution.Verbosity
#endif

import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Char
import qualified Data.List as L
import qualified Data.List.NonEmpty as NE
import           Data.String
import           GHC.Generics (Generic)
import           GHC.IsList
import qualified System.FilePath as FP

verbosityFromFlags :: VerbosityFlags -> Verbosity
#if MIN_VERSION_Cabal(3,17,0)
verbosityFromFlags flags = Verbosity verb defaultVerbosityHandles
#else
verbosityFromFlags flags = flags

type VerbosityFlags = Verbosity
#endif

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks' genSetup <>
  mempty
  { configureHooks = mempty
      { preConfPackageHook = Just preConfPackage
      , preConfComponentHook = Just $ preConfComponent protocolBindSpecs
      }
  }

genSetup :: HsBindGenSetup ProtocolSpec
genSetup = HsBindGenSetup
  { modulesSimple = bindgenOnlySpecs
  , sources = protocolBindSpecs
  , getDeps = \inp proto -> do
       rs <- scannerRules [proto] inp
       return [ RuleDependency $ RuleOutput r 0 | r <- rs ]
  }

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
    { headers = [ "wayland-client-core.h", "wayland-client-protocol.h" ]
    , extBindingSpecs = [ BModule "Bindings.Wayland.Util.Generated" ]
    , extraArgs =
      -- Unsupported variadic (varargs) function
      [ "--select-except-by-decl-name", "wl_log_set_handler_client"
      , "--select-except-by-decl-name", "wl_proxy_marshal_flags"
      , "--select-except-by-decl-name", "wl_proxy_marshal"
      , "--select-except-by-decl-name", "wl_proxy_marshal_constructor"
      , "--select-except-by-decl-name", "wl_proxy_marshal_constructor_versioned"
      ]
    }
  ]

protocolBindSpecs :: [(ProtocolSpec, HsBindGen)]
protocolBindSpecs =
  [ mkProto "river-window-management-v1" mempty mempty
  , mkProto "river-input-management-v1" mempty mempty
  , mkProto "river-layer-shell-v1" mempty mempty { extBindingSpecs = [ bspec "river-window-management" ] }
  , mkProto "river-libinput-config-v1" mempty mempty { extBindingSpecs = [ bspec "river-input-management" ] }
  , mkProto "river-xkb-bindings-v1" mempty mempty { extBindingSpecs = [ bspec "river-window-management" ] }
  , mkProto "river-xkb-config-v1" mempty mempty { extBindingSpecs = [ bspec "river-input-management" ] }
  , mkProto "wlr-layer-shell-unstable-v1" mempty mempty { extBindingSpecs = [ bspec "xdg-shell" ] }
  , mkProto "wlr-output-management-unstable-v1" mempty mempty
  , mkProto "wlr-output-power-management-unstable-v1" mempty mempty
  , mkProto "wlr-input-method-unstable-v2" mempty mempty
  , mkProto "wayland-xdg-shell"
    mempty { protocolXML = makeRelativePathEx "stable/xdg-shell/xdg-shell.xml" }
    mempty
  , mkProto "wayland-viewporter"
    mempty { protocolXML = makeRelativePathEx "stable/viewporter/viewporter.xml" }
    mempty
  , mkProto "wayland-fractional-scale-v1"
    mempty { protocolXML = makeRelativePathEx "staging/fractional-scale/fractional-scale-v1.xml" }
    mempty
  , mkProto "wayland-xdg-output-unstable-v1"
    mempty { protocolXML = makeRelativePathEx "unstable/xdg-output/xdg-output-unstable-v1.xml" }
    mempty
  , mkProto "wayland-ext-idle-notify-v1"
    mempty { protocolXML = makeRelativePathEx "staging/ext-idle-notify/ext-idle-notify-v1.xml" }
    mempty
  , mkProto "wayland-ext-session-lock-v1"
    mempty { protocolXML = makeRelativePathEx "staging/ext-session-lock/ext-session-lock-v1.xml" }
    mempty
  , mkProto "wayland-ext-foreign-toplevel-list-v1"
    mempty { protocolXML = makeRelativePathEx "staging/ext-foreign-toplevel-list/ext-foreign-toplevel-list-v1.xml" }
    mempty
  ]

mkProto :: String -> ProtocolSpec -> HsBindGen -> (ProtocolSpec, HsBindGen)
mkProto name protoExtra bindsExtra = (proto, binds)
  where
    proto = mkProtocolSpec <> protoExtra
    binds = mkBindgenFromProto <> bindsExtra

    mkProtocolSpec = ProtocolSpec
      { protocolName = name
      , protocolXML = makeRelativePathEx name <.> "xml"
      , protocolXMLSearchPath = [ makeSymbolicPath "protocol" ]
      }

    mkBindgenFromProto = (mkBindgen (fromString $ "Bindings." ++ getName proto.protocolName ++ ".Generated"))
      { headers = [ proto.protocolName ++ "-client-protocol.h" ]
      , extBindingSpecs =
         [ BModule "Bindings.Wayland.Util.Generated"
         , BModule "Bindings.Wayland.Client.Generated"
         , bspec "wayland-client"
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

bspec :: FilePath -> BindingSpec
bspec x = BFile $ Location sameDirectory $ makeRelativePathEx $ "binding-specs" </> x <.> "yaml"

mkBindgen :: ModuleName -> HsBindGen
mkBindgen mo = bindGenDef { uniqueId = "hswm-bindings", moduleName = mo }

data ProtocolSpec = ProtocolSpec
  { protocolName          :: String -- "river-window-management-v1"
  , protocolXML           :: RelativePath DataDir 'File
  -- ^ Relative path of the protocol specification file (.xml)
  , protocolXMLSearchPath :: [SymbolicPath Pkg ('Dir DataDir)]
  -- ^ Additional paths in which to look for the the 'protocolXML' file.
  }
  deriving stock (Show, Generic)
  deriving anyclass (Binary)

instance Semigroup ProtocolSpec where
  a <> b = ProtocolSpec
    { protocolName          = if b.protocolName == "" then a.protocolName else b.protocolName
    , protocolXML           = if b.protocolXML == makeRelativePathEx "" then a.protocolXML else b.protocolXML
    , protocolXMLSearchPath = a.protocolXMLSearchPath <> b.protocolXMLSearchPath
    }

instance Monoid ProtocolSpec where
  mempty = ProtocolSpec "" (makeRelativePathEx "") []

preConfPackage :: PreConfPackageInputs -> IO PreConfPackageOutputs
preConfPackage inp@PreConfPackageInputs{configFlags=flags, localBuildConfig=lbc} = do
  let vflags = fromFlag $ setupVerbosity $ configCommonFlags flags
      v = verbosityFromFlags vflags
      progs = [ "wayland-scanner" ]
  configured <- forM progs $ \prog -> configureUnconfiguredProgram v (simpleProgram prog) lbc.withPrograms >>= \case
    Just cp -> return (prog, cp)
    Nothing -> die' v $ "Failed to configure program " ++ prog
  return (noPreConfPackageOutputs inp)
      { extraConfiguredProgs = fromList configured }

preConfComponent :: [(ProtocolSpec, HsBindGen)] -> PreConfComponentInputs -> IO PreConfComponentOutputs
preConfComponent specs pci@PreConfComponentInputs{localBuildConfig=lbc, packageBuildDescr=pbd}
  | cname@(CLibName LMainLibName) <- componentName pci.component = do
    let vflags = fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags
        v = verbosityFromFlags vflags
    let dir = buildDirPBD pbd </> makeRelativePathEx "autogen"

    pdir <- getPkgConfDataDir v lbc.withPrograms "wayland-protocols"

    let includes      = map (\(s, _) -> makeRelativePathEx $ s.protocolName ++ "-client-protocol.h") specs
    let extraCSources = map (\(s, _) -> dir </> makeRelativePathEx (s.protocolName ++ "-protocol.c")) specs
    let mods          = map (\(s, _) -> fromString $ "Path_" ++ map toMod s.protocolName) specs

    return $ (noPreConfComponentOutputs pci)
      { componentDiff = buildInfoComponentDiff cname mempty
         { customFieldsBI = [("datadir-wayland-protocols", pdir)]
         , cSources = extraCSources
         , autogenIncludes = includes
         , autogenModules = mods
         , otherModules = mods
         }
      }

  | otherwise = return (noPreConfComponentOutputs pci)

scannerRules :: [ProtocolSpec] -> PreBuildComponentInputs -> RulesM [RuleId]
scannerRules specs pbci
  | CLibName LMainLibName <- componentName $ targetComponent pbci.targetInfo = do
    let vflags = buildingWhatVerbosity pbci.buildingWhat
        v = verbosityFromFlags vflags
    (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") pbci.localBuildInfo.localBuildConfig.withPrograms

    let customfs = view E.customFieldsBI $ targetComponent pbci.targetInfo
    let datadirWL
            | Just d <- L.lookup "datadir-wayland-protocols" customfs
            = [makeSymbolicPath d]
            | otherwise = []

    forM specs $ \spec -> do
      let res = scannerResult pbci.localBuildInfo pbci.targetInfo spec
      let dirs = spec.protocolXMLSearchPath ++ datadirWL
      xml' <- liftIO $ findFileEx v dirs spec.protocolXML
      let xml = interpretSymbolicPathCWD xml'
      liftIO $ noticeNoWrap v $ "Found protocol XML: " ++ show xml'

      registerRule (fromString $ "wl-scan-" ++ spec.protocolName) $
        staticRule (scannerCommand (vflags, res, scanner, xml))
          [FileDependency $ Location (takeDirectorySymbolicPath xml') (makeRelativePathEx $ FP.takeFileName xml)] res
  | otherwise = return mempty

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

scannerAction :: (VerbosityFlags, NE.NonEmpty Location, ConfiguredProgram, FilePath) -> IO ()
scannerAction _params@(vflags, res, scanner, xml) = do
    let v = verbosityFromFlags vflags
    let clienthdr NE.:| [ privateCode, protoXmlHs ] = fmap (getSymbolicPath . location) res

    moreRecentFile xml clienthdr >>= \x -> do
      when x $ runProgram v scanner ["--include-core-only", "--strict", "client-header", xml, clienthdr]
    moreRecentFile xml privateCode >>= \x -> do
      when x $ runProgram v scanner ["--include-core-only", "--strict", "private-code", xml, privateCode]

    withFileContents xml $ \content ->
      rewriteFileEx v protoXmlHs $ unlines
        [ "{-# LANGUAGE MultilineStrings #-}"
        , "module " ++ FP.takeFileName (FP.dropExtension protoXmlHs) ++ " where"
        , "protoXml :: String"
        , "protoXml ="
        , "  \"\"\""
        , content
        , "  \"\"\""
        ]

getPkgConfDataDir :: Verbosity -> ProgramDb -> String -> IO String
getPkgConfDataDir v progdb arg = do
  (prog, _) <- requireProgram v (simpleProgram "pkg-config") progdb
  unwords . take 1 . lines <$> getProgramOutput v prog [arg, "--variable=pkgdatadir"]

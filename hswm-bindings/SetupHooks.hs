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
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}


module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks

import           Distribution.Compat.Binary
import           Distribution.Compat.Lens
import           Distribution.Simple.Program
import           Distribution.Simple.Setup
import           Distribution.Simple.SetupHooks
import           Distribution.Simple.Utils
import qualified Distribution.Types.BuildInfo.Lens as BI
import           Distribution.Types.LocalBuildConfig
import           Distribution.Types.LocalBuildInfo
import           Distribution.Utils.Path

#if MIN_VERSION_Cabal(3,17,0)
import           Distribution.Verbosity
#endif

import           Control.Monad
import           Control.Monad.IO.Class
import           Data.Maybe
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

data ProtocolSpec = ProtocolSpec
  { protocolName          :: String -- ^ @river-window-management-v1@
  , protocolNameBase      :: String -- ^ @window-management@
  , protocolCategory      :: String -- ^ @wayland@, @river@, etc.
  , protocolVersion       :: Maybe Int -- ^ Possible @-v<n>@ suffix
  , protocolStability     :: Stability
  , protocolXML           :: RelativePath DataDir 'File
  -- ^ Relative path of the protocol specification file (.xml)
  , protocolXMLSearchPath :: [SymbolicPath Pkg ('Dir DataDir)]
  -- ^ Additional paths in which to look for the the 'protocolXML' file.
  , protocolBindGenServer :: HsBindGen
  , protocolBindGenClient :: HsBindGen
  }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (Binary)

data Stability
  = Unstable | Staging | Stable
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Binary)

instance Semigroup ProtocolSpec where
  a <> b = ProtocolSpec
    { protocolName          = if b.protocolName == "" then a.protocolName else b.protocolName
    , protocolNameBase      = if b.protocolNameBase == "" then a.protocolNameBase else b.protocolNameBase
    , protocolCategory      = if b.protocolCategory == "" then a.protocolCategory else b.protocolCategory
    , protocolVersion       = a.protocolVersion
    , protocolStability     = a.protocolStability
    , protocolXML           = if b.protocolXML == makeRelativePathEx "" then a.protocolXML else b.protocolXML
    , protocolXMLSearchPath = a.protocolXMLSearchPath <> b.protocolXMLSearchPath
    , protocolBindGenServer = a.protocolBindGenServer <> b.protocolBindGenServer
    , protocolBindGenClient = a.protocolBindGenClient <> b.protocolBindGenClient
    }

instance Monoid ProtocolSpec where
  mempty = ProtocolSpec "" "" "" Nothing Unstable (makeRelativePathEx "") [] mempty mempty

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks' genSetup <>
  mempty
  { configureHooks = mempty
      { preConfPackageHook = Just preConfPackage
      -- , postConfPackageHook = Just $ \inp -> do
      --   let pbd = inp.packageBuildDescr
      --       lpd = pbd.localPkgDescr
      --   print lpd
      --   print lpd.customFieldsPD
      --   print lpd.library
      , preConfComponentHook = Just $ preConfComponent protocolBindSpecs
      }
  }

genSetup :: HsBindGenSetup ProtocolSpec
genSetup = HsBindGenSetup
  { modulesSimple = bindgenOnlySpecs
  , sources = protocolBindSpecs
  , getDeps = \inp proto -> do
       rs <- scannerRules inp proto
       return [ RuleDependency $ RuleOutput r 0 | r <- rs ]
  }

bindgenOnlySpecs :: [HsBindGen]
bindgenOnlySpecs =
  [ (mkBindgen "Bindings.Wayland.Util.Generated")
    { headers = [ "wayland-util.h" ]
    , genGlobal = Just False
    , selectFromMainHeaderDirs = Just True
    , excludeByDeclName = "wl_log_func_t"
    }
  ]

protocolBindSpecs :: [(ProtocolSpec, [HsBindGen])]
protocolBindSpecs =
  [ mkProto "core" "wayland" Stable Nothing mempty
  , mkProto "wayland" "xdg-shell" Stable Nothing mempty
  , mkProto "wayland" "viewporter" Stable Nothing mempty
  , mkProto "wayland" "fractional-scale" Staging (Just 1) mempty
  , mkProto "wayland" "xdg-output" Unstable (Just 1) mempty
  , mkProto "wayland" "text-input" Unstable (Just 3) mempty
  , mkProto "wayland" "ext-idle-notify" Staging (Just 1) mempty
  , mkProto "wayland" "ext-session-lock" Staging (Just 1) mempty
  , mkProto "wayland" "ext-foreign-toplevel-list" Staging (Just 1) mempty
  , mkProto "wlr" "layer-shell" Unstable (Just 1) mempty { extBindingSpecs = [ bspec "xdg-shell" ] }
  , mkProto "wlr" "output-management" Unstable (Just 1) mempty
  , mkProto "wlr" "output-power-management" Unstable (Just 1) mempty
  , mkProto "wlr" "input-method" Unstable (Just 2) mempty { extBindingSpecs = [ BModule "Bindings.Wayland.TextInput.UnstableV3.Client.Generated" ] }
  , mkProto "river" "window-management" Stable (Just 1) mempty
  , mkProto "river" "input-management" Stable (Just 1) mempty
  , mkProto "river" "layer-shell" Stable (Just 1) mempty { extBindingSpecs = [ bspec "river-window-management" ] }
  , mkProto "river" "libinput-config" Stable (Just 1) mempty { extBindingSpecs = [ bspec "river-input-management" ] }
  , mkProto "river" "xkb-bindings" Stable (Just 1) mempty { extBindingSpecs = [ bspec "river-window-management" ] }
  , mkProto "river" "xkb-config" Stable (Just 1) mempty { extBindingSpecs = [ bspec "river-input-management" ] }
  ] where

    mkProto cat name stability version bindsExtra = (proto, binds)
      where
        proto = mkProtocolSpec cat name stability version
        binds = [ proto.protocolBindGenClient <> bindsExtra
                , proto.protocolBindGenServer <> bindsExtra
                ]

    mkProtocolSpec cat nameBase stability version = ProtocolSpec
      { protocolName          = name
      , protocolNameBase      = nameBase
      , protocolCategory      = cat -- ^ @wayland@, @river@, etc.
      , protocolVersion       = version -- ^ Possible @-v<n>@ suffix
      , protocolStability     = stability
      , protocolXML           = makeRelativePathEx xml <.> "xml"
      , protocolXMLSearchPath = [ makeSymbolicPath "protocol" ]
      , protocolBindGenServer =
            (case cat of
                "core" -> mempty
                      { headers = [ "wayland-server-core.h" ]
                      , excludeByDeclName = L.intercalate "|"
                          [ "wl_log_func_t"
                          , "wl_client_post_implementation_error" -- variadic
                          , "wl_log_set_handler_server" -- variadic
                          , "wl_resource_post_error" -- variadic
                          , "wl_resource_post_error_vargs"
                          , "wl_resource_queue_event"
                          , "wl_resource_post_event"
                          ]
                      , extBindingSpecs = [ bspec "sys-types" ]
                      }
                _ -> mempty
                      { extBindingSpecs = [ BModule "Bindings.Wayland.Core.Server.Generated" ] }
             )
             <>
        (mkBindgen $ fromString $ modRoot ++ ".Server.Generated")
          { headers = [ name ++ "-server-protocol.h" ]
          , extBindingSpecs = [ BModule "Bindings.Wayland.Util.Generated" ]
          }

      , protocolBindGenClient =
            (case cat of
                "core" -> mempty
                      { headers = [ "wayland-client-core.h" ]
                      , excludeByDeclName = L.intercalate "|"
                        [ "wl_log_set_handler_client" -- variadic
                        , "wl_proxy_marshal" -- variadic
                        , "wl_proxy_marshal_flags" -- variadic
                        , "wl_proxy_marshal_constructor" -- variadic
                        , "wl_proxy_marshal_constructor_versioned" -- variadic
                        ]
                      }
                _ -> mempty
                      { extBindingSpecs = [ BModule "Bindings.Wayland.Core.Client.Generated" ]
                      , headers = [ "wayland-client-protocol.h" ]
                      }
             )
          <>
        (mkBindgen $ fromString $ modRoot ++ ".Client.Generated")
          { headers = [ name ++ "-client-protocol.h" ]
          , extBindingSpecs = [ BModule "Bindings.Wayland.Util.Generated" ]
          }

      } where
        modRoot = case cat of
                    "core" -> "Bindings.Wayland.Core"
                    x : xs -> "Bindings." ++ toUpper x : xs ++ "." ++ getName' nameBase ++ subMod
        subMod = case stability of
                   Stable -> maybe "" ((".V" ++) . show) version
                   Staging -> ".V" ++ maybe "0" show version
                   Unstable -> ".UnstableV" ++ maybe "0" show version

        name = case cat of
                 "core" -> nameBase ++ nameStability stability ++ maybe "" (("-v" ++) . show) version
                 _ -> cat ++ "-" ++ nameBase ++ nameStability stability ++ maybe "" (("-v" ++) . show) version
        nameStability = \case
          Unstable | cat /= "river" -> "-unstable"
          _ -> ""
        xml = case cat of
          "wayland" -> map toLower (show stability) </> nameBase </> (nameBase ++ nameStability stability ++ maybe "" (("-v" ++) . show) version)
          "core" -> cat </> (nameBase ++ nameStability stability ++ maybe "" (("-v" ++) . show) version)
          _ -> name

    getName'       [] = []
    getName' (a : as) = toUpper a : go as
      where
        go ('-' : x : xs) = toUpper x : go xs
        go       (x : xs) = x : go xs
        go             [] = []

    getName :: String -> String
    getName inp
      | (p : pre, suf) <- L.span (/= '-') inp = toUpper p : pre ++ "." ++ go suf
      | otherwise = error "getName: no match"
      where
        go ('-' : x : xs) = toUpper x : go xs
        go       (x : xs) = x : go xs
        go             [] = []

bspec :: FilePath -> BindingSpec
bspec x = BFile $ Location sameDirectory $ makeRelativePathEx $ "binding-specs" </> x <.> "yaml"

mkBindgen :: ModuleName -> HsBindGen
mkBindgen mo = bindGenDef { uniqueId = "hswm-bindings", moduleName = mo }

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

preConfComponent :: [(ProtocolSpec, a)] -> PreConfComponentInputs -> IO PreConfComponentOutputs
preConfComponent specs pci@PreConfComponentInputs{localBuildConfig=lbc, packageBuildDescr=pbd}
  | cname@(CLibName LMainLibName) <- componentName pci.component = do
    let vflags = fromFlag $ setupVerbosity $ configCommonFlags pbd.configFlags
        v = verbosityFromFlags vflags
    let cbitsdir = buildDirPBD pbd </> makeRelativePathEx "cbits" -- "autogen"

    pdir <- getPkgConfDataDir v lbc.withPrograms "wayland-protocols"

    let mods          = map (\(s, _) -> fromString $ "Path_" ++ toMod s.protocolName) specs
    let includes      = map (\(s, _) -> makeRelativePathEx $ s.protocolName ++ "-client-protocol.h") specs
    let extraCSources = map (\(s, _) -> cbitsdir </> makeRelativePathEx (s.protocolName ++ "-protocol.c")) specs

    return $ (noPreConfComponentOutputs pci)
      { componentDiff = buildInfoComponentDiff cname $ mempty
          & BI.customFieldsBI .~ [("datadir-wayland-protocols", pdir)]
          & BI.autogenIncludes .~ includes
          & BI.autogenModules .~ mods
          & BI.otherModules .~ mods
          & BI.cSources .~ extraCSources
      }

  | otherwise = return (noPreConfComponentOutputs pci)

scannerRules :: PreBuildComponentInputs -> ProtocolSpec -> RulesM [RuleId]
scannerRules pbci spec
  | CLib{} <- component = do
    let vflags = buildingWhatVerbosity pbci.buildingWhat
        v = verbosityFromFlags vflags
    (scanner, _) <- liftIO $ requireProgram v (simpleProgram "wayland-scanner") pbci.localBuildInfo.localBuildConfig.withPrograms

    let datadirWL = component ^. BI.customFieldsBI . getting (map makeSymbolicPath . maybeToList . L.lookup "datadir-wayland-protocols")
        xmlDirs = spec.protocolXMLSearchPath ++ datadirWL

    xml' <- liftIO $ findFileEx v xmlDirs spec.protocolXML
    let xml = interpretSymbolicPathCWD xml'

    liftIO $ noticeNoWrap v $ "Using protocol XML file " ++ xml  ++ " for " ++ spec.protocolName

    let res = scannerResult pbci.localBuildInfo pbci.targetInfo spec
        deps = [FileDependency $ Location (takeDirectorySymbolicPath xml') (makeRelativePathEx $ FP.takeFileName xml)]

    rid <- registerRule (fromString $ "proto-" ++ spec.protocolName) $ staticRule (scannerCommand (vflags, spec, res, scanner, xml')) deps res
    return [rid]

  | otherwise = return mempty

  where
    component = targetComponent pbci.targetInfo
    scannerCommand = mkCommand (static Dict) $ static scannerAction

scannerResult :: (IsList l, Item l ~ Location) => LocalBuildInfo -> TargetInfo -> ProtocolSpec -> l
scannerResult lbi tgt ProtocolSpec{..} = fromList $
  [ Location autogendir (makeRelativePathEx path)
    | path <-
      [ "Path_" ++ toMod protocolName ++ ".hs"
      , protocolName ++ "-enums.h"
      , protocolName ++ "-client-protocol.h"
      , protocolName ++ "-server-protocol.h"
      ]
  ] ++
  [ Location cbitsdir (makeRelativePathEx path) | path <- [ protocolName ++ "-protocol.c" ] ]
  where
    autogendir = autogenComponentModulesDir lbi (targetCLBI tgt)
    cbitsdir = componentBuildDir lbi (targetCLBI tgt) </> makeRelativePathEx "cbits"

toMod :: String -> String
toMod = map f where
  f '-' = '_'
  f x = x

scannerAction :: (VerbosityFlags, ProtocolSpec, NE.NonEmpty Location, ConfiguredProgram, SymbolicPath Pkg 'File) -> IO ()
scannerAction (vflags, spec, res, scanner, protoXml)
  | protoXmlHs NE.:| [ enumshdr, clienthdr, serverhdr, privateCode ] <- fmap (interpretSymbolicPathCWD . location) res
  = do
    let xml = interpretSymbolicPathCWD protoXml

    runProgram v scanner ["--include-core-only", "--strict", "enum-header", xml, enumshdr]

    runProgram v scanner $ ["--include-core-only" {-| spec.protocolCategory == "core"-} ] ++ ["--strict", "client-header", xml, clienthdr]

    runProgram v scanner $ ["--include-core-only" {-| spec.protocolCategory == "core"-} ] ++ ["--strict", "server-header", xml, serverhdr]

    createDirectoryIfMissingVerbose v True (FP.takeDirectory privateCode)
    runProgram v scanner ["--include-core-only", "--strict", "private-code", xml, privateCode]

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

  | otherwise = die' v $ "Bad results: " ++ show res
 where
   v = verbosityFromFlags vflags

getPkgConfDataDir :: Verbosity -> ProgramDb -> String -> IO String
getPkgConfDataDir v progdb arg = do
  (prog, _) <- requireProgram v (simpleProgram "pkg-config") progdb
  unwords . take 1 . lines <$> getProgramOutput v prog [arg, "--variable=pkgdatadir"]

{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE OverloadedStrings #-}

{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module SetupHooks (setupHooks) where

import qualified Distribution.HsBindgen.Lens as I
import           Distribution.HsBindgen.Hooks
import           Distribution.Wayland.Hooks

import           Distribution.Simple.SetupHooks
import           Distribution.Utils.Path
import           Distribution.ModuleName

import           Lens.Micro
import           Lens.Micro.GHC ()
import           Data.Char
import qualified Data.List as L

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks genSetup <> mempty
  { configureHooks = mempty
    { preConfPackageHook = Just preConfPackage
    , preConfComponentHook = Just $ preConfComponent protocolBindSpecs } }

genSetup :: HsBindGenSetup ProtocolSpec
genSetup = def & I.sources <>~ protocolBindSpecs

protoWayland :: ProtocolSpec
protoWayland = spec
  where
    spec = fromProtocolXML "core/wayland.xml"
      & I.category     .~ "core"
      & I.stability    .~ Stable
      & I.protocolDirs <>~ [ makeSymbolicPath "protocol" ]
      & I.bindGens . at "Util"   ?~ wlutil
      & I.bindGens . at "Enums"  ?~ enums
      & I.bindGens . at "Client" ?~ client
      & I.bindGens . at "Server" ?~ server

    wlutil = mkBindgen "Bindings.Wayland.Util.Generated"
      & I.headers                  <>~ [ makeHeader "wayland-util.h" ]
      & I.genGlobal                ?~ False
      & I.selectFromMainHeaderDirs ?~ True
      & I.excludeByDeclName        <>~ "wl_log_func_t"

    enums = mkBindgen "Bindings.Wayland.Core.Enums"
      & I.headers           <>~ [ getProtoResult relativeSymbolicPath undefined spec EnumHeader ]
      & I.hasPointer        .~ False
      & I.hasSafe           .~ False
      & I.hasUnsafe         .~ False
      & I.genGlobal         ?~ False

    client = mkBindgen "Bindings.Wayland.Core.Client.Generated"
      & I.headers           <>~ [ getProtoResult relativeSymbolicPath undefined spec EnumHeader ]
      & I.headers           <>~ [ makeHeader "wayland-client-core.h"
                                , makeHeader "wayland-client-protocol.h" ] -- must match ClientHeader
      & I.extBindingSpecs   <>~ [ wlutil ^. I.moduleName . to BModule
                                , enums  ^. I.moduleName . to BModule ]
      & I.excludeByDeclName <>~ L.intercalate "|"
          [ "wl_log_set_handler_client" -- variadic
          , "wl_proxy_marshal" -- variadic
          , "wl_proxy_marshal_flags" -- variadic
          , "wl_proxy_marshal_constructor" -- variadic
          , "wl_proxy_marshal_constructor_versioned" -- variadic
          ]

    server = mkBindgen "Bindings.Wayland.Core.Server.Generated"
      & I.headers           <>~ [ getProtoResult relativeSymbolicPath undefined spec EnumHeader ]
      & I.headers           <>~ [ makeHeader "wayland-server-core.h"
                                , makeHeader "wayland-server-protocol.h" ] -- must match ServerHeader
      & I.extBindingSpecs   <>~ [ bspec "sys-types"
                                , wlutil ^. I.moduleName . to BModule
                                , enums ^. I.moduleName . to BModule ]
      & I.excludeByDeclName <>~ L.intercalate "|"
          [ "wl_log_func_t"
          , "wl_client_post_implementation_error" -- variadic
          , "wl_log_set_handler_server" -- variadic
          , "wl_resource_post_error" -- variadic
          , "wl_resource_post_error_vargs"
          , "wl_resource_queue_event"
          , "wl_resource_post_event"
          ]

protocolBindSpecs :: [ProtocolSpec]
protocolBindSpecs =
  [ protoWayland
  , mkProto "wayland-xdg-shell.xml"
  , mkProto "wayland-viewporter.xml"
  , mkProto "wayland-fractional-scale-v1.xml"
  , mkProto "wayland-xdg-output-unstable-v1.xml"
  , mkProto "wayland-text-input-unstable-v3.xml"
  , mkProto "wayland-ext-idle-notify-v1.xml"
  , mkProto "wayland-ext-session-lock-v1.xml"
  , mkProto "wayland-ext-foreign-toplevel-list-v1.xml"

  -- TODO
  --, mkProto "stable/wayland-xdg-shell.xml"
  --, mkProto "stable/wayland-viewporter.xml"
  --, mkProto "staging/wayland-fractional-scale-v1.xml"
  --, mkProto "unstable/wayland-xdg-output-unstable-v1.xml"
  --, mkProto "unstable/wayland-text-input-unstable-v3.xml"
  --, mkProto "staging/wayland-ext-idle-notify-v1.xml"
  --, mkProto "staging/wayland-ext-session-lock-v1.xml"
  --, mkProto "staging/wayland-ext-foreign-toplevel-list-v1.xml"

  , mkProto "wlr-layer-shell-unstable-v1.xml"      & I.bindGens . each . I.extBindingSpecs <>~ [ bspec "xdg-shell" ]
  , mkProto "wlr-output-management-unstable-v1.xml"
  , mkProto "wlr-output-power-management-unstable-v1.xml"
  , mkProto "wlr-input-method-unstable-v2.xml"     & I.bindGens . each . I.extBindingSpecs <>~ [ BModule "Bindings.Wayland.TextInput.UnstableV3.Client.Generated" ]
  , mkProto "river-window-management-v1.xml"
  , mkProto "river-input-management-v1.xml"
  , mkProto "river-layer-shell-v1.xml"      & I.bindGens . each . I.extBindingSpecs <>~ [ bspec "river-window-management" ]
  , mkProto "river-libinput-config-v1.xml"  & I.bindGens . each . I.extBindingSpecs <>~ [ bspec "river-input-management" ]
  , mkProto "river-xkb-bindings-v1.xml"     & I.bindGens . each . I.extBindingSpecs <>~ [ bspec "river-window-management" ]
  , mkProto "river-xkb-config-v1.xml"       & I.bindGens . each . I.extBindingSpecs <>~ [ bspec "river-input-management" ]
  ]

mkProto :: String -> ProtocolSpec
mkProto catName' = spec where
  spec'     = fromString catName' :: ProtocolSpec

  cat       = spec' ^. I.category
  nameBase  = spec' ^. I.baseName
  stability = spec' ^. I.stability

  modRoot =
    let subMod = case (spec' ^. I.stability, spec' ^. I.version) of
                   (Stable,   Nothing) -> []
                   (Stable,    Just v) -> [ "StableV" ++ show v ]
                   (Staging,  Nothing) -> [ "Staging" ]
                   (Staging,   Just v) -> [ 'V' : show v ]
                   (Unstable, Nothing) -> [ "Unstable" ]
                   (Unstable,  Just v) -> [ "UnstableV" ++ show v ]

      in L.intercalate "." $ map (_head %~ toUpper) $ [ "Bindings", cat, getName nameBase ] ++ subMod

  adjustXML x = case cat of
      "wayland" -> makeRelativePathEx $ map toLower (show stability) </> nameBase </> maybe (error $ show x) id (L.stripPrefix (cat ++ "-") (getSymbolicPath x))
      _         -> x

  spec = spec'
    & I.protocolXML %~ adjustXML
    & I.protocolDirs <>~ [ makeSymbolicPath "protocol" ]
    & I.bindGens . at "Enums"  ?~ (mkBindgen (modRoot ++ ".Enums")
        & I.headers         <>~ [ makeHeader "wayland-enums.h" ]
        & I.extBindingSpecs <>~ [ BModule "Bindings.Wayland.Core.Enums" ]
        & I.headers         <>~ [ getProtoResult relativeSymbolicPath undefined spec EnumHeader ]
        & I.hasPointer       .~ False
        & I.hasSafe          .~ False
        & I.hasUnsafe        .~ False
        & I.genGlobal        ?~ False)
    & I.bindGens . at "Client" ?~ (mkBindgen (modRoot ++ ".Client.Generated")
        & I.headers         <>~ [ makeHeader "wayland-enums.h", makeHeader "wayland-client-protocol.h" ]
        & I.extBindingSpecs <>~ [ BModule "Bindings.Wayland.Core.Enums"
                                , BModule "Bindings.Wayland.Core.Client.Generated"
                                , BModule "Bindings.Wayland.Util.Generated" ]
        & I.headers         <>~ [ getProtoResult relativeSymbolicPath undefined spec ClientHeader ])
    & I.bindGens . at "Server" ?~ (mkBindgen (modRoot ++ ".Server.Generated")
        & I.headers         <>~ [ makeHeader "wayland-enums.h", makeHeader "wayland-server-protocol.h" ]
        & I.extBindingSpecs <>~ [ BModule "Bindings.Wayland.Core.Enums"
                                , BModule "Bindings.Wayland.Core.Server.Generated"
                                , BModule "Bindings.Wayland.Util.Generated" ]
        & I.headers         <>~ [ getProtoResult relativeSymbolicPath undefined spec ServerHeader ])

mkBindgen :: String -> HsBindGen
mkBindgen mo = def { moduleName = fromString mo }

makeHeader :: FilePath -> SymbolicPath Include 'File
makeHeader = makeSymbolicPath

-- | Manually crafted binding specification file.
bspec :: FilePath -> BindingSpec
bspec x = BFile $ Location sameDirectory $ makeRelativePathEx $ "binding-specs" </> x <.> "yaml"

getName :: String -> String
getName       [] = []
getName (a : as) = toUpper a : go as
  where
    go ('-' : x : xs) = toUpper x : go xs
    go       (x : xs) = x : go xs
    go             [] = []

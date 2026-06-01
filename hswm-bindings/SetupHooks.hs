{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StaticPointers #-}


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
setupHooks = hsBindgenSetupHooks (static ()) genSetup

genSetup :: HsBindGenSetup ProtocolSpec
genSetup = def
  & I.modulesSimple <>~ [ wlutil ]
  & I.sources <>~ protocolBindSpecs

wlutil :: HsBindGen
wlutil = mkBindgen "Bindings.Wayland.Util.Generated"
  & I.headers                  <>~ [ makeHeader "wayland-util.h" ]
  & I.genGlobal                ?~ False
  & I.selectFromMainHeaderDirs ?~ True
  & I.excludeByDeclName        <>~ "wl_log_func_t"

protoWayland :: ProtocolSpec
protoWayland = makeProtocol "Bindings.Wayland.Core" "core/wayland.xml"
  & I.category .~ "core"
  & I.stability .~ Stable
  & I.bindGens . ix ClientBindings %~ client
  & I.bindGens . ix ServerBindings %~ server

  where
    client c = c
      & I.headers %~ ([ makeHeader "wayland-client-core.h" ] <>)
      & I.excludeByDeclName <>~ L.intercalate "|"
          [ "wl_log_set_handler_client" -- variadic
          , "wl_proxy_marshal" -- variadic
          , "wl_proxy_marshal_flags" -- variadic
          , "wl_proxy_marshal_constructor" -- variadic
          , "wl_proxy_marshal_constructor_versioned" -- variadic
          ]

    server s = s
      & I.headers %~ ([ makeHeader "wayland-server-core.h" ] <>)
      & I.extBindingSpecs <>~ [ makeBindingSpec "sys-types" ]
      & I.excludeByDeclName <>~ L.intercalate "|"
          [ "wl_log_func_t"
          , "wl_client_post_implementation_error" -- variadic
          , "wl_log_set_handler_server" -- variadic
          , "wl_resource_post_error" -- variadic
          , "wl_resource_post_error_vargs"
          , "wl_resource_queue_event"
          , "wl_resource_post_event"
          ]

makeProtocol :: String -> ProtocolSpec -> ProtocolSpec
makeProtocol modroot spec = spec
    & I.protocolDirs <>~ [ makeSymbolicPath "protocol" ]
    & I.bindGens . at Enums ?~ enums
    & I.bindGens . at ClientBindings ?~ client
    & I.bindGens . at ServerBindings ?~ server
  where
    enums = mkBindgen (modroot ++ ".Enums")
      & I.headers           <>~ [ relativeSymbolicPath $ getProtoHeader spec EnumHeader ]
      & I.hasPointer        .~ False
      & I.hasSafe           .~ False
      & I.hasUnsafe         .~ False
      & I.genGlobal         ?~ False

    client = mkBindgen (modroot ++ ".Client.Generated")
      & I.headers           <>~ [ relativeSymbolicPath $ getProtoHeader spec EnumHeader
                                , relativeSymbolicPath $ getProtoHeader spec ClientHeader ]
      & I.extBindingSpecs   <>~ [ wlutil ^. I.moduleName . to BModule
                                , enums  ^. I.moduleName . to BModule ]

    server = mkBindgen (modroot ++ ".Server.Generated")
      & I.headers           <>~ [ relativeSymbolicPath $ getProtoHeader spec EnumHeader
                                , relativeSymbolicPath $ getProtoHeader spec ServerHeader ]
      & I.extBindingSpecs   <>~ [ wlutil ^. I.moduleName . to BModule
                                , enums  ^. I.moduleName . to BModule ]

makeWaylandProtocol' :: String -> ProtocolSpec -> ProtocolSpec
makeWaylandProtocol' modroot spec = makeProtocol modroot spec
    & I.bindGens . ix ClientBindings %~ client
    & I.bindGens . ix ServerBindings %~ server
    & I.bindGens . each %~ addCoreEnums
  where
  addCoreEnums x = x
    & I.headers         %~ ([ relativeSymbolicPath $ getProtoHeader protoWayland EnumHeader ] <>)
    & I.excludeHeaders  %~ ([ relativeSymbolicPath $ getProtoHeader protoWayland EnumHeader ] <>)
    & I.extBindingSpecs <>~ [ protoWayland ^?! I.bindGens . ix Enums . I.moduleName . to BModule ]

  client x = x
    & I.headers         %~ ([ relativeSymbolicPath $ getProtoHeader protoWayland ClientHeader ] <>)
    & I.excludeHeaders  %~ ([ relativeSymbolicPath $ getProtoHeader protoWayland ClientHeader ] <>)
    & I.extBindingSpecs <>~ [ protoWayland ^?! I.bindGens . ix ClientBindings . I.moduleName . to BModule ]

  server x = x
    & I.headers         %~ ([ relativeSymbolicPath $ getProtoHeader protoWayland ServerHeader ] <>)
    & I.excludeHeaders  %~ ([ relativeSymbolicPath $ getProtoHeader protoWayland ServerHeader ] <>)
    & I.extBindingSpecs <>~ [ protoWayland ^?! I.bindGens . ix ServerBindings . I.moduleName . to BModule ]

makeWaylandProtocol :: ProtocolSpec -> ProtocolSpec
makeWaylandProtocol spec = makeWaylandProtocol' (getRootModule spec) spec

mkProto :: ProtocolSpec -> ProtocolSpec
mkProto specIn = spec
    & I.protocolXML %~ adjustXML
  where
    spec = makeWaylandProtocol specIn

    adjustXML x = case cat of
        "wayland" -> makeRelativePathEx $ map toLower (show stability) </> nameBase </> maybe (error $ show x) id (L.stripPrefix (cat ++ "-") (getSymbolicPath x))
        _         -> x

    cat       = spec ^. I.category
    nameBase  = spec ^. I.baseName
    stability = spec ^. I.stability

getRootModule :: ProtocolSpec -> String
getRootModule spec =
    let subMod = case (spec ^. I.stability, spec ^. I.version) of
                   (Stable,   Nothing) -> []
                   (Stable,    Just v) -> [ "StableV" ++ show v ]
                   (Staging,  Nothing) -> [ "Staging" ]
                   (Staging,   Just v) -> [ 'V' : show v ]
                   (Unstable, Nothing) -> [ "Unstable" ]
                   (Unstable,  Just v) -> [ "UnstableV" ++ show v ]

      in L.intercalate "." $ map (_head %~ toUpper) $ [ "Bindings", spec ^. I.category, getName (spec ^. I.baseName) ] ++ subMod

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

  , mkProto "wlr-layer-shell-unstable-v1.xml"
      & I.bindGens . each . I.extBindingSpecs <>~ [ makeBindingSpec "xdg-shell" ]
  , mkProto "wlr-output-management-unstable-v1.xml"
  , mkProto "wlr-output-power-management-unstable-v1.xml"
  , mkProto "wlr-input-method-unstable-v2.xml"

  , makeWaylandProtocol "river-window-management-v1.xml"
  , makeWaylandProtocol "river-input-management-v1.xml"
  , makeWaylandProtocol "river-layer-shell-v1.xml"
      & I.bindGens . each . I.extBindingSpecs <>~ [ makeBindingSpec "river-window-management" ]
  , makeWaylandProtocol "river-libinput-config-v1.xml"
      & I.bindGens . each . I.extBindingSpecs <>~ [ makeBindingSpec "river-input-management" ]
  , makeWaylandProtocol "river-xkb-bindings-v1.xml"
      & I.bindGens . each . I.extBindingSpecs <>~ [ makeBindingSpec "river-window-management" ]
  , makeWaylandProtocol "river-xkb-config-v1.xml"
      & I.bindGens . each . I.extBindingSpecs <>~ [ makeBindingSpec "river-input-management" ]
  ]

mkBindgen :: String -> HsBindGen
mkBindgen mo = def { moduleName = fromString mo }

makeHeader :: FilePath -> SymbolicPath Include 'File
makeHeader = makeSymbolicPath

getName :: String -> String
getName       [] = []
getName (a : as) = toUpper a : go as
  where
    go ('-' : x : xs) = toUpper x : go xs
    go       (x : xs) = x : go xs
    go             [] = []

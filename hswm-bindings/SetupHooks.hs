{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE MultilineStrings         #-}
{-# LANGUAGE OverloadedLists          #-}
{-# LANGUAGE OverloadedRecordDot      #-}
{-# LANGUAGE OverloadedStrings        #-}
{-# LANGUAGE QuasiQuotes              #-}
{-# LANGUAGE StaticPointers           #-}

{-# OPTIONS_GHC -Wall #-}
{-# OPTIONS_GHC -Wunused-packages #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module SetupHooks (setupHooks) where

import           Distribution.HsBindgen.Hooks
import qualified Distribution.HsBindgen.Lens as I
import           Distribution.Wayland.Hooks

import           Distribution.Simple.SetupHooks

import           Distribution.ModuleName
import           Distribution.Utils.Path

import           Data.Char
import qualified Data.List as L
import           Lens.Micro
import           Lens.Micro.GHC ()

-- HOOKS

setupHooks :: SetupHooks
setupHooks = hsBindgenSetupHooks config

-- CONFIGS

config :: HsBindGenSetup ProtocolSpec
config = def
  & I.modulesSimple <>~ [ wlutil ]
  & I.sources <>~ protocolBindSpecs

protocolBindSpecs :: [ProtocolSpec]
protocolBindSpecs = [ protoWayland ] ++ waylandSpecs ++ wlrootsSpecs ++ riverSpecs
  where
    waylandSpecs =
      [ xdgShell
      , mkProtoWL "stable/viewporter/viewporter.xml"
      , mkProtoWL "staging/fractional-scale/fractional-scale-v1.xml"
      , mkProtoWL "unstable/xdg-output/xdg-output-unstable-v1.xml"
      , textInputUnstable
      , mkProtoWL "staging/ext-idle-notify/ext-idle-notify-v1.xml"
      , mkProtoWL "staging/ext-session-lock/ext-session-lock-v1.xml"
      , mkProtoWL "staging/ext-foreign-toplevel-list/ext-foreign-toplevel-list-v1.xml"
      ]

    textInputUnstable = mkProtoWL "unstable/text-input/text-input-unstable-v3.xml"
    xdgShell = mkProtoWL "stable/xdg-shell/xdg-shell.xml"

    wlrootsSpecs =
      [ makeWaylandProtocol "wlr-layer-shell-unstable-v1.xml" & addDependent xdgShell
      , makeWaylandProtocol "wlr-output-management-unstable-v1.xml"
      , makeWaylandProtocol "wlr-output-power-management-unstable-v1.xml"
      , makeWaylandProtocol "wlr-input-method-unstable-v2.xml" & addDependent textInputUnstable
      ]

    riverSpecs =
      [ riverWM
      , riverIM
      , mkProtoRiver "river-layer-shell-v1.xml" & addDependent riverWM
      , mkProtoRiver "river-libinput-config-v1.xml" & addDependent riverIM
      , mkProtoRiver "river-xkb-bindings-v1.xml" & addDependent riverWM
      , mkProtoRiver "river-xkb-config-v1.xml" & addDependent riverIM
      ]

    riverWM = mkProtoRiver "river-window-management-v1.xml"
    riverIM = mkProtoRiver "river-input-management-v1.xml"

wlutil :: HsBindGen
wlutil = mkBindgen "WL.Util.Generated"
  & I.headers <>~ [ makeHeader "wayland-util.h" ]
  & I.genGlobal ?~ False
  & I.selectFromMainHeaderDirs ?~ True
  & I.excludeByDeclName <>~ "wl_log_func_t"

protoWayland :: ProtocolSpec
protoWayland = makeProtocol "WL.Core" "core/wayland.xml"
  & I.category .~ "core"
  & I.stability .~ Stable
  & I.bindGens . ix ClientBindings %~ client
  & I.bindGens . ix ServerBindings %~ server
    where
  client c = c
    & I.headers         %~ ([ makeHeader "wayland-client-core.h" ] <>)
    & I.excludeByDeclName <>~ L.intercalate "|"
        [ "wl_log_set_handler_client" -- variadic
        , "wl_proxy_marshal" -- variadic
        , "wl_proxy_marshal_flags" -- variadic
        , "wl_proxy_marshal_constructor" -- variadic
        , "wl_proxy_marshal_constructor_versioned" -- variadic
        ]
  server s = s
    & I.headers         %~ ([ makeHeader "wayland-server-core.h" ] <>)
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

-- PROTOCOL SPEC COMBINATORS

mkBindgen :: String -> HsBindGen
mkBindgen mo = def { moduleName = fromString mo }

mkProtoRiver :: ProtocolSpec -> ProtocolSpec
mkProtoRiver specIn = makeWaylandProtocol $ specIn
    & I.category  .~ "river"
    & I.stability .~ Stable

mkProtoWL :: ProtocolSpec -> ProtocolSpec
mkProtoWL specIn = makeWaylandProtocol $ specIn
    & I.fullName %~ ("wayland-" <>)
    & I.baseName %~ (\bs -> specIn ^. I.category <> (if bs == "" then "" else "-" <> bs))
    & I.category .~ "wayland"

makeProtocol :: String -> ProtocolSpec -> ProtocolSpec
makeProtocol modroot spec = spec
  & I.protocolDirs <>~ [ makeSymbolicPath "protocol" ]
  & I.bindGens . at Enums ?~ enums
  & I.bindGens . at ClientBindings ?~ client
  & I.bindGens . at ServerBindings ?~ server
    where
  enums = mkBindgen (modroot ++ ".Enums")
    & I.headers <>~ [ relativeSymbolicPath $ getProtoHeader spec EnumHeader ]
    & I.hasPointer .~ False
    & I.hasSafe    .~ False
    & I.hasUnsafe  .~ False
    & I.genGlobal  ?~ False
  client = mkBindgen (modroot ++ ".Client.Generated")
    & I.headers <>~ [ relativeSymbolicPath $ getProtoHeader spec EnumHeader
                    , relativeSymbolicPath $ getProtoHeader spec ClientHeader ]
    & I.extBindingSpecs   <>~ [ wlutil ^. I.moduleName . to BModule
                              , enums  ^. I.moduleName . to BModule ]
  server = mkBindgen (modroot ++ ".Server.Generated")
    & I.headers     <>~ [ relativeSymbolicPath $ getProtoHeader spec EnumHeader
                        , relativeSymbolicPath $ getProtoHeader spec ServerHeader ]
    & I.extBindingSpecs   <>~ [ wlutil ^. I.moduleName . to BModule
                              , enums  ^. I.moduleName . to BModule ]

makeWaylandProtocolWith :: String -> ProtocolSpec -> ProtocolSpec
makeWaylandProtocolWith modroot spec = makeProtocol modroot spec
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
makeWaylandProtocol specIn = makeWaylandProtocolWith (getRootModule specIn) specIn
  where
    getRootModule spec =
      let subMod =
            case (spec ^. I.stability, spec ^. I.version) of
              (Stable,   Nothing) -> []
              (Stable,    Just v) -> [ 'V' : show v ]
              (Staging,  Nothing) -> [ "Staging" ]
              (Staging,   Just v) -> [ "Staging", 'V' : show v ]
              (Unstable, Nothing) -> [ "Unstable" ]
              (Unstable,  Just v) -> [ "Unstable", 'V' : show v ]
       in
         L.intercalate "." . map (_head %~ toUpper) $
            (spec ^. I.category . to getCat) ++ [spec ^. I.baseName . to getName] ++ subMod

    getCat "wayland" = [ "WL" ]
    getCat   "river" = [ "River" ]
    getCat       foo = [ "WL", foo ]

    getName :: String -> String
    getName       [] = []
    getName (a : as) = toUpper a : go as
      where
        go ('-' : x : xs) = toUpper x : go xs
        go       (x : xs) = x : go xs
        go             [] = []

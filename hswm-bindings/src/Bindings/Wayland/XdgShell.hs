{-# LANGUAGE OverloadedRecordDot #-}

module Bindings.Wayland.XdgShell where

import           Bindings.Wayland.XdgShell.Client.Generated
import           Bindings.Wayland.XdgShell.Client.Generated.Global
import           Bindings.Wayland.XdgShell.Client.Generated.Safe

import           Bindings.Wayland.Client (Array(..), Output(..), Seat(..))
import qualified Bindings.Wayland.Client (Surface(..))

import           Language.Haskell.TH
import           Path_wayland_xdg_shell
import           Wayland.Internal.TH

clientFromProtocolXML' commonSettings
  { prEventArgTypeTrans = \s iface ev arg t -> do
    case arg.argType of
      AArray
        | ev.name == "configure" -> [t|Array $(conT $ mkName "ToplevelState")|]
        | ev.name == "wm_capabilities" -> [t|Array $(conT $ mkName "ToplevelWmCapabilities")|]
      _ -> defaultEventArgTypeTrans s iface ev arg t
  } protoXml

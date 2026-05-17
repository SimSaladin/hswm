module Bindings.Wayland.XdgShell where

import           Bindings.Wayland.XdgShell.Generated
import           Bindings.Wayland.XdgShell.Generated.Global
import           Bindings.Wayland.XdgShell.Generated.Safe

import           Bindings.Wayland.Client (Array(..), Output(..), Seat(..))
import qualified Bindings.Wayland.Client (Surface(..))

import           Wayland.Internal.TH
import Path_wayland_xdg_shell

clientFromProtocolXML' commonSettings protoXml

module Bindings.Wayland.XdgShell where

import Bindings.Wayland.Internal.TH

import Bindings.Wayland.XdgShell.Generated
import Bindings.Wayland.XdgShell.Generated.Global
import Bindings.Wayland.XdgShell.Generated.Safe

import qualified Bindings.Wayland.Client
import Bindings.Wayland.Client (Array(..), Wl_interface(..))

clientFromProtocolXML commonSettings "wayland-protocols/xdg-shell.xml"

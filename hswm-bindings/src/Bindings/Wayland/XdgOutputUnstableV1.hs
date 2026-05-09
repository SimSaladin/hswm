module Bindings.Wayland.XdgOutputUnstableV1 where

import Wayland.Internal.TH

import Bindings.Wayland.XdgOutputUnstableV1.Generated
import Bindings.Wayland.XdgOutputUnstableV1.Generated.Global
import Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe

import qualified Bindings.Wayland.Client
import Bindings.Wayland.Client (Wl_interface)

clientFromProtocolXML commonSettings "wayland-protocols/xdg-output-unstable-v1.xml"

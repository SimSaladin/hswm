module Bindings.Wayland.XdgOutputUnstableV1 where

import Bindings.Wayland.Internal.TH

import Bindings.Wayland.XdgOutputUnstableV1.Generated
import Bindings.Wayland.XdgOutputUnstableV1.Generated.Global
import Bindings.Wayland.XdgOutputUnstableV1.Generated.Safe

import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "xdg-output-unstable-v1.xml"

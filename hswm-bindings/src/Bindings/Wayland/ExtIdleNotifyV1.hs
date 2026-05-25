module Bindings.Wayland.ExtIdleNotifyV1 where

import Bindings.Wayland.ExtIdleNotify.V1.Client.Generated
import Bindings.Wayland.ExtIdleNotify.V1.Client.Generated.Global
import Bindings.Wayland.ExtIdleNotify.V1.Client.Generated.Safe

import Bindings.Wayland.Client (Seat(..))

import Wayland.Internal.TH
import Path_wayland_ext_idle_notify_v1

clientFromProtocolXML' commonSettings protoXml

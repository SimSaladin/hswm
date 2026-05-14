module Bindings.Wayland.ExtIdleNotifyV1 where

import Bindings.Wayland.ExtIdleNotifyV1.Generated
import Bindings.Wayland.ExtIdleNotifyV1.Generated.Global
import Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe

import Bindings.Wayland.Client (Seat(..))

import Wayland.Internal.TH

clientFromProtocolXML commonSettings "wayland-protocols/ext-idle-notify-v1.xml"

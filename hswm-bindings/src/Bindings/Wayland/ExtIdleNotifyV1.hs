module Bindings.Wayland.ExtIdleNotifyV1 where

import Bindings.Wayland.ExtIdleNotifyV1.Generated
import Bindings.Wayland.ExtIdleNotifyV1.Generated.Global
import Bindings.Wayland.ExtIdleNotifyV1.Generated.Safe

import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "ext-idle-notify-v1.xml"

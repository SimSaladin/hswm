module Bindings.Wayland.ExtSessionLockV1 where

import Wayland.Internal.TH

import Bindings.Wayland.ExtSessionLock.V1.Enums
import Bindings.Wayland.ExtSessionLock.V1.Client.Generated
import Bindings.Wayland.ExtSessionLock.V1.Client.Generated.Global
import Bindings.Wayland.ExtSessionLock.V1.Client.Generated.Safe

import Bindings.Wayland.Client
import Path_wayland_ext_session_lock_v1

clientFromProtocolXML' commonSettings protoXml

module Bindings.Wayland.ExtSessionLockV1 where

import Bindings.Wayland.Internal.TH

import Bindings.Wayland.ExtSessionLockV1.Generated
import Bindings.Wayland.ExtSessionLockV1.Generated.Global
import Bindings.Wayland.ExtSessionLockV1.Generated.Safe

import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "ext-session-lock-v1.xml"

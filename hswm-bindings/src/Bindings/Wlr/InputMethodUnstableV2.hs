module Bindings.Wlr.InputMethodUnstableV2 where

import Bindings.Wlr.InputMethod.UnstableV2.Enums
import Bindings.Wlr.InputMethod.UnstableV2.Client.Generated
import Bindings.Wlr.InputMethod.UnstableV2.Client.Generated.Global
import Bindings.Wlr.InputMethod.UnstableV2.Client.Generated.Safe

import Bindings.Wayland.TextInputUnstableV3
import Bindings.Wayland.TextInput.UnstableV3.Client.Generated

import Wayland.Internal.TH
import Bindings.Wayland.Client
import Path_wlr_input_method_unstable_v2

clientFromProtocolXML' commonSettings protoXml

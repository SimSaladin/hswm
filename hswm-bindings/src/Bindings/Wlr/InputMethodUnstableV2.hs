module Bindings.Wlr.InputMethodUnstableV2 where

import Foreign.C

import Bindings.Wlr.InputMethodUnstableV2.Generated
import Bindings.Wlr.InputMethodUnstableV2.Generated.Global
import Bindings.Wlr.InputMethodUnstableV2.Generated.Safe

import Wayland.Internal.TH
import Bindings.Wayland.Client
import Path_wlr_input_method_unstable_v2

-- Because this protocol is not imported
newtype Zwp_text_input_v3_content_purpose = Zwp_text_input_v3_content_purpose { unwrap :: CUInt } deriving (Eq, Show)
newtype Zwp_text_input_v3_content_hint = Zwp_text_input_v3_content_hint { unwrap :: CUInt } deriving (Eq, Show)
newtype Zwp_text_input_v3_change_cause = Zwp_text_input_v3_change_cause { unwrap :: CUInt } deriving (Eq, Show)

clientFromProtocolXML' commonSettings protoXml

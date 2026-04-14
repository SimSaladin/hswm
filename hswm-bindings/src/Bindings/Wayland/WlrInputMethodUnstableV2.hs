module Bindings.Wayland.WlrInputMethodUnstableV2 where

import Foreign.C

import Bindings.Wayland.WlrInputMethodUnstableV2.Generated
import Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Global
import Bindings.Wayland.WlrInputMethodUnstableV2.Generated.Safe

import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client

-- Because this protocol is not imported
newtype Zwp_text_input_v3_content_purpose = Zwp_text_input_v3_content_purpose { unwrap :: CUInt } deriving (Eq)
newtype Zwp_text_input_v3_content_hint = Zwp_text_input_v3_content_hint { unwrap :: CUInt } deriving (Eq)
newtype Zwp_text_input_v3_change_cause = Zwp_text_input_v3_change_cause { unwrap :: CUInt } deriving (Eq)

clientFromProtocolXML commonSettings "input-method-unstable-v2.xml"

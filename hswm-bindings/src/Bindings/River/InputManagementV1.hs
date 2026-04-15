{-# OPTIONS_GHC -ddump-splices #-}

module Bindings.River.InputManagementV1 where

import Bindings.River.InputManagementV1.Generated
import Bindings.River.InputManagementV1.Generated.Global
import Bindings.River.InputManagementV1.Generated.Safe
import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client

clientFromProtocolXML commonSettings "river-input-management-v1.xml"

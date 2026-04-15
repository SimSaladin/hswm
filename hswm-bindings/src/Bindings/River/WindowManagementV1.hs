{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedLabels #-}

module Bindings.River.WindowManagementV1 where

import Bindings.River.WindowManagementV1.Generated
import Bindings.River.WindowManagementV1.Generated.Global
import Bindings.River.WindowManagementV1.Generated.Safe
import Bindings.Wayland.Internal.TH
import Bindings.Wayland.Client
import Foreign.Ptr

clientFromProtocolXML commonSettings "river-window-management-v1.xml"

-------
instance Default RiverWindow where def = RiverWindow nullPtr
instance Default RiverNode where def = RiverNode nullPtr
instance Default RiverSeat where def = RiverSeat nullPtr
instance Default RiverOutput where def = RiverOutput nullPtr

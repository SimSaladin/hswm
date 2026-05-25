{-# LANGUAGE DeriveAnyClass #-}

module Bindings.River.WindowManagementV1 where

import Bindings.River.WindowManagement.V1.Client.Generated
import Bindings.River.WindowManagement.V1.Client.Generated.Global as G
import Bindings.River.WindowManagement.V1.Client.Generated.Unsafe as Unsafe

import Bindings.Wayland.Client (Surface(..))

import Wayland.Internal.TH

import Foreign.Ptr
import Path_river_window_management_v1

clientFromProtocolXML' commonSettings protoXml

instance Default RiverWindow where def = RiverWindow nullPtr
instance Default RiverNode   where def = RiverNode nullPtr
instance Default RiverSeat   where def = RiverSeat nullPtr
instance Default RiverOutput where def = RiverOutput nullPtr

invalidWindow :: RiverWindow
invalidWindow = def

invalidSeat :: RiverSeat
invalidSeat = def

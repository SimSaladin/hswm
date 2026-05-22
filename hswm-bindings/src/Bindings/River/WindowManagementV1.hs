{-# LANGUAGE DeriveAnyClass #-}
{-# OPTIONS_GHC -ddump-splices #-}


module Bindings.River.WindowManagementV1 where

import Bindings.River.WindowManagementV1.Generated
import Bindings.River.WindowManagementV1.Generated.Global as G
import Bindings.River.WindowManagementV1.Generated.Unsafe as Unsafe

import Bindings.Wayland.Client (Surface(..))

import Wayland.Internal.TH

import Foreign.Ptr
import Data.Word
import GHC.Generics
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

data RiverColor = RiverColor
  { red, green, blue, alpha :: !Word32 }
  deriving stock (Show, Read, Eq, Generic)
  deriving anyclass (Default)

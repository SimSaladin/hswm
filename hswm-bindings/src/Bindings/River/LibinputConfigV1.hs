{-# LANGUAGE OverloadedRecordDot #-}

module Bindings.River.LibinputConfigV1 where

import Bindings.River.LibinputConfig.V1.Client.Generated
import Bindings.River.LibinputConfig.V1.Client.Generated.Global
import Bindings.River.LibinputConfig.V1.Client.Generated.Unsafe

import Bindings.River.InputManagementV1 (RiverInputDevice(..))

import Bindings.Wayland.Util (Array(..))

import Wayland.Internal.TH

import Path_river_libinput_config_v1
import Foreign.C.Types

clientFromProtocolXML' commonSettings
  { prEventArgTypeTrans = \s iface ev arg t -> do
    case arg.argType of
      AArray
        | arg.name == "matrix" -> [t|Array CFloat|] -- 32-bit float
        | arg.name == "speed" -> [t|Array CDouble|] -- 64-bit float
      _ -> defaultEventArgTypeTrans s iface ev arg t

  , prRequestArgTypeTrans = \s iface req arg t -> do
    case arg.argType of
      AArray
        | arg.name == "matrix" -> [t|Array CFloat|]
        | arg.name == "speed" -> [t|Array CDouble|] -- 64-bit float
        | req.name == "set_points", arg.name == "step" -> [t|Array CDouble|]
        | req.name == "set_points", arg.name == "points" -> [t|Array CDouble|]
      _ -> defaultRequestArgTypeTrans s iface req arg t
  } protoXml

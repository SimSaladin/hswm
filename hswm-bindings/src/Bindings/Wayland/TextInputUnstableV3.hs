{-# LANGUAGE OverloadedRecordDot #-}

module Bindings.Wayland.TextInputUnstableV3
  ( module Bindings.Wayland.TextInputUnstableV3
  , module Bindings.Wayland.TextInput.UnstableV3.Enums
  ) where

import Bindings.Wayland.TextInput.UnstableV3.Enums
import Bindings.Wayland.TextInput.UnstableV3.Client.Generated
import Bindings.Wayland.TextInput.UnstableV3.Client.Generated.Global
import Bindings.Wayland.TextInput.UnstableV3.Client.Generated.Safe

import Wayland.Internal.TH
import Bindings.Wayland.Client
import Path_wayland_text_input_unstable_v3

import Language.Haskell.TH

clientFromProtocolXML' commonSettings
  { prRequestArgTypeTrans = \s iface r arg t -> do
    case arg.argType of
      AArray | r.name == "set_available_actions" -> [t|Array $(conT $ mkName "TextInputAction")|]
      _ -> defaultRequestArgTypeTrans s iface r arg t
  } protoXml

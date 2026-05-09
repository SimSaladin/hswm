{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedLabels #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DeriveAnyClass #-}


module Bindings.River.WindowManagementV1 where

import Bindings.River.WindowManagementV1.Generated as R
import Bindings.River.WindowManagementV1.Generated.Global
import Bindings.River.WindowManagementV1.Generated.Unsafe

import Bindings.Wayland.Client

import Wayland.Internal.TH

import Foreign.Ptr
import Data.Word
import Data.Int
import GHC.Generics

clientFromProtocolXML commonSettings "river-window-management-v1.xml"

-------
instance Default RiverWindow where def = RiverWindow nullPtr
instance Default RiverNode   where def = RiverNode nullPtr
instance Default RiverSeat   where def = RiverSeat nullPtr
instance Default RiverOutput where def = RiverOutput nullPtr

invalidWindow :: RiverWindow
invalidWindow = def

invalidSeat :: RiverSeat
invalidSeat = def

type WindowEdges = R.River_window_v1_edges
pattern EdgeNone :: WindowEdges
pattern EdgeNone = R.RIVER_WINDOW_V1_EDGES_NONE
pattern EdgeLeft :: WindowEdges
pattern EdgeLeft = R.RIVER_WINDOW_V1_EDGES_LEFT
pattern EdgeRight :: WindowEdges
pattern EdgeRight = R.RIVER_WINDOW_V1_EDGES_RIGHT
pattern EdgeBottom :: WindowEdges
pattern EdgeBottom = R.RIVER_WINDOW_V1_EDGES_BOTTOM
pattern EdgeTop :: WindowEdges
pattern EdgeTop = R.RIVER_WINDOW_V1_EDGES_TOP

type WindowCaps = R.River_window_v1_capabilities
pattern WindowMenu :: WindowCaps
pattern WindowMenu = R.RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU
pattern Maximize :: WindowCaps
pattern Maximize = R.RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE
pattern Fullscreen :: WindowCaps
pattern Fullscreen = R.RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN
pattern Minimize :: WindowCaps
pattern Minimize = R.RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE

data WindowBorders = WindowBorders
  { -- | Edges on which to draw borders
    wb_edges :: !Word32,
    -- | Width of border
    wb_width :: !Int32,
    -- | RGBA 32-bit
    wb_r, wb_g, wb_b, wb_a :: !Word32
  }
  deriving stock (Eq, Ord, Show)

data RiverColor = RiverColor {red, green, blue, alpha :: !Word32}
  deriving stock (Show, Read, Eq, Generic)
  deriving anyclass (Default)

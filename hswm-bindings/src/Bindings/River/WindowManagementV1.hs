{-# LANGUAGE DeriveAnyClass #-}

module Bindings.River.WindowManagementV1 where

import Bindings.River.WindowManagementV1.Generated
import Bindings.River.WindowManagementV1.Generated.Global as G
import Bindings.River.WindowManagementV1.Generated.Unsafe as Unsafe

import Bindings.Wayland.Client (Surface(..))

import Wayland.Internal.TH

import Foreign.Ptr
import Data.Word
import Data.Int
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

type WindowEdges = River_window_v1_edges

pattern EdgeNone   :: WindowEdges
pattern EdgeLeft   :: WindowEdges
pattern EdgeRight  :: WindowEdges
pattern EdgeBottom :: WindowEdges
pattern EdgeTop    :: WindowEdges
pattern EdgeNone                  = RIVER_WINDOW_V1_EDGES_NONE
pattern EdgeLeft                  = RIVER_WINDOW_V1_EDGES_LEFT
pattern EdgeRight                 = RIVER_WINDOW_V1_EDGES_RIGHT
pattern EdgeBottom                = RIVER_WINDOW_V1_EDGES_BOTTOM
pattern EdgeTop                   = RIVER_WINDOW_V1_EDGES_TOP

type WindowCaps = River_window_v1_capabilities

pattern WindowMenu :: WindowCaps
pattern Maximize   :: WindowCaps
pattern Fullscreen :: WindowCaps
pattern Minimize   :: WindowCaps
pattern WindowMenu               = RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU
pattern Maximize                 = RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE
pattern Fullscreen               = RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN
pattern Minimize                 = RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE

data WindowBorders = WindowBorders
  { wb_edges               :: !Word32 -- ^ Edges on which to draw borders
  , wb_width               :: !Int32  -- ^ Width of border
  , wb_r, wb_g, wb_b, wb_a :: !Word32 -- ^ RGBA 32-bit
  } deriving stock (Eq, Ord, Show)

data RiverColor = RiverColor
  { red, green, blue, alpha :: !Word32 }
  deriving stock (Show, Read, Eq, Generic)
  deriving anyclass (Default)

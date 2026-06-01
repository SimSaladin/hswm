-- |
-- Module      : HSWM.Types.Window
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Window
  ( module HSWM.Types.Window
  , module X
  ) where

import qualified River as R
import           River.WindowManagement as X (RiverWindow, RiverSeat, RiverOutput, RiverNode)
import qualified Bindings.River as R

data Window = Window
  { river_window             :: !RiverWindow
  , node                     :: !RiverNode
  , x, y, width, height      :: !Int32
  , title, appId, identifier :: !String
    -- | Dimension hints
  , min_height, min_width, max_height, max_width :: !Int
  , parent                   :: !(Maybe RiverWindow)
  , unreliablePid            :: !(Maybe Int)
  , decorationHint           :: !(Maybe R.River_window_v1_decoration_hint)
  , presentationHint         :: !(Maybe R.River_output_v1_presentation_mode)
  , wBorderWidth             :: !(Maybe Int32)
  , new                      :: !Bool
  , closed                   :: !Bool
  , fullscreen               :: !(Maybe RiverOutput)
  , minimized                :: !Bool

  , p_manage_action          :: [WindowManageAction]
  , p_render_border          :: Maybe R.RiverColor
  , p_render_pos             :: Maybe (Int32, Int32)
  , p_render_place_top       :: Maybe Bool
  , p_set_visible            :: Maybe Bool

    -- TODO: review below
  , pointer_move_requested         :: RiverSeat
  , pointer_resize_requested       :: RiverSeat
  , pointer_resize_requested_edges :: Int32
  }
  deriving stock (Show, Generic)
  deriving anyclass (Default)

data WindowManageAction
  = WFullscreen
  | WFullscreenOnScreen RiverOutput
  | WExitFullscreen
  | WToggleFullscreen
  | WRequestClose
  deriving (Eq, Show, Generic)

{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}

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

import           HSWM.Types.Lens
import           HSWM.Types.Simple
import qualified River as R
import           River.WindowManagement as X (RiverWindow, RiverSeat, RiverOutput, RiverNode)

-- * Window

data Window = Window
  { river_window             :: !RiverWindow
  , node                     :: !RiverNode
  , position                 :: !Position
  , size                     :: !Size
  , title, appId, identifier :: !String
    -- | Dimension hints
  , minHeight, minWidth
  , maxHeight, maxWidth :: !Int32
  --, sizeMin, sizeMax :: !Size
  , parent                   :: !(Maybe RiverWindow)
  , unreliablePid            :: !(Maybe Int)
  , decorationHint           :: !(Maybe R.RiverWindowDecorationHint)
  , presentationHint         :: !(Maybe R.RiverOutputPresentationMode)
  , wBorderWidth             :: !(Maybe Int32)
  , new                      :: !Bool
  , closed                   :: !Bool
  , minimized                :: !Bool
  , fullscreen               :: !(Maybe RiverOutput)

  , p_manage_action          :: [WindowManageAction]
  , p_render_border          :: Maybe R.RiverColor
  , p_render_pos             :: Maybe Position
  , p_render_place_top       :: Maybe Bool
  , p_set_visible            :: Maybe Bool

    -- TODO: review below
  , pointer_move_requested         :: !RiverSeat
  , pointer_resize_requested       :: !RiverSeat
  , pointer_resize_requested_edges :: !R.RiverWindowEdges
  }
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Default)

data WindowManageAction
  = WFullscreen
  | WFullscreenOnScreen RiverOutput
  | WExitFullscreen
  | WToggleFullscreen
  | WRequestClose
  deriving (Eq, Ord, Show, Generic)

-- * Lenses

makeLensesWith' classPerField [ ''Window ]

instance HasRiverId Window where
  type RiverId Window = RiverWindow
  riverId = riverWindow

instance HasX      Window Position1D where _x = position . _x
instance HasY      Window Position1D where _y = position . _y
instance HasWidth  Window Dimension where width = size . width
instance HasHeight Window Dimension where height = size . height

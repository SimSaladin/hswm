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
  , parent                   :: !(Maybe RiverWindow)
  , unreliablePid            :: !(Maybe Int)
  , decorationHint           :: !(Maybe R.RiverWindowDecorationHint)
  , presentationHint         :: !(Maybe R.RiverOutputPresentationMode)
  , wBorderWidth             :: !(Maybe Int32)
  , borderColor              :: !(Maybe R.RiverColor)
  , new                      :: !Bool
  , closed                   :: !Bool
  , minimized                :: !Bool
  , fullscreen               :: !(Maybe RiverOutput)

    -- | Dimension hints
  , minHeight, minWidth, maxHeight, maxWidth :: !Int32

  -- | Actions to perform in next manage phase
  , p_manage_action :: [WindowManageAction]

  -- | Actions to perform in next render phase
  , pendingRender :: [WindowRenderAction]

    -- TODO: review below
  , pointer_move_requested         :: !RiverSeat
  , pointer_resize_requested       :: !RiverSeat
  , pointer_resize_requested_edges :: !R.RiverWindowEdges
  }
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Default, NFData)

data WindowManageAction
  = WFullscreen
  | WFullscreenOnScreen RiverOutput
  | WExitFullscreen
  | WToggleFullscreen
  | WRequestClose
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Default, NFData)

data WindowRenderAction
  = WRPosition !Position
  | WRBorder
  | WRPlaceTop
  | WRPlaceBottom
  | WRHide
  | WRReveal
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Default, NFData)

-- * Lenses

makeLensesWith' classPerField [ ''Window ]

instance HasRiverId Window where
  type RiverId Window = RiverWindow
  riverId = riverWindow

instance HasX      Window Position1D where _x = position . _x
instance HasY      Window Position1D where _y = position . _y
instance HasWidth  Window Dimension where width = size . width
instance HasHeight Window Dimension where height = size . height

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
module HSWM.Types.Window (
  module HSWM.Types.Window,
  module X,
) where

import HSWM.Types.Lens
import HSWM.Types.Simple
import River qualified as R
import River.WindowManagement as X (RiverNode, RiverOutput, RiverSeat, RiverWindow)

-- * Window

data Window = Window
  { river_window :: {-# UNPACK #-} !RiverWindow
  , node :: {-# UNPACK #-} !RiverNode
  -- ^ The associated RiverNode object
  , position :: {-# UNPACK #-} !Position
  -- ^ Current size and position
  , size :: {-# UNPACK #-} !Size
  , title, appId, identifier :: !String
  -- ^ Window identifiers
  , parent :: !(Maybe RiverWindow)
  -- ^ Parent window (if available)
  , unreliablePid :: !(Maybe Int)
  -- ^ ProcessID (if available)
  , -- XXX what's this
    decorationHint :: !(Maybe R.RiverWindowDecorationHint)
  , -- XXX what's this
    presentationHint :: !(Maybe R.RiverOutputPresentationMode)
  , wBorderWidth :: !(Maybe Int32)
  -- ^ Per-window border width & color (optional)
  , borderColor :: !(Maybe R.RiverColor)
  , -- TODO what's this for
    minimized :: {-# UNPACK #-} !Bool
  , minHeight, minWidth, maxHeight, maxWidth :: {-# UNPACK #-} !Int32
  -- ^ Dimension hints
  , fullscreen :: !(Maybe RiverOutput)
  -- ^ When this window is set to be fullscreen, the assigned output
  --     is stored.
  , -- TODO: review move/resize request handling
    pointer_move_requested :: !RiverSeat
  , pointer_resize_requested :: !RiverSeat
  , pointer_resize_requested_edges :: !R.RiverWindowEdges
  , p_manage_action :: [WindowManageAction]
  -- ^ Actions to perform in next manage phase
  , pendingRender :: [WindowRenderAction]
  -- ^ Actions to perform in next render phase
  , new :: {-# UNPACK #-} !Bool
  -- ^ New windows should be added with 'new' set to 'True'. Initial window properties are then
  --     determined at the next cycle.
  , closed :: {-# UNPACK #-} !Bool
  -- ^ All 'closed' windows will be cleaned up in the next manage cycle.
  }
  deriving stock (Eq, Ord, Show, Generic, Data)
  deriving anyclass (Default, NFData)

data WindowManageAction
  = WFullscreen
  | WFullscreenOnScreen RiverOutput
  | WExitFullscreen
  | WToggleFullscreen
  | WRequestClose
  deriving stock (Eq, Ord, Show, Generic, Data)
  deriving anyclass (Default, NFData)

data WindowRenderAction
  = WRPosition !Position
  | WRBorder
  | WRPlaceTop
  | WRPlaceBottom
  | WRHide
  | WRReveal
  deriving stock (Eq, Ord, Show, Generic, Data)
  deriving anyclass (Default, NFData)

-- * Lenses

makeLensesWith' classPerField [''Window]

instance HasRiverId Window where
  type RiverId Window = RiverWindow
  riverId = riverWindow

instance HasX Window Position1D where _x = position . _x
instance HasY Window Position1D where _y = position . _y
instance HasWidth Window Dimension where width = size . width
instance HasHeight Window Dimension where height = size . height

instance ToJSON Window where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance ToJSON WindowManageAction
instance ToJSON WindowRenderAction

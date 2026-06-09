{-# LANGUAGE DeriveAnyClass #-}
-- |
-- Module      : River.WindowManagement
-- Description : river-window-management v1
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module River.WindowManagement
  -- * RiverWindowManager
  ( RiverWindowManager
  -- ** Events
  , RiverWindowManagerEvent(..)
  -- ** ManageFinish (Manage)
  , riverWindowManagerManageFinish
  -- ** RenderFinish (Render)
  , riverWindowManagerRenderFinish
  -- ** Get ShellSurface
  , riverWindowManagerGetShellSurface
  -- ** ManageDirty
  , riverWindowManagerManageDirty
  -- ** Stop
  , riverWindowManagerStop
  -- ** Exit Session
  , riverWindowManagerExitSession

  -- * RiverWindow
  , RiverWindow
  -- ** Events
  , RiverWindowEvent(..)
  -- ** Get Node
  , riverWindowGetNode
  -- ** Get Decoration
  , riverWindowGetDecorationAbove
  , riverWindowGetDecorationBelow
  -- ** (Manage)
  , riverWindowProposeDimensions
  , riverWindowSetDimensionBounds
  , riverWindowUseCsd
  , riverWindowUseSsd
  , riverWindowSetTiled
  , riverWindowInformResizeStart
  , riverWindowInformResizeEnd
  , riverWindowSetCapabilities
  , riverWindowInformMaximized
  , riverWindowInformUnmaximized
  , riverWindowInformFullscreen
  , riverWindowInformNotFullscreen
  , riverWindowFullscreen
  , riverWindowExitFullscreen
  , riverWindowClose
  -- ** (Render)
  , riverWindowHide
  , riverWindowShow
  , riverWindowSetBorders
  , riverWindowSetClipBox
  , riverWindowSetContentClipBox
  -- ** RiverWindowEdges
  , RiverWindowEdges
  , pattern EdgeNone
  , pattern EdgeLeft
  , pattern EdgeRight
  , pattern EdgeBottom
  , pattern EdgeTop
  -- ** RiverWindowCapabilities
  , RiverWindowCapabilities
  , pattern WindowMenu
  , pattern Maximize
  , pattern Fullscreen
  , pattern Minimize

  -- * RiverNode
  , RiverNode
  -- ** SetPosition (Render)
  , riverNodeSetPosition
  -- ** Place (Top / Bottom / Above / Below) (Render)
  , riverNodePlaceTop
  , riverNodePlaceBottom
  , riverNodePlaceAbove
  , riverNodePlaceBelow

  -- * RiverOutput
  , RiverOutput
  -- ** Events
  , RiverOutputEvent(..)
  -- ** Set Presentation Mode (Render)
  , riverOutputSetPresentationMode
  , RiverOutputPresentationMode

  -- * RiverSeat
  , RiverSeat
  -- ** Events
  , RiverSeatEvent(..)
  -- ** Requests (manage)
  , riverSeatFocusWindow
  , riverSeatFocusShellSurface
  , riverSeatClearFocus
  , riverSeatOpStartPointer
  , riverSeatOpEnd
  , riverSeatPointerWarp
  -- ** Get PointerBinding
  , riverSeatGetPointerBinding
  -- ** Set XCursorTheme
  , riverSeatSetXcursorTheme
  -- ** RiverSeatModifiers
  , RiverSeatModifiers
  , riverSeatModifiersNone
  , riverSeatModifiersShift
  , riverSeatModifiersCtrl
  , riverSeatModifiersMod1
  , riverSeatModifiersMod3
  , riverSeatModifiersMod4
  , riverSeatModifiersMod5

  -- * RiverDecoration
  , RiverDecoration
  -- ** SetOffset (Render)
  , riverDecorationSetOffset
  -- ** SyncNextCommit (Render)
  , riverDecorationSyncNextCommit

  -- * RiverShellSurface
  , RiverShellSurface
  -- ** GetNode
  , riverShellSurfaceGetNode
  -- ** SyncNextCommit (Render)
  , riverShellSurfaceSyncNextCommit

  -- * RiverPointerBinding
  , RiverPointerBinding
  -- ** Events
  , RiverPointerBindingEvent(..)
  -- ** Enable / Disable (Manage)
  , riverPointerBindingEnable
  , riverPointerBindingDisable

  -- * WindowBorders
  , WindowBorders(..)

  -- * RiverColor
  , RiverColor(..)
  ) where

import River.WindowManagement.V1.Client
import River.WindowManagement.V1.Client.Generated

import Data.Word
import Data.Int
import Data.Default
import GHC.Generics

data RiverColor = RiverColor
  { red, green, blue, alpha :: !Word32 }
  deriving stock (Show, Read, Eq, Generic)
  deriving anyclass (Default)

data WindowBorders = WindowBorders
  { wb_edges               :: !Word32 -- ^ Edges on which to draw borders
  , wb_width               :: !Int32  -- ^ Width of border
  , wb_r, wb_g, wb_b, wb_a :: !Word32 -- ^ RGBA 32-bit
  } deriving stock (Eq, Ord, Show)

pattern EdgeNone   :: RiverWindowEdges
pattern EdgeLeft   :: RiverWindowEdges
pattern EdgeRight  :: RiverWindowEdges
pattern EdgeBottom :: RiverWindowEdges
pattern EdgeTop    :: RiverWindowEdges
pattern EdgeNone   = RIVER_WINDOW_V1_EDGES_NONE
pattern EdgeLeft   = RIVER_WINDOW_V1_EDGES_LEFT
pattern EdgeRight  = RIVER_WINDOW_V1_EDGES_RIGHT
pattern EdgeBottom = RIVER_WINDOW_V1_EDGES_BOTTOM
pattern EdgeTop    = RIVER_WINDOW_V1_EDGES_TOP

pattern WindowMenu :: RiverWindowCapabilities
pattern Maximize   :: RiverWindowCapabilities
pattern Fullscreen :: RiverWindowCapabilities
pattern Minimize   :: RiverWindowCapabilities
pattern WindowMenu = RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU
pattern Maximize   = RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE
pattern Fullscreen = RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN
pattern Minimize   = RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE

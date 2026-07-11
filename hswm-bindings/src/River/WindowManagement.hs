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
  , pattern RiverSeatModifiersNone
  , pattern RiverSeatModifiersShift
  , pattern RiverSeatModifiersCtrl
  , pattern RiverSeatModifiersMod1
  , pattern RiverSeatModifiersMod3
  , pattern RiverSeatModifiersMod4
  , pattern RiverSeatModifiersMod5

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

import           River.WindowManagement.V1.Client

import           Control.DeepSeq (NFData)
import           Data.Bits
import           Data.Default
import           Data.Int
import           Data.Word
import           Foreign.C.Types
import           GHC.Generics
import           HsBindgen.Runtime.CEnum

-- | Color in the format River expects it (@4 * 32b@ RGBA).
data RiverColor = RiverColor { red, green, blue, alpha :: {-# UNPACK #-} !Word32 }
  deriving stock (Eq, Ord, Show, Read, Bounded, Generic)
  deriving anyclass (Default, NFData)

data WindowBorders = WindowBorders
  { wbWidth :: {-# UNPACK #-} !Int32            -- ^ Width of border
  , wbEdges :: {-# UNPACK #-} !RiverWindowEdges -- ^ Edges on which to draw borders
  , wbColor :: {-# UNPACK #-} !RiverColor       -- ^ Border color (RGBA 32-bit)
  }
  deriving stock (Eq, Ord, Show, Read, Generic)
  deriving anyclass (Default, NFData)

pattern EdgeNone, EdgeLeft, EdgeRight, EdgeBottom, EdgeTop :: RiverWindowEdges
pattern EdgeNone   = RIVER_WINDOW_V1_EDGES_NONE
pattern EdgeLeft   = RIVER_WINDOW_V1_EDGES_LEFT
pattern EdgeRight  = RIVER_WINDOW_V1_EDGES_RIGHT
pattern EdgeBottom = RIVER_WINDOW_V1_EDGES_BOTTOM
pattern EdgeTop    = RIVER_WINDOW_V1_EDGES_TOP

pattern WindowMenu, Maximize, Fullscreen, Minimize :: RiverWindowCapabilities
pattern WindowMenu = RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU
pattern Maximize   = RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE
pattern Fullscreen = RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN
pattern Minimize   = RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE

-- Orphan instances

instance Default RiverWindowEdges where def = RiverWindowEdgesNone
deriving via (Xor CUInt)                instance Semigroup RiverWindowEdges
deriving via (Xor CUInt)                instance Monoid    RiverWindowEdges
deriving via (AsCEnum RiverWindowEdges) instance Bounded   RiverWindowEdges
deriving via (AsCEnum RiverWindowEdges) instance Enum      RiverWindowEdges

deriving via CUInt                      instance Default   RiverWindowCapabilities
deriving via (Xor CUInt)                instance Semigroup RiverWindowCapabilities
deriving via (Xor CUInt)                instance Monoid    RiverWindowCapabilities

instance Default RiverSeatModifiers where def = RiverSeatModifiersNone
deriving via (Xor CUInt)                instance Semigroup RiverSeatModifiers
deriving via (Xor CUInt)                instance Monoid    RiverSeatModifiers

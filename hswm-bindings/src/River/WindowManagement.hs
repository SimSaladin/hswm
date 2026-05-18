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
  -- ** Requests
  -- *** ManageFinish (Manage)
  , riverWindowManagerManageFinish
  -- *** RenderFinish (Render)
  , riverWindowManagerRenderFinish
  -- *** GetShellSurface
  , riverWindowManagerGetShellSurface
  -- *** ManageDirty
  , riverWindowManagerManageDirty
  -- *** Stop
  , riverWindowManagerStop
  -- *** ExitSession
  , riverWindowManagerExitSession

  -- * RiverWindow
  , RiverWindow
  -- ** Events
  , RiverWindowEvent(..)
  -- ** Requests
  -- *** GetNode
  , riverWindowGetNode
  -- *** GetDecoration
  , riverWindowGetDecorationAbove
  , riverWindowGetDecorationBelow
  -- *** (Manage)
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
  -- *** (Render)
  , riverWindowHide
  , riverWindowShow
  , riverWindowSetBorders
  , riverWindowSetClipBox
  , riverWindowSetContentClipBox

  -- * RiverNode
  , RiverNode
  -- ** Requests
  -- *** SetPosition (RenderSeq)
  , riverNodeSetPosition
  -- *** PlaceTop / PlaceBottom (RenderSeq)
  , riverNodePlaceTop
  , riverNodePlaceBottom
  -- *** PlaceAbove / PlaceBelow (RenderSeq)
  , riverNodePlaceAbove
  , riverNodePlaceBelow

  -- * RiverOutput
  , RiverOutput
  -- ** Events
  , RiverOutputEvent(..)
  -- ** Requests
  , riverOutputSetPresentationMode

  -- * RiverSeat
  , RiverSeat
  -- ** Events
  , RiverSeatEvent(..)
  -- ** Requests
  , riverSeatFocusWindow
  , riverSeatFocusShellSurface
  , riverSeatClearFocus
  , riverSeatOpStartPointer
  , riverSeatOpEnd
  , riverSeatGetPointerBinding
  , riverSeatSetXcursorTheme
  , riverSeatPointerWarp
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
  -- ** Requests
  -- *** SetOffset
  , riverDecorationSetOffset
  -- *** SyncNextCommit
  , riverDecorationSyncNextCommit

  -- * RiverShellSurface
  , RiverShellSurface
  -- ** Requests
  -- *** GetNode
  , riverShellSurfaceGetNode
  -- *** SyncNextCommit
  , riverShellSurfaceSyncNextCommit

  -- * RiverPointerBinding
  , RiverPointerBinding
  , RiverPointerBindingListener
  -- ** Events
  , RiverPointerBindingEvent(..)
  -- ** Requests
  -- *** Enable / Disable
  , riverPointerBindingEnable
  , riverPointerBindingDisable

  -- * WindowBorders
  , WindowBorders(..)
  ) where

import Bindings.River.WindowManagementV1

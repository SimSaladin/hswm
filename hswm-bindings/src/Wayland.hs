{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE OverloadedRecordDot #-}


-- |
-- Module      : Wayland
-- Description : Wayland bindings
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Wayland
  -- * Types
  ( IsWlObject(..)
  , HasDestructor(..)
  , HasInterface(..)
  , HasListener(..)
  , IsUserData(..)
  , InterfaceType
  , Version
  , ObjectName

  -- * Wayland.Util
  , module Bindings.Wayland.Util

  -- * Globals
  , initRegistryState
  , RegistrySettings(..)
  , RegistryState
  , bindGlobal
  , GlobalException

  -- * Listeners
  , WlClientException(..)
  , listenerAdd
  , listenerAdd_

  -- * Display
  , Display
  -- ** Events
  , DisplayEvent(..)
  -- ** Create EventQueue
  , displayCreateQueue
  , displayCreateQueueWithName
  -- ** EventQueue
  , EventQueue
  , eventQueueGetName
  -- ** Connect
  , Client.displayConnect
  , Client.displayConnectToFd
  -- ** Disconnect
  , Client.displayDisconnect
  -- ** Get Registry
  , Client.displayGetRegistry
  -- ** SetMaxBufferSize
  , Client.displaySetMaxBufferSize
  -- ** Roundtrip
  , Client.displayRoundtrip
  , Client.displayRoundtripQueue
  -- ** Flush
  , Client.displayFlush
  -- ** Sync
  , Client.displaySync
  -- ** Read / prepare read
  , Client.displayReadEvents
  , Client.displayPrepareReadQueue
  , Client.displayPrepareRead
  , Client.displayCancelRead
  -- ** Dispatch
  , Client.displayDispatch
  , Client.displayDispatchQueue
  , Client.displayDispatchTimeout
  , Client.displayDispatchQueueTimeout
  , Client.displayDispatchQueuePending
  , Client.displayDispatchPending
  -- ** Misc.
  , Client.displayGetFd
  , Client.displayGetError
  , Client.displayGetProtocolError

  -- * Registry
  , Registry
  -- ** Events
  , RegistryEvent(..)
  , pattern RegistryGlobalRemove'
  , pattern RegistryGlobal'
  -- ** Bind
  , registryBind
  , registryBindObject

  -- * Callback
  , Callback
  -- ** Events
  , CallbackEvent(..)

  -- * Compositor
  , Compositor
  -- ** CreateSurface
  , Client.compositorCreateSurface
  -- ** CreateRegion
  , withNewRegion
  , Client.compositorCreateRegion

  -- * ShmPool
  , ShmPool
  -- ** CreateBuffer
  , Client.shmPoolCreateBuffer
  -- ** Resize
  , Client.shmPoolResize

  -- * Shm
  , Shm
  -- ** Events
  , ShmEvent(..)
  -- ** CreatePool
  , shmCreatePool
  -- ** SHM Formats
  , ShmFormat
  , pattern ShmFormatARGB8888
  , pattern ShmFormatXRGB8888
  , pattern ShmFormatC8
  , pattern ShmFormatRGB332
  , pattern ShmFormatBGR233
  , pattern ShmFormatXRGB4444
  , pattern ShmFormatXBGR4444
  , pattern ShmFormatRGBX4444
  , pattern ShmFormatBGRX4444
  , pattern ShmFormatARGB4444
  , pattern ShmFormatABGR4444
  , pattern ShmFormatRGBA4444
  , pattern ShmFormatBGRA4444
  , pattern ShmFormatXRGB1555
  , pattern ShmFormatXBGR1555
  , pattern ShmFormatRGBX5551
  , pattern ShmFormatBGRX5551
  , pattern ShmFormatARGB1555
  , pattern ShmFormatABGR1555
  , pattern ShmFormatRGBA5551
  , pattern ShmFormatBGRA5551
  , pattern ShmFormatRGB565
  , pattern ShmFormatBGR565
  , pattern ShmFormatRGB888
  , pattern ShmFormatBGR888
  , pattern ShmFormatXBGR8888
  , pattern ShmFormatRGBX8888
  , pattern ShmFormatBGRX8888
  , pattern ShmFormatABGR8888
  , pattern ShmFormatRGBA8888
  , pattern ShmFormatBGRA8888
  , pattern ShmFormatXRGB2101010
  , pattern ShmFormatXBGR2101010
  , pattern ShmFormatRGBX1010102
  , pattern ShmFormatBGRX1010102
  , pattern ShmFormatARGB2101010
  , pattern ShmFormatABGR2101010
  , pattern ShmFormatRGBA1010102
  , pattern ShmFormatBGRA1010102
  , pattern ShmFormatYUYV
  , pattern ShmFormatYVYU
  , pattern ShmFormatUYVY
  , pattern ShmFormatVYUY
  , pattern ShmFormatAYUV
  , pattern ShmFormatNV12
  , pattern ShmFormatNV21
  , pattern ShmFormatNV16
  , pattern ShmFormatNV61
  , pattern ShmFormatYUV410
  , pattern ShmFormatYVU410
  , pattern ShmFormatYUV411
  , pattern ShmFormatYVU411
  , pattern ShmFormatYUV420
  , pattern ShmFormatYVU420
  , pattern ShmFormatYUV422
  , pattern ShmFormatYVU422
  , pattern ShmFormatYUV444
  , pattern ShmFormatYVU444
  , pattern ShmFormatR8
  , pattern ShmFormatR16
  , pattern ShmFormatRG88
  , pattern ShmFormatGR88
  , pattern ShmFormatRG1616
  , pattern ShmFormatGR1616
  , pattern ShmFormatXRGB16161616F
  , pattern ShmFormatXBGR16161616F
  , pattern ShmFormatARGB16161616F
  , pattern ShmFormatABGR16161616F
  , pattern ShmFormatXYUV8888
  , pattern ShmFormatVUY888
  , pattern ShmFormatVUY101010
  , pattern ShmFormatY210
  , pattern ShmFormatY212
  , pattern ShmFormatY216
  , pattern ShmFormatY410
  , pattern ShmFormatY412
  , pattern ShmFormatY416
  , pattern ShmFormatXVYU2101010
  , pattern ShmFormatXVYU12_16161616
  , pattern ShmFormatXVYU16161616
  , pattern ShmFormatY0L0
  , pattern ShmFormatX0L0
  , pattern ShmFormatY0L2
  , pattern ShmFormatX0L2
  , pattern ShmFormatYUV420_8BIT
  , pattern ShmFormatYUV420_10BIT
  , pattern ShmFormatXRGB8888_A8
  , pattern ShmFormatXBGR8888_A8
  , pattern ShmFormatRGBX8888_A8
  , pattern ShmFormatBGRX8888_A8
  , pattern ShmFormatRGB888_A8
  , pattern ShmFormatBGR888_A8
  , pattern ShmFormatRGB565_A8
  , pattern ShmFormatBGR565_A8
  , pattern ShmFormatNV24
  , pattern ShmFormatNV42
  , pattern ShmFormatP210
  , pattern ShmFormatP010
  , pattern ShmFormatP012
  , pattern ShmFormatP016
  , pattern ShmFormatAXBXGXRX106106106106
  , pattern ShmFormatNV15
  , pattern ShmFormatQ410
  , pattern ShmFormatQ401
  , pattern ShmFormatXRGB16161616
  , pattern ShmFormatXBGR16161616
  , pattern ShmFormatARGB16161616
  , pattern ShmFormatABGR16161616
  , pattern ShmFormatC1
  , pattern ShmFormatC2
  , pattern ShmFormatC4
  , pattern ShmFormatD1
  , pattern ShmFormatD2
  , pattern ShmFormatD4
  , pattern ShmFormatD8
  , pattern ShmFormatR1
  , pattern ShmFormatR2
  , pattern ShmFormatR4
  , pattern ShmFormatR10
  , pattern ShmFormatR12
  , pattern ShmFormatAVUY8888
  , pattern ShmFormatXVUY8888
  , pattern ShmFormatP030

  -- * Buffer
  , Buffer
  -- ** Events
  , BufferEvent(..)

  -- * Shell
  , Shell
  -- ** GetShellSurface
  , Client.shellGetShellSurface

  -- * ShellSurface
  , ShellSurface
  -- ** Events
  , ShellSurfaceEvent(..)
  -- ** Pong
  , shellSurfacePong
  -- ** Move
  , shellSurfaceMove
  -- ** Resize
  , shellSurfaceResize
  -- ** SetTopLevel
  , shellSurfaceSetToplevel
  -- ** SetTransient
  , shellSurfaceSetTransient
  -- ** SetFullscreen
  , shellSurfaceSetFullscreen
  -- ** SetPopup
  , shellSurfaceSetPopup
  -- ** SetMaximized
  , shellSurfaceSetMaximized
  -- ** SetTitle
  , shellSurfaceSetTitle
  -- ** SetClass
  , shellSurfaceSetClass
  -- ** Enum: Resize
  , ShellSurfaceResize
  , pattern ShellSurfaceResizeNone
  , pattern ShellSurfaceResizeTop
  , pattern ShellSurfaceResizeBottom
  , pattern ShellSurfaceResizeLeft
  , pattern ShellSurfaceResizeTopLeft
  , pattern ShellSurfaceResizeBottomLeft
  , pattern ShellSurfaceResizeRight
  , pattern ShellSurfaceResizeTopRight
  , pattern ShellSurfaceResizeBottomRight
  -- ** Enum: FullScreenMethod
  , ShellSurfaceFullscreenMethod
  , pattern ShellSurfaceFullscreenMethodDefault
  , pattern ShellSurfaceFullscreenMethodScale
  , pattern ShellSurfaceFullscreenMethodDriver
  , pattern ShellSurfaceFullscreenMethodFill
  -- ** Enum: Transient
  , ShellSurfaceTransient
  , pattern ShellSurfaceTransientInactive

  -- * Surface
  , Surface
  -- ** Events
  , SurfaceEvent(..)
  -- ** Methods
  , surfaceAttach
  , surfaceDamage
  , surfaceFrame
  , surfaceSetOpaqueRegion
  , surfaceSetInputRegion
  , surfaceCommit
  , surfaceSetBufferTransform
  , surfaceSetBufferScale
  , surfaceDamageBuffer
  , surfaceOffset

  -- * Seat
  , Seat
  -- ** Events
  , SeatEvent(..)
  -- ** Methods
  , seatGetPointer
  , seatGetKeyboard
  , seatGetTouch
  -- ** SeatCapability (enum)
  , SeatCapability
  , pattern SeatCapabilityPointer
  , pattern SeatCapabilityKeyboard
  , pattern SeatCapabilityTouch
  , parseSeatCapabilities

  -- * Pointer
  , Pointer
  -- ** Events
  , PointerEvent(..)
  -- ** SetCursor
  , pointerSetCursor
  -- ** ButtonState
  , PointerButtonState
  , pattern PointerButtonStateReleased
  , pattern PointerButtonStatePressed
  -- ** Axis
  , PointerAxis
  , pattern PointerAxisVerticalScroll
  , pattern PointerAxisHorizontalScroll
  -- ** AxisSource
  , PointerAxisSource
  , pattern PointerAxisSourceWheel
  , pattern PointerAxisSourceFinger
  , pattern PointerAxisSourceContinuous
  , pattern PointerAxisSourceWheelTilt
  -- ** AxisRelativeDirection
  , PointerAxisRelativeDirection
  , pattern PointerAxisRelativeDirectionIdentical
  , pattern PointerAxisRelativeDirectionInverted

  -- * Keyboard
  , Keyboard
  -- ** Events
  , KeyboardEvent(..)
  -- * KeymapFormat
  , KeyboardKeymapFormat
  , pattern KeyboardKeymapFormatNoKeymap
  , pattern KeyboardKeymapFormatXkbV1
  -- ** KeyState
  , KeyboardKeyState
  , pattern KeyboardKeyStateReleased
  , pattern KeyboardKeyStatePressed
  , pattern KeyboardKeyStateRepeated

  -- * Touch
  , Touch
  -- ** Events
  , TouchEvent(..)

  -- * Output
  , Output
  -- ** Events
  , OutputEvent(..)
  -- ** Enums
  , OutputSubpixel
  , OutputTransform
  , OutputMode

  -- * Region
  , Region
  -- ** Add
  , regionAdd
  -- ** Subtract
  , regionSubtract

  -- * Subcompositor
  , Subcompositor
  -- ** GetSubsurface
  , subcompositorGetSubsurface

  -- * Subsurface
  , Subsurface
  -- ** Methods
  , subsurfaceSetPosition
  , subsurfacePlaceAbove
  , subsurfacePlaceBelow
  , subsurfaceSetSync
  , subsurfaceSetDesync

  -- * DataOffer
  , DataOffer

  -- * DataSource
  , DataSource

  -- * DataDevice
  , DataDevice

  -- * DataDeviceManager
  , DataDeviceManager

  -- * Fixes
  , Fixes
  -- ** DistroyRegistry
  , fixesDestroyRegistry

  ) where

import Wayland.Types

import           Bindings.Wayland.Util
import           Bindings.Wayland.Client hiding (shmCreatePool)
import qualified Bindings.Wayland.Client as Client
import qualified Bindings.Wayland.Client.Generated as Client.G

import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import           UnliftIO

import           Control.Monad
import           Data.Bits
import           Data.Default
import qualified Data.List as L
import           Data.Maybe
import           Data.Proxy
import           System.Posix (Fd)
import qualified Data.Map as M
import           Foreign.C.ConstPtr


newtype WlClientException = WlListenerAddFailed String
  deriving (Eq, Show)

instance Exception WlClientException

-- | Add listener with the specified user data.
listenerAdd :: (MonadIO m, Show object, HasListener object, IsUserData userdata)
            => object -- ^ The target object
            -> PtrConst (ObjectListener object) -- ^ Listener instance (function pointers)
            -> userdata -- ^ Userdata
            -> m ()
{-# INLINE listenerAdd #-}
listenerAdd obj l ud = liftIO $ do
  res <- objectListenerAdd obj l (toUserData ud)
  when (res < 0) $ throwIO $ WlListenerAddFailed $ show obj

-- | Add listener with null user data.
listenerAdd_ :: (MonadIO m, Show object, HasListener object)
            => object -- ^ The target object
            -> PtrConst (ObjectListener object) -- ^ Listener instance (function pointers)
            -> m ()
{-# INLINE listenerAdd_ #-}
listenerAdd_ obj l = listenerAdd obj l ()

pattern RegistryGlobal' :: String -> ObjectName -> Version -> RegistryEvent
pattern RegistryGlobal' interface name version <- RegistryGlobal{name, interface, version}

pattern RegistryGlobalRemove' :: ObjectName -> RegistryEvent
pattern RegistryGlobalRemove' name <- RegistryGlobalRemove{name}

pattern ShmFormatARGB8888 :: ShmFormat
pattern ShmFormatARGB8888             = Client.G.WL_SHM_FORMAT_ARGB8888
pattern ShmFormatXRGB8888 :: ShmFormat
pattern ShmFormatXRGB8888             = Client.G.WL_SHM_FORMAT_XRGB8888
pattern ShmFormatC8 :: ShmFormat
pattern ShmFormatC8                   = Client.G.WL_SHM_FORMAT_C8
pattern ShmFormatRGB332 :: ShmFormat
pattern ShmFormatRGB332               = Client.G.WL_SHM_FORMAT_RGB332
pattern ShmFormatBGR233 :: ShmFormat
pattern ShmFormatBGR233               = Client.G.WL_SHM_FORMAT_BGR233
pattern ShmFormatXRGB4444 :: ShmFormat
pattern ShmFormatXRGB4444             = Client.G.WL_SHM_FORMAT_XRGB4444
pattern ShmFormatXBGR4444 :: ShmFormat
pattern ShmFormatXBGR4444             = Client.G.WL_SHM_FORMAT_XBGR4444
pattern ShmFormatRGBX4444 :: ShmFormat
pattern ShmFormatRGBX4444             = Client.G.WL_SHM_FORMAT_RGBX4444
pattern ShmFormatBGRX4444 :: ShmFormat
pattern ShmFormatBGRX4444             = Client.G.WL_SHM_FORMAT_BGRX4444
pattern ShmFormatARGB4444 :: ShmFormat
pattern ShmFormatARGB4444             = Client.G.WL_SHM_FORMAT_ARGB4444
pattern ShmFormatABGR4444 :: ShmFormat
pattern ShmFormatABGR4444             = Client.G.WL_SHM_FORMAT_ABGR4444
pattern ShmFormatRGBA4444 :: ShmFormat
pattern ShmFormatRGBA4444             = Client.G.WL_SHM_FORMAT_RGBA4444
pattern ShmFormatBGRA4444 :: ShmFormat
pattern ShmFormatBGRA4444             = Client.G.WL_SHM_FORMAT_BGRA4444
pattern ShmFormatXRGB1555 :: ShmFormat
pattern ShmFormatXRGB1555             = Client.G.WL_SHM_FORMAT_XRGB1555
pattern ShmFormatXBGR1555 :: ShmFormat
pattern ShmFormatXBGR1555             = Client.G.WL_SHM_FORMAT_XBGR1555
pattern ShmFormatRGBX5551 :: ShmFormat
pattern ShmFormatRGBX5551             = Client.G.WL_SHM_FORMAT_RGBX5551
pattern ShmFormatBGRX5551 :: ShmFormat
pattern ShmFormatBGRX5551             = Client.G.WL_SHM_FORMAT_BGRX5551
pattern ShmFormatARGB1555 :: ShmFormat
pattern ShmFormatARGB1555             = Client.G.WL_SHM_FORMAT_ARGB1555
pattern ShmFormatABGR1555 :: ShmFormat
pattern ShmFormatABGR1555             = Client.G.WL_SHM_FORMAT_ABGR1555
pattern ShmFormatRGBA5551 :: ShmFormat
pattern ShmFormatRGBA5551             = Client.G.WL_SHM_FORMAT_RGBA5551
pattern ShmFormatBGRA5551 :: ShmFormat
pattern ShmFormatBGRA5551             = Client.G.WL_SHM_FORMAT_BGRA5551
pattern ShmFormatRGB565 :: ShmFormat
pattern ShmFormatRGB565               = Client.G.WL_SHM_FORMAT_RGB565
pattern ShmFormatBGR565 :: ShmFormat
pattern ShmFormatBGR565               = Client.G.WL_SHM_FORMAT_BGR565
pattern ShmFormatRGB888 :: ShmFormat
pattern ShmFormatRGB888               = Client.G.WL_SHM_FORMAT_RGB888
pattern ShmFormatBGR888 :: ShmFormat
pattern ShmFormatBGR888               = Client.G.WL_SHM_FORMAT_BGR888
pattern ShmFormatXBGR8888 :: ShmFormat
pattern ShmFormatXBGR8888             = Client.G.WL_SHM_FORMAT_XBGR8888
pattern ShmFormatRGBX8888 :: ShmFormat
pattern ShmFormatRGBX8888             = Client.G.WL_SHM_FORMAT_RGBX8888
pattern ShmFormatBGRX8888 :: ShmFormat
pattern ShmFormatBGRX8888             = Client.G.WL_SHM_FORMAT_BGRX8888
pattern ShmFormatABGR8888 :: ShmFormat
pattern ShmFormatABGR8888             = Client.G.WL_SHM_FORMAT_ABGR8888
pattern ShmFormatRGBA8888 :: ShmFormat
pattern ShmFormatRGBA8888             = Client.G.WL_SHM_FORMAT_RGBA8888
pattern ShmFormatBGRA8888 :: ShmFormat
pattern ShmFormatBGRA8888             = Client.G.WL_SHM_FORMAT_BGRA8888
pattern ShmFormatXRGB2101010 :: ShmFormat
pattern ShmFormatXRGB2101010          = Client.G.WL_SHM_FORMAT_XRGB2101010
pattern ShmFormatXBGR2101010 :: ShmFormat
pattern ShmFormatXBGR2101010          = Client.G.WL_SHM_FORMAT_XBGR2101010
pattern ShmFormatRGBX1010102 :: ShmFormat
pattern ShmFormatRGBX1010102          = Client.G.WL_SHM_FORMAT_RGBX1010102
pattern ShmFormatBGRX1010102 :: ShmFormat
pattern ShmFormatBGRX1010102          = Client.G.WL_SHM_FORMAT_BGRX1010102
pattern ShmFormatARGB2101010 :: ShmFormat
pattern ShmFormatARGB2101010          = Client.G.WL_SHM_FORMAT_ARGB2101010
pattern ShmFormatABGR2101010 :: ShmFormat
pattern ShmFormatABGR2101010          = Client.G.WL_SHM_FORMAT_ABGR2101010
pattern ShmFormatRGBA1010102 :: ShmFormat
pattern ShmFormatRGBA1010102          = Client.G.WL_SHM_FORMAT_RGBA1010102
pattern ShmFormatBGRA1010102 :: ShmFormat
pattern ShmFormatBGRA1010102          = Client.G.WL_SHM_FORMAT_BGRA1010102
pattern ShmFormatYUYV :: ShmFormat
pattern ShmFormatYUYV                 = Client.G.WL_SHM_FORMAT_YUYV
pattern ShmFormatYVYU :: ShmFormat
pattern ShmFormatYVYU                 = Client.G.WL_SHM_FORMAT_YVYU
pattern ShmFormatUYVY :: ShmFormat
pattern ShmFormatUYVY                 = Client.G.WL_SHM_FORMAT_UYVY
pattern ShmFormatVYUY :: ShmFormat
pattern ShmFormatVYUY                 = Client.G.WL_SHM_FORMAT_VYUY
pattern ShmFormatAYUV :: ShmFormat
pattern ShmFormatAYUV                 = Client.G.WL_SHM_FORMAT_AYUV
pattern ShmFormatNV12 :: ShmFormat
pattern ShmFormatNV12                 = Client.G.WL_SHM_FORMAT_NV12
pattern ShmFormatNV21 :: ShmFormat
pattern ShmFormatNV21                 = Client.G.WL_SHM_FORMAT_NV21
pattern ShmFormatNV16 :: ShmFormat
pattern ShmFormatNV16                 = Client.G.WL_SHM_FORMAT_NV16
pattern ShmFormatNV61 :: ShmFormat
pattern ShmFormatNV61                 = Client.G.WL_SHM_FORMAT_NV61
pattern ShmFormatYUV410 :: ShmFormat
pattern ShmFormatYUV410               = Client.G.WL_SHM_FORMAT_YUV410
pattern ShmFormatYVU410 :: ShmFormat
pattern ShmFormatYVU410               = Client.G.WL_SHM_FORMAT_YVU410
pattern ShmFormatYUV411 :: ShmFormat
pattern ShmFormatYUV411               = Client.G.WL_SHM_FORMAT_YUV411
pattern ShmFormatYVU411 :: ShmFormat
pattern ShmFormatYVU411               = Client.G.WL_SHM_FORMAT_YVU411
pattern ShmFormatYUV420 :: ShmFormat
pattern ShmFormatYUV420               = Client.G.WL_SHM_FORMAT_YUV420
pattern ShmFormatYVU420 :: ShmFormat
pattern ShmFormatYVU420               = Client.G.WL_SHM_FORMAT_YVU420
pattern ShmFormatYUV422 :: ShmFormat
pattern ShmFormatYUV422               = Client.G.WL_SHM_FORMAT_YUV422
pattern ShmFormatYVU422 :: ShmFormat
pattern ShmFormatYVU422               = Client.G.WL_SHM_FORMAT_YVU422
pattern ShmFormatYUV444 :: ShmFormat
pattern ShmFormatYUV444               = Client.G.WL_SHM_FORMAT_YUV444
pattern ShmFormatYVU444 :: ShmFormat
pattern ShmFormatYVU444               = Client.G.WL_SHM_FORMAT_YVU444
pattern ShmFormatR8 :: ShmFormat
pattern ShmFormatR8                   = Client.G.WL_SHM_FORMAT_R8
pattern ShmFormatR16 :: ShmFormat
pattern ShmFormatR16                  = Client.G.WL_SHM_FORMAT_R16
pattern ShmFormatRG88 :: ShmFormat
pattern ShmFormatRG88                 = Client.G.WL_SHM_FORMAT_RG88
pattern ShmFormatGR88 :: ShmFormat
pattern ShmFormatGR88                 = Client.G.WL_SHM_FORMAT_GR88
pattern ShmFormatRG1616 :: ShmFormat
pattern ShmFormatRG1616               = Client.G.WL_SHM_FORMAT_RG1616
pattern ShmFormatGR1616 :: ShmFormat
pattern ShmFormatGR1616               = Client.G.WL_SHM_FORMAT_GR1616
pattern ShmFormatXRGB16161616F :: ShmFormat
pattern ShmFormatXRGB16161616F        = Client.G.WL_SHM_FORMAT_XRGB16161616F
pattern ShmFormatXBGR16161616F :: ShmFormat
pattern ShmFormatXBGR16161616F        = Client.G.WL_SHM_FORMAT_XBGR16161616F
pattern ShmFormatARGB16161616F :: ShmFormat
pattern ShmFormatARGB16161616F        = Client.G.WL_SHM_FORMAT_ARGB16161616F
pattern ShmFormatABGR16161616F :: ShmFormat
pattern ShmFormatABGR16161616F        = Client.G.WL_SHM_FORMAT_ABGR16161616F
pattern ShmFormatXYUV8888 :: ShmFormat
pattern ShmFormatXYUV8888             = Client.G.WL_SHM_FORMAT_XYUV8888
pattern ShmFormatVUY888 :: ShmFormat
pattern ShmFormatVUY888               = Client.G.WL_SHM_FORMAT_VUY888
pattern ShmFormatVUY101010 :: ShmFormat
pattern ShmFormatVUY101010            = Client.G.WL_SHM_FORMAT_VUY101010
pattern ShmFormatY210 :: ShmFormat
pattern ShmFormatY210                 = Client.G.WL_SHM_FORMAT_Y210
pattern ShmFormatY212 :: ShmFormat
pattern ShmFormatY212                 = Client.G.WL_SHM_FORMAT_Y212
pattern ShmFormatY216 :: ShmFormat
pattern ShmFormatY216                 = Client.G.WL_SHM_FORMAT_Y216
pattern ShmFormatY410 :: ShmFormat
pattern ShmFormatY410                 = Client.G.WL_SHM_FORMAT_Y410
pattern ShmFormatY412 :: ShmFormat
pattern ShmFormatY412                 = Client.G.WL_SHM_FORMAT_Y412
pattern ShmFormatY416 :: ShmFormat
pattern ShmFormatY416                 = Client.G.WL_SHM_FORMAT_Y416
pattern ShmFormatXVYU2101010 :: ShmFormat
pattern ShmFormatXVYU2101010          = Client.G.WL_SHM_FORMAT_XVYU2101010
pattern ShmFormatXVYU12_16161616 :: ShmFormat
pattern ShmFormatXVYU12_16161616      = Client.G.WL_SHM_FORMAT_XVYU12_16161616
pattern ShmFormatXVYU16161616 :: ShmFormat
pattern ShmFormatXVYU16161616         = Client.G.WL_SHM_FORMAT_XVYU16161616
pattern ShmFormatY0L0 :: ShmFormat
pattern ShmFormatY0L0                 = Client.G.WL_SHM_FORMAT_Y0L0
pattern ShmFormatX0L0 :: ShmFormat
pattern ShmFormatX0L0                 = Client.G.WL_SHM_FORMAT_X0L0
pattern ShmFormatY0L2 :: ShmFormat
pattern ShmFormatY0L2                 = Client.G.WL_SHM_FORMAT_Y0L2
pattern ShmFormatX0L2 :: ShmFormat
pattern ShmFormatX0L2                 = Client.G.WL_SHM_FORMAT_X0L2
pattern ShmFormatYUV420_8BIT :: ShmFormat
pattern ShmFormatYUV420_8BIT          = Client.G.WL_SHM_FORMAT_YUV420_8BIT
pattern ShmFormatYUV420_10BIT :: ShmFormat
pattern ShmFormatYUV420_10BIT         = Client.G.WL_SHM_FORMAT_YUV420_10BIT
pattern ShmFormatXRGB8888_A8 :: ShmFormat
pattern ShmFormatXRGB8888_A8          = Client.G.WL_SHM_FORMAT_XRGB8888_A8
pattern ShmFormatXBGR8888_A8 :: ShmFormat
pattern ShmFormatXBGR8888_A8          = Client.G.WL_SHM_FORMAT_XBGR8888_A8
pattern ShmFormatRGBX8888_A8 :: ShmFormat
pattern ShmFormatRGBX8888_A8          = Client.G.WL_SHM_FORMAT_RGBX8888_A8
pattern ShmFormatBGRX8888_A8 :: ShmFormat
pattern ShmFormatBGRX8888_A8          = Client.G.WL_SHM_FORMAT_BGRX8888_A8
pattern ShmFormatRGB888_A8 :: ShmFormat
pattern ShmFormatRGB888_A8            = Client.G.WL_SHM_FORMAT_RGB888_A8
pattern ShmFormatBGR888_A8 :: ShmFormat
pattern ShmFormatBGR888_A8            = Client.G.WL_SHM_FORMAT_BGR888_A8
pattern ShmFormatRGB565_A8 :: ShmFormat
pattern ShmFormatRGB565_A8            = Client.G.WL_SHM_FORMAT_RGB565_A8
pattern ShmFormatBGR565_A8 :: ShmFormat
pattern ShmFormatBGR565_A8            = Client.G.WL_SHM_FORMAT_BGR565_A8
pattern ShmFormatNV24 :: ShmFormat
pattern ShmFormatNV24                 = Client.G.WL_SHM_FORMAT_NV24
pattern ShmFormatNV42 :: ShmFormat
pattern ShmFormatNV42                 = Client.G.WL_SHM_FORMAT_NV42
pattern ShmFormatP210 :: ShmFormat
pattern ShmFormatP210                 = Client.G.WL_SHM_FORMAT_P210
pattern ShmFormatP010 :: ShmFormat
pattern ShmFormatP010                 = Client.G.WL_SHM_FORMAT_P010
pattern ShmFormatP012 :: ShmFormat
pattern ShmFormatP012                 = Client.G.WL_SHM_FORMAT_P012
pattern ShmFormatP016 :: ShmFormat
pattern ShmFormatP016                 = Client.G.WL_SHM_FORMAT_P016
pattern ShmFormatAXBXGXRX106106106106 :: ShmFormat
pattern ShmFormatAXBXGXRX106106106106 = Client.G.WL_SHM_FORMAT_AXBXGXRX106106106106
pattern ShmFormatNV15 :: ShmFormat
pattern ShmFormatNV15                 = Client.G.WL_SHM_FORMAT_NV15
pattern ShmFormatQ410 :: ShmFormat
pattern ShmFormatQ410                 = Client.G.WL_SHM_FORMAT_Q410
pattern ShmFormatQ401 :: ShmFormat
pattern ShmFormatQ401                 = Client.G.WL_SHM_FORMAT_Q401
pattern ShmFormatXRGB16161616 :: ShmFormat
pattern ShmFormatXRGB16161616         = Client.G.WL_SHM_FORMAT_XRGB16161616
pattern ShmFormatXBGR16161616 :: ShmFormat
pattern ShmFormatXBGR16161616         = Client.G.WL_SHM_FORMAT_XBGR16161616
pattern ShmFormatARGB16161616 :: ShmFormat
pattern ShmFormatARGB16161616         = Client.G.WL_SHM_FORMAT_ARGB16161616
pattern ShmFormatABGR16161616 :: ShmFormat
pattern ShmFormatABGR16161616         = Client.G.WL_SHM_FORMAT_ABGR16161616
pattern ShmFormatC1 :: ShmFormat
pattern ShmFormatC1                   = Client.G.WL_SHM_FORMAT_C1
pattern ShmFormatC2 :: ShmFormat
pattern ShmFormatC2                   = Client.G.WL_SHM_FORMAT_C2
pattern ShmFormatC4 :: ShmFormat
pattern ShmFormatC4                   = Client.G.WL_SHM_FORMAT_C4
pattern ShmFormatD1 :: ShmFormat
pattern ShmFormatD1                   = Client.G.WL_SHM_FORMAT_D1
pattern ShmFormatD2 :: ShmFormat
pattern ShmFormatD2                   = Client.G.WL_SHM_FORMAT_D2
pattern ShmFormatD4 :: ShmFormat
pattern ShmFormatD4                   = Client.G.WL_SHM_FORMAT_D4
pattern ShmFormatD8 :: ShmFormat
pattern ShmFormatD8                   = Client.G.WL_SHM_FORMAT_D8
pattern ShmFormatR1 :: ShmFormat
pattern ShmFormatR1                   = Client.G.WL_SHM_FORMAT_R1
pattern ShmFormatR2 :: ShmFormat
pattern ShmFormatR2                   = Client.G.WL_SHM_FORMAT_R2
pattern ShmFormatR4 :: ShmFormat
pattern ShmFormatR4                   = Client.G.WL_SHM_FORMAT_R4
pattern ShmFormatR10 :: ShmFormat
pattern ShmFormatR10                  = Client.G.WL_SHM_FORMAT_R10
pattern ShmFormatR12 :: ShmFormat
pattern ShmFormatR12                  = Client.G.WL_SHM_FORMAT_R12
pattern ShmFormatAVUY8888 :: ShmFormat
pattern ShmFormatAVUY8888             = Client.G.WL_SHM_FORMAT_AVUY8888
pattern ShmFormatXVUY8888 :: ShmFormat
pattern ShmFormatXVUY8888             = Client.G.WL_SHM_FORMAT_XVUY8888
pattern ShmFormatP030 :: ShmFormat
pattern ShmFormatP030                 = Client.G.WL_SHM_FORMAT_P030

pattern ShellSurfaceTransientInactive :: ShellSurfaceTransient
pattern ShellSurfaceTransientInactive = Client.G.WL_SHELL_SURFACE_TRANSIENT_INACTIVE

pattern ShellSurfaceResizeNone :: ShellSurfaceResize
pattern ShellSurfaceResizeNone          = Client.G.WL_SHELL_SURFACE_RESIZE_NONE
pattern ShellSurfaceResizeTop :: ShellSurfaceResize
pattern ShellSurfaceResizeTop           = Client.G.WL_SHELL_SURFACE_RESIZE_TOP
pattern ShellSurfaceResizeBottom :: ShellSurfaceResize
pattern ShellSurfaceResizeBottom        = Client.G.WL_SHELL_SURFACE_RESIZE_BOTTOM
pattern ShellSurfaceResizeLeft :: ShellSurfaceResize
pattern ShellSurfaceResizeLeft          = Client.G.WL_SHELL_SURFACE_RESIZE_LEFT
pattern ShellSurfaceResizeTopLeft :: ShellSurfaceResize
pattern ShellSurfaceResizeTopLeft       = Client.G.WL_SHELL_SURFACE_RESIZE_TOP_LEFT
pattern ShellSurfaceResizeBottomLeft :: ShellSurfaceResize
pattern ShellSurfaceResizeBottomLeft    = Client.G.WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT
pattern ShellSurfaceResizeRight :: ShellSurfaceResize
pattern ShellSurfaceResizeRight         = Client.G.WL_SHELL_SURFACE_RESIZE_RIGHT
pattern ShellSurfaceResizeTopRight :: ShellSurfaceResize
pattern ShellSurfaceResizeTopRight      = Client.G.WL_SHELL_SURFACE_RESIZE_TOP_RIGHT
pattern ShellSurfaceResizeBottomRight :: ShellSurfaceResize
pattern ShellSurfaceResizeBottomRight   = Client.G.WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT

pattern ShellSurfaceFullscreenMethodDefault = Client.G.WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT
pattern ShellSurfaceFullscreenMethodScale   = Client.G.WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE
pattern ShellSurfaceFullscreenMethodDriver  = Client.G.WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER
pattern ShellSurfaceFullscreenMethodFill    = Client.G.WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL

pattern SeatCapabilityPointer  = Client.G.WL_SEAT_CAPABILITY_POINTER
pattern SeatCapabilityKeyboard = Client.G.WL_SEAT_CAPABILITY_KEYBOARD
pattern SeatCapabilityTouch    = Client.G.WL_SEAT_CAPABILITY_TOUCH

parseSeatCapabilities :: SeatCapability -> [SeatCapability]
parseSeatCapabilities x = [ v | v <- values, fromCEnum x .&. fromCEnum v > 0 ]
  where
    values = [ SeatCapabilityPointer
             , SeatCapabilityKeyboard
             , SeatCapabilityTouch
             ]

-- PointerButtonState
pattern PointerButtonStateReleased = Client.G.WL_POINTER_BUTTON_STATE_RELEASED
pattern PointerButtonStatePressed  = Client.G.WL_POINTER_BUTTON_STATE_PRESSED

pattern PointerAxisVerticalScroll   = Client.G.WL_POINTER_AXIS_VERTICAL_SCROLL
pattern PointerAxisHorizontalScroll = Client.G.WL_POINTER_AXIS_HORIZONTAL_SCROLL

pattern PointerAxisSourceWheel        = Client.G.WL_POINTER_AXIS_SOURCE_WHEEL
pattern PointerAxisSourceFinger       = Client.G.WL_POINTER_AXIS_SOURCE_FINGER
pattern PointerAxisSourceContinuous   = Client.G.WL_POINTER_AXIS_SOURCE_CONTINUOUS
pattern PointerAxisSourceWheelTilt    = Client.G.WL_POINTER_AXIS_SOURCE_WHEEL_TILT

pattern PointerAxisRelativeDirectionIdentical = Client.G.WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL
pattern PointerAxisRelativeDirectionInverted  = Client.G.WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED

pattern KeyboardKeymapFormatNoKeymap = Client.G.WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP
pattern KeyboardKeymapFormatXkbV1    = Client.G.WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1

pattern KeyboardKeyStateReleased = Client.G.WL_KEYBOARD_KEY_STATE_RELEASED
pattern KeyboardKeyStatePressed  = Client.G.WL_KEYBOARD_KEY_STATE_PRESSED
pattern KeyboardKeyStateRepeated = Client.G.WL_KEYBOARD_KEY_STATE_REPEATED

-- | @shmCreatePool shm fd sizeBytes@
shmCreatePool :: MonadIO m => Shm -> Fd -> Int -> m ShmPool
{-# INLINE shmCreatePool #-}
shmCreatePool shm fd size = Client.shmCreatePool shm (fromIntegral fd) (fromIntegral size)

-- * Registry / Globals

-- | Tracks the global objects that are available through wl_registry.
data RegistryState = RegistryState
  { registryPtr      :: !Registry
  , registryListener :: !(ConstPtr (ObjectListener Registry))
  , registrySettings :: !RegistrySettings
  , globals          :: !(IORef [Global])
  , bindings         :: !(IORef (M.Map ObjectName SomeObject))
  }

data SomeObject where
  SomeObject :: (HasInterface object) => object -> SomeObject

-- | Global description
data Global = Global
  { name      :: {-# UNPACK #-} !ObjectName -- ^ Name of the global.
  , version   :: {-# UNPACK #-} !Version -- ^ Advertised version of the global.
  , interface :: !String -- ^ Interface of the global.
  } deriving (Eq, Ord, Show, Read)

data GlobalException = NoSuchGlobal String Version (Maybe ObjectName)
  deriving (Show, Eq)

instance Exception GlobalException

data RegistrySettings = RegistrySettings
 { regOnEvent :: RegistryEvent -> IO ()
 , regOnBind :: forall a. HasInterface a => Proxy a -> ObjectName -> Version -> IO ()
 }
instance Default RegistrySettings where
  def = RegistrySettings
    { regOnEvent = \_ -> pure ()
    , regOnBind = \_ _ _ -> pure ()
    }

initRegistryState :: MonadIO m => RegistrySettings -> Display -> m RegistryState
initRegistryState registrySettings disp = do
  registryPtr <- displayGetRegistry disp
  globals <- liftIO (newIORef mempty)
  bindings <- liftIO (newIORef mempty)
  registryListener <- createListener $ \ev -> do
    case ev of
      RegistryGlobal{..} -> modifyIORef globals $ \xs -> Global name version interface : xs
      RegistryGlobalRemove{..} -> do
        modifyIORef globals $ filter (\x -> x.name /= name)
        bs <- readIORef bindings
        case M.lookup name bs of
          Just SomeObject{} -> do
            -- objectDestroy o
            modifyIORef bindings $ M.delete name
          Nothing -> return ()
    regOnEvent registrySettings ev
  listenerAdd_ registryPtr registryListener
  let st = RegistryState{..}
  return st

bindGlobal :: forall a m.
  ( MonadIO m
  , HasInterface a
  , InterfaceType a ~ Wl_interface
  ) => RegistryState
    -> Maybe ObjectName -- ^ Bind to specific object (name)
    -> Maybe Version -- ^ Request a specific version. The final version is smallest of this and the reported version
    -> m a
bindGlobal st reqName reqVersion = liftIO $ L.find check <$> readIORef st.globals >>= \case
  Just x -> registryBindObject st x.name (min reqVersion' x.version)
  Nothing -> throwIO $ NoSuchGlobal (objectInterfaceName @a Proxy) reqVersion' reqName
  where
    check x = maybe True (== x.name) reqName && x.interface == objectInterfaceName @a Proxy
    reqVersion' = fromMaybe (objectInterfaceVersion @a Proxy) reqVersion

registryBindObject :: forall a m.
  ( MonadIO m
  , HasInterface a
  , InterfaceType a ~ Wl_interface
  ) => RegistryState -> ObjectName -> Version -> m a
{-# INLINE registryBindObject #-}
registryBindObject st name maxVersion = do
  let ver = min maxVersion $ objectInterfaceVersion p
  o <- objectBindWrap <$> registryBind st.registryPtr name (objectInterface p) ver
  liftIO $ modifyIORef st.bindings $ M.insert name $ SomeObject o
  liftIO $ regOnBind st.registrySettings p name ver
  return o
  where
    p :: RIP.Proxy a
    p = RIP.Proxy

-- * Compositor

-- | Create a new region and destroy it automatically after the callback finishes.
withNewRegion :: MonadUnliftIO m => Compositor -> (Region -> m a) -> m a
withNewRegion comp = bracket (compositorCreateRegion comp) (liftIO . objectDestroy)

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE UndecidableInstances #-}

module Generated.Wayland.Client
    ( Generated.Wayland.Client.Timespec
    , Generated.Wayland.Client.WlProxy
    , Generated.Wayland.Client.WlDisplay
    , Generated.Wayland.Client.WlEventQueue
    , Generated.Wayland.Client.wL_MARSHAL_FLAG_DESTROY
    , Generated.Wayland.Client.WlBuffer
    , Generated.Wayland.Client.WlCallback
    , Generated.Wayland.Client.WlCompositor
    , Generated.Wayland.Client.WlDataDevice
    , Generated.Wayland.Client.WlDataDeviceManager
    , Generated.Wayland.Client.WlDataOffer
    , Generated.Wayland.Client.WlDataSource
    , Generated.Wayland.Client.WlFixes
    , Generated.Wayland.Client.WlKeyboard
    , Generated.Wayland.Client.WlOutput
    , Generated.Wayland.Client.WlPointer
    , Generated.Wayland.Client.WlRegion
    , Generated.Wayland.Client.WlRegistry
    , Generated.Wayland.Client.WlSeat
    , Generated.Wayland.Client.WlShell
    , Generated.Wayland.Client.WlShellSurface
    , Generated.Wayland.Client.WlShm
    , Generated.Wayland.Client.WlShmPool
    , Generated.Wayland.Client.WlSubcompositor
    , Generated.Wayland.Client.WlSubsurface
    , Generated.Wayland.Client.WlSurface
    , Generated.Wayland.Client.WlTouch
    , Generated.Wayland.Client.WlDisplayError(..)
    , pattern Generated.Wayland.Client.WL_DISPLAY_ERROR_INVALID_OBJECT
    , pattern Generated.Wayland.Client.WL_DISPLAY_ERROR_INVALID_METHOD
    , pattern Generated.Wayland.Client.WL_DISPLAY_ERROR_NO_MEMORY
    , pattern Generated.Wayland.Client.WL_DISPLAY_ERROR_IMPLEMENTATION
    , Generated.Wayland.Client.WlDisplayListener(..)
    , Generated.Wayland.Client.wL_DISPLAY_SYNC
    , Generated.Wayland.Client.wL_DISPLAY_GET_REGISTRY
    , Generated.Wayland.Client.wL_DISPLAY_ERROR_SINCE_VERSION
    , Generated.Wayland.Client.wL_DISPLAY_DELETE_ID_SINCE_VERSION
    , Generated.Wayland.Client.wL_DISPLAY_SYNC_SINCE_VERSION
    , Generated.Wayland.Client.wL_DISPLAY_GET_REGISTRY_SINCE_VERSION
    , Generated.Wayland.Client.WlRegistryListener(..)
    , Generated.Wayland.Client.wL_REGISTRY_BIND
    , Generated.Wayland.Client.wL_REGISTRY_GLOBAL_SINCE_VERSION
    , Generated.Wayland.Client.wL_REGISTRY_GLOBAL_REMOVE_SINCE_VERSION
    , Generated.Wayland.Client.wL_REGISTRY_BIND_SINCE_VERSION
    , Generated.Wayland.Client.WlCallbackListener(..)
    , Generated.Wayland.Client.wL_CALLBACK_DONE_SINCE_VERSION
    , Generated.Wayland.Client.wL_COMPOSITOR_CREATE_SURFACE
    , Generated.Wayland.Client.wL_COMPOSITOR_CREATE_REGION
    , Generated.Wayland.Client.wL_COMPOSITOR_CREATE_SURFACE_SINCE_VERSION
    , Generated.Wayland.Client.wL_COMPOSITOR_CREATE_REGION_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHM_POOL_CREATE_BUFFER
    , Generated.Wayland.Client.wL_SHM_POOL_DESTROY
    , Generated.Wayland.Client.wL_SHM_POOL_RESIZE
    , Generated.Wayland.Client.wL_SHM_POOL_CREATE_BUFFER_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHM_POOL_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHM_POOL_RESIZE_SINCE_VERSION
    , Generated.Wayland.Client.WlShmError(..)
    , pattern Generated.Wayland.Client.WL_SHM_ERROR_INVALID_FORMAT
    , pattern Generated.Wayland.Client.WL_SHM_ERROR_INVALID_STRIDE
    , pattern Generated.Wayland.Client.WL_SHM_ERROR_INVALID_FD
    , Generated.Wayland.Client.WlShmFormat(..)
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ARGB8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XRGB8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_C8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGB332
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGR233
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XRGB4444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XBGR4444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBX4444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRX4444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ARGB4444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ABGR4444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBA4444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRA4444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XRGB1555
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XBGR1555
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBX5551
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRX5551
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ARGB1555
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ABGR1555
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBA5551
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRA5551
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGB565
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGR565
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGB888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGR888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XBGR8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBX8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRX8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ABGR8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBA8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRA8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XRGB2101010
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XBGR2101010
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBX1010102
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRX1010102
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ARGB2101010
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ABGR2101010
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBA1010102
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRA1010102
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YUYV
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YVYU
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_UYVY
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_VYUY
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_AYUV
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_NV12
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_NV21
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_NV16
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_NV61
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YUV410
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YVU410
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YUV411
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YVU411
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YUV420
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YVU420
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YUV422
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YVU422
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YUV444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YVU444
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_R8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_R16
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RG88
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_GR88
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RG1616
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_GR1616
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XRGB16161616F
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XBGR16161616F
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ARGB16161616F
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ABGR16161616F
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XYUV8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_VUY888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_VUY101010
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Y210
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Y212
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Y216
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Y410
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Y412
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Y416
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XVYU2101010
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XVYU12_16161616
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XVYU16161616
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Y0L0
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_X0L0
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Y0L2
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_X0L2
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YUV420_8BIT
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_YUV420_10BIT
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XRGB8888_A8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XBGR8888_A8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGBX8888_A8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGRX8888_A8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGB888_A8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGR888_A8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_RGB565_A8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_BGR565_A8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_NV24
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_NV42
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_P210
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_P010
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_P012
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_P016
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_AXBXGXRX106106106106
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_NV15
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Q410
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_Q401
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XRGB16161616
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XBGR16161616
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ARGB16161616
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_ABGR16161616
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_C1
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_C2
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_C4
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_D1
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_D2
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_D4
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_D8
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_R1
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_R2
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_R4
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_R10
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_R12
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_AVUY8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_XVUY8888
    , pattern Generated.Wayland.Client.WL_SHM_FORMAT_P030
    , Generated.Wayland.Client.WlShmListener(..)
    , Generated.Wayland.Client.wL_SHM_CREATE_POOL
    , Generated.Wayland.Client.wL_SHM_RELEASE
    , Generated.Wayland.Client.wL_SHM_FORMAT_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHM_CREATE_POOL_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHM_RELEASE_SINCE_VERSION
    , Generated.Wayland.Client.WlBufferListener(..)
    , Generated.Wayland.Client.wL_BUFFER_DESTROY
    , Generated.Wayland.Client.wL_BUFFER_RELEASE_SINCE_VERSION
    , Generated.Wayland.Client.wL_BUFFER_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.WlDataOfferError(..)
    , pattern Generated.Wayland.Client.WL_DATA_OFFER_ERROR_INVALID_FINISH
    , pattern Generated.Wayland.Client.WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK
    , pattern Generated.Wayland.Client.WL_DATA_OFFER_ERROR_INVALID_ACTION
    , pattern Generated.Wayland.Client.WL_DATA_OFFER_ERROR_INVALID_OFFER
    , Generated.Wayland.Client.WlDataOfferListener(..)
    , Generated.Wayland.Client.wL_DATA_OFFER_ACCEPT
    , Generated.Wayland.Client.wL_DATA_OFFER_RECEIVE
    , Generated.Wayland.Client.wL_DATA_OFFER_DESTROY
    , Generated.Wayland.Client.wL_DATA_OFFER_FINISH
    , Generated.Wayland.Client.wL_DATA_OFFER_SET_ACTIONS
    , Generated.Wayland.Client.wL_DATA_OFFER_OFFER_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_OFFER_SOURCE_ACTIONS_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_OFFER_ACTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_OFFER_ACCEPT_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_OFFER_RECEIVE_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_OFFER_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_OFFER_FINISH_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_OFFER_SET_ACTIONS_SINCE_VERSION
    , Generated.Wayland.Client.WlDataSourceError(..)
    , pattern Generated.Wayland.Client.WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK
    , pattern Generated.Wayland.Client.WL_DATA_SOURCE_ERROR_INVALID_SOURCE
    , Generated.Wayland.Client.WlDataSourceListener(..)
    , Generated.Wayland.Client.wL_DATA_SOURCE_OFFER
    , Generated.Wayland.Client.wL_DATA_SOURCE_DESTROY
    , Generated.Wayland.Client.wL_DATA_SOURCE_SET_ACTIONS
    , Generated.Wayland.Client.wL_DATA_SOURCE_TARGET_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_SOURCE_SEND_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_SOURCE_CANCELLED_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_SOURCE_DND_DROP_PERFORMED_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_SOURCE_DND_FINISHED_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_SOURCE_ACTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_SOURCE_OFFER_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_SOURCE_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_SOURCE_SET_ACTIONS_SINCE_VERSION
    , Generated.Wayland.Client.WlDataDeviceError(..)
    , pattern Generated.Wayland.Client.WL_DATA_DEVICE_ERROR_ROLE
    , pattern Generated.Wayland.Client.WL_DATA_DEVICE_ERROR_USED_SOURCE
    , Generated.Wayland.Client.WlDataDeviceListener(..)
    , Generated.Wayland.Client.wL_DATA_DEVICE_START_DRAG
    , Generated.Wayland.Client.wL_DATA_DEVICE_SET_SELECTION
    , Generated.Wayland.Client.wL_DATA_DEVICE_RELEASE
    , Generated.Wayland.Client.wL_DATA_DEVICE_DATA_OFFER_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_ENTER_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_LEAVE_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_MOTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_DROP_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_SELECTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_START_DRAG_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_SET_SELECTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_RELEASE_SINCE_VERSION
    , Generated.Wayland.Client.WlDataDeviceManagerDndAction(..)
    , pattern Generated.Wayland.Client.WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE
    , pattern Generated.Wayland.Client.WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY
    , pattern Generated.Wayland.Client.WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE
    , pattern Generated.Wayland.Client.WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK
    , Generated.Wayland.Client.wL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE
    , Generated.Wayland.Client.wL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE
    , Generated.Wayland.Client.wL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE_SINCE_VERSION
    , Generated.Wayland.Client.wL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE_SINCE_VERSION
    , Generated.Wayland.Client.WlShellError(..)
    , pattern Generated.Wayland.Client.WL_SHELL_ERROR_ROLE
    , Generated.Wayland.Client.wL_SHELL_GET_SHELL_SURFACE
    , Generated.Wayland.Client.wL_SHELL_GET_SHELL_SURFACE_SINCE_VERSION
    , Generated.Wayland.Client.WlShellSurfaceResize(..)
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_NONE
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_TOP
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_BOTTOM
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_LEFT
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_TOP_LEFT
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_RIGHT
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_TOP_RIGHT
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT
    , Generated.Wayland.Client.WlShellSurfaceTransient(..)
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_TRANSIENT_INACTIVE
    , Generated.Wayland.Client.WlShellSurfaceFullscreenMethod(..)
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER
    , pattern Generated.Wayland.Client.WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL
    , Generated.Wayland.Client.WlShellSurfaceListener(..)
    , Generated.Wayland.Client.wL_SHELL_SURFACE_PONG
    , Generated.Wayland.Client.wL_SHELL_SURFACE_MOVE
    , Generated.Wayland.Client.wL_SHELL_SURFACE_RESIZE
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_TOPLEVEL
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_TRANSIENT
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_FULLSCREEN
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_POPUP
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_MAXIMIZED
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_TITLE
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_CLASS
    , Generated.Wayland.Client.wL_SHELL_SURFACE_PING_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_CONFIGURE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_POPUP_DONE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_PONG_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_MOVE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_RESIZE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_TOPLEVEL_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_TRANSIENT_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_FULLSCREEN_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_POPUP_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_MAXIMIZED_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_TITLE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SHELL_SURFACE_SET_CLASS_SINCE_VERSION
    , Generated.Wayland.Client.WlSurfaceError(..)
    , pattern Generated.Wayland.Client.WL_SURFACE_ERROR_INVALID_SCALE
    , pattern Generated.Wayland.Client.WL_SURFACE_ERROR_INVALID_TRANSFORM
    , pattern Generated.Wayland.Client.WL_SURFACE_ERROR_INVALID_SIZE
    , pattern Generated.Wayland.Client.WL_SURFACE_ERROR_INVALID_OFFSET
    , pattern Generated.Wayland.Client.WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT
    , Generated.Wayland.Client.WlSurfaceListener(..)
    , Generated.Wayland.Client.wL_SURFACE_DESTROY
    , Generated.Wayland.Client.wL_SURFACE_ATTACH
    , Generated.Wayland.Client.wL_SURFACE_DAMAGE
    , Generated.Wayland.Client.wL_SURFACE_FRAME
    , Generated.Wayland.Client.wL_SURFACE_SET_OPAQUE_REGION
    , Generated.Wayland.Client.wL_SURFACE_SET_INPUT_REGION
    , Generated.Wayland.Client.wL_SURFACE_COMMIT
    , Generated.Wayland.Client.wL_SURFACE_SET_BUFFER_TRANSFORM
    , Generated.Wayland.Client.wL_SURFACE_SET_BUFFER_SCALE
    , Generated.Wayland.Client.wL_SURFACE_DAMAGE_BUFFER
    , Generated.Wayland.Client.wL_SURFACE_OFFSET
    , Generated.Wayland.Client.wL_SURFACE_ENTER_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_LEAVE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_PREFERRED_BUFFER_SCALE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_PREFERRED_BUFFER_TRANSFORM_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_ATTACH_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_DAMAGE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_FRAME_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_SET_OPAQUE_REGION_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_SET_INPUT_REGION_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_COMMIT_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_SET_BUFFER_TRANSFORM_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_SET_BUFFER_SCALE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_DAMAGE_BUFFER_SINCE_VERSION
    , Generated.Wayland.Client.wL_SURFACE_OFFSET_SINCE_VERSION
    , Generated.Wayland.Client.WlSeatCapability(..)
    , pattern Generated.Wayland.Client.WL_SEAT_CAPABILITY_POINTER
    , pattern Generated.Wayland.Client.WL_SEAT_CAPABILITY_KEYBOARD
    , pattern Generated.Wayland.Client.WL_SEAT_CAPABILITY_TOUCH
    , Generated.Wayland.Client.WlSeatError(..)
    , pattern Generated.Wayland.Client.WL_SEAT_ERROR_MISSING_CAPABILITY
    , Generated.Wayland.Client.WlSeatListener(..)
    , Generated.Wayland.Client.wL_SEAT_GET_POINTER
    , Generated.Wayland.Client.wL_SEAT_GET_KEYBOARD
    , Generated.Wayland.Client.wL_SEAT_GET_TOUCH
    , Generated.Wayland.Client.wL_SEAT_RELEASE
    , Generated.Wayland.Client.wL_SEAT_CAPABILITIES_SINCE_VERSION
    , Generated.Wayland.Client.wL_SEAT_NAME_SINCE_VERSION
    , Generated.Wayland.Client.wL_SEAT_GET_POINTER_SINCE_VERSION
    , Generated.Wayland.Client.wL_SEAT_GET_KEYBOARD_SINCE_VERSION
    , Generated.Wayland.Client.wL_SEAT_GET_TOUCH_SINCE_VERSION
    , Generated.Wayland.Client.wL_SEAT_RELEASE_SINCE_VERSION
    , Generated.Wayland.Client.WlPointerError(..)
    , pattern Generated.Wayland.Client.WL_POINTER_ERROR_ROLE
    , Generated.Wayland.Client.WlPointerButtonState(..)
    , pattern Generated.Wayland.Client.WL_POINTER_BUTTON_STATE_RELEASED
    , pattern Generated.Wayland.Client.WL_POINTER_BUTTON_STATE_PRESSED
    , Generated.Wayland.Client.WlPointerAxis(..)
    , pattern Generated.Wayland.Client.WL_POINTER_AXIS_VERTICAL_SCROLL
    , pattern Generated.Wayland.Client.WL_POINTER_AXIS_HORIZONTAL_SCROLL
    , Generated.Wayland.Client.WlPointerAxisSource(..)
    , pattern Generated.Wayland.Client.WL_POINTER_AXIS_SOURCE_WHEEL
    , pattern Generated.Wayland.Client.WL_POINTER_AXIS_SOURCE_FINGER
    , pattern Generated.Wayland.Client.WL_POINTER_AXIS_SOURCE_CONTINUOUS
    , pattern Generated.Wayland.Client.WL_POINTER_AXIS_SOURCE_WHEEL_TILT
    , Generated.Wayland.Client.wL_POINTER_AXIS_SOURCE_WHEEL_TILT_SINCE_VERSION
    , Generated.Wayland.Client.WlPointerAxisRelativeDirection(..)
    , pattern Generated.Wayland.Client.WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL
    , pattern Generated.Wayland.Client.WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED
    , Generated.Wayland.Client.WlPointerListener(..)
    , Generated.Wayland.Client.wL_POINTER_SET_CURSOR
    , Generated.Wayland.Client.wL_POINTER_RELEASE
    , Generated.Wayland.Client.wL_POINTER_ENTER_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_LEAVE_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_MOTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_BUTTON_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_AXIS_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_FRAME_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_AXIS_SOURCE_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_AXIS_STOP_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_AXIS_DISCRETE_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_AXIS_VALUE120_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_AXIS_RELATIVE_DIRECTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_SET_CURSOR_SINCE_VERSION
    , Generated.Wayland.Client.wL_POINTER_RELEASE_SINCE_VERSION
    , Generated.Wayland.Client.WlKeyboardKeymapFormat(..)
    , pattern Generated.Wayland.Client.WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP
    , pattern Generated.Wayland.Client.WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1
    , Generated.Wayland.Client.WlKeyboardKeyState(..)
    , pattern Generated.Wayland.Client.WL_KEYBOARD_KEY_STATE_RELEASED
    , pattern Generated.Wayland.Client.WL_KEYBOARD_KEY_STATE_PRESSED
    , pattern Generated.Wayland.Client.WL_KEYBOARD_KEY_STATE_REPEATED
    , Generated.Wayland.Client.wL_KEYBOARD_KEY_STATE_REPEATED_SINCE_VERSION
    , Generated.Wayland.Client.WlKeyboardListener(..)
    , Generated.Wayland.Client.wL_KEYBOARD_RELEASE
    , Generated.Wayland.Client.wL_KEYBOARD_KEYMAP_SINCE_VERSION
    , Generated.Wayland.Client.wL_KEYBOARD_ENTER_SINCE_VERSION
    , Generated.Wayland.Client.wL_KEYBOARD_LEAVE_SINCE_VERSION
    , Generated.Wayland.Client.wL_KEYBOARD_KEY_SINCE_VERSION
    , Generated.Wayland.Client.wL_KEYBOARD_MODIFIERS_SINCE_VERSION
    , Generated.Wayland.Client.wL_KEYBOARD_REPEAT_INFO_SINCE_VERSION
    , Generated.Wayland.Client.wL_KEYBOARD_RELEASE_SINCE_VERSION
    , Generated.Wayland.Client.WlTouchListener(..)
    , Generated.Wayland.Client.wL_TOUCH_RELEASE
    , Generated.Wayland.Client.wL_TOUCH_DOWN_SINCE_VERSION
    , Generated.Wayland.Client.wL_TOUCH_UP_SINCE_VERSION
    , Generated.Wayland.Client.wL_TOUCH_MOTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_TOUCH_FRAME_SINCE_VERSION
    , Generated.Wayland.Client.wL_TOUCH_CANCEL_SINCE_VERSION
    , Generated.Wayland.Client.wL_TOUCH_SHAPE_SINCE_VERSION
    , Generated.Wayland.Client.wL_TOUCH_ORIENTATION_SINCE_VERSION
    , Generated.Wayland.Client.wL_TOUCH_RELEASE_SINCE_VERSION
    , Generated.Wayland.Client.WlOutputSubpixel(..)
    , pattern Generated.Wayland.Client.WL_OUTPUT_SUBPIXEL_UNKNOWN
    , pattern Generated.Wayland.Client.WL_OUTPUT_SUBPIXEL_NONE
    , pattern Generated.Wayland.Client.WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB
    , pattern Generated.Wayland.Client.WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR
    , pattern Generated.Wayland.Client.WL_OUTPUT_SUBPIXEL_VERTICAL_RGB
    , pattern Generated.Wayland.Client.WL_OUTPUT_SUBPIXEL_VERTICAL_BGR
    , Generated.Wayland.Client.WlOutputTransform(..)
    , pattern Generated.Wayland.Client.WL_OUTPUT_TRANSFORM_NORMAL
    , pattern Generated.Wayland.Client.WL_OUTPUT_TRANSFORM_90
    , pattern Generated.Wayland.Client.WL_OUTPUT_TRANSFORM_180
    , pattern Generated.Wayland.Client.WL_OUTPUT_TRANSFORM_270
    , pattern Generated.Wayland.Client.WL_OUTPUT_TRANSFORM_FLIPPED
    , pattern Generated.Wayland.Client.WL_OUTPUT_TRANSFORM_FLIPPED_90
    , pattern Generated.Wayland.Client.WL_OUTPUT_TRANSFORM_FLIPPED_180
    , pattern Generated.Wayland.Client.WL_OUTPUT_TRANSFORM_FLIPPED_270
    , Generated.Wayland.Client.WlOutputMode(..)
    , pattern Generated.Wayland.Client.WL_OUTPUT_MODE_CURRENT
    , pattern Generated.Wayland.Client.WL_OUTPUT_MODE_PREFERRED
    , Generated.Wayland.Client.WlOutputListener(..)
    , Generated.Wayland.Client.wL_OUTPUT_RELEASE
    , Generated.Wayland.Client.wL_OUTPUT_GEOMETRY_SINCE_VERSION
    , Generated.Wayland.Client.wL_OUTPUT_MODE_SINCE_VERSION
    , Generated.Wayland.Client.wL_OUTPUT_DONE_SINCE_VERSION
    , Generated.Wayland.Client.wL_OUTPUT_SCALE_SINCE_VERSION
    , Generated.Wayland.Client.wL_OUTPUT_NAME_SINCE_VERSION
    , Generated.Wayland.Client.wL_OUTPUT_DESCRIPTION_SINCE_VERSION
    , Generated.Wayland.Client.wL_OUTPUT_RELEASE_SINCE_VERSION
    , Generated.Wayland.Client.wL_REGION_DESTROY
    , Generated.Wayland.Client.wL_REGION_ADD
    , Generated.Wayland.Client.wL_REGION_SUBTRACT
    , Generated.Wayland.Client.wL_REGION_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.wL_REGION_ADD_SINCE_VERSION
    , Generated.Wayland.Client.wL_REGION_SUBTRACT_SINCE_VERSION
    , Generated.Wayland.Client.WlSubcompositorError(..)
    , pattern Generated.Wayland.Client.WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE
    , pattern Generated.Wayland.Client.WL_SUBCOMPOSITOR_ERROR_BAD_PARENT
    , Generated.Wayland.Client.wL_SUBCOMPOSITOR_DESTROY
    , Generated.Wayland.Client.wL_SUBCOMPOSITOR_GET_SUBSURFACE
    , Generated.Wayland.Client.wL_SUBCOMPOSITOR_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.wL_SUBCOMPOSITOR_GET_SUBSURFACE_SINCE_VERSION
    , Generated.Wayland.Client.WlSubsurfaceError(..)
    , pattern Generated.Wayland.Client.WL_SUBSURFACE_ERROR_BAD_SURFACE
    , Generated.Wayland.Client.wL_SUBSURFACE_DESTROY
    , Generated.Wayland.Client.wL_SUBSURFACE_SET_POSITION
    , Generated.Wayland.Client.wL_SUBSURFACE_PLACE_ABOVE
    , Generated.Wayland.Client.wL_SUBSURFACE_PLACE_BELOW
    , Generated.Wayland.Client.wL_SUBSURFACE_SET_SYNC
    , Generated.Wayland.Client.wL_SUBSURFACE_SET_DESYNC
    , Generated.Wayland.Client.wL_SUBSURFACE_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.wL_SUBSURFACE_SET_POSITION_SINCE_VERSION
    , Generated.Wayland.Client.wL_SUBSURFACE_PLACE_ABOVE_SINCE_VERSION
    , Generated.Wayland.Client.wL_SUBSURFACE_PLACE_BELOW_SINCE_VERSION
    , Generated.Wayland.Client.wL_SUBSURFACE_SET_SYNC_SINCE_VERSION
    , Generated.Wayland.Client.wL_SUBSURFACE_SET_DESYNC_SINCE_VERSION
    , Generated.Wayland.Client.wL_FIXES_DESTROY
    , Generated.Wayland.Client.wL_FIXES_DESTROY_REGISTRY
    , Generated.Wayland.Client.wL_FIXES_DESTROY_SINCE_VERSION
    , Generated.Wayland.Client.wL_FIXES_DESTROY_REGISTRY_SINCE_VERSION
    )
  where

import qualified C.Expr.HostPlatform
import qualified Generated.Wayland.Util
import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst

{-| __C declaration:__ @struct timespec@

    __defined at:__ @wayland-client-core.h 37:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
data Timespec

{-| __C declaration:__ @struct wl_proxy@

    __defined at:__ @wayland-client-core.h 55:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
data WlProxy

{-| __C declaration:__ @struct wl_display@

    __defined at:__ @wayland-client-core.h 112:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
data WlDisplay

{-| __C declaration:__ @struct wl_event_queue@

    __defined at:__ @wayland-client-core.h 122:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
data WlEventQueue

{-| __C declaration:__ @macro WL_MARSHAL_FLAG_DESTROY@

    __defined at:__ @wayland-client-core.h 127:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
wL_MARSHAL_FLAG_DESTROY :: RIP.CInt
wL_MARSHAL_FLAG_DESTROY =
  (C.Expr.HostPlatform.<<) (1 :: RIP.CInt) (0 :: RIP.CInt)

{-| __C declaration:__ @struct wl_buffer@

    __defined at:__ @wayland-client-protocol.h 69:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlBuffer

{-| __C declaration:__ @struct wl_callback@

    __defined at:__ @wayland-client-protocol.h 70:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlCallback

{-| __C declaration:__ @struct wl_compositor@

    __defined at:__ @wayland-client-protocol.h 71:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlCompositor

{-| __C declaration:__ @struct wl_data_device@

    __defined at:__ @wayland-client-protocol.h 72:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlDataDevice

{-| __C declaration:__ @struct wl_data_device_manager@

    __defined at:__ @wayland-client-protocol.h 73:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlDataDeviceManager

{-| __C declaration:__ @struct wl_data_offer@

    __defined at:__ @wayland-client-protocol.h 74:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlDataOffer

{-| __C declaration:__ @struct wl_data_source@

    __defined at:__ @wayland-client-protocol.h 75:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlDataSource

{-| __C declaration:__ @struct wl_fixes@

    __defined at:__ @wayland-client-protocol.h 77:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlFixes

{-| __C declaration:__ @struct wl_keyboard@

    __defined at:__ @wayland-client-protocol.h 78:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlKeyboard

{-| __C declaration:__ @struct wl_output@

    __defined at:__ @wayland-client-protocol.h 79:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlOutput

{-| __C declaration:__ @struct wl_pointer@

    __defined at:__ @wayland-client-protocol.h 80:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlPointer

{-| __C declaration:__ @struct wl_region@

    __defined at:__ @wayland-client-protocol.h 81:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlRegion

{-| __C declaration:__ @struct wl_registry@

    __defined at:__ @wayland-client-protocol.h 82:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlRegistry

{-| __C declaration:__ @struct wl_seat@

    __defined at:__ @wayland-client-protocol.h 83:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlSeat

{-| __C declaration:__ @struct wl_shell@

    __defined at:__ @wayland-client-protocol.h 84:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlShell

{-| __C declaration:__ @struct wl_shell_surface@

    __defined at:__ @wayland-client-protocol.h 85:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlShellSurface

{-| __C declaration:__ @struct wl_shm@

    __defined at:__ @wayland-client-protocol.h 86:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlShm

{-| __C declaration:__ @struct wl_shm_pool@

    __defined at:__ @wayland-client-protocol.h 87:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlShmPool

{-| __C declaration:__ @struct wl_subcompositor@

    __defined at:__ @wayland-client-protocol.h 88:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlSubcompositor

{-| __C declaration:__ @struct wl_subsurface@

    __defined at:__ @wayland-client-protocol.h 89:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlSubsurface

{-| __C declaration:__ @struct wl_surface@

    __defined at:__ @wayland-client-protocol.h 90:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlSurface

{-| __C declaration:__ @struct wl_touch@

    __defined at:__ @wayland-client-protocol.h 91:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlTouch

{-| __C declaration:__ @enum wl_display_error@

    __defined at:__ @wayland-client-protocol.h 974:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlDisplayError = WlDisplayError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlDisplayError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlDisplayError where

  readRaw =
    \ptr0 ->
          pure WlDisplayError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlDisplayError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDisplayError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlDisplayError instance RIP.Storable WlDisplayError

deriving via RIP.CUInt instance RIP.Prim WlDisplayError

instance CEnum.CEnum WlDisplayError where

  type CEnumZ WlDisplayError = RIP.CUInt

  toCEnum = WlDisplayError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DISPLAY_ERROR_INVALID_OBJECT")
                                   , (1, RIP.singleton "WL_DISPLAY_ERROR_INVALID_METHOD")
                                   , (2, RIP.singleton "WL_DISPLAY_ERROR_NO_MEMORY")
                                   , (3, RIP.singleton "WL_DISPLAY_ERROR_IMPLEMENTATION")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlDisplayError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlDisplayError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlDisplayError where

  minDeclaredValue = WL_DISPLAY_ERROR_INVALID_OBJECT

  maxDeclaredValue = WL_DISPLAY_ERROR_IMPLEMENTATION

instance Show WlDisplayError where

  showsPrec = CEnum.shows

instance Read WlDisplayError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlDisplayError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlDisplayError "unwrap" where

  type CFieldType WlDisplayError "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DISPLAY_ERROR_INVALID_OBJECT@

    __defined at:__ @wayland-client-protocol.h 978:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DISPLAY_ERROR_INVALID_OBJECT :: WlDisplayError
pattern WL_DISPLAY_ERROR_INVALID_OBJECT = WlDisplayError 0

{-| __C declaration:__ @WL_DISPLAY_ERROR_INVALID_METHOD@

    __defined at:__ @wayland-client-protocol.h 982:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DISPLAY_ERROR_INVALID_METHOD :: WlDisplayError
pattern WL_DISPLAY_ERROR_INVALID_METHOD = WlDisplayError 1

{-| __C declaration:__ @WL_DISPLAY_ERROR_NO_MEMORY@

    __defined at:__ @wayland-client-protocol.h 986:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DISPLAY_ERROR_NO_MEMORY :: WlDisplayError
pattern WL_DISPLAY_ERROR_NO_MEMORY = WlDisplayError 2

{-| __C declaration:__ @WL_DISPLAY_ERROR_IMPLEMENTATION@

    __defined at:__ @wayland-client-protocol.h 990:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DISPLAY_ERROR_IMPLEMENTATION :: WlDisplayError
pattern WL_DISPLAY_ERROR_IMPLEMENTATION = WlDisplayError 3

{-| __C declaration:__ @struct wl_display_listener@

    __defined at:__ @wayland-client-protocol.h 998:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlDisplayListener = WlDisplayListener
  { error :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @error@

         __defined at:__ @wayland-client-protocol.h 1013:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , delete_id :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @delete_id@

         __defined at:__ @wayland-client-protocol.h 1028:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlDisplayListener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlDisplayListener where

  readRaw =
    \ptr0 ->
          pure WlDisplayListener
      <*> HasCField.readRaw (RIP.Proxy @"error") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"delete_id") ptr0

instance Marshal.WriteRaw WlDisplayListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDisplayListener error2 delete_id3 ->
               HasCField.writeRaw (RIP.Proxy @"error") ptr0 error2
            >> HasCField.writeRaw (RIP.Proxy @"delete_id") ptr0 delete_id3

deriving via Marshal.EquivStorable WlDisplayListener instance RIP.Storable WlDisplayListener

instance HasCField.HasCField WlDisplayListener "error" where

  type CFieldType WlDisplayListener "error" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "error" (RIP.Ptr WlDisplayListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"error")

instance HasCField.HasCField WlDisplayListener "delete_id" where

  type CFieldType WlDisplayListener "delete_id" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "delete_id" (RIP.Ptr WlDisplayListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"delete_id")

{-| __C declaration:__ @macro WL_DISPLAY_SYNC@

    __defined at:__ @wayland-client-protocol.h 1044:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DISPLAY_SYNC :: RIP.CInt
wL_DISPLAY_SYNC = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DISPLAY_GET_REGISTRY@

    __defined at:__ @wayland-client-protocol.h 1045:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DISPLAY_GET_REGISTRY :: RIP.CInt
wL_DISPLAY_GET_REGISTRY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DISPLAY_ERROR_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1050:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DISPLAY_ERROR_SINCE_VERSION :: RIP.CInt
wL_DISPLAY_ERROR_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DISPLAY_DELETE_ID_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1054:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DISPLAY_DELETE_ID_SINCE_VERSION :: RIP.CInt
wL_DISPLAY_DELETE_ID_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DISPLAY_SYNC_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1059:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DISPLAY_SYNC_SINCE_VERSION :: RIP.CInt
wL_DISPLAY_SYNC_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DISPLAY_GET_REGISTRY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1063:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DISPLAY_GET_REGISTRY_SINCE_VERSION :: RIP.CInt
wL_DISPLAY_GET_REGISTRY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @struct wl_registry_listener@

    __defined at:__ @wayland-client-protocol.h 1139:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlRegistryListener = WlRegistryListener
  { global :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @global@

         __defined at:__ @wayland-client-protocol.h 1152:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , global_remove :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @global_remove@

         __defined at:__ @wayland-client-protocol.h 1172:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlRegistryListener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlRegistryListener where

  readRaw =
    \ptr0 ->
          pure WlRegistryListener
      <*> HasCField.readRaw (RIP.Proxy @"global") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"global_remove") ptr0

instance Marshal.WriteRaw WlRegistryListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlRegistryListener global2 global_remove3 ->
               HasCField.writeRaw (RIP.Proxy @"global") ptr0 global2
            >> HasCField.writeRaw (RIP.Proxy @"global_remove") ptr0 global_remove3

deriving via Marshal.EquivStorable WlRegistryListener instance RIP.Storable WlRegistryListener

instance HasCField.HasCField WlRegistryListener "global" where

  type CFieldType WlRegistryListener "global" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "global" (RIP.Ptr WlRegistryListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"global")

instance HasCField.HasCField WlRegistryListener "global_remove" where

  type CFieldType WlRegistryListener "global_remove" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "global_remove" (RIP.Ptr WlRegistryListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"global_remove")

{-| __C declaration:__ @macro WL_REGISTRY_BIND@

    __defined at:__ @wayland-client-protocol.h 1188:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGISTRY_BIND :: RIP.CInt
wL_REGISTRY_BIND = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGISTRY_GLOBAL_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1193:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGISTRY_GLOBAL_SINCE_VERSION :: RIP.CInt
wL_REGISTRY_GLOBAL_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGISTRY_GLOBAL_REMOVE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1197:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGISTRY_GLOBAL_REMOVE_SINCE_VERSION :: RIP.CInt
wL_REGISTRY_GLOBAL_REMOVE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGISTRY_BIND_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1202:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGISTRY_BIND_SINCE_VERSION :: RIP.CInt
wL_REGISTRY_BIND_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @struct wl_callback_listener@

    __defined at:__ @wayland-client-protocol.h 1252:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlCallbackListener = WlCallbackListener
  { done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @done@

         __defined at:__ @wayland-client-protocol.h 1259:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlCallbackListener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlCallbackListener where

  readRaw =
    \ptr0 ->
          pure WlCallbackListener
      <*> HasCField.readRaw (RIP.Proxy @"done") ptr0

instance Marshal.WriteRaw WlCallbackListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlCallbackListener done2 ->
            HasCField.writeRaw (RIP.Proxy @"done") ptr0 done2

deriving via Marshal.EquivStorable WlCallbackListener instance RIP.Storable WlCallbackListener

instance HasCField.HasCField WlCallbackListener "done" where

  type CFieldType WlCallbackListener "done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "done" (RIP.Ptr WlCallbackListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"done")

{-| __C declaration:__ @macro WL_CALLBACK_DONE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1278:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_CALLBACK_DONE_SINCE_VERSION :: RIP.CInt
wL_CALLBACK_DONE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_COMPOSITOR_CREATE_SURFACE@

    __defined at:__ @wayland-client-protocol.h 1308:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_COMPOSITOR_CREATE_SURFACE :: RIP.CInt
wL_COMPOSITOR_CREATE_SURFACE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_COMPOSITOR_CREATE_REGION@

    __defined at:__ @wayland-client-protocol.h 1309:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_COMPOSITOR_CREATE_REGION :: RIP.CInt
wL_COMPOSITOR_CREATE_REGION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_COMPOSITOR_CREATE_SURFACE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1315:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_COMPOSITOR_CREATE_SURFACE_SINCE_VERSION :: RIP.CInt
wL_COMPOSITOR_CREATE_SURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_COMPOSITOR_CREATE_REGION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1319:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_COMPOSITOR_CREATE_REGION_SINCE_VERSION :: RIP.CInt
wL_COMPOSITOR_CREATE_REGION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_POOL_CREATE_BUFFER@

    __defined at:__ @wayland-client-protocol.h 1380:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_POOL_CREATE_BUFFER :: RIP.CInt
wL_SHM_POOL_CREATE_BUFFER = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_POOL_DESTROY@

    __defined at:__ @wayland-client-protocol.h 1381:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_POOL_DESTROY :: RIP.CInt
wL_SHM_POOL_DESTROY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_POOL_RESIZE@

    __defined at:__ @wayland-client-protocol.h 1382:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_POOL_RESIZE :: RIP.CInt
wL_SHM_POOL_RESIZE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_POOL_CREATE_BUFFER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1388:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_POOL_CREATE_BUFFER_SINCE_VERSION :: RIP.CInt
wL_SHM_POOL_CREATE_BUFFER_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_POOL_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1392:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_POOL_DESTROY_SINCE_VERSION :: RIP.CInt
wL_SHM_POOL_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_POOL_RESIZE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 1396:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_POOL_RESIZE_SINCE_VERSION :: RIP.CInt
wL_SHM_POOL_RESIZE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @enum wl_shm_error@

    __defined at:__ @wayland-client-protocol.h 1489:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlShmError = WlShmError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlShmError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlShmError where

  readRaw =
    \ptr0 ->
          pure WlShmError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlShmError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlShmError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlShmError instance RIP.Storable WlShmError

deriving via RIP.CUInt instance RIP.Prim WlShmError

instance CEnum.CEnum WlShmError where

  type CEnumZ WlShmError = RIP.CUInt

  toCEnum = WlShmError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SHM_ERROR_INVALID_FORMAT")
                                   , (1, RIP.singleton "WL_SHM_ERROR_INVALID_STRIDE")
                                   , (2, RIP.singleton "WL_SHM_ERROR_INVALID_FD")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlShmError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlShmError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlShmError where

  minDeclaredValue = WL_SHM_ERROR_INVALID_FORMAT

  maxDeclaredValue = WL_SHM_ERROR_INVALID_FD

instance Show WlShmError where

  showsPrec = CEnum.shows

instance Read WlShmError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlShmError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlShmError "unwrap" where

  type CFieldType WlShmError "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHM_ERROR_INVALID_FORMAT@

    __defined at:__ @wayland-client-protocol.h 1493:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_ERROR_INVALID_FORMAT :: WlShmError
pattern WL_SHM_ERROR_INVALID_FORMAT = WlShmError 0

{-| __C declaration:__ @WL_SHM_ERROR_INVALID_STRIDE@

    __defined at:__ @wayland-client-protocol.h 1497:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_ERROR_INVALID_STRIDE :: WlShmError
pattern WL_SHM_ERROR_INVALID_STRIDE = WlShmError 1

{-| __C declaration:__ @WL_SHM_ERROR_INVALID_FD@

    __defined at:__ @wayland-client-protocol.h 1501:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_ERROR_INVALID_FD :: WlShmError
pattern WL_SHM_ERROR_INVALID_FD = WlShmError 2

{-| __C declaration:__ @enum wl_shm_format@

    __defined at:__ @wayland-client-protocol.h 1524:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlShmFormat = WlShmFormat
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlShmFormat where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlShmFormat where

  readRaw =
    \ptr0 ->
          pure WlShmFormat
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlShmFormat where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlShmFormat unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlShmFormat instance RIP.Storable WlShmFormat

deriving via RIP.CUInt instance RIP.Prim WlShmFormat

instance CEnum.CEnum WlShmFormat where

  type CEnumZ WlShmFormat = RIP.CUInt

  toCEnum = WlShmFormat

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SHM_FORMAT_ARGB8888")
                                   , (1, RIP.singleton "WL_SHM_FORMAT_XRGB8888")
                                   , (538980675, RIP.singleton "WL_SHM_FORMAT_C1")
                                   , (538980676, RIP.singleton "WL_SHM_FORMAT_D1")
                                   , (538980690, RIP.singleton "WL_SHM_FORMAT_R1")
                                   , (538980931, RIP.singleton "WL_SHM_FORMAT_C2")
                                   , (538980932, RIP.singleton "WL_SHM_FORMAT_D2")
                                   , (538980946, RIP.singleton "WL_SHM_FORMAT_R2")
                                   , (538981443, RIP.singleton "WL_SHM_FORMAT_C4")
                                   , (538981444, RIP.singleton "WL_SHM_FORMAT_D4")
                                   , (538981458, RIP.singleton "WL_SHM_FORMAT_R4")
                                   , (538982467, RIP.singleton "WL_SHM_FORMAT_C8")
                                   , (538982468, RIP.singleton "WL_SHM_FORMAT_D8")
                                   , (538982482, RIP.singleton "WL_SHM_FORMAT_R8")
                                   , (540029266, RIP.singleton "WL_SHM_FORMAT_R10")
                                   , (540160338, RIP.singleton "WL_SHM_FORMAT_R12")
                                   , (540422482, RIP.singleton "WL_SHM_FORMAT_R16")
                                   , (808530000, RIP.singleton "WL_SHM_FORMAT_P010")
                                   , (808530512, RIP.singleton "WL_SHM_FORMAT_P210")
                                   , (808530521, RIP.singleton "WL_SHM_FORMAT_Y210")
                                   , (808531025, RIP.singleton "WL_SHM_FORMAT_Q410")
                                   , (808531033, RIP.singleton "WL_SHM_FORMAT_Y410")
                                   , (808534593, RIP.singleton "WL_SHM_FORMAT_AXBXGXRX106106106106")
                                   , (808539481, RIP.singleton "WL_SHM_FORMAT_YUV420_10BIT")
                                   , (808661072, RIP.singleton "WL_SHM_FORMAT_P030")
                                   , (808665410, RIP.singleton "WL_SHM_FORMAT_BGRA1010102")
                                   , (808665426, RIP.singleton "WL_SHM_FORMAT_RGBA1010102")
                                   , (808665665, RIP.singleton "WL_SHM_FORMAT_ABGR2101010")
                                   , (808665688, RIP.singleton "WL_SHM_FORMAT_XBGR2101010")
                                   , (808669761, RIP.singleton "WL_SHM_FORMAT_ARGB2101010")
                                   , (808669784, RIP.singleton "WL_SHM_FORMAT_XRGB2101010")
                                   , (808670550, RIP.singleton "WL_SHM_FORMAT_VUY101010")
                                   , (808670808, RIP.singleton "WL_SHM_FORMAT_XVYU2101010")
                                   , (808671298, RIP.singleton "WL_SHM_FORMAT_BGRX1010102")
                                   , (808671314, RIP.singleton "WL_SHM_FORMAT_RGBX1010102")
                                   , (810299480, RIP.singleton "WL_SHM_FORMAT_X0L0")
                                   , (810299481, RIP.singleton "WL_SHM_FORMAT_Y0L0")
                                   , (825242705, RIP.singleton "WL_SHM_FORMAT_Q401")
                                   , (825316697, RIP.singleton "WL_SHM_FORMAT_YUV411")
                                   , (825316953, RIP.singleton "WL_SHM_FORMAT_YVU411")
                                   , (825382478, RIP.singleton "WL_SHM_FORMAT_NV21")
                                   , (825644622, RIP.singleton "WL_SHM_FORMAT_NV61")
                                   , (842084432, RIP.singleton "WL_SHM_FORMAT_P012")
                                   , (842084953, RIP.singleton "WL_SHM_FORMAT_Y212")
                                   , (842085465, RIP.singleton "WL_SHM_FORMAT_Y412")
                                   , (842088770, RIP.singleton "WL_SHM_FORMAT_BGRA4444")
                                   , (842088786, RIP.singleton "WL_SHM_FORMAT_RGBA4444")
                                   , (842089025, RIP.singleton "WL_SHM_FORMAT_ABGR4444")
                                   , (842089048, RIP.singleton "WL_SHM_FORMAT_XBGR4444")
                                   , (842093121, RIP.singleton "WL_SHM_FORMAT_ARGB4444")
                                   , (842093144, RIP.singleton "WL_SHM_FORMAT_XRGB4444")
                                   , (842093913, RIP.singleton "WL_SHM_FORMAT_YUV420")
                                   , (842094158, RIP.singleton "WL_SHM_FORMAT_NV12")
                                   , (842094169, RIP.singleton "WL_SHM_FORMAT_YVU420")
                                   , (842094658, RIP.singleton "WL_SHM_FORMAT_BGRX4444")
                                   , (842094674, RIP.singleton "WL_SHM_FORMAT_RGBX4444")
                                   , (842221394, RIP.singleton "WL_SHM_FORMAT_RG1616")
                                   , (842224199, RIP.singleton "WL_SHM_FORMAT_GR1616")
                                   , (842290766, RIP.singleton "WL_SHM_FORMAT_NV42")
                                   , (843853912, RIP.singleton "WL_SHM_FORMAT_X0L2")
                                   , (843853913, RIP.singleton "WL_SHM_FORMAT_Y0L2")
                                   , (875708738, RIP.singleton "WL_SHM_FORMAT_BGRA8888")
                                   , (875708754, RIP.singleton "WL_SHM_FORMAT_RGBA8888")
                                   , (875708993, RIP.singleton "WL_SHM_FORMAT_ABGR8888")
                                   , (875709016, RIP.singleton "WL_SHM_FORMAT_XBGR8888")
                                   , (875710274, RIP.singleton "WL_SHM_FORMAT_BGR888")
                                   , (875710290, RIP.singleton "WL_SHM_FORMAT_RGB888")
                                   , (875713878, RIP.singleton "WL_SHM_FORMAT_VUY888")
                                   , (875713881, RIP.singleton "WL_SHM_FORMAT_YUV444")
                                   , (875714126, RIP.singleton "WL_SHM_FORMAT_NV24")
                                   , (875714137, RIP.singleton "WL_SHM_FORMAT_YVU444")
                                   , (875714626, RIP.singleton "WL_SHM_FORMAT_BGRX8888")
                                   , (875714642, RIP.singleton "WL_SHM_FORMAT_RGBX8888")
                                   , (892420418, RIP.singleton "WL_SHM_FORMAT_BGRA5551")
                                   , (892420434, RIP.singleton "WL_SHM_FORMAT_RGBA5551")
                                   , (892420673, RIP.singleton "WL_SHM_FORMAT_ABGR1555")
                                   , (892420696, RIP.singleton "WL_SHM_FORMAT_XBGR1555")
                                   , (892424769, RIP.singleton "WL_SHM_FORMAT_ARGB1555")
                                   , (892424792, RIP.singleton "WL_SHM_FORMAT_XRGB1555")
                                   , (892425806, RIP.singleton "WL_SHM_FORMAT_NV15")
                                   , (892426306, RIP.singleton "WL_SHM_FORMAT_BGRX5551")
                                   , (892426322, RIP.singleton "WL_SHM_FORMAT_RGBX5551")
                                   , (909193296, RIP.singleton "WL_SHM_FORMAT_P016")
                                   , (909193817, RIP.singleton "WL_SHM_FORMAT_Y216")
                                   , (909194329, RIP.singleton "WL_SHM_FORMAT_Y416")
                                   , (909199170, RIP.singleton "WL_SHM_FORMAT_BGR565")
                                   , (909199186, RIP.singleton "WL_SHM_FORMAT_RGB565")
                                   , (909202777, RIP.singleton "WL_SHM_FORMAT_YUV422")
                                   , (909203022, RIP.singleton "WL_SHM_FORMAT_NV16")
                                   , (909203033, RIP.singleton "WL_SHM_FORMAT_YVU422")
                                   , (909334104, RIP.singleton "WL_SHM_FORMAT_XVYU12_16161616")
                                   , (942691673, RIP.singleton "WL_SHM_FORMAT_YUV420_8BIT")
                                   , (942948929, RIP.singleton "WL_SHM_FORMAT_ABGR16161616")
                                   , (942948952, RIP.singleton "WL_SHM_FORMAT_XBGR16161616")
                                   , (942953025, RIP.singleton "WL_SHM_FORMAT_ARGB16161616")
                                   , (942953048, RIP.singleton "WL_SHM_FORMAT_XRGB16161616")
                                   , (942954072, RIP.singleton "WL_SHM_FORMAT_XVYU16161616")
                                   , (943212370, RIP.singleton "WL_SHM_FORMAT_RG88")
                                   , (943215175, RIP.singleton "WL_SHM_FORMAT_GR88")
                                   , (943797570, RIP.singleton "WL_SHM_FORMAT_BGR565_A8")
                                   , (943797586, RIP.singleton "WL_SHM_FORMAT_RGB565_A8")
                                   , (943798338, RIP.singleton "WL_SHM_FORMAT_BGR888_A8")
                                   , (943798354, RIP.singleton "WL_SHM_FORMAT_RGB888_A8")
                                   , (943800920, RIP.singleton "WL_SHM_FORMAT_XBGR8888_A8")
                                   , (943805016, RIP.singleton "WL_SHM_FORMAT_XRGB8888_A8")
                                   , (943806530, RIP.singleton "WL_SHM_FORMAT_BGRX8888_A8")
                                   , (943806546, RIP.singleton "WL_SHM_FORMAT_RGBX8888_A8")
                                   , (943867730, RIP.singleton "WL_SHM_FORMAT_RGB332")
                                   , (944916290, RIP.singleton "WL_SHM_FORMAT_BGR233")
                                   , (961893977, RIP.singleton "WL_SHM_FORMAT_YVU410")
                                   , (961959257, RIP.singleton "WL_SHM_FORMAT_YUV410")
                                   , (1211384385, RIP.singleton "WL_SHM_FORMAT_ABGR16161616F")
                                   , (1211384408, RIP.singleton "WL_SHM_FORMAT_XBGR16161616F")
                                   , (1211388481, RIP.singleton "WL_SHM_FORMAT_ARGB16161616F")
                                   , (1211388504, RIP.singleton "WL_SHM_FORMAT_XRGB16161616F")
                                   , (1431918169, RIP.singleton "WL_SHM_FORMAT_YVYU")
                                   , (1448433985, RIP.singleton "WL_SHM_FORMAT_AYUV")
                                   , (1448434008, RIP.singleton "WL_SHM_FORMAT_XYUV8888")
                                   , (1448695129, RIP.singleton "WL_SHM_FORMAT_YUYV")
                                   , (1498764865, RIP.singleton "WL_SHM_FORMAT_AVUY8888")
                                   , (1498764888, RIP.singleton "WL_SHM_FORMAT_XVUY8888")
                                   , (1498765654, RIP.singleton "WL_SHM_FORMAT_VYUY")
                                   , (1498831189, RIP.singleton "WL_SHM_FORMAT_UYVY")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlShmFormat"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlShmFormat"

instance Show WlShmFormat where

  showsPrec = CEnum.shows

instance Read WlShmFormat where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlShmFormat) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlShmFormat "unwrap" where

  type CFieldType WlShmFormat "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB8888@

    __defined at:__ @wayland-client-protocol.h 1528:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB8888 :: WlShmFormat
pattern WL_SHM_FORMAT_ARGB8888 = WlShmFormat 0

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB8888@

    __defined at:__ @wayland-client-protocol.h 1532:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB8888 :: WlShmFormat
pattern WL_SHM_FORMAT_XRGB8888 = WlShmFormat 1

{-| __C declaration:__ @WL_SHM_FORMAT_C8@

    __defined at:__ @wayland-client-protocol.h 1536:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_C8 :: WlShmFormat
pattern WL_SHM_FORMAT_C8 = WlShmFormat 538982467

{-| __C declaration:__ @WL_SHM_FORMAT_RGB332@

    __defined at:__ @wayland-client-protocol.h 1540:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB332 :: WlShmFormat
pattern WL_SHM_FORMAT_RGB332 = WlShmFormat 943867730

{-| __C declaration:__ @WL_SHM_FORMAT_BGR233@

    __defined at:__ @wayland-client-protocol.h 1544:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR233 :: WlShmFormat
pattern WL_SHM_FORMAT_BGR233 = WlShmFormat 944916290

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB4444@

    __defined at:__ @wayland-client-protocol.h 1548:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB4444 :: WlShmFormat
pattern WL_SHM_FORMAT_XRGB4444 = WlShmFormat 842093144

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR4444@

    __defined at:__ @wayland-client-protocol.h 1552:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR4444 :: WlShmFormat
pattern WL_SHM_FORMAT_XBGR4444 = WlShmFormat 842089048

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX4444@

    __defined at:__ @wayland-client-protocol.h 1556:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX4444 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBX4444 = WlShmFormat 842094674

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX4444@

    __defined at:__ @wayland-client-protocol.h 1560:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX4444 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRX4444 = WlShmFormat 842094658

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB4444@

    __defined at:__ @wayland-client-protocol.h 1564:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB4444 :: WlShmFormat
pattern WL_SHM_FORMAT_ARGB4444 = WlShmFormat 842093121

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR4444@

    __defined at:__ @wayland-client-protocol.h 1568:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR4444 :: WlShmFormat
pattern WL_SHM_FORMAT_ABGR4444 = WlShmFormat 842089025

{-| __C declaration:__ @WL_SHM_FORMAT_RGBA4444@

    __defined at:__ @wayland-client-protocol.h 1572:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBA4444 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBA4444 = WlShmFormat 842088786

{-| __C declaration:__ @WL_SHM_FORMAT_BGRA4444@

    __defined at:__ @wayland-client-protocol.h 1576:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRA4444 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRA4444 = WlShmFormat 842088770

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB1555@

    __defined at:__ @wayland-client-protocol.h 1580:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB1555 :: WlShmFormat
pattern WL_SHM_FORMAT_XRGB1555 = WlShmFormat 892424792

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR1555@

    __defined at:__ @wayland-client-protocol.h 1584:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR1555 :: WlShmFormat
pattern WL_SHM_FORMAT_XBGR1555 = WlShmFormat 892420696

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX5551@

    __defined at:__ @wayland-client-protocol.h 1588:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX5551 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBX5551 = WlShmFormat 892426322

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX5551@

    __defined at:__ @wayland-client-protocol.h 1592:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX5551 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRX5551 = WlShmFormat 892426306

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB1555@

    __defined at:__ @wayland-client-protocol.h 1596:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB1555 :: WlShmFormat
pattern WL_SHM_FORMAT_ARGB1555 = WlShmFormat 892424769

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR1555@

    __defined at:__ @wayland-client-protocol.h 1600:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR1555 :: WlShmFormat
pattern WL_SHM_FORMAT_ABGR1555 = WlShmFormat 892420673

{-| __C declaration:__ @WL_SHM_FORMAT_RGBA5551@

    __defined at:__ @wayland-client-protocol.h 1604:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBA5551 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBA5551 = WlShmFormat 892420434

{-| __C declaration:__ @WL_SHM_FORMAT_BGRA5551@

    __defined at:__ @wayland-client-protocol.h 1608:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRA5551 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRA5551 = WlShmFormat 892420418

{-| __C declaration:__ @WL_SHM_FORMAT_RGB565@

    __defined at:__ @wayland-client-protocol.h 1612:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB565 :: WlShmFormat
pattern WL_SHM_FORMAT_RGB565 = WlShmFormat 909199186

{-| __C declaration:__ @WL_SHM_FORMAT_BGR565@

    __defined at:__ @wayland-client-protocol.h 1616:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR565 :: WlShmFormat
pattern WL_SHM_FORMAT_BGR565 = WlShmFormat 909199170

{-| __C declaration:__ @WL_SHM_FORMAT_RGB888@

    __defined at:__ @wayland-client-protocol.h 1620:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB888 :: WlShmFormat
pattern WL_SHM_FORMAT_RGB888 = WlShmFormat 875710290

{-| __C declaration:__ @WL_SHM_FORMAT_BGR888@

    __defined at:__ @wayland-client-protocol.h 1624:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR888 :: WlShmFormat
pattern WL_SHM_FORMAT_BGR888 = WlShmFormat 875710274

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR8888@

    __defined at:__ @wayland-client-protocol.h 1628:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR8888 :: WlShmFormat
pattern WL_SHM_FORMAT_XBGR8888 = WlShmFormat 875709016

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX8888@

    __defined at:__ @wayland-client-protocol.h 1632:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX8888 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBX8888 = WlShmFormat 875714642

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX8888@

    __defined at:__ @wayland-client-protocol.h 1636:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX8888 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRX8888 = WlShmFormat 875714626

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR8888@

    __defined at:__ @wayland-client-protocol.h 1640:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR8888 :: WlShmFormat
pattern WL_SHM_FORMAT_ABGR8888 = WlShmFormat 875708993

{-| __C declaration:__ @WL_SHM_FORMAT_RGBA8888@

    __defined at:__ @wayland-client-protocol.h 1644:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBA8888 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBA8888 = WlShmFormat 875708754

{-| __C declaration:__ @WL_SHM_FORMAT_BGRA8888@

    __defined at:__ @wayland-client-protocol.h 1648:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRA8888 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRA8888 = WlShmFormat 875708738

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB2101010@

    __defined at:__ @wayland-client-protocol.h 1652:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB2101010 :: WlShmFormat
pattern WL_SHM_FORMAT_XRGB2101010 = WlShmFormat 808669784

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR2101010@

    __defined at:__ @wayland-client-protocol.h 1656:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR2101010 :: WlShmFormat
pattern WL_SHM_FORMAT_XBGR2101010 = WlShmFormat 808665688

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX1010102@

    __defined at:__ @wayland-client-protocol.h 1660:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX1010102 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBX1010102 = WlShmFormat 808671314

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX1010102@

    __defined at:__ @wayland-client-protocol.h 1664:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX1010102 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRX1010102 = WlShmFormat 808671298

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB2101010@

    __defined at:__ @wayland-client-protocol.h 1668:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB2101010 :: WlShmFormat
pattern WL_SHM_FORMAT_ARGB2101010 = WlShmFormat 808669761

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR2101010@

    __defined at:__ @wayland-client-protocol.h 1672:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR2101010 :: WlShmFormat
pattern WL_SHM_FORMAT_ABGR2101010 = WlShmFormat 808665665

{-| __C declaration:__ @WL_SHM_FORMAT_RGBA1010102@

    __defined at:__ @wayland-client-protocol.h 1676:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBA1010102 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBA1010102 = WlShmFormat 808665426

{-| __C declaration:__ @WL_SHM_FORMAT_BGRA1010102@

    __defined at:__ @wayland-client-protocol.h 1680:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRA1010102 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRA1010102 = WlShmFormat 808665410

{-| __C declaration:__ @WL_SHM_FORMAT_YUYV@

    __defined at:__ @wayland-client-protocol.h 1684:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUYV :: WlShmFormat
pattern WL_SHM_FORMAT_YUYV = WlShmFormat 1448695129

{-| __C declaration:__ @WL_SHM_FORMAT_YVYU@

    __defined at:__ @wayland-client-protocol.h 1688:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVYU :: WlShmFormat
pattern WL_SHM_FORMAT_YVYU = WlShmFormat 1431918169

{-| __C declaration:__ @WL_SHM_FORMAT_UYVY@

    __defined at:__ @wayland-client-protocol.h 1692:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_UYVY :: WlShmFormat
pattern WL_SHM_FORMAT_UYVY = WlShmFormat 1498831189

{-| __C declaration:__ @WL_SHM_FORMAT_VYUY@

    __defined at:__ @wayland-client-protocol.h 1696:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_VYUY :: WlShmFormat
pattern WL_SHM_FORMAT_VYUY = WlShmFormat 1498765654

{-| __C declaration:__ @WL_SHM_FORMAT_AYUV@

    __defined at:__ @wayland-client-protocol.h 1700:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_AYUV :: WlShmFormat
pattern WL_SHM_FORMAT_AYUV = WlShmFormat 1448433985

{-| __C declaration:__ @WL_SHM_FORMAT_NV12@

    __defined at:__ @wayland-client-protocol.h 1704:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV12 :: WlShmFormat
pattern WL_SHM_FORMAT_NV12 = WlShmFormat 842094158

{-| __C declaration:__ @WL_SHM_FORMAT_NV21@

    __defined at:__ @wayland-client-protocol.h 1708:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV21 :: WlShmFormat
pattern WL_SHM_FORMAT_NV21 = WlShmFormat 825382478

{-| __C declaration:__ @WL_SHM_FORMAT_NV16@

    __defined at:__ @wayland-client-protocol.h 1712:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV16 :: WlShmFormat
pattern WL_SHM_FORMAT_NV16 = WlShmFormat 909203022

{-| __C declaration:__ @WL_SHM_FORMAT_NV61@

    __defined at:__ @wayland-client-protocol.h 1716:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV61 :: WlShmFormat
pattern WL_SHM_FORMAT_NV61 = WlShmFormat 825644622

{-| __C declaration:__ @WL_SHM_FORMAT_YUV410@

    __defined at:__ @wayland-client-protocol.h 1720:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV410 :: WlShmFormat
pattern WL_SHM_FORMAT_YUV410 = WlShmFormat 961959257

{-| __C declaration:__ @WL_SHM_FORMAT_YVU410@

    __defined at:__ @wayland-client-protocol.h 1724:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU410 :: WlShmFormat
pattern WL_SHM_FORMAT_YVU410 = WlShmFormat 961893977

{-| __C declaration:__ @WL_SHM_FORMAT_YUV411@

    __defined at:__ @wayland-client-protocol.h 1728:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV411 :: WlShmFormat
pattern WL_SHM_FORMAT_YUV411 = WlShmFormat 825316697

{-| __C declaration:__ @WL_SHM_FORMAT_YVU411@

    __defined at:__ @wayland-client-protocol.h 1732:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU411 :: WlShmFormat
pattern WL_SHM_FORMAT_YVU411 = WlShmFormat 825316953

{-| __C declaration:__ @WL_SHM_FORMAT_YUV420@

    __defined at:__ @wayland-client-protocol.h 1736:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV420 :: WlShmFormat
pattern WL_SHM_FORMAT_YUV420 = WlShmFormat 842093913

{-| __C declaration:__ @WL_SHM_FORMAT_YVU420@

    __defined at:__ @wayland-client-protocol.h 1740:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU420 :: WlShmFormat
pattern WL_SHM_FORMAT_YVU420 = WlShmFormat 842094169

{-| __C declaration:__ @WL_SHM_FORMAT_YUV422@

    __defined at:__ @wayland-client-protocol.h 1744:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV422 :: WlShmFormat
pattern WL_SHM_FORMAT_YUV422 = WlShmFormat 909202777

{-| __C declaration:__ @WL_SHM_FORMAT_YVU422@

    __defined at:__ @wayland-client-protocol.h 1748:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU422 :: WlShmFormat
pattern WL_SHM_FORMAT_YVU422 = WlShmFormat 909203033

{-| __C declaration:__ @WL_SHM_FORMAT_YUV444@

    __defined at:__ @wayland-client-protocol.h 1752:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV444 :: WlShmFormat
pattern WL_SHM_FORMAT_YUV444 = WlShmFormat 875713881

{-| __C declaration:__ @WL_SHM_FORMAT_YVU444@

    __defined at:__ @wayland-client-protocol.h 1756:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU444 :: WlShmFormat
pattern WL_SHM_FORMAT_YVU444 = WlShmFormat 875714137

{-| __C declaration:__ @WL_SHM_FORMAT_R8@

    __defined at:__ @wayland-client-protocol.h 1760:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R8 :: WlShmFormat
pattern WL_SHM_FORMAT_R8 = WlShmFormat 538982482

{-| __C declaration:__ @WL_SHM_FORMAT_R16@

    __defined at:__ @wayland-client-protocol.h 1764:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R16 :: WlShmFormat
pattern WL_SHM_FORMAT_R16 = WlShmFormat 540422482

{-| __C declaration:__ @WL_SHM_FORMAT_RG88@

    __defined at:__ @wayland-client-protocol.h 1768:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RG88 :: WlShmFormat
pattern WL_SHM_FORMAT_RG88 = WlShmFormat 943212370

{-| __C declaration:__ @WL_SHM_FORMAT_GR88@

    __defined at:__ @wayland-client-protocol.h 1772:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_GR88 :: WlShmFormat
pattern WL_SHM_FORMAT_GR88 = WlShmFormat 943215175

{-| __C declaration:__ @WL_SHM_FORMAT_RG1616@

    __defined at:__ @wayland-client-protocol.h 1776:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RG1616 :: WlShmFormat
pattern WL_SHM_FORMAT_RG1616 = WlShmFormat 842221394

{-| __C declaration:__ @WL_SHM_FORMAT_GR1616@

    __defined at:__ @wayland-client-protocol.h 1780:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_GR1616 :: WlShmFormat
pattern WL_SHM_FORMAT_GR1616 = WlShmFormat 842224199

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB16161616F@

    __defined at:__ @wayland-client-protocol.h 1784:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB16161616F :: WlShmFormat
pattern WL_SHM_FORMAT_XRGB16161616F = WlShmFormat 1211388504

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR16161616F@

    __defined at:__ @wayland-client-protocol.h 1788:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR16161616F :: WlShmFormat
pattern WL_SHM_FORMAT_XBGR16161616F = WlShmFormat 1211384408

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB16161616F@

    __defined at:__ @wayland-client-protocol.h 1792:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB16161616F :: WlShmFormat
pattern WL_SHM_FORMAT_ARGB16161616F = WlShmFormat 1211388481

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR16161616F@

    __defined at:__ @wayland-client-protocol.h 1796:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR16161616F :: WlShmFormat
pattern WL_SHM_FORMAT_ABGR16161616F = WlShmFormat 1211384385

{-| __C declaration:__ @WL_SHM_FORMAT_XYUV8888@

    __defined at:__ @wayland-client-protocol.h 1800:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XYUV8888 :: WlShmFormat
pattern WL_SHM_FORMAT_XYUV8888 = WlShmFormat 1448434008

{-| __C declaration:__ @WL_SHM_FORMAT_VUY888@

    __defined at:__ @wayland-client-protocol.h 1804:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_VUY888 :: WlShmFormat
pattern WL_SHM_FORMAT_VUY888 = WlShmFormat 875713878

{-| __C declaration:__ @WL_SHM_FORMAT_VUY101010@

    __defined at:__ @wayland-client-protocol.h 1808:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_VUY101010 :: WlShmFormat
pattern WL_SHM_FORMAT_VUY101010 = WlShmFormat 808670550

{-| __C declaration:__ @WL_SHM_FORMAT_Y210@

    __defined at:__ @wayland-client-protocol.h 1812:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y210 :: WlShmFormat
pattern WL_SHM_FORMAT_Y210 = WlShmFormat 808530521

{-| __C declaration:__ @WL_SHM_FORMAT_Y212@

    __defined at:__ @wayland-client-protocol.h 1816:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y212 :: WlShmFormat
pattern WL_SHM_FORMAT_Y212 = WlShmFormat 842084953

{-| __C declaration:__ @WL_SHM_FORMAT_Y216@

    __defined at:__ @wayland-client-protocol.h 1820:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y216 :: WlShmFormat
pattern WL_SHM_FORMAT_Y216 = WlShmFormat 909193817

{-| __C declaration:__ @WL_SHM_FORMAT_Y410@

    __defined at:__ @wayland-client-protocol.h 1824:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y410 :: WlShmFormat
pattern WL_SHM_FORMAT_Y410 = WlShmFormat 808531033

{-| __C declaration:__ @WL_SHM_FORMAT_Y412@

    __defined at:__ @wayland-client-protocol.h 1828:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y412 :: WlShmFormat
pattern WL_SHM_FORMAT_Y412 = WlShmFormat 842085465

{-| __C declaration:__ @WL_SHM_FORMAT_Y416@

    __defined at:__ @wayland-client-protocol.h 1832:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y416 :: WlShmFormat
pattern WL_SHM_FORMAT_Y416 = WlShmFormat 909194329

{-| __C declaration:__ @WL_SHM_FORMAT_XVYU2101010@

    __defined at:__ @wayland-client-protocol.h 1836:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XVYU2101010 :: WlShmFormat
pattern WL_SHM_FORMAT_XVYU2101010 = WlShmFormat 808670808

{-| __C declaration:__ @WL_SHM_FORMAT_XVYU12_16161616@

    __defined at:__ @wayland-client-protocol.h 1840:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XVYU12_16161616 :: WlShmFormat
pattern WL_SHM_FORMAT_XVYU12_16161616 = WlShmFormat 909334104

{-| __C declaration:__ @WL_SHM_FORMAT_XVYU16161616@

    __defined at:__ @wayland-client-protocol.h 1844:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XVYU16161616 :: WlShmFormat
pattern WL_SHM_FORMAT_XVYU16161616 = WlShmFormat 942954072

{-| __C declaration:__ @WL_SHM_FORMAT_Y0L0@

    __defined at:__ @wayland-client-protocol.h 1848:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y0L0 :: WlShmFormat
pattern WL_SHM_FORMAT_Y0L0 = WlShmFormat 810299481

{-| __C declaration:__ @WL_SHM_FORMAT_X0L0@

    __defined at:__ @wayland-client-protocol.h 1852:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_X0L0 :: WlShmFormat
pattern WL_SHM_FORMAT_X0L0 = WlShmFormat 810299480

{-| __C declaration:__ @WL_SHM_FORMAT_Y0L2@

    __defined at:__ @wayland-client-protocol.h 1856:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y0L2 :: WlShmFormat
pattern WL_SHM_FORMAT_Y0L2 = WlShmFormat 843853913

{-| __C declaration:__ @WL_SHM_FORMAT_X0L2@

    __defined at:__ @wayland-client-protocol.h 1860:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_X0L2 :: WlShmFormat
pattern WL_SHM_FORMAT_X0L2 = WlShmFormat 843853912

{-| __C declaration:__ @WL_SHM_FORMAT_YUV420_8BIT@

    __defined at:__ @wayland-client-protocol.h 1861:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV420_8BIT :: WlShmFormat
pattern WL_SHM_FORMAT_YUV420_8BIT = WlShmFormat 942691673

{-| __C declaration:__ @WL_SHM_FORMAT_YUV420_10BIT@

    __defined at:__ @wayland-client-protocol.h 1862:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV420_10BIT :: WlShmFormat
pattern WL_SHM_FORMAT_YUV420_10BIT = WlShmFormat 808539481

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB8888_A8@

    __defined at:__ @wayland-client-protocol.h 1863:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB8888_A8 :: WlShmFormat
pattern WL_SHM_FORMAT_XRGB8888_A8 = WlShmFormat 943805016

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR8888_A8@

    __defined at:__ @wayland-client-protocol.h 1864:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR8888_A8 :: WlShmFormat
pattern WL_SHM_FORMAT_XBGR8888_A8 = WlShmFormat 943800920

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX8888_A8@

    __defined at:__ @wayland-client-protocol.h 1865:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX8888_A8 :: WlShmFormat
pattern WL_SHM_FORMAT_RGBX8888_A8 = WlShmFormat 943806546

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX8888_A8@

    __defined at:__ @wayland-client-protocol.h 1866:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX8888_A8 :: WlShmFormat
pattern WL_SHM_FORMAT_BGRX8888_A8 = WlShmFormat 943806530

{-| __C declaration:__ @WL_SHM_FORMAT_RGB888_A8@

    __defined at:__ @wayland-client-protocol.h 1867:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB888_A8 :: WlShmFormat
pattern WL_SHM_FORMAT_RGB888_A8 = WlShmFormat 943798354

{-| __C declaration:__ @WL_SHM_FORMAT_BGR888_A8@

    __defined at:__ @wayland-client-protocol.h 1868:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR888_A8 :: WlShmFormat
pattern WL_SHM_FORMAT_BGR888_A8 = WlShmFormat 943798338

{-| __C declaration:__ @WL_SHM_FORMAT_RGB565_A8@

    __defined at:__ @wayland-client-protocol.h 1869:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB565_A8 :: WlShmFormat
pattern WL_SHM_FORMAT_RGB565_A8 = WlShmFormat 943797586

{-| __C declaration:__ @WL_SHM_FORMAT_BGR565_A8@

    __defined at:__ @wayland-client-protocol.h 1870:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR565_A8 :: WlShmFormat
pattern WL_SHM_FORMAT_BGR565_A8 = WlShmFormat 943797570

{-| __C declaration:__ @WL_SHM_FORMAT_NV24@

    __defined at:__ @wayland-client-protocol.h 1874:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV24 :: WlShmFormat
pattern WL_SHM_FORMAT_NV24 = WlShmFormat 875714126

{-| __C declaration:__ @WL_SHM_FORMAT_NV42@

    __defined at:__ @wayland-client-protocol.h 1878:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV42 :: WlShmFormat
pattern WL_SHM_FORMAT_NV42 = WlShmFormat 842290766

{-| __C declaration:__ @WL_SHM_FORMAT_P210@

    __defined at:__ @wayland-client-protocol.h 1882:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P210 :: WlShmFormat
pattern WL_SHM_FORMAT_P210 = WlShmFormat 808530512

{-| __C declaration:__ @WL_SHM_FORMAT_P010@

    __defined at:__ @wayland-client-protocol.h 1886:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P010 :: WlShmFormat
pattern WL_SHM_FORMAT_P010 = WlShmFormat 808530000

{-| __C declaration:__ @WL_SHM_FORMAT_P012@

    __defined at:__ @wayland-client-protocol.h 1890:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P012 :: WlShmFormat
pattern WL_SHM_FORMAT_P012 = WlShmFormat 842084432

{-| __C declaration:__ @WL_SHM_FORMAT_P016@

    __defined at:__ @wayland-client-protocol.h 1894:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P016 :: WlShmFormat
pattern WL_SHM_FORMAT_P016 = WlShmFormat 909193296

{-| __C declaration:__ @WL_SHM_FORMAT_AXBXGXRX106106106106@

    __defined at:__ @wayland-client-protocol.h 1898:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_AXBXGXRX106106106106 :: WlShmFormat
pattern WL_SHM_FORMAT_AXBXGXRX106106106106 = WlShmFormat 808534593

{-| __C declaration:__ @WL_SHM_FORMAT_NV15@

    __defined at:__ @wayland-client-protocol.h 1902:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV15 :: WlShmFormat
pattern WL_SHM_FORMAT_NV15 = WlShmFormat 892425806

{-| __C declaration:__ @WL_SHM_FORMAT_Q410@

    __defined at:__ @wayland-client-protocol.h 1903:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Q410 :: WlShmFormat
pattern WL_SHM_FORMAT_Q410 = WlShmFormat 808531025

{-| __C declaration:__ @WL_SHM_FORMAT_Q401@

    __defined at:__ @wayland-client-protocol.h 1904:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Q401 :: WlShmFormat
pattern WL_SHM_FORMAT_Q401 = WlShmFormat 825242705

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB16161616@

    __defined at:__ @wayland-client-protocol.h 1908:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB16161616 :: WlShmFormat
pattern WL_SHM_FORMAT_XRGB16161616 = WlShmFormat 942953048

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR16161616@

    __defined at:__ @wayland-client-protocol.h 1912:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR16161616 :: WlShmFormat
pattern WL_SHM_FORMAT_XBGR16161616 = WlShmFormat 942948952

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB16161616@

    __defined at:__ @wayland-client-protocol.h 1916:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB16161616 :: WlShmFormat
pattern WL_SHM_FORMAT_ARGB16161616 = WlShmFormat 942953025

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR16161616@

    __defined at:__ @wayland-client-protocol.h 1920:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR16161616 :: WlShmFormat
pattern WL_SHM_FORMAT_ABGR16161616 = WlShmFormat 942948929

{-| __C declaration:__ @WL_SHM_FORMAT_C1@

    __defined at:__ @wayland-client-protocol.h 1924:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_C1 :: WlShmFormat
pattern WL_SHM_FORMAT_C1 = WlShmFormat 538980675

{-| __C declaration:__ @WL_SHM_FORMAT_C2@

    __defined at:__ @wayland-client-protocol.h 1928:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_C2 :: WlShmFormat
pattern WL_SHM_FORMAT_C2 = WlShmFormat 538980931

{-| __C declaration:__ @WL_SHM_FORMAT_C4@

    __defined at:__ @wayland-client-protocol.h 1932:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_C4 :: WlShmFormat
pattern WL_SHM_FORMAT_C4 = WlShmFormat 538981443

{-| __C declaration:__ @WL_SHM_FORMAT_D1@

    __defined at:__ @wayland-client-protocol.h 1936:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_D1 :: WlShmFormat
pattern WL_SHM_FORMAT_D1 = WlShmFormat 538980676

{-| __C declaration:__ @WL_SHM_FORMAT_D2@

    __defined at:__ @wayland-client-protocol.h 1940:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_D2 :: WlShmFormat
pattern WL_SHM_FORMAT_D2 = WlShmFormat 538980932

{-| __C declaration:__ @WL_SHM_FORMAT_D4@

    __defined at:__ @wayland-client-protocol.h 1944:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_D4 :: WlShmFormat
pattern WL_SHM_FORMAT_D4 = WlShmFormat 538981444

{-| __C declaration:__ @WL_SHM_FORMAT_D8@

    __defined at:__ @wayland-client-protocol.h 1948:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_D8 :: WlShmFormat
pattern WL_SHM_FORMAT_D8 = WlShmFormat 538982468

{-| __C declaration:__ @WL_SHM_FORMAT_R1@

    __defined at:__ @wayland-client-protocol.h 1952:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R1 :: WlShmFormat
pattern WL_SHM_FORMAT_R1 = WlShmFormat 538980690

{-| __C declaration:__ @WL_SHM_FORMAT_R2@

    __defined at:__ @wayland-client-protocol.h 1956:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R2 :: WlShmFormat
pattern WL_SHM_FORMAT_R2 = WlShmFormat 538980946

{-| __C declaration:__ @WL_SHM_FORMAT_R4@

    __defined at:__ @wayland-client-protocol.h 1960:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R4 :: WlShmFormat
pattern WL_SHM_FORMAT_R4 = WlShmFormat 538981458

{-| __C declaration:__ @WL_SHM_FORMAT_R10@

    __defined at:__ @wayland-client-protocol.h 1964:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R10 :: WlShmFormat
pattern WL_SHM_FORMAT_R10 = WlShmFormat 540029266

{-| __C declaration:__ @WL_SHM_FORMAT_R12@

    __defined at:__ @wayland-client-protocol.h 1968:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R12 :: WlShmFormat
pattern WL_SHM_FORMAT_R12 = WlShmFormat 540160338

{-| __C declaration:__ @WL_SHM_FORMAT_AVUY8888@

    __defined at:__ @wayland-client-protocol.h 1972:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_AVUY8888 :: WlShmFormat
pattern WL_SHM_FORMAT_AVUY8888 = WlShmFormat 1498764865

{-| __C declaration:__ @WL_SHM_FORMAT_XVUY8888@

    __defined at:__ @wayland-client-protocol.h 1976:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XVUY8888 :: WlShmFormat
pattern WL_SHM_FORMAT_XVUY8888 = WlShmFormat 1498764888

{-| __C declaration:__ @WL_SHM_FORMAT_P030@

    __defined at:__ @wayland-client-protocol.h 1980:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P030 :: WlShmFormat
pattern WL_SHM_FORMAT_P030 = WlShmFormat 808661072

{-| __C declaration:__ @struct wl_shm_listener@

    __defined at:__ @wayland-client-protocol.h 1988:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlShmListener = WlShmListener
  { format :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @format@

         __defined at:__ @wayland-client-protocol.h 1996:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlShmListener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlShmListener where

  readRaw =
    \ptr0 ->
          pure WlShmListener
      <*> HasCField.readRaw (RIP.Proxy @"format") ptr0

instance Marshal.WriteRaw WlShmListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlShmListener format2 ->
            HasCField.writeRaw (RIP.Proxy @"format") ptr0 format2

deriving via Marshal.EquivStorable WlShmListener instance RIP.Storable WlShmListener

instance HasCField.HasCField WlShmListener "format" where

  type CFieldType WlShmListener "format" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "format" (RIP.Ptr WlShmListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"format")

{-| __C declaration:__ @macro WL_SHM_CREATE_POOL@

    __defined at:__ @wayland-client-protocol.h 2012:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_CREATE_POOL :: RIP.CInt
wL_SHM_CREATE_POOL = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_RELEASE@

    __defined at:__ @wayland-client-protocol.h 2013:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_RELEASE :: RIP.CInt
wL_SHM_RELEASE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_FORMAT_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2018:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_FORMAT_SINCE_VERSION :: RIP.CInt
wL_SHM_FORMAT_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_CREATE_POOL_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2023:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_CREATE_POOL_SINCE_VERSION :: RIP.CInt
wL_SHM_CREATE_POOL_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHM_RELEASE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2027:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHM_RELEASE_SINCE_VERSION :: RIP.CInt
wL_SHM_RELEASE_SINCE_VERSION = (2 :: RIP.CInt)

{-| __C declaration:__ @struct wl_buffer_listener@

    __defined at:__ @wayland-client-protocol.h 2095:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlBufferListener = WlBufferListener
  { release :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ())
    {- ^ __C declaration:__ @release@

         __defined at:__ @wayland-client-protocol.h 2114:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlBufferListener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlBufferListener where

  readRaw =
    \ptr0 ->
          pure WlBufferListener
      <*> HasCField.readRaw (RIP.Proxy @"release") ptr0

instance Marshal.WriteRaw WlBufferListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlBufferListener release2 ->
            HasCField.writeRaw (RIP.Proxy @"release") ptr0 release2

deriving via Marshal.EquivStorable WlBufferListener instance RIP.Storable WlBufferListener

instance HasCField.HasCField WlBufferListener "release" where

  type CFieldType WlBufferListener "release" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ()))
         ) => RIP.HasField "release" (RIP.Ptr WlBufferListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"release")

{-| __C declaration:__ @macro WL_BUFFER_DESTROY@

    __defined at:__ @wayland-client-protocol.h 2129:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_BUFFER_DESTROY :: RIP.CInt
wL_BUFFER_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_BUFFER_RELEASE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2134:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_BUFFER_RELEASE_SINCE_VERSION :: RIP.CInt
wL_BUFFER_RELEASE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_BUFFER_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2139:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_BUFFER_DESTROY_SINCE_VERSION :: RIP.CInt
wL_BUFFER_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @enum wl_data_offer_error@

    __defined at:__ @wayland-client-protocol.h 2178:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlDataOfferError = WlDataOfferError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlDataOfferError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlDataOfferError where

  readRaw =
    \ptr0 ->
          pure WlDataOfferError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlDataOfferError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDataOfferError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlDataOfferError instance RIP.Storable WlDataOfferError

deriving via RIP.CUInt instance RIP.Prim WlDataOfferError

instance CEnum.CEnum WlDataOfferError where

  type CEnumZ WlDataOfferError = RIP.CUInt

  toCEnum = WlDataOfferError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DATA_OFFER_ERROR_INVALID_FINISH")
                                   , (1, RIP.singleton "WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK")
                                   , (2, RIP.singleton "WL_DATA_OFFER_ERROR_INVALID_ACTION")
                                   , (3, RIP.singleton "WL_DATA_OFFER_ERROR_INVALID_OFFER")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlDataOfferError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlDataOfferError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlDataOfferError where

  minDeclaredValue = WL_DATA_OFFER_ERROR_INVALID_FINISH

  maxDeclaredValue = WL_DATA_OFFER_ERROR_INVALID_OFFER

instance Show WlDataOfferError where

  showsPrec = CEnum.shows

instance Read WlDataOfferError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlDataOfferError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlDataOfferError "unwrap" where

  type CFieldType WlDataOfferError "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DATA_OFFER_ERROR_INVALID_FINISH@

    __defined at:__ @wayland-client-protocol.h 2182:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_OFFER_ERROR_INVALID_FINISH :: WlDataOfferError
pattern WL_DATA_OFFER_ERROR_INVALID_FINISH = WlDataOfferError 0

{-| __C declaration:__ @WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK@

    __defined at:__ @wayland-client-protocol.h 2186:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK :: WlDataOfferError
pattern WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK = WlDataOfferError 1

{-| __C declaration:__ @WL_DATA_OFFER_ERROR_INVALID_ACTION@

    __defined at:__ @wayland-client-protocol.h 2190:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_OFFER_ERROR_INVALID_ACTION :: WlDataOfferError
pattern WL_DATA_OFFER_ERROR_INVALID_ACTION = WlDataOfferError 2

{-| __C declaration:__ @WL_DATA_OFFER_ERROR_INVALID_OFFER@

    __defined at:__ @wayland-client-protocol.h 2194:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_OFFER_ERROR_INVALID_OFFER :: WlDataOfferError
pattern WL_DATA_OFFER_ERROR_INVALID_OFFER = WlDataOfferError 3

{-| __C declaration:__ @struct wl_data_offer_listener@

    __defined at:__ @wayland-client-protocol.h 2202:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlDataOfferListener = WlDataOfferListener
  { offer :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @offer@

         __defined at:__ @wayland-client-protocol.h 2210:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , source_actions :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @source_actions@

         __defined at:__ @wayland-client-protocol.h 2223:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , action :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @action@

         __defined at:__ @wayland-client-protocol.h 2269:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlDataOfferListener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlDataOfferListener where

  readRaw =
    \ptr0 ->
          pure WlDataOfferListener
      <*> HasCField.readRaw (RIP.Proxy @"offer") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"source_actions") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"action") ptr0

instance Marshal.WriteRaw WlDataOfferListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDataOfferListener offer2 source_actions3 action4 ->
               HasCField.writeRaw (RIP.Proxy @"offer") ptr0 offer2
            >> HasCField.writeRaw (RIP.Proxy @"source_actions") ptr0 source_actions3
            >> HasCField.writeRaw (RIP.Proxy @"action") ptr0 action4

deriving via Marshal.EquivStorable WlDataOfferListener instance RIP.Storable WlDataOfferListener

instance HasCField.HasCField WlDataOfferListener "offer" where

  type CFieldType WlDataOfferListener "offer" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "offer" (RIP.Ptr WlDataOfferListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"offer")

instance HasCField.HasCField WlDataOfferListener "source_actions" where

  type CFieldType WlDataOfferListener "source_actions" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "source_actions" (RIP.Ptr WlDataOfferListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"source_actions")

instance HasCField.HasCField WlDataOfferListener "action" where

  type CFieldType WlDataOfferListener "action" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "action" (RIP.Ptr WlDataOfferListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"action")

{-| __C declaration:__ @macro WL_DATA_OFFER_ACCEPT@

    __defined at:__ @wayland-client-protocol.h 2285:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_ACCEPT :: RIP.CInt
wL_DATA_OFFER_ACCEPT = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_RECEIVE@

    __defined at:__ @wayland-client-protocol.h 2286:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_RECEIVE :: RIP.CInt
wL_DATA_OFFER_RECEIVE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_DESTROY@

    __defined at:__ @wayland-client-protocol.h 2287:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_DESTROY :: RIP.CInt
wL_DATA_OFFER_DESTROY = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_FINISH@

    __defined at:__ @wayland-client-protocol.h 2288:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_FINISH :: RIP.CInt
wL_DATA_OFFER_FINISH = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_SET_ACTIONS@

    __defined at:__ @wayland-client-protocol.h 2289:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_SET_ACTIONS :: RIP.CInt
wL_DATA_OFFER_SET_ACTIONS = (4 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_OFFER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2294:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_OFFER_SINCE_VERSION :: RIP.CInt
wL_DATA_OFFER_OFFER_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_SOURCE_ACTIONS_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2298:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_SOURCE_ACTIONS_SINCE_VERSION :: RIP.CInt
wL_DATA_OFFER_SOURCE_ACTIONS_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_ACTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2302:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_ACTION_SINCE_VERSION :: RIP.CInt
wL_DATA_OFFER_ACTION_SINCE_VERSION = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_ACCEPT_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2307:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_ACCEPT_SINCE_VERSION :: RIP.CInt
wL_DATA_OFFER_ACCEPT_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_RECEIVE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2311:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_RECEIVE_SINCE_VERSION :: RIP.CInt
wL_DATA_OFFER_RECEIVE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2315:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_DESTROY_SINCE_VERSION :: RIP.CInt
wL_DATA_OFFER_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_FINISH_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2319:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_FINISH_SINCE_VERSION :: RIP.CInt
wL_DATA_OFFER_FINISH_SINCE_VERSION = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_OFFER_SET_ACTIONS_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2323:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_OFFER_SET_ACTIONS_SINCE_VERSION :: RIP.CInt
wL_DATA_OFFER_SET_ACTIONS_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @enum wl_data_source_error@

    __defined at:__ @wayland-client-protocol.h 2477:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlDataSourceError = WlDataSourceError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlDataSourceError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlDataSourceError where

  readRaw =
    \ptr0 ->
          pure WlDataSourceError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlDataSourceError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDataSourceError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlDataSourceError instance RIP.Storable WlDataSourceError

deriving via RIP.CUInt instance RIP.Prim WlDataSourceError

instance CEnum.CEnum WlDataSourceError where

  type CEnumZ WlDataSourceError = RIP.CUInt

  toCEnum = WlDataSourceError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK")
                                   , (1, RIP.singleton "WL_DATA_SOURCE_ERROR_INVALID_SOURCE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlDataSourceError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlDataSourceError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlDataSourceError where

  minDeclaredValue =
    WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK

  maxDeclaredValue =
    WL_DATA_SOURCE_ERROR_INVALID_SOURCE

instance Show WlDataSourceError where

  showsPrec = CEnum.shows

instance Read WlDataSourceError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlDataSourceError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlDataSourceError "unwrap" where

  type CFieldType WlDataSourceError "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK@

    __defined at:__ @wayland-client-protocol.h 2481:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK :: WlDataSourceError
pattern WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK = WlDataSourceError 0

{-| __C declaration:__ @WL_DATA_SOURCE_ERROR_INVALID_SOURCE@

    __defined at:__ @wayland-client-protocol.h 2485:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_SOURCE_ERROR_INVALID_SOURCE :: WlDataSourceError
pattern WL_DATA_SOURCE_ERROR_INVALID_SOURCE = WlDataSourceError 1

{-| __C declaration:__ @struct wl_data_source_listener@

    __defined at:__ @wayland-client-protocol.h 2493:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlDataSourceListener = WlDataSourceListener
  { target :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @target@

         __defined at:__ @wayland-client-protocol.h 2503:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , send :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @send@

         __defined at:__ @wayland-client-protocol.h 2515:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , cancelled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())
    {- ^ __C declaration:__ @cancelled@

         __defined at:__ @wayland-client-protocol.h 2542:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , dnd_drop_performed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())
    {- ^ __C declaration:__ @dnd_drop_performed@

         __defined at:__ @wayland-client-protocol.h 2560:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , dnd_finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())
    {- ^ __C declaration:__ @dnd_finished@

         __defined at:__ @wayland-client-protocol.h 2573:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , action :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @action@

         __defined at:__ @wayland-client-protocol.h 2608:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlDataSourceListener where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlDataSourceListener where

  readRaw =
    \ptr0 ->
          pure WlDataSourceListener
      <*> HasCField.readRaw (RIP.Proxy @"target") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"send") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"cancelled") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dnd_drop_performed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dnd_finished") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"action") ptr0

instance Marshal.WriteRaw WlDataSourceListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDataSourceListener
            target2
            send3
            cancelled4
            dnd_drop_performed5
            dnd_finished6
            action7 ->
                 HasCField.writeRaw (RIP.Proxy @"target") ptr0 target2
              >> HasCField.writeRaw (RIP.Proxy @"send") ptr0 send3
              >> HasCField.writeRaw (RIP.Proxy @"cancelled") ptr0 cancelled4
              >> HasCField.writeRaw (RIP.Proxy @"dnd_drop_performed") ptr0 dnd_drop_performed5
              >> HasCField.writeRaw (RIP.Proxy @"dnd_finished") ptr0 dnd_finished6
              >> HasCField.writeRaw (RIP.Proxy @"action") ptr0 action7

deriving via Marshal.EquivStorable WlDataSourceListener instance RIP.Storable WlDataSourceListener

instance HasCField.HasCField WlDataSourceListener "target" where

  type CFieldType WlDataSourceListener "target" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "target" (RIP.Ptr WlDataSourceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"target")

instance HasCField.HasCField WlDataSourceListener "send" where

  type CFieldType WlDataSourceListener "send" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "send" (RIP.Ptr WlDataSourceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"send")

instance HasCField.HasCField WlDataSourceListener "cancelled" where

  type CFieldType WlDataSourceListener "cancelled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ()))
         ) => RIP.HasField "cancelled" (RIP.Ptr WlDataSourceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"cancelled")

instance HasCField.HasCField WlDataSourceListener "dnd_drop_performed" where

  type CFieldType WlDataSourceListener "dnd_drop_performed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ()))
         ) => RIP.HasField "dnd_drop_performed" (RIP.Ptr WlDataSourceListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dnd_drop_performed")

instance HasCField.HasCField WlDataSourceListener "dnd_finished" where

  type CFieldType WlDataSourceListener "dnd_finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ()))
         ) => RIP.HasField "dnd_finished" (RIP.Ptr WlDataSourceListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dnd_finished")

instance HasCField.HasCField WlDataSourceListener "action" where

  type CFieldType WlDataSourceListener "action" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "action" (RIP.Ptr WlDataSourceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"action")

{-| __C declaration:__ @macro WL_DATA_SOURCE_OFFER@

    __defined at:__ @wayland-client-protocol.h 2624:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_OFFER :: RIP.CInt
wL_DATA_SOURCE_OFFER = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_DESTROY@

    __defined at:__ @wayland-client-protocol.h 2625:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_DESTROY :: RIP.CInt
wL_DATA_SOURCE_DESTROY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_SET_ACTIONS@

    __defined at:__ @wayland-client-protocol.h 2626:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_SET_ACTIONS :: RIP.CInt
wL_DATA_SOURCE_SET_ACTIONS = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_TARGET_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2631:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_TARGET_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_TARGET_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_SEND_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2635:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_SEND_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_SEND_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_CANCELLED_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2639:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_CANCELLED_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_CANCELLED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_DND_DROP_PERFORMED_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2643:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_DND_DROP_PERFORMED_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_DND_DROP_PERFORMED_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_DND_FINISHED_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2647:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_DND_FINISHED_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_DND_FINISHED_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_ACTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2651:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_ACTION_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_ACTION_SINCE_VERSION = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_OFFER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2656:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_OFFER_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_OFFER_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2660:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_DESTROY_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_SOURCE_SET_ACTIONS_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2664:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_SOURCE_SET_ACTIONS_SINCE_VERSION :: RIP.CInt
wL_DATA_SOURCE_SET_ACTIONS_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @enum wl_data_device_error@

    __defined at:__ @wayland-client-protocol.h 2738:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlDataDeviceError = WlDataDeviceError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlDataDeviceError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlDataDeviceError where

  readRaw =
    \ptr0 ->
          pure WlDataDeviceError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlDataDeviceError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDataDeviceError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlDataDeviceError instance RIP.Storable WlDataDeviceError

deriving via RIP.CUInt instance RIP.Prim WlDataDeviceError

instance CEnum.CEnum WlDataDeviceError where

  type CEnumZ WlDataDeviceError = RIP.CUInt

  toCEnum = WlDataDeviceError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DATA_DEVICE_ERROR_ROLE")
                                   , (1, RIP.singleton "WL_DATA_DEVICE_ERROR_USED_SOURCE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlDataDeviceError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlDataDeviceError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlDataDeviceError where

  minDeclaredValue = WL_DATA_DEVICE_ERROR_ROLE

  maxDeclaredValue = WL_DATA_DEVICE_ERROR_USED_SOURCE

instance Show WlDataDeviceError where

  showsPrec = CEnum.shows

instance Read WlDataDeviceError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlDataDeviceError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlDataDeviceError "unwrap" where

  type CFieldType WlDataDeviceError "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DATA_DEVICE_ERROR_ROLE@

    __defined at:__ @wayland-client-protocol.h 2742:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_ERROR_ROLE :: WlDataDeviceError
pattern WL_DATA_DEVICE_ERROR_ROLE = WlDataDeviceError 0

{-| __C declaration:__ @WL_DATA_DEVICE_ERROR_USED_SOURCE@

    __defined at:__ @wayland-client-protocol.h 2746:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_ERROR_USED_SOURCE :: WlDataDeviceError
pattern WL_DATA_DEVICE_ERROR_USED_SOURCE = WlDataDeviceError 1

{-| __C declaration:__ @struct wl_data_device_listener@

    __defined at:__ @wayland-client-protocol.h 2754:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlDataDeviceListener = WlDataDeviceListener
  { data_offer :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ())
    {- ^ __C declaration:__ @data_offer@

         __defined at:__ @wayland-client-protocol.h 2767:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ())
    {- ^ __C declaration:__ @enter@

         __defined at:__ @wayland-client-protocol.h 2783:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ())
    {- ^ __C declaration:__ @leave@

         __defined at:__ @wayland-client-protocol.h 2797:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , motion :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @motion@

         __defined at:__ @wayland-client-protocol.h 2810:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , drop :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ())
    {- ^ __C declaration:__ @drop@

         __defined at:__ @wayland-client-protocol.h 2832:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , selection :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ())
    {- ^ __C declaration:__ @selection@

         __defined at:__ @wayland-client-protocol.h 2851:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlDataDeviceListener where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlDataDeviceListener where

  readRaw =
    \ptr0 ->
          pure WlDataDeviceListener
      <*> HasCField.readRaw (RIP.Proxy @"data_offer") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"enter") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"leave") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"motion") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"drop") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"selection") ptr0

instance Marshal.WriteRaw WlDataDeviceListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDataDeviceListener data_offer2 enter3 leave4 motion5 drop6 selection7 ->
               HasCField.writeRaw (RIP.Proxy @"data_offer") ptr0 data_offer2
            >> HasCField.writeRaw (RIP.Proxy @"enter") ptr0 enter3
            >> HasCField.writeRaw (RIP.Proxy @"leave") ptr0 leave4
            >> HasCField.writeRaw (RIP.Proxy @"motion") ptr0 motion5
            >> HasCField.writeRaw (RIP.Proxy @"drop") ptr0 drop6
            >> HasCField.writeRaw (RIP.Proxy @"selection") ptr0 selection7

deriving via Marshal.EquivStorable WlDataDeviceListener instance RIP.Storable WlDataDeviceListener

instance HasCField.HasCField WlDataDeviceListener "data_offer" where

  type CFieldType WlDataDeviceListener "data_offer" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ()))
         ) => RIP.HasField "data_offer" (RIP.Ptr WlDataDeviceListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"data_offer")

instance HasCField.HasCField WlDataDeviceListener "enter" where

  type CFieldType WlDataDeviceListener "enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ()))
         ) => RIP.HasField "enter" (RIP.Ptr WlDataDeviceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enter")

instance HasCField.HasCField WlDataDeviceListener "leave" where

  type CFieldType WlDataDeviceListener "leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ()))
         ) => RIP.HasField "leave" (RIP.Ptr WlDataDeviceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"leave")

instance HasCField.HasCField WlDataDeviceListener "motion" where

  type CFieldType WlDataDeviceListener "motion" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "motion" (RIP.Ptr WlDataDeviceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"motion")

instance HasCField.HasCField WlDataDeviceListener "drop" where

  type CFieldType WlDataDeviceListener "drop" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ()))
         ) => RIP.HasField "drop" (RIP.Ptr WlDataDeviceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"drop")

instance HasCField.HasCField WlDataDeviceListener "selection" where

  type CFieldType WlDataDeviceListener "selection" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ()))
         ) => RIP.HasField "selection" (RIP.Ptr WlDataDeviceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"selection")

{-| __C declaration:__ @macro WL_DATA_DEVICE_START_DRAG@

    __defined at:__ @wayland-client-protocol.h 2867:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_START_DRAG :: RIP.CInt
wL_DATA_DEVICE_START_DRAG = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_SET_SELECTION@

    __defined at:__ @wayland-client-protocol.h 2868:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_SET_SELECTION :: RIP.CInt
wL_DATA_DEVICE_SET_SELECTION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_RELEASE@

    __defined at:__ @wayland-client-protocol.h 2869:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_RELEASE :: RIP.CInt
wL_DATA_DEVICE_RELEASE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_DATA_OFFER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2874:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_DATA_OFFER_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_DATA_OFFER_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_ENTER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2878:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_ENTER_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_ENTER_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_LEAVE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2882:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_LEAVE_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_LEAVE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_MOTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2886:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_MOTION_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_MOTION_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_DROP_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2890:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_DROP_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_DROP_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_SELECTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2894:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_SELECTION_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_SELECTION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_START_DRAG_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2899:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_START_DRAG_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_START_DRAG_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_SET_SELECTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2903:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_SET_SELECTION_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_SET_SELECTION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_RELEASE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 2907:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_RELEASE_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_RELEASE_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @enum wl_data_device_manager_dnd_action@

    __defined at:__ @wayland-client-protocol.h 3037:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlDataDeviceManagerDndAction = WlDataDeviceManagerDndAction
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlDataDeviceManagerDndAction where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlDataDeviceManagerDndAction where

  readRaw =
    \ptr0 ->
          pure WlDataDeviceManagerDndAction
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlDataDeviceManagerDndAction where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlDataDeviceManagerDndAction unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlDataDeviceManagerDndAction instance RIP.Storable WlDataDeviceManagerDndAction

deriving via RIP.CUInt instance RIP.Prim WlDataDeviceManagerDndAction

instance CEnum.CEnum WlDataDeviceManagerDndAction where

  type CEnumZ WlDataDeviceManagerDndAction = RIP.CUInt

  toCEnum = WlDataDeviceManagerDndAction

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE")
                                   , (1, RIP.singleton "WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY")
                                   , (2, RIP.singleton "WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE")
                                   , (4, RIP.singleton "WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlDataDeviceManagerDndAction"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlDataDeviceManagerDndAction"

instance Show WlDataDeviceManagerDndAction where

  showsPrec = CEnum.shows

instance Read WlDataDeviceManagerDndAction where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlDataDeviceManagerDndAction) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlDataDeviceManagerDndAction "unwrap" where

  type CFieldType WlDataDeviceManagerDndAction "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE@

    __defined at:__ @wayland-client-protocol.h 3041:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE :: WlDataDeviceManagerDndAction
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE = WlDataDeviceManagerDndAction 0

{-| __C declaration:__ @WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY@

    __defined at:__ @wayland-client-protocol.h 3045:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY :: WlDataDeviceManagerDndAction
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY = WlDataDeviceManagerDndAction 1

{-| __C declaration:__ @WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE@

    __defined at:__ @wayland-client-protocol.h 3049:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE :: WlDataDeviceManagerDndAction
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE = WlDataDeviceManagerDndAction 2

{-| __C declaration:__ @WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK@

    __defined at:__ @wayland-client-protocol.h 3053:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK :: WlDataDeviceManagerDndAction
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK = WlDataDeviceManagerDndAction 4

{-| __C declaration:__ @macro WL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE@

    __defined at:__ @wayland-client-protocol.h 3057:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE :: RIP.CInt
wL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE =
  (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE@

    __defined at:__ @wayland-client-protocol.h 3058:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE :: RIP.CInt
wL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3064:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3068:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE_SINCE_VERSION :: RIP.CInt
wL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum wl_shell_error@

    __defined at:__ @wayland-client-protocol.h 3131:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlShellError = WlShellError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlShellError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlShellError where

  readRaw =
    \ptr0 ->
          pure WlShellError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlShellError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlShellError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlShellError instance RIP.Storable WlShellError

deriving via RIP.CUInt instance RIP.Prim WlShellError

instance CEnum.CEnum WlShellError where

  type CEnumZ WlShellError = RIP.CUInt

  toCEnum = WlShellError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WL_SHELL_ERROR_ROLE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlShellError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlShellError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlShellError where

  minDeclaredValue = WL_SHELL_ERROR_ROLE

  maxDeclaredValue = WL_SHELL_ERROR_ROLE

instance Show WlShellError where

  showsPrec = CEnum.shows

instance Read WlShellError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlShellError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlShellError "unwrap" where

  type CFieldType WlShellError "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHELL_ERROR_ROLE@

    __defined at:__ @wayland-client-protocol.h 3135:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_ERROR_ROLE :: WlShellError
pattern WL_SHELL_ERROR_ROLE = WlShellError 0

{-| __C declaration:__ @macro WL_SHELL_GET_SHELL_SURFACE@

    __defined at:__ @wayland-client-protocol.h 3139:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_GET_SHELL_SURFACE :: RIP.CInt
wL_SHELL_GET_SHELL_SURFACE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_GET_SHELL_SURFACE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3145:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_GET_SHELL_SURFACE_SINCE_VERSION :: RIP.CInt
wL_SHELL_GET_SHELL_SURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum wl_shell_surface_resize@

    __defined at:__ @wayland-client-protocol.h 3205:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlShellSurfaceResize = WlShellSurfaceResize
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlShellSurfaceResize where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlShellSurfaceResize where

  readRaw =
    \ptr0 ->
          pure WlShellSurfaceResize
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlShellSurfaceResize where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlShellSurfaceResize unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlShellSurfaceResize instance RIP.Storable WlShellSurfaceResize

deriving via RIP.CUInt instance RIP.Prim WlShellSurfaceResize

instance CEnum.CEnum WlShellSurfaceResize where

  type CEnumZ WlShellSurfaceResize = RIP.CUInt

  toCEnum = WlShellSurfaceResize

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SHELL_SURFACE_RESIZE_NONE")
                                   , (1, RIP.singleton "WL_SHELL_SURFACE_RESIZE_TOP")
                                   , (2, RIP.singleton "WL_SHELL_SURFACE_RESIZE_BOTTOM")
                                   , (4, RIP.singleton "WL_SHELL_SURFACE_RESIZE_LEFT")
                                   , (5, RIP.singleton "WL_SHELL_SURFACE_RESIZE_TOP_LEFT")
                                   , (6, RIP.singleton "WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT")
                                   , (8, RIP.singleton "WL_SHELL_SURFACE_RESIZE_RIGHT")
                                   , (9, RIP.singleton "WL_SHELL_SURFACE_RESIZE_TOP_RIGHT")
                                   , (10, RIP.singleton "WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlShellSurfaceResize"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlShellSurfaceResize"

instance Show WlShellSurfaceResize where

  showsPrec = CEnum.shows

instance Read WlShellSurfaceResize where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlShellSurfaceResize) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlShellSurfaceResize "unwrap" where

  type CFieldType WlShellSurfaceResize "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_NONE@

    __defined at:__ @wayland-client-protocol.h 3209:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_NONE :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_NONE = WlShellSurfaceResize 0

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_TOP@

    __defined at:__ @wayland-client-protocol.h 3213:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_TOP :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_TOP = WlShellSurfaceResize 1

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_BOTTOM@

    __defined at:__ @wayland-client-protocol.h 3217:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM = WlShellSurfaceResize 2

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_LEFT@

    __defined at:__ @wayland-client-protocol.h 3221:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_LEFT :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_LEFT = WlShellSurfaceResize 4

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_TOP_LEFT@

    __defined at:__ @wayland-client-protocol.h 3225:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_TOP_LEFT :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_TOP_LEFT = WlShellSurfaceResize 5

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT@

    __defined at:__ @wayland-client-protocol.h 3229:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT = WlShellSurfaceResize 6

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_RIGHT@

    __defined at:__ @wayland-client-protocol.h 3233:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_RIGHT :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_RIGHT = WlShellSurfaceResize 8

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_TOP_RIGHT@

    __defined at:__ @wayland-client-protocol.h 3237:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_TOP_RIGHT :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_TOP_RIGHT = WlShellSurfaceResize 9

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT@

    __defined at:__ @wayland-client-protocol.h 3241:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT :: WlShellSurfaceResize
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT = WlShellSurfaceResize 10

{-| __C declaration:__ @enum wl_shell_surface_transient@

    __defined at:__ @wayland-client-protocol.h 3254:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlShellSurfaceTransient = WlShellSurfaceTransient
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlShellSurfaceTransient where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlShellSurfaceTransient where

  readRaw =
    \ptr0 ->
          pure WlShellSurfaceTransient
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlShellSurfaceTransient where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlShellSurfaceTransient unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlShellSurfaceTransient instance RIP.Storable WlShellSurfaceTransient

deriving via RIP.CUInt instance RIP.Prim WlShellSurfaceTransient

instance CEnum.CEnum WlShellSurfaceTransient where

  type CEnumZ WlShellSurfaceTransient = RIP.CUInt

  toCEnum = WlShellSurfaceTransient

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(1, RIP.singleton "WL_SHELL_SURFACE_TRANSIENT_INACTIVE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlShellSurfaceTransient"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlShellSurfaceTransient"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlShellSurfaceTransient where

  minDeclaredValue =
    WL_SHELL_SURFACE_TRANSIENT_INACTIVE

  maxDeclaredValue =
    WL_SHELL_SURFACE_TRANSIENT_INACTIVE

instance Show WlShellSurfaceTransient where

  showsPrec = CEnum.shows

instance Read WlShellSurfaceTransient where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlShellSurfaceTransient) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlShellSurfaceTransient "unwrap" where

  type CFieldType WlShellSurfaceTransient "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHELL_SURFACE_TRANSIENT_INACTIVE@

    __defined at:__ @wayland-client-protocol.h 3258:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_TRANSIENT_INACTIVE :: WlShellSurfaceTransient
pattern WL_SHELL_SURFACE_TRANSIENT_INACTIVE = WlShellSurfaceTransient 1

{-| __C declaration:__ @enum wl_shell_surface_fullscreen_method@

    __defined at:__ @wayland-client-protocol.h 3272:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlShellSurfaceFullscreenMethod = WlShellSurfaceFullscreenMethod
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlShellSurfaceFullscreenMethod where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlShellSurfaceFullscreenMethod where

  readRaw =
    \ptr0 ->
          pure WlShellSurfaceFullscreenMethod
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlShellSurfaceFullscreenMethod where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlShellSurfaceFullscreenMethod unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlShellSurfaceFullscreenMethod instance RIP.Storable WlShellSurfaceFullscreenMethod

deriving via RIP.CUInt instance RIP.Prim WlShellSurfaceFullscreenMethod

instance CEnum.CEnum WlShellSurfaceFullscreenMethod where

  type CEnumZ WlShellSurfaceFullscreenMethod =
    RIP.CUInt

  toCEnum = WlShellSurfaceFullscreenMethod

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT")
                                   , (1, RIP.singleton "WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE")
                                   , (2, RIP.singleton "WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER")
                                   , (3, RIP.singleton "WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlShellSurfaceFullscreenMethod"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlShellSurfaceFullscreenMethod"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlShellSurfaceFullscreenMethod where

  minDeclaredValue =
    WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT

  maxDeclaredValue =
    WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL

instance Show WlShellSurfaceFullscreenMethod where

  showsPrec = CEnum.shows

instance Read WlShellSurfaceFullscreenMethod where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlShellSurfaceFullscreenMethod) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlShellSurfaceFullscreenMethod "unwrap" where

  type CFieldType WlShellSurfaceFullscreenMethod "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT@

    __defined at:__ @wayland-client-protocol.h 3276:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT :: WlShellSurfaceFullscreenMethod
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT = WlShellSurfaceFullscreenMethod 0

{-| __C declaration:__ @WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE@

    __defined at:__ @wayland-client-protocol.h 3280:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE :: WlShellSurfaceFullscreenMethod
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE = WlShellSurfaceFullscreenMethod 1

{-| __C declaration:__ @WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER@

    __defined at:__ @wayland-client-protocol.h 3284:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER :: WlShellSurfaceFullscreenMethod
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER = WlShellSurfaceFullscreenMethod 2

{-| __C declaration:__ @WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL@

    __defined at:__ @wayland-client-protocol.h 3288:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL :: WlShellSurfaceFullscreenMethod
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL = WlShellSurfaceFullscreenMethod 3

{-| __C declaration:__ @struct wl_shell_surface_listener@

    __defined at:__ @wayland-client-protocol.h 3296:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlShellSurfaceListener = WlShellSurfaceListener
  { ping :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @ping@

         __defined at:__ @wayland-client-protocol.h 3304:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , configure :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @configure@

         __defined at:__ @wayland-client-protocol.h 3331:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , popup_done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ())
    {- ^ __C declaration:__ @popup_done@

         __defined at:__ @wayland-client-protocol.h 3343:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlShellSurfaceListener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlShellSurfaceListener where

  readRaw =
    \ptr0 ->
          pure WlShellSurfaceListener
      <*> HasCField.readRaw (RIP.Proxy @"ping") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"configure") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"popup_done") ptr0

instance Marshal.WriteRaw WlShellSurfaceListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlShellSurfaceListener ping2 configure3 popup_done4 ->
               HasCField.writeRaw (RIP.Proxy @"ping") ptr0 ping2
            >> HasCField.writeRaw (RIP.Proxy @"configure") ptr0 configure3
            >> HasCField.writeRaw (RIP.Proxy @"popup_done") ptr0 popup_done4

deriving via Marshal.EquivStorable WlShellSurfaceListener instance RIP.Storable WlShellSurfaceListener

instance HasCField.HasCField WlShellSurfaceListener "ping" where

  type CFieldType WlShellSurfaceListener "ping" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "ping" (RIP.Ptr WlShellSurfaceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"ping")

instance HasCField.HasCField WlShellSurfaceListener "configure" where

  type CFieldType WlShellSurfaceListener "configure" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "configure" (RIP.Ptr WlShellSurfaceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"configure")

instance HasCField.HasCField WlShellSurfaceListener "popup_done" where

  type CFieldType WlShellSurfaceListener "popup_done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ()))
         ) => RIP.HasField "popup_done" (RIP.Ptr WlShellSurfaceListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"popup_done")

{-| __C declaration:__ @macro WL_SHELL_SURFACE_PONG@

    __defined at:__ @wayland-client-protocol.h 3358:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_PONG :: RIP.CInt
wL_SHELL_SURFACE_PONG = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_MOVE@

    __defined at:__ @wayland-client-protocol.h 3359:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_MOVE :: RIP.CInt
wL_SHELL_SURFACE_MOVE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_RESIZE@

    __defined at:__ @wayland-client-protocol.h 3360:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_RESIZE :: RIP.CInt
wL_SHELL_SURFACE_RESIZE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_TOPLEVEL@

    __defined at:__ @wayland-client-protocol.h 3361:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_TOPLEVEL :: RIP.CInt
wL_SHELL_SURFACE_SET_TOPLEVEL = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_TRANSIENT@

    __defined at:__ @wayland-client-protocol.h 3362:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_TRANSIENT :: RIP.CInt
wL_SHELL_SURFACE_SET_TRANSIENT = (4 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_FULLSCREEN@

    __defined at:__ @wayland-client-protocol.h 3363:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_FULLSCREEN :: RIP.CInt
wL_SHELL_SURFACE_SET_FULLSCREEN = (5 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_POPUP@

    __defined at:__ @wayland-client-protocol.h 3364:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_POPUP :: RIP.CInt
wL_SHELL_SURFACE_SET_POPUP = (6 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_MAXIMIZED@

    __defined at:__ @wayland-client-protocol.h 3365:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_MAXIMIZED :: RIP.CInt
wL_SHELL_SURFACE_SET_MAXIMIZED = (7 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_TITLE@

    __defined at:__ @wayland-client-protocol.h 3366:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_TITLE :: RIP.CInt
wL_SHELL_SURFACE_SET_TITLE = (8 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_CLASS@

    __defined at:__ @wayland-client-protocol.h 3367:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_CLASS :: RIP.CInt
wL_SHELL_SURFACE_SET_CLASS = (9 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_PING_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3372:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_PING_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_PING_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_CONFIGURE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3376:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_CONFIGURE_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_CONFIGURE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_POPUP_DONE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3380:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_POPUP_DONE_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_POPUP_DONE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_PONG_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3385:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_PONG_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_PONG_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_MOVE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3389:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_MOVE_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_MOVE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_RESIZE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3393:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_RESIZE_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_RESIZE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_TOPLEVEL_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3397:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_TOPLEVEL_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_SET_TOPLEVEL_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_TRANSIENT_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3401:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_TRANSIENT_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_SET_TRANSIENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_FULLSCREEN_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3405:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_FULLSCREEN_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_SET_FULLSCREEN_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_POPUP_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3409:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_POPUP_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_SET_POPUP_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_MAXIMIZED_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3413:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_MAXIMIZED_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_SET_MAXIMIZED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_TITLE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3417:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_TITLE_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_SET_TITLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SHELL_SURFACE_SET_CLASS_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3421:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SHELL_SURFACE_SET_CLASS_SINCE_VERSION :: RIP.CInt
wL_SHELL_SURFACE_SET_CLASS_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum wl_surface_error@

    __defined at:__ @wayland-client-protocol.h 3673:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlSurfaceError = WlSurfaceError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlSurfaceError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlSurfaceError where

  readRaw =
    \ptr0 ->
          pure WlSurfaceError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlSurfaceError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlSurfaceError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlSurfaceError instance RIP.Storable WlSurfaceError

deriving via RIP.CUInt instance RIP.Prim WlSurfaceError

instance CEnum.CEnum WlSurfaceError where

  type CEnumZ WlSurfaceError = RIP.CUInt

  toCEnum = WlSurfaceError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SURFACE_ERROR_INVALID_SCALE")
                                   , (1, RIP.singleton "WL_SURFACE_ERROR_INVALID_TRANSFORM")
                                   , (2, RIP.singleton "WL_SURFACE_ERROR_INVALID_SIZE")
                                   , (3, RIP.singleton "WL_SURFACE_ERROR_INVALID_OFFSET")
                                   , (4, RIP.singleton "WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlSurfaceError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlSurfaceError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlSurfaceError where

  minDeclaredValue = WL_SURFACE_ERROR_INVALID_SCALE

  maxDeclaredValue =
    WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT

instance Show WlSurfaceError where

  showsPrec = CEnum.shows

instance Read WlSurfaceError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlSurfaceError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlSurfaceError "unwrap" where

  type CFieldType WlSurfaceError "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SURFACE_ERROR_INVALID_SCALE@

    __defined at:__ @wayland-client-protocol.h 3677:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_INVALID_SCALE :: WlSurfaceError
pattern WL_SURFACE_ERROR_INVALID_SCALE = WlSurfaceError 0

{-| __C declaration:__ @WL_SURFACE_ERROR_INVALID_TRANSFORM@

    __defined at:__ @wayland-client-protocol.h 3681:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_INVALID_TRANSFORM :: WlSurfaceError
pattern WL_SURFACE_ERROR_INVALID_TRANSFORM = WlSurfaceError 1

{-| __C declaration:__ @WL_SURFACE_ERROR_INVALID_SIZE@

    __defined at:__ @wayland-client-protocol.h 3685:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_INVALID_SIZE :: WlSurfaceError
pattern WL_SURFACE_ERROR_INVALID_SIZE = WlSurfaceError 2

{-| __C declaration:__ @WL_SURFACE_ERROR_INVALID_OFFSET@

    __defined at:__ @wayland-client-protocol.h 3689:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_INVALID_OFFSET :: WlSurfaceError
pattern WL_SURFACE_ERROR_INVALID_OFFSET = WlSurfaceError 3

{-| __C declaration:__ @WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT@

    __defined at:__ @wayland-client-protocol.h 3693:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT :: WlSurfaceError
pattern WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT = WlSurfaceError 4

{-| __C declaration:__ @struct wl_surface_listener@

    __defined at:__ @wayland-client-protocol.h 3701:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlSurfaceListener = WlSurfaceListener
  { enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ())
    {- ^ __C declaration:__ @enter@

         __defined at:__ @wayland-client-protocol.h 3713:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ())
    {- ^ __C declaration:__ @leave@

         __defined at:__ @wayland-client-protocol.h 3730:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , preferred_buffer_scale :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @preferred_buffer_scale@

         __defined at:__ @wayland-client-protocol.h 3752:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , preferred_buffer_transform :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @preferred_buffer_transform@

         __defined at:__ @wayland-client-protocol.h 3771:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlSurfaceListener where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlSurfaceListener where

  readRaw =
    \ptr0 ->
          pure WlSurfaceListener
      <*> HasCField.readRaw (RIP.Proxy @"enter") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"leave") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"preferred_buffer_scale") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"preferred_buffer_transform") ptr0

instance Marshal.WriteRaw WlSurfaceListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlSurfaceListener
            enter2
            leave3
            preferred_buffer_scale4
            preferred_buffer_transform5 ->
                 HasCField.writeRaw (RIP.Proxy @"enter") ptr0 enter2
              >> HasCField.writeRaw (RIP.Proxy @"leave") ptr0 leave3
              >> HasCField.writeRaw (RIP.Proxy @"preferred_buffer_scale") ptr0 preferred_buffer_scale4
              >> HasCField.writeRaw (RIP.Proxy @"preferred_buffer_transform") ptr0 preferred_buffer_transform5

deriving via Marshal.EquivStorable WlSurfaceListener instance RIP.Storable WlSurfaceListener

instance HasCField.HasCField WlSurfaceListener "enter" where

  type CFieldType WlSurfaceListener "enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ()))
         ) => RIP.HasField "enter" (RIP.Ptr WlSurfaceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enter")

instance HasCField.HasCField WlSurfaceListener "leave" where

  type CFieldType WlSurfaceListener "leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ()))
         ) => RIP.HasField "leave" (RIP.Ptr WlSurfaceListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"leave")

instance HasCField.HasCField WlSurfaceListener "preferred_buffer_scale" where

  type CFieldType WlSurfaceListener "preferred_buffer_scale" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "preferred_buffer_scale" (RIP.Ptr WlSurfaceListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"preferred_buffer_scale")

instance HasCField.HasCField WlSurfaceListener "preferred_buffer_transform" where

  type CFieldType WlSurfaceListener "preferred_buffer_transform" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "preferred_buffer_transform" (RIP.Ptr WlSurfaceListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"preferred_buffer_transform")

{-| __C declaration:__ @macro WL_SURFACE_DESTROY@

    __defined at:__ @wayland-client-protocol.h 3787:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_DESTROY :: RIP.CInt
wL_SURFACE_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_ATTACH@

    __defined at:__ @wayland-client-protocol.h 3788:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_ATTACH :: RIP.CInt
wL_SURFACE_ATTACH = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_DAMAGE@

    __defined at:__ @wayland-client-protocol.h 3789:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_DAMAGE :: RIP.CInt
wL_SURFACE_DAMAGE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_FRAME@

    __defined at:__ @wayland-client-protocol.h 3790:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_FRAME :: RIP.CInt
wL_SURFACE_FRAME = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_SET_OPAQUE_REGION@

    __defined at:__ @wayland-client-protocol.h 3791:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_SET_OPAQUE_REGION :: RIP.CInt
wL_SURFACE_SET_OPAQUE_REGION = (4 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_SET_INPUT_REGION@

    __defined at:__ @wayland-client-protocol.h 3792:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_SET_INPUT_REGION :: RIP.CInt
wL_SURFACE_SET_INPUT_REGION = (5 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_COMMIT@

    __defined at:__ @wayland-client-protocol.h 3793:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_COMMIT :: RIP.CInt
wL_SURFACE_COMMIT = (6 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_SET_BUFFER_TRANSFORM@

    __defined at:__ @wayland-client-protocol.h 3794:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_SET_BUFFER_TRANSFORM :: RIP.CInt
wL_SURFACE_SET_BUFFER_TRANSFORM = (7 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_SET_BUFFER_SCALE@

    __defined at:__ @wayland-client-protocol.h 3795:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_SET_BUFFER_SCALE :: RIP.CInt
wL_SURFACE_SET_BUFFER_SCALE = (8 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_DAMAGE_BUFFER@

    __defined at:__ @wayland-client-protocol.h 3796:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_DAMAGE_BUFFER :: RIP.CInt
wL_SURFACE_DAMAGE_BUFFER = (9 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_OFFSET@

    __defined at:__ @wayland-client-protocol.h 3797:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_OFFSET :: RIP.CInt
wL_SURFACE_OFFSET = (10 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_ENTER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3802:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_ENTER_SINCE_VERSION :: RIP.CInt
wL_SURFACE_ENTER_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_LEAVE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3806:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_LEAVE_SINCE_VERSION :: RIP.CInt
wL_SURFACE_LEAVE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_PREFERRED_BUFFER_SCALE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3810:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_PREFERRED_BUFFER_SCALE_SINCE_VERSION :: RIP.CInt
wL_SURFACE_PREFERRED_BUFFER_SCALE_SINCE_VERSION =
  (6 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_PREFERRED_BUFFER_TRANSFORM_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3814:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_PREFERRED_BUFFER_TRANSFORM_SINCE_VERSION :: RIP.CInt
wL_SURFACE_PREFERRED_BUFFER_TRANSFORM_SINCE_VERSION =
  (6 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3819:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_DESTROY_SINCE_VERSION :: RIP.CInt
wL_SURFACE_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_ATTACH_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3823:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_ATTACH_SINCE_VERSION :: RIP.CInt
wL_SURFACE_ATTACH_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_DAMAGE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3827:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_DAMAGE_SINCE_VERSION :: RIP.CInt
wL_SURFACE_DAMAGE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_FRAME_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3831:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_FRAME_SINCE_VERSION :: RIP.CInt
wL_SURFACE_FRAME_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_SET_OPAQUE_REGION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3835:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_SET_OPAQUE_REGION_SINCE_VERSION :: RIP.CInt
wL_SURFACE_SET_OPAQUE_REGION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_SET_INPUT_REGION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3839:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_SET_INPUT_REGION_SINCE_VERSION :: RIP.CInt
wL_SURFACE_SET_INPUT_REGION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_COMMIT_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3843:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_COMMIT_SINCE_VERSION :: RIP.CInt
wL_SURFACE_COMMIT_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_SET_BUFFER_TRANSFORM_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3847:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_SET_BUFFER_TRANSFORM_SINCE_VERSION :: RIP.CInt
wL_SURFACE_SET_BUFFER_TRANSFORM_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_SET_BUFFER_SCALE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3851:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_SET_BUFFER_SCALE_SINCE_VERSION :: RIP.CInt
wL_SURFACE_SET_BUFFER_SCALE_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_DAMAGE_BUFFER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3855:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_DAMAGE_BUFFER_SINCE_VERSION :: RIP.CInt
wL_SURFACE_DAMAGE_BUFFER_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SURFACE_OFFSET_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 3859:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SURFACE_OFFSET_SINCE_VERSION :: RIP.CInt
wL_SURFACE_OFFSET_SINCE_VERSION = (5 :: RIP.CInt)

{-| __C declaration:__ @enum wl_seat_capability@

    __defined at:__ @wayland-client-protocol.h 4300:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlSeatCapability = WlSeatCapability
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlSeatCapability where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlSeatCapability where

  readRaw =
    \ptr0 ->
          pure WlSeatCapability
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlSeatCapability where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlSeatCapability unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlSeatCapability instance RIP.Storable WlSeatCapability

deriving via RIP.CUInt instance RIP.Prim WlSeatCapability

instance CEnum.CEnum WlSeatCapability where

  type CEnumZ WlSeatCapability = RIP.CUInt

  toCEnum = WlSeatCapability

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "WL_SEAT_CAPABILITY_POINTER")
                                   , (2, RIP.singleton "WL_SEAT_CAPABILITY_KEYBOARD")
                                   , (4, RIP.singleton "WL_SEAT_CAPABILITY_TOUCH")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlSeatCapability"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlSeatCapability"

instance Show WlSeatCapability where

  showsPrec = CEnum.shows

instance Read WlSeatCapability where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlSeatCapability) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlSeatCapability "unwrap" where

  type CFieldType WlSeatCapability "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SEAT_CAPABILITY_POINTER@

    __defined at:__ @wayland-client-protocol.h 4304:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SEAT_CAPABILITY_POINTER :: WlSeatCapability
pattern WL_SEAT_CAPABILITY_POINTER = WlSeatCapability 1

{-| __C declaration:__ @WL_SEAT_CAPABILITY_KEYBOARD@

    __defined at:__ @wayland-client-protocol.h 4308:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SEAT_CAPABILITY_KEYBOARD :: WlSeatCapability
pattern WL_SEAT_CAPABILITY_KEYBOARD = WlSeatCapability 2

{-| __C declaration:__ @WL_SEAT_CAPABILITY_TOUCH@

    __defined at:__ @wayland-client-protocol.h 4312:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SEAT_CAPABILITY_TOUCH :: WlSeatCapability
pattern WL_SEAT_CAPABILITY_TOUCH = WlSeatCapability 4

{-| __C declaration:__ @enum wl_seat_error@

    __defined at:__ @wayland-client-protocol.h 4324:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlSeatError = WlSeatError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlSeatError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlSeatError where

  readRaw =
    \ptr0 ->
          pure WlSeatError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlSeatError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlSeatError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlSeatError instance RIP.Storable WlSeatError

deriving via RIP.CUInt instance RIP.Prim WlSeatError

instance CEnum.CEnum WlSeatError where

  type CEnumZ WlSeatError = RIP.CUInt

  toCEnum = WlSeatError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WL_SEAT_ERROR_MISSING_CAPABILITY")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlSeatError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlSeatError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlSeatError where

  minDeclaredValue = WL_SEAT_ERROR_MISSING_CAPABILITY

  maxDeclaredValue = WL_SEAT_ERROR_MISSING_CAPABILITY

instance Show WlSeatError where

  showsPrec = CEnum.shows

instance Read WlSeatError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlSeatError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlSeatError "unwrap" where

  type CFieldType WlSeatError "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SEAT_ERROR_MISSING_CAPABILITY@

    __defined at:__ @wayland-client-protocol.h 4328:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SEAT_ERROR_MISSING_CAPABILITY :: WlSeatError
pattern WL_SEAT_ERROR_MISSING_CAPABILITY = WlSeatError 0

{-| __C declaration:__ @struct wl_seat_listener@

    __defined at:__ @wayland-client-protocol.h 4336:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlSeatListener = WlSeatListener
  { capabilities :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @capabilities@

         __defined at:__ @wayland-client-protocol.h 4368:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , name :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-client-protocol.h 4397:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlSeatListener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlSeatListener where

  readRaw =
    \ptr0 ->
          pure WlSeatListener
      <*> HasCField.readRaw (RIP.Proxy @"capabilities") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0

instance Marshal.WriteRaw WlSeatListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlSeatListener capabilities2 name3 ->
               HasCField.writeRaw (RIP.Proxy @"capabilities") ptr0 capabilities2
            >> HasCField.writeRaw (RIP.Proxy @"name") ptr0 name3

deriving via Marshal.EquivStorable WlSeatListener instance RIP.Storable WlSeatListener

instance HasCField.HasCField WlSeatListener "capabilities" where

  type CFieldType WlSeatListener "capabilities" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "capabilities" (RIP.Ptr WlSeatListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"capabilities")

instance HasCField.HasCField WlSeatListener "name" where

  type CFieldType WlSeatListener "name" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "name" (RIP.Ptr WlSeatListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

{-| __C declaration:__ @macro WL_SEAT_GET_POINTER@

    __defined at:__ @wayland-client-protocol.h 4413:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_GET_POINTER :: RIP.CInt
wL_SEAT_GET_POINTER = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_GET_KEYBOARD@

    __defined at:__ @wayland-client-protocol.h 4414:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_GET_KEYBOARD :: RIP.CInt
wL_SEAT_GET_KEYBOARD = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_GET_TOUCH@

    __defined at:__ @wayland-client-protocol.h 4415:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_GET_TOUCH :: RIP.CInt
wL_SEAT_GET_TOUCH = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_RELEASE@

    __defined at:__ @wayland-client-protocol.h 4416:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_RELEASE :: RIP.CInt
wL_SEAT_RELEASE = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_CAPABILITIES_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 4421:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_CAPABILITIES_SINCE_VERSION :: RIP.CInt
wL_SEAT_CAPABILITIES_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_NAME_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 4425:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_NAME_SINCE_VERSION :: RIP.CInt
wL_SEAT_NAME_SINCE_VERSION = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_GET_POINTER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 4430:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_GET_POINTER_SINCE_VERSION :: RIP.CInt
wL_SEAT_GET_POINTER_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_GET_KEYBOARD_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 4434:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_GET_KEYBOARD_SINCE_VERSION :: RIP.CInt
wL_SEAT_GET_KEYBOARD_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_GET_TOUCH_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 4438:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_GET_TOUCH_SINCE_VERSION :: RIP.CInt
wL_SEAT_GET_TOUCH_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SEAT_RELEASE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 4442:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SEAT_RELEASE_SINCE_VERSION :: RIP.CInt
wL_SEAT_RELEASE_SINCE_VERSION = (5 :: RIP.CInt)

{-| __C declaration:__ @enum wl_pointer_error@

    __defined at:__ @wayland-client-protocol.h 4555:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlPointerError = WlPointerError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlPointerError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlPointerError where

  readRaw =
    \ptr0 ->
          pure WlPointerError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlPointerError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlPointerError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlPointerError instance RIP.Storable WlPointerError

deriving via RIP.CUInt instance RIP.Prim WlPointerError

instance CEnum.CEnum WlPointerError where

  type CEnumZ WlPointerError = RIP.CUInt

  toCEnum = WlPointerError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WL_POINTER_ERROR_ROLE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlPointerError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlPointerError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlPointerError where

  minDeclaredValue = WL_POINTER_ERROR_ROLE

  maxDeclaredValue = WL_POINTER_ERROR_ROLE

instance Show WlPointerError where

  showsPrec = CEnum.shows

instance Read WlPointerError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlPointerError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlPointerError "unwrap" where

  type CFieldType WlPointerError "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_ERROR_ROLE@

    __defined at:__ @wayland-client-protocol.h 4559:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_ERROR_ROLE :: WlPointerError
pattern WL_POINTER_ERROR_ROLE = WlPointerError 0

{-| __C declaration:__ @enum wl_pointer_button_state@

    __defined at:__ @wayland-client-protocol.h 4572:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlPointerButtonState = WlPointerButtonState
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlPointerButtonState where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlPointerButtonState where

  readRaw =
    \ptr0 ->
          pure WlPointerButtonState
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlPointerButtonState where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlPointerButtonState unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlPointerButtonState instance RIP.Storable WlPointerButtonState

deriving via RIP.CUInt instance RIP.Prim WlPointerButtonState

instance CEnum.CEnum WlPointerButtonState where

  type CEnumZ WlPointerButtonState = RIP.CUInt

  toCEnum = WlPointerButtonState

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_POINTER_BUTTON_STATE_RELEASED")
                                   , (1, RIP.singleton "WL_POINTER_BUTTON_STATE_PRESSED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlPointerButtonState"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlPointerButtonState"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlPointerButtonState where

  minDeclaredValue = WL_POINTER_BUTTON_STATE_RELEASED

  maxDeclaredValue = WL_POINTER_BUTTON_STATE_PRESSED

instance Show WlPointerButtonState where

  showsPrec = CEnum.shows

instance Read WlPointerButtonState where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlPointerButtonState) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlPointerButtonState "unwrap" where

  type CFieldType WlPointerButtonState "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_BUTTON_STATE_RELEASED@

    __defined at:__ @wayland-client-protocol.h 4576:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_BUTTON_STATE_RELEASED :: WlPointerButtonState
pattern WL_POINTER_BUTTON_STATE_RELEASED = WlPointerButtonState 0

{-| __C declaration:__ @WL_POINTER_BUTTON_STATE_PRESSED@

    __defined at:__ @wayland-client-protocol.h 4580:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_BUTTON_STATE_PRESSED :: WlPointerButtonState
pattern WL_POINTER_BUTTON_STATE_PRESSED = WlPointerButtonState 1

{-| __C declaration:__ @enum wl_pointer_axis@

    __defined at:__ @wayland-client-protocol.h 4592:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlPointerAxis = WlPointerAxis
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlPointerAxis where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlPointerAxis where

  readRaw =
    \ptr0 ->
          pure WlPointerAxis
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlPointerAxis where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlPointerAxis unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlPointerAxis instance RIP.Storable WlPointerAxis

deriving via RIP.CUInt instance RIP.Prim WlPointerAxis

instance CEnum.CEnum WlPointerAxis where

  type CEnumZ WlPointerAxis = RIP.CUInt

  toCEnum = WlPointerAxis

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_POINTER_AXIS_VERTICAL_SCROLL")
                                   , (1, RIP.singleton "WL_POINTER_AXIS_HORIZONTAL_SCROLL")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlPointerAxis"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlPointerAxis"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlPointerAxis where

  minDeclaredValue = WL_POINTER_AXIS_VERTICAL_SCROLL

  maxDeclaredValue = WL_POINTER_AXIS_HORIZONTAL_SCROLL

instance Show WlPointerAxis where

  showsPrec = CEnum.shows

instance Read WlPointerAxis where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlPointerAxis) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlPointerAxis "unwrap" where

  type CFieldType WlPointerAxis "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_AXIS_VERTICAL_SCROLL@

    __defined at:__ @wayland-client-protocol.h 4596:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_VERTICAL_SCROLL :: WlPointerAxis
pattern WL_POINTER_AXIS_VERTICAL_SCROLL = WlPointerAxis 0

{-| __C declaration:__ @WL_POINTER_AXIS_HORIZONTAL_SCROLL@

    __defined at:__ @wayland-client-protocol.h 4600:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_HORIZONTAL_SCROLL :: WlPointerAxis
pattern WL_POINTER_AXIS_HORIZONTAL_SCROLL = WlPointerAxis 1

{-| __C declaration:__ @enum wl_pointer_axis_source@

    __defined at:__ @wayland-client-protocol.h 4627:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlPointerAxisSource = WlPointerAxisSource
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlPointerAxisSource where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlPointerAxisSource where

  readRaw =
    \ptr0 ->
          pure WlPointerAxisSource
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlPointerAxisSource where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlPointerAxisSource unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlPointerAxisSource instance RIP.Storable WlPointerAxisSource

deriving via RIP.CUInt instance RIP.Prim WlPointerAxisSource

instance CEnum.CEnum WlPointerAxisSource where

  type CEnumZ WlPointerAxisSource = RIP.CUInt

  toCEnum = WlPointerAxisSource

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_POINTER_AXIS_SOURCE_WHEEL")
                                   , (1, RIP.singleton "WL_POINTER_AXIS_SOURCE_FINGER")
                                   , (2, RIP.singleton "WL_POINTER_AXIS_SOURCE_CONTINUOUS")
                                   , (3, RIP.singleton "WL_POINTER_AXIS_SOURCE_WHEEL_TILT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlPointerAxisSource"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlPointerAxisSource"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlPointerAxisSource where

  minDeclaredValue = WL_POINTER_AXIS_SOURCE_WHEEL

  maxDeclaredValue = WL_POINTER_AXIS_SOURCE_WHEEL_TILT

instance Show WlPointerAxisSource where

  showsPrec = CEnum.shows

instance Read WlPointerAxisSource where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlPointerAxisSource) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlPointerAxisSource "unwrap" where

  type CFieldType WlPointerAxisSource "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_AXIS_SOURCE_WHEEL@

    __defined at:__ @wayland-client-protocol.h 4631:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_SOURCE_WHEEL :: WlPointerAxisSource
pattern WL_POINTER_AXIS_SOURCE_WHEEL = WlPointerAxisSource 0

{-| __C declaration:__ @WL_POINTER_AXIS_SOURCE_FINGER@

    __defined at:__ @wayland-client-protocol.h 4635:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_SOURCE_FINGER :: WlPointerAxisSource
pattern WL_POINTER_AXIS_SOURCE_FINGER = WlPointerAxisSource 1

{-| __C declaration:__ @WL_POINTER_AXIS_SOURCE_CONTINUOUS@

    __defined at:__ @wayland-client-protocol.h 4639:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_SOURCE_CONTINUOUS :: WlPointerAxisSource
pattern WL_POINTER_AXIS_SOURCE_CONTINUOUS = WlPointerAxisSource 2

{-| __C declaration:__ @WL_POINTER_AXIS_SOURCE_WHEEL_TILT@

    __defined at:__ @wayland-client-protocol.h 4644:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_SOURCE_WHEEL_TILT :: WlPointerAxisSource
pattern WL_POINTER_AXIS_SOURCE_WHEEL_TILT = WlPointerAxisSource 3

{-| __C declaration:__ @macro WL_POINTER_AXIS_SOURCE_WHEEL_TILT_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 4649:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_AXIS_SOURCE_WHEEL_TILT_SINCE_VERSION :: RIP.CInt
wL_POINTER_AXIS_SOURCE_WHEEL_TILT_SINCE_VERSION =
  (6 :: RIP.CInt)

{-| __C declaration:__ @enum wl_pointer_axis_relative_direction@

    __defined at:__ @wayland-client-protocol.h 4661:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlPointerAxisRelativeDirection = WlPointerAxisRelativeDirection
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlPointerAxisRelativeDirection where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlPointerAxisRelativeDirection where

  readRaw =
    \ptr0 ->
          pure WlPointerAxisRelativeDirection
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlPointerAxisRelativeDirection where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlPointerAxisRelativeDirection unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlPointerAxisRelativeDirection instance RIP.Storable WlPointerAxisRelativeDirection

deriving via RIP.CUInt instance RIP.Prim WlPointerAxisRelativeDirection

instance CEnum.CEnum WlPointerAxisRelativeDirection where

  type CEnumZ WlPointerAxisRelativeDirection =
    RIP.CUInt

  toCEnum = WlPointerAxisRelativeDirection

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL")
                                   , (1, RIP.singleton "WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlPointerAxisRelativeDirection"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlPointerAxisRelativeDirection"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlPointerAxisRelativeDirection where

  minDeclaredValue =
    WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL

  maxDeclaredValue =
    WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED

instance Show WlPointerAxisRelativeDirection where

  showsPrec = CEnum.shows

instance Read WlPointerAxisRelativeDirection where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlPointerAxisRelativeDirection) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlPointerAxisRelativeDirection "unwrap" where

  type CFieldType WlPointerAxisRelativeDirection "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL@

    __defined at:__ @wayland-client-protocol.h 4665:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL :: WlPointerAxisRelativeDirection
pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL = WlPointerAxisRelativeDirection 0

{-| __C declaration:__ @WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED@

    __defined at:__ @wayland-client-protocol.h 4669:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED :: WlPointerAxisRelativeDirection
pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED = WlPointerAxisRelativeDirection 1

{-| __C declaration:__ @struct wl_pointer_listener@

    __defined at:__ @wayland-client-protocol.h 4677:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlPointerListener = WlPointerListener
  { enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @enter@

         __defined at:__ @wayland-client-protocol.h 4692:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())
    {- ^ __C declaration:__ @leave@

         __defined at:__ @wayland-client-protocol.h 4709:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , motion :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @motion@

         __defined at:__ @wayland-client-protocol.h 4723:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , button :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @button@

         __defined at:__ @wayland-client-protocol.h 4749:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @axis@

         __defined at:__ @wayland-client-protocol.h 4778:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , frame :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ())
    {- ^ __C declaration:__ @frame@

         __defined at:__ @wayland-client-protocol.h 4822:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_source :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @axis_source@

         __defined at:__ @wayland-client-protocol.h 4855:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_stop :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @axis_stop@

         __defined at:__ @wayland-client-protocol.h 4879:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_discrete :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @axis_discrete@

         __defined at:__ @wayland-client-protocol.h 4922:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_value120 :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @axis_value120@

         __defined at:__ @wayland-client-protocol.h 4954:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_relative_direction :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @axis_relative_direction@

         __defined at:__ @wayland-client-protocol.h 5000:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlPointerListener where

  staticSizeOf = \_ -> (88 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlPointerListener where

  readRaw =
    \ptr0 ->
          pure WlPointerListener
      <*> HasCField.readRaw (RIP.Proxy @"enter") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"leave") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"motion") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"button") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"axis") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"frame") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"axis_source") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"axis_stop") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"axis_discrete") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"axis_value120") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"axis_relative_direction") ptr0

instance Marshal.WriteRaw WlPointerListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlPointerListener
            enter2
            leave3
            motion4
            button5
            axis6
            frame7
            axis_source8
            axis_stop9
            axis_discrete10
            axis_value12011
            axis_relative_direction12 ->
                 HasCField.writeRaw (RIP.Proxy @"enter") ptr0 enter2
              >> HasCField.writeRaw (RIP.Proxy @"leave") ptr0 leave3
              >> HasCField.writeRaw (RIP.Proxy @"motion") ptr0 motion4
              >> HasCField.writeRaw (RIP.Proxy @"button") ptr0 button5
              >> HasCField.writeRaw (RIP.Proxy @"axis") ptr0 axis6
              >> HasCField.writeRaw (RIP.Proxy @"frame") ptr0 frame7
              >> HasCField.writeRaw (RIP.Proxy @"axis_source") ptr0 axis_source8
              >> HasCField.writeRaw (RIP.Proxy @"axis_stop") ptr0 axis_stop9
              >> HasCField.writeRaw (RIP.Proxy @"axis_discrete") ptr0 axis_discrete10
              >> HasCField.writeRaw (RIP.Proxy @"axis_value120") ptr0 axis_value12011
              >> HasCField.writeRaw (RIP.Proxy @"axis_relative_direction") ptr0 axis_relative_direction12

deriving via Marshal.EquivStorable WlPointerListener instance RIP.Storable WlPointerListener

instance HasCField.HasCField WlPointerListener "enter" where

  type CFieldType WlPointerListener "enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "enter" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enter")

instance HasCField.HasCField WlPointerListener "leave" where

  type CFieldType WlPointerListener "leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()))
         ) => RIP.HasField "leave" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"leave")

instance HasCField.HasCField WlPointerListener "motion" where

  type CFieldType WlPointerListener "motion" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "motion" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"motion")

instance HasCField.HasCField WlPointerListener "button" where

  type CFieldType WlPointerListener "button" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "button" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"button")

instance HasCField.HasCField WlPointerListener "axis" where

  type CFieldType WlPointerListener "axis" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "axis" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"axis")

instance HasCField.HasCField WlPointerListener "frame" where

  type CFieldType WlPointerListener "frame" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ()))
         ) => RIP.HasField "frame" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"frame")

instance HasCField.HasCField WlPointerListener "axis_source" where

  type CFieldType WlPointerListener "axis_source" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "axis_source" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"axis_source")

instance HasCField.HasCField WlPointerListener "axis_stop" where

  type CFieldType WlPointerListener "axis_stop" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 56

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "axis_stop" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"axis_stop")

instance HasCField.HasCField WlPointerListener "axis_discrete" where

  type CFieldType WlPointerListener "axis_discrete" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 64

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "axis_discrete" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"axis_discrete")

instance HasCField.HasCField WlPointerListener "axis_value120" where

  type CFieldType WlPointerListener "axis_value120" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 72

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "axis_value120" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"axis_value120")

instance HasCField.HasCField WlPointerListener "axis_relative_direction" where

  type CFieldType WlPointerListener "axis_relative_direction" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 80

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "axis_relative_direction" (RIP.Ptr WlPointerListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"axis_relative_direction")

{-| __C declaration:__ @macro WL_POINTER_SET_CURSOR@

    __defined at:__ @wayland-client-protocol.h 5017:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_SET_CURSOR :: RIP.CInt
wL_POINTER_SET_CURSOR = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_RELEASE@

    __defined at:__ @wayland-client-protocol.h 5018:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_RELEASE :: RIP.CInt
wL_POINTER_RELEASE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_ENTER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5023:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_ENTER_SINCE_VERSION :: RIP.CInt
wL_POINTER_ENTER_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_LEAVE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5027:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_LEAVE_SINCE_VERSION :: RIP.CInt
wL_POINTER_LEAVE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_MOTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5031:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_MOTION_SINCE_VERSION :: RIP.CInt
wL_POINTER_MOTION_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_BUTTON_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5035:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_BUTTON_SINCE_VERSION :: RIP.CInt
wL_POINTER_BUTTON_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_AXIS_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5039:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_AXIS_SINCE_VERSION :: RIP.CInt
wL_POINTER_AXIS_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_FRAME_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5043:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_FRAME_SINCE_VERSION :: RIP.CInt
wL_POINTER_FRAME_SINCE_VERSION = (5 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_AXIS_SOURCE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5047:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_AXIS_SOURCE_SINCE_VERSION :: RIP.CInt
wL_POINTER_AXIS_SOURCE_SINCE_VERSION =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_AXIS_STOP_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5051:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_AXIS_STOP_SINCE_VERSION :: RIP.CInt
wL_POINTER_AXIS_STOP_SINCE_VERSION = (5 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_AXIS_DISCRETE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5055:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_AXIS_DISCRETE_SINCE_VERSION :: RIP.CInt
wL_POINTER_AXIS_DISCRETE_SINCE_VERSION =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_AXIS_VALUE120_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5059:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_AXIS_VALUE120_SINCE_VERSION :: RIP.CInt
wL_POINTER_AXIS_VALUE120_SINCE_VERSION =
  (8 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_AXIS_RELATIVE_DIRECTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5063:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_AXIS_RELATIVE_DIRECTION_SINCE_VERSION :: RIP.CInt
wL_POINTER_AXIS_RELATIVE_DIRECTION_SINCE_VERSION =
  (9 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_SET_CURSOR_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5068:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_SET_CURSOR_SINCE_VERSION :: RIP.CInt
wL_POINTER_SET_CURSOR_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_POINTER_RELEASE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5072:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_POINTER_RELEASE_SINCE_VERSION :: RIP.CInt
wL_POINTER_RELEASE_SINCE_VERSION = (3 :: RIP.CInt)

{-| __C declaration:__ @enum wl_keyboard_keymap_format@

    __defined at:__ @wayland-client-protocol.h 5170:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlKeyboardKeymapFormat = WlKeyboardKeymapFormat
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlKeyboardKeymapFormat where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlKeyboardKeymapFormat where

  readRaw =
    \ptr0 ->
          pure WlKeyboardKeymapFormat
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlKeyboardKeymapFormat where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlKeyboardKeymapFormat unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlKeyboardKeymapFormat instance RIP.Storable WlKeyboardKeymapFormat

deriving via RIP.CUInt instance RIP.Prim WlKeyboardKeymapFormat

instance CEnum.CEnum WlKeyboardKeymapFormat where

  type CEnumZ WlKeyboardKeymapFormat = RIP.CUInt

  toCEnum = WlKeyboardKeymapFormat

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP")
                                   , (1, RIP.singleton "WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlKeyboardKeymapFormat"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlKeyboardKeymapFormat"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlKeyboardKeymapFormat where

  minDeclaredValue =
    WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP

  maxDeclaredValue = WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1

instance Show WlKeyboardKeymapFormat where

  showsPrec = CEnum.shows

instance Read WlKeyboardKeymapFormat where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlKeyboardKeymapFormat) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlKeyboardKeymapFormat "unwrap" where

  type CFieldType WlKeyboardKeymapFormat "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP@

    __defined at:__ @wayland-client-protocol.h 5174:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP :: WlKeyboardKeymapFormat
pattern WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP = WlKeyboardKeymapFormat 0

{-| __C declaration:__ @WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1@

    __defined at:__ @wayland-client-protocol.h 5178:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 :: WlKeyboardKeymapFormat
pattern WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 = WlKeyboardKeymapFormat 1

{-| __C declaration:__ @enum wl_keyboard_key_state@

    __defined at:__ @wayland-client-protocol.h 5198:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlKeyboardKeyState = WlKeyboardKeyState
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlKeyboardKeyState where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlKeyboardKeyState where

  readRaw =
    \ptr0 ->
          pure WlKeyboardKeyState
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlKeyboardKeyState where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlKeyboardKeyState unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlKeyboardKeyState instance RIP.Storable WlKeyboardKeyState

deriving via RIP.CUInt instance RIP.Prim WlKeyboardKeyState

instance CEnum.CEnum WlKeyboardKeyState where

  type CEnumZ WlKeyboardKeyState = RIP.CUInt

  toCEnum = WlKeyboardKeyState

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_KEYBOARD_KEY_STATE_RELEASED")
                                   , (1, RIP.singleton "WL_KEYBOARD_KEY_STATE_PRESSED")
                                   , (2, RIP.singleton "WL_KEYBOARD_KEY_STATE_REPEATED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlKeyboardKeyState"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlKeyboardKeyState"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlKeyboardKeyState where

  minDeclaredValue = WL_KEYBOARD_KEY_STATE_RELEASED

  maxDeclaredValue = WL_KEYBOARD_KEY_STATE_REPEATED

instance Show WlKeyboardKeyState where

  showsPrec = CEnum.shows

instance Read WlKeyboardKeyState where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlKeyboardKeyState) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlKeyboardKeyState "unwrap" where

  type CFieldType WlKeyboardKeyState "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_KEYBOARD_KEY_STATE_RELEASED@

    __defined at:__ @wayland-client-protocol.h 5202:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEY_STATE_RELEASED :: WlKeyboardKeyState
pattern WL_KEYBOARD_KEY_STATE_RELEASED = WlKeyboardKeyState 0

{-| __C declaration:__ @WL_KEYBOARD_KEY_STATE_PRESSED@

    __defined at:__ @wayland-client-protocol.h 5206:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEY_STATE_PRESSED :: WlKeyboardKeyState
pattern WL_KEYBOARD_KEY_STATE_PRESSED = WlKeyboardKeyState 1

{-| __C declaration:__ @WL_KEYBOARD_KEY_STATE_REPEATED@

    __defined at:__ @wayland-client-protocol.h 5211:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEY_STATE_REPEATED :: WlKeyboardKeyState
pattern WL_KEYBOARD_KEY_STATE_REPEATED = WlKeyboardKeyState 2

{-| __C declaration:__ @macro WL_KEYBOARD_KEY_STATE_REPEATED_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5216:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_KEY_STATE_REPEATED_SINCE_VERSION :: RIP.CInt
wL_KEYBOARD_KEY_STATE_REPEATED_SINCE_VERSION =
  (10 :: RIP.CInt)

{-| __C declaration:__ @struct wl_keyboard_listener@

    __defined at:__ @wayland-client-protocol.h 5223:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlKeyboardListener = WlKeyboardListener
  { keymap :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @keymap@

         __defined at:__ @wayland-client-protocol.h 5237:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ())
    {- ^ __C declaration:__ @enter@

         __defined at:__ @wayland-client-protocol.h 5263:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())
    {- ^ __C declaration:__ @leave@

         __defined at:__ @wayland-client-protocol.h 5284:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , key :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @key@

         __defined at:__ @wayland-client-protocol.h 5319:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , modifiers :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @modifiers@

         __defined at:__ @wayland-client-protocol.h 5348:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , repeat_info :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @repeat_info@

         __defined at:__ @wayland-client-protocol.h 5375:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlKeyboardListener where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlKeyboardListener where

  readRaw =
    \ptr0 ->
          pure WlKeyboardListener
      <*> HasCField.readRaw (RIP.Proxy @"keymap") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"enter") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"leave") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"key") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"modifiers") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"repeat_info") ptr0

instance Marshal.WriteRaw WlKeyboardListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlKeyboardListener keymap2 enter3 leave4 key5 modifiers6 repeat_info7 ->
               HasCField.writeRaw (RIP.Proxy @"keymap") ptr0 keymap2
            >> HasCField.writeRaw (RIP.Proxy @"enter") ptr0 enter3
            >> HasCField.writeRaw (RIP.Proxy @"leave") ptr0 leave4
            >> HasCField.writeRaw (RIP.Proxy @"key") ptr0 key5
            >> HasCField.writeRaw (RIP.Proxy @"modifiers") ptr0 modifiers6
            >> HasCField.writeRaw (RIP.Proxy @"repeat_info") ptr0 repeat_info7

deriving via Marshal.EquivStorable WlKeyboardListener instance RIP.Storable WlKeyboardListener

instance HasCField.HasCField WlKeyboardListener "keymap" where

  type CFieldType WlKeyboardListener "keymap" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "keymap" (RIP.Ptr WlKeyboardListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"keymap")

instance HasCField.HasCField WlKeyboardListener "enter" where

  type CFieldType WlKeyboardListener "enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ()))
         ) => RIP.HasField "enter" (RIP.Ptr WlKeyboardListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enter")

instance HasCField.HasCField WlKeyboardListener "leave" where

  type CFieldType WlKeyboardListener "leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()))
         ) => RIP.HasField "leave" (RIP.Ptr WlKeyboardListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"leave")

instance HasCField.HasCField WlKeyboardListener "key" where

  type CFieldType WlKeyboardListener "key" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "key" (RIP.Ptr WlKeyboardListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"key")

instance HasCField.HasCField WlKeyboardListener "modifiers" where

  type CFieldType WlKeyboardListener "modifiers" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "modifiers" (RIP.Ptr WlKeyboardListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"modifiers")

instance HasCField.HasCField WlKeyboardListener "repeat_info" where

  type CFieldType WlKeyboardListener "repeat_info" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "repeat_info" (RIP.Ptr WlKeyboardListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"repeat_info")

{-| __C declaration:__ @macro WL_KEYBOARD_RELEASE@

    __defined at:__ @wayland-client-protocol.h 5392:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_RELEASE :: RIP.CInt
wL_KEYBOARD_RELEASE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_KEYBOARD_KEYMAP_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5397:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_KEYMAP_SINCE_VERSION :: RIP.CInt
wL_KEYBOARD_KEYMAP_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_KEYBOARD_ENTER_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5401:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_ENTER_SINCE_VERSION :: RIP.CInt
wL_KEYBOARD_ENTER_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_KEYBOARD_LEAVE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5405:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_LEAVE_SINCE_VERSION :: RIP.CInt
wL_KEYBOARD_LEAVE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_KEYBOARD_KEY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5409:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_KEY_SINCE_VERSION :: RIP.CInt
wL_KEYBOARD_KEY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_KEYBOARD_MODIFIERS_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5413:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_MODIFIERS_SINCE_VERSION :: RIP.CInt
wL_KEYBOARD_MODIFIERS_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_KEYBOARD_REPEAT_INFO_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5417:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_REPEAT_INFO_SINCE_VERSION :: RIP.CInt
wL_KEYBOARD_REPEAT_INFO_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro WL_KEYBOARD_RELEASE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5422:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_KEYBOARD_RELEASE_SINCE_VERSION :: RIP.CInt
wL_KEYBOARD_RELEASE_SINCE_VERSION = (3 :: RIP.CInt)

{-| __C declaration:__ @struct wl_touch_listener@

    __defined at:__ @wayland-client-protocol.h 5465:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlTouchListener = WlTouchListener
  { down :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @down@

         __defined at:__ @wayland-client-protocol.h 5480:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , up :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @up@

         __defined at:__ @wayland-client-protocol.h 5498:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , motion :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @motion@

         __defined at:__ @wayland-client-protocol.h 5512:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , frame :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ())
    {- ^ __C declaration:__ @frame@

         __defined at:__ @wayland-client-protocol.h 5530:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , cancel :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ())
    {- ^ __C declaration:__ @cancel@

         __defined at:__ @wayland-client-protocol.h 5544:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , shape :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @shape@

         __defined at:__ @wayland-client-protocol.h 5580:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , orientation :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @orientation@

         __defined at:__ @wayland-client-protocol.h 5615:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlTouchListener where

  staticSizeOf = \_ -> (56 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlTouchListener where

  readRaw =
    \ptr0 ->
          pure WlTouchListener
      <*> HasCField.readRaw (RIP.Proxy @"down") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"up") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"motion") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"frame") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"cancel") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"shape") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"orientation") ptr0

instance Marshal.WriteRaw WlTouchListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlTouchListener down2 up3 motion4 frame5 cancel6 shape7 orientation8 ->
               HasCField.writeRaw (RIP.Proxy @"down") ptr0 down2
            >> HasCField.writeRaw (RIP.Proxy @"up") ptr0 up3
            >> HasCField.writeRaw (RIP.Proxy @"motion") ptr0 motion4
            >> HasCField.writeRaw (RIP.Proxy @"frame") ptr0 frame5
            >> HasCField.writeRaw (RIP.Proxy @"cancel") ptr0 cancel6
            >> HasCField.writeRaw (RIP.Proxy @"shape") ptr0 shape7
            >> HasCField.writeRaw (RIP.Proxy @"orientation") ptr0 orientation8

deriving via Marshal.EquivStorable WlTouchListener instance RIP.Storable WlTouchListener

instance HasCField.HasCField WlTouchListener "down" where

  type CFieldType WlTouchListener "down" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "down" (RIP.Ptr WlTouchListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"down")

instance HasCField.HasCField WlTouchListener "up" where

  type CFieldType WlTouchListener "up" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "up" (RIP.Ptr WlTouchListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"up")

instance HasCField.HasCField WlTouchListener "motion" where

  type CFieldType WlTouchListener "motion" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "motion" (RIP.Ptr WlTouchListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"motion")

instance HasCField.HasCField WlTouchListener "frame" where

  type CFieldType WlTouchListener "frame" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ()))
         ) => RIP.HasField "frame" (RIP.Ptr WlTouchListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"frame")

instance HasCField.HasCField WlTouchListener "cancel" where

  type CFieldType WlTouchListener "cancel" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ()))
         ) => RIP.HasField "cancel" (RIP.Ptr WlTouchListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"cancel")

instance HasCField.HasCField WlTouchListener "shape" where

  type CFieldType WlTouchListener "shape" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "shape" (RIP.Ptr WlTouchListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"shape")

instance HasCField.HasCField WlTouchListener "orientation" where

  type CFieldType WlTouchListener "orientation" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "orientation" (RIP.Ptr WlTouchListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"orientation")

{-| __C declaration:__ @macro WL_TOUCH_RELEASE@

    __defined at:__ @wayland-client-protocol.h 5632:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_RELEASE :: RIP.CInt
wL_TOUCH_RELEASE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_TOUCH_DOWN_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5637:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_DOWN_SINCE_VERSION :: RIP.CInt
wL_TOUCH_DOWN_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_TOUCH_UP_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5641:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_UP_SINCE_VERSION :: RIP.CInt
wL_TOUCH_UP_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_TOUCH_MOTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5645:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_MOTION_SINCE_VERSION :: RIP.CInt
wL_TOUCH_MOTION_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_TOUCH_FRAME_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5649:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_FRAME_SINCE_VERSION :: RIP.CInt
wL_TOUCH_FRAME_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_TOUCH_CANCEL_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5653:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_CANCEL_SINCE_VERSION :: RIP.CInt
wL_TOUCH_CANCEL_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_TOUCH_SHAPE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5657:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_SHAPE_SINCE_VERSION :: RIP.CInt
wL_TOUCH_SHAPE_SINCE_VERSION = (6 :: RIP.CInt)

{-| __C declaration:__ @macro WL_TOUCH_ORIENTATION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5661:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_ORIENTATION_SINCE_VERSION :: RIP.CInt
wL_TOUCH_ORIENTATION_SINCE_VERSION = (6 :: RIP.CInt)

{-| __C declaration:__ @macro WL_TOUCH_RELEASE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 5666:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_TOUCH_RELEASE_SINCE_VERSION :: RIP.CInt
wL_TOUCH_RELEASE_SINCE_VERSION = (3 :: RIP.CInt)

{-| __C declaration:__ @enum wl_output_subpixel@

    __defined at:__ @wayland-client-protocol.h 5714:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlOutputSubpixel = WlOutputSubpixel
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlOutputSubpixel where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlOutputSubpixel where

  readRaw =
    \ptr0 ->
          pure WlOutputSubpixel
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlOutputSubpixel where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlOutputSubpixel unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlOutputSubpixel instance RIP.Storable WlOutputSubpixel

deriving via RIP.CUInt instance RIP.Prim WlOutputSubpixel

instance CEnum.CEnum WlOutputSubpixel where

  type CEnumZ WlOutputSubpixel = RIP.CUInt

  toCEnum = WlOutputSubpixel

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_OUTPUT_SUBPIXEL_UNKNOWN")
                                   , (1, RIP.singleton "WL_OUTPUT_SUBPIXEL_NONE")
                                   , (2, RIP.singleton "WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB")
                                   , (3, RIP.singleton "WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR")
                                   , (4, RIP.singleton "WL_OUTPUT_SUBPIXEL_VERTICAL_RGB")
                                   , (5, RIP.singleton "WL_OUTPUT_SUBPIXEL_VERTICAL_BGR")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlOutputSubpixel"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlOutputSubpixel"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlOutputSubpixel where

  minDeclaredValue = WL_OUTPUT_SUBPIXEL_UNKNOWN

  maxDeclaredValue = WL_OUTPUT_SUBPIXEL_VERTICAL_BGR

instance Show WlOutputSubpixel where

  showsPrec = CEnum.shows

instance Read WlOutputSubpixel where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlOutputSubpixel) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlOutputSubpixel "unwrap" where

  type CFieldType WlOutputSubpixel "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_UNKNOWN@

    __defined at:__ @wayland-client-protocol.h 5718:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_UNKNOWN :: WlOutputSubpixel
pattern WL_OUTPUT_SUBPIXEL_UNKNOWN = WlOutputSubpixel 0

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_NONE@

    __defined at:__ @wayland-client-protocol.h 5722:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_NONE :: WlOutputSubpixel
pattern WL_OUTPUT_SUBPIXEL_NONE = WlOutputSubpixel 1

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB@

    __defined at:__ @wayland-client-protocol.h 5726:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB :: WlOutputSubpixel
pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB = WlOutputSubpixel 2

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR@

    __defined at:__ @wayland-client-protocol.h 5730:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR :: WlOutputSubpixel
pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR = WlOutputSubpixel 3

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_VERTICAL_RGB@

    __defined at:__ @wayland-client-protocol.h 5734:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_VERTICAL_RGB :: WlOutputSubpixel
pattern WL_OUTPUT_SUBPIXEL_VERTICAL_RGB = WlOutputSubpixel 4

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_VERTICAL_BGR@

    __defined at:__ @wayland-client-protocol.h 5738:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_VERTICAL_BGR :: WlOutputSubpixel
pattern WL_OUTPUT_SUBPIXEL_VERTICAL_BGR = WlOutputSubpixel 5

{-| __C declaration:__ @enum wl_output_transform@

    __defined at:__ @wayland-client-protocol.h 5759:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlOutputTransform = WlOutputTransform
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlOutputTransform where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlOutputTransform where

  readRaw =
    \ptr0 ->
          pure WlOutputTransform
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlOutputTransform where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlOutputTransform unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlOutputTransform instance RIP.Storable WlOutputTransform

deriving via RIP.CUInt instance RIP.Prim WlOutputTransform

instance CEnum.CEnum WlOutputTransform where

  type CEnumZ WlOutputTransform = RIP.CUInt

  toCEnum = WlOutputTransform

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_OUTPUT_TRANSFORM_NORMAL")
                                   , (1, RIP.singleton "WL_OUTPUT_TRANSFORM_90")
                                   , (2, RIP.singleton "WL_OUTPUT_TRANSFORM_180")
                                   , (3, RIP.singleton "WL_OUTPUT_TRANSFORM_270")
                                   , (4, RIP.singleton "WL_OUTPUT_TRANSFORM_FLIPPED")
                                   , (5, RIP.singleton "WL_OUTPUT_TRANSFORM_FLIPPED_90")
                                   , (6, RIP.singleton "WL_OUTPUT_TRANSFORM_FLIPPED_180")
                                   , (7, RIP.singleton "WL_OUTPUT_TRANSFORM_FLIPPED_270")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlOutputTransform"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlOutputTransform"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlOutputTransform where

  minDeclaredValue = WL_OUTPUT_TRANSFORM_NORMAL

  maxDeclaredValue = WL_OUTPUT_TRANSFORM_FLIPPED_270

instance Show WlOutputTransform where

  showsPrec = CEnum.shows

instance Read WlOutputTransform where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlOutputTransform) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlOutputTransform "unwrap" where

  type CFieldType WlOutputTransform "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_NORMAL@

    __defined at:__ @wayland-client-protocol.h 5763:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_NORMAL :: WlOutputTransform
pattern WL_OUTPUT_TRANSFORM_NORMAL = WlOutputTransform 0

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_90@

    __defined at:__ @wayland-client-protocol.h 5767:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_90 :: WlOutputTransform
pattern WL_OUTPUT_TRANSFORM_90 = WlOutputTransform 1

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_180@

    __defined at:__ @wayland-client-protocol.h 5771:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_180 :: WlOutputTransform
pattern WL_OUTPUT_TRANSFORM_180 = WlOutputTransform 2

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_270@

    __defined at:__ @wayland-client-protocol.h 5775:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_270 :: WlOutputTransform
pattern WL_OUTPUT_TRANSFORM_270 = WlOutputTransform 3

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_FLIPPED@

    __defined at:__ @wayland-client-protocol.h 5779:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_FLIPPED :: WlOutputTransform
pattern WL_OUTPUT_TRANSFORM_FLIPPED = WlOutputTransform 4

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_FLIPPED_90@

    __defined at:__ @wayland-client-protocol.h 5783:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_FLIPPED_90 :: WlOutputTransform
pattern WL_OUTPUT_TRANSFORM_FLIPPED_90 = WlOutputTransform 5

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_FLIPPED_180@

    __defined at:__ @wayland-client-protocol.h 5787:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_FLIPPED_180 :: WlOutputTransform
pattern WL_OUTPUT_TRANSFORM_FLIPPED_180 = WlOutputTransform 6

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_FLIPPED_270@

    __defined at:__ @wayland-client-protocol.h 5791:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_FLIPPED_270 :: WlOutputTransform
pattern WL_OUTPUT_TRANSFORM_FLIPPED_270 = WlOutputTransform 7

{-| __C declaration:__ @enum wl_output_mode@

    __defined at:__ @wayland-client-protocol.h 5804:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlOutputMode = WlOutputMode
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlOutputMode where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlOutputMode where

  readRaw =
    \ptr0 ->
          pure WlOutputMode
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlOutputMode where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlOutputMode unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlOutputMode instance RIP.Storable WlOutputMode

deriving via RIP.CUInt instance RIP.Prim WlOutputMode

instance CEnum.CEnum WlOutputMode where

  type CEnumZ WlOutputMode = RIP.CUInt

  toCEnum = WlOutputMode

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "WL_OUTPUT_MODE_CURRENT")
                                   , (2, RIP.singleton "WL_OUTPUT_MODE_PREFERRED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlOutputMode"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlOutputMode"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlOutputMode where

  minDeclaredValue = WL_OUTPUT_MODE_CURRENT

  maxDeclaredValue = WL_OUTPUT_MODE_PREFERRED

instance Show WlOutputMode where

  showsPrec = CEnum.shows

instance Read WlOutputMode where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlOutputMode) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlOutputMode "unwrap" where

  type CFieldType WlOutputMode "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_OUTPUT_MODE_CURRENT@

    __defined at:__ @wayland-client-protocol.h 5808:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_MODE_CURRENT :: WlOutputMode
pattern WL_OUTPUT_MODE_CURRENT = WlOutputMode 1

{-| __C declaration:__ @WL_OUTPUT_MODE_PREFERRED@

    __defined at:__ @wayland-client-protocol.h 5812:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_MODE_PREFERRED :: WlOutputMode
pattern WL_OUTPUT_MODE_PREFERRED = WlOutputMode 2

{-| __C declaration:__ @struct wl_output_listener@

    __defined at:__ @wayland-client-protocol.h 5820:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data WlOutputListener = WlOutputListener
  { geometry :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @geometry@

         __defined at:__ @wayland-client-protocol.h 5854:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , mode :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @mode@

         __defined at:__ @wayland-client-protocol.h 5905:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ())
    {- ^ __C declaration:__ @done@

         __defined at:__ @wayland-client-protocol.h 5921:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , scale :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @scale@

         __defined at:__ @wayland-client-protocol.h 5946:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , name :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-client-protocol.h 5986:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , description :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @description@

         __defined at:__ @wayland-client-protocol.h 6009:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize WlOutputListener where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw WlOutputListener where

  readRaw =
    \ptr0 ->
          pure WlOutputListener
      <*> HasCField.readRaw (RIP.Proxy @"geometry") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"mode") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"done") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scale") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"description") ptr0

instance Marshal.WriteRaw WlOutputListener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlOutputListener geometry2 mode3 done4 scale5 name6 description7 ->
               HasCField.writeRaw (RIP.Proxy @"geometry") ptr0 geometry2
            >> HasCField.writeRaw (RIP.Proxy @"mode") ptr0 mode3
            >> HasCField.writeRaw (RIP.Proxy @"done") ptr0 done4
            >> HasCField.writeRaw (RIP.Proxy @"scale") ptr0 scale5
            >> HasCField.writeRaw (RIP.Proxy @"name") ptr0 name6
            >> HasCField.writeRaw (RIP.Proxy @"description") ptr0 description7

deriving via Marshal.EquivStorable WlOutputListener instance RIP.Storable WlOutputListener

instance HasCField.HasCField WlOutputListener "geometry" where

  type CFieldType WlOutputListener "geometry" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "geometry" (RIP.Ptr WlOutputListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"geometry")

instance HasCField.HasCField WlOutputListener "mode" where

  type CFieldType WlOutputListener "mode" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "mode" (RIP.Ptr WlOutputListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"mode")

instance HasCField.HasCField WlOutputListener "done" where

  type CFieldType WlOutputListener "done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ()))
         ) => RIP.HasField "done" (RIP.Ptr WlOutputListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"done")

instance HasCField.HasCField WlOutputListener "scale" where

  type CFieldType WlOutputListener "scale" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "scale" (RIP.Ptr WlOutputListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"scale")

instance HasCField.HasCField WlOutputListener "name" where

  type CFieldType WlOutputListener "name" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "name" (RIP.Ptr WlOutputListener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField WlOutputListener "description" where

  type CFieldType WlOutputListener "description" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "description" (RIP.Ptr WlOutputListener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"description")

{-| __C declaration:__ @macro WL_OUTPUT_RELEASE@

    __defined at:__ @wayland-client-protocol.h 6025:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_OUTPUT_RELEASE :: RIP.CInt
wL_OUTPUT_RELEASE = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_OUTPUT_GEOMETRY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6030:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_OUTPUT_GEOMETRY_SINCE_VERSION :: RIP.CInt
wL_OUTPUT_GEOMETRY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_OUTPUT_MODE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6034:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_OUTPUT_MODE_SINCE_VERSION :: RIP.CInt
wL_OUTPUT_MODE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_OUTPUT_DONE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6038:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_OUTPUT_DONE_SINCE_VERSION :: RIP.CInt
wL_OUTPUT_DONE_SINCE_VERSION = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_OUTPUT_SCALE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6042:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_OUTPUT_SCALE_SINCE_VERSION :: RIP.CInt
wL_OUTPUT_SCALE_SINCE_VERSION = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_OUTPUT_NAME_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6046:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_OUTPUT_NAME_SINCE_VERSION :: RIP.CInt
wL_OUTPUT_NAME_SINCE_VERSION = (4 :: RIP.CInt)

{-| __C declaration:__ @macro WL_OUTPUT_DESCRIPTION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6050:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_OUTPUT_DESCRIPTION_SINCE_VERSION :: RIP.CInt
wL_OUTPUT_DESCRIPTION_SINCE_VERSION = (4 :: RIP.CInt)

{-| __C declaration:__ @macro WL_OUTPUT_RELEASE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6055:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_OUTPUT_RELEASE_SINCE_VERSION :: RIP.CInt
wL_OUTPUT_RELEASE_SINCE_VERSION = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGION_DESTROY@

    __defined at:__ @wayland-client-protocol.h 6097:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGION_DESTROY :: RIP.CInt
wL_REGION_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGION_ADD@

    __defined at:__ @wayland-client-protocol.h 6098:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGION_ADD :: RIP.CInt
wL_REGION_ADD = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGION_SUBTRACT@

    __defined at:__ @wayland-client-protocol.h 6099:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGION_SUBTRACT :: RIP.CInt
wL_REGION_SUBTRACT = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGION_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6105:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGION_DESTROY_SINCE_VERSION :: RIP.CInt
wL_REGION_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGION_ADD_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6109:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGION_ADD_SINCE_VERSION :: RIP.CInt
wL_REGION_ADD_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_REGION_SUBTRACT_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6113:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_REGION_SUBTRACT_SINCE_VERSION :: RIP.CInt
wL_REGION_SUBTRACT_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @enum wl_subcompositor_error@

    __defined at:__ @wayland-client-protocol.h 6173:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlSubcompositorError = WlSubcompositorError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlSubcompositorError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlSubcompositorError where

  readRaw =
    \ptr0 ->
          pure WlSubcompositorError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlSubcompositorError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlSubcompositorError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlSubcompositorError instance RIP.Storable WlSubcompositorError

deriving via RIP.CUInt instance RIP.Prim WlSubcompositorError

instance CEnum.CEnum WlSubcompositorError where

  type CEnumZ WlSubcompositorError = RIP.CUInt

  toCEnum = WlSubcompositorError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE")
                                   , (1, RIP.singleton "WL_SUBCOMPOSITOR_ERROR_BAD_PARENT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlSubcompositorError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlSubcompositorError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlSubcompositorError where

  minDeclaredValue = WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE

  maxDeclaredValue = WL_SUBCOMPOSITOR_ERROR_BAD_PARENT

instance Show WlSubcompositorError where

  showsPrec = CEnum.shows

instance Read WlSubcompositorError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlSubcompositorError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlSubcompositorError "unwrap" where

  type CFieldType WlSubcompositorError "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE@

    __defined at:__ @wayland-client-protocol.h 6177:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE :: WlSubcompositorError
pattern WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE = WlSubcompositorError 0

{-| __C declaration:__ @WL_SUBCOMPOSITOR_ERROR_BAD_PARENT@

    __defined at:__ @wayland-client-protocol.h 6181:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SUBCOMPOSITOR_ERROR_BAD_PARENT :: WlSubcompositorError
pattern WL_SUBCOMPOSITOR_ERROR_BAD_PARENT = WlSubcompositorError 1

{-| __C declaration:__ @macro WL_SUBCOMPOSITOR_DESTROY@

    __defined at:__ @wayland-client-protocol.h 6185:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBCOMPOSITOR_DESTROY :: RIP.CInt
wL_SUBCOMPOSITOR_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBCOMPOSITOR_GET_SUBSURFACE@

    __defined at:__ @wayland-client-protocol.h 6186:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBCOMPOSITOR_GET_SUBSURFACE :: RIP.CInt
wL_SUBCOMPOSITOR_GET_SUBSURFACE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBCOMPOSITOR_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6192:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBCOMPOSITOR_DESTROY_SINCE_VERSION :: RIP.CInt
wL_SUBCOMPOSITOR_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBCOMPOSITOR_GET_SUBSURFACE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6196:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBCOMPOSITOR_GET_SUBSURFACE_SINCE_VERSION :: RIP.CInt
wL_SUBCOMPOSITOR_GET_SUBSURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum wl_subsurface_error@

    __defined at:__ @wayland-client-protocol.h 6268:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype WlSubsurfaceError = WlSubsurfaceError
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize WlSubsurfaceError where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw WlSubsurfaceError where

  readRaw =
    \ptr0 ->
          pure WlSubsurfaceError
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw WlSubsurfaceError where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          WlSubsurfaceError unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable WlSubsurfaceError instance RIP.Storable WlSubsurfaceError

deriving via RIP.CUInt instance RIP.Prim WlSubsurfaceError

instance CEnum.CEnum WlSubsurfaceError where

  type CEnumZ WlSubsurfaceError = RIP.CUInt

  toCEnum = WlSubsurfaceError

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WL_SUBSURFACE_ERROR_BAD_SURFACE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "WlSubsurfaceError"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "WlSubsurfaceError"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum WlSubsurfaceError where

  minDeclaredValue = WL_SUBSURFACE_ERROR_BAD_SURFACE

  maxDeclaredValue = WL_SUBSURFACE_ERROR_BAD_SURFACE

instance Show WlSubsurfaceError where

  showsPrec = CEnum.shows

instance Read WlSubsurfaceError where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr WlSubsurfaceError) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField WlSubsurfaceError "unwrap" where

  type CFieldType WlSubsurfaceError "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SUBSURFACE_ERROR_BAD_SURFACE@

    __defined at:__ @wayland-client-protocol.h 6272:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SUBSURFACE_ERROR_BAD_SURFACE :: WlSubsurfaceError
pattern WL_SUBSURFACE_ERROR_BAD_SURFACE = WlSubsurfaceError 0

{-| __C declaration:__ @macro WL_SUBSURFACE_DESTROY@

    __defined at:__ @wayland-client-protocol.h 6276:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_DESTROY :: RIP.CInt
wL_SUBSURFACE_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_SET_POSITION@

    __defined at:__ @wayland-client-protocol.h 6277:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_SET_POSITION :: RIP.CInt
wL_SUBSURFACE_SET_POSITION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_PLACE_ABOVE@

    __defined at:__ @wayland-client-protocol.h 6278:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_PLACE_ABOVE :: RIP.CInt
wL_SUBSURFACE_PLACE_ABOVE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_PLACE_BELOW@

    __defined at:__ @wayland-client-protocol.h 6279:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_PLACE_BELOW :: RIP.CInt
wL_SUBSURFACE_PLACE_BELOW = (3 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_SET_SYNC@

    __defined at:__ @wayland-client-protocol.h 6280:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_SET_SYNC :: RIP.CInt
wL_SUBSURFACE_SET_SYNC = (4 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_SET_DESYNC@

    __defined at:__ @wayland-client-protocol.h 6281:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_SET_DESYNC :: RIP.CInt
wL_SUBSURFACE_SET_DESYNC = (5 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6287:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_DESTROY_SINCE_VERSION :: RIP.CInt
wL_SUBSURFACE_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_SET_POSITION_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6291:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_SET_POSITION_SINCE_VERSION :: RIP.CInt
wL_SUBSURFACE_SET_POSITION_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_PLACE_ABOVE_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6295:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_PLACE_ABOVE_SINCE_VERSION :: RIP.CInt
wL_SUBSURFACE_PLACE_ABOVE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_PLACE_BELOW_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6299:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_PLACE_BELOW_SINCE_VERSION :: RIP.CInt
wL_SUBSURFACE_PLACE_BELOW_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_SET_SYNC_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6303:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_SET_SYNC_SINCE_VERSION :: RIP.CInt
wL_SUBSURFACE_SET_SYNC_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_SUBSURFACE_SET_DESYNC_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6307:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_SUBSURFACE_SET_DESYNC_SINCE_VERSION :: RIP.CInt
wL_SUBSURFACE_SET_DESYNC_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_FIXES_DESTROY@

    __defined at:__ @wayland-client-protocol.h 6460:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_FIXES_DESTROY :: RIP.CInt
wL_FIXES_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro WL_FIXES_DESTROY_REGISTRY@

    __defined at:__ @wayland-client-protocol.h 6461:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_FIXES_DESTROY_REGISTRY :: RIP.CInt
wL_FIXES_DESTROY_REGISTRY = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_FIXES_DESTROY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6467:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_FIXES_DESTROY_SINCE_VERSION :: RIP.CInt
wL_FIXES_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro WL_FIXES_DESTROY_REGISTRY_SINCE_VERSION@

    __defined at:__ @wayland-client-protocol.h 6471:9@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
wL_FIXES_DESTROY_REGISTRY_SINCE_VERSION :: RIP.CInt
wL_FIXES_DESTROY_REGISTRY_SINCE_VERSION =
  (1 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_fd4f9b2c25c45fff_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ())@
hs_bindgen_fd4f9b2c25c45fff ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ()))
hs_bindgen_fd4f9b2c25c45fff =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_fd4f9b2c25c45fff_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_1a2860f5bb3e09bf_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ())@
hs_bindgen_1a2860f5bb3e09bf ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ()
hs_bindgen_1a2860f5bb3e09bf =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_1a2860f5bb3e09bf_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ()) where

  toFunPtr = hs_bindgen_fd4f9b2c25c45fff

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlBuffer) -> IO ()) where

  fromFunPtr = hs_bindgen_1a2860f5bb3e09bf

foreign import ccall safe "wrapper" hs_bindgen_ca7c531dd18274e6_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_ca7c531dd18274e6 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_ca7c531dd18274e6 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ca7c531dd18274e6_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_6c4cd4ccfe1300bf_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_6c4cd4ccfe1300bf ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_6c4cd4ccfe1300bf =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_6c4cd4ccfe1300bf_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_ca7c531dd18274e6

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlCallback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_6c4cd4ccfe1300bf

foreign import ccall safe "wrapper" hs_bindgen_27eaa0be5c782366_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ())@
hs_bindgen_27eaa0be5c782366 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ()))
hs_bindgen_27eaa0be5c782366 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_27eaa0be5c782366_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_40e49827c7b27ba9_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ())@
hs_bindgen_40e49827c7b27ba9 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ()
hs_bindgen_40e49827c7b27ba9 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_40e49827c7b27ba9_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ()) where

  toFunPtr = hs_bindgen_27eaa0be5c782366

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> IO ()) where

  fromFunPtr = hs_bindgen_40e49827c7b27ba9

foreign import ccall safe "wrapper" hs_bindgen_7e085f96858bc2a9_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ())@
hs_bindgen_7e085f96858bc2a9 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ()))
hs_bindgen_7e085f96858bc2a9 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_7e085f96858bc2a9_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_f78c4f8dde82dc77_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ())@
hs_bindgen_f78c4f8dde82dc77 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ()
hs_bindgen_f78c4f8dde82dc77 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_f78c4f8dde82dc77_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ()) where

  toFunPtr = hs_bindgen_7e085f96858bc2a9

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> (RIP.Ptr WlDataOffer) -> IO ()) where

  fromFunPtr = hs_bindgen_f78c4f8dde82dc77

foreign import ccall safe "wrapper" hs_bindgen_d17586cb2c0d03cf_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ())@
hs_bindgen_d17586cb2c0d03cf ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ()))
hs_bindgen_d17586cb2c0d03cf =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d17586cb2c0d03cf_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3b621b9a9948e8a0_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ())@
hs_bindgen_3b621b9a9948e8a0 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ()
hs_bindgen_3b621b9a9948e8a0 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3b621b9a9948e8a0_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ()) where

  toFunPtr = hs_bindgen_d17586cb2c0d03cf

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> (RIP.Ptr WlDataOffer) -> IO ()) where

  fromFunPtr = hs_bindgen_3b621b9a9948e8a0

foreign import ccall safe "wrapper" hs_bindgen_498bf54cfe5fbcc1_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_498bf54cfe5fbcc1 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_498bf54cfe5fbcc1 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_498bf54cfe5fbcc1_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_36deaa2842974bfa_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_36deaa2842974bfa ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()
hs_bindgen_36deaa2842974bfa =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_36deaa2842974bfa_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_498bf54cfe5fbcc1

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataDevice) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_36deaa2842974bfa

foreign import ccall safe "wrapper" hs_bindgen_fe7e1b5132c6293d_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_fe7e1b5132c6293d ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_fe7e1b5132c6293d =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_fe7e1b5132c6293d_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_955cf43647826d07_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_955cf43647826d07 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_955cf43647826d07 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_955cf43647826d07_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_fe7e1b5132c6293d

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_955cf43647826d07

foreign import ccall safe "wrapper" hs_bindgen_38b6de851e2fc2e9_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_38b6de851e2fc2e9 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_38b6de851e2fc2e9 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_38b6de851e2fc2e9_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e787a2efec186a1e_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_e787a2efec186a1e ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_e787a2efec186a1e =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e787a2efec186a1e_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_38b6de851e2fc2e9

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataOffer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_e787a2efec186a1e

foreign import ccall safe "wrapper" hs_bindgen_6a8a11276a1d0d31_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())@
hs_bindgen_6a8a11276a1d0d31 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ()))
hs_bindgen_6a8a11276a1d0d31 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_6a8a11276a1d0d31_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_d699ecb18528a632_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())@
hs_bindgen_d699ecb18528a632 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ()
hs_bindgen_d699ecb18528a632 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_d699ecb18528a632_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ()) where

  toFunPtr = hs_bindgen_6a8a11276a1d0d31

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> IO ()) where

  fromFunPtr = hs_bindgen_d699ecb18528a632

foreign import ccall safe "wrapper" hs_bindgen_14999734930c9332_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_14999734930c9332 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_14999734930c9332 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_14999734930c9332_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_acc767bf3965b40e_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_acc767bf3965b40e ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_acc767bf3965b40e =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_acc767bf3965b40e_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_14999734930c9332

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_acc767bf3965b40e

foreign import ccall safe "wrapper" hs_bindgen_03ef29d481d655c9_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_03ef29d481d655c9 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_03ef29d481d655c9 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_03ef29d481d655c9_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_7b07a64016c7cdb7_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_7b07a64016c7cdb7 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_7b07a64016c7cdb7 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_7b07a64016c7cdb7_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_03ef29d481d655c9

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_7b07a64016c7cdb7

foreign import ccall safe "wrapper" hs_bindgen_91a4238f14a26924_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_91a4238f14a26924 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_91a4238f14a26924 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_91a4238f14a26924_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3e73441e9fbe9886_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_3e73441e9fbe9886 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_3e73441e9fbe9886 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3e73441e9fbe9886_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_91a4238f14a26924

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDataSource) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_3e73441e9fbe9886

foreign import ccall safe "wrapper" hs_bindgen_cfbb3a613b016aca_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_cfbb3a613b016aca ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_cfbb3a613b016aca =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_cfbb3a613b016aca_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_c172918188eabbff_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_c172918188eabbff ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_c172918188eabbff =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_c172918188eabbff_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_cfbb3a613b016aca

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_c172918188eabbff

foreign import ccall safe "wrapper" hs_bindgen_23f71da037291888_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_23f71da037291888 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_23f71da037291888 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_23f71da037291888_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_9eaa128d8f833e4f_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_9eaa128d8f833e4f ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_9eaa128d8f833e4f =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_9eaa128d8f833e4f_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_23f71da037291888

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlDisplay) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_9eaa128d8f833e4f

foreign import ccall safe "wrapper" hs_bindgen_9306d9692a283a51_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_9306d9692a283a51 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_9306d9692a283a51 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_9306d9692a283a51_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_b5b2dbf2efc8f9e8_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_b5b2dbf2efc8f9e8 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_b5b2dbf2efc8f9e8 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_b5b2dbf2efc8f9e8_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_9306d9692a283a51

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_b5b2dbf2efc8f9e8

foreign import ccall safe "wrapper" hs_bindgen_d6c700e4046fdac3_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())@
hs_bindgen_d6c700e4046fdac3 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()))
hs_bindgen_d6c700e4046fdac3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d6c700e4046fdac3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_bd83b16f9f3a9606_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())@
hs_bindgen_bd83b16f9f3a9606 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()
hs_bindgen_bd83b16f9f3a9606 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_bd83b16f9f3a9606_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()) where

  toFunPtr = hs_bindgen_d6c700e4046fdac3

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()) where

  fromFunPtr = hs_bindgen_bd83b16f9f3a9606

foreign import ccall safe "wrapper" hs_bindgen_97db390415bb37b3_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ())@
hs_bindgen_97db390415bb37b3 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ()))
hs_bindgen_97db390415bb37b3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_97db390415bb37b3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_2973e240d6891843_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ())@
hs_bindgen_2973e240d6891843 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ()
hs_bindgen_2973e240d6891843 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_2973e240d6891843_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ()) where

  toFunPtr = hs_bindgen_97db390415bb37b3

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> (RIP.Ptr Generated.Wayland.Util.Wl_array) -> IO ()) where

  fromFunPtr = hs_bindgen_2973e240d6891843

foreign import ccall safe "wrapper" hs_bindgen_fee211a57b70e03c_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_fee211a57b70e03c ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_fee211a57b70e03c =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_fee211a57b70e03c_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_eb7a48cda91d9a93_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_eb7a48cda91d9a93 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_eb7a48cda91d9a93 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_eb7a48cda91d9a93_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_fee211a57b70e03c

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_eb7a48cda91d9a93

foreign import ccall safe "wrapper" hs_bindgen_6c582537fd2482b5_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_6c582537fd2482b5 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_6c582537fd2482b5 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_6c582537fd2482b5_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_cb859bc68b5942d2_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_cb859bc68b5942d2 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_cb859bc68b5942d2 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_cb859bc68b5942d2_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_6c582537fd2482b5

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_cb859bc68b5942d2

foreign import ccall safe "wrapper" hs_bindgen_53c7bc1f0aa64f2f_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_53c7bc1f0aa64f2f ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_53c7bc1f0aa64f2f =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_53c7bc1f0aa64f2f_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_4a521a7b40d40c18_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_4a521a7b40d40c18 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_4a521a7b40d40c18 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_4a521a7b40d40c18_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_53c7bc1f0aa64f2f

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlKeyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_4a521a7b40d40c18

foreign import ccall safe "wrapper" hs_bindgen_93f05ce75daf80b5_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ())@
hs_bindgen_93f05ce75daf80b5 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ()))
hs_bindgen_93f05ce75daf80b5 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_93f05ce75daf80b5_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5b7aacdbcef2365b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ())@
hs_bindgen_5b7aacdbcef2365b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ()
hs_bindgen_5b7aacdbcef2365b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5b7aacdbcef2365b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ()) where

  toFunPtr = hs_bindgen_93f05ce75daf80b5

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> IO ()) where

  fromFunPtr = hs_bindgen_5b7aacdbcef2365b

foreign import ccall safe "wrapper" hs_bindgen_831387ce858df594_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_831387ce858df594 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_831387ce858df594 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_831387ce858df594_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_920da43b353750e1_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_920da43b353750e1 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_920da43b353750e1 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_920da43b353750e1_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_831387ce858df594

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_920da43b353750e1

foreign import ccall safe "wrapper" hs_bindgen_f474f76351f8b793_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_f474f76351f8b793 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_f474f76351f8b793 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f474f76351f8b793_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_73ecfe785297afdc_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_73ecfe785297afdc ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_73ecfe785297afdc =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_73ecfe785297afdc_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_f474f76351f8b793

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_73ecfe785297afdc

foreign import ccall safe "wrapper" hs_bindgen_0c458a3a15058bf2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_0c458a3a15058bf2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_0c458a3a15058bf2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0c458a3a15058bf2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5d6a22d6cb8af5a9_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_5d6a22d6cb8af5a9 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_5d6a22d6cb8af5a9 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5d6a22d6cb8af5a9_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_0c458a3a15058bf2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_5d6a22d6cb8af5a9

foreign import ccall safe "wrapper" hs_bindgen_00b0d5e25b922e43_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_00b0d5e25b922e43 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_00b0d5e25b922e43 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_00b0d5e25b922e43_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_371b99c4c3a5d9c7_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_371b99c4c3a5d9c7 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_371b99c4c3a5d9c7 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_371b99c4c3a5d9c7_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_00b0d5e25b922e43

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlOutput) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_371b99c4c3a5d9c7

foreign import ccall safe "wrapper" hs_bindgen_a03ea38f0ba0a66f_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ())@
hs_bindgen_a03ea38f0ba0a66f ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ()))
hs_bindgen_a03ea38f0ba0a66f =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_a03ea38f0ba0a66f_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_281d50e0df8f5df3_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ())@
hs_bindgen_281d50e0df8f5df3 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ()
hs_bindgen_281d50e0df8f5df3 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_281d50e0df8f5df3_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ()) where

  toFunPtr = hs_bindgen_a03ea38f0ba0a66f

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> IO ()) where

  fromFunPtr = hs_bindgen_281d50e0df8f5df3

foreign import ccall safe "wrapper" hs_bindgen_efee672f2c906b1d_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_efee672f2c906b1d ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_efee672f2c906b1d =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_efee672f2c906b1d_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_1d52e277b8745126_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_1d52e277b8745126 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_1d52e277b8745126 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_1d52e277b8745126_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_efee672f2c906b1d

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_1d52e277b8745126

foreign import ccall safe "wrapper" hs_bindgen_a56b66a11ff976f8_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())@
hs_bindgen_a56b66a11ff976f8 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()))
hs_bindgen_a56b66a11ff976f8 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_a56b66a11ff976f8_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_53c6836eab0bc45e_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())@
hs_bindgen_53c6836eab0bc45e ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()
hs_bindgen_53c6836eab0bc45e =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_53c6836eab0bc45e_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()) where

  toFunPtr = hs_bindgen_a56b66a11ff976f8

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> IO ()) where

  fromFunPtr = hs_bindgen_53c6836eab0bc45e

foreign import ccall safe "wrapper" hs_bindgen_f1612d776df157ff_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_f1612d776df157ff ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_f1612d776df157ff =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f1612d776df157ff_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_20b041e6e773e4eb_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_20b041e6e773e4eb ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()
hs_bindgen_20b041e6e773e4eb =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_20b041e6e773e4eb_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_f1612d776df157ff

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_20b041e6e773e4eb

foreign import ccall safe "wrapper" hs_bindgen_4e1d574d965f3a89_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_4e1d574d965f3a89 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_4e1d574d965f3a89 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_4e1d574d965f3a89_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_1fff8761282ae1c5_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_1fff8761282ae1c5 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_1fff8761282ae1c5 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_1fff8761282ae1c5_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_4e1d574d965f3a89

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_1fff8761282ae1c5

foreign import ccall safe "wrapper" hs_bindgen_32af10156c104806_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_32af10156c104806 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_32af10156c104806 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_32af10156c104806_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_09e8dd9321984438_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_09e8dd9321984438 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_09e8dd9321984438 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_09e8dd9321984438_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_32af10156c104806

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_09e8dd9321984438

foreign import ccall safe "wrapper" hs_bindgen_ea371abd58e25d61_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_ea371abd58e25d61 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_ea371abd58e25d61 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_ea371abd58e25d61_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_f1f5987e081ceaa4_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_f1f5987e081ceaa4 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_f1f5987e081ceaa4 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_f1f5987e081ceaa4_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_ea371abd58e25d61

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_f1f5987e081ceaa4

foreign import ccall safe "wrapper" hs_bindgen_d84a742f4ad80bd9_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_d84a742f4ad80bd9 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_d84a742f4ad80bd9 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d84a742f4ad80bd9_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_b3beda1586e9ac4a_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_b3beda1586e9ac4a ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()
hs_bindgen_b3beda1586e9ac4a =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_b3beda1586e9ac4a_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_d84a742f4ad80bd9

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_b3beda1586e9ac4a

foreign import ccall safe "wrapper" hs_bindgen_916dda34c0dd0126_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_916dda34c0dd0126 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_916dda34c0dd0126 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_916dda34c0dd0126_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_1b972382c3d47674_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_1b972382c3d47674 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()
hs_bindgen_1b972382c3d47674 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_1b972382c3d47674_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_916dda34c0dd0126

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlPointer) -> HsBindgen.Runtime.LibC.Word32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_1b972382c3d47674

foreign import ccall safe "wrapper" hs_bindgen_36c68109ef3a70fe_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_36c68109ef3a70fe ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_36c68109ef3a70fe =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_36c68109ef3a70fe_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_93708164a95f3f84_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_93708164a95f3f84 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_93708164a95f3f84 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_93708164a95f3f84_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_36c68109ef3a70fe

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_93708164a95f3f84

foreign import ccall safe "wrapper" hs_bindgen_70c22fae024dc57b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_70c22fae024dc57b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_70c22fae024dc57b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_70c22fae024dc57b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_8307fd3cc110a0f7_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_8307fd3cc110a0f7 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_8307fd3cc110a0f7 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_8307fd3cc110a0f7_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_70c22fae024dc57b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlRegistry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_8307fd3cc110a0f7

foreign import ccall safe "wrapper" hs_bindgen_d21a2c3586551ed3_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_d21a2c3586551ed3 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_d21a2c3586551ed3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d21a2c3586551ed3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_07f788b9608410cd_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_07f788b9608410cd ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_07f788b9608410cd =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_07f788b9608410cd_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_d21a2c3586551ed3

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_07f788b9608410cd

foreign import ccall safe "wrapper" hs_bindgen_21c6b349362eae72_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_21c6b349362eae72 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_21c6b349362eae72 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_21c6b349362eae72_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_9a03f5f9f9632558_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_9a03f5f9f9632558 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_9a03f5f9f9632558 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_9a03f5f9f9632558_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_21c6b349362eae72

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSeat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_9a03f5f9f9632558

foreign import ccall safe "wrapper" hs_bindgen_72aed376029d6e4c_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ())@
hs_bindgen_72aed376029d6e4c ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ()))
hs_bindgen_72aed376029d6e4c =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_72aed376029d6e4c_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_f1b63c3f9f0a88a5_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ())@
hs_bindgen_f1b63c3f9f0a88a5 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ()
hs_bindgen_f1b63c3f9f0a88a5 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_f1b63c3f9f0a88a5_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ()) where

  toFunPtr = hs_bindgen_72aed376029d6e4c

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> IO ()) where

  fromFunPtr = hs_bindgen_f1b63c3f9f0a88a5

foreign import ccall safe "wrapper" hs_bindgen_651af53b2579c2fe_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_651af53b2579c2fe ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_651af53b2579c2fe =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_651af53b2579c2fe_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_39fa58ff1492dd70_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_39fa58ff1492dd70 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_39fa58ff1492dd70 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_39fa58ff1492dd70_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_651af53b2579c2fe

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_39fa58ff1492dd70

foreign import ccall safe "wrapper" hs_bindgen_96fddae07f52eb6a_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_96fddae07f52eb6a ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_96fddae07f52eb6a =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_96fddae07f52eb6a_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_b197a0a784e23f8c_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_b197a0a784e23f8c ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_b197a0a784e23f8c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_b197a0a784e23f8c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_96fddae07f52eb6a

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShellSurface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_b197a0a784e23f8c

foreign import ccall safe "wrapper" hs_bindgen_7fe75586312780f2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_7fe75586312780f2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_7fe75586312780f2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_7fe75586312780f2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_40c4653a9c30d84b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_40c4653a9c30d84b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_40c4653a9c30d84b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_40c4653a9c30d84b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_7fe75586312780f2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlShm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_40c4653a9c30d84b

foreign import ccall safe "wrapper" hs_bindgen_f73d5d61704a8a68_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ())@
hs_bindgen_f73d5d61704a8a68 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ()))
hs_bindgen_f73d5d61704a8a68 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f73d5d61704a8a68_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ab714becdd726938_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ())@
hs_bindgen_ab714becdd726938 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ()
hs_bindgen_ab714becdd726938 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ab714becdd726938_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ()) where

  toFunPtr = hs_bindgen_f73d5d61704a8a68

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> (RIP.Ptr WlOutput) -> IO ()) where

  fromFunPtr = hs_bindgen_ab714becdd726938

foreign import ccall safe "wrapper" hs_bindgen_a6229da380db6912_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_a6229da380db6912 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_a6229da380db6912 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_a6229da380db6912_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_45124a34d399e440_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_45124a34d399e440 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_45124a34d399e440 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_45124a34d399e440_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_a6229da380db6912

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_45124a34d399e440

foreign import ccall safe "wrapper" hs_bindgen_1eb16e3862887fb0_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_1eb16e3862887fb0 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_1eb16e3862887fb0 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_1eb16e3862887fb0_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_70b3707ee1961104_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_70b3707ee1961104 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_70b3707ee1961104 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_70b3707ee1961104_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_1eb16e3862887fb0

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_70b3707ee1961104

foreign import ccall safe "wrapper" hs_bindgen_aa17fb262d5beddf_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ())@
hs_bindgen_aa17fb262d5beddf ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ()))
hs_bindgen_aa17fb262d5beddf =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_aa17fb262d5beddf_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3d4a4e8a60149a23_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ())@
hs_bindgen_3d4a4e8a60149a23 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ()
hs_bindgen_3d4a4e8a60149a23 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3d4a4e8a60149a23_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ()) where

  toFunPtr = hs_bindgen_aa17fb262d5beddf

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> IO ()) where

  fromFunPtr = hs_bindgen_3d4a4e8a60149a23

foreign import ccall safe "wrapper" hs_bindgen_fe36132af109bd41_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_fe36132af109bd41 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_fe36132af109bd41 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_fe36132af109bd41_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5f7dc5d159c845a3_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_5f7dc5d159c845a3 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()
hs_bindgen_5f7dc5d159c845a3 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5f7dc5d159c845a3_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_fe36132af109bd41

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_5f7dc5d159c845a3

foreign import ccall safe "wrapper" hs_bindgen_6b21144334ab6c1b_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_6b21144334ab6c1b ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_6b21144334ab6c1b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_6b21144334ab6c1b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_0e957b32f55a4709_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_0e957b32f55a4709 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()
hs_bindgen_0e957b32f55a4709 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_0e957b32f55a4709_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_6b21144334ab6c1b

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_0e957b32f55a4709

foreign import ccall safe "wrapper" hs_bindgen_8f2f1c66503dc49d_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_8f2f1c66503dc49d ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_8f2f1c66503dc49d =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_8f2f1c66503dc49d_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_04c835693b240ca6_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_04c835693b240ca6 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()
hs_bindgen_04c835693b240ca6 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_04c835693b240ca6_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_8f2f1c66503dc49d

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_04c835693b240ca6

foreign import ccall safe "wrapper" hs_bindgen_e4da9ec8a8de5204_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_e4da9ec8a8de5204 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()))
hs_bindgen_e4da9ec8a8de5204 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_e4da9ec8a8de5204_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_78af8501c47fb90a_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())@
hs_bindgen_78af8501c47fb90a ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()
hs_bindgen_78af8501c47fb90a =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_78af8501c47fb90a_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_e4da9ec8a8de5204

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr WlSurface) -> HsBindgen.Runtime.LibC.Int32 -> Generated.Wayland.Util.Wl_fixed_t -> Generated.Wayland.Util.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_78af8501c47fb90a

foreign import ccall safe "wrapper" hs_bindgen_0af19484ff54bb70_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_0af19484ff54bb70 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_0af19484ff54bb70 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_0af19484ff54bb70_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_dc610487f74abc47_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_dc610487f74abc47 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_dc610487f74abc47 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_dc610487f74abc47_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_0af19484ff54bb70

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr WlTouch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_dc610487f74abc47

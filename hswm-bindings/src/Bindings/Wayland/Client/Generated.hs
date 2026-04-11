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

module Bindings.Wayland.Client.Generated
    ( Bindings.Wayland.Client.Generated.Timespec
    , Bindings.Wayland.Client.Generated.Wl_proxy
    , Bindings.Wayland.Client.Generated.Wl_display
    , Bindings.Wayland.Client.Generated.Wl_event_queue
    , Bindings.Wayland.Client.Generated.wL_MARSHAL_FLAG_DESTROY
    , Bindings.Wayland.Client.Generated.Wl_buffer
    , Bindings.Wayland.Client.Generated.Wl_callback
    , Bindings.Wayland.Client.Generated.Wl_compositor
    , Bindings.Wayland.Client.Generated.Wl_data_device
    , Bindings.Wayland.Client.Generated.Wl_data_device_manager
    , Bindings.Wayland.Client.Generated.Wl_data_offer
    , Bindings.Wayland.Client.Generated.Wl_data_source
    , Bindings.Wayland.Client.Generated.Wl_fixes
    , Bindings.Wayland.Client.Generated.Wl_keyboard
    , Bindings.Wayland.Client.Generated.Wl_output
    , Bindings.Wayland.Client.Generated.Wl_pointer
    , Bindings.Wayland.Client.Generated.Wl_region
    , Bindings.Wayland.Client.Generated.Wl_registry
    , Bindings.Wayland.Client.Generated.Wl_seat
    , Bindings.Wayland.Client.Generated.Wl_shell
    , Bindings.Wayland.Client.Generated.Wl_shell_surface
    , Bindings.Wayland.Client.Generated.Wl_shm
    , Bindings.Wayland.Client.Generated.Wl_shm_pool
    , Bindings.Wayland.Client.Generated.Wl_subcompositor
    , Bindings.Wayland.Client.Generated.Wl_subsurface
    , Bindings.Wayland.Client.Generated.Wl_surface
    , Bindings.Wayland.Client.Generated.Wl_touch
    , Bindings.Wayland.Client.Generated.Wl_display_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_DISPLAY_ERROR_INVALID_OBJECT
    , pattern Bindings.Wayland.Client.Generated.WL_DISPLAY_ERROR_INVALID_METHOD
    , pattern Bindings.Wayland.Client.Generated.WL_DISPLAY_ERROR_NO_MEMORY
    , pattern Bindings.Wayland.Client.Generated.WL_DISPLAY_ERROR_IMPLEMENTATION
    , Bindings.Wayland.Client.Generated.Wl_display_listener(..)
    , Bindings.Wayland.Client.Generated.wL_DISPLAY_SYNC
    , Bindings.Wayland.Client.Generated.wL_DISPLAY_GET_REGISTRY
    , Bindings.Wayland.Client.Generated.wL_DISPLAY_ERROR_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DISPLAY_DELETE_ID_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DISPLAY_SYNC_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DISPLAY_GET_REGISTRY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_registry_listener(..)
    , Bindings.Wayland.Client.Generated.wL_REGISTRY_BIND
    , Bindings.Wayland.Client.Generated.wL_REGISTRY_GLOBAL_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_REGISTRY_GLOBAL_REMOVE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_REGISTRY_BIND_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_callback_listener(..)
    , Bindings.Wayland.Client.Generated.wL_CALLBACK_DONE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_COMPOSITOR_CREATE_SURFACE
    , Bindings.Wayland.Client.Generated.wL_COMPOSITOR_CREATE_REGION
    , Bindings.Wayland.Client.Generated.wL_COMPOSITOR_CREATE_SURFACE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_COMPOSITOR_CREATE_REGION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHM_POOL_CREATE_BUFFER
    , Bindings.Wayland.Client.Generated.wL_SHM_POOL_DESTROY
    , Bindings.Wayland.Client.Generated.wL_SHM_POOL_RESIZE
    , Bindings.Wayland.Client.Generated.wL_SHM_POOL_CREATE_BUFFER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHM_POOL_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHM_POOL_RESIZE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_shm_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_ERROR_INVALID_FORMAT
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_ERROR_INVALID_STRIDE
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_ERROR_INVALID_FD
    , Bindings.Wayland.Client.Generated.Wl_shm_format(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ARGB8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XRGB8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_C8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGB332
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGR233
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XRGB4444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XBGR4444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBX4444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRX4444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ARGB4444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ABGR4444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBA4444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRA4444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XRGB1555
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XBGR1555
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBX5551
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRX5551
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ARGB1555
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ABGR1555
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBA5551
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRA5551
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGB565
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGR565
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGB888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGR888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XBGR8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBX8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRX8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ABGR8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBA8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRA8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XRGB2101010
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XBGR2101010
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBX1010102
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRX1010102
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ARGB2101010
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ABGR2101010
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBA1010102
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRA1010102
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YUYV
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YVYU
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_UYVY
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_VYUY
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_AYUV
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_NV12
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_NV21
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_NV16
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_NV61
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YUV410
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YVU410
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YUV411
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YVU411
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YUV420
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YVU420
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YUV422
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YVU422
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YUV444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YVU444
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_R8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_R16
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RG88
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_GR88
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RG1616
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_GR1616
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XRGB16161616F
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XBGR16161616F
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ARGB16161616F
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ABGR16161616F
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XYUV8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_VUY888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_VUY101010
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Y210
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Y212
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Y216
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Y410
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Y412
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Y416
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XVYU2101010
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XVYU12_16161616
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XVYU16161616
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Y0L0
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_X0L0
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Y0L2
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_X0L2
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YUV420_8BIT
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_YUV420_10BIT
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XRGB8888_A8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XBGR8888_A8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGBX8888_A8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGRX8888_A8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGB888_A8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGR888_A8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_RGB565_A8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_BGR565_A8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_NV24
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_NV42
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_P210
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_P010
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_P012
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_P016
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_AXBXGXRX106106106106
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_NV15
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Q410
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_Q401
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XRGB16161616
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XBGR16161616
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ARGB16161616
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_ABGR16161616
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_C1
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_C2
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_C4
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_D1
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_D2
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_D4
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_D8
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_R1
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_R2
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_R4
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_R10
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_R12
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_AVUY8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_XVUY8888
    , pattern Bindings.Wayland.Client.Generated.WL_SHM_FORMAT_P030
    , Bindings.Wayland.Client.Generated.Wl_shm_listener(..)
    , Bindings.Wayland.Client.Generated.wL_SHM_CREATE_POOL
    , Bindings.Wayland.Client.Generated.wL_SHM_RELEASE
    , Bindings.Wayland.Client.Generated.wL_SHM_FORMAT_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHM_CREATE_POOL_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHM_RELEASE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_buffer_listener(..)
    , Bindings.Wayland.Client.Generated.wL_BUFFER_DESTROY
    , Bindings.Wayland.Client.Generated.wL_BUFFER_RELEASE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_BUFFER_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_data_offer_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_OFFER_ERROR_INVALID_FINISH
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_OFFER_ERROR_INVALID_ACTION
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_OFFER_ERROR_INVALID_OFFER
    , Bindings.Wayland.Client.Generated.Wl_data_offer_listener(..)
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_ACCEPT
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_RECEIVE
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_DESTROY
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_FINISH
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_SET_ACTIONS
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_OFFER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_SOURCE_ACTIONS_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_ACTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_ACCEPT_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_RECEIVE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_FINISH_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_OFFER_SET_ACTIONS_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_data_source_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_SOURCE_ERROR_INVALID_SOURCE
    , Bindings.Wayland.Client.Generated.Wl_data_source_listener(..)
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_OFFER
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_DESTROY
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_SET_ACTIONS
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_TARGET_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_SEND_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_CANCELLED_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_DND_DROP_PERFORMED_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_DND_FINISHED_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_ACTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_OFFER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_SOURCE_SET_ACTIONS_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_data_device_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_DEVICE_ERROR_ROLE
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_DEVICE_ERROR_USED_SOURCE
    , Bindings.Wayland.Client.Generated.Wl_data_device_listener(..)
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_START_DRAG
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_SET_SELECTION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_RELEASE
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_DATA_OFFER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_ENTER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_LEAVE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_MOTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_DROP_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_SELECTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_START_DRAG_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_SET_SELECTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_RELEASE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_data_device_manager_dnd_action(..)
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE
    , pattern Bindings.Wayland.Client.Generated.WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_shell_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_ERROR_ROLE
    , Bindings.Wayland.Client.Generated.wL_SHELL_GET_SHELL_SURFACE
    , Bindings.Wayland.Client.Generated.wL_SHELL_GET_SHELL_SURFACE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_shell_surface_resize(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_NONE
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_TOP
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_BOTTOM
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_LEFT
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_TOP_LEFT
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_RIGHT
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_TOP_RIGHT
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT
    , Bindings.Wayland.Client.Generated.Wl_shell_surface_transient(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_TRANSIENT_INACTIVE
    , Bindings.Wayland.Client.Generated.Wl_shell_surface_fullscreen_method(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER
    , pattern Bindings.Wayland.Client.Generated.WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL
    , Bindings.Wayland.Client.Generated.Wl_shell_surface_listener(..)
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_PONG
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_MOVE
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_RESIZE
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_TOPLEVEL
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_TRANSIENT
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_FULLSCREEN
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_POPUP
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_MAXIMIZED
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_TITLE
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_CLASS
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_PING_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_POPUP_DONE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_PONG_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_MOVE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_RESIZE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_TOPLEVEL_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_TRANSIENT_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_FULLSCREEN_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_POPUP_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_MAXIMIZED_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_TITLE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SHELL_SURFACE_SET_CLASS_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_surface_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SURFACE_ERROR_INVALID_SCALE
    , pattern Bindings.Wayland.Client.Generated.WL_SURFACE_ERROR_INVALID_TRANSFORM
    , pattern Bindings.Wayland.Client.Generated.WL_SURFACE_ERROR_INVALID_SIZE
    , pattern Bindings.Wayland.Client.Generated.WL_SURFACE_ERROR_INVALID_OFFSET
    , pattern Bindings.Wayland.Client.Generated.WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT
    , Bindings.Wayland.Client.Generated.Wl_surface_listener(..)
    , Bindings.Wayland.Client.Generated.wL_SURFACE_DESTROY
    , Bindings.Wayland.Client.Generated.wL_SURFACE_ATTACH
    , Bindings.Wayland.Client.Generated.wL_SURFACE_DAMAGE
    , Bindings.Wayland.Client.Generated.wL_SURFACE_FRAME
    , Bindings.Wayland.Client.Generated.wL_SURFACE_SET_OPAQUE_REGION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_SET_INPUT_REGION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_COMMIT
    , Bindings.Wayland.Client.Generated.wL_SURFACE_SET_BUFFER_TRANSFORM
    , Bindings.Wayland.Client.Generated.wL_SURFACE_SET_BUFFER_SCALE
    , Bindings.Wayland.Client.Generated.wL_SURFACE_DAMAGE_BUFFER
    , Bindings.Wayland.Client.Generated.wL_SURFACE_OFFSET
    , Bindings.Wayland.Client.Generated.wL_SURFACE_ENTER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_LEAVE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_PREFERRED_BUFFER_SCALE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_PREFERRED_BUFFER_TRANSFORM_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_ATTACH_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_DAMAGE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_FRAME_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_SET_OPAQUE_REGION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_SET_INPUT_REGION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_COMMIT_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_SET_BUFFER_TRANSFORM_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_SET_BUFFER_SCALE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_DAMAGE_BUFFER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SURFACE_OFFSET_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_seat_capability(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SEAT_CAPABILITY_POINTER
    , pattern Bindings.Wayland.Client.Generated.WL_SEAT_CAPABILITY_KEYBOARD
    , pattern Bindings.Wayland.Client.Generated.WL_SEAT_CAPABILITY_TOUCH
    , Bindings.Wayland.Client.Generated.Wl_seat_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SEAT_ERROR_MISSING_CAPABILITY
    , Bindings.Wayland.Client.Generated.Wl_seat_listener(..)
    , Bindings.Wayland.Client.Generated.wL_SEAT_GET_POINTER
    , Bindings.Wayland.Client.Generated.wL_SEAT_GET_KEYBOARD
    , Bindings.Wayland.Client.Generated.wL_SEAT_GET_TOUCH
    , Bindings.Wayland.Client.Generated.wL_SEAT_RELEASE
    , Bindings.Wayland.Client.Generated.wL_SEAT_CAPABILITIES_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SEAT_NAME_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SEAT_GET_POINTER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SEAT_GET_KEYBOARD_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SEAT_GET_TOUCH_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SEAT_RELEASE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_pointer_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_ERROR_ROLE
    , Bindings.Wayland.Client.Generated.Wl_pointer_button_state(..)
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_BUTTON_STATE_RELEASED
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_BUTTON_STATE_PRESSED
    , Bindings.Wayland.Client.Generated.Wl_pointer_axis(..)
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_AXIS_VERTICAL_SCROLL
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_AXIS_HORIZONTAL_SCROLL
    , Bindings.Wayland.Client.Generated.Wl_pointer_axis_source(..)
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_AXIS_SOURCE_WHEEL
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_AXIS_SOURCE_FINGER
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_AXIS_SOURCE_CONTINUOUS
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_AXIS_SOURCE_WHEEL_TILT
    , Bindings.Wayland.Client.Generated.wL_POINTER_AXIS_SOURCE_WHEEL_TILT_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_pointer_axis_relative_direction(..)
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL
    , pattern Bindings.Wayland.Client.Generated.WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED
    , Bindings.Wayland.Client.Generated.Wl_pointer_listener(..)
    , Bindings.Wayland.Client.Generated.wL_POINTER_SET_CURSOR
    , Bindings.Wayland.Client.Generated.wL_POINTER_RELEASE
    , Bindings.Wayland.Client.Generated.wL_POINTER_ENTER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_LEAVE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_MOTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_BUTTON_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_AXIS_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_FRAME_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_AXIS_SOURCE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_AXIS_STOP_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_AXIS_DISCRETE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_AXIS_VALUE120_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_AXIS_RELATIVE_DIRECTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_SET_CURSOR_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_POINTER_RELEASE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_keyboard_keymap_format(..)
    , pattern Bindings.Wayland.Client.Generated.WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP
    , pattern Bindings.Wayland.Client.Generated.WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1
    , Bindings.Wayland.Client.Generated.Wl_keyboard_key_state(..)
    , pattern Bindings.Wayland.Client.Generated.WL_KEYBOARD_KEY_STATE_RELEASED
    , pattern Bindings.Wayland.Client.Generated.WL_KEYBOARD_KEY_STATE_PRESSED
    , pattern Bindings.Wayland.Client.Generated.WL_KEYBOARD_KEY_STATE_REPEATED
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_KEY_STATE_REPEATED_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_keyboard_listener(..)
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_RELEASE
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_KEYMAP_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_ENTER_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_LEAVE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_KEY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_MODIFIERS_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_REPEAT_INFO_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_KEYBOARD_RELEASE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_touch_listener(..)
    , Bindings.Wayland.Client.Generated.wL_TOUCH_RELEASE
    , Bindings.Wayland.Client.Generated.wL_TOUCH_DOWN_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_TOUCH_UP_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_TOUCH_MOTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_TOUCH_FRAME_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_TOUCH_CANCEL_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_TOUCH_SHAPE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_TOUCH_ORIENTATION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_TOUCH_RELEASE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_output_subpixel(..)
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_SUBPIXEL_UNKNOWN
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_SUBPIXEL_NONE
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_SUBPIXEL_VERTICAL_RGB
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_SUBPIXEL_VERTICAL_BGR
    , Bindings.Wayland.Client.Generated.Wl_output_transform(..)
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_TRANSFORM_NORMAL
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_TRANSFORM_90
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_TRANSFORM_180
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_TRANSFORM_270
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_TRANSFORM_FLIPPED
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_TRANSFORM_FLIPPED_90
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_TRANSFORM_FLIPPED_180
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_TRANSFORM_FLIPPED_270
    , Bindings.Wayland.Client.Generated.Wl_output_mode(..)
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_MODE_CURRENT
    , pattern Bindings.Wayland.Client.Generated.WL_OUTPUT_MODE_PREFERRED
    , Bindings.Wayland.Client.Generated.Wl_output_listener(..)
    , Bindings.Wayland.Client.Generated.wL_OUTPUT_RELEASE
    , Bindings.Wayland.Client.Generated.wL_OUTPUT_GEOMETRY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_OUTPUT_MODE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_OUTPUT_DONE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_OUTPUT_SCALE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_OUTPUT_NAME_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_OUTPUT_DESCRIPTION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_OUTPUT_RELEASE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_REGION_DESTROY
    , Bindings.Wayland.Client.Generated.wL_REGION_ADD
    , Bindings.Wayland.Client.Generated.wL_REGION_SUBTRACT
    , Bindings.Wayland.Client.Generated.wL_REGION_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_REGION_ADD_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_REGION_SUBTRACT_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_subcompositor_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE
    , pattern Bindings.Wayland.Client.Generated.WL_SUBCOMPOSITOR_ERROR_BAD_PARENT
    , Bindings.Wayland.Client.Generated.wL_SUBCOMPOSITOR_DESTROY
    , Bindings.Wayland.Client.Generated.wL_SUBCOMPOSITOR_GET_SUBSURFACE
    , Bindings.Wayland.Client.Generated.wL_SUBCOMPOSITOR_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SUBCOMPOSITOR_GET_SUBSURFACE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.Wl_subsurface_error(..)
    , pattern Bindings.Wayland.Client.Generated.WL_SUBSURFACE_ERROR_BAD_SURFACE
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_DESTROY
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_SET_POSITION
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_PLACE_ABOVE
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_PLACE_BELOW
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_SET_SYNC
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_SET_DESYNC
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_SET_POSITION_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_PLACE_ABOVE_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_PLACE_BELOW_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_SET_SYNC_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_SUBSURFACE_SET_DESYNC_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_FIXES_DESTROY
    , Bindings.Wayland.Client.Generated.wL_FIXES_DESTROY_REGISTRY
    , Bindings.Wayland.Client.Generated.wL_FIXES_DESTROY_SINCE_VERSION
    , Bindings.Wayland.Client.Generated.wL_FIXES_DESTROY_REGISTRY_SINCE_VERSION
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified C.Expr.HostPlatform
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
data Wl_proxy

{-| __C declaration:__ @struct wl_display@

    __defined at:__ @wayland-client-core.h 112:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
data Wl_display

{-| __C declaration:__ @struct wl_event_queue@

    __defined at:__ @wayland-client-core.h 122:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-core.h@
-}
data Wl_event_queue

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
data Wl_buffer

{-| __C declaration:__ @struct wl_callback@

    __defined at:__ @wayland-client-protocol.h 70:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_callback

{-| __C declaration:__ @struct wl_compositor@

    __defined at:__ @wayland-client-protocol.h 71:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_compositor

{-| __C declaration:__ @struct wl_data_device@

    __defined at:__ @wayland-client-protocol.h 72:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_data_device

{-| __C declaration:__ @struct wl_data_device_manager@

    __defined at:__ @wayland-client-protocol.h 73:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_data_device_manager

{-| __C declaration:__ @struct wl_data_offer@

    __defined at:__ @wayland-client-protocol.h 74:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_data_offer

{-| __C declaration:__ @struct wl_data_source@

    __defined at:__ @wayland-client-protocol.h 75:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_data_source

{-| __C declaration:__ @struct wl_fixes@

    __defined at:__ @wayland-client-protocol.h 77:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_fixes

{-| __C declaration:__ @struct wl_keyboard@

    __defined at:__ @wayland-client-protocol.h 78:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_keyboard

{-| __C declaration:__ @struct wl_output@

    __defined at:__ @wayland-client-protocol.h 79:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_output

{-| __C declaration:__ @struct wl_pointer@

    __defined at:__ @wayland-client-protocol.h 80:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_pointer

{-| __C declaration:__ @struct wl_region@

    __defined at:__ @wayland-client-protocol.h 81:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_region

{-| __C declaration:__ @struct wl_registry@

    __defined at:__ @wayland-client-protocol.h 82:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_registry

{-| __C declaration:__ @struct wl_seat@

    __defined at:__ @wayland-client-protocol.h 83:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_seat

{-| __C declaration:__ @struct wl_shell@

    __defined at:__ @wayland-client-protocol.h 84:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_shell

{-| __C declaration:__ @struct wl_shell_surface@

    __defined at:__ @wayland-client-protocol.h 85:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_shell_surface

{-| __C declaration:__ @struct wl_shm@

    __defined at:__ @wayland-client-protocol.h 86:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_shm

{-| __C declaration:__ @struct wl_shm_pool@

    __defined at:__ @wayland-client-protocol.h 87:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_shm_pool

{-| __C declaration:__ @struct wl_subcompositor@

    __defined at:__ @wayland-client-protocol.h 88:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_subcompositor

{-| __C declaration:__ @struct wl_subsurface@

    __defined at:__ @wayland-client-protocol.h 89:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_subsurface

{-| __C declaration:__ @struct wl_surface@

    __defined at:__ @wayland-client-protocol.h 90:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_surface

{-| __C declaration:__ @struct wl_touch@

    __defined at:__ @wayland-client-protocol.h 91:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_touch

{-| __C declaration:__ @enum wl_display_error@

    __defined at:__ @wayland-client-protocol.h 974:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_display_error = Wl_display_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_display_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_display_error where

  readRaw =
    \ptr0 ->
          pure Wl_display_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_display_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_display_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_display_error instance RIP.Storable Wl_display_error

deriving via RIP.CUInt instance RIP.Prim Wl_display_error

instance CEnum.CEnum Wl_display_error where

  type CEnumZ Wl_display_error = RIP.CUInt

  toCEnum = Wl_display_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DISPLAY_ERROR_INVALID_OBJECT")
                                   , (1, RIP.singleton "WL_DISPLAY_ERROR_INVALID_METHOD")
                                   , (2, RIP.singleton "WL_DISPLAY_ERROR_NO_MEMORY")
                                   , (3, RIP.singleton "WL_DISPLAY_ERROR_IMPLEMENTATION")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_display_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_display_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_display_error where

  minDeclaredValue = WL_DISPLAY_ERROR_INVALID_OBJECT

  maxDeclaredValue = WL_DISPLAY_ERROR_IMPLEMENTATION

instance Show Wl_display_error where

  showsPrec = CEnum.shows

instance Read Wl_display_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_display_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_display_error "unwrap" where

  type CFieldType Wl_display_error "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DISPLAY_ERROR_INVALID_OBJECT@

    __defined at:__ @wayland-client-protocol.h 978:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DISPLAY_ERROR_INVALID_OBJECT :: Wl_display_error
pattern WL_DISPLAY_ERROR_INVALID_OBJECT = Wl_display_error 0

{-| __C declaration:__ @WL_DISPLAY_ERROR_INVALID_METHOD@

    __defined at:__ @wayland-client-protocol.h 982:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DISPLAY_ERROR_INVALID_METHOD :: Wl_display_error
pattern WL_DISPLAY_ERROR_INVALID_METHOD = Wl_display_error 1

{-| __C declaration:__ @WL_DISPLAY_ERROR_NO_MEMORY@

    __defined at:__ @wayland-client-protocol.h 986:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DISPLAY_ERROR_NO_MEMORY :: Wl_display_error
pattern WL_DISPLAY_ERROR_NO_MEMORY = Wl_display_error 2

{-| __C declaration:__ @WL_DISPLAY_ERROR_IMPLEMENTATION@

    __defined at:__ @wayland-client-protocol.h 990:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DISPLAY_ERROR_IMPLEMENTATION :: Wl_display_error
pattern WL_DISPLAY_ERROR_IMPLEMENTATION = Wl_display_error 3

{-| __C declaration:__ @struct wl_display_listener@

    __defined at:__ @wayland-client-protocol.h 998:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_display_listener = Wl_display_listener
  { error :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @error@

         __defined at:__ @wayland-client-protocol.h 1013:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , delete_id :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @delete_id@

         __defined at:__ @wayland-client-protocol.h 1028:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_display_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_display_listener where

  readRaw =
    \ptr0 ->
          pure Wl_display_listener
      <*> HasCField.readRaw (RIP.Proxy @"error") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"delete_id") ptr0

instance Marshal.WriteRaw Wl_display_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_display_listener error2 delete_id3 ->
               HasCField.writeRaw (RIP.Proxy @"error") ptr0 error2
            >> HasCField.writeRaw (RIP.Proxy @"delete_id") ptr0 delete_id3

deriving via Marshal.EquivStorable Wl_display_listener instance RIP.Storable Wl_display_listener

instance HasCField.HasCField Wl_display_listener "error" where

  type CFieldType Wl_display_listener "error" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "error" (RIP.Ptr Wl_display_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"error")

instance HasCField.HasCField Wl_display_listener "delete_id" where

  type CFieldType Wl_display_listener "delete_id" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "delete_id" (RIP.Ptr Wl_display_listener) (RIP.Ptr ty) where

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
data Wl_registry_listener = Wl_registry_listener
  { global :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @global@

         __defined at:__ @wayland-client-protocol.h 1152:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , global_remove :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @global_remove@

         __defined at:__ @wayland-client-protocol.h 1172:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_registry_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_registry_listener where

  readRaw =
    \ptr0 ->
          pure Wl_registry_listener
      <*> HasCField.readRaw (RIP.Proxy @"global") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"global_remove") ptr0

instance Marshal.WriteRaw Wl_registry_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_registry_listener global2 global_remove3 ->
               HasCField.writeRaw (RIP.Proxy @"global") ptr0 global2
            >> HasCField.writeRaw (RIP.Proxy @"global_remove") ptr0 global_remove3

deriving via Marshal.EquivStorable Wl_registry_listener instance RIP.Storable Wl_registry_listener

instance HasCField.HasCField Wl_registry_listener "global" where

  type CFieldType Wl_registry_listener "global" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "global" (RIP.Ptr Wl_registry_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"global")

instance HasCField.HasCField Wl_registry_listener "global_remove" where

  type CFieldType Wl_registry_listener "global_remove" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "global_remove" (RIP.Ptr Wl_registry_listener) (RIP.Ptr ty) where

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
data Wl_callback_listener = Wl_callback_listener
  { done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @done@

         __defined at:__ @wayland-client-protocol.h 1259:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_callback_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_callback_listener where

  readRaw =
    \ptr0 ->
          pure Wl_callback_listener
      <*> HasCField.readRaw (RIP.Proxy @"done") ptr0

instance Marshal.WriteRaw Wl_callback_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_callback_listener done2 ->
            HasCField.writeRaw (RIP.Proxy @"done") ptr0 done2

deriving via Marshal.EquivStorable Wl_callback_listener instance RIP.Storable Wl_callback_listener

instance HasCField.HasCField Wl_callback_listener "done" where

  type CFieldType Wl_callback_listener "done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "done" (RIP.Ptr Wl_callback_listener) (RIP.Ptr ty) where

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
newtype Wl_shm_error = Wl_shm_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_shm_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_shm_error where

  readRaw =
    \ptr0 ->
          pure Wl_shm_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_shm_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_shm_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_shm_error instance RIP.Storable Wl_shm_error

deriving via RIP.CUInt instance RIP.Prim Wl_shm_error

instance CEnum.CEnum Wl_shm_error where

  type CEnumZ Wl_shm_error = RIP.CUInt

  toCEnum = Wl_shm_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SHM_ERROR_INVALID_FORMAT")
                                   , (1, RIP.singleton "WL_SHM_ERROR_INVALID_STRIDE")
                                   , (2, RIP.singleton "WL_SHM_ERROR_INVALID_FD")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_shm_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_shm_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_shm_error where

  minDeclaredValue = WL_SHM_ERROR_INVALID_FORMAT

  maxDeclaredValue = WL_SHM_ERROR_INVALID_FD

instance Show Wl_shm_error where

  showsPrec = CEnum.shows

instance Read Wl_shm_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_shm_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_shm_error "unwrap" where

  type CFieldType Wl_shm_error "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHM_ERROR_INVALID_FORMAT@

    __defined at:__ @wayland-client-protocol.h 1493:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_ERROR_INVALID_FORMAT :: Wl_shm_error
pattern WL_SHM_ERROR_INVALID_FORMAT = Wl_shm_error 0

{-| __C declaration:__ @WL_SHM_ERROR_INVALID_STRIDE@

    __defined at:__ @wayland-client-protocol.h 1497:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_ERROR_INVALID_STRIDE :: Wl_shm_error
pattern WL_SHM_ERROR_INVALID_STRIDE = Wl_shm_error 1

{-| __C declaration:__ @WL_SHM_ERROR_INVALID_FD@

    __defined at:__ @wayland-client-protocol.h 1501:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_ERROR_INVALID_FD :: Wl_shm_error
pattern WL_SHM_ERROR_INVALID_FD = Wl_shm_error 2

{-| __C declaration:__ @enum wl_shm_format@

    __defined at:__ @wayland-client-protocol.h 1524:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_shm_format = Wl_shm_format
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_shm_format where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_shm_format where

  readRaw =
    \ptr0 ->
          pure Wl_shm_format
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_shm_format where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_shm_format unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_shm_format instance RIP.Storable Wl_shm_format

deriving via RIP.CUInt instance RIP.Prim Wl_shm_format

instance CEnum.CEnum Wl_shm_format where

  type CEnumZ Wl_shm_format = RIP.CUInt

  toCEnum = Wl_shm_format

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
    CEnum.showsWrappedUndeclared "Wl_shm_format"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_shm_format"

instance Show Wl_shm_format where

  showsPrec = CEnum.shows

instance Read Wl_shm_format where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_shm_format) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_shm_format "unwrap" where

  type CFieldType Wl_shm_format "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB8888@

    __defined at:__ @wayland-client-protocol.h 1528:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_ARGB8888 = Wl_shm_format 0

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB8888@

    __defined at:__ @wayland-client-protocol.h 1532:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_XRGB8888 = Wl_shm_format 1

{-| __C declaration:__ @WL_SHM_FORMAT_C8@

    __defined at:__ @wayland-client-protocol.h 1536:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_C8 :: Wl_shm_format
pattern WL_SHM_FORMAT_C8 = Wl_shm_format 538982467

{-| __C declaration:__ @WL_SHM_FORMAT_RGB332@

    __defined at:__ @wayland-client-protocol.h 1540:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB332 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGB332 = Wl_shm_format 943867730

{-| __C declaration:__ @WL_SHM_FORMAT_BGR233@

    __defined at:__ @wayland-client-protocol.h 1544:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR233 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGR233 = Wl_shm_format 944916290

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB4444@

    __defined at:__ @wayland-client-protocol.h 1548:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB4444 :: Wl_shm_format
pattern WL_SHM_FORMAT_XRGB4444 = Wl_shm_format 842093144

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR4444@

    __defined at:__ @wayland-client-protocol.h 1552:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR4444 :: Wl_shm_format
pattern WL_SHM_FORMAT_XBGR4444 = Wl_shm_format 842089048

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX4444@

    __defined at:__ @wayland-client-protocol.h 1556:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX4444 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBX4444 = Wl_shm_format 842094674

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX4444@

    __defined at:__ @wayland-client-protocol.h 1560:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX4444 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRX4444 = Wl_shm_format 842094658

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB4444@

    __defined at:__ @wayland-client-protocol.h 1564:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB4444 :: Wl_shm_format
pattern WL_SHM_FORMAT_ARGB4444 = Wl_shm_format 842093121

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR4444@

    __defined at:__ @wayland-client-protocol.h 1568:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR4444 :: Wl_shm_format
pattern WL_SHM_FORMAT_ABGR4444 = Wl_shm_format 842089025

{-| __C declaration:__ @WL_SHM_FORMAT_RGBA4444@

    __defined at:__ @wayland-client-protocol.h 1572:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBA4444 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBA4444 = Wl_shm_format 842088786

{-| __C declaration:__ @WL_SHM_FORMAT_BGRA4444@

    __defined at:__ @wayland-client-protocol.h 1576:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRA4444 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRA4444 = Wl_shm_format 842088770

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB1555@

    __defined at:__ @wayland-client-protocol.h 1580:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB1555 :: Wl_shm_format
pattern WL_SHM_FORMAT_XRGB1555 = Wl_shm_format 892424792

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR1555@

    __defined at:__ @wayland-client-protocol.h 1584:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR1555 :: Wl_shm_format
pattern WL_SHM_FORMAT_XBGR1555 = Wl_shm_format 892420696

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX5551@

    __defined at:__ @wayland-client-protocol.h 1588:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX5551 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBX5551 = Wl_shm_format 892426322

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX5551@

    __defined at:__ @wayland-client-protocol.h 1592:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX5551 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRX5551 = Wl_shm_format 892426306

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB1555@

    __defined at:__ @wayland-client-protocol.h 1596:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB1555 :: Wl_shm_format
pattern WL_SHM_FORMAT_ARGB1555 = Wl_shm_format 892424769

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR1555@

    __defined at:__ @wayland-client-protocol.h 1600:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR1555 :: Wl_shm_format
pattern WL_SHM_FORMAT_ABGR1555 = Wl_shm_format 892420673

{-| __C declaration:__ @WL_SHM_FORMAT_RGBA5551@

    __defined at:__ @wayland-client-protocol.h 1604:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBA5551 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBA5551 = Wl_shm_format 892420434

{-| __C declaration:__ @WL_SHM_FORMAT_BGRA5551@

    __defined at:__ @wayland-client-protocol.h 1608:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRA5551 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRA5551 = Wl_shm_format 892420418

{-| __C declaration:__ @WL_SHM_FORMAT_RGB565@

    __defined at:__ @wayland-client-protocol.h 1612:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB565 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGB565 = Wl_shm_format 909199186

{-| __C declaration:__ @WL_SHM_FORMAT_BGR565@

    __defined at:__ @wayland-client-protocol.h 1616:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR565 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGR565 = Wl_shm_format 909199170

{-| __C declaration:__ @WL_SHM_FORMAT_RGB888@

    __defined at:__ @wayland-client-protocol.h 1620:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB888 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGB888 = Wl_shm_format 875710290

{-| __C declaration:__ @WL_SHM_FORMAT_BGR888@

    __defined at:__ @wayland-client-protocol.h 1624:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR888 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGR888 = Wl_shm_format 875710274

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR8888@

    __defined at:__ @wayland-client-protocol.h 1628:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_XBGR8888 = Wl_shm_format 875709016

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX8888@

    __defined at:__ @wayland-client-protocol.h 1632:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBX8888 = Wl_shm_format 875714642

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX8888@

    __defined at:__ @wayland-client-protocol.h 1636:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRX8888 = Wl_shm_format 875714626

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR8888@

    __defined at:__ @wayland-client-protocol.h 1640:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_ABGR8888 = Wl_shm_format 875708993

{-| __C declaration:__ @WL_SHM_FORMAT_RGBA8888@

    __defined at:__ @wayland-client-protocol.h 1644:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBA8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBA8888 = Wl_shm_format 875708754

{-| __C declaration:__ @WL_SHM_FORMAT_BGRA8888@

    __defined at:__ @wayland-client-protocol.h 1648:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRA8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRA8888 = Wl_shm_format 875708738

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB2101010@

    __defined at:__ @wayland-client-protocol.h 1652:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB2101010 :: Wl_shm_format
pattern WL_SHM_FORMAT_XRGB2101010 = Wl_shm_format 808669784

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR2101010@

    __defined at:__ @wayland-client-protocol.h 1656:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR2101010 :: Wl_shm_format
pattern WL_SHM_FORMAT_XBGR2101010 = Wl_shm_format 808665688

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX1010102@

    __defined at:__ @wayland-client-protocol.h 1660:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX1010102 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBX1010102 = Wl_shm_format 808671314

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX1010102@

    __defined at:__ @wayland-client-protocol.h 1664:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX1010102 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRX1010102 = Wl_shm_format 808671298

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB2101010@

    __defined at:__ @wayland-client-protocol.h 1668:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB2101010 :: Wl_shm_format
pattern WL_SHM_FORMAT_ARGB2101010 = Wl_shm_format 808669761

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR2101010@

    __defined at:__ @wayland-client-protocol.h 1672:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR2101010 :: Wl_shm_format
pattern WL_SHM_FORMAT_ABGR2101010 = Wl_shm_format 808665665

{-| __C declaration:__ @WL_SHM_FORMAT_RGBA1010102@

    __defined at:__ @wayland-client-protocol.h 1676:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBA1010102 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBA1010102 = Wl_shm_format 808665426

{-| __C declaration:__ @WL_SHM_FORMAT_BGRA1010102@

    __defined at:__ @wayland-client-protocol.h 1680:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRA1010102 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRA1010102 = Wl_shm_format 808665410

{-| __C declaration:__ @WL_SHM_FORMAT_YUYV@

    __defined at:__ @wayland-client-protocol.h 1684:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUYV :: Wl_shm_format
pattern WL_SHM_FORMAT_YUYV = Wl_shm_format 1448695129

{-| __C declaration:__ @WL_SHM_FORMAT_YVYU@

    __defined at:__ @wayland-client-protocol.h 1688:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVYU :: Wl_shm_format
pattern WL_SHM_FORMAT_YVYU = Wl_shm_format 1431918169

{-| __C declaration:__ @WL_SHM_FORMAT_UYVY@

    __defined at:__ @wayland-client-protocol.h 1692:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_UYVY :: Wl_shm_format
pattern WL_SHM_FORMAT_UYVY = Wl_shm_format 1498831189

{-| __C declaration:__ @WL_SHM_FORMAT_VYUY@

    __defined at:__ @wayland-client-protocol.h 1696:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_VYUY :: Wl_shm_format
pattern WL_SHM_FORMAT_VYUY = Wl_shm_format 1498765654

{-| __C declaration:__ @WL_SHM_FORMAT_AYUV@

    __defined at:__ @wayland-client-protocol.h 1700:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_AYUV :: Wl_shm_format
pattern WL_SHM_FORMAT_AYUV = Wl_shm_format 1448433985

{-| __C declaration:__ @WL_SHM_FORMAT_NV12@

    __defined at:__ @wayland-client-protocol.h 1704:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV12 :: Wl_shm_format
pattern WL_SHM_FORMAT_NV12 = Wl_shm_format 842094158

{-| __C declaration:__ @WL_SHM_FORMAT_NV21@

    __defined at:__ @wayland-client-protocol.h 1708:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV21 :: Wl_shm_format
pattern WL_SHM_FORMAT_NV21 = Wl_shm_format 825382478

{-| __C declaration:__ @WL_SHM_FORMAT_NV16@

    __defined at:__ @wayland-client-protocol.h 1712:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV16 :: Wl_shm_format
pattern WL_SHM_FORMAT_NV16 = Wl_shm_format 909203022

{-| __C declaration:__ @WL_SHM_FORMAT_NV61@

    __defined at:__ @wayland-client-protocol.h 1716:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV61 :: Wl_shm_format
pattern WL_SHM_FORMAT_NV61 = Wl_shm_format 825644622

{-| __C declaration:__ @WL_SHM_FORMAT_YUV410@

    __defined at:__ @wayland-client-protocol.h 1720:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV410 :: Wl_shm_format
pattern WL_SHM_FORMAT_YUV410 = Wl_shm_format 961959257

{-| __C declaration:__ @WL_SHM_FORMAT_YVU410@

    __defined at:__ @wayland-client-protocol.h 1724:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU410 :: Wl_shm_format
pattern WL_SHM_FORMAT_YVU410 = Wl_shm_format 961893977

{-| __C declaration:__ @WL_SHM_FORMAT_YUV411@

    __defined at:__ @wayland-client-protocol.h 1728:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV411 :: Wl_shm_format
pattern WL_SHM_FORMAT_YUV411 = Wl_shm_format 825316697

{-| __C declaration:__ @WL_SHM_FORMAT_YVU411@

    __defined at:__ @wayland-client-protocol.h 1732:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU411 :: Wl_shm_format
pattern WL_SHM_FORMAT_YVU411 = Wl_shm_format 825316953

{-| __C declaration:__ @WL_SHM_FORMAT_YUV420@

    __defined at:__ @wayland-client-protocol.h 1736:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV420 :: Wl_shm_format
pattern WL_SHM_FORMAT_YUV420 = Wl_shm_format 842093913

{-| __C declaration:__ @WL_SHM_FORMAT_YVU420@

    __defined at:__ @wayland-client-protocol.h 1740:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU420 :: Wl_shm_format
pattern WL_SHM_FORMAT_YVU420 = Wl_shm_format 842094169

{-| __C declaration:__ @WL_SHM_FORMAT_YUV422@

    __defined at:__ @wayland-client-protocol.h 1744:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV422 :: Wl_shm_format
pattern WL_SHM_FORMAT_YUV422 = Wl_shm_format 909202777

{-| __C declaration:__ @WL_SHM_FORMAT_YVU422@

    __defined at:__ @wayland-client-protocol.h 1748:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU422 :: Wl_shm_format
pattern WL_SHM_FORMAT_YVU422 = Wl_shm_format 909203033

{-| __C declaration:__ @WL_SHM_FORMAT_YUV444@

    __defined at:__ @wayland-client-protocol.h 1752:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV444 :: Wl_shm_format
pattern WL_SHM_FORMAT_YUV444 = Wl_shm_format 875713881

{-| __C declaration:__ @WL_SHM_FORMAT_YVU444@

    __defined at:__ @wayland-client-protocol.h 1756:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YVU444 :: Wl_shm_format
pattern WL_SHM_FORMAT_YVU444 = Wl_shm_format 875714137

{-| __C declaration:__ @WL_SHM_FORMAT_R8@

    __defined at:__ @wayland-client-protocol.h 1760:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R8 :: Wl_shm_format
pattern WL_SHM_FORMAT_R8 = Wl_shm_format 538982482

{-| __C declaration:__ @WL_SHM_FORMAT_R16@

    __defined at:__ @wayland-client-protocol.h 1764:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R16 :: Wl_shm_format
pattern WL_SHM_FORMAT_R16 = Wl_shm_format 540422482

{-| __C declaration:__ @WL_SHM_FORMAT_RG88@

    __defined at:__ @wayland-client-protocol.h 1768:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RG88 :: Wl_shm_format
pattern WL_SHM_FORMAT_RG88 = Wl_shm_format 943212370

{-| __C declaration:__ @WL_SHM_FORMAT_GR88@

    __defined at:__ @wayland-client-protocol.h 1772:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_GR88 :: Wl_shm_format
pattern WL_SHM_FORMAT_GR88 = Wl_shm_format 943215175

{-| __C declaration:__ @WL_SHM_FORMAT_RG1616@

    __defined at:__ @wayland-client-protocol.h 1776:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RG1616 :: Wl_shm_format
pattern WL_SHM_FORMAT_RG1616 = Wl_shm_format 842221394

{-| __C declaration:__ @WL_SHM_FORMAT_GR1616@

    __defined at:__ @wayland-client-protocol.h 1780:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_GR1616 :: Wl_shm_format
pattern WL_SHM_FORMAT_GR1616 = Wl_shm_format 842224199

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB16161616F@

    __defined at:__ @wayland-client-protocol.h 1784:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB16161616F :: Wl_shm_format
pattern WL_SHM_FORMAT_XRGB16161616F = Wl_shm_format 1211388504

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR16161616F@

    __defined at:__ @wayland-client-protocol.h 1788:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR16161616F :: Wl_shm_format
pattern WL_SHM_FORMAT_XBGR16161616F = Wl_shm_format 1211384408

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB16161616F@

    __defined at:__ @wayland-client-protocol.h 1792:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB16161616F :: Wl_shm_format
pattern WL_SHM_FORMAT_ARGB16161616F = Wl_shm_format 1211388481

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR16161616F@

    __defined at:__ @wayland-client-protocol.h 1796:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR16161616F :: Wl_shm_format
pattern WL_SHM_FORMAT_ABGR16161616F = Wl_shm_format 1211384385

{-| __C declaration:__ @WL_SHM_FORMAT_XYUV8888@

    __defined at:__ @wayland-client-protocol.h 1800:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XYUV8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_XYUV8888 = Wl_shm_format 1448434008

{-| __C declaration:__ @WL_SHM_FORMAT_VUY888@

    __defined at:__ @wayland-client-protocol.h 1804:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_VUY888 :: Wl_shm_format
pattern WL_SHM_FORMAT_VUY888 = Wl_shm_format 875713878

{-| __C declaration:__ @WL_SHM_FORMAT_VUY101010@

    __defined at:__ @wayland-client-protocol.h 1808:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_VUY101010 :: Wl_shm_format
pattern WL_SHM_FORMAT_VUY101010 = Wl_shm_format 808670550

{-| __C declaration:__ @WL_SHM_FORMAT_Y210@

    __defined at:__ @wayland-client-protocol.h 1812:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y210 :: Wl_shm_format
pattern WL_SHM_FORMAT_Y210 = Wl_shm_format 808530521

{-| __C declaration:__ @WL_SHM_FORMAT_Y212@

    __defined at:__ @wayland-client-protocol.h 1816:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y212 :: Wl_shm_format
pattern WL_SHM_FORMAT_Y212 = Wl_shm_format 842084953

{-| __C declaration:__ @WL_SHM_FORMAT_Y216@

    __defined at:__ @wayland-client-protocol.h 1820:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y216 :: Wl_shm_format
pattern WL_SHM_FORMAT_Y216 = Wl_shm_format 909193817

{-| __C declaration:__ @WL_SHM_FORMAT_Y410@

    __defined at:__ @wayland-client-protocol.h 1824:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y410 :: Wl_shm_format
pattern WL_SHM_FORMAT_Y410 = Wl_shm_format 808531033

{-| __C declaration:__ @WL_SHM_FORMAT_Y412@

    __defined at:__ @wayland-client-protocol.h 1828:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y412 :: Wl_shm_format
pattern WL_SHM_FORMAT_Y412 = Wl_shm_format 842085465

{-| __C declaration:__ @WL_SHM_FORMAT_Y416@

    __defined at:__ @wayland-client-protocol.h 1832:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y416 :: Wl_shm_format
pattern WL_SHM_FORMAT_Y416 = Wl_shm_format 909194329

{-| __C declaration:__ @WL_SHM_FORMAT_XVYU2101010@

    __defined at:__ @wayland-client-protocol.h 1836:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XVYU2101010 :: Wl_shm_format
pattern WL_SHM_FORMAT_XVYU2101010 = Wl_shm_format 808670808

{-| __C declaration:__ @WL_SHM_FORMAT_XVYU12_16161616@

    __defined at:__ @wayland-client-protocol.h 1840:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XVYU12_16161616 :: Wl_shm_format
pattern WL_SHM_FORMAT_XVYU12_16161616 = Wl_shm_format 909334104

{-| __C declaration:__ @WL_SHM_FORMAT_XVYU16161616@

    __defined at:__ @wayland-client-protocol.h 1844:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XVYU16161616 :: Wl_shm_format
pattern WL_SHM_FORMAT_XVYU16161616 = Wl_shm_format 942954072

{-| __C declaration:__ @WL_SHM_FORMAT_Y0L0@

    __defined at:__ @wayland-client-protocol.h 1848:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y0L0 :: Wl_shm_format
pattern WL_SHM_FORMAT_Y0L0 = Wl_shm_format 810299481

{-| __C declaration:__ @WL_SHM_FORMAT_X0L0@

    __defined at:__ @wayland-client-protocol.h 1852:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_X0L0 :: Wl_shm_format
pattern WL_SHM_FORMAT_X0L0 = Wl_shm_format 810299480

{-| __C declaration:__ @WL_SHM_FORMAT_Y0L2@

    __defined at:__ @wayland-client-protocol.h 1856:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Y0L2 :: Wl_shm_format
pattern WL_SHM_FORMAT_Y0L2 = Wl_shm_format 843853913

{-| __C declaration:__ @WL_SHM_FORMAT_X0L2@

    __defined at:__ @wayland-client-protocol.h 1860:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_X0L2 :: Wl_shm_format
pattern WL_SHM_FORMAT_X0L2 = Wl_shm_format 843853912

{-| __C declaration:__ @WL_SHM_FORMAT_YUV420_8BIT@

    __defined at:__ @wayland-client-protocol.h 1861:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV420_8BIT :: Wl_shm_format
pattern WL_SHM_FORMAT_YUV420_8BIT = Wl_shm_format 942691673

{-| __C declaration:__ @WL_SHM_FORMAT_YUV420_10BIT@

    __defined at:__ @wayland-client-protocol.h 1862:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_YUV420_10BIT :: Wl_shm_format
pattern WL_SHM_FORMAT_YUV420_10BIT = Wl_shm_format 808539481

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB8888_A8@

    __defined at:__ @wayland-client-protocol.h 1863:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB8888_A8 :: Wl_shm_format
pattern WL_SHM_FORMAT_XRGB8888_A8 = Wl_shm_format 943805016

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR8888_A8@

    __defined at:__ @wayland-client-protocol.h 1864:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR8888_A8 :: Wl_shm_format
pattern WL_SHM_FORMAT_XBGR8888_A8 = Wl_shm_format 943800920

{-| __C declaration:__ @WL_SHM_FORMAT_RGBX8888_A8@

    __defined at:__ @wayland-client-protocol.h 1865:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGBX8888_A8 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGBX8888_A8 = Wl_shm_format 943806546

{-| __C declaration:__ @WL_SHM_FORMAT_BGRX8888_A8@

    __defined at:__ @wayland-client-protocol.h 1866:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGRX8888_A8 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGRX8888_A8 = Wl_shm_format 943806530

{-| __C declaration:__ @WL_SHM_FORMAT_RGB888_A8@

    __defined at:__ @wayland-client-protocol.h 1867:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB888_A8 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGB888_A8 = Wl_shm_format 943798354

{-| __C declaration:__ @WL_SHM_FORMAT_BGR888_A8@

    __defined at:__ @wayland-client-protocol.h 1868:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR888_A8 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGR888_A8 = Wl_shm_format 943798338

{-| __C declaration:__ @WL_SHM_FORMAT_RGB565_A8@

    __defined at:__ @wayland-client-protocol.h 1869:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_RGB565_A8 :: Wl_shm_format
pattern WL_SHM_FORMAT_RGB565_A8 = Wl_shm_format 943797586

{-| __C declaration:__ @WL_SHM_FORMAT_BGR565_A8@

    __defined at:__ @wayland-client-protocol.h 1870:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_BGR565_A8 :: Wl_shm_format
pattern WL_SHM_FORMAT_BGR565_A8 = Wl_shm_format 943797570

{-| __C declaration:__ @WL_SHM_FORMAT_NV24@

    __defined at:__ @wayland-client-protocol.h 1874:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV24 :: Wl_shm_format
pattern WL_SHM_FORMAT_NV24 = Wl_shm_format 875714126

{-| __C declaration:__ @WL_SHM_FORMAT_NV42@

    __defined at:__ @wayland-client-protocol.h 1878:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV42 :: Wl_shm_format
pattern WL_SHM_FORMAT_NV42 = Wl_shm_format 842290766

{-| __C declaration:__ @WL_SHM_FORMAT_P210@

    __defined at:__ @wayland-client-protocol.h 1882:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P210 :: Wl_shm_format
pattern WL_SHM_FORMAT_P210 = Wl_shm_format 808530512

{-| __C declaration:__ @WL_SHM_FORMAT_P010@

    __defined at:__ @wayland-client-protocol.h 1886:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P010 :: Wl_shm_format
pattern WL_SHM_FORMAT_P010 = Wl_shm_format 808530000

{-| __C declaration:__ @WL_SHM_FORMAT_P012@

    __defined at:__ @wayland-client-protocol.h 1890:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P012 :: Wl_shm_format
pattern WL_SHM_FORMAT_P012 = Wl_shm_format 842084432

{-| __C declaration:__ @WL_SHM_FORMAT_P016@

    __defined at:__ @wayland-client-protocol.h 1894:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P016 :: Wl_shm_format
pattern WL_SHM_FORMAT_P016 = Wl_shm_format 909193296

{-| __C declaration:__ @WL_SHM_FORMAT_AXBXGXRX106106106106@

    __defined at:__ @wayland-client-protocol.h 1898:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_AXBXGXRX106106106106 :: Wl_shm_format
pattern WL_SHM_FORMAT_AXBXGXRX106106106106 = Wl_shm_format 808534593

{-| __C declaration:__ @WL_SHM_FORMAT_NV15@

    __defined at:__ @wayland-client-protocol.h 1902:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_NV15 :: Wl_shm_format
pattern WL_SHM_FORMAT_NV15 = Wl_shm_format 892425806

{-| __C declaration:__ @WL_SHM_FORMAT_Q410@

    __defined at:__ @wayland-client-protocol.h 1903:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Q410 :: Wl_shm_format
pattern WL_SHM_FORMAT_Q410 = Wl_shm_format 808531025

{-| __C declaration:__ @WL_SHM_FORMAT_Q401@

    __defined at:__ @wayland-client-protocol.h 1904:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_Q401 :: Wl_shm_format
pattern WL_SHM_FORMAT_Q401 = Wl_shm_format 825242705

{-| __C declaration:__ @WL_SHM_FORMAT_XRGB16161616@

    __defined at:__ @wayland-client-protocol.h 1908:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XRGB16161616 :: Wl_shm_format
pattern WL_SHM_FORMAT_XRGB16161616 = Wl_shm_format 942953048

{-| __C declaration:__ @WL_SHM_FORMAT_XBGR16161616@

    __defined at:__ @wayland-client-protocol.h 1912:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XBGR16161616 :: Wl_shm_format
pattern WL_SHM_FORMAT_XBGR16161616 = Wl_shm_format 942948952

{-| __C declaration:__ @WL_SHM_FORMAT_ARGB16161616@

    __defined at:__ @wayland-client-protocol.h 1916:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ARGB16161616 :: Wl_shm_format
pattern WL_SHM_FORMAT_ARGB16161616 = Wl_shm_format 942953025

{-| __C declaration:__ @WL_SHM_FORMAT_ABGR16161616@

    __defined at:__ @wayland-client-protocol.h 1920:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_ABGR16161616 :: Wl_shm_format
pattern WL_SHM_FORMAT_ABGR16161616 = Wl_shm_format 942948929

{-| __C declaration:__ @WL_SHM_FORMAT_C1@

    __defined at:__ @wayland-client-protocol.h 1924:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_C1 :: Wl_shm_format
pattern WL_SHM_FORMAT_C1 = Wl_shm_format 538980675

{-| __C declaration:__ @WL_SHM_FORMAT_C2@

    __defined at:__ @wayland-client-protocol.h 1928:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_C2 :: Wl_shm_format
pattern WL_SHM_FORMAT_C2 = Wl_shm_format 538980931

{-| __C declaration:__ @WL_SHM_FORMAT_C4@

    __defined at:__ @wayland-client-protocol.h 1932:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_C4 :: Wl_shm_format
pattern WL_SHM_FORMAT_C4 = Wl_shm_format 538981443

{-| __C declaration:__ @WL_SHM_FORMAT_D1@

    __defined at:__ @wayland-client-protocol.h 1936:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_D1 :: Wl_shm_format
pattern WL_SHM_FORMAT_D1 = Wl_shm_format 538980676

{-| __C declaration:__ @WL_SHM_FORMAT_D2@

    __defined at:__ @wayland-client-protocol.h 1940:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_D2 :: Wl_shm_format
pattern WL_SHM_FORMAT_D2 = Wl_shm_format 538980932

{-| __C declaration:__ @WL_SHM_FORMAT_D4@

    __defined at:__ @wayland-client-protocol.h 1944:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_D4 :: Wl_shm_format
pattern WL_SHM_FORMAT_D4 = Wl_shm_format 538981444

{-| __C declaration:__ @WL_SHM_FORMAT_D8@

    __defined at:__ @wayland-client-protocol.h 1948:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_D8 :: Wl_shm_format
pattern WL_SHM_FORMAT_D8 = Wl_shm_format 538982468

{-| __C declaration:__ @WL_SHM_FORMAT_R1@

    __defined at:__ @wayland-client-protocol.h 1952:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R1 :: Wl_shm_format
pattern WL_SHM_FORMAT_R1 = Wl_shm_format 538980690

{-| __C declaration:__ @WL_SHM_FORMAT_R2@

    __defined at:__ @wayland-client-protocol.h 1956:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R2 :: Wl_shm_format
pattern WL_SHM_FORMAT_R2 = Wl_shm_format 538980946

{-| __C declaration:__ @WL_SHM_FORMAT_R4@

    __defined at:__ @wayland-client-protocol.h 1960:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R4 :: Wl_shm_format
pattern WL_SHM_FORMAT_R4 = Wl_shm_format 538981458

{-| __C declaration:__ @WL_SHM_FORMAT_R10@

    __defined at:__ @wayland-client-protocol.h 1964:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R10 :: Wl_shm_format
pattern WL_SHM_FORMAT_R10 = Wl_shm_format 540029266

{-| __C declaration:__ @WL_SHM_FORMAT_R12@

    __defined at:__ @wayland-client-protocol.h 1968:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_R12 :: Wl_shm_format
pattern WL_SHM_FORMAT_R12 = Wl_shm_format 540160338

{-| __C declaration:__ @WL_SHM_FORMAT_AVUY8888@

    __defined at:__ @wayland-client-protocol.h 1972:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_AVUY8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_AVUY8888 = Wl_shm_format 1498764865

{-| __C declaration:__ @WL_SHM_FORMAT_XVUY8888@

    __defined at:__ @wayland-client-protocol.h 1976:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_XVUY8888 :: Wl_shm_format
pattern WL_SHM_FORMAT_XVUY8888 = Wl_shm_format 1498764888

{-| __C declaration:__ @WL_SHM_FORMAT_P030@

    __defined at:__ @wayland-client-protocol.h 1980:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHM_FORMAT_P030 :: Wl_shm_format
pattern WL_SHM_FORMAT_P030 = Wl_shm_format 808661072

{-| __C declaration:__ @struct wl_shm_listener@

    __defined at:__ @wayland-client-protocol.h 1988:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_shm_listener = Wl_shm_listener
  { format :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @format@

         __defined at:__ @wayland-client-protocol.h 1996:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_shm_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_shm_listener where

  readRaw =
    \ptr0 ->
          pure Wl_shm_listener
      <*> HasCField.readRaw (RIP.Proxy @"format") ptr0

instance Marshal.WriteRaw Wl_shm_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_shm_listener format2 ->
            HasCField.writeRaw (RIP.Proxy @"format") ptr0 format2

deriving via Marshal.EquivStorable Wl_shm_listener instance RIP.Storable Wl_shm_listener

instance HasCField.HasCField Wl_shm_listener "format" where

  type CFieldType Wl_shm_listener "format" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "format" (RIP.Ptr Wl_shm_listener) (RIP.Ptr ty) where

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
data Wl_buffer_listener = Wl_buffer_listener
  { release :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ())
    {- ^ __C declaration:__ @release@

         __defined at:__ @wayland-client-protocol.h 2114:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_buffer_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_buffer_listener where

  readRaw =
    \ptr0 ->
          pure Wl_buffer_listener
      <*> HasCField.readRaw (RIP.Proxy @"release") ptr0

instance Marshal.WriteRaw Wl_buffer_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_buffer_listener release2 ->
            HasCField.writeRaw (RIP.Proxy @"release") ptr0 release2

deriving via Marshal.EquivStorable Wl_buffer_listener instance RIP.Storable Wl_buffer_listener

instance HasCField.HasCField Wl_buffer_listener "release" where

  type CFieldType Wl_buffer_listener "release" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ()))
         ) => RIP.HasField "release" (RIP.Ptr Wl_buffer_listener) (RIP.Ptr ty) where

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
newtype Wl_data_offer_error = Wl_data_offer_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_data_offer_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_data_offer_error where

  readRaw =
    \ptr0 ->
          pure Wl_data_offer_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_data_offer_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_data_offer_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_data_offer_error instance RIP.Storable Wl_data_offer_error

deriving via RIP.CUInt instance RIP.Prim Wl_data_offer_error

instance CEnum.CEnum Wl_data_offer_error where

  type CEnumZ Wl_data_offer_error = RIP.CUInt

  toCEnum = Wl_data_offer_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DATA_OFFER_ERROR_INVALID_FINISH")
                                   , (1, RIP.singleton "WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK")
                                   , (2, RIP.singleton "WL_DATA_OFFER_ERROR_INVALID_ACTION")
                                   , (3, RIP.singleton "WL_DATA_OFFER_ERROR_INVALID_OFFER")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_data_offer_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_data_offer_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_data_offer_error where

  minDeclaredValue = WL_DATA_OFFER_ERROR_INVALID_FINISH

  maxDeclaredValue = WL_DATA_OFFER_ERROR_INVALID_OFFER

instance Show Wl_data_offer_error where

  showsPrec = CEnum.shows

instance Read Wl_data_offer_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_data_offer_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_data_offer_error "unwrap" where

  type CFieldType Wl_data_offer_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DATA_OFFER_ERROR_INVALID_FINISH@

    __defined at:__ @wayland-client-protocol.h 2182:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_OFFER_ERROR_INVALID_FINISH :: Wl_data_offer_error
pattern WL_DATA_OFFER_ERROR_INVALID_FINISH = Wl_data_offer_error 0

{-| __C declaration:__ @WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK@

    __defined at:__ @wayland-client-protocol.h 2186:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK :: Wl_data_offer_error
pattern WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK = Wl_data_offer_error 1

{-| __C declaration:__ @WL_DATA_OFFER_ERROR_INVALID_ACTION@

    __defined at:__ @wayland-client-protocol.h 2190:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_OFFER_ERROR_INVALID_ACTION :: Wl_data_offer_error
pattern WL_DATA_OFFER_ERROR_INVALID_ACTION = Wl_data_offer_error 2

{-| __C declaration:__ @WL_DATA_OFFER_ERROR_INVALID_OFFER@

    __defined at:__ @wayland-client-protocol.h 2194:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_OFFER_ERROR_INVALID_OFFER :: Wl_data_offer_error
pattern WL_DATA_OFFER_ERROR_INVALID_OFFER = Wl_data_offer_error 3

{-| __C declaration:__ @struct wl_data_offer_listener@

    __defined at:__ @wayland-client-protocol.h 2202:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_data_offer_listener = Wl_data_offer_listener
  { offer :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @offer@

         __defined at:__ @wayland-client-protocol.h 2210:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , source_actions :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @source_actions@

         __defined at:__ @wayland-client-protocol.h 2223:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , action :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @action@

         __defined at:__ @wayland-client-protocol.h 2269:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_data_offer_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_data_offer_listener where

  readRaw =
    \ptr0 ->
          pure Wl_data_offer_listener
      <*> HasCField.readRaw (RIP.Proxy @"offer") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"source_actions") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"action") ptr0

instance Marshal.WriteRaw Wl_data_offer_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_data_offer_listener offer2 source_actions3 action4 ->
               HasCField.writeRaw (RIP.Proxy @"offer") ptr0 offer2
            >> HasCField.writeRaw (RIP.Proxy @"source_actions") ptr0 source_actions3
            >> HasCField.writeRaw (RIP.Proxy @"action") ptr0 action4

deriving via Marshal.EquivStorable Wl_data_offer_listener instance RIP.Storable Wl_data_offer_listener

instance HasCField.HasCField Wl_data_offer_listener "offer" where

  type CFieldType Wl_data_offer_listener "offer" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "offer" (RIP.Ptr Wl_data_offer_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"offer")

instance HasCField.HasCField Wl_data_offer_listener "source_actions" where

  type CFieldType Wl_data_offer_listener "source_actions" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "source_actions" (RIP.Ptr Wl_data_offer_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"source_actions")

instance HasCField.HasCField Wl_data_offer_listener "action" where

  type CFieldType Wl_data_offer_listener "action" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "action" (RIP.Ptr Wl_data_offer_listener) (RIP.Ptr ty) where

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
newtype Wl_data_source_error = Wl_data_source_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_data_source_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_data_source_error where

  readRaw =
    \ptr0 ->
          pure Wl_data_source_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_data_source_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_data_source_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_data_source_error instance RIP.Storable Wl_data_source_error

deriving via RIP.CUInt instance RIP.Prim Wl_data_source_error

instance CEnum.CEnum Wl_data_source_error where

  type CEnumZ Wl_data_source_error = RIP.CUInt

  toCEnum = Wl_data_source_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK")
                                   , (1, RIP.singleton "WL_DATA_SOURCE_ERROR_INVALID_SOURCE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_data_source_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_data_source_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_data_source_error where

  minDeclaredValue =
    WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK

  maxDeclaredValue =
    WL_DATA_SOURCE_ERROR_INVALID_SOURCE

instance Show Wl_data_source_error where

  showsPrec = CEnum.shows

instance Read Wl_data_source_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_data_source_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_data_source_error "unwrap" where

  type CFieldType Wl_data_source_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK@

    __defined at:__ @wayland-client-protocol.h 2481:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK :: Wl_data_source_error
pattern WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK = Wl_data_source_error 0

{-| __C declaration:__ @WL_DATA_SOURCE_ERROR_INVALID_SOURCE@

    __defined at:__ @wayland-client-protocol.h 2485:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_SOURCE_ERROR_INVALID_SOURCE :: Wl_data_source_error
pattern WL_DATA_SOURCE_ERROR_INVALID_SOURCE = Wl_data_source_error 1

{-| __C declaration:__ @struct wl_data_source_listener@

    __defined at:__ @wayland-client-protocol.h 2493:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_data_source_listener = Wl_data_source_listener
  { target :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @target@

         __defined at:__ @wayland-client-protocol.h 2503:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , send :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @send@

         __defined at:__ @wayland-client-protocol.h 2515:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , cancelled :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())
    {- ^ __C declaration:__ @cancelled@

         __defined at:__ @wayland-client-protocol.h 2542:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , dnd_drop_performed :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())
    {- ^ __C declaration:__ @dnd_drop_performed@

         __defined at:__ @wayland-client-protocol.h 2560:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , dnd_finished :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())
    {- ^ __C declaration:__ @dnd_finished@

         __defined at:__ @wayland-client-protocol.h 2573:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , action :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @action@

         __defined at:__ @wayland-client-protocol.h 2608:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_data_source_listener where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_data_source_listener where

  readRaw =
    \ptr0 ->
          pure Wl_data_source_listener
      <*> HasCField.readRaw (RIP.Proxy @"target") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"send") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"cancelled") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dnd_drop_performed") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"dnd_finished") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"action") ptr0

instance Marshal.WriteRaw Wl_data_source_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_data_source_listener
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

deriving via Marshal.EquivStorable Wl_data_source_listener instance RIP.Storable Wl_data_source_listener

instance HasCField.HasCField Wl_data_source_listener "target" where

  type CFieldType Wl_data_source_listener "target" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "target" (RIP.Ptr Wl_data_source_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"target")

instance HasCField.HasCField Wl_data_source_listener "send" where

  type CFieldType Wl_data_source_listener "send" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "send" (RIP.Ptr Wl_data_source_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"send")

instance HasCField.HasCField Wl_data_source_listener "cancelled" where

  type CFieldType Wl_data_source_listener "cancelled" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ()))
         ) => RIP.HasField "cancelled" (RIP.Ptr Wl_data_source_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"cancelled")

instance HasCField.HasCField Wl_data_source_listener "dnd_drop_performed" where

  type CFieldType Wl_data_source_listener "dnd_drop_performed" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ()))
         ) => RIP.HasField "dnd_drop_performed" (RIP.Ptr Wl_data_source_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dnd_drop_performed")

instance HasCField.HasCField Wl_data_source_listener "dnd_finished" where

  type CFieldType Wl_data_source_listener "dnd_finished" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ()))
         ) => RIP.HasField "dnd_finished" (RIP.Ptr Wl_data_source_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"dnd_finished")

instance HasCField.HasCField Wl_data_source_listener "action" where

  type CFieldType Wl_data_source_listener "action" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "action" (RIP.Ptr Wl_data_source_listener) (RIP.Ptr ty) where

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
newtype Wl_data_device_error = Wl_data_device_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_data_device_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_data_device_error where

  readRaw =
    \ptr0 ->
          pure Wl_data_device_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_data_device_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_data_device_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_data_device_error instance RIP.Storable Wl_data_device_error

deriving via RIP.CUInt instance RIP.Prim Wl_data_device_error

instance CEnum.CEnum Wl_data_device_error where

  type CEnumZ Wl_data_device_error = RIP.CUInt

  toCEnum = Wl_data_device_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DATA_DEVICE_ERROR_ROLE")
                                   , (1, RIP.singleton "WL_DATA_DEVICE_ERROR_USED_SOURCE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_data_device_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_data_device_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_data_device_error where

  minDeclaredValue = WL_DATA_DEVICE_ERROR_ROLE

  maxDeclaredValue = WL_DATA_DEVICE_ERROR_USED_SOURCE

instance Show Wl_data_device_error where

  showsPrec = CEnum.shows

instance Read Wl_data_device_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_data_device_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_data_device_error "unwrap" where

  type CFieldType Wl_data_device_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DATA_DEVICE_ERROR_ROLE@

    __defined at:__ @wayland-client-protocol.h 2742:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_ERROR_ROLE :: Wl_data_device_error
pattern WL_DATA_DEVICE_ERROR_ROLE = Wl_data_device_error 0

{-| __C declaration:__ @WL_DATA_DEVICE_ERROR_USED_SOURCE@

    __defined at:__ @wayland-client-protocol.h 2746:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_ERROR_USED_SOURCE :: Wl_data_device_error
pattern WL_DATA_DEVICE_ERROR_USED_SOURCE = Wl_data_device_error 1

{-| __C declaration:__ @struct wl_data_device_listener@

    __defined at:__ @wayland-client-protocol.h 2754:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_data_device_listener = Wl_data_device_listener
  { data_offer :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ())
    {- ^ __C declaration:__ @data_offer@

         __defined at:__ @wayland-client-protocol.h 2767:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ())
    {- ^ __C declaration:__ @enter@

         __defined at:__ @wayland-client-protocol.h 2783:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ())
    {- ^ __C declaration:__ @leave@

         __defined at:__ @wayland-client-protocol.h 2797:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , motion :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @motion@

         __defined at:__ @wayland-client-protocol.h 2810:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , drop :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ())
    {- ^ __C declaration:__ @drop@

         __defined at:__ @wayland-client-protocol.h 2832:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , selection :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ())
    {- ^ __C declaration:__ @selection@

         __defined at:__ @wayland-client-protocol.h 2851:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_data_device_listener where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_data_device_listener where

  readRaw =
    \ptr0 ->
          pure Wl_data_device_listener
      <*> HasCField.readRaw (RIP.Proxy @"data_offer") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"enter") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"leave") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"motion") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"drop") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"selection") ptr0

instance Marshal.WriteRaw Wl_data_device_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_data_device_listener data_offer2 enter3 leave4 motion5 drop6 selection7 ->
               HasCField.writeRaw (RIP.Proxy @"data_offer") ptr0 data_offer2
            >> HasCField.writeRaw (RIP.Proxy @"enter") ptr0 enter3
            >> HasCField.writeRaw (RIP.Proxy @"leave") ptr0 leave4
            >> HasCField.writeRaw (RIP.Proxy @"motion") ptr0 motion5
            >> HasCField.writeRaw (RIP.Proxy @"drop") ptr0 drop6
            >> HasCField.writeRaw (RIP.Proxy @"selection") ptr0 selection7

deriving via Marshal.EquivStorable Wl_data_device_listener instance RIP.Storable Wl_data_device_listener

instance HasCField.HasCField Wl_data_device_listener "data_offer" where

  type CFieldType Wl_data_device_listener "data_offer" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ()))
         ) => RIP.HasField "data_offer" (RIP.Ptr Wl_data_device_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"data_offer")

instance HasCField.HasCField Wl_data_device_listener "enter" where

  type CFieldType Wl_data_device_listener "enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ()))
         ) => RIP.HasField "enter" (RIP.Ptr Wl_data_device_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enter")

instance HasCField.HasCField Wl_data_device_listener "leave" where

  type CFieldType Wl_data_device_listener "leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ()))
         ) => RIP.HasField "leave" (RIP.Ptr Wl_data_device_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"leave")

instance HasCField.HasCField Wl_data_device_listener "motion" where

  type CFieldType Wl_data_device_listener "motion" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "motion" (RIP.Ptr Wl_data_device_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"motion")

instance HasCField.HasCField Wl_data_device_listener "drop" where

  type CFieldType Wl_data_device_listener "drop" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ()))
         ) => RIP.HasField "drop" (RIP.Ptr Wl_data_device_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"drop")

instance HasCField.HasCField Wl_data_device_listener "selection" where

  type CFieldType Wl_data_device_listener "selection" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ()))
         ) => RIP.HasField "selection" (RIP.Ptr Wl_data_device_listener) (RIP.Ptr ty) where

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
newtype Wl_data_device_manager_dnd_action = Wl_data_device_manager_dnd_action
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_data_device_manager_dnd_action where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_data_device_manager_dnd_action where

  readRaw =
    \ptr0 ->
          pure Wl_data_device_manager_dnd_action
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_data_device_manager_dnd_action where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_data_device_manager_dnd_action unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_data_device_manager_dnd_action instance RIP.Storable Wl_data_device_manager_dnd_action

deriving via RIP.CUInt instance RIP.Prim Wl_data_device_manager_dnd_action

instance CEnum.CEnum Wl_data_device_manager_dnd_action where

  type CEnumZ Wl_data_device_manager_dnd_action =
    RIP.CUInt

  toCEnum = Wl_data_device_manager_dnd_action

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE")
                                   , (1, RIP.singleton "WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY")
                                   , (2, RIP.singleton "WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE")
                                   , (4, RIP.singleton "WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_data_device_manager_dnd_action"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_data_device_manager_dnd_action"

instance Show Wl_data_device_manager_dnd_action where

  showsPrec = CEnum.shows

instance Read Wl_data_device_manager_dnd_action where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_data_device_manager_dnd_action) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_data_device_manager_dnd_action "unwrap" where

  type CFieldType Wl_data_device_manager_dnd_action "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE@

    __defined at:__ @wayland-client-protocol.h 3041:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE :: Wl_data_device_manager_dnd_action
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE = Wl_data_device_manager_dnd_action 0

{-| __C declaration:__ @WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY@

    __defined at:__ @wayland-client-protocol.h 3045:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY :: Wl_data_device_manager_dnd_action
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY = Wl_data_device_manager_dnd_action 1

{-| __C declaration:__ @WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE@

    __defined at:__ @wayland-client-protocol.h 3049:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE :: Wl_data_device_manager_dnd_action
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE = Wl_data_device_manager_dnd_action 2

{-| __C declaration:__ @WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK@

    __defined at:__ @wayland-client-protocol.h 3053:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK :: Wl_data_device_manager_dnd_action
pattern WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK = Wl_data_device_manager_dnd_action 4

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
newtype Wl_shell_error = Wl_shell_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_shell_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_shell_error where

  readRaw =
    \ptr0 ->
          pure Wl_shell_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_shell_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_shell_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_shell_error instance RIP.Storable Wl_shell_error

deriving via RIP.CUInt instance RIP.Prim Wl_shell_error

instance CEnum.CEnum Wl_shell_error where

  type CEnumZ Wl_shell_error = RIP.CUInt

  toCEnum = Wl_shell_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WL_SHELL_ERROR_ROLE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_shell_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_shell_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_shell_error where

  minDeclaredValue = WL_SHELL_ERROR_ROLE

  maxDeclaredValue = WL_SHELL_ERROR_ROLE

instance Show Wl_shell_error where

  showsPrec = CEnum.shows

instance Read Wl_shell_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_shell_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_shell_error "unwrap" where

  type CFieldType Wl_shell_error "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHELL_ERROR_ROLE@

    __defined at:__ @wayland-client-protocol.h 3135:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_ERROR_ROLE :: Wl_shell_error
pattern WL_SHELL_ERROR_ROLE = Wl_shell_error 0

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
newtype Wl_shell_surface_resize = Wl_shell_surface_resize
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_shell_surface_resize where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_shell_surface_resize where

  readRaw =
    \ptr0 ->
          pure Wl_shell_surface_resize
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_shell_surface_resize where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_shell_surface_resize unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_shell_surface_resize instance RIP.Storable Wl_shell_surface_resize

deriving via RIP.CUInt instance RIP.Prim Wl_shell_surface_resize

instance CEnum.CEnum Wl_shell_surface_resize where

  type CEnumZ Wl_shell_surface_resize = RIP.CUInt

  toCEnum = Wl_shell_surface_resize

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
    CEnum.showsWrappedUndeclared "Wl_shell_surface_resize"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_shell_surface_resize"

instance Show Wl_shell_surface_resize where

  showsPrec = CEnum.shows

instance Read Wl_shell_surface_resize where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_shell_surface_resize) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_shell_surface_resize "unwrap" where

  type CFieldType Wl_shell_surface_resize "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_NONE@

    __defined at:__ @wayland-client-protocol.h 3209:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_NONE :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_NONE = Wl_shell_surface_resize 0

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_TOP@

    __defined at:__ @wayland-client-protocol.h 3213:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_TOP :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_TOP = Wl_shell_surface_resize 1

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_BOTTOM@

    __defined at:__ @wayland-client-protocol.h 3217:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM = Wl_shell_surface_resize 2

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_LEFT@

    __defined at:__ @wayland-client-protocol.h 3221:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_LEFT :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_LEFT = Wl_shell_surface_resize 4

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_TOP_LEFT@

    __defined at:__ @wayland-client-protocol.h 3225:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_TOP_LEFT :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_TOP_LEFT = Wl_shell_surface_resize 5

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT@

    __defined at:__ @wayland-client-protocol.h 3229:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT = Wl_shell_surface_resize 6

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_RIGHT@

    __defined at:__ @wayland-client-protocol.h 3233:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_RIGHT :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_RIGHT = Wl_shell_surface_resize 8

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_TOP_RIGHT@

    __defined at:__ @wayland-client-protocol.h 3237:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_TOP_RIGHT :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_TOP_RIGHT = Wl_shell_surface_resize 9

{-| __C declaration:__ @WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT@

    __defined at:__ @wayland-client-protocol.h 3241:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT :: Wl_shell_surface_resize
pattern WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT = Wl_shell_surface_resize 10

{-| __C declaration:__ @enum wl_shell_surface_transient@

    __defined at:__ @wayland-client-protocol.h 3254:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_shell_surface_transient = Wl_shell_surface_transient
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_shell_surface_transient where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_shell_surface_transient where

  readRaw =
    \ptr0 ->
          pure Wl_shell_surface_transient
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_shell_surface_transient where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_shell_surface_transient unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_shell_surface_transient instance RIP.Storable Wl_shell_surface_transient

deriving via RIP.CUInt instance RIP.Prim Wl_shell_surface_transient

instance CEnum.CEnum Wl_shell_surface_transient where

  type CEnumZ Wl_shell_surface_transient = RIP.CUInt

  toCEnum = Wl_shell_surface_transient

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(1, RIP.singleton "WL_SHELL_SURFACE_TRANSIENT_INACTIVE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_shell_surface_transient"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_shell_surface_transient"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_shell_surface_transient where

  minDeclaredValue =
    WL_SHELL_SURFACE_TRANSIENT_INACTIVE

  maxDeclaredValue =
    WL_SHELL_SURFACE_TRANSIENT_INACTIVE

instance Show Wl_shell_surface_transient where

  showsPrec = CEnum.shows

instance Read Wl_shell_surface_transient where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_shell_surface_transient) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_shell_surface_transient "unwrap" where

  type CFieldType Wl_shell_surface_transient "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHELL_SURFACE_TRANSIENT_INACTIVE@

    __defined at:__ @wayland-client-protocol.h 3258:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_TRANSIENT_INACTIVE :: Wl_shell_surface_transient
pattern WL_SHELL_SURFACE_TRANSIENT_INACTIVE = Wl_shell_surface_transient 1

{-| __C declaration:__ @enum wl_shell_surface_fullscreen_method@

    __defined at:__ @wayland-client-protocol.h 3272:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_shell_surface_fullscreen_method = Wl_shell_surface_fullscreen_method
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_shell_surface_fullscreen_method where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_shell_surface_fullscreen_method where

  readRaw =
    \ptr0 ->
          pure Wl_shell_surface_fullscreen_method
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_shell_surface_fullscreen_method where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_shell_surface_fullscreen_method unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_shell_surface_fullscreen_method instance RIP.Storable Wl_shell_surface_fullscreen_method

deriving via RIP.CUInt instance RIP.Prim Wl_shell_surface_fullscreen_method

instance CEnum.CEnum Wl_shell_surface_fullscreen_method where

  type CEnumZ Wl_shell_surface_fullscreen_method =
    RIP.CUInt

  toCEnum = Wl_shell_surface_fullscreen_method

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT")
                                   , (1, RIP.singleton "WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE")
                                   , (2, RIP.singleton "WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER")
                                   , (3, RIP.singleton "WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_shell_surface_fullscreen_method"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_shell_surface_fullscreen_method"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_shell_surface_fullscreen_method where

  minDeclaredValue =
    WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT

  maxDeclaredValue =
    WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL

instance Show Wl_shell_surface_fullscreen_method where

  showsPrec = CEnum.shows

instance Read Wl_shell_surface_fullscreen_method where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_shell_surface_fullscreen_method) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_shell_surface_fullscreen_method "unwrap" where

  type CFieldType Wl_shell_surface_fullscreen_method "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT@

    __defined at:__ @wayland-client-protocol.h 3276:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT :: Wl_shell_surface_fullscreen_method
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT = Wl_shell_surface_fullscreen_method 0

{-| __C declaration:__ @WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE@

    __defined at:__ @wayland-client-protocol.h 3280:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE :: Wl_shell_surface_fullscreen_method
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE = Wl_shell_surface_fullscreen_method 1

{-| __C declaration:__ @WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER@

    __defined at:__ @wayland-client-protocol.h 3284:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER :: Wl_shell_surface_fullscreen_method
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER = Wl_shell_surface_fullscreen_method 2

{-| __C declaration:__ @WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL@

    __defined at:__ @wayland-client-protocol.h 3288:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL :: Wl_shell_surface_fullscreen_method
pattern WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL = Wl_shell_surface_fullscreen_method 3

{-| __C declaration:__ @struct wl_shell_surface_listener@

    __defined at:__ @wayland-client-protocol.h 3296:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_shell_surface_listener = Wl_shell_surface_listener
  { ping :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @ping@

         __defined at:__ @wayland-client-protocol.h 3304:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , configure :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @configure@

         __defined at:__ @wayland-client-protocol.h 3331:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , popup_done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ())
    {- ^ __C declaration:__ @popup_done@

         __defined at:__ @wayland-client-protocol.h 3343:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_shell_surface_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_shell_surface_listener where

  readRaw =
    \ptr0 ->
          pure Wl_shell_surface_listener
      <*> HasCField.readRaw (RIP.Proxy @"ping") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"configure") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"popup_done") ptr0

instance Marshal.WriteRaw Wl_shell_surface_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_shell_surface_listener ping2 configure3 popup_done4 ->
               HasCField.writeRaw (RIP.Proxy @"ping") ptr0 ping2
            >> HasCField.writeRaw (RIP.Proxy @"configure") ptr0 configure3
            >> HasCField.writeRaw (RIP.Proxy @"popup_done") ptr0 popup_done4

deriving via Marshal.EquivStorable Wl_shell_surface_listener instance RIP.Storable Wl_shell_surface_listener

instance HasCField.HasCField Wl_shell_surface_listener "ping" where

  type CFieldType Wl_shell_surface_listener "ping" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "ping" (RIP.Ptr Wl_shell_surface_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"ping")

instance HasCField.HasCField Wl_shell_surface_listener "configure" where

  type CFieldType Wl_shell_surface_listener "configure" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "configure" (RIP.Ptr Wl_shell_surface_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"configure")

instance HasCField.HasCField Wl_shell_surface_listener "popup_done" where

  type CFieldType Wl_shell_surface_listener "popup_done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ()))
         ) => RIP.HasField "popup_done" (RIP.Ptr Wl_shell_surface_listener) (RIP.Ptr ty) where

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
newtype Wl_surface_error = Wl_surface_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_surface_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_surface_error where

  readRaw =
    \ptr0 ->
          pure Wl_surface_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_surface_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_surface_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_surface_error instance RIP.Storable Wl_surface_error

deriving via RIP.CUInt instance RIP.Prim Wl_surface_error

instance CEnum.CEnum Wl_surface_error where

  type CEnumZ Wl_surface_error = RIP.CUInt

  toCEnum = Wl_surface_error

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
    CEnum.showsWrappedUndeclared "Wl_surface_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_surface_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_surface_error where

  minDeclaredValue = WL_SURFACE_ERROR_INVALID_SCALE

  maxDeclaredValue =
    WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT

instance Show Wl_surface_error where

  showsPrec = CEnum.shows

instance Read Wl_surface_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_surface_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_surface_error "unwrap" where

  type CFieldType Wl_surface_error "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SURFACE_ERROR_INVALID_SCALE@

    __defined at:__ @wayland-client-protocol.h 3677:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_INVALID_SCALE :: Wl_surface_error
pattern WL_SURFACE_ERROR_INVALID_SCALE = Wl_surface_error 0

{-| __C declaration:__ @WL_SURFACE_ERROR_INVALID_TRANSFORM@

    __defined at:__ @wayland-client-protocol.h 3681:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_INVALID_TRANSFORM :: Wl_surface_error
pattern WL_SURFACE_ERROR_INVALID_TRANSFORM = Wl_surface_error 1

{-| __C declaration:__ @WL_SURFACE_ERROR_INVALID_SIZE@

    __defined at:__ @wayland-client-protocol.h 3685:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_INVALID_SIZE :: Wl_surface_error
pattern WL_SURFACE_ERROR_INVALID_SIZE = Wl_surface_error 2

{-| __C declaration:__ @WL_SURFACE_ERROR_INVALID_OFFSET@

    __defined at:__ @wayland-client-protocol.h 3689:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_INVALID_OFFSET :: Wl_surface_error
pattern WL_SURFACE_ERROR_INVALID_OFFSET = Wl_surface_error 3

{-| __C declaration:__ @WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT@

    __defined at:__ @wayland-client-protocol.h 3693:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT :: Wl_surface_error
pattern WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT = Wl_surface_error 4

{-| __C declaration:__ @struct wl_surface_listener@

    __defined at:__ @wayland-client-protocol.h 3701:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_surface_listener = Wl_surface_listener
  { enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ())
    {- ^ __C declaration:__ @enter@

         __defined at:__ @wayland-client-protocol.h 3713:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ())
    {- ^ __C declaration:__ @leave@

         __defined at:__ @wayland-client-protocol.h 3730:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , preferred_buffer_scale :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @preferred_buffer_scale@

         __defined at:__ @wayland-client-protocol.h 3752:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , preferred_buffer_transform :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @preferred_buffer_transform@

         __defined at:__ @wayland-client-protocol.h 3771:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_surface_listener where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_surface_listener where

  readRaw =
    \ptr0 ->
          pure Wl_surface_listener
      <*> HasCField.readRaw (RIP.Proxy @"enter") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"leave") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"preferred_buffer_scale") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"preferred_buffer_transform") ptr0

instance Marshal.WriteRaw Wl_surface_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_surface_listener
            enter2
            leave3
            preferred_buffer_scale4
            preferred_buffer_transform5 ->
                 HasCField.writeRaw (RIP.Proxy @"enter") ptr0 enter2
              >> HasCField.writeRaw (RIP.Proxy @"leave") ptr0 leave3
              >> HasCField.writeRaw (RIP.Proxy @"preferred_buffer_scale") ptr0 preferred_buffer_scale4
              >> HasCField.writeRaw (RIP.Proxy @"preferred_buffer_transform") ptr0 preferred_buffer_transform5

deriving via Marshal.EquivStorable Wl_surface_listener instance RIP.Storable Wl_surface_listener

instance HasCField.HasCField Wl_surface_listener "enter" where

  type CFieldType Wl_surface_listener "enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ()))
         ) => RIP.HasField "enter" (RIP.Ptr Wl_surface_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enter")

instance HasCField.HasCField Wl_surface_listener "leave" where

  type CFieldType Wl_surface_listener "leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ()))
         ) => RIP.HasField "leave" (RIP.Ptr Wl_surface_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"leave")

instance HasCField.HasCField Wl_surface_listener "preferred_buffer_scale" where

  type CFieldType Wl_surface_listener "preferred_buffer_scale" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "preferred_buffer_scale" (RIP.Ptr Wl_surface_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"preferred_buffer_scale")

instance HasCField.HasCField Wl_surface_listener "preferred_buffer_transform" where

  type CFieldType Wl_surface_listener "preferred_buffer_transform" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "preferred_buffer_transform" (RIP.Ptr Wl_surface_listener) (RIP.Ptr ty) where

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
newtype Wl_seat_capability = Wl_seat_capability
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_seat_capability where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_seat_capability where

  readRaw =
    \ptr0 ->
          pure Wl_seat_capability
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_seat_capability where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_seat_capability unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_seat_capability instance RIP.Storable Wl_seat_capability

deriving via RIP.CUInt instance RIP.Prim Wl_seat_capability

instance CEnum.CEnum Wl_seat_capability where

  type CEnumZ Wl_seat_capability = RIP.CUInt

  toCEnum = Wl_seat_capability

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "WL_SEAT_CAPABILITY_POINTER")
                                   , (2, RIP.singleton "WL_SEAT_CAPABILITY_KEYBOARD")
                                   , (4, RIP.singleton "WL_SEAT_CAPABILITY_TOUCH")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_seat_capability"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_seat_capability"

instance Show Wl_seat_capability where

  showsPrec = CEnum.shows

instance Read Wl_seat_capability where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_seat_capability) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_seat_capability "unwrap" where

  type CFieldType Wl_seat_capability "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SEAT_CAPABILITY_POINTER@

    __defined at:__ @wayland-client-protocol.h 4304:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SEAT_CAPABILITY_POINTER :: Wl_seat_capability
pattern WL_SEAT_CAPABILITY_POINTER = Wl_seat_capability 1

{-| __C declaration:__ @WL_SEAT_CAPABILITY_KEYBOARD@

    __defined at:__ @wayland-client-protocol.h 4308:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SEAT_CAPABILITY_KEYBOARD :: Wl_seat_capability
pattern WL_SEAT_CAPABILITY_KEYBOARD = Wl_seat_capability 2

{-| __C declaration:__ @WL_SEAT_CAPABILITY_TOUCH@

    __defined at:__ @wayland-client-protocol.h 4312:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SEAT_CAPABILITY_TOUCH :: Wl_seat_capability
pattern WL_SEAT_CAPABILITY_TOUCH = Wl_seat_capability 4

{-| __C declaration:__ @enum wl_seat_error@

    __defined at:__ @wayland-client-protocol.h 4324:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_seat_error = Wl_seat_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_seat_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_seat_error where

  readRaw =
    \ptr0 ->
          pure Wl_seat_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_seat_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_seat_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_seat_error instance RIP.Storable Wl_seat_error

deriving via RIP.CUInt instance RIP.Prim Wl_seat_error

instance CEnum.CEnum Wl_seat_error where

  type CEnumZ Wl_seat_error = RIP.CUInt

  toCEnum = Wl_seat_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WL_SEAT_ERROR_MISSING_CAPABILITY")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_seat_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_seat_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_seat_error where

  minDeclaredValue = WL_SEAT_ERROR_MISSING_CAPABILITY

  maxDeclaredValue = WL_SEAT_ERROR_MISSING_CAPABILITY

instance Show Wl_seat_error where

  showsPrec = CEnum.shows

instance Read Wl_seat_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_seat_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_seat_error "unwrap" where

  type CFieldType Wl_seat_error "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SEAT_ERROR_MISSING_CAPABILITY@

    __defined at:__ @wayland-client-protocol.h 4328:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SEAT_ERROR_MISSING_CAPABILITY :: Wl_seat_error
pattern WL_SEAT_ERROR_MISSING_CAPABILITY = Wl_seat_error 0

{-| __C declaration:__ @struct wl_seat_listener@

    __defined at:__ @wayland-client-protocol.h 4336:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_seat_listener = Wl_seat_listener
  { capabilities :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @capabilities@

         __defined at:__ @wayland-client-protocol.h 4368:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , name :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-client-protocol.h 4397:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_seat_listener where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_seat_listener where

  readRaw =
    \ptr0 ->
          pure Wl_seat_listener
      <*> HasCField.readRaw (RIP.Proxy @"capabilities") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0

instance Marshal.WriteRaw Wl_seat_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_seat_listener capabilities2 name3 ->
               HasCField.writeRaw (RIP.Proxy @"capabilities") ptr0 capabilities2
            >> HasCField.writeRaw (RIP.Proxy @"name") ptr0 name3

deriving via Marshal.EquivStorable Wl_seat_listener instance RIP.Storable Wl_seat_listener

instance HasCField.HasCField Wl_seat_listener "capabilities" where

  type CFieldType Wl_seat_listener "capabilities" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "capabilities" (RIP.Ptr Wl_seat_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"capabilities")

instance HasCField.HasCField Wl_seat_listener "name" where

  type CFieldType Wl_seat_listener "name" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "name" (RIP.Ptr Wl_seat_listener) (RIP.Ptr ty) where

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
newtype Wl_pointer_error = Wl_pointer_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_pointer_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_pointer_error where

  readRaw =
    \ptr0 ->
          pure Wl_pointer_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_pointer_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_pointer_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_pointer_error instance RIP.Storable Wl_pointer_error

deriving via RIP.CUInt instance RIP.Prim Wl_pointer_error

instance CEnum.CEnum Wl_pointer_error where

  type CEnumZ Wl_pointer_error = RIP.CUInt

  toCEnum = Wl_pointer_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WL_POINTER_ERROR_ROLE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_pointer_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_pointer_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_pointer_error where

  minDeclaredValue = WL_POINTER_ERROR_ROLE

  maxDeclaredValue = WL_POINTER_ERROR_ROLE

instance Show Wl_pointer_error where

  showsPrec = CEnum.shows

instance Read Wl_pointer_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_pointer_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_pointer_error "unwrap" where

  type CFieldType Wl_pointer_error "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_ERROR_ROLE@

    __defined at:__ @wayland-client-protocol.h 4559:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_ERROR_ROLE :: Wl_pointer_error
pattern WL_POINTER_ERROR_ROLE = Wl_pointer_error 0

{-| __C declaration:__ @enum wl_pointer_button_state@

    __defined at:__ @wayland-client-protocol.h 4572:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_pointer_button_state = Wl_pointer_button_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_pointer_button_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_pointer_button_state where

  readRaw =
    \ptr0 ->
          pure Wl_pointer_button_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_pointer_button_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_pointer_button_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_pointer_button_state instance RIP.Storable Wl_pointer_button_state

deriving via RIP.CUInt instance RIP.Prim Wl_pointer_button_state

instance CEnum.CEnum Wl_pointer_button_state where

  type CEnumZ Wl_pointer_button_state = RIP.CUInt

  toCEnum = Wl_pointer_button_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_POINTER_BUTTON_STATE_RELEASED")
                                   , (1, RIP.singleton "WL_POINTER_BUTTON_STATE_PRESSED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_pointer_button_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_pointer_button_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_pointer_button_state where

  minDeclaredValue = WL_POINTER_BUTTON_STATE_RELEASED

  maxDeclaredValue = WL_POINTER_BUTTON_STATE_PRESSED

instance Show Wl_pointer_button_state where

  showsPrec = CEnum.shows

instance Read Wl_pointer_button_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_pointer_button_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_pointer_button_state "unwrap" where

  type CFieldType Wl_pointer_button_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_BUTTON_STATE_RELEASED@

    __defined at:__ @wayland-client-protocol.h 4576:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_BUTTON_STATE_RELEASED :: Wl_pointer_button_state
pattern WL_POINTER_BUTTON_STATE_RELEASED = Wl_pointer_button_state 0

{-| __C declaration:__ @WL_POINTER_BUTTON_STATE_PRESSED@

    __defined at:__ @wayland-client-protocol.h 4580:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_BUTTON_STATE_PRESSED :: Wl_pointer_button_state
pattern WL_POINTER_BUTTON_STATE_PRESSED = Wl_pointer_button_state 1

{-| __C declaration:__ @enum wl_pointer_axis@

    __defined at:__ @wayland-client-protocol.h 4592:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_pointer_axis = Wl_pointer_axis
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_pointer_axis where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_pointer_axis where

  readRaw =
    \ptr0 ->
          pure Wl_pointer_axis
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_pointer_axis where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_pointer_axis unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_pointer_axis instance RIP.Storable Wl_pointer_axis

deriving via RIP.CUInt instance RIP.Prim Wl_pointer_axis

instance CEnum.CEnum Wl_pointer_axis where

  type CEnumZ Wl_pointer_axis = RIP.CUInt

  toCEnum = Wl_pointer_axis

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_POINTER_AXIS_VERTICAL_SCROLL")
                                   , (1, RIP.singleton "WL_POINTER_AXIS_HORIZONTAL_SCROLL")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_pointer_axis"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_pointer_axis"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_pointer_axis where

  minDeclaredValue = WL_POINTER_AXIS_VERTICAL_SCROLL

  maxDeclaredValue = WL_POINTER_AXIS_HORIZONTAL_SCROLL

instance Show Wl_pointer_axis where

  showsPrec = CEnum.shows

instance Read Wl_pointer_axis where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_pointer_axis) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_pointer_axis "unwrap" where

  type CFieldType Wl_pointer_axis "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_AXIS_VERTICAL_SCROLL@

    __defined at:__ @wayland-client-protocol.h 4596:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_VERTICAL_SCROLL :: Wl_pointer_axis
pattern WL_POINTER_AXIS_VERTICAL_SCROLL = Wl_pointer_axis 0

{-| __C declaration:__ @WL_POINTER_AXIS_HORIZONTAL_SCROLL@

    __defined at:__ @wayland-client-protocol.h 4600:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_HORIZONTAL_SCROLL :: Wl_pointer_axis
pattern WL_POINTER_AXIS_HORIZONTAL_SCROLL = Wl_pointer_axis 1

{-| __C declaration:__ @enum wl_pointer_axis_source@

    __defined at:__ @wayland-client-protocol.h 4627:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_pointer_axis_source = Wl_pointer_axis_source
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_pointer_axis_source where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_pointer_axis_source where

  readRaw =
    \ptr0 ->
          pure Wl_pointer_axis_source
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_pointer_axis_source where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_pointer_axis_source unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_pointer_axis_source instance RIP.Storable Wl_pointer_axis_source

deriving via RIP.CUInt instance RIP.Prim Wl_pointer_axis_source

instance CEnum.CEnum Wl_pointer_axis_source where

  type CEnumZ Wl_pointer_axis_source = RIP.CUInt

  toCEnum = Wl_pointer_axis_source

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_POINTER_AXIS_SOURCE_WHEEL")
                                   , (1, RIP.singleton "WL_POINTER_AXIS_SOURCE_FINGER")
                                   , (2, RIP.singleton "WL_POINTER_AXIS_SOURCE_CONTINUOUS")
                                   , (3, RIP.singleton "WL_POINTER_AXIS_SOURCE_WHEEL_TILT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_pointer_axis_source"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_pointer_axis_source"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_pointer_axis_source where

  minDeclaredValue = WL_POINTER_AXIS_SOURCE_WHEEL

  maxDeclaredValue = WL_POINTER_AXIS_SOURCE_WHEEL_TILT

instance Show Wl_pointer_axis_source where

  showsPrec = CEnum.shows

instance Read Wl_pointer_axis_source where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_pointer_axis_source) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_pointer_axis_source "unwrap" where

  type CFieldType Wl_pointer_axis_source "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_AXIS_SOURCE_WHEEL@

    __defined at:__ @wayland-client-protocol.h 4631:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_SOURCE_WHEEL :: Wl_pointer_axis_source
pattern WL_POINTER_AXIS_SOURCE_WHEEL = Wl_pointer_axis_source 0

{-| __C declaration:__ @WL_POINTER_AXIS_SOURCE_FINGER@

    __defined at:__ @wayland-client-protocol.h 4635:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_SOURCE_FINGER :: Wl_pointer_axis_source
pattern WL_POINTER_AXIS_SOURCE_FINGER = Wl_pointer_axis_source 1

{-| __C declaration:__ @WL_POINTER_AXIS_SOURCE_CONTINUOUS@

    __defined at:__ @wayland-client-protocol.h 4639:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_SOURCE_CONTINUOUS :: Wl_pointer_axis_source
pattern WL_POINTER_AXIS_SOURCE_CONTINUOUS = Wl_pointer_axis_source 2

{-| __C declaration:__ @WL_POINTER_AXIS_SOURCE_WHEEL_TILT@

    __defined at:__ @wayland-client-protocol.h 4644:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_SOURCE_WHEEL_TILT :: Wl_pointer_axis_source
pattern WL_POINTER_AXIS_SOURCE_WHEEL_TILT = Wl_pointer_axis_source 3

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
newtype Wl_pointer_axis_relative_direction = Wl_pointer_axis_relative_direction
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_pointer_axis_relative_direction where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_pointer_axis_relative_direction where

  readRaw =
    \ptr0 ->
          pure Wl_pointer_axis_relative_direction
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_pointer_axis_relative_direction where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_pointer_axis_relative_direction unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_pointer_axis_relative_direction instance RIP.Storable Wl_pointer_axis_relative_direction

deriving via RIP.CUInt instance RIP.Prim Wl_pointer_axis_relative_direction

instance CEnum.CEnum Wl_pointer_axis_relative_direction where

  type CEnumZ Wl_pointer_axis_relative_direction =
    RIP.CUInt

  toCEnum = Wl_pointer_axis_relative_direction

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL")
                                   , (1, RIP.singleton "WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_pointer_axis_relative_direction"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_pointer_axis_relative_direction"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_pointer_axis_relative_direction where

  minDeclaredValue =
    WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL

  maxDeclaredValue =
    WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED

instance Show Wl_pointer_axis_relative_direction where

  showsPrec = CEnum.shows

instance Read Wl_pointer_axis_relative_direction where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_pointer_axis_relative_direction) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_pointer_axis_relative_direction "unwrap" where

  type CFieldType Wl_pointer_axis_relative_direction "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL@

    __defined at:__ @wayland-client-protocol.h 4665:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL :: Wl_pointer_axis_relative_direction
pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL = Wl_pointer_axis_relative_direction 0

{-| __C declaration:__ @WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED@

    __defined at:__ @wayland-client-protocol.h 4669:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED :: Wl_pointer_axis_relative_direction
pattern WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED = Wl_pointer_axis_relative_direction 1

{-| __C declaration:__ @struct wl_pointer_listener@

    __defined at:__ @wayland-client-protocol.h 4677:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_pointer_listener = Wl_pointer_listener
  { enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @enter@

         __defined at:__ @wayland-client-protocol.h 4692:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())
    {- ^ __C declaration:__ @leave@

         __defined at:__ @wayland-client-protocol.h 4709:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , motion :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @motion@

         __defined at:__ @wayland-client-protocol.h 4723:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , button :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @button@

         __defined at:__ @wayland-client-protocol.h 4749:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @axis@

         __defined at:__ @wayland-client-protocol.h 4778:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , frame :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ())
    {- ^ __C declaration:__ @frame@

         __defined at:__ @wayland-client-protocol.h 4822:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_source :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @axis_source@

         __defined at:__ @wayland-client-protocol.h 4855:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_stop :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @axis_stop@

         __defined at:__ @wayland-client-protocol.h 4879:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_discrete :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @axis_discrete@

         __defined at:__ @wayland-client-protocol.h 4922:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_value120 :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @axis_value120@

         __defined at:__ @wayland-client-protocol.h 4954:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , axis_relative_direction :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @axis_relative_direction@

         __defined at:__ @wayland-client-protocol.h 5000:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_pointer_listener where

  staticSizeOf = \_ -> (88 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_pointer_listener where

  readRaw =
    \ptr0 ->
          pure Wl_pointer_listener
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

instance Marshal.WriteRaw Wl_pointer_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_pointer_listener
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

deriving via Marshal.EquivStorable Wl_pointer_listener instance RIP.Storable Wl_pointer_listener

instance HasCField.HasCField Wl_pointer_listener "enter" where

  type CFieldType Wl_pointer_listener "enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "enter" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enter")

instance HasCField.HasCField Wl_pointer_listener "leave" where

  type CFieldType Wl_pointer_listener "leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()))
         ) => RIP.HasField "leave" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"leave")

instance HasCField.HasCField Wl_pointer_listener "motion" where

  type CFieldType Wl_pointer_listener "motion" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "motion" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"motion")

instance HasCField.HasCField Wl_pointer_listener "button" where

  type CFieldType Wl_pointer_listener "button" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "button" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"button")

instance HasCField.HasCField Wl_pointer_listener "axis" where

  type CFieldType Wl_pointer_listener "axis" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "axis" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"axis")

instance HasCField.HasCField Wl_pointer_listener "frame" where

  type CFieldType Wl_pointer_listener "frame" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ()))
         ) => RIP.HasField "frame" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"frame")

instance HasCField.HasCField Wl_pointer_listener "axis_source" where

  type CFieldType Wl_pointer_listener "axis_source" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "axis_source" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"axis_source")

instance HasCField.HasCField Wl_pointer_listener "axis_stop" where

  type CFieldType Wl_pointer_listener "axis_stop" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 56

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "axis_stop" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"axis_stop")

instance HasCField.HasCField Wl_pointer_listener "axis_discrete" where

  type CFieldType Wl_pointer_listener "axis_discrete" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 64

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "axis_discrete" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"axis_discrete")

instance HasCField.HasCField Wl_pointer_listener "axis_value120" where

  type CFieldType Wl_pointer_listener "axis_value120" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 72

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "axis_value120" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"axis_value120")

instance HasCField.HasCField Wl_pointer_listener "axis_relative_direction" where

  type CFieldType Wl_pointer_listener "axis_relative_direction" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 80

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "axis_relative_direction" (RIP.Ptr Wl_pointer_listener) (RIP.Ptr ty) where

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
newtype Wl_keyboard_keymap_format = Wl_keyboard_keymap_format
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_keyboard_keymap_format where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_keyboard_keymap_format where

  readRaw =
    \ptr0 ->
          pure Wl_keyboard_keymap_format
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_keyboard_keymap_format where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_keyboard_keymap_format unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_keyboard_keymap_format instance RIP.Storable Wl_keyboard_keymap_format

deriving via RIP.CUInt instance RIP.Prim Wl_keyboard_keymap_format

instance CEnum.CEnum Wl_keyboard_keymap_format where

  type CEnumZ Wl_keyboard_keymap_format = RIP.CUInt

  toCEnum = Wl_keyboard_keymap_format

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP")
                                   , (1, RIP.singleton "WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_keyboard_keymap_format"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_keyboard_keymap_format"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_keyboard_keymap_format where

  minDeclaredValue =
    WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP

  maxDeclaredValue = WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1

instance Show Wl_keyboard_keymap_format where

  showsPrec = CEnum.shows

instance Read Wl_keyboard_keymap_format where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_keyboard_keymap_format) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_keyboard_keymap_format "unwrap" where

  type CFieldType Wl_keyboard_keymap_format "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP@

    __defined at:__ @wayland-client-protocol.h 5174:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP :: Wl_keyboard_keymap_format
pattern WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP = Wl_keyboard_keymap_format 0

{-| __C declaration:__ @WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1@

    __defined at:__ @wayland-client-protocol.h 5178:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 :: Wl_keyboard_keymap_format
pattern WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 = Wl_keyboard_keymap_format 1

{-| __C declaration:__ @enum wl_keyboard_key_state@

    __defined at:__ @wayland-client-protocol.h 5198:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_keyboard_key_state = Wl_keyboard_key_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_keyboard_key_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_keyboard_key_state where

  readRaw =
    \ptr0 ->
          pure Wl_keyboard_key_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_keyboard_key_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_keyboard_key_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_keyboard_key_state instance RIP.Storable Wl_keyboard_key_state

deriving via RIP.CUInt instance RIP.Prim Wl_keyboard_key_state

instance CEnum.CEnum Wl_keyboard_key_state where

  type CEnumZ Wl_keyboard_key_state = RIP.CUInt

  toCEnum = Wl_keyboard_key_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_KEYBOARD_KEY_STATE_RELEASED")
                                   , (1, RIP.singleton "WL_KEYBOARD_KEY_STATE_PRESSED")
                                   , (2, RIP.singleton "WL_KEYBOARD_KEY_STATE_REPEATED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_keyboard_key_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_keyboard_key_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_keyboard_key_state where

  minDeclaredValue = WL_KEYBOARD_KEY_STATE_RELEASED

  maxDeclaredValue = WL_KEYBOARD_KEY_STATE_REPEATED

instance Show Wl_keyboard_key_state where

  showsPrec = CEnum.shows

instance Read Wl_keyboard_key_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_keyboard_key_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_keyboard_key_state "unwrap" where

  type CFieldType Wl_keyboard_key_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_KEYBOARD_KEY_STATE_RELEASED@

    __defined at:__ @wayland-client-protocol.h 5202:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEY_STATE_RELEASED :: Wl_keyboard_key_state
pattern WL_KEYBOARD_KEY_STATE_RELEASED = Wl_keyboard_key_state 0

{-| __C declaration:__ @WL_KEYBOARD_KEY_STATE_PRESSED@

    __defined at:__ @wayland-client-protocol.h 5206:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEY_STATE_PRESSED :: Wl_keyboard_key_state
pattern WL_KEYBOARD_KEY_STATE_PRESSED = Wl_keyboard_key_state 1

{-| __C declaration:__ @WL_KEYBOARD_KEY_STATE_REPEATED@

    __defined at:__ @wayland-client-protocol.h 5211:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_KEYBOARD_KEY_STATE_REPEATED :: Wl_keyboard_key_state
pattern WL_KEYBOARD_KEY_STATE_REPEATED = Wl_keyboard_key_state 2

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
data Wl_keyboard_listener = Wl_keyboard_listener
  { keymap :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @keymap@

         __defined at:__ @wayland-client-protocol.h 5237:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , enter :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ())
    {- ^ __C declaration:__ @enter@

         __defined at:__ @wayland-client-protocol.h 5263:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , leave :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())
    {- ^ __C declaration:__ @leave@

         __defined at:__ @wayland-client-protocol.h 5284:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , key :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @key@

         __defined at:__ @wayland-client-protocol.h 5319:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , modifiers :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ __C declaration:__ @modifiers@

         __defined at:__ @wayland-client-protocol.h 5348:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , repeat_info :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @repeat_info@

         __defined at:__ @wayland-client-protocol.h 5375:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_keyboard_listener where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_keyboard_listener where

  readRaw =
    \ptr0 ->
          pure Wl_keyboard_listener
      <*> HasCField.readRaw (RIP.Proxy @"keymap") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"enter") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"leave") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"key") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"modifiers") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"repeat_info") ptr0

instance Marshal.WriteRaw Wl_keyboard_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_keyboard_listener keymap2 enter3 leave4 key5 modifiers6 repeat_info7 ->
               HasCField.writeRaw (RIP.Proxy @"keymap") ptr0 keymap2
            >> HasCField.writeRaw (RIP.Proxy @"enter") ptr0 enter3
            >> HasCField.writeRaw (RIP.Proxy @"leave") ptr0 leave4
            >> HasCField.writeRaw (RIP.Proxy @"key") ptr0 key5
            >> HasCField.writeRaw (RIP.Proxy @"modifiers") ptr0 modifiers6
            >> HasCField.writeRaw (RIP.Proxy @"repeat_info") ptr0 repeat_info7

deriving via Marshal.EquivStorable Wl_keyboard_listener instance RIP.Storable Wl_keyboard_listener

instance HasCField.HasCField Wl_keyboard_listener "keymap" where

  type CFieldType Wl_keyboard_listener "keymap" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "keymap" (RIP.Ptr Wl_keyboard_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"keymap")

instance HasCField.HasCField Wl_keyboard_listener "enter" where

  type CFieldType Wl_keyboard_listener "enter" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ()))
         ) => RIP.HasField "enter" (RIP.Ptr Wl_keyboard_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"enter")

instance HasCField.HasCField Wl_keyboard_listener "leave" where

  type CFieldType Wl_keyboard_listener "leave" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()))
         ) => RIP.HasField "leave" (RIP.Ptr Wl_keyboard_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"leave")

instance HasCField.HasCField Wl_keyboard_listener "key" where

  type CFieldType Wl_keyboard_listener "key" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "key" (RIP.Ptr Wl_keyboard_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"key")

instance HasCField.HasCField Wl_keyboard_listener "modifiers" where

  type CFieldType Wl_keyboard_listener "modifiers" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
         ) => RIP.HasField "modifiers" (RIP.Ptr Wl_keyboard_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"modifiers")

instance HasCField.HasCField Wl_keyboard_listener "repeat_info" where

  type CFieldType Wl_keyboard_listener "repeat_info" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "repeat_info" (RIP.Ptr Wl_keyboard_listener) (RIP.Ptr ty) where

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
data Wl_touch_listener = Wl_touch_listener
  { down :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @down@

         __defined at:__ @wayland-client-protocol.h 5480:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , up :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @up@

         __defined at:__ @wayland-client-protocol.h 5498:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , motion :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @motion@

         __defined at:__ @wayland-client-protocol.h 5512:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , frame :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ())
    {- ^ __C declaration:__ @frame@

         __defined at:__ @wayland-client-protocol.h 5530:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , cancel :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ())
    {- ^ __C declaration:__ @cancel@

         __defined at:__ @wayland-client-protocol.h 5544:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , shape :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @shape@

         __defined at:__ @wayland-client-protocol.h 5580:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , orientation :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
    {- ^ __C declaration:__ @orientation@

         __defined at:__ @wayland-client-protocol.h 5615:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_touch_listener where

  staticSizeOf = \_ -> (56 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_touch_listener where

  readRaw =
    \ptr0 ->
          pure Wl_touch_listener
      <*> HasCField.readRaw (RIP.Proxy @"down") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"up") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"motion") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"frame") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"cancel") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"shape") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"orientation") ptr0

instance Marshal.WriteRaw Wl_touch_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_touch_listener down2 up3 motion4 frame5 cancel6 shape7 orientation8 ->
               HasCField.writeRaw (RIP.Proxy @"down") ptr0 down2
            >> HasCField.writeRaw (RIP.Proxy @"up") ptr0 up3
            >> HasCField.writeRaw (RIP.Proxy @"motion") ptr0 motion4
            >> HasCField.writeRaw (RIP.Proxy @"frame") ptr0 frame5
            >> HasCField.writeRaw (RIP.Proxy @"cancel") ptr0 cancel6
            >> HasCField.writeRaw (RIP.Proxy @"shape") ptr0 shape7
            >> HasCField.writeRaw (RIP.Proxy @"orientation") ptr0 orientation8

deriving via Marshal.EquivStorable Wl_touch_listener instance RIP.Storable Wl_touch_listener

instance HasCField.HasCField Wl_touch_listener "down" where

  type CFieldType Wl_touch_listener "down" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "down" (RIP.Ptr Wl_touch_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"down")

instance HasCField.HasCField Wl_touch_listener "up" where

  type CFieldType Wl_touch_listener "up" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "up" (RIP.Ptr Wl_touch_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"up")

instance HasCField.HasCField Wl_touch_listener "motion" where

  type CFieldType Wl_touch_listener "motion" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "motion" (RIP.Ptr Wl_touch_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"motion")

instance HasCField.HasCField Wl_touch_listener "frame" where

  type CFieldType Wl_touch_listener "frame" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ()))
         ) => RIP.HasField "frame" (RIP.Ptr Wl_touch_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"frame")

instance HasCField.HasCField Wl_touch_listener "cancel" where

  type CFieldType Wl_touch_listener "cancel" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ()))
         ) => RIP.HasField "cancel" (RIP.Ptr Wl_touch_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"cancel")

instance HasCField.HasCField Wl_touch_listener "shape" where

  type CFieldType Wl_touch_listener "shape" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "shape" (RIP.Ptr Wl_touch_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"shape")

instance HasCField.HasCField Wl_touch_listener "orientation" where

  type CFieldType Wl_touch_listener "orientation" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())

  offset# = \_ -> \_ -> 48

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
         ) => RIP.HasField "orientation" (RIP.Ptr Wl_touch_listener) (RIP.Ptr ty) where

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
newtype Wl_output_subpixel = Wl_output_subpixel
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_output_subpixel where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_output_subpixel where

  readRaw =
    \ptr0 ->
          pure Wl_output_subpixel
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_output_subpixel where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_output_subpixel unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_output_subpixel instance RIP.Storable Wl_output_subpixel

deriving via RIP.CUInt instance RIP.Prim Wl_output_subpixel

instance CEnum.CEnum Wl_output_subpixel where

  type CEnumZ Wl_output_subpixel = RIP.CUInt

  toCEnum = Wl_output_subpixel

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
    CEnum.showsWrappedUndeclared "Wl_output_subpixel"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_output_subpixel"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_output_subpixel where

  minDeclaredValue = WL_OUTPUT_SUBPIXEL_UNKNOWN

  maxDeclaredValue = WL_OUTPUT_SUBPIXEL_VERTICAL_BGR

instance Show Wl_output_subpixel where

  showsPrec = CEnum.shows

instance Read Wl_output_subpixel where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_output_subpixel) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_output_subpixel "unwrap" where

  type CFieldType Wl_output_subpixel "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_UNKNOWN@

    __defined at:__ @wayland-client-protocol.h 5718:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_UNKNOWN :: Wl_output_subpixel
pattern WL_OUTPUT_SUBPIXEL_UNKNOWN = Wl_output_subpixel 0

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_NONE@

    __defined at:__ @wayland-client-protocol.h 5722:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_NONE :: Wl_output_subpixel
pattern WL_OUTPUT_SUBPIXEL_NONE = Wl_output_subpixel 1

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB@

    __defined at:__ @wayland-client-protocol.h 5726:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB :: Wl_output_subpixel
pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB = Wl_output_subpixel 2

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR@

    __defined at:__ @wayland-client-protocol.h 5730:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR :: Wl_output_subpixel
pattern WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR = Wl_output_subpixel 3

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_VERTICAL_RGB@

    __defined at:__ @wayland-client-protocol.h 5734:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_VERTICAL_RGB :: Wl_output_subpixel
pattern WL_OUTPUT_SUBPIXEL_VERTICAL_RGB = Wl_output_subpixel 4

{-| __C declaration:__ @WL_OUTPUT_SUBPIXEL_VERTICAL_BGR@

    __defined at:__ @wayland-client-protocol.h 5738:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_SUBPIXEL_VERTICAL_BGR :: Wl_output_subpixel
pattern WL_OUTPUT_SUBPIXEL_VERTICAL_BGR = Wl_output_subpixel 5

{-| __C declaration:__ @enum wl_output_transform@

    __defined at:__ @wayland-client-protocol.h 5759:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_output_transform = Wl_output_transform
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_output_transform where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_output_transform where

  readRaw =
    \ptr0 ->
          pure Wl_output_transform
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_output_transform where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_output_transform unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_output_transform instance RIP.Storable Wl_output_transform

deriving via RIP.CUInt instance RIP.Prim Wl_output_transform

instance CEnum.CEnum Wl_output_transform where

  type CEnumZ Wl_output_transform = RIP.CUInt

  toCEnum = Wl_output_transform

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
    CEnum.showsWrappedUndeclared "Wl_output_transform"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_output_transform"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_output_transform where

  minDeclaredValue = WL_OUTPUT_TRANSFORM_NORMAL

  maxDeclaredValue = WL_OUTPUT_TRANSFORM_FLIPPED_270

instance Show Wl_output_transform where

  showsPrec = CEnum.shows

instance Read Wl_output_transform where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_output_transform) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_output_transform "unwrap" where

  type CFieldType Wl_output_transform "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_NORMAL@

    __defined at:__ @wayland-client-protocol.h 5763:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_NORMAL :: Wl_output_transform
pattern WL_OUTPUT_TRANSFORM_NORMAL = Wl_output_transform 0

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_90@

    __defined at:__ @wayland-client-protocol.h 5767:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_90 :: Wl_output_transform
pattern WL_OUTPUT_TRANSFORM_90 = Wl_output_transform 1

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_180@

    __defined at:__ @wayland-client-protocol.h 5771:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_180 :: Wl_output_transform
pattern WL_OUTPUT_TRANSFORM_180 = Wl_output_transform 2

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_270@

    __defined at:__ @wayland-client-protocol.h 5775:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_270 :: Wl_output_transform
pattern WL_OUTPUT_TRANSFORM_270 = Wl_output_transform 3

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_FLIPPED@

    __defined at:__ @wayland-client-protocol.h 5779:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_FLIPPED :: Wl_output_transform
pattern WL_OUTPUT_TRANSFORM_FLIPPED = Wl_output_transform 4

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_FLIPPED_90@

    __defined at:__ @wayland-client-protocol.h 5783:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_FLIPPED_90 :: Wl_output_transform
pattern WL_OUTPUT_TRANSFORM_FLIPPED_90 = Wl_output_transform 5

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_FLIPPED_180@

    __defined at:__ @wayland-client-protocol.h 5787:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_FLIPPED_180 :: Wl_output_transform
pattern WL_OUTPUT_TRANSFORM_FLIPPED_180 = Wl_output_transform 6

{-| __C declaration:__ @WL_OUTPUT_TRANSFORM_FLIPPED_270@

    __defined at:__ @wayland-client-protocol.h 5791:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_TRANSFORM_FLIPPED_270 :: Wl_output_transform
pattern WL_OUTPUT_TRANSFORM_FLIPPED_270 = Wl_output_transform 7

{-| __C declaration:__ @enum wl_output_mode@

    __defined at:__ @wayland-client-protocol.h 5804:6@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
newtype Wl_output_mode = Wl_output_mode
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_output_mode where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_output_mode where

  readRaw =
    \ptr0 ->
          pure Wl_output_mode
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_output_mode where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_output_mode unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_output_mode instance RIP.Storable Wl_output_mode

deriving via RIP.CUInt instance RIP.Prim Wl_output_mode

instance CEnum.CEnum Wl_output_mode where

  type CEnumZ Wl_output_mode = RIP.CUInt

  toCEnum = Wl_output_mode

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "WL_OUTPUT_MODE_CURRENT")
                                   , (2, RIP.singleton "WL_OUTPUT_MODE_PREFERRED")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_output_mode"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_output_mode"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_output_mode where

  minDeclaredValue = WL_OUTPUT_MODE_CURRENT

  maxDeclaredValue = WL_OUTPUT_MODE_PREFERRED

instance Show Wl_output_mode where

  showsPrec = CEnum.shows

instance Read Wl_output_mode where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_output_mode) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_output_mode "unwrap" where

  type CFieldType Wl_output_mode "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_OUTPUT_MODE_CURRENT@

    __defined at:__ @wayland-client-protocol.h 5808:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_MODE_CURRENT :: Wl_output_mode
pattern WL_OUTPUT_MODE_CURRENT = Wl_output_mode 1

{-| __C declaration:__ @WL_OUTPUT_MODE_PREFERRED@

    __defined at:__ @wayland-client-protocol.h 5812:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_OUTPUT_MODE_PREFERRED :: Wl_output_mode
pattern WL_OUTPUT_MODE_PREFERRED = Wl_output_mode 2

{-| __C declaration:__ @struct wl_output_listener@

    __defined at:__ @wayland-client-protocol.h 5820:8@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
data Wl_output_listener = Wl_output_listener
  { geometry :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @geometry@

         __defined at:__ @wayland-client-protocol.h 5854:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , mode :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @mode@

         __defined at:__ @wayland-client-protocol.h 5905:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , done :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ())
    {- ^ __C declaration:__ @done@

         __defined at:__ @wayland-client-protocol.h 5921:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , scale :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ __C declaration:__ @scale@

         __defined at:__ @wayland-client-protocol.h 5946:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , name :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @name@

         __defined at:__ @wayland-client-protocol.h 5986:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  , description :: RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
    {- ^ __C declaration:__ @description@

         __defined at:__ @wayland-client-protocol.h 6009:9@

         __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Wl_output_listener where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wl_output_listener where

  readRaw =
    \ptr0 ->
          pure Wl_output_listener
      <*> HasCField.readRaw (RIP.Proxy @"geometry") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"mode") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"done") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"scale") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"name") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"description") ptr0

instance Marshal.WriteRaw Wl_output_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_output_listener geometry2 mode3 done4 scale5 name6 description7 ->
               HasCField.writeRaw (RIP.Proxy @"geometry") ptr0 geometry2
            >> HasCField.writeRaw (RIP.Proxy @"mode") ptr0 mode3
            >> HasCField.writeRaw (RIP.Proxy @"done") ptr0 done4
            >> HasCField.writeRaw (RIP.Proxy @"scale") ptr0 scale5
            >> HasCField.writeRaw (RIP.Proxy @"name") ptr0 name6
            >> HasCField.writeRaw (RIP.Proxy @"description") ptr0 description7

deriving via Marshal.EquivStorable Wl_output_listener instance RIP.Storable Wl_output_listener

instance HasCField.HasCField Wl_output_listener "geometry" where

  type CFieldType Wl_output_listener "geometry" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "geometry" (RIP.Ptr Wl_output_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"geometry")

instance HasCField.HasCField Wl_output_listener "mode" where

  type CFieldType Wl_output_listener "mode" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "mode" (RIP.Ptr Wl_output_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"mode")

instance HasCField.HasCField Wl_output_listener "done" where

  type CFieldType Wl_output_listener "done" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ()))
         ) => RIP.HasField "done" (RIP.Ptr Wl_output_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"done")

instance HasCField.HasCField Wl_output_listener "scale" where

  type CFieldType Wl_output_listener "scale" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
         ) => RIP.HasField "scale" (RIP.Ptr Wl_output_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"scale")

instance HasCField.HasCField Wl_output_listener "name" where

  type CFieldType Wl_output_listener "name" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 32

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "name" (RIP.Ptr Wl_output_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"name")

instance HasCField.HasCField Wl_output_listener "description" where

  type CFieldType Wl_output_listener "description" =
    RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ())

  offset# = \_ -> \_ -> 40

instance ( ((~) ty) (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
         ) => RIP.HasField "description" (RIP.Ptr Wl_output_listener) (RIP.Ptr ty) where

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
newtype Wl_subcompositor_error = Wl_subcompositor_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_subcompositor_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_subcompositor_error where

  readRaw =
    \ptr0 ->
          pure Wl_subcompositor_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_subcompositor_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_subcompositor_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_subcompositor_error instance RIP.Storable Wl_subcompositor_error

deriving via RIP.CUInt instance RIP.Prim Wl_subcompositor_error

instance CEnum.CEnum Wl_subcompositor_error where

  type CEnumZ Wl_subcompositor_error = RIP.CUInt

  toCEnum = Wl_subcompositor_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE")
                                   , (1, RIP.singleton "WL_SUBCOMPOSITOR_ERROR_BAD_PARENT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_subcompositor_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_subcompositor_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_subcompositor_error where

  minDeclaredValue = WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE

  maxDeclaredValue = WL_SUBCOMPOSITOR_ERROR_BAD_PARENT

instance Show Wl_subcompositor_error where

  showsPrec = CEnum.shows

instance Read Wl_subcompositor_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_subcompositor_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_subcompositor_error "unwrap" where

  type CFieldType Wl_subcompositor_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE@

    __defined at:__ @wayland-client-protocol.h 6177:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE :: Wl_subcompositor_error
pattern WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE = Wl_subcompositor_error 0

{-| __C declaration:__ @WL_SUBCOMPOSITOR_ERROR_BAD_PARENT@

    __defined at:__ @wayland-client-protocol.h 6181:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SUBCOMPOSITOR_ERROR_BAD_PARENT :: Wl_subcompositor_error
pattern WL_SUBCOMPOSITOR_ERROR_BAD_PARENT = Wl_subcompositor_error 1

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
newtype Wl_subsurface_error = Wl_subsurface_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Wl_subsurface_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wl_subsurface_error where

  readRaw =
    \ptr0 ->
          pure Wl_subsurface_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Wl_subsurface_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wl_subsurface_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Wl_subsurface_error instance RIP.Storable Wl_subsurface_error

deriving via RIP.CUInt instance RIP.Prim Wl_subsurface_error

instance CEnum.CEnum Wl_subsurface_error where

  type CEnumZ Wl_subsurface_error = RIP.CUInt

  toCEnum = Wl_subsurface_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "WL_SUBSURFACE_ERROR_BAD_SURFACE")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Wl_subsurface_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Wl_subsurface_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Wl_subsurface_error where

  minDeclaredValue = WL_SUBSURFACE_ERROR_BAD_SURFACE

  maxDeclaredValue = WL_SUBSURFACE_ERROR_BAD_SURFACE

instance Show Wl_subsurface_error where

  showsPrec = CEnum.shows

instance Read Wl_subsurface_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ((~) ty) RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Wl_subsurface_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Wl_subsurface_error "unwrap" where

  type CFieldType Wl_subsurface_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @WL_SUBSURFACE_ERROR_BAD_SURFACE@

    __defined at:__ @wayland-client-protocol.h 6272:2@

    __exported by:__ @wayland-client.h@, @wayland-client-protocol.h@, @wayland-client-protocol.h@
-}
pattern WL_SUBSURFACE_ERROR_BAD_SURFACE :: Wl_subsurface_error
pattern WL_SUBSURFACE_ERROR_BAD_SURFACE = Wl_subsurface_error 0

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

foreign import ccall safe "wrapper" hs_bindgen_1a9426a250e4427e_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ())@
hs_bindgen_1a9426a250e4427e ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ()))
hs_bindgen_1a9426a250e4427e =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_1a9426a250e4427e_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_327af10f7bc13685_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ())@
hs_bindgen_327af10f7bc13685 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ()
hs_bindgen_327af10f7bc13685 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_327af10f7bc13685_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ()) where

  toFunPtr = hs_bindgen_1a9426a250e4427e

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_buffer) -> IO ()) where

  fromFunPtr = hs_bindgen_327af10f7bc13685

foreign import ccall safe "wrapper" hs_bindgen_dda3eda54be7e049_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_dda3eda54be7e049 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_dda3eda54be7e049 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_dda3eda54be7e049_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_90814fdb4355a9e6_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_90814fdb4355a9e6 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_90814fdb4355a9e6 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_90814fdb4355a9e6_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_dda3eda54be7e049

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_callback) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_90814fdb4355a9e6

foreign import ccall safe "wrapper" hs_bindgen_675a3ee6f52da54c_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ())@
hs_bindgen_675a3ee6f52da54c ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ()))
hs_bindgen_675a3ee6f52da54c =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_675a3ee6f52da54c_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_905b1463ac138a95_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ())@
hs_bindgen_905b1463ac138a95 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ()
hs_bindgen_905b1463ac138a95 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_905b1463ac138a95_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ()) where

  toFunPtr = hs_bindgen_675a3ee6f52da54c

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> IO ()) where

  fromFunPtr = hs_bindgen_905b1463ac138a95

foreign import ccall safe "wrapper" hs_bindgen_f0e4a93e343f97f1_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ())@
hs_bindgen_f0e4a93e343f97f1 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ()))
hs_bindgen_f0e4a93e343f97f1 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f0e4a93e343f97f1_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3d65b58791b6a05c_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ())@
hs_bindgen_3d65b58791b6a05c ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ()
hs_bindgen_3d65b58791b6a05c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3d65b58791b6a05c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ()) where

  toFunPtr = hs_bindgen_f0e4a93e343f97f1

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> (RIP.Ptr Wl_data_offer) -> IO ()) where

  fromFunPtr = hs_bindgen_3d65b58791b6a05c

foreign import ccall safe "wrapper" hs_bindgen_5b97f315e787faa8_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ())@
hs_bindgen_5b97f315e787faa8 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ()))
hs_bindgen_5b97f315e787faa8 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_5b97f315e787faa8_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_6e1e09642c4bd845_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ())@
hs_bindgen_6e1e09642c4bd845 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ()
hs_bindgen_6e1e09642c4bd845 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_6e1e09642c4bd845_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ()) where

  toFunPtr = hs_bindgen_5b97f315e787faa8

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> (RIP.Ptr Wl_data_offer) -> IO ()) where

  fromFunPtr = hs_bindgen_6e1e09642c4bd845

foreign import ccall safe "wrapper" hs_bindgen_d7b8add4aee56ead_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_d7b8add4aee56ead ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_d7b8add4aee56ead =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d7b8add4aee56ead_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ca0ab054b1d942c7_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_ca0ab054b1d942c7 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_ca0ab054b1d942c7 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ca0ab054b1d942c7_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_d7b8add4aee56ead

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_device) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_ca0ab054b1d942c7

foreign import ccall safe "wrapper" hs_bindgen_97fc3aab77e9665a_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_97fc3aab77e9665a ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_97fc3aab77e9665a =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_97fc3aab77e9665a_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_38725ca7292ff767_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_38725ca7292ff767 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_38725ca7292ff767 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_38725ca7292ff767_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_97fc3aab77e9665a

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_38725ca7292ff767

foreign import ccall safe "wrapper" hs_bindgen_94d54aafef082d04_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_94d54aafef082d04 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_94d54aafef082d04 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_94d54aafef082d04_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_7b80203bedac4cc7_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_7b80203bedac4cc7 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_7b80203bedac4cc7 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_7b80203bedac4cc7_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_94d54aafef082d04

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_offer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_7b80203bedac4cc7

foreign import ccall safe "wrapper" hs_bindgen_8870737334824781_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())@
hs_bindgen_8870737334824781 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ()))
hs_bindgen_8870737334824781 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_8870737334824781_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_cfe460c3af4ad457_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())@
hs_bindgen_cfe460c3af4ad457 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ()
hs_bindgen_cfe460c3af4ad457 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_cfe460c3af4ad457_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ()) where

  toFunPtr = hs_bindgen_8870737334824781

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> IO ()) where

  fromFunPtr = hs_bindgen_cfe460c3af4ad457

foreign import ccall safe "wrapper" hs_bindgen_e316ff471f17f95a_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_e316ff471f17f95a ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_e316ff471f17f95a =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_e316ff471f17f95a_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_2ef5de60f5bf8329_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_2ef5de60f5bf8329 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_2ef5de60f5bf8329 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_2ef5de60f5bf8329_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_e316ff471f17f95a

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_2ef5de60f5bf8329

foreign import ccall safe "wrapper" hs_bindgen_b765a3ccebedc2e5_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_b765a3ccebedc2e5 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_b765a3ccebedc2e5 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_b765a3ccebedc2e5_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_58cd5e9bb660e365_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_58cd5e9bb660e365 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_58cd5e9bb660e365 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_58cd5e9bb660e365_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_b765a3ccebedc2e5

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_58cd5e9bb660e365

foreign import ccall safe "wrapper" hs_bindgen_c4dad9bcd5299286_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_c4dad9bcd5299286 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_c4dad9bcd5299286 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c4dad9bcd5299286_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_7eba1388d985806d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_7eba1388d985806d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_7eba1388d985806d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_7eba1388d985806d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_c4dad9bcd5299286

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_data_source) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_7eba1388d985806d

foreign import ccall safe "wrapper" hs_bindgen_a41509c5c1ca4d7d_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_a41509c5c1ca4d7d ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_a41509c5c1ca4d7d =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_a41509c5c1ca4d7d_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_c94fdaec0cae0df7_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_c94fdaec0cae0df7 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_c94fdaec0cae0df7 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_c94fdaec0cae0df7_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_a41509c5c1ca4d7d

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> (RIP.Ptr RIP.Void) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_c94fdaec0cae0df7

foreign import ccall safe "wrapper" hs_bindgen_87e518f6c2e20922_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_87e518f6c2e20922 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_87e518f6c2e20922 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_87e518f6c2e20922_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_2610a07a9e2c9073_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_2610a07a9e2c9073 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_2610a07a9e2c9073 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_2610a07a9e2c9073_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_87e518f6c2e20922

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_display) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_2610a07a9e2c9073

foreign import ccall safe "wrapper" hs_bindgen_f62670ea91a8cccf_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_f62670ea91a8cccf ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_f62670ea91a8cccf =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f62670ea91a8cccf_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ae4017f19437dfbf_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_ae4017f19437dfbf ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_ae4017f19437dfbf =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ae4017f19437dfbf_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_f62670ea91a8cccf

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_ae4017f19437dfbf

foreign import ccall safe "wrapper" hs_bindgen_d37f1fbb24cc3980_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())@
hs_bindgen_d37f1fbb24cc3980 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_d37f1fbb24cc3980 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d37f1fbb24cc3980_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_dd927156e40d60a0_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())@
hs_bindgen_dd927156e40d60a0 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()
hs_bindgen_dd927156e40d60a0 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_dd927156e40d60a0_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()) where

  toFunPtr = hs_bindgen_d37f1fbb24cc3980

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()) where

  fromFunPtr = hs_bindgen_dd927156e40d60a0

foreign import ccall safe "wrapper" hs_bindgen_dab25f0703a614bf_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ())@
hs_bindgen_dab25f0703a614bf ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ()))
hs_bindgen_dab25f0703a614bf =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_dab25f0703a614bf_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_a0a49ccef6efc948_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ())@
hs_bindgen_a0a49ccef6efc948 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ()
hs_bindgen_a0a49ccef6efc948 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_a0a49ccef6efc948_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ()) where

  toFunPtr = hs_bindgen_dab25f0703a614bf

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array) -> IO ()) where

  fromFunPtr = hs_bindgen_a0a49ccef6efc948

foreign import ccall safe "wrapper" hs_bindgen_3b88b7c60d9ea6a7_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_3b88b7c60d9ea6a7 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_3b88b7c60d9ea6a7 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_3b88b7c60d9ea6a7_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ee67bf56d2c81072_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_ee67bf56d2c81072 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_ee67bf56d2c81072 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ee67bf56d2c81072_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_3b88b7c60d9ea6a7

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_ee67bf56d2c81072

foreign import ccall safe "wrapper" hs_bindgen_2b0012281f94d304_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_2b0012281f94d304 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_2b0012281f94d304 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_2b0012281f94d304_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_57aecc510849c622_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_57aecc510849c622 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_57aecc510849c622 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_57aecc510849c622_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_2b0012281f94d304

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_57aecc510849c622

foreign import ccall safe "wrapper" hs_bindgen_d363f8a9869a69f9_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_d363f8a9869a69f9 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_d363f8a9869a69f9 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d363f8a9869a69f9_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_45e1a568e865553e_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_45e1a568e865553e ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_45e1a568e865553e =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_45e1a568e865553e_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_d363f8a9869a69f9

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_keyboard) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_45e1a568e865553e

foreign import ccall safe "wrapper" hs_bindgen_d9c8cf8757f61685_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ())@
hs_bindgen_d9c8cf8757f61685 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_d9c8cf8757f61685 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d9c8cf8757f61685_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_9a1b19b86a3a3645_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ())@
hs_bindgen_9a1b19b86a3a3645 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ()
hs_bindgen_9a1b19b86a3a3645 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_9a1b19b86a3a3645_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ()) where

  toFunPtr = hs_bindgen_d9c8cf8757f61685

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> IO ()) where

  fromFunPtr = hs_bindgen_9a1b19b86a3a3645

foreign import ccall safe "wrapper" hs_bindgen_974f39f50eebe464_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_974f39f50eebe464 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_974f39f50eebe464 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_974f39f50eebe464_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_eebf31c6b404e6db_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_eebf31c6b404e6db ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_eebf31c6b404e6db =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_eebf31c6b404e6db_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_974f39f50eebe464

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_eebf31c6b404e6db

foreign import ccall safe "wrapper" hs_bindgen_3d10cdbaf363dd36_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_3d10cdbaf363dd36 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_3d10cdbaf363dd36 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_3d10cdbaf363dd36_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_07bbe396c3c1a822_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_07bbe396c3c1a822 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_07bbe396c3c1a822 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_07bbe396c3c1a822_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_3d10cdbaf363dd36

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_07bbe396c3c1a822

foreign import ccall safe "wrapper" hs_bindgen_9fd2155155cb148c_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_9fd2155155cb148c ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_9fd2155155cb148c =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_9fd2155155cb148c_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_d5a5a628dc37f28f_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_d5a5a628dc37f28f ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_d5a5a628dc37f28f =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_d5a5a628dc37f28f_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_9fd2155155cb148c

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> (PtrConst.PtrConst RIP.CChar) -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_d5a5a628dc37f28f

foreign import ccall safe "wrapper" hs_bindgen_c771fa1d01d67529_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_c771fa1d01d67529 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_c771fa1d01d67529 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c771fa1d01d67529_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_97c97c60e07f601d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_97c97c60e07f601d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_97c97c60e07f601d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_97c97c60e07f601d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_c771fa1d01d67529

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_output) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_97c97c60e07f601d

foreign import ccall safe "wrapper" hs_bindgen_c1cc26a65dfbb054_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ())@
hs_bindgen_c1cc26a65dfbb054 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ()))
hs_bindgen_c1cc26a65dfbb054 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c1cc26a65dfbb054_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_8140223f7a9cd5a2_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ())@
hs_bindgen_8140223f7a9cd5a2 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ()
hs_bindgen_8140223f7a9cd5a2 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_8140223f7a9cd5a2_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ()) where

  toFunPtr = hs_bindgen_c1cc26a65dfbb054

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> IO ()) where

  fromFunPtr = hs_bindgen_8140223f7a9cd5a2

foreign import ccall safe "wrapper" hs_bindgen_c6c8188b001e0422_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_c6c8188b001e0422 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_c6c8188b001e0422 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c6c8188b001e0422_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_97a11e08270382c8_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_97a11e08270382c8 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_97a11e08270382c8 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_97a11e08270382c8_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_c6c8188b001e0422

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_97a11e08270382c8

foreign import ccall safe "wrapper" hs_bindgen_4e0737183779984e_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())@
hs_bindgen_4e0737183779984e ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()))
hs_bindgen_4e0737183779984e =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_4e0737183779984e_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_4afdef747ebfea4b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())@
hs_bindgen_4afdef747ebfea4b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()
hs_bindgen_4afdef747ebfea4b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_4afdef747ebfea4b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()) where

  toFunPtr = hs_bindgen_4e0737183779984e

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> IO ()) where

  fromFunPtr = hs_bindgen_4afdef747ebfea4b

foreign import ccall safe "wrapper" hs_bindgen_4d1683a013d3d5e3_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_4d1683a013d3d5e3 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_4d1683a013d3d5e3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_4d1683a013d3d5e3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_386abd3ca2cb6f05_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_386abd3ca2cb6f05 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_386abd3ca2cb6f05 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_386abd3ca2cb6f05_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_4d1683a013d3d5e3

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_386abd3ca2cb6f05

foreign import ccall safe "wrapper" hs_bindgen_d5e16f6ba13001eb_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_d5e16f6ba13001eb ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_d5e16f6ba13001eb =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d5e16f6ba13001eb_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ad4fbff37e007433_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_ad4fbff37e007433 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_ad4fbff37e007433 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ad4fbff37e007433_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_d5e16f6ba13001eb

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_ad4fbff37e007433

foreign import ccall safe "wrapper" hs_bindgen_196a6f41da3a0b67_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_196a6f41da3a0b67 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_196a6f41da3a0b67 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_196a6f41da3a0b67_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_333a812250be469c_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_333a812250be469c ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_333a812250be469c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_333a812250be469c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_196a6f41da3a0b67

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_333a812250be469c

foreign import ccall safe "wrapper" hs_bindgen_1aad7e9537785de2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_1aad7e9537785de2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_1aad7e9537785de2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_1aad7e9537785de2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ccc14fe572432ee9_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_ccc14fe572432ee9 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_ccc14fe572432ee9 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ccc14fe572432ee9_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_1aad7e9537785de2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_ccc14fe572432ee9

foreign import ccall safe "wrapper" hs_bindgen_6579c07d368d7ed1_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_6579c07d368d7ed1 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_6579c07d368d7ed1 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_6579c07d368d7ed1_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_549745b8ea45b8d5_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_549745b8ea45b8d5 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_549745b8ea45b8d5 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_549745b8ea45b8d5_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_6579c07d368d7ed1

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_549745b8ea45b8d5

foreign import ccall safe "wrapper" hs_bindgen_63a7d064b04f4558_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_63a7d064b04f4558 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_63a7d064b04f4558 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_63a7d064b04f4558_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3597761e2e9b6f0d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_3597761e2e9b6f0d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_3597761e2e9b6f0d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3597761e2e9b6f0d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_63a7d064b04f4558

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_pointer) -> HsBindgen.Runtime.LibC.Word32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_3597761e2e9b6f0d

foreign import ccall safe "wrapper" hs_bindgen_14a89356092f3ab0_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_14a89356092f3ab0 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_14a89356092f3ab0 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_14a89356092f3ab0_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_0a3f4533a5e02f94_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_0a3f4533a5e02f94 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_0a3f4533a5e02f94 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_0a3f4533a5e02f94_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_14a89356092f3ab0

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_0a3f4533a5e02f94

foreign import ccall safe "wrapper" hs_bindgen_2106d4b671c23695_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_2106d4b671c23695 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_2106d4b671c23695 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_2106d4b671c23695_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5cfa6557c94fe743_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_5cfa6557c94fe743 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_5cfa6557c94fe743 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5cfa6557c94fe743_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_2106d4b671c23695

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_registry) -> HsBindgen.Runtime.LibC.Word32 -> (PtrConst.PtrConst RIP.CChar) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_5cfa6557c94fe743

foreign import ccall safe "wrapper" hs_bindgen_52614345d38540ec_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_52614345d38540ec ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()))
hs_bindgen_52614345d38540ec =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_52614345d38540ec_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_3ff0e37b52ebba78_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())@
hs_bindgen_3ff0e37b52ebba78 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()
hs_bindgen_3ff0e37b52ebba78 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_3ff0e37b52ebba78_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  toFunPtr = hs_bindgen_52614345d38540ec

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> (PtrConst.PtrConst RIP.CChar) -> IO ()) where

  fromFunPtr = hs_bindgen_3ff0e37b52ebba78

foreign import ccall safe "wrapper" hs_bindgen_053215ee8ea05cea_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_053215ee8ea05cea ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_053215ee8ea05cea =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_053215ee8ea05cea_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_0cec578fd95ac180_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_0cec578fd95ac180 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_0cec578fd95ac180 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_0cec578fd95ac180_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_053215ee8ea05cea

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_seat) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_0cec578fd95ac180

foreign import ccall safe "wrapper" hs_bindgen_f8c2eeafbdee59ce_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ())@
hs_bindgen_f8c2eeafbdee59ce ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ()))
hs_bindgen_f8c2eeafbdee59ce =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f8c2eeafbdee59ce_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_ad2eebfd277bd654_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ())@
hs_bindgen_ad2eebfd277bd654 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ()
hs_bindgen_ad2eebfd277bd654 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_ad2eebfd277bd654_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ()) where

  toFunPtr = hs_bindgen_f8c2eeafbdee59ce

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> IO ()) where

  fromFunPtr = hs_bindgen_ad2eebfd277bd654

foreign import ccall safe "wrapper" hs_bindgen_62d8e104578ef5c2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_62d8e104578ef5c2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_62d8e104578ef5c2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_62d8e104578ef5c2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_798beeaf5b662305_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_798beeaf5b662305 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_798beeaf5b662305 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_798beeaf5b662305_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_62d8e104578ef5c2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_798beeaf5b662305

foreign import ccall safe "wrapper" hs_bindgen_1acce78366ca51bf_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_1acce78366ca51bf ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_1acce78366ca51bf =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_1acce78366ca51bf_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5e7cdf748c721f7a_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_5e7cdf748c721f7a ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_5e7cdf748c721f7a =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5e7cdf748c721f7a_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_1acce78366ca51bf

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shell_surface) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_5e7cdf748c721f7a

foreign import ccall safe "wrapper" hs_bindgen_baef53cff718f868_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_baef53cff718f868 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_baef53cff718f868 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_baef53cff718f868_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_9981fba5cde05871_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_9981fba5cde05871 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_9981fba5cde05871 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_9981fba5cde05871_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_baef53cff718f868

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_shm) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_9981fba5cde05871

foreign import ccall safe "wrapper" hs_bindgen_95c3d256c8c4b99d_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ())@
hs_bindgen_95c3d256c8c4b99d ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ()))
hs_bindgen_95c3d256c8c4b99d =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_95c3d256c8c4b99d_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e63a003c9d10263d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ())@
hs_bindgen_e63a003c9d10263d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ()
hs_bindgen_e63a003c9d10263d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e63a003c9d10263d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ()) where

  toFunPtr = hs_bindgen_95c3d256c8c4b99d

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> (RIP.Ptr Wl_output) -> IO ()) where

  fromFunPtr = hs_bindgen_e63a003c9d10263d

foreign import ccall safe "wrapper" hs_bindgen_c8fe3beb1e20960d_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_c8fe3beb1e20960d ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_c8fe3beb1e20960d =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_c8fe3beb1e20960d_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_e14b1d2eb8d96f2d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_e14b1d2eb8d96f2d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_e14b1d2eb8d96f2d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_e14b1d2eb8d96f2d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_c8fe3beb1e20960d

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_e14b1d2eb8d96f2d

foreign import ccall safe "wrapper" hs_bindgen_b24dede6a5157007_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_b24dede6a5157007 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_b24dede6a5157007 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_b24dede6a5157007_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_191ccedb512f7f8b_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_191ccedb512f7f8b ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_191ccedb512f7f8b =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_191ccedb512f7f8b_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_b24dede6a5157007

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_191ccedb512f7f8b

foreign import ccall safe "wrapper" hs_bindgen_511490c1ffef17a2_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ())@
hs_bindgen_511490c1ffef17a2 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ()))
hs_bindgen_511490c1ffef17a2 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_511490c1ffef17a2_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_508fc57933605de4_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ())@
hs_bindgen_508fc57933605de4 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ()
hs_bindgen_508fc57933605de4 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_508fc57933605de4_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ()) where

  toFunPtr = hs_bindgen_511490c1ffef17a2

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> IO ()) where

  fromFunPtr = hs_bindgen_508fc57933605de4

foreign import ccall safe "wrapper" hs_bindgen_539795d76c852676_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_539795d76c852676 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_539795d76c852676 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_539795d76c852676_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_08f513d204237263_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_08f513d204237263 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_08f513d204237263 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_08f513d204237263_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_539795d76c852676

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_08f513d204237263

foreign import ccall safe "wrapper" hs_bindgen_e008041fe313b348_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_e008041fe313b348 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_e008041fe313b348 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_e008041fe313b348_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_4bc746c4d0931a0d_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_4bc746c4d0931a0d ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_4bc746c4d0931a0d =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_4bc746c4d0931a0d_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_e008041fe313b348

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_4bc746c4d0931a0d

foreign import ccall safe "wrapper" hs_bindgen_5508049e1ce17382_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_5508049e1ce17382 ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_5508049e1ce17382 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_5508049e1ce17382_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5e4399516ac62577_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_5e4399516ac62577 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_5e4399516ac62577 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5e4399516ac62577_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_5508049e1ce17382

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_5e4399516ac62577

foreign import ccall safe "wrapper" hs_bindgen_25587ea38399131e_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_25587ea38399131e ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()))
hs_bindgen_25587ea38399131e =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_25587ea38399131e_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_7b4195aa9c511399_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> (RIP.Ptr RIP.Void) -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())@
hs_bindgen_7b4195aa9c511399 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()
hs_bindgen_7b4195aa9c511399 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_7b4195aa9c511399_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  toFunPtr = hs_bindgen_25587ea38399131e

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> (RIP.Ptr Wl_surface) -> HsBindgen.Runtime.LibC.Int32 -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> Bindings.Wayland.Util.Generated.Wl_fixed_t -> IO ()) where

  fromFunPtr = hs_bindgen_7b4195aa9c511399

foreign import ccall safe "wrapper" hs_bindgen_95c1ade7c46808ac_base ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_95c1ade7c46808ac ::
     ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_95c1ade7c46808ac =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_95c1ade7c46808ac_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_fa7ff8ed18c159a2_base ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr RIP.Void) -> RIP.Word32 -> RIP.Word32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_fa7ff8ed18c159a2 ::
     RIP.FunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> (RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_fa7ff8ed18c159a2 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_fa7ff8ed18c159a2_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_95c1ade7c46808ac

instance RIP.FromFunPtr ((RIP.Ptr RIP.Void) -> (RIP.Ptr Wl_touch) -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_fa7ff8ed18c159a2

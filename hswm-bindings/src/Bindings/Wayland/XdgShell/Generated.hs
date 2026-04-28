{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
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

module Bindings.Wayland.XdgShell.Generated
    ( Bindings.Wayland.XdgShell.Generated.Xdg_popup
    , Bindings.Wayland.XdgShell.Generated.Xdg_positioner
    , Bindings.Wayland.XdgShell.Generated.Xdg_surface
    , Bindings.Wayland.XdgShell.Generated.Xdg_toplevel
    , Bindings.Wayland.XdgShell.Generated.Xdg_wm_base
    , Bindings.Wayland.XdgShell.Generated.Xdg_wm_base_error(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_WM_BASE_ERROR_ROLE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_WM_BASE_ERROR_DEFUNCT_SURFACES
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_WM_BASE_ERROR_NOT_THE_TOPMOST_POPUP
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_WM_BASE_ERROR_INVALID_POPUP_PARENT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_WM_BASE_ERROR_INVALID_SURFACE_STATE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_WM_BASE_ERROR_INVALID_POSITIONER
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_WM_BASE_ERROR_UNRESPONSIVE
    , Bindings.Wayland.XdgShell.Generated.Xdg_wm_base_listener(..)
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_DESTROY
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_CREATE_POSITIONER
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_GET_XDG_SURFACE
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_PONG
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_PING_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_DESTROY_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_CREATE_POSITIONER_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_GET_XDG_SURFACE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_WM_BASE_PONG_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.Xdg_positioner_error(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ERROR_INVALID_INPUT
    , Bindings.Wayland.XdgShell.Generated.Xdg_positioner_anchor(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_NONE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_TOP
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_BOTTOM
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_RIGHT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_TOP_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_BOTTOM_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_TOP_RIGHT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_ANCHOR_BOTTOM_RIGHT
    , Bindings.Wayland.XdgShell.Generated.Xdg_positioner_gravity(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_NONE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_TOP
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_BOTTOM
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_RIGHT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_TOP_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_BOTTOM_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_TOP_RIGHT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_GRAVITY_BOTTOM_RIGHT
    , Bindings.Wayland.XdgShell.Generated.Xdg_positioner_constraint_adjustment(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_NONE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_X
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_Y
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_X
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_Y
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_X
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_Y
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_DESTROY
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_SIZE
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_ANCHOR_RECT
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_ANCHOR
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_GRAVITY
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_OFFSET
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_REACTIVE
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_PARENT_SIZE
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_PARENT_CONFIGURE
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_DESTROY_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_SIZE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_ANCHOR_RECT_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_ANCHOR_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_GRAVITY_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_OFFSET_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_REACTIVE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_PARENT_SIZE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POSITIONER_SET_PARENT_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.Xdg_surface_error(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_SURFACE_ERROR_NOT_CONSTRUCTED
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_SURFACE_ERROR_ALREADY_CONSTRUCTED
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_SURFACE_ERROR_UNCONFIGURED_BUFFER
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_SURFACE_ERROR_INVALID_SERIAL
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_SURFACE_ERROR_INVALID_SIZE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT
    , Bindings.Wayland.XdgShell.Generated.Xdg_surface_listener(..)
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_DESTROY
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_GET_TOPLEVEL
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_GET_POPUP
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_SET_WINDOW_GEOMETRY
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_ACK_CONFIGURE
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_DESTROY_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_GET_TOPLEVEL_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_GET_POPUP_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_SET_WINDOW_GEOMETRY_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_SURFACE_ACK_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.Xdg_toplevel_error(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_ERROR_INVALID_RESIZE_EDGE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_ERROR_INVALID_PARENT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_ERROR_INVALID_SIZE
    , Bindings.Wayland.XdgShell.Generated.Xdg_toplevel_resize_edge(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_NONE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_TOP
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_RIGHT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT
    , Bindings.Wayland.XdgShell.Generated.Xdg_toplevel_state(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_MAXIMIZED
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_FULLSCREEN
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_RESIZING
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_ACTIVATED
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_TILED_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_TILED_RIGHT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_TILED_TOP
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_TILED_BOTTOM
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_SUSPENDED
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_CONSTRAINED_LEFT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_CONSTRAINED_TOP
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_TILED_LEFT_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_TILED_RIGHT_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_TILED_TOP_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_TILED_BOTTOM_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_SUSPENDED_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_CONSTRAINED_LEFT_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_CONSTRAINED_TOP_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.Xdg_toplevel_wm_capabilities(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_WM_CAPABILITIES_WINDOW_MENU
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_WM_CAPABILITIES_MAXIMIZE
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_WM_CAPABILITIES_FULLSCREEN
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_TOPLEVEL_WM_CAPABILITIES_MINIMIZE
    , Bindings.Wayland.XdgShell.Generated.Xdg_toplevel_listener(..)
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_DESTROY
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_PARENT
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_TITLE
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_APP_ID
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SHOW_WINDOW_MENU
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_MOVE
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_RESIZE
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_MAX_SIZE
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_MIN_SIZE
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_MAXIMIZED
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_UNSET_MAXIMIZED
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_FULLSCREEN
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_UNSET_FULLSCREEN
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_MINIMIZED
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_CLOSE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_CONFIGURE_BOUNDS_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_WM_CAPABILITIES_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_DESTROY_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_PARENT_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_TITLE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_APP_ID_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SHOW_WINDOW_MENU_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_MOVE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_RESIZE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_MAX_SIZE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_MIN_SIZE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_MAXIMIZED_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_UNSET_MAXIMIZED_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_FULLSCREEN_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_UNSET_FULLSCREEN_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_TOPLEVEL_SET_MINIMIZED_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.Xdg_popup_error(..)
    , pattern Bindings.Wayland.XdgShell.Generated.XDG_POPUP_ERROR_INVALID_GRAB
    , Bindings.Wayland.XdgShell.Generated.Xdg_popup_listener(..)
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_DESTROY
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_GRAB
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_REPOSITION
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_CONFIGURE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_POPUP_DONE_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_REPOSITIONED_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_DESTROY_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_GRAB_SINCE_VERSION
    , Bindings.Wayland.XdgShell.Generated.xDG_POPUP_REPOSITION_SINCE_VERSION
    )
  where

import qualified Bindings.Wayland.Util.Generated
import qualified HsBindgen.Runtime.CEnum as CEnum
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.Internal.Prelude as RIP
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal

{-| __C declaration:__ @struct xdg_popup@

    __defined at:__ @xdg-shell-client-protocol.h 55:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_popup

{-| __C declaration:__ @struct xdg_positioner@

    __defined at:__ @xdg-shell-client-protocol.h 56:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_positioner

{-| __C declaration:__ @struct xdg_surface@

    __defined at:__ @xdg-shell-client-protocol.h 57:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_surface

{-| __C declaration:__ @struct xdg_toplevel@

    __defined at:__ @xdg-shell-client-protocol.h 58:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_toplevel

{-| __C declaration:__ @struct xdg_wm_base@

    __defined at:__ @xdg-shell-client-protocol.h 59:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_wm_base

{-| __C declaration:__ @enum xdg_wm_base_error@

    __defined at:__ @xdg-shell-client-protocol.h 373:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_wm_base_error = Xdg_wm_base_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_wm_base_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_wm_base_error where

  readRaw =
    \ptr0 ->
          pure Xdg_wm_base_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_wm_base_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_wm_base_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_wm_base_error instance RIP.Storable Xdg_wm_base_error

deriving via RIP.CUInt instance RIP.Prim Xdg_wm_base_error

instance CEnum.CEnum Xdg_wm_base_error where

  type CEnumZ Xdg_wm_base_error = RIP.CUInt

  toCEnum = Xdg_wm_base_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "XDG_WM_BASE_ERROR_ROLE")
                                   , (1, RIP.singleton "XDG_WM_BASE_ERROR_DEFUNCT_SURFACES")
                                   , (2, RIP.singleton "XDG_WM_BASE_ERROR_NOT_THE_TOPMOST_POPUP")
                                   , (3, RIP.singleton "XDG_WM_BASE_ERROR_INVALID_POPUP_PARENT")
                                   , (4, RIP.singleton "XDG_WM_BASE_ERROR_INVALID_SURFACE_STATE")
                                   , (5, RIP.singleton "XDG_WM_BASE_ERROR_INVALID_POSITIONER")
                                   , (6, RIP.singleton "XDG_WM_BASE_ERROR_UNRESPONSIVE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_wm_base_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_wm_base_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_wm_base_error where

  minDeclaredValue = XDG_WM_BASE_ERROR_ROLE

  maxDeclaredValue = XDG_WM_BASE_ERROR_UNRESPONSIVE

instance Show Xdg_wm_base_error where

  showsPrec = CEnum.shows

instance Read Xdg_wm_base_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_wm_base_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_wm_base_error "unwrap" where

  type CFieldType Xdg_wm_base_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_WM_BASE_ERROR_ROLE@

    __defined at:__ @xdg-shell-client-protocol.h 377:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_WM_BASE_ERROR_ROLE :: Xdg_wm_base_error
pattern XDG_WM_BASE_ERROR_ROLE = Xdg_wm_base_error 0

{-| __C declaration:__ @XDG_WM_BASE_ERROR_DEFUNCT_SURFACES@

    __defined at:__ @xdg-shell-client-protocol.h 381:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_WM_BASE_ERROR_DEFUNCT_SURFACES :: Xdg_wm_base_error
pattern XDG_WM_BASE_ERROR_DEFUNCT_SURFACES = Xdg_wm_base_error 1

{-| __C declaration:__ @XDG_WM_BASE_ERROR_NOT_THE_TOPMOST_POPUP@

    __defined at:__ @xdg-shell-client-protocol.h 385:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_WM_BASE_ERROR_NOT_THE_TOPMOST_POPUP :: Xdg_wm_base_error
pattern XDG_WM_BASE_ERROR_NOT_THE_TOPMOST_POPUP = Xdg_wm_base_error 2

{-| __C declaration:__ @XDG_WM_BASE_ERROR_INVALID_POPUP_PARENT@

    __defined at:__ @xdg-shell-client-protocol.h 389:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_WM_BASE_ERROR_INVALID_POPUP_PARENT :: Xdg_wm_base_error
pattern XDG_WM_BASE_ERROR_INVALID_POPUP_PARENT = Xdg_wm_base_error 3

{-| __C declaration:__ @XDG_WM_BASE_ERROR_INVALID_SURFACE_STATE@

    __defined at:__ @xdg-shell-client-protocol.h 393:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_WM_BASE_ERROR_INVALID_SURFACE_STATE :: Xdg_wm_base_error
pattern XDG_WM_BASE_ERROR_INVALID_SURFACE_STATE = Xdg_wm_base_error 4

{-| __C declaration:__ @XDG_WM_BASE_ERROR_INVALID_POSITIONER@

    __defined at:__ @xdg-shell-client-protocol.h 397:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_WM_BASE_ERROR_INVALID_POSITIONER :: Xdg_wm_base_error
pattern XDG_WM_BASE_ERROR_INVALID_POSITIONER = Xdg_wm_base_error 5

{-| __C declaration:__ @XDG_WM_BASE_ERROR_UNRESPONSIVE@

    __defined at:__ @xdg-shell-client-protocol.h 401:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_WM_BASE_ERROR_UNRESPONSIVE :: Xdg_wm_base_error
pattern XDG_WM_BASE_ERROR_UNRESPONSIVE = Xdg_wm_base_error 6

{-| __C declaration:__ @struct xdg_wm_base_listener@

    __defined at:__ @xdg-shell-client-protocol.h 409:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_wm_base_listener = Xdg_wm_base_listener
  { ping :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ check if the client is alive

         The ping event asks the client if it's still alive. Pass the serial specified in the event back to the compositor by sending a "pong" request back with the specified serial. See xdg_wm_base.pong.

         Compositors can use this to determine if the client is still alive. It's unspecified what will happen if the client doesn't respond to the ping request, or in what timeframe. Clients should try to respond in a reasonable amount of time. The “unresponsive” error is provided for compositors that wish to disconnect unresponsive clients.

         A compositor is free to ping in any way it wants, but a client must always respond to any xdg_wm_base object it created.

         [__@serial@__]: pass this to the pong request

         __C declaration:__ @ping@

         __defined at:__ @xdg-shell-client-protocol.h 429:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Xdg_wm_base_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Xdg_wm_base_listener where

  readRaw =
    \ptr0 ->
          pure Xdg_wm_base_listener
      <*> HasCField.readRaw (RIP.Proxy @"ping") ptr0

instance Marshal.WriteRaw Xdg_wm_base_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_wm_base_listener ping2 ->
            HasCField.writeRaw (RIP.Proxy @"ping") ptr0 ping2

deriving via Marshal.EquivStorable Xdg_wm_base_listener instance RIP.Storable Xdg_wm_base_listener

instance HasCField.HasCField Xdg_wm_base_listener "ping" where

  type CFieldType Xdg_wm_base_listener "ping" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ())
         ) => RIP.HasField "ping" (RIP.Ptr Xdg_wm_base_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"ping")

{-| __C declaration:__ @macro XDG_WM_BASE_DESTROY@

    __defined at:__ @xdg-shell-client-protocol.h 445:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_DESTROY :: RIP.CInt
xDG_WM_BASE_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_WM_BASE_CREATE_POSITIONER@

    __defined at:__ @xdg-shell-client-protocol.h 446:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_CREATE_POSITIONER :: RIP.CInt
xDG_WM_BASE_CREATE_POSITIONER = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_WM_BASE_GET_XDG_SURFACE@

    __defined at:__ @xdg-shell-client-protocol.h 447:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_GET_XDG_SURFACE :: RIP.CInt
xDG_WM_BASE_GET_XDG_SURFACE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_WM_BASE_PONG@

    __defined at:__ @xdg-shell-client-protocol.h 448:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_PONG :: RIP.CInt
xDG_WM_BASE_PONG = (3 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_WM_BASE_PING_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 453:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_PING_SINCE_VERSION :: RIP.CInt
xDG_WM_BASE_PING_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_WM_BASE_DESTROY_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 458:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_DESTROY_SINCE_VERSION :: RIP.CInt
xDG_WM_BASE_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_WM_BASE_CREATE_POSITIONER_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 462:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_CREATE_POSITIONER_SINCE_VERSION :: RIP.CInt
xDG_WM_BASE_CREATE_POSITIONER_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_WM_BASE_GET_XDG_SURFACE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 466:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_GET_XDG_SURFACE_SINCE_VERSION :: RIP.CInt
xDG_WM_BASE_GET_XDG_SURFACE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_WM_BASE_PONG_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 470:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_WM_BASE_PONG_SINCE_VERSION :: RIP.CInt
xDG_WM_BASE_PONG_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @enum xdg_positioner_error@

    __defined at:__ @xdg-shell-client-protocol.h 570:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_positioner_error = Xdg_positioner_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_positioner_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_positioner_error where

  readRaw =
    \ptr0 ->
          pure Xdg_positioner_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_positioner_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_positioner_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_positioner_error instance RIP.Storable Xdg_positioner_error

deriving via RIP.CUInt instance RIP.Prim Xdg_positioner_error

instance CEnum.CEnum Xdg_positioner_error where

  type CEnumZ Xdg_positioner_error = RIP.CUInt

  toCEnum = Xdg_positioner_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "XDG_POSITIONER_ERROR_INVALID_INPUT")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_positioner_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_positioner_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_positioner_error where

  minDeclaredValue = XDG_POSITIONER_ERROR_INVALID_INPUT

  maxDeclaredValue = XDG_POSITIONER_ERROR_INVALID_INPUT

instance Show Xdg_positioner_error where

  showsPrec = CEnum.shows

instance Read Xdg_positioner_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_positioner_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_positioner_error "unwrap" where

  type CFieldType Xdg_positioner_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_POSITIONER_ERROR_INVALID_INPUT@

    __defined at:__ @xdg-shell-client-protocol.h 574:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ERROR_INVALID_INPUT :: Xdg_positioner_error
pattern XDG_POSITIONER_ERROR_INVALID_INPUT = Xdg_positioner_error 0

{-| __C declaration:__ @enum xdg_positioner_anchor@

    __defined at:__ @xdg-shell-client-protocol.h 580:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_positioner_anchor = Xdg_positioner_anchor
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_positioner_anchor where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_positioner_anchor where

  readRaw =
    \ptr0 ->
          pure Xdg_positioner_anchor
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_positioner_anchor where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_positioner_anchor unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_positioner_anchor instance RIP.Storable Xdg_positioner_anchor

deriving via RIP.CUInt instance RIP.Prim Xdg_positioner_anchor

instance CEnum.CEnum Xdg_positioner_anchor where

  type CEnumZ Xdg_positioner_anchor = RIP.CUInt

  toCEnum = Xdg_positioner_anchor

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "XDG_POSITIONER_ANCHOR_NONE")
                                   , (1, RIP.singleton "XDG_POSITIONER_ANCHOR_TOP")
                                   , (2, RIP.singleton "XDG_POSITIONER_ANCHOR_BOTTOM")
                                   , (3, RIP.singleton "XDG_POSITIONER_ANCHOR_LEFT")
                                   , (4, RIP.singleton "XDG_POSITIONER_ANCHOR_RIGHT")
                                   , (5, RIP.singleton "XDG_POSITIONER_ANCHOR_TOP_LEFT")
                                   , (6, RIP.singleton "XDG_POSITIONER_ANCHOR_BOTTOM_LEFT")
                                   , (7, RIP.singleton "XDG_POSITIONER_ANCHOR_TOP_RIGHT")
                                   , (8, RIP.singleton "XDG_POSITIONER_ANCHOR_BOTTOM_RIGHT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_positioner_anchor"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_positioner_anchor"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_positioner_anchor where

  minDeclaredValue = XDG_POSITIONER_ANCHOR_NONE

  maxDeclaredValue = XDG_POSITIONER_ANCHOR_BOTTOM_RIGHT

instance Show Xdg_positioner_anchor where

  showsPrec = CEnum.shows

instance Read Xdg_positioner_anchor where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_positioner_anchor) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_positioner_anchor "unwrap" where

  type CFieldType Xdg_positioner_anchor "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_NONE@

    __defined at:__ @xdg-shell-client-protocol.h 581:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_NONE :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_NONE = Xdg_positioner_anchor 0

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_TOP@

    __defined at:__ @xdg-shell-client-protocol.h 582:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_TOP :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_TOP = Xdg_positioner_anchor 1

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_BOTTOM@

    __defined at:__ @xdg-shell-client-protocol.h 583:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_BOTTOM :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_BOTTOM = Xdg_positioner_anchor 2

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 584:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_LEFT :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_LEFT = Xdg_positioner_anchor 3

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 585:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_RIGHT :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_RIGHT = Xdg_positioner_anchor 4

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_TOP_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 586:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_TOP_LEFT :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_TOP_LEFT = Xdg_positioner_anchor 5

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_BOTTOM_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 587:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_BOTTOM_LEFT :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_BOTTOM_LEFT = Xdg_positioner_anchor 6

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_TOP_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 588:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_TOP_RIGHT :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_TOP_RIGHT = Xdg_positioner_anchor 7

{-| __C declaration:__ @XDG_POSITIONER_ANCHOR_BOTTOM_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 589:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_ANCHOR_BOTTOM_RIGHT :: Xdg_positioner_anchor
pattern XDG_POSITIONER_ANCHOR_BOTTOM_RIGHT = Xdg_positioner_anchor 8

{-| __C declaration:__ @enum xdg_positioner_gravity@

    __defined at:__ @xdg-shell-client-protocol.h 595:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_positioner_gravity = Xdg_positioner_gravity
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_positioner_gravity where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_positioner_gravity where

  readRaw =
    \ptr0 ->
          pure Xdg_positioner_gravity
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_positioner_gravity where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_positioner_gravity unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_positioner_gravity instance RIP.Storable Xdg_positioner_gravity

deriving via RIP.CUInt instance RIP.Prim Xdg_positioner_gravity

instance CEnum.CEnum Xdg_positioner_gravity where

  type CEnumZ Xdg_positioner_gravity = RIP.CUInt

  toCEnum = Xdg_positioner_gravity

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "XDG_POSITIONER_GRAVITY_NONE")
                                   , (1, RIP.singleton "XDG_POSITIONER_GRAVITY_TOP")
                                   , (2, RIP.singleton "XDG_POSITIONER_GRAVITY_BOTTOM")
                                   , (3, RIP.singleton "XDG_POSITIONER_GRAVITY_LEFT")
                                   , (4, RIP.singleton "XDG_POSITIONER_GRAVITY_RIGHT")
                                   , (5, RIP.singleton "XDG_POSITIONER_GRAVITY_TOP_LEFT")
                                   , (6, RIP.singleton "XDG_POSITIONER_GRAVITY_BOTTOM_LEFT")
                                   , (7, RIP.singleton "XDG_POSITIONER_GRAVITY_TOP_RIGHT")
                                   , (8, RIP.singleton "XDG_POSITIONER_GRAVITY_BOTTOM_RIGHT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_positioner_gravity"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_positioner_gravity"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_positioner_gravity where

  minDeclaredValue = XDG_POSITIONER_GRAVITY_NONE

  maxDeclaredValue =
    XDG_POSITIONER_GRAVITY_BOTTOM_RIGHT

instance Show Xdg_positioner_gravity where

  showsPrec = CEnum.shows

instance Read Xdg_positioner_gravity where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_positioner_gravity) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_positioner_gravity "unwrap" where

  type CFieldType Xdg_positioner_gravity "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_NONE@

    __defined at:__ @xdg-shell-client-protocol.h 596:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_NONE :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_NONE = Xdg_positioner_gravity 0

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_TOP@

    __defined at:__ @xdg-shell-client-protocol.h 597:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_TOP :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_TOP = Xdg_positioner_gravity 1

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_BOTTOM@

    __defined at:__ @xdg-shell-client-protocol.h 598:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_BOTTOM :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_BOTTOM = Xdg_positioner_gravity 2

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 599:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_LEFT :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_LEFT = Xdg_positioner_gravity 3

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 600:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_RIGHT :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_RIGHT = Xdg_positioner_gravity 4

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_TOP_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 601:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_TOP_LEFT :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_TOP_LEFT = Xdg_positioner_gravity 5

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_BOTTOM_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 602:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_BOTTOM_LEFT :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_BOTTOM_LEFT = Xdg_positioner_gravity 6

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_TOP_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 603:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_TOP_RIGHT :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_TOP_RIGHT = Xdg_positioner_gravity 7

{-| __C declaration:__ @XDG_POSITIONER_GRAVITY_BOTTOM_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 604:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_GRAVITY_BOTTOM_RIGHT :: Xdg_positioner_gravity
pattern XDG_POSITIONER_GRAVITY_BOTTOM_RIGHT = Xdg_positioner_gravity 8

{-| constraint adjustments

    The constraint adjustment value define ways the compositor will adjust the position of the surface, if the unadjusted position would result in the surface being partly constrained.

    Whether a surface is considered 'constrained' is left to the compositor to determine. For example, the surface may be partly outside the compositor's defined 'work area', thus necessitating the child surface's position be adjusted until it is entirely inside the work area.

    The adjustments can be combined, according to a defined precedence: 1) Flip, 2) Slide, 3) Resize.

    __C declaration:__ @enum xdg_positioner_constraint_adjustment@

    __defined at:__ @xdg-shell-client-protocol.h 626:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_positioner_constraint_adjustment = Xdg_positioner_constraint_adjustment
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_positioner_constraint_adjustment where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_positioner_constraint_adjustment where

  readRaw =
    \ptr0 ->
          pure Xdg_positioner_constraint_adjustment
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_positioner_constraint_adjustment where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_positioner_constraint_adjustment unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_positioner_constraint_adjustment instance RIP.Storable Xdg_positioner_constraint_adjustment

deriving via RIP.CUInt instance RIP.Prim Xdg_positioner_constraint_adjustment

instance CEnum.CEnum Xdg_positioner_constraint_adjustment where

  type CEnumZ Xdg_positioner_constraint_adjustment =
    RIP.CUInt

  toCEnum = Xdg_positioner_constraint_adjustment

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_NONE")
                                   , (1, RIP.singleton "XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_X")
                                   , (2, RIP.singleton "XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_Y")
                                   , (4, RIP.singleton "XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_X")
                                   , (8, RIP.singleton "XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_Y")
                                   , (16, RIP.singleton "XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_X")
                                   , (32, RIP.singleton "XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_Y")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_positioner_constraint_adjustment"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_positioner_constraint_adjustment"

instance Show Xdg_positioner_constraint_adjustment where

  showsPrec = CEnum.shows

instance Read Xdg_positioner_constraint_adjustment where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_positioner_constraint_adjustment) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_positioner_constraint_adjustment "unwrap" where

  type CFieldType Xdg_positioner_constraint_adjustment "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| don't move the child surface when constrained

    Don't alter the surface position even if it is constrained on some axis, for example partially outside the edge of an output.

    __C declaration:__ @XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_NONE@

    __defined at:__ @xdg-shell-client-protocol.h 633:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_NONE :: Xdg_positioner_constraint_adjustment
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_NONE = Xdg_positioner_constraint_adjustment 0

{-| move along the x axis until unconstrained

    Slide the surface along the x axis until it is no longer constrained.

    First try to slide towards the direction of the gravity on the x axis until either the edge in the opposite direction of the gravity is unconstrained or the edge in the direction of the gravity is constrained.

    Then try to slide towards the opposite direction of the gravity on the x axis until either the edge in the direction of the gravity is unconstrained or the edge in the opposite direction of the gravity is constrained.

    __C declaration:__ @XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_X@

    __defined at:__ @xdg-shell-client-protocol.h 650:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_X :: Xdg_positioner_constraint_adjustment
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_X = Xdg_positioner_constraint_adjustment 1

{-| move along the y axis until unconstrained

    Slide the surface along the y axis until it is no longer constrained.

    First try to slide towards the direction of the gravity on the y axis until either the edge in the opposite direction of the gravity is unconstrained or the edge in the direction of the gravity is constrained.

    Then try to slide towards the opposite direction of the gravity on the y axis until either the edge in the direction of the gravity is unconstrained or the edge in the opposite direction of the gravity is constrained.

    __C declaration:__ @XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_Y@

    __defined at:__ @xdg-shell-client-protocol.h 667:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_Y :: Xdg_positioner_constraint_adjustment
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_Y = Xdg_positioner_constraint_adjustment 2

{-| invert the anchor and gravity on the x axis

    Invert the anchor and gravity on the x axis if the surface is constrained on the x axis. For example, if the left edge of the surface is constrained, the gravity is 'left' and the anchor is 'left', change the gravity to 'right' and the anchor to 'right'.

    If the adjusted position also ends up being constrained, the resulting position of the flip_x adjustment will be the one before the adjustment.

    __C declaration:__ @XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_X@

    __defined at:__ @xdg-shell-client-protocol.h 680:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_X :: Xdg_positioner_constraint_adjustment
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_X = Xdg_positioner_constraint_adjustment 4

{-| invert the anchor and gravity on the y axis

    Invert the anchor and gravity on the y axis if the surface is constrained on the y axis. For example, if the bottom edge of the surface is constrained, the gravity is 'bottom' and the anchor is 'bottom', change the gravity to 'top' and the anchor to 'top'.

    The adjusted position is calculated given the original anchor rectangle and offset, but with the new flipped anchor and gravity values.

    If the adjusted position also ends up being constrained, the resulting position of the flip_y adjustment will be the one before the adjustment.

    __C declaration:__ @XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_Y@

    __defined at:__ @xdg-shell-client-protocol.h 698:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_Y :: Xdg_positioner_constraint_adjustment
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_Y = Xdg_positioner_constraint_adjustment 8

{-| horizontally resize the surface

    Resize the surface horizontally so that it is completely unconstrained.

    __C declaration:__ @XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_X@

    __defined at:__ @xdg-shell-client-protocol.h 705:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_X :: Xdg_positioner_constraint_adjustment
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_X = Xdg_positioner_constraint_adjustment 16

{-| vertically resize the surface

    Resize the surface vertically so that it is completely unconstrained.

    __C declaration:__ @XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_Y@

    __defined at:__ @xdg-shell-client-protocol.h 712:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_Y :: Xdg_positioner_constraint_adjustment
pattern XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_Y = Xdg_positioner_constraint_adjustment 32

{-| __C declaration:__ @macro XDG_POSITIONER_DESTROY@

    __defined at:__ @xdg-shell-client-protocol.h 716:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_DESTROY :: RIP.CInt
xDG_POSITIONER_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_SIZE@

    __defined at:__ @xdg-shell-client-protocol.h 717:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_SIZE :: RIP.CInt
xDG_POSITIONER_SET_SIZE = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_ANCHOR_RECT@

    __defined at:__ @xdg-shell-client-protocol.h 718:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_ANCHOR_RECT :: RIP.CInt
xDG_POSITIONER_SET_ANCHOR_RECT = (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_ANCHOR@

    __defined at:__ @xdg-shell-client-protocol.h 719:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_ANCHOR :: RIP.CInt
xDG_POSITIONER_SET_ANCHOR = (3 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_GRAVITY@

    __defined at:__ @xdg-shell-client-protocol.h 720:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_GRAVITY :: RIP.CInt
xDG_POSITIONER_SET_GRAVITY = (4 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT@

    __defined at:__ @xdg-shell-client-protocol.h 721:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT :: RIP.CInt
xDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_OFFSET@

    __defined at:__ @xdg-shell-client-protocol.h 722:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_OFFSET :: RIP.CInt
xDG_POSITIONER_SET_OFFSET = (6 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_REACTIVE@

    __defined at:__ @xdg-shell-client-protocol.h 723:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_REACTIVE :: RIP.CInt
xDG_POSITIONER_SET_REACTIVE = (7 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_PARENT_SIZE@

    __defined at:__ @xdg-shell-client-protocol.h 724:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_PARENT_SIZE :: RIP.CInt
xDG_POSITIONER_SET_PARENT_SIZE = (8 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_PARENT_CONFIGURE@

    __defined at:__ @xdg-shell-client-protocol.h 725:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_PARENT_CONFIGURE :: RIP.CInt
xDG_POSITIONER_SET_PARENT_CONFIGURE = (9 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_DESTROY_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 731:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_DESTROY_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_DESTROY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_SIZE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 735:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_SIZE_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_SIZE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_ANCHOR_RECT_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 739:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_ANCHOR_RECT_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_ANCHOR_RECT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_ANCHOR_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 743:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_ANCHOR_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_ANCHOR_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_GRAVITY_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 747:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_GRAVITY_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_GRAVITY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 751:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_OFFSET_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 755:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_OFFSET_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_OFFSET_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_REACTIVE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 759:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_REACTIVE_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_REACTIVE_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_PARENT_SIZE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 763:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_PARENT_SIZE_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_PARENT_SIZE_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POSITIONER_SET_PARENT_CONFIGURE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 767:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POSITIONER_SET_PARENT_CONFIGURE_SINCE_VERSION :: RIP.CInt
xDG_POSITIONER_SET_PARENT_CONFIGURE_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @enum xdg_surface_error@

    __defined at:__ @xdg-shell-client-protocol.h 971:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_surface_error = Xdg_surface_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_surface_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_surface_error where

  readRaw =
    \ptr0 ->
          pure Xdg_surface_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_surface_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_surface_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_surface_error instance RIP.Storable Xdg_surface_error

deriving via RIP.CUInt instance RIP.Prim Xdg_surface_error

instance CEnum.CEnum Xdg_surface_error where

  type CEnumZ Xdg_surface_error = RIP.CUInt

  toCEnum = Xdg_surface_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "XDG_SURFACE_ERROR_NOT_CONSTRUCTED")
                                   , (2, RIP.singleton "XDG_SURFACE_ERROR_ALREADY_CONSTRUCTED")
                                   , (3, RIP.singleton "XDG_SURFACE_ERROR_UNCONFIGURED_BUFFER")
                                   , (4, RIP.singleton "XDG_SURFACE_ERROR_INVALID_SERIAL")
                                   , (5, RIP.singleton "XDG_SURFACE_ERROR_INVALID_SIZE")
                                   , (6, RIP.singleton "XDG_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_surface_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_surface_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_surface_error where

  minDeclaredValue = XDG_SURFACE_ERROR_NOT_CONSTRUCTED

  maxDeclaredValue =
    XDG_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT

instance Show Xdg_surface_error where

  showsPrec = CEnum.shows

instance Read Xdg_surface_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_surface_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_surface_error "unwrap" where

  type CFieldType Xdg_surface_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_SURFACE_ERROR_NOT_CONSTRUCTED@

    __defined at:__ @xdg-shell-client-protocol.h 975:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_SURFACE_ERROR_NOT_CONSTRUCTED :: Xdg_surface_error
pattern XDG_SURFACE_ERROR_NOT_CONSTRUCTED = Xdg_surface_error 1

{-| __C declaration:__ @XDG_SURFACE_ERROR_ALREADY_CONSTRUCTED@

    __defined at:__ @xdg-shell-client-protocol.h 979:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_SURFACE_ERROR_ALREADY_CONSTRUCTED :: Xdg_surface_error
pattern XDG_SURFACE_ERROR_ALREADY_CONSTRUCTED = Xdg_surface_error 2

{-| __C declaration:__ @XDG_SURFACE_ERROR_UNCONFIGURED_BUFFER@

    __defined at:__ @xdg-shell-client-protocol.h 983:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_SURFACE_ERROR_UNCONFIGURED_BUFFER :: Xdg_surface_error
pattern XDG_SURFACE_ERROR_UNCONFIGURED_BUFFER = Xdg_surface_error 3

{-| __C declaration:__ @XDG_SURFACE_ERROR_INVALID_SERIAL@

    __defined at:__ @xdg-shell-client-protocol.h 987:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_SURFACE_ERROR_INVALID_SERIAL :: Xdg_surface_error
pattern XDG_SURFACE_ERROR_INVALID_SERIAL = Xdg_surface_error 4

{-| __C declaration:__ @XDG_SURFACE_ERROR_INVALID_SIZE@

    __defined at:__ @xdg-shell-client-protocol.h 991:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_SURFACE_ERROR_INVALID_SIZE :: Xdg_surface_error
pattern XDG_SURFACE_ERROR_INVALID_SIZE = Xdg_surface_error 5

{-| __C declaration:__ @XDG_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT@

    __defined at:__ @xdg-shell-client-protocol.h 995:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT :: Xdg_surface_error
pattern XDG_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT = Xdg_surface_error 6

{-| __C declaration:__ @struct xdg_surface_listener@

    __defined at:__ @xdg-shell-client-protocol.h 1003:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_surface_listener = Xdg_surface_listener
  { configure :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ suggest a surface change

         The configure event marks the end of a configure sequence. A configure sequence is a set of one or more events configuring the state of the xdg_surface, including the final xdg_surface.configure event.

         Where applicable, xdg_surface surface roles will during a configure sequence extend this event as a latched state sent as events before the xdg_surface.configure event. Such events should be considered to make up a set of atomically applied configuration states, where the xdg_surface.configure commits the accumulated state.

         Clients should arrange their surface for the new states, and then send an ack_configure request with the serial sent in this configure event at some point before committing the new surface.

         If the client receives multiple configure events before it can respond to one, it is free to discard all but the last event it received.

         [__@serial@__]: serial of the configure event

         __C declaration:__ @configure@

         __defined at:__ @xdg-shell-client-protocol.h 1028:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Xdg_surface_listener where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Xdg_surface_listener where

  readRaw =
    \ptr0 ->
          pure Xdg_surface_listener
      <*> HasCField.readRaw (RIP.Proxy @"configure") ptr0

instance Marshal.WriteRaw Xdg_surface_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_surface_listener configure2 ->
            HasCField.writeRaw (RIP.Proxy @"configure") ptr0 configure2

deriving via Marshal.EquivStorable Xdg_surface_listener instance RIP.Storable Xdg_surface_listener

instance HasCField.HasCField Xdg_surface_listener "configure" where

  type CFieldType Xdg_surface_listener "configure" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())
         ) => RIP.HasField "configure" (RIP.Ptr Xdg_surface_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"configure")

{-| __C declaration:__ @macro XDG_SURFACE_DESTROY@

    __defined at:__ @xdg-shell-client-protocol.h 1044:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_DESTROY :: RIP.CInt
xDG_SURFACE_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_GET_TOPLEVEL@

    __defined at:__ @xdg-shell-client-protocol.h 1045:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_GET_TOPLEVEL :: RIP.CInt
xDG_SURFACE_GET_TOPLEVEL = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_GET_POPUP@

    __defined at:__ @xdg-shell-client-protocol.h 1046:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_GET_POPUP :: RIP.CInt
xDG_SURFACE_GET_POPUP = (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_SET_WINDOW_GEOMETRY@

    __defined at:__ @xdg-shell-client-protocol.h 1047:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_SET_WINDOW_GEOMETRY :: RIP.CInt
xDG_SURFACE_SET_WINDOW_GEOMETRY = (3 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_ACK_CONFIGURE@

    __defined at:__ @xdg-shell-client-protocol.h 1048:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_ACK_CONFIGURE :: RIP.CInt
xDG_SURFACE_ACK_CONFIGURE = (4 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_CONFIGURE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1053:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_CONFIGURE_SINCE_VERSION :: RIP.CInt
xDG_SURFACE_CONFIGURE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_DESTROY_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1058:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_DESTROY_SINCE_VERSION :: RIP.CInt
xDG_SURFACE_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_GET_TOPLEVEL_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1062:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_GET_TOPLEVEL_SINCE_VERSION :: RIP.CInt
xDG_SURFACE_GET_TOPLEVEL_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_GET_POPUP_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1066:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_GET_POPUP_SINCE_VERSION :: RIP.CInt
xDG_SURFACE_GET_POPUP_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_SET_WINDOW_GEOMETRY_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1070:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_SET_WINDOW_GEOMETRY_SINCE_VERSION :: RIP.CInt
xDG_SURFACE_SET_WINDOW_GEOMETRY_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_SURFACE_ACK_CONFIGURE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1074:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_SURFACE_ACK_CONFIGURE_SINCE_VERSION :: RIP.CInt
xDG_SURFACE_ACK_CONFIGURE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum xdg_toplevel_error@

    __defined at:__ @xdg-shell-client-protocol.h 1249:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_toplevel_error = Xdg_toplevel_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_toplevel_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_toplevel_error where

  readRaw =
    \ptr0 ->
          pure Xdg_toplevel_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_toplevel_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_toplevel_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_toplevel_error instance RIP.Storable Xdg_toplevel_error

deriving via RIP.CUInt instance RIP.Prim Xdg_toplevel_error

instance CEnum.CEnum Xdg_toplevel_error where

  type CEnumZ Xdg_toplevel_error = RIP.CUInt

  toCEnum = Xdg_toplevel_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "XDG_TOPLEVEL_ERROR_INVALID_RESIZE_EDGE")
                                   , (1, RIP.singleton "XDG_TOPLEVEL_ERROR_INVALID_PARENT")
                                   , (2, RIP.singleton "XDG_TOPLEVEL_ERROR_INVALID_SIZE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_toplevel_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_toplevel_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_toplevel_error where

  minDeclaredValue =
    XDG_TOPLEVEL_ERROR_INVALID_RESIZE_EDGE

  maxDeclaredValue = XDG_TOPLEVEL_ERROR_INVALID_SIZE

instance Show Xdg_toplevel_error where

  showsPrec = CEnum.shows

instance Read Xdg_toplevel_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_toplevel_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_toplevel_error "unwrap" where

  type CFieldType Xdg_toplevel_error "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_TOPLEVEL_ERROR_INVALID_RESIZE_EDGE@

    __defined at:__ @xdg-shell-client-protocol.h 1253:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_ERROR_INVALID_RESIZE_EDGE :: Xdg_toplevel_error
pattern XDG_TOPLEVEL_ERROR_INVALID_RESIZE_EDGE = Xdg_toplevel_error 0

{-| __C declaration:__ @XDG_TOPLEVEL_ERROR_INVALID_PARENT@

    __defined at:__ @xdg-shell-client-protocol.h 1257:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_ERROR_INVALID_PARENT :: Xdg_toplevel_error
pattern XDG_TOPLEVEL_ERROR_INVALID_PARENT = Xdg_toplevel_error 1

{-| __C declaration:__ @XDG_TOPLEVEL_ERROR_INVALID_SIZE@

    __defined at:__ @xdg-shell-client-protocol.h 1261:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_ERROR_INVALID_SIZE :: Xdg_toplevel_error
pattern XDG_TOPLEVEL_ERROR_INVALID_SIZE = Xdg_toplevel_error 2

{-| edge values for resizing

    These values are used to indicate which edge of a surface is being dragged in a resize operation.

    __C declaration:__ @enum xdg_toplevel_resize_edge@

    __defined at:__ @xdg-shell-client-protocol.h 1274:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_toplevel_resize_edge = Xdg_toplevel_resize_edge
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_toplevel_resize_edge where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_toplevel_resize_edge where

  readRaw =
    \ptr0 ->
          pure Xdg_toplevel_resize_edge
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_toplevel_resize_edge where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_toplevel_resize_edge unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_toplevel_resize_edge instance RIP.Storable Xdg_toplevel_resize_edge

deriving via RIP.CUInt instance RIP.Prim Xdg_toplevel_resize_edge

instance CEnum.CEnum Xdg_toplevel_resize_edge where

  type CEnumZ Xdg_toplevel_resize_edge = RIP.CUInt

  toCEnum = Xdg_toplevel_resize_edge

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (0, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_NONE")
                                   , (1, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_TOP")
                                   , (2, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM")
                                   , (4, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_LEFT")
                                   , (5, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT")
                                   , (6, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT")
                                   , (8, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_RIGHT")
                                   , (9, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT")
                                   , (10, RIP.singleton "XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_toplevel_resize_edge"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_toplevel_resize_edge"

instance Show Xdg_toplevel_resize_edge where

  showsPrec = CEnum.shows

instance Read Xdg_toplevel_resize_edge where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_toplevel_resize_edge) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_toplevel_resize_edge "unwrap" where

  type CFieldType Xdg_toplevel_resize_edge "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_NONE@

    __defined at:__ @xdg-shell-client-protocol.h 1275:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_NONE :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_NONE = Xdg_toplevel_resize_edge 0

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_TOP@

    __defined at:__ @xdg-shell-client-protocol.h 1276:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_TOP :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_TOP = Xdg_toplevel_resize_edge 1

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM@

    __defined at:__ @xdg-shell-client-protocol.h 1277:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM = Xdg_toplevel_resize_edge 2

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 1278:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_LEFT :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_LEFT = Xdg_toplevel_resize_edge 4

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 1279:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT = Xdg_toplevel_resize_edge 5

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 1280:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT = Xdg_toplevel_resize_edge 6

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 1281:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_RIGHT :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_RIGHT = Xdg_toplevel_resize_edge 8

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 1282:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT = Xdg_toplevel_resize_edge 9

{-| __C declaration:__ @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 1283:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT :: Xdg_toplevel_resize_edge
pattern XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT = Xdg_toplevel_resize_edge 10

{-| types of state on the surface

    The different state values used on the surface. This is designed for state values like maximized, fullscreen. It is paired with the configure event to ensure that both the client and the compositor setting the state can be synchronized.

    States set in this way are double-buffered, see wl_surface.commit.

    __C declaration:__ @enum xdg_toplevel_state@

    __defined at:__ @xdg-shell-client-protocol.h 1300:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_toplevel_state = Xdg_toplevel_state
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_toplevel_state where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_toplevel_state where

  readRaw =
    \ptr0 ->
          pure Xdg_toplevel_state
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_toplevel_state where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_toplevel_state unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_toplevel_state instance RIP.Storable Xdg_toplevel_state

deriving via RIP.CUInt instance RIP.Prim Xdg_toplevel_state

instance CEnum.CEnum Xdg_toplevel_state where

  type CEnumZ Xdg_toplevel_state = RIP.CUInt

  toCEnum = Xdg_toplevel_state

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "XDG_TOPLEVEL_STATE_MAXIMIZED")
                                   , (2, RIP.singleton "XDG_TOPLEVEL_STATE_FULLSCREEN")
                                   , (3, RIP.singleton "XDG_TOPLEVEL_STATE_RESIZING")
                                   , (4, RIP.singleton "XDG_TOPLEVEL_STATE_ACTIVATED")
                                   , (5, RIP.singleton "XDG_TOPLEVEL_STATE_TILED_LEFT")
                                   , (6, RIP.singleton "XDG_TOPLEVEL_STATE_TILED_RIGHT")
                                   , (7, RIP.singleton "XDG_TOPLEVEL_STATE_TILED_TOP")
                                   , (8, RIP.singleton "XDG_TOPLEVEL_STATE_TILED_BOTTOM")
                                   , (9, RIP.singleton "XDG_TOPLEVEL_STATE_SUSPENDED")
                                   , (10, RIP.singleton "XDG_TOPLEVEL_STATE_CONSTRAINED_LEFT")
                                   , (11, RIP.singleton "XDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT")
                                   , (12, RIP.singleton "XDG_TOPLEVEL_STATE_CONSTRAINED_TOP")
                                   , (13, RIP.singleton "XDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_toplevel_state"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_toplevel_state"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_toplevel_state where

  minDeclaredValue = XDG_TOPLEVEL_STATE_MAXIMIZED

  maxDeclaredValue =
    XDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM

instance Show Xdg_toplevel_state where

  showsPrec = CEnum.shows

instance Read Xdg_toplevel_state where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_toplevel_state) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_toplevel_state "unwrap" where

  type CFieldType Xdg_toplevel_state "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| the surface is maximized the surface is maximized

    The surface is maximized. The window geometry specified in the configure event must be obeyed by the client, or the xdg_wm_base.invalid_surface_state error is raised.

    The client should draw without shadow or other decoration outside of the window geometry.

    __C declaration:__ @XDG_TOPLEVEL_STATE_MAXIMIZED@

    __defined at:__ @xdg-shell-client-protocol.h 1312:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_MAXIMIZED :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_MAXIMIZED = Xdg_toplevel_state 1

{-| the surface is fullscreen the surface is fullscreen

    The surface is fullscreen. The window geometry specified in the configure event is a maximum; the client cannot resize beyond it. For a surface to cover the whole fullscreened area, the geometry dimensions must be obeyed by the client. For more details, see xdg_toplevel.set_fullscreen.

    __C declaration:__ @XDG_TOPLEVEL_STATE_FULLSCREEN@

    __defined at:__ @xdg-shell-client-protocol.h 1323:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_FULLSCREEN :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_FULLSCREEN = Xdg_toplevel_state 2

{-| the surface is being resized the surface is being resized

    The surface is being resized. The window geometry specified in the configure event is a maximum; the client cannot resize beyond it. Clients that have aspect ratio or cell sizing configuration can use a smaller size, however.

    __C declaration:__ @XDG_TOPLEVEL_STATE_RESIZING@

    __defined at:__ @xdg-shell-client-protocol.h 1333:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_RESIZING :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_RESIZING = Xdg_toplevel_state 3

{-| the surface is now activated the surface is now activated

    Client window decorations should be painted as if the window is active. Do not assume this means that the window actually has keyboard or pointer focus.

    __C declaration:__ @XDG_TOPLEVEL_STATE_ACTIVATED@

    __defined at:__ @xdg-shell-client-protocol.h 1342:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_ACTIVATED :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_ACTIVATED = Xdg_toplevel_state 4

{-| the surface’s left edge is tiled

    The window is currently in a tiled layout and the left edge is considered to be adjacent to another part of the tiling grid.

    The client should draw without shadow or other decoration outside of the window geometry on the left edge.

    @since 2

    __C declaration:__ @XDG_TOPLEVEL_STATE_TILED_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 1353:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_TILED_LEFT :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_TILED_LEFT = Xdg_toplevel_state 5

{-| the surface’s right edge is tiled

    The window is currently in a tiled layout and the right edge is considered to be adjacent to another part of the tiling grid.

    The client should draw without shadow or other decoration outside of the window geometry on the right edge.

    @since 2

    __C declaration:__ @XDG_TOPLEVEL_STATE_TILED_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 1364:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_TILED_RIGHT :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_TILED_RIGHT = Xdg_toplevel_state 6

{-| the surface’s top edge is tiled

    The window is currently in a tiled layout and the top edge is considered to be adjacent to another part of the tiling grid.

    The client should draw without shadow or other decoration outside of the window geometry on the top edge.

    @since 2

    __C declaration:__ @XDG_TOPLEVEL_STATE_TILED_TOP@

    __defined at:__ @xdg-shell-client-protocol.h 1375:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_TILED_TOP :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_TILED_TOP = Xdg_toplevel_state 7

{-| the surface’s bottom edge is tiled

    The window is currently in a tiled layout and the bottom edge is considered to be adjacent to another part of the tiling grid.

    The client should draw without shadow or other decoration outside of the window geometry on the bottom edge.

    @since 2

    __C declaration:__ @XDG_TOPLEVEL_STATE_TILED_BOTTOM@

    __defined at:__ @xdg-shell-client-protocol.h 1386:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_TILED_BOTTOM :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_TILED_BOTTOM = Xdg_toplevel_state 8

{-| surface repaint is suspended

    The surface is currently not ordinarily being repainted; for example because its content is occluded by another window, or its outputs are switched off due to screen locking.

    @since 6

    __C declaration:__ @XDG_TOPLEVEL_STATE_SUSPENDED@

    __defined at:__ @xdg-shell-client-protocol.h 1395:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_SUSPENDED :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_SUSPENDED = Xdg_toplevel_state 9

{-| the surface’s left edge is constrained

    The left edge of the window is currently constrained, meaning it shouldn't attempt to resize from that edge. It can for example mean it's tiled next to a monitor edge on the constrained side of the window.

    @since 7

    __C declaration:__ @XDG_TOPLEVEL_STATE_CONSTRAINED_LEFT@

    __defined at:__ @xdg-shell-client-protocol.h 1405:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_CONSTRAINED_LEFT :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_CONSTRAINED_LEFT = Xdg_toplevel_state 10

{-| the surface’s right edge is constrained

    The right edge of the window is currently constrained, meaning it shouldn't attempt to resize from that edge. It can for example mean it's tiled next to a monitor edge on the constrained side of the window.

    @since 7

    __C declaration:__ @XDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT@

    __defined at:__ @xdg-shell-client-protocol.h 1415:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT = Xdg_toplevel_state 11

{-| the surface’s top edge is constrained

    The top edge of the window is currently constrained, meaning it shouldn't attempt to resize from that edge. It can for example mean it's tiled next to a monitor edge on the constrained side of the window.

    @since 7

    __C declaration:__ @XDG_TOPLEVEL_STATE_CONSTRAINED_TOP@

    __defined at:__ @xdg-shell-client-protocol.h 1425:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_CONSTRAINED_TOP :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_CONSTRAINED_TOP = Xdg_toplevel_state 12

{-| the surface’s bottom edge is constrained

    The bottom edge of the window is currently constrained, meaning it shouldn't attempt to resize from that edge. It can for example mean it's tiled next to a monitor edge on the constrained side of the window.

    @since 7

    __C declaration:__ @XDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM@

    __defined at:__ @xdg-shell-client-protocol.h 1435:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM :: Xdg_toplevel_state
pattern XDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM = Xdg_toplevel_state 13

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_TILED_LEFT_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1440:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_TILED_LEFT_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_TILED_LEFT_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_TILED_RIGHT_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1444:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_TILED_RIGHT_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_TILED_RIGHT_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_TILED_TOP_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1448:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_TILED_TOP_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_TILED_TOP_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_TILED_BOTTOM_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1452:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_TILED_BOTTOM_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_TILED_BOTTOM_SINCE_VERSION =
  (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_SUSPENDED_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1456:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_SUSPENDED_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_SUSPENDED_SINCE_VERSION =
  (6 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_CONSTRAINED_LEFT_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1460:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_CONSTRAINED_LEFT_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_CONSTRAINED_LEFT_SINCE_VERSION =
  (7 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1464:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_CONSTRAINED_RIGHT_SINCE_VERSION =
  (7 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_CONSTRAINED_TOP_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1468:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_CONSTRAINED_TOP_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_CONSTRAINED_TOP_SINCE_VERSION =
  (7 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1472:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_STATE_CONSTRAINED_BOTTOM_SINCE_VERSION =
  (7 :: RIP.CInt)

{-| __C declaration:__ @enum xdg_toplevel_wm_capabilities@

    __defined at:__ @xdg-shell-client-protocol.h 1477:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_toplevel_wm_capabilities = Xdg_toplevel_wm_capabilities
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_toplevel_wm_capabilities where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_toplevel_wm_capabilities where

  readRaw =
    \ptr0 ->
          pure Xdg_toplevel_wm_capabilities
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_toplevel_wm_capabilities where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_toplevel_wm_capabilities unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_toplevel_wm_capabilities instance RIP.Storable Xdg_toplevel_wm_capabilities

deriving via RIP.CUInt instance RIP.Prim Xdg_toplevel_wm_capabilities

instance CEnum.CEnum Xdg_toplevel_wm_capabilities where

  type CEnumZ Xdg_toplevel_wm_capabilities = RIP.CUInt

  toCEnum = Xdg_toplevel_wm_capabilities

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [ (1, RIP.singleton "XDG_TOPLEVEL_WM_CAPABILITIES_WINDOW_MENU")
                                   , (2, RIP.singleton "XDG_TOPLEVEL_WM_CAPABILITIES_MAXIMIZE")
                                   , (3, RIP.singleton "XDG_TOPLEVEL_WM_CAPABILITIES_FULLSCREEN")
                                   , (4, RIP.singleton "XDG_TOPLEVEL_WM_CAPABILITIES_MINIMIZE")
                                   ]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_toplevel_wm_capabilities"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_toplevel_wm_capabilities"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_toplevel_wm_capabilities where

  minDeclaredValue =
    XDG_TOPLEVEL_WM_CAPABILITIES_WINDOW_MENU

  maxDeclaredValue =
    XDG_TOPLEVEL_WM_CAPABILITIES_MINIMIZE

instance Show Xdg_toplevel_wm_capabilities where

  showsPrec = CEnum.shows

instance Read Xdg_toplevel_wm_capabilities where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_toplevel_wm_capabilities) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_toplevel_wm_capabilities "unwrap" where

  type CFieldType Xdg_toplevel_wm_capabilities "unwrap" =
    RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_TOPLEVEL_WM_CAPABILITIES_WINDOW_MENU@

    __defined at:__ @xdg-shell-client-protocol.h 1481:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_WM_CAPABILITIES_WINDOW_MENU :: Xdg_toplevel_wm_capabilities
pattern XDG_TOPLEVEL_WM_CAPABILITIES_WINDOW_MENU = Xdg_toplevel_wm_capabilities 1

{-| __C declaration:__ @XDG_TOPLEVEL_WM_CAPABILITIES_MAXIMIZE@

    __defined at:__ @xdg-shell-client-protocol.h 1485:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_WM_CAPABILITIES_MAXIMIZE :: Xdg_toplevel_wm_capabilities
pattern XDG_TOPLEVEL_WM_CAPABILITIES_MAXIMIZE = Xdg_toplevel_wm_capabilities 2

{-| __C declaration:__ @XDG_TOPLEVEL_WM_CAPABILITIES_FULLSCREEN@

    __defined at:__ @xdg-shell-client-protocol.h 1489:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_WM_CAPABILITIES_FULLSCREEN :: Xdg_toplevel_wm_capabilities
pattern XDG_TOPLEVEL_WM_CAPABILITIES_FULLSCREEN = Xdg_toplevel_wm_capabilities 3

{-| __C declaration:__ @XDG_TOPLEVEL_WM_CAPABILITIES_MINIMIZE@

    __defined at:__ @xdg-shell-client-protocol.h 1493:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_TOPLEVEL_WM_CAPABILITIES_MINIMIZE :: Xdg_toplevel_wm_capabilities
pattern XDG_TOPLEVEL_WM_CAPABILITIES_MINIMIZE = Xdg_toplevel_wm_capabilities 4

{-| __C declaration:__ @struct xdg_toplevel_listener@

    __defined at:__ @xdg-shell-client-protocol.h 1501:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_toplevel_listener = Xdg_toplevel_listener
  { configure :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())
    {- ^ suggest a surface change

         This configure event asks the client to resize its toplevel surface or to change its state. The configured state should not be applied immediately. See xdg_surface.configure for details.

         The width and height arguments specify a hint to the window about how its surface should be resized in window geometry coordinates. See set_window_geometry.

         If the width or height arguments are zero, it means the client should decide its own window dimension. This may happen when the compositor needs to configure the state of the surface but doesn't have any information about any previous or expected dimension.

         The states listed in the event specify how the width/height arguments should be interpreted, and possibly how it should be drawn.

         Clients must send an ack_configure in response to this event. See xdg_surface.configure and xdg_surface.ack_configure for details.

         __C declaration:__ @configure@

         __defined at:__ @xdg-shell-client-protocol.h 1527:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  , close :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ())
    {- ^ surface wants to be closed

         The close event is sent by the compositor when the user wants the surface to be closed. This should be equivalent to the user clicking the close button in client-side decorations, if your application has any.

         This is only a request that the user intends to close the window. The client may choose to ignore this request, or show a dialog to ask the user to save their data, etc.

         __C declaration:__ @close@

         __defined at:__ @xdg-shell-client-protocol.h 1544:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  , configure_bounds :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ recommended window geometry bounds

         The configure_bounds event may be sent prior to a xdg_toplevel.configure event to communicate the bounds a window geometry size is recommended to constrain to.

         The passed width and height are in surface coordinate space. If width and height are 0, it means bounds is unknown and equivalent to as if no configure_bounds event was ever sent for this surface.

         The bounds can for example correspond to the size of a monitor excluding any panels or other shell components, so that a surface isn't created in a way that it cannot fit.

         The bounds may change at any point, and in such a case, a new xdg_toplevel.configure_bounds will be sent, followed by xdg_toplevel.configure and xdg_surface.configure.

         @since 4

         __C declaration:__ @configure_bounds@

         __defined at:__ @xdg-shell-client-protocol.h 1567:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  , wm_capabilities :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())
    {- ^ compositor capabilities

         This event advertises the capabilities supported by the compositor. If a capability isn't supported, clients should hide or disable the UI elements that expose this functionality. For instance, if the compositor doesn't advertise support for minimized toplevels, a button triggering the set_minimized request should not be displayed.

         The compositor will ignore requests it doesn't support. For instance, a compositor which doesn't advertise support for minimized will ignore set_minimized requests.

         Compositors must send this event once before the first xdg_surface.configure event. When the capabilities change, compositors must send this event again and then send an xdg_surface.configure event.

         The configured state should not be applied immediately. See xdg_surface.configure for details.

         The capabilities are sent as an array of 32-bit unsigned integers in native endianness.

         [__@capabilities@__]: array of 32-bit capabilities

         @since 5

         __C declaration:__ @wm_capabilities@

         __defined at:__ @xdg-shell-client-protocol.h 1598:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Xdg_toplevel_listener where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Xdg_toplevel_listener where

  readRaw =
    \ptr0 ->
          pure Xdg_toplevel_listener
      <*> HasCField.readRaw (RIP.Proxy @"configure") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"close") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"configure_bounds") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"wm_capabilities") ptr0

instance Marshal.WriteRaw Xdg_toplevel_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_toplevel_listener configure2 close3 configure_bounds4 wm_capabilities5 ->
               HasCField.writeRaw (RIP.Proxy @"configure") ptr0 configure2
            >> HasCField.writeRaw (RIP.Proxy @"close") ptr0 close3
            >> HasCField.writeRaw (RIP.Proxy @"configure_bounds") ptr0 configure_bounds4
            >> HasCField.writeRaw (RIP.Proxy @"wm_capabilities") ptr0 wm_capabilities5

deriving via Marshal.EquivStorable Xdg_toplevel_listener instance RIP.Storable Xdg_toplevel_listener

instance HasCField.HasCField Xdg_toplevel_listener "configure" where

  type CFieldType Xdg_toplevel_listener "configure" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())
         ) => RIP.HasField "configure" (RIP.Ptr Xdg_toplevel_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"configure")

instance HasCField.HasCField Xdg_toplevel_listener "close" where

  type CFieldType Xdg_toplevel_listener "close" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ())
         ) => RIP.HasField "close" (RIP.Ptr Xdg_toplevel_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"close")

instance HasCField.HasCField Xdg_toplevel_listener "configure_bounds" where

  type CFieldType Xdg_toplevel_listener "configure_bounds" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
         ) => RIP.HasField "configure_bounds" (RIP.Ptr Xdg_toplevel_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"configure_bounds")

instance HasCField.HasCField Xdg_toplevel_listener "wm_capabilities" where

  type CFieldType Xdg_toplevel_listener "wm_capabilities" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())

  offset# = \_ -> \_ -> 24

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())
         ) => RIP.HasField "wm_capabilities" (RIP.Ptr Xdg_toplevel_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"wm_capabilities")

{-| __C declaration:__ @macro XDG_TOPLEVEL_DESTROY@

    __defined at:__ @xdg-shell-client-protocol.h 1614:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_DESTROY :: RIP.CInt
xDG_TOPLEVEL_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_PARENT@

    __defined at:__ @xdg-shell-client-protocol.h 1615:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_PARENT :: RIP.CInt
xDG_TOPLEVEL_SET_PARENT = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_TITLE@

    __defined at:__ @xdg-shell-client-protocol.h 1616:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_TITLE :: RIP.CInt
xDG_TOPLEVEL_SET_TITLE = (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_APP_ID@

    __defined at:__ @xdg-shell-client-protocol.h 1617:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_APP_ID :: RIP.CInt
xDG_TOPLEVEL_SET_APP_ID = (3 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SHOW_WINDOW_MENU@

    __defined at:__ @xdg-shell-client-protocol.h 1618:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SHOW_WINDOW_MENU :: RIP.CInt
xDG_TOPLEVEL_SHOW_WINDOW_MENU = (4 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_MOVE@

    __defined at:__ @xdg-shell-client-protocol.h 1619:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_MOVE :: RIP.CInt
xDG_TOPLEVEL_MOVE = (5 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_RESIZE@

    __defined at:__ @xdg-shell-client-protocol.h 1620:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_RESIZE :: RIP.CInt
xDG_TOPLEVEL_RESIZE = (6 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_MAX_SIZE@

    __defined at:__ @xdg-shell-client-protocol.h 1621:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_MAX_SIZE :: RIP.CInt
xDG_TOPLEVEL_SET_MAX_SIZE = (7 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_MIN_SIZE@

    __defined at:__ @xdg-shell-client-protocol.h 1622:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_MIN_SIZE :: RIP.CInt
xDG_TOPLEVEL_SET_MIN_SIZE = (8 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_MAXIMIZED@

    __defined at:__ @xdg-shell-client-protocol.h 1623:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_MAXIMIZED :: RIP.CInt
xDG_TOPLEVEL_SET_MAXIMIZED = (9 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_UNSET_MAXIMIZED@

    __defined at:__ @xdg-shell-client-protocol.h 1624:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_UNSET_MAXIMIZED :: RIP.CInt
xDG_TOPLEVEL_UNSET_MAXIMIZED = (10 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_FULLSCREEN@

    __defined at:__ @xdg-shell-client-protocol.h 1625:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_FULLSCREEN :: RIP.CInt
xDG_TOPLEVEL_SET_FULLSCREEN = (11 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_UNSET_FULLSCREEN@

    __defined at:__ @xdg-shell-client-protocol.h 1626:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_UNSET_FULLSCREEN :: RIP.CInt
xDG_TOPLEVEL_UNSET_FULLSCREEN = (12 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_MINIMIZED@

    __defined at:__ @xdg-shell-client-protocol.h 1627:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_MINIMIZED :: RIP.CInt
xDG_TOPLEVEL_SET_MINIMIZED = (13 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_CONFIGURE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1632:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_CONFIGURE_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_CONFIGURE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_CLOSE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1636:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_CLOSE_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_CLOSE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_CONFIGURE_BOUNDS_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1640:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_CONFIGURE_BOUNDS_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_CONFIGURE_BOUNDS_SINCE_VERSION =
  (4 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_WM_CAPABILITIES_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1644:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_WM_CAPABILITIES_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_WM_CAPABILITIES_SINCE_VERSION =
  (5 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_DESTROY_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1649:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_DESTROY_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_PARENT_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1653:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_PARENT_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SET_PARENT_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_TITLE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1657:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_TITLE_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SET_TITLE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_APP_ID_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1661:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_APP_ID_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SET_APP_ID_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SHOW_WINDOW_MENU_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1665:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SHOW_WINDOW_MENU_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SHOW_WINDOW_MENU_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_MOVE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1669:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_MOVE_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_MOVE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_RESIZE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1673:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_RESIZE_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_RESIZE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_MAX_SIZE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1677:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_MAX_SIZE_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SET_MAX_SIZE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_MIN_SIZE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1681:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_MIN_SIZE_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SET_MIN_SIZE_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_MAXIMIZED_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1685:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_MAXIMIZED_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SET_MAXIMIZED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_UNSET_MAXIMIZED_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1689:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_UNSET_MAXIMIZED_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_UNSET_MAXIMIZED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_FULLSCREEN_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1693:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_FULLSCREEN_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SET_FULLSCREEN_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_UNSET_FULLSCREEN_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1697:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_UNSET_FULLSCREEN_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_UNSET_FULLSCREEN_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_TOPLEVEL_SET_MINIMIZED_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 1701:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_TOPLEVEL_SET_MINIMIZED_SINCE_VERSION :: RIP.CInt
xDG_TOPLEVEL_SET_MINIMIZED_SINCE_VERSION =
  (1 :: RIP.CInt)

{-| __C declaration:__ @enum xdg_popup_error@

    __defined at:__ @xdg-shell-client-protocol.h 2144:6@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
newtype Xdg_popup_error = Xdg_popup_error
  { unwrap :: RIP.CUInt
  }
  deriving stock (Eq, RIP.Generic, Ord)
  deriving newtype (RIP.HasFFIType)

instance Marshal.StaticSize Xdg_popup_error where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Xdg_popup_error where

  readRaw =
    \ptr0 ->
          pure Xdg_popup_error
      <*> Marshal.readRawByteOff ptr0 (0 :: Int)

instance Marshal.WriteRaw Xdg_popup_error where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_popup_error unwrap2 ->
            Marshal.writeRawByteOff ptr0 (0 :: Int) unwrap2

deriving via Marshal.EquivStorable Xdg_popup_error instance RIP.Storable Xdg_popup_error

deriving via RIP.CUInt instance RIP.Prim Xdg_popup_error

instance CEnum.CEnum Xdg_popup_error where

  type CEnumZ Xdg_popup_error = RIP.CUInt

  toCEnum = Xdg_popup_error

  fromCEnum = RIP.getField @"unwrap"

  declaredValues =
    \_ ->
      CEnum.declaredValuesFromList [(0, RIP.singleton "XDG_POPUP_ERROR_INVALID_GRAB")]

  showsUndeclared =
    CEnum.showsWrappedUndeclared "Xdg_popup_error"

  readPrecUndeclared =
    CEnum.readPrecWrappedUndeclared "Xdg_popup_error"

  isDeclared = CEnum.seqIsDeclared

  mkDeclared = CEnum.seqMkDeclared

instance CEnum.SequentialCEnum Xdg_popup_error where

  minDeclaredValue = XDG_POPUP_ERROR_INVALID_GRAB

  maxDeclaredValue = XDG_POPUP_ERROR_INVALID_GRAB

instance Show Xdg_popup_error where

  showsPrec = CEnum.shows

instance Read Xdg_popup_error where

  readPrec = CEnum.readPrec

  readList = RIP.readListDefault

  readListPrec = RIP.readListPrecDefault

instance ( ty ~ RIP.CUInt
         ) => RIP.HasField "unwrap" (RIP.Ptr Xdg_popup_error) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"unwrap")

instance HasCField.HasCField Xdg_popup_error "unwrap" where

  type CFieldType Xdg_popup_error "unwrap" = RIP.CUInt

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @XDG_POPUP_ERROR_INVALID_GRAB@

    __defined at:__ @xdg-shell-client-protocol.h 2148:2@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
pattern XDG_POPUP_ERROR_INVALID_GRAB :: Xdg_popup_error
pattern XDG_POPUP_ERROR_INVALID_GRAB = Xdg_popup_error 0

{-| __C declaration:__ @struct xdg_popup_listener@

    __defined at:__ @xdg-shell-client-protocol.h 2156:8@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
data Xdg_popup_listener = Xdg_popup_listener
  { configure :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
    {- ^ configure the popup surface

         This event asks the popup surface to configure itself given the configuration. The configured state should not be applied immediately. See xdg_surface.configure for details.

         The x and y arguments represent the position the popup was placed at given the xdg_positioner rule, relative to the upper left corner of the window geometry of the parent surface.

         For version 2 or older, the configure event for an xdg_popup is only ever sent once for the initial configuration. Starting with version 3, it may be sent again if the popup is setup with an xdg_positioner with set_reactive requested, or in response to xdg_popup.reposition requests.

         [__@x@__]: x position relative to parent surface window geometry

         [__@y@__]: y position relative to parent surface window geometry

         [__@width@__]: window geometry width

         [__@height@__]: window geometry height

         __C declaration:__ @configure@

         __defined at:__ @xdg-shell-client-protocol.h 2178:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  , popup_done :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ())
    {- ^ popup interaction is done

         The popup_done event is sent out when a popup is dismissed by the compositor. The client should destroy the xdg_popup object at this point.

         __C declaration:__ @popup_done@

         __defined at:__ @xdg-shell-client-protocol.h 2191:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  , repositioned :: RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ())
    {- ^ signal the completion of a repositioned request

         The repositioned event is sent as part of a popup configuration sequence, together with xdg_popup.configure and lastly xdg_surface.configure to notify the completion of a reposition request.

         The repositioned event is to notify about the completion of a xdg_popup.reposition request. The token argument is the token passed in the xdg_popup.reposition request.

         Immediately after this event is emitted, xdg_popup.configure and xdg_surface.configure will be sent with the updated size and position, as well as a new configure serial.

         The client should optionally update the content of the popup, but must acknowledge the new popup configuration for the new position to take effect. See xdg_surface.ack_configure for details.

         [__@token@__]: reposition request token

         @since 3

         __C declaration:__ @repositioned@

         __defined at:__ @xdg-shell-client-protocol.h 2216:9@

         __exported by:__ @xdg-shell-client-protocol.h@
    -}
  }
  deriving stock (Eq, RIP.Generic, Show)

instance Marshal.StaticSize Xdg_popup_listener where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Xdg_popup_listener where

  readRaw =
    \ptr0 ->
          pure Xdg_popup_listener
      <*> HasCField.readRaw (RIP.Proxy @"configure") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"popup_done") ptr0
      <*> HasCField.readRaw (RIP.Proxy @"repositioned") ptr0

instance Marshal.WriteRaw Xdg_popup_listener where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Xdg_popup_listener configure2 popup_done3 repositioned4 ->
               HasCField.writeRaw (RIP.Proxy @"configure") ptr0 configure2
            >> HasCField.writeRaw (RIP.Proxy @"popup_done") ptr0 popup_done3
            >> HasCField.writeRaw (RIP.Proxy @"repositioned") ptr0 repositioned4

deriving via Marshal.EquivStorable Xdg_popup_listener instance RIP.Storable Xdg_popup_listener

instance HasCField.HasCField Xdg_popup_listener "configure" where

  type CFieldType Xdg_popup_listener "configure" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())

  offset# = \_ -> \_ -> 0

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
         ) => RIP.HasField "configure" (RIP.Ptr Xdg_popup_listener) (RIP.Ptr ty) where

  getField = HasCField.fromPtr (RIP.Proxy @"configure")

instance HasCField.HasCField Xdg_popup_listener "popup_done" where

  type CFieldType Xdg_popup_listener "popup_done" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ())

  offset# = \_ -> \_ -> 8

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ())
         ) => RIP.HasField "popup_done" (RIP.Ptr Xdg_popup_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"popup_done")

instance HasCField.HasCField Xdg_popup_listener "repositioned" where

  type CFieldType Xdg_popup_listener "repositioned" =
    RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ())

  offset# = \_ -> \_ -> 16

instance ( ty ~ RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ())
         ) => RIP.HasField "repositioned" (RIP.Ptr Xdg_popup_listener) (RIP.Ptr ty) where

  getField =
    HasCField.fromPtr (RIP.Proxy @"repositioned")

{-| __C declaration:__ @macro XDG_POPUP_DESTROY@

    __defined at:__ @xdg-shell-client-protocol.h 2232:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_DESTROY :: RIP.CInt
xDG_POPUP_DESTROY = (0 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POPUP_GRAB@

    __defined at:__ @xdg-shell-client-protocol.h 2233:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_GRAB :: RIP.CInt
xDG_POPUP_GRAB = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POPUP_REPOSITION@

    __defined at:__ @xdg-shell-client-protocol.h 2234:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_REPOSITION :: RIP.CInt
xDG_POPUP_REPOSITION = (2 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POPUP_CONFIGURE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 2239:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_CONFIGURE_SINCE_VERSION :: RIP.CInt
xDG_POPUP_CONFIGURE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POPUP_POPUP_DONE_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 2243:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_POPUP_DONE_SINCE_VERSION :: RIP.CInt
xDG_POPUP_POPUP_DONE_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POPUP_REPOSITIONED_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 2247:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_REPOSITIONED_SINCE_VERSION :: RIP.CInt
xDG_POPUP_REPOSITIONED_SINCE_VERSION =
  (3 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POPUP_DESTROY_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 2252:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_DESTROY_SINCE_VERSION :: RIP.CInt
xDG_POPUP_DESTROY_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POPUP_GRAB_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 2256:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_GRAB_SINCE_VERSION :: RIP.CInt
xDG_POPUP_GRAB_SINCE_VERSION = (1 :: RIP.CInt)

{-| __C declaration:__ @macro XDG_POPUP_REPOSITION_SINCE_VERSION@

    __defined at:__ @xdg-shell-client-protocol.h 2260:9@

    __exported by:__ @xdg-shell-client-protocol.h@
-}
xDG_POPUP_REPOSITION_SINCE_VERSION :: RIP.CInt
xDG_POPUP_REPOSITION_SINCE_VERSION = (3 :: RIP.CInt)

foreign import ccall safe "wrapper" hs_bindgen_5d5660fbb8c9df4f_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ())@
hs_bindgen_5d5660fbb8c9df4f ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ()))
hs_bindgen_5d5660fbb8c9df4f =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_5d5660fbb8c9df4f_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_5f238b386cd729f8_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ())@
hs_bindgen_5f238b386cd729f8 ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ()
hs_bindgen_5f238b386cd729f8 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_5f238b386cd729f8_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ()) where

  toFunPtr = hs_bindgen_5d5660fbb8c9df4f

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> IO ()) where

  fromFunPtr = hs_bindgen_5f238b386cd729f8

foreign import ccall safe "wrapper" hs_bindgen_d7a4eff1efd3e7a3_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_d7a4eff1efd3e7a3 ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_d7a4eff1efd3e7a3 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_d7a4eff1efd3e7a3_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_c0ca15bcc6120026_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_c0ca15bcc6120026 ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_c0ca15bcc6120026 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_c0ca15bcc6120026_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_d7a4eff1efd3e7a3

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_c0ca15bcc6120026

foreign import ccall safe "wrapper" hs_bindgen_1dc3f0b330bb5470_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_1dc3f0b330bb5470 ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_1dc3f0b330bb5470 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_1dc3f0b330bb5470_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_2abe9ba54714c40c_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_2abe9ba54714c40c ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_2abe9ba54714c40c =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_2abe9ba54714c40c_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_1dc3f0b330bb5470

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_popup -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_2abe9ba54714c40c

foreign import ccall safe "wrapper" hs_bindgen_49c1a100072790d8_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_49c1a100072790d8 ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_49c1a100072790d8 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_49c1a100072790d8_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_1f3620016758b8dc_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_1f3620016758b8dc ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_1f3620016758b8dc =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_1f3620016758b8dc_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_49c1a100072790d8

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_surface -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_1f3620016758b8dc

foreign import ccall safe "wrapper" hs_bindgen_3fe48b92a122343b_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ())@
hs_bindgen_3fe48b92a122343b ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ()))
hs_bindgen_3fe48b92a122343b =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_3fe48b92a122343b_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_8bd1600b85d70795_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ())@
hs_bindgen_8bd1600b85d70795 ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ()
hs_bindgen_8bd1600b85d70795 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_8bd1600b85d70795_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ()) where

  toFunPtr = hs_bindgen_3fe48b92a122343b

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> IO ()) where

  fromFunPtr = hs_bindgen_8bd1600b85d70795

foreign import ccall safe "wrapper" hs_bindgen_5477d3067203cdde_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())@
hs_bindgen_5477d3067203cdde ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ()))
hs_bindgen_5477d3067203cdde =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_5477d3067203cdde_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_1d4db12c22803ca4_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())@
hs_bindgen_1d4db12c22803ca4 ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ()
hs_bindgen_1d4db12c22803ca4 =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_1d4db12c22803ca4_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ()) where

  toFunPtr = hs_bindgen_5477d3067203cdde

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ()) where

  fromFunPtr = hs_bindgen_1d4db12c22803ca4

foreign import ccall safe "wrapper" hs_bindgen_2559ef634987ffea_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_2559ef634987ffea ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()))
hs_bindgen_2559ef634987ffea =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_2559ef634987ffea_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_41066ca15601324f_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())@
hs_bindgen_41066ca15601324f ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()
hs_bindgen_41066ca15601324f =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_41066ca15601324f_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  toFunPtr = hs_bindgen_2559ef634987ffea

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> IO ()) where

  fromFunPtr = hs_bindgen_41066ca15601324f

foreign import ccall safe "wrapper" hs_bindgen_f6a8515d047f542f_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> RIP.Ptr RIP.Void -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> RIP.Ptr RIP.Void -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())@
hs_bindgen_f6a8515d047f542f ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ()))
hs_bindgen_f6a8515d047f542f =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_f6a8515d047f542f_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_dfcfb080daf6b7db_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> RIP.Ptr RIP.Void -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Int32 -> RIP.Int32 -> RIP.Ptr RIP.Void -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())@
hs_bindgen_dfcfb080daf6b7db ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ()
hs_bindgen_dfcfb080daf6b7db =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_dfcfb080daf6b7db_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ()) where

  toFunPtr = hs_bindgen_f6a8515d047f542f

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_toplevel -> HsBindgen.Runtime.LibC.Int32 -> HsBindgen.Runtime.LibC.Int32 -> RIP.Ptr Bindings.Wayland.Util.Generated.Wl_array -> IO ()) where

  fromFunPtr = hs_bindgen_dfcfb080daf6b7db

foreign import ccall safe "wrapper" hs_bindgen_09b8e8d7f6dc94d9_base ::
     (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ()))

-- __unique:__ @instance ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_09b8e8d7f6dc94d9 ::
     (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> IO (RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ()))
hs_bindgen_09b8e8d7f6dc94d9 =
  \fun0 ->
    fmap RIP.castFunPtrFromFFIType (hs_bindgen_09b8e8d7f6dc94d9_base (RIP.toFFIType fun0))

foreign import ccall safe "dynamic" hs_bindgen_78a90646632f1aac_base ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr RIP.Void -> RIP.Word32 -> IO ()

-- __unique:__ @instance FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ())@
hs_bindgen_78a90646632f1aac ::
     RIP.FunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ())
  -> RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ()
hs_bindgen_78a90646632f1aac =
  \funPtr0 ->
    RIP.fromFFIType (hs_bindgen_78a90646632f1aac_base (RIP.castFunPtrToFFIType funPtr0))

instance RIP.ToFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  toFunPtr = hs_bindgen_09b8e8d7f6dc94d9

instance RIP.FromFunPtr (RIP.Ptr RIP.Void -> RIP.Ptr Xdg_wm_base -> HsBindgen.Runtime.LibC.Word32 -> IO ()) where

  fromFunPtr = hs_bindgen_78a90646632f1aac

{-# LANGUAGE NoFieldSelectors     #-}
{-# LANGUAGE TemplateHaskell      #-}
{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : HSWM.Types.Seat
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.Types.Seat where

import HSWM.Types.Simple
import HSWM.Types.Lens
import HSWM.Types.Action
import HSWM.Types.Window

import qualified WL.Client as WL
import qualified River as R
import Data.Kind

-- * Seat

data Seat' (m :: Type -> Type) = Seat
  { river_seat             :: !RiverSeat
  , river_layer_shell_seat :: !R.RiverLayerShellSeat
  , xkb_bindings_seat      :: !R.RiverXkbBindingsSeat
  , wl_seat                :: !WL.Seat
  , caps                   :: !WL.SeatCapability
  , position               :: !Position -- (Int32, Int32) -- x, y
  , name                   :: !String
  , currentFocus           :: !SeatFocus
  -- ^ Currently focused window/shell layer.
  , focused, hovered, interacted :: !RiverWindow
  -- ^ Windows last interacted with.
  , xkb_bindings           :: !(XkbBindingMap (SomeAction m))
  -- ^ XKB (keyboard) bindings.
  , pointer_bindings       :: [StablePtr (PointerBinding (SomeAction m))]
  -- ^ Pointer bindings.

  , pending_action         :: !(SeatAction m)
  , submap_pending         :: !(Maybe (SomeAction m, XkbBindingMap (SomeAction m)))
  , pendingPointerEnter    :: !(Maybe (RiverWindow, Position))

  , op                     :: !SeatOperation
  -- ^ Pointer move/resize.
  , op_window              :: !RiverWindow
  , op_release             :: !Bool
  , op_start_x, op_start_y, op_dx, op_dy :: !Int32
  , op_start_width, op_start_height      :: !Int32
  , op_edges               :: !Int32

  -- TODO: review below
  , suppressChangeFocus    :: !Int
  , new                    :: !Bool
  , removed                :: !Bool
  }
  deriving stock (Generic)
  deriving anyclass (Default)

deriving instance (MonadIO m, Show (Stateful m Bool)) => Show (Seat' m)

type family Stateful (m :: Type -> Type) :: Type -> Type

data SeatFocus
  = SFocusNone
  | SFocusWindow !RiverWindow
  | SFocusLayerShell { exclusiveFocus :: !Bool, prev :: !SeatFocus }
  deriving (Eq, Ord, Show, Generic)

data SeatAction m
  = -- | no action / reset
    S_NONE
  | -- | start pointer drag operation
    S_START_OP SeatOperation
  | -- | interpret next keypress for submap, swallowing an unexpected key
    S_SUBMAP_NEXT_KEY (SomeAction m) (XkbBindingMap (SomeAction m))
  | -- | Cancel submap input, resetting to root bindings.
    S_SUBMAP_CANCEL
  deriving (Generic)

deriving instance (MonadIO m, Show (Stateful m Bool)) => Show (SeatAction m)

-- | Move/resize active
data SeatOperation
  = SEAT_OP_NONE
  | SEAT_OP_MOVE
  | SEAT_OP_RESIZE
  deriving (Eq, Bounded, Enum, Show, Read, Generic)

-- Default

instance Default SeatFocus where def = SFocusNone
instance Default (SeatAction m) where def = S_NONE
instance Default SeatOperation where def = SEAT_OP_NONE

-- * Lenses

makeLensesWith' classPerField [ ''Seat' ]

instance HasRiverId (Seat' m) where
  type RiverId (Seat' m) = RiverSeat
  riverId = riverSeat

instance HasX (Seat' m) Int32 where _x = position . _x
instance HasY (Seat' m) Int32 where _y = position . _y

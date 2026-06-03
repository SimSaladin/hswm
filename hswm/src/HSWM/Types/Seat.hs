{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE NoFieldSelectors #-}

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

import qualified Wayland as WL
import qualified River as R
import qualified Bindings.River as R
import Data.Kind

type family Stateful (m :: Type -> Type) :: Type -> Type

data Seat' (m :: Type -> Type) = Seat
  { river_seat             :: !RiverSeat
  , river_layer_shell_seat :: !R.RiverLayerShellSeat
  , xkb_bindings_seat      :: !R.RiverXkbBindingsSeat
  , wl_seat                :: !WL.Seat
  , position               :: !Position -- (Int32, Int32) -- x, y
  , name                   :: !String
  , caps                   :: !WL.SeatCapability

  --
  , xkb_bindings           :: !(XkbBindingMap (SomeAction m))
  , pointer_bindings       :: [StablePtr (PointerBinding (SomeAction m))]

  --
  , pending_action         :: !(SeatAction m)
  , submap_pending         :: Maybe (SomeAction m, XkbBindingMap (SomeAction m))
  , currentFocus           :: !SeatFocus
  , pendingPointerEnter    :: !(Maybe (RiverWindow, Position))
  , inputOverride          :: !(Maybe (Stateful m Bool, XkbBindingMap (SomeAction m)))

  -- Pointer move/resize
  , op                                   :: !SeatOp
  , op_window                            :: !RiverWindow
  , op_release                           :: !Bool
  , op_start_x, op_start_y, op_dx, op_dy :: !Int32
  , op_start_width, op_start_height      :: !Int32
  , op_edges                             :: !Int32

  -- TODO: review below
  , new     :: !Bool
  , removed :: !Bool
  , focused, hovered, interacted :: !RiverWindow
  , suppressChangeFocus :: !Int
  }
  deriving stock (Generic)

deriving instance (MonadIO m, Show (Stateful m Bool)) => Show (Seat' m)

data SeatFocus
  = SFocusNone
  | SFocusWindow !RiverWindow
  | SFocusLayerShell !Bool !SeatFocus -- ^ exclusive? previous focus
  deriving (Eq, Ord, Show, Generic)

data SeatAction m
  = -- | no action / reset
    S_NONE
  | -- | start pointer drag operation
    S_START_OP SeatOp
  | -- | interpret next keypress for submap, swallowing an unexpected key
    S_SUBMAP_NEXT_KEY (SomeAction m) (XkbBindingMap (SomeAction m))
  | -- | Cancel submap input, resetting to root bindings.
    S_SUBMAP_CANCEL
  | -- | Temporarily interpret all keyboard input differently.
    S_INPUT_OVERRIDE (Stateful m Bool) [((ModMask, KeySym), SomeAction m)]
  | -- | Cancel input override mode
    S_INPUT_OVERRIDE_CANCEL
  deriving (Generic)

deriving instance (MonadIO m, Show (Stateful m Bool)) => Show (SeatAction m)

-- XXX
instance Show (StablePtr a) where show _ = "<SP>"

data SeatOp
  = SEAT_OP_NONE
  | SEAT_OP_MOVE
  | SEAT_OP_RESIZE
  deriving (Eq, Bounded, Enum, Show, Read, Generic)

instance Default (SeatAction m) where
  def = S_NONE

instance Default (Seat' m) where
  def =
    Seat
      { river_seat = def,
        wl_seat = def,
        new = True,
        xkb_bindings_seat = R.RiverXkbBindingsSeat nullPtr,
        inputOverride = Nothing,
        position = Position 0 0,
        name = "",
        caps = R.toCEnum 0,
        removed = False,
        currentFocus = SFocusNone,
        pendingPointerEnter = Nothing,
        focused = R.invalidWindow,
        hovered = R.invalidWindow,
        interacted = R.invalidWindow,
        op_window = R.invalidWindow,
        op = SEAT_OP_NONE,
        op_release = False,
        op_start_x = 0,
        op_start_y = 0,
        op_dx = 0,
        op_dy = 0,
        op_start_width = 0,
        op_start_height = 0,
        op_edges = 0,
        xkb_bindings = mempty,
        pointer_bindings = mempty,
        pending_action = S_NONE,
        submap_pending = Nothing,
        river_layer_shell_seat = R.RiverLayerShellSeat nullPtr,
        suppressChangeFocus = 0
      }

makeLenses' [ ''Seat' ]

instance HasPosition (Seat' m) where
  position = seat'Position

{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : HSWM.Types.Seat
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Types.Seat where

import HSWM.Types.Action
import HSWM.Types.Config
import HSWM.Types.Lens
import HSWM.Types.Simple
import HSWM.Types.Window

import River qualified as R
import WL.Client qualified as WL
import WL.ExtIdleNotify.Staging.V1.Client qualified as EXT_IN

import Data.Kind

type family Stateful (m :: k) :: k

-- * Seat

data Seat' (m :: Type -> Type) = Seat
  { river_seat :: !RiverSeat
  , river_layer_shell_seat :: !R.RiverLayerShellSeat
  , xkb_bindings_seat :: !R.RiverXkbBindingsSeat
  , wl_seat :: !WL.Seat
  , idleNotification :: !EXT_IN.IdleNotification
  , caps :: !WL.SeatCapability
  , keyboard :: {-# UNPACK #-} !SeatKeyboardInfo
  -- ^ Keyboard capability
  , wlPointer :: !WL.Pointer
  -- ^ Pointer capability
  , wlTouch :: !WL.Touch
  -- ^ Touch capability
  , position :: !Position -- (Int32, Int32) -- x, y
  , name :: !String
  , currentFocus :: !SeatFocus
  -- ^ Currently focused window/shell layer.
  , focused, hovered, interacted :: !RiverWindow
  -- ^ Windows last interacted with.
  , xkb_bindings :: !(XkbBindingMap2 (SomeAction m))
  -- ^ XKB (keyboard) bindings.
  , pointer_bindings :: !(PointerBindings (SomeAction m))
  -- ^ Pointer bindings.
  , pending_action :: !(SeatAction m)
  -- ^ Event queues.
  , submap_pending :: !(Maybe (SomeAction m, XkbBindingMap2 (SomeAction m), Maybe (SomeAction m)))
  , pendingPointerEnter :: !(Maybe (RiverWindow, Position))
  , op :: !SeatOperation
  -- ^ Pointer move/resize.
  , op_window :: !RiverWindow
  , op_release :: !Bool
  , op_start_x, op_start_y :: !Int32
  , op_dx, op_dy :: !Int32
  , op_start_width :: !Int32
  , op_start_height :: !Int32
  , op_edges :: !Int32
  , suppressChangeFocus :: !Int
  -- ^ TODO: review below
  , new :: !Bool
  , removed :: !Bool
  }
  deriving stock (Generic)
  deriving anyclass (Default, NFData)

deriving instance (Typeable m, Show (Stateful m Bool)) => Show (Seat' m)

deriving instance
  ( Typeable m
  , Data (SomeAction m)
  , Data (SeatAction m)
  , Data (StablePtr (XkbBinding (SomeAction m)))
  , Data (StablePtr (PointerBinding (SomeAction m)))
  ) =>
  Data (Seat' m)

data SeatKeyboardInfo = SKInfo
  { wl_keyboard :: !WL.Keyboard
  , rrate :: !Int32
  , rdelay :: !Int32
  }
  deriving stock (Eq, Ord, Show, Read, Generic, Data)
  deriving anyclass (Default, NFData)

data SeatFocus
  = SFocusNone
  | SFocusWindow !RiverWindow
  | SFocusLayerShell {exclusiveFocus :: !Bool, prev :: !SeatFocus}
  deriving stock (Eq, Ord, Show, Generic, Data)
  deriving anyclass (NFData)

data SeatAction m
  = -- | no action / reset
    S_NONE
  | -- | start pointer drag operation
    S_START_OP SeatOperation
  | -- | interpret next keypress for submap, swallowing an unexpected key
    S_SUBMAP_NEXT_KEY (SomeAction m) (XkbBindingMap2 (SomeAction m)) (Maybe (SomeAction m))
  | -- | Cancel submap input, resetting to root bindings.
    S_SUBMAP_CANCEL
  deriving stock (Eq, Generic, Data)
  deriving anyclass (NFData)

deriving instance (Typeable m, Show (Stateful m Bool)) => Show (SeatAction m)

-- | Move/resize active
data SeatOperation
  = SEAT_OP_NONE
  | SEAT_OP_MOVE
  | SEAT_OP_RESIZE
  deriving stock (Eq, Ord, Bounded, Enum, Show, Read, Generic, Data)
  deriving anyclass (NFData)

-- Default

instance Default SeatFocus where def = SFocusNone
instance Default (SeatAction m) where def = S_NONE
instance Default SeatOperation where def = SEAT_OP_NONE

-- * Lenses

makeLensesCombine ["riverSeat"] [''Seat', ''SeatKeyboardInfo]

instance HasX (Seat' m) Int32 where _x = position . _x
instance HasY (Seat' m) Int32 where _y = position . _y

instance HasRiverId (Seat' m) where
  type RiverId (Seat' m) = RiverSeat

  riverId = riverSeat

-- aeson

instance ToJSON (Seat' m) where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance ToJSON (SeatAction m) where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance ToJSON SeatFocus where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance ToJSON SeatOperation where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

instance ToJSON SeatKeyboardInfo where
  toJSON = genericToJSON aesonOptions
  toEncoding = genericToEncoding aesonOptions

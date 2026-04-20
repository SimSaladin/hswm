{-# LANGUAGE PatternSynonyms #-}

-- |
-- Module      : River.WMP
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module River.WMP
  ( module River.WMP,
    R.RiverWindow,
    R.RiverNode,
    R.RiverOutput,
    R.RiverSeat,
  )
where

import Data.List qualified as L
import Foreign
import Foreign.Storable.Generic (GStorable (..))
import HSWM.XKB
import Bindings.River qualified as R
import Bindings.RiverSafe qualified as R
import qualified Bindings.Wayland.Client as WL

data RiverColor = RiverColor {red, green, blue, alpha :: !Word32}
  deriving (Show, Read, Eq, Generic)
  deriving (Default)

type WindowEdges = R.River_window_v1_edges

pattern EdgeNone :: WindowEdges
pattern EdgeNone = R.RIVER_WINDOW_V1_EDGES_NONE

pattern EdgeLeft :: WindowEdges
pattern EdgeLeft = R.RIVER_WINDOW_V1_EDGES_LEFT

pattern EdgeRight :: WindowEdges
pattern EdgeRight = R.RIVER_WINDOW_V1_EDGES_RIGHT

pattern EdgeBottom :: WindowEdges
pattern EdgeBottom = R.RIVER_WINDOW_V1_EDGES_BOTTOM

pattern EdgeTop :: WindowEdges
pattern EdgeTop = R.RIVER_WINDOW_V1_EDGES_TOP

type WindowCaps = R.River_window_v1_capabilities

pattern WindowMenu :: WindowCaps
pattern WindowMenu = R.RIVER_WINDOW_V1_CAPABILITIES_WINDOW_MENU

pattern Maximize :: WindowCaps
pattern Maximize = R.RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE

pattern Fullscreen :: WindowCaps
pattern Fullscreen = R.RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN

pattern Minimize :: WindowCaps
pattern Minimize = R.RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE

data WindowBorders = WindowBorders
  { -- | Edges on which to draw borders
    wb_edges :: !Word32,
    -- | Width of border
    wb_width :: !Int32,
    -- | RGBA 32-bit
    wb_r, wb_g, wb_b, wb_a :: !Word32
  }
  deriving (Eq, Ord, Show)

type ClipBox = (Int32, Int32, Int32, Int32)

invalidWindow :: R.RiverWindow
invalidWindow = R.RiverWindow nullPtr

invalidSeat :: R.RiverSeat
invalidSeat = R.RiverSeat nullPtr

setNodePosition :: (MonadIO m) => R.RiverNode -> Int32 -> Int32 -> m ()
setNodePosition n x y = io $ R.riverNodeSetPosition n x y

ppXkbModsKey :: Modifiers -> KeySym -> String
ppXkbModsKey m ksym =
  L.intercalate "+" $
    [ name
    | (x, name) <-
        [ (R.RIVER_SEAT_V1_MODIFIERS_CTRL, "C"),
          (R.RIVER_SEAT_V1_MODIFIERS_SHIFT, "S"),
          (R.RIVER_SEAT_V1_MODIFIERS_MOD1, "M1"),
          (R.RIVER_SEAT_V1_MODIFIERS_MOD3, "M3"),
          (R.RIVER_SEAT_V1_MODIFIERS_MOD4, "M4"),
          (R.RIVER_SEAT_V1_MODIFIERS_MOD5, "M5")
        ],
      fi x.unwrap .&. m /= 0
    ]
      ++ [xkbKeysymGetNameUnsafe ksym]

-- * Pointer Binds

data PointerBinding a = PointerBinding
  { pointer_binding :: R.RiverPointerBinding,
    river_seat :: R.RiverSeat,
    action :: a
  }
  deriving (Generic)

instance GStorable (PointerBinding ())

newPointerBinding ::
  (MonadLogger m, MonadIO m, Show a) =>
  R.RiverPointerBindingListener ->
  R.RiverSeat ->
  Modifiers ->
  Button ->
  a ->
  m (StablePtr (PointerBinding a))
newPointerBinding pointerBindingListener seat mods btn action = do
  logInfo $ "new pointer binding" :# [ "key" .= ppXkbModsKey mods btn, "action" .= show action ]
  pb' <- io $ R.riverSeatGetPointerBinding seat (fi btn) (WL.toCEnum $ fi mods)
  dtPtr <- io $ newStablePtr $ PointerBinding pb' seat action
  io $ R.listenerAdd pb' pointerBindingListener (castPtr $ castStablePtrToPtr dtPtr)
  _ <- liftIO $ R.riverPointerBindingEnable pb'
  return dtPtr

destroyPointerBinding :: (MonadIO m) => StablePtr (PointerBinding a) -> m ()
destroyPointerBinding sptr = do
  pb <- io $ deRefStablePtr sptr
  io $ R.objectDestroy pb.pointer_binding
  io $ freeStablePtr sptr

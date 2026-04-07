{-# LANGUAGE PatternSynonyms #-}
------------------------------------------------------------------------------
-- |
-- Module      : River.WMP
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
-- License     : WTFPL
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
--
------------------------------------------------------------------------------
module River.WMP
  ( module River.WMP
  , R.RiverWindow
  , R.RiverNode
  , R.RiverOutput
  , R.RiverSeat
  ) where

import           HSWM.XKB
import qualified River.Objects as R
import qualified River.Safe as R

import qualified Data.List as L
import           Foreign
import           Foreign.Storable.Generic (GStorable(..))

pattern EdgeNone :: R.River_window_v1_edges
pattern EdgeNone = R.RIVER_WINDOW_V1_EDGES_NONE
pattern EdgeLeft :: R.River_window_v1_edges
pattern EdgeLeft = R.RIVER_WINDOW_V1_EDGES_LEFT
pattern EdgeRight :: R.River_window_v1_edges
pattern EdgeRight = R.RIVER_WINDOW_V1_EDGES_RIGHT
pattern EdgeBottom :: R.River_window_v1_edges
pattern EdgeBottom = R.RIVER_WINDOW_V1_EDGES_BOTTOM
pattern EdgeTop :: R.River_window_v1_edges
pattern EdgeTop = R.RIVER_WINDOW_V1_EDGES_TOP

pattern Maximize :: R.River_window_v1_capabilities
pattern Maximize = R.RIVER_WINDOW_V1_CAPABILITIES_MAXIMIZE
pattern Fullscreen :: R.River_window_v1_capabilities
pattern Fullscreen = R.RIVER_WINDOW_V1_CAPABILITIES_FULLSCREEN
pattern Minimize :: R.River_window_v1_capabilities
pattern Minimize = R.RIVER_WINDOW_V1_CAPABILITIES_MINIMIZE

type WindowCaps = Word32 -- {#type uint32_t#}

data WindowBorders = WindowBorders
  { wb_edges               :: !Word32 -- ^ Edges on which to draw borders
  , wb_width               :: !Int32  -- ^ Width of border
  , wb_r, wb_g, wb_b, wb_a :: !Word32 -- ^ RGBA 32-bit
  } deriving (Eq, Ord, Show)

type ClipBox = (Int32, Int32, Int32, Int32)

invalidWindow :: R.RiverWindow
invalidWindow = R.RiverWindow nullPtr

invalidSeat :: R.RiverSeat
invalidSeat = R.RiverSeat nullPtr

ppXkbModsKey :: Modifiers -> KeySym -> String
ppXkbModsKey m ksym =
  L.intercalate "+" $
    [ name | (x, name) <-
      [ (R.RIVER_SEAT_V1_MODIFIERS_CTRL, "C")
      , (R.RIVER_SEAT_V1_MODIFIERS_SHIFT, "S")
      , (R.RIVER_SEAT_V1_MODIFIERS_MOD1, "M1")
      , (R.RIVER_SEAT_V1_MODIFIERS_MOD3, "M3")
      , (R.RIVER_SEAT_V1_MODIFIERS_MOD4, "M4")
      , (R.RIVER_SEAT_V1_MODIFIERS_MOD5, "M5") ]
    , fi x.unwrap .&. m /= 0 ]
    ++ [ xkbKeysymToText ksym ]

setNodePosition :: MonadIO m => R.RiverNode -> Int32 -> Int32 -> m ()
setNodePosition n x y = liftIO $ R.riverNodeSetPosition n x y

-- * Pointer Binds

data PointerBinding a = PointerBinding
  { pointer_binding    :: R.RiverPointerBinding
  , river_seat         :: R.RiverSeat
  , action             :: a
  } deriving (Generic)

instance GStorable (PointerBinding ())


newPointerBinding :: (MonadReader env m, HasLogFunc env, MonadIO m, Show a, Display a)
                  => R.RiverPointerBindingListener
                  -> R.RiverSeat
                  -> Modifiers
                  -> Button
                  -> a
                  -> m (StablePtr (PointerBinding a))
newPointerBinding pointerBindingListener seat mods btn action = do
    log' $ "[pointer] binding button: " <> fromString (ppXkbModsKey mods btn) <> " " <> display action
    pb' <- io $ R.riverSeatGetPointerBinding seat (fi btn) (fi mods)
    dtPtr <- io $ newStablePtr $ PointerBinding pb' seat action
    io $ R.listenerAdd pb' pointerBindingListener (castPtr $ castStablePtrToPtr dtPtr)
    _ <- liftIO $ R.riverPointerBindingEnable pb'
    return dtPtr

destroyPointerBinding :: MonadIO m => StablePtr (PointerBinding a) -> m ()
destroyPointerBinding sptr = do
  pb <- io $ deRefStablePtr sptr
  io $ R.objectDestroy pb.pointer_binding
  io $ freeStablePtr sptr

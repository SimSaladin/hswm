------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Seats
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- seat management
--
------------------------------------------------------------------------------
module HSWM.Seats where

import           HSWM.Core
import           HSWM.Operations
-- import qualified HSWM.StackSet as W
import           HSWM.Utils
import           River

import           Data.Bits
import qualified Data.List as L

manageSeats :: H ()
manageSeats = do
    newSeats <- gets _seats >>= \xs -> forM xs $ \s -> if s.new then createSeatBindings (s :: Seat) { new = False } else return s
    modify $ \s -> s { _seats = newSeats }
    gets _seats >>= \xs -> forM_ xs $ \s -> do
      withWindow s.interacted $ \w -> seatFocus s w
      -- XXX: ??
      --seat_action s s.pending_action
      --modifySeat s.river_seat $ \s -> s { interacted = invalidWindow, pending_action = ACTION_NONE }

      case s.op of
        SEAT_OP_NONE -> return ()
        SEAT_OP_MOVE -> do
          when s.op_release $ do
            liftIO $ river_seat_v1_op_end s.river_seat
            modifySeat s.river_seat $ \x -> x { op = SEAT_OP_NONE, op_window = invalidWindow }
        SEAT_OP_RESIZE -> do
          when s.op_release $ do
            liftIO $ riverWindowV1InformResizeEnd s.op_window
            liftIO $ river_seat_v1_op_end s.river_seat
            modifySeat s.river_seat $ \x -> x { op = SEAT_OP_NONE, op_window = invalidWindow }
          withWindow s.op_window $ \w -> do
            let width = s.op_start_width
                  - (if (s.op_edges .&. fromIntegral (fromEnum EdgeLeft)) /= 0  then s.op_dx else 0)
                  + (if (s.op_edges .&. fromIntegral (fromEnum EdgeRight)) /= 0 then s.op_dx else 0)
            let height = s.op_start_height
                  - (if (s.op_edges .&. fromIntegral (fromEnum EdgeTop)) /= 0    then s.op_dy else 0)
                  + (if (s.op_edges .&. fromIntegral (fromEnum EdgeBottom)) /= 0 then s.op_dy else 0)
            liftIO $ river_window_v1_propose_dimensions w.river_window (max width 1) (max height 1)

      when s.op_release $ modifySeat s.river_seat $ \x -> x { op_release = False }

createSeatBindings :: Seat -> H Seat
createSeatBindings s = do
  myMod        <- asks (defaultModMask . config) <&> resolveModMask 0
  xkbBinds     <- asks (keyBindings . config) >>= resolveKeyBinds myMod
  pointerBinds <- asks (pointerBindings . config) >>= resolvePointerBinds myMod
  xkbListener <- getObject
  binds <- getObject
  pointer_binding_listener <- getObject @PointerBindingListener

  xkbPtrs <- forM xkbBinds $ \((m, k), a) -> newXKBBinding binds xkbListener s.river_seat m k a
  pointerPtrs <- forM pointerBinds $ \((m, b), a) -> newPointerBinding pointer_binding_listener s.river_seat m b a

  return s { xkb_bindings = s.xkb_bindings ++ xkbPtrs
           , pointer_bindings = s.pointer_bindings ++ pointerPtrs }
  where
    resolveKeyBinds     mdef = mapM $ \((m, k), a) -> return ((resolveModMask mdef m, k), a)
    resolvePointerBinds mdef = mapM $ \((m, k), a) -> return ((resolveModMask mdef m, k), a)

seatRender :: Seat -> H ()
seatRender s = do
  case s.op of
    SEAT_OP_NONE -> return ()
    SEAT_OP_MOVE -> do
      withWindow s.op_window $ \w -> do
        let x = s.op_start_x + s.op_dx
            y = s.op_start_y + s.op_dy
        setNodePosition w.node x y
        debug' $ "seatRender: move window " <> tshow (w, x, y)
    SEAT_OP_RESIZE -> withWindow s.op_window $ \w -> do
      let x = s.op_start_x + (if (s.op_edges .&. fi (fromEnum EdgeLeft)) /= 0 then s.op_start_width - w.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fi (fromEnum EdgeTop)) /= 0 then s.op_start_height - w.height else 0)
      setNodePosition w.node x y
      debug' $ "seatRender: resize window " <> tshow (w, x, y)

seatFocus :: Seat -> Window -> H ()
seatFocus s w' = do
  toFocus <- if w'.river_window == invalidWindow
                then gets _windows >>= \case { x : _ -> return x; _ -> return w'; }
                else return w'
  let w = toFocus.river_window
  when (w /= s.focused) $ setFocus w -- clearFocus
  modifySeat s.river_seat $ \s' -> s' { focused = toFocus.river_window }
    where
      setFocus w = when (w /= invalidWindow) $ do
        log' $ "XXXX: seatFocus is FOCUSING CURRENT WINDOW " <> tshow w
        liftIO $ river_seat_v1_focus_window s.river_seat w
        -- liftIO $ river_node_v1_place_top w.node

seatPointerMove :: RiverSeat -> Window -> H ()
seatPointerMove sid w = do
  withSeat sid $ \s -> do
    log' $ "[seatPointerMove] " <> tshow (sid, w)
    seatFocus s w
    liftIO $ river_seat_v1_op_start_pointer s.river_seat
  modifySeat sid $ \s -> s
    { op = SEAT_OP_MOVE
    , op_window = w.river_window
    , op_start_x = w.x
    , op_start_y = w.y
    , op_dx= 0
    , op_dy= 0
    }

seatPointerResize :: RiverSeat -> Window -> Int32 -> H ()
seatPointerResize sid w edges = do
  withSeat sid $ \s -> do
    debug' $ "[seatPointerResize] " <> tshow (sid, w, edges)
    seatFocus s w
    liftIO $ riverWindowV1InformResizeStart w.river_window
    liftIO $ river_seat_v1_op_start_pointer s.river_seat
  modifySeat sid $ \s -> s
    { op = SEAT_OP_RESIZE
    , op_window = w.river_window
    , op_edges = edges
    , op_start_x = w.x
    , op_start_y = w.y
    , op_start_width = w.width
    , op_start_height = w.height
    , op_dx = 0
    , op_dy = 0
    }

seatClearFocus :: Seat -> H ()
seatClearFocus s = do
  log' "[seat] clear focus"
  liftIO $ river_seat_v1_clear_focus s.river_seat

deleteRemovedSeat :: Seat -> H ()
deleteRemovedSeat s@Seat{} = do
  modify $ \st -> st { _seats = L.filter (\x -> (/= s.river_seat) x.river_seat) (_seats st) }
  forM_ s.xkb_bindings destroyXKBBinding
  forM_ s.pointer_bindings destroyPointerBinding
  liftIO $ river_seat_v1_destroy s.river_seat

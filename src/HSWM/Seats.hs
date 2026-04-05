{-# LANGUAGE DeriveAnyClass #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}
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
import qualified HSWM.StackSet as W
import           HSWM.Utils
import qualified River.Safe as R
import qualified River.Objects as R

import           Data.Bits
import qualified Data.List as L
import           Foreign

data LayerShellFocus = FocusNone | FocusLayerShell { exclusive :: !Bool }
  deriving (Eq, Show, Generic)

instance Default LayerShellFocus where def = FocusNone

data SeatManager = SeatManager
  { pending_manage    :: [Seat]
  , seat_lshell_focus :: !LayerShellFocus
  }
  deriving stock Generic
  deriving anyclass Default

getSMgr :: H SeatManager
getSMgr = getOrCreateObject (pure def)

toUserData (R.RiverSeat p) = castPtr p

-- | New seat added
added :: RiverSeat -> H ()
added rseat = do
  layerShell <- getObject
  xkbBindings <- getObject
  seatListener <- getObject
  shellSeatListener <- getObject
  xkbBindingsSeatListener <- getObject

  -- add river_seat_listener
  io $ R.listenerAdd rseat seatListener nullPtr

  -- get layer shell seat + add listener
  layerShellSeat <- io $ R.riverLayerShellGetSeat layerShell rseat
  _ <- io $ R.listenerAdd layerShellSeat shellSeatListener nullPtr

  -- bind seat bindings
  bindingsSeat <- io $ R.riverXkbBindingsGetSeat xkbBindings rseat
  _ <- io $ R.listenerAdd bindingsSeat xkbBindingsSeatListener (toUserData rseat)

  let seat = def
        { river_seat = rseat
        , river_layer_shell_seat = layerShellSeat
        , xkb_bindings_seat = bindingsSeat
        }

  om <- getSMgr
  putObject om { pending_manage = seat : pending_manage om }

---------------------------------------------------------
-- * Events

handleEvent :: R.RiverSeatEvent -> H ()
handleEvent e = do
  sm <- getSMgr
  case e of
    R.RiverSeatRemoved _ seat -> withSeat seat deleteRemovedSeat

    R.RiverSeatPointerEnter _ seat window -> do
      when (sm.seat_lshell_focus == FocusNone) $ do
        modifySeat seat $ \s -> s { hovered = window }
        modifyWindowSet $ W.focusWindow window -- focus follow mouse

    R.RiverSeatPointerLeave _ seat      -> modifySeat seat $ \s -> s { hovered = invalidWindow }
    R.RiverSeatWindowInteraction _ seat window -> modifySeat seat $ \s -> s { interacted = window }
    R.RiverSeatOpDelta _ seat dx dy          -> modifySeat seat $ \s -> s { op_dx = fromIntegral dx, op_dy = fromIntegral dy }
    R.RiverSeatOpRelease _ seat         -> modifySeat seat $ \s -> s { op_release = True }

    -- (SeatWlSeat _ seat name)) = _

    _ -> return ()

handleLayerShellSeat :: R.RiverLayerShellSeatEvent -> H ()
handleLayerShellSeat e = do
  sm <- getSMgr
  newFocus <- case e of
    -- layer shell surface has exclusive focus
    R.RiverLayerShellSeatFocusExclusive    _ _ -> pure $ FocusLayerShell True

    -- layer shell surface wants non-exclusive focus
    -- A layer shell surface will be given non-exclusive keyboard focus at the end
    -- of the manage sequence in which this event is sent. The window manager may want
    -- to update window decorations or similar to indicate that no window is focused.
    R.RiverLayerShellSeatFocusNonExclusive _ _ -> pure $ FocusLayerShell False

    -- no layer shell surface has focus
    -- No layer shell surface will have keyboard focus at the end
    -- of the manage sequence in which this event is sent. The window
    -- manager may want to return focus to whichever window last had focus, for example.
    R.RiverLayerShellSeatFocusNone         _ _ -> pure $ FocusNone
  putObject sm { seat_lshell_focus = newFocus }


---------------------------------------------------------
-- * Manage

manage :: H ()
manage = do
  om <- getObject
  -- handle new seats
  newSeats <- forM om.pending_manage createSeatBindings
  modify $ \s -> s { _seats = _seats s ++ newSeats }
  putObject om { pending_manage = [] }
  -- manage existing ones
  gets _seats >>= mapM_ manage1

manage1 :: Seat -> H ()
manage1 s = do
  let doS = modifySeat s.river_seat
  case s.pending_action of

    S_SUBMAP_NEXT_KEY action subkeys -> do
      -- make sure next key is devoured
      io $ ensureNextKeyEaten s
      -- disable previous keymap keys
      io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) $ maybe s.xkb_bindings snd s.submap_pending
      -- activate sub-keymap keys
      io $ forM_ subkeys $ deRefStablePtr >=> R.riverXkbBindingEnable . xkb_binding
      -- store submap state
      doS $ \s' -> s' { submap_pending = Just (action, subkeys), pending_action = S_NONE }

    S_SUBMAP_CANCEL -> do
      -- disable sub-keymap keys
      whenJust s.submap_pending $ \(_, subkeys) -> io $ forM_ subkeys $ deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding
      -- enable main keymap keys
      io $ forM_ s.xkb_bindings $ deRefStablePtr >=> R.riverXkbBindingEnable . xkb_binding
      -- reset state
      doS $ \s' -> s' { submap_pending = Nothing, pending_action = S_NONE }

    S_NONE -> return ()

  -- withWindow s.interacted $ \w -> seatFocus s w

  -- XXX: ??
  --seat_action s s.pending_action
  --modifySeat s.river_seat $ \s -> s { interacted = invalidWindow, pending_action = ACTION_NONE }

  -- TODO
  -- case s.op of
  --   SEAT_OP_NONE -> return ()
  --   SEAT_OP_MOVE -> do
  --     when s.op_release $ do
  --       liftIO $ river_seat_v1_op_end s.river_seat
  --       modifySeat s.river_seat $ \x -> x { op = SEAT_OP_NONE, op_window = invalidWindow }
  --   SEAT_OP_RESIZE -> do
  --     when s.op_release $ do
  --       liftIO $ riverWindowInformResizeEnd s.op_window
  --       liftIO $ river_seat_v1_op_end s.river_seat
  --       modifySeat s.river_seat $ \x -> x { op = SEAT_OP_NONE, op_window = invalidWindow }
  --     withWindow s.op_window $ \w -> do
  --       let width = s.op_start_width
  --             - (if (s.op_edges .&. fromIntegral (fromEnum EdgeLeft)) /= 0  then s.op_dx else 0)
  --             + (if (s.op_edges .&. fromIntegral (fromEnum EdgeRight)) /= 0 then s.op_dx else 0)
  --       let height = s.op_start_height
  --             - (if (s.op_edges .&. fromIntegral (fromEnum EdgeTop)) /= 0    then s.op_dy else 0)
  --             + (if (s.op_edges .&. fromIntegral (fromEnum EdgeBottom)) /= 0 then s.op_dy else 0)
  --       liftIO $ river_window_v1_propose_dimensions w.river_window (max width 1) (max height 1)

  -- when s.op_release $ modifySeat s.river_seat $ \x -> x { op_release = False }

---------------------------------------------------------
-- * Render

render :: H ()
render = do
  mapSeats seatRender

seatRender :: Seat -> H ()
seatRender s = do
  case s.op of
    SEAT_OP_NONE -> return ()

    SEAT_OP_MOVE -> do
      withWindow s.op_window $ \w -> do
        let x = s.op_start_x + s.op_dx
            y = s.op_start_y + s.op_dy
        setNodePosition w.node x y
        -- debug' $ "seatRender: move window " <> tshow (w, x, y)

    SEAT_OP_RESIZE -> withWindow s.op_window $ \w -> do
      let x = s.op_start_x + (if (s.op_edges .&. fi (fromEnum EdgeLeft)) /= 0 then s.op_start_width - w.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fi (fromEnum EdgeTop)) /= 0 then s.op_start_height - w.height else 0)
      setNodePosition w.node x y
      -- debug' $ "seatRender: resize window " <> tshow (w, x, y)

----------------------------------------------------------
-- * Utilities

createSeatBindings :: Seat -> H Seat
createSeatBindings s = do
  kbdListen <- getObject
  binds <- getObject
  pbListen <- getObject @R.RiverPointerBindingListener

  myMod  <- asks (defaultModMask . config) <&> resolveModMask 0
  kBinds <- asks (keyBindings . config)
  pBinds <- asks (pointerBindings . config) >>= resolvePointerBinds myMod

  let fKeyBind enable ((m, k), a) = case actionSubmap a of
        []    -> newXKBBinding binds kbdListen s.river_seat enable m k a []
        subkm -> do
          subkeys <- mapM (fKeyBind False) subkm
          newXKBBinding binds kbdListen s.river_seat enable m k a subkeys

  kPtrs <- forM kBinds (fKeyBind True)
  pPtrs <- forM pBinds $ \((m, b), a) -> newPointerBinding pbListen s.river_seat m b a

  return s { xkb_bindings     = s.xkb_bindings ++ kPtrs
           , pointer_bindings = s.pointer_bindings ++ pPtrs }
  where
    resolvePointerBinds mdef = mapM $ \((m, k), a) -> return ((resolveModMask mdef m, k), a)

-- |
-- Ensure that the next non-modifier key press and corresponding release events
-- for this seat are not sent to the currently focused surface.
--
-- If the next non-modifier key press triggers a binding, the pressed/released
-- events are sent to the river_xkb_binding_v1 object as usual.
--
-- If the next non-modifier key press does not trigger a binding,
-- the ate_unbound_key event is sent instead.
--
-- /manage sequence/
ensureNextKeyEaten, cancelEnsureNextKeyEaten :: Seat -> IO ()
ensureNextKeyEaten s = io $ R.riverXkbBindingsSeatEnsureNextKeyEaten s.xkb_bindings_seat
cancelEnsureNextKeyEaten s = io $ R.riverXkbBindingsSeatCancelEnsureNextKeyEaten s.xkb_bindings_seat

deleteRemovedSeat :: Seat -> H ()
deleteRemovedSeat s@Seat{} = do
  modify $ \st -> st { _seats = L.filter (\x -> (/= s.river_seat) x.river_seat) (_seats st) }
  forM_ s.xkb_bindings destroyXKBBinding
  forM_ s.pointer_bindings destroyPointerBinding
  io $ R.objectDestroy s.xkb_bindings_seat
  io $ R.objectDestroy s.river_layer_shell_seat
  io $ R.objectDestroy s.river_seat

fromRiverSeat (R.RiverSeat s) = s

execXkbBinding :: XkbBinding SomeAction -> H ()
execXkbBinding xb = withSeat xb.river_seat $ \s -> do
  case (s.submap_pending, actionSubmap xb.action) of
    (Nothing, []) -> do
      debug' "submap: no submap run"
      userCodeDef () $ runner xb.action
    (Nothing, _) -> do
      debug' "submap binding activated"
      subkeys <- io $ deRefStablePtr xb.subKeymap
      modifySeat xb.river_seat $ \s' -> s' { pending_action = S_SUBMAP_NEXT_KEY xb.action subkeys }
    (Just _, []) -> do
      debug' "submap: cancel"
      modifySeat xb.river_seat $ \s' -> s' { pending_action = S_SUBMAP_CANCEL }
      userCodeDef () $ runner xb.action
    (Just (_,_), _:_) -> do
      debug' "submap binding activated (lvl++)"
      subkeys <- io $ deRefStablePtr xb.subKeymap
      modifySeat xb.river_seat $ \s' -> s' { pending_action = S_SUBMAP_NEXT_KEY xb.action subkeys }

seatFocus :: Seat -> Window -> H ()
seatFocus s w = when (w.river_window /= invalidWindow) $ do
  --toFocus <- if w'.river_window == invalidWindow
  --              then gets (M.lookupMax . _windows) >>= \case { x : _ -> return x; _ -> return w'; }
  --              else return w'
  --let w = toFocus.river_window
  when (w.river_window /= s.focused) $ setFocus w.river_window -- clearFocus
  modifySeat s.river_seat $ \s' -> s' { focused = w.river_window }
    where
      setFocus rw = when (rw /= invalidWindow) $ liftIO $ R.riverSeatFocusWindow s.river_seat rw
        -- liftIO $ river_node_v1_place_top w.node

-- | /manage sequence/
seatClearFocus :: Seat -> H ()
seatClearFocus s = io $ R.riverSeatClearFocus s.river_seat

seatPointerMove :: RiverSeat -> Window -> H ()
seatPointerMove sid w = do
  withSeat sid $ \s -> do
    --log' $ "[seatPointerMove] " <> tshow (sid, w)
    seatFocus s w
    liftIO $ R.riverSeatOpStartPointer s.river_seat
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
    -- debug' $ "[seatPointerResize] " <> tshow (sid, w, edges)
    seatFocus s w
    liftIO $ R.riverWindowInformResizeStart w.river_window
    liftIO $ R.riverSeatOpStartPointer s.river_seat
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

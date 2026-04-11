{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE OverloadedLabels #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

------------------------------------------------------------------------------

-- |
-- Module      : HSWM.Seats
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Seat management
module HSWM.Seats where

-- import qualified HSWM.StackSet as W

import Data.Bits
import Data.List qualified as L
import Foreign hiding (void)
import GHC.Records
import HSWM.Core
import HSWM.Operations
import HSWM.StackSet qualified as W
import HSWM.Utils
import Wayland
import Bindings.River qualified as R
import Bindings.RiverSafe qualified as R
import Bindings.Wayland.Client qualified as WL

data LayerShellFocus = FocusNone | FocusLayerShell {exclusive :: !Bool}
  deriving (Eq, Show, Generic)

instance Default LayerShellFocus where
  def = FocusNone

data SeatManager = SeatManager
  { pending_manage :: [Seat],
    seat_lshell_focus :: !LayerShellFocus
  }
  deriving stock (Generic)
  deriving anyclass (Default)

modifySeat' :: Ptr Void -> (Seat -> Seat) -> HS ()
modifySeat' ud f = modifySeat (R.RiverSeat $ castPtr ud) f

getSMgr :: H SeatManager
getSMgr = getOrCreateObject (pure def)

-- | New seat added
added :: RiverSeat -> H ()
added river_seat = do
  layerShell <- getObject
  xkbBindings <- getObject
  seatListener <- getObject
  shellSeatListener <- getObject
  xkbBindingsSeatListener <- getObject
  -- Add river_seat_listener
  io $ R.listenerAdd river_seat seatListener nullPtr
  -- Add layer shell seat listener
  river_layer_shell_seat <- io $ R.riverLayerShellGetSeat layerShell river_seat
  io $ R.listenerAdd river_layer_shell_seat shellSeatListener nullPtr
  -- Add xkb bindings seat listener
  xkb_bindings_seat <- io $ R.riverXkbBindingsGetSeat xkbBindings river_seat
  io $ R.listenerAdd xkb_bindings_seat xkbBindingsSeatListener river_seat
  let seat = def {river_seat, river_layer_shell_seat, xkb_bindings_seat}
  om <- getSMgr
  putObject om {pending_manage = seat : pending_manage om}

deleteRemovedSeat :: Seat -> HS ()
deleteRemovedSeat s@Seat {} = do
  modify $ \st -> st {_seats = L.filter (\x -> (/= s.river_seat) x.river_seat) (_seats st)}
  forM_ s.xkb_bindings destroyXKBBinding
  forM_ s.pointer_bindings destroyPointerBinding
  io $ R.objectDestroy s.xkb_bindings_seat
  io $ R.objectDestroy s.river_layer_shell_seat
  io $ R.objectDestroy s.river_seat

---------------------------------------------------------

-- * Events

handleEvent :: R.RiverSeatEvent -> H ()
handleEvent e = do
  sm <- getSMgr
  case e of
    R.RiverSeatRemoved _ seat ->
      runInHS $ withSeat seat deleteRemovedSeat
    R.RiverSeatPointerEnter _ seat window -> do
      when (sm.seat_lshell_focus == FocusNone) $ do
        runInHS $ modifySeat seat $ \s -> s {hovered = window}
        -- focus follow mouse
        runInHS $ withSeat seat $ \s ->
          unless s.suppressChangeFocus $ modifyWindowSet $ W.focusWindow window
    R.RiverSeatPointerLeave _ seat ->
      runInHS $ modifySeat seat $ \s -> s {hovered = invalidWindow}
    R.RiverSeatWindowInteraction _ seat window ->
      runInHS $ modifySeat seat $ \s -> s {interacted = window}
    R.RiverSeatOpDelta _ seat dx dy ->
      runInHS $ modifySeat seat $ \s -> s {op_dx = fromIntegral dx, op_dy = fromIntegral dy}
    R.RiverSeatOpRelease _ seat ->
      runInHS $ modifySeat seat $ \s -> s {op_release = True}
    R.RiverSeatWlSeat _ seat name -> do
      registry <- asks globals
      wlseatL <- getObject
      wlseat <- requireGlobal registry ("wl_seat", 9) $ \r _ ver ->
        io $ WL.registryBind r name WL.seatInterface (fi ver) <&> WL.Seat
      io $ R.listenerAdd wlseat wlseatL seat
    _ -> return ()

handleWlSeatEvent :: WL.SeatEvent -> H ()
handleWlSeatEvent e = do
  case e of
    WL.SeatName ud wl_seat name -> runInHS $ do
      modifySeat' ud $ \x -> x {name = name, wl_seat}
      mapSeats $ pTrace
    WL.SeatCapabilities ud s caps -> do
      runInHS $ do
        modifySeat' ud $ \x -> x {caps = WL.toCEnum (fi caps)}

      when (caps > 0) $ do
        log' $ display $ "seat: get keyboard: " <> tshow caps
        wlkeyboard <- io $ WL.seatGetKeyboard s
        wlkeyboardL <- getObject
        io $ WL.listenerAdd wlkeyboard wlkeyboardL nullPtr

        log' $ display $ "seat: get wlpointer: " <> tshow caps
        wlpointer <- io $ WL.seatGetPointer s
        wlpl <- getObject
        io $ WL.listenerAdd wlpointer wlpl nullPtr

handleLayerShellSeat :: R.RiverLayerShellSeatEvent -> H ()
handleLayerShellSeat e = do
  sm <- getSMgr
  newFocus <- case e of
    -- layer shell surface has exclusive focus
    R.RiverLayerShellSeatFocusExclusive _ _ -> pure $ FocusLayerShell True
    -- layer shell surface wants non-exclusive focus
    -- A layer shell surface will be given non-exclusive keyboard focus at the end
    -- of the manage sequence in which this event is sent. The window manager may want
    -- to update window decorations or similar to indicate that no window is focused.
    R.RiverLayerShellSeatFocusNonExclusive _ _ -> pure $ FocusLayerShell False
    -- no layer shell surface has focus
    -- No layer shell surface will have keyboard focus at the end
    -- of the manage sequence in which this event is sent. The window
    -- manager may want to return focus to whichever window last had focus, for example.
    R.RiverLayerShellSeatFocusNone _ _ -> pure FocusNone
  putObject sm {seat_lshell_focus = newFocus}

handleXkbBindingEvent :: R.RiverXkbBindingEvent -> H ()
handleXkbBindingEvent ev = do
  case ev of
    R.RiverXkbBindingPressed dt _ -> do
      xb <- io $ deRefStablePtr (castPtrToStablePtr (castPtr dt) :: StablePtr (XkbBinding (SomeAction H)))
      execXkbBinding xb
    _ -> return ()

handleXkbBindingsSeatEvent :: R.RiverXkbBindingsSeatEvent -> H ()
handleXkbBindingsSeatEvent ev = case ev of
  -- unhandled submap keys
  R.RiverXkbBindingsSeatAteUnboundKey dt _ ->
    runInHS $ modifySeat' dt $ \s -> s {pending_action = S_SUBMAP_CANCEL}

handlePointerEvent :: R.RiverPointerBindingEvent -> H ()
handlePointerEvent ev = do
  case ev of
    R.RiverPointerBindingPressed dt _ -> do
      xb <- io $ deRefStablePtr (castPtrToStablePtr $ castPtr dt :: StablePtr (PointerBinding (SomeAction H)))
      userCodeDef () $ runner xb.action
    _ -> return ()

---------------------------------------------------------

-- * Manage

-- XXX: also set XCURSOR_THEME= ? XCURSOR_PATH= ?
setXCursorTheme :: RiverSeat -> H ()
setXCursorTheme rs =
  asks (xcursor . config) >>= \case
    Just (theme, size) -> io $ R.riverSeatSetXcursorTheme rs (Just theme) size
    Nothing -> pure ()

manage :: H ()
manage = do
  om <- getObject
  -- Handle new seats
  newSeats <- forM om.pending_manage createSeatBindings
  forM_ newSeats $ \s -> setXCursorTheme $ getField @"river_seat" s
  runInHS $ modify $ \s -> s {_seats = _seats s ++ newSeats}
  putObject om {pending_manage = []}
  -- Manage existing ones
  runInHS $ gets _seats >>= mapM_ manage1

-- | Manage SeatOp state
manage1 :: Seat -> HS ()
manage1 s = do
  case s.inputOverride of
    Just (onEmpty, skeys) -> do
      log' "set: input overridden, main loop disabled!"
      case s.pending_action of
        S_SUBMAP_CANCEL -> do
          onEmpty >>= \case
            True -> do
              io $ ensureNextKeyEaten s
              doS $ \s' -> s' {pending_action = S_NONE}
            False -> do
              io $ forM_ skeys $ deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding
              managePendingAction >> manageActiveOp
        _ -> return ()
    _ -> managePendingAction >> manageActiveOp
  modifySeat s.river_seat $ \x -> x { suppressChangeFocus = False }
  where
    doS = modifySeat s.river_seat

    managePendingAction = case s.pending_action of
      S_NONE -> return ()
      S_SUBMAP_NEXT_KEY action subkeys -> do
        -- make sure next key is devoured
        io $ ensureNextKeyEaten s
        -- disable previous keymap keys + activate sub-keymap keys + store submap state
        io $
          mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) $
            maybe s.xkb_bindings snd s.submap_pending
        io $ forM_ subkeys $ deRefStablePtr >=> R.riverXkbBindingEnable . xkb_binding
        doS $ \s' -> s' {submap_pending = Just (action, subkeys), pending_action = S_NONE}
      S_SUBMAP_CANCEL -> do
        -- disable sub-keymap keys + enable main keymap keys + reset state
        whenJust s.submap_pending $ \(_, subkeys) ->
          io $ forM_ subkeys $ deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding
        io $ forM_ s.xkb_bindings $ deRefStablePtr >=> R.riverXkbBindingEnable . xkb_binding
        doS $ \s' -> s' {submap_pending = Nothing, pending_action = S_NONE}
      S_START_OP SEAT_OP_MOVE -> do
        mw <- withWindowSet $ return . W.peek
        case mw of
          Nothing -> return ()
          Just w -> do
            log' "seat: start move op"
            doS $ \s' -> s' {pending_action = S_NONE}
            withWindow w $ seatPointerMove s.river_seat
      S_START_OP SEAT_OP_RESIZE -> do
        mw <- withWindowSet $ return . W.peek
        case mw of
          Nothing -> return ()
          Just w -> do
            log' "seat: start resize op"
            doS $ \s' -> s' {pending_action = S_NONE}
            withWindow w $ \rv -> seatPointerResize s.river_seat rv (2 .|. 8) --  .|. 4 .|. 8)
      S_INPUT_OVERRIDE onEmpty keys -> do
        log' "seat: input override mode"
        kbdListen <- liftH getObject
        binds <- liftH getObject
        -- disable current keys
        io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) s.xkb_bindings
        skeys <- createXkbBindings (binds, kbdListen, s.river_seat) actionSubmap keys
        doS $ \s' -> s' {pending_action = S_NONE, inputOverride = Just (onEmpty, skeys)}
        io $ ensureNextKeyEaten s
      _ -> return ()

    manageActiveOp = do
      case s.op of
        SEAT_OP_NONE -> return ()
        SEAT_OP_MOVE -> do
          when s.op_release $ do
            io $ R.riverSeatOpEnd s.river_seat
            float s.op_window
            modifySeat s.river_seat $ \x -> x {op = SEAT_OP_NONE, op_window = invalidWindow}
        SEAT_OP_RESIZE -> do
          when s.op_release $ do
            liftIO $ R.riverWindowInformResizeEnd s.op_window
            liftIO $ R.riverSeatOpEnd s.river_seat
            float s.op_window
            modifySeat s.river_seat $ \x -> x {op = SEAT_OP_NONE, op_window = invalidWindow}
          withWindow s.op_window $ \w -> do
            let width =
                  s.op_start_width
                    - (if (s.op_edges .&. fromIntegral ((.unwrap) EdgeLeft)) /= 0 then s.op_dx else 0)
                    + (if (s.op_edges .&. fromIntegral ((.unwrap) EdgeRight)) /= 0 then s.op_dx else 0)
            let height =
                  s.op_start_height
                    - (if (s.op_edges .&. fromIntegral ((.unwrap) EdgeTop)) /= 0 then s.op_dy else 0)
                    + (if (s.op_edges .&. fromIntegral ((.unwrap) EdgeBottom)) /= 0 then s.op_dy else 0)
            liftIO $ R.riverWindowProposeDimensions w.river_window (max width 1) (max height 1)
      when s.op_release $ do
        modifySeat s.river_seat $ \x -> x {op_release = False}

seatFocus :: Seat -> Window -> HS ()
seatFocus s w = when (w.river_window /= invalidWindow) $ do
  when (w.river_window /= s.focused) $ setFocus w.river_window -- clearFocus
  modifySeat s.river_seat $ \s' -> s' {focused = w.river_window}
  where
    setFocus rw = when (rw /= invalidWindow) $ liftIO $ R.riverSeatFocusWindow s.river_seat rw

-- | /manage sequence/
seatClearFocus :: Seat -> H ()
seatClearFocus s = io $ R.riverSeatClearFocus s.river_seat

seatPointerMove :: RiverSeat -> Window -> HS ()
seatPointerMove sid w = do
  log' $ display $ "[seatPointerMove] " <> tshow (sid, w)
  withSeat sid $ \s -> seatFocus s w
  io $ R.riverNodePlaceTop w.node
  io $ R.riverSeatOpStartPointer sid
  modifySeat sid $ \s ->
    s
      { op = SEAT_OP_MOVE,
        op_window = w.river_window,
        op_start_x = w.x,
        op_start_y = w.y,
        op_dx = 0,
        op_dy = 0
      }

seatPointerResize :: RiverSeat -> Window -> Int32 -> HS ()
seatPointerResize sid w edges = do
  withSeat sid $ \s -> do
    debug' $ display $ "[seatPointerResize] " <> tshow (sid, w, edges)
    seatFocus s w
    io $ R.riverNodePlaceTop w.node
    io $ R.riverWindowInformResizeStart w.river_window
    io $ R.riverSeatOpStartPointer s.river_seat
  modifySeat sid $ \s ->
    s
      { op = SEAT_OP_RESIZE,
        op_window = w.river_window,
        op_edges = edges,
        op_start_x = w.x,
        op_start_y = w.y,
        op_start_width = w.width,
        op_start_height = w.height,
        op_dx = 0,
        op_dy = 0
      }

---------------------------------------------------------

-- * Render

render :: H ()
render = runInHS $ do
  mapSeats seatRender

seatRender :: Seat -> HS ()
seatRender s = do
  case s.op of
    SEAT_OP_NONE -> return ()
    SEAT_OP_MOVE -> do
      withWindow s.op_window $ \w -> do
        let x = s.op_start_x + s.op_dx
            y = s.op_start_y + s.op_dy
        setWindowPosition w x y
    SEAT_OP_RESIZE -> withWindow s.op_window $ \w -> do
      let x = s.op_start_x + (if (s.op_edges .&. fi ((.unwrap) EdgeLeft)) /= 0 then s.op_start_width - w.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fi ((.unwrap) EdgeTop)) /= 0 then s.op_start_height - w.height else 0)
      setWindowPosition w x y

----------------------------------------------------------

-- * Xkb and Pointer bindings

createSeatBindings :: Seat -> H Seat
createSeatBindings s = do
  kbdListen <- getObject
  binds <- getObject
  pbListen <- getObject @R.RiverPointerBindingListener

  myMod <- asks (defaultModMask . config) <&> resolveModMask 0
  pBinds <- asks (pointerBindings . config) >>= resolvePointerBinds myMod
  pPtrs <- forM pBinds $ \((m, b), a) -> newPointerBinding pbListen s.river_seat m b a

  kPtrs <-
    createXkbBindings (binds, kbdListen, s.river_seat) actionSubmap
      =<< asks (keyBindings . config)
  return
    s
      { xkb_bindings = s.xkb_bindings <> kPtrs,
        pointer_bindings = s.pointer_bindings ++ pPtrs
      }
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

execXkbBinding :: XkbBinding (SomeAction H) -> H ()
execXkbBinding xb = do
  ms <- runInHS $ L.find (\x -> x.river_seat == xb.river_seat) <$> gets _seats
  void . async $ local (\r -> r {thisSeat = Just xb.river_seat}) $ case ms of
    Nothing -> return ()
    Just s -> case (s.submap_pending, actionSubmap @H xb.action) of
      _ | Just _ <- s.inputOverride -> void $ userCode $ runner xb.action
      (Nothing, []) -> userCodeDef () $ runner xb.action
      -- Submap binding activated
      (Nothing, _) -> do
        runInHS $ modifySeat xb.river_seat $ \s' -> s' {pending_action = S_SUBMAP_NEXT_KEY xb.action xb.subKeymap}
      -- Submap action + reset
      (Just _, []) -> do
        runInHS $ modifySeat xb.river_seat $ \s' -> s' {pending_action = S_SUBMAP_CANCEL}
        userCodeDef () $ runner xb.action
      -- Submap binding activated (lvl++)
      (Just (_, _), _ : _) -> do
        runInHS $ modifySeat xb.river_seat $ \s' -> s' {pending_action = S_SUBMAP_NEXT_KEY xb.action xb.subKeymap}

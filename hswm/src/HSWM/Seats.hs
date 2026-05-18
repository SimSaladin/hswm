{-# LANGUAGE DeriveAnyClass #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

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

import           HSWM.Core
import           HSWM.Operations
import qualified HSWM.StackSet as W
import           HSWM.Utils

import qualified Wayland as WL
import qualified River as R

import qualified Bindings.River as R
import qualified Bindings.River.WindowManagementV1.Generated as R
import qualified Bindings.Wayland.ExtIdleNotifyV1 as Ext

import           Data.Bits
import qualified Data.List as L
import           Foreign hiding (void)
import           GHC.Records

newtype SeatManager = SeatManager { pending_manage :: [Seat] }
  deriving stock (Generic)
  deriving anyclass (Default)

modifySeat' :: Ptr Void -> (Seat -> Seat) -> HS ()
modifySeat' ud = modifySeat (R.RiverSeat $ castPtr ud)

-- | New seat added
added :: RiverSeat -> H ()
added river_seat = do
  -- Add river_seat_listener
  withObject $ WL.listenerAdd_ river_seat
  -- Add layer shell seat listener
  river_layer_shell_seat <- withObject $ \ls -> R.riverLayerShellGetSeat ls river_seat
  withObject $ \l -> WL.listenerAdd river_layer_shell_seat l river_seat
  -- Add xkb bindings seat listener
  xkb_bindings_seat <- withObject $ \xbs -> R.riverXkbBindingsGetSeat xbs river_seat
  withObject $ \l -> WL.listenerAdd xkb_bindings_seat l river_seat
  let seat = def {river_seat, river_layer_shell_seat, xkb_bindings_seat}
  modifyObjectDef $ \st -> st { pending_manage = seat : pending_manage st }

deleteRemovedSeat :: Seat -> HS ()
deleteRemovedSeat s@Seat {} = do
  modify $ \st -> st {_seats = L.filter (\x -> (/= s.river_seat) x.river_seat) (_seats st)}
  forM_ s.xkb_bindings destroyXKBBinding
  forM_ s.pointer_bindings destroyPointerBinding
  io $ R.objectDestroy s.xkb_bindings_seat
  io $ R.objectDestroy s.river_layer_shell_seat
  io $ R.objectDestroy s.river_seat

-- * Events

handleEvent :: R.RiverSeatEvent -> H ()
handleEvent = \case
    R.RiverSeatPointerEnter _ seat window -> runInHS $ withSeat seat $ \s' -> do
      when (s'.currentFocus == SFocusNone) $ do
        modifySeat seat $ \s -> s {hovered = window, pendingPointerEnter = Just (window, s.position)}
        -- focus follow mouse
    --  runInHS $ withSeat seat $ \s ->
    --    unless s.suppressChangeFocus $ modifyWindowSet $ W.focusWindow window
    R.RiverSeatPointerLeave _ seat ->
      runInHS $ modifySeat seat $ \s -> s {hovered = R.invalidWindow, pendingPointerEnter = Nothing}
    R.RiverSeatPointerPosition _ seat x y ->
      runInHS $ modifySeat seat $ \s -> s {position = (x,y)}
    R.RiverSeatWindowInteraction _ seat window ->
      runInHS $ modifySeat seat $ \s -> s {interacted = window}
    R.RiverSeatOpDelta _ seat dx dy ->
      runInHS $ modifySeat seat $ \s -> s {op_dx = fromIntegral dx, op_dy = fromIntegral dy}
    R.RiverSeatOpRelease _ seat ->
      runInHS $ modifySeat seat $ \s -> s {op_release = True}

    R.RiverSeatWlSeat _ seat name -> do
      registry <- asks globals >>= readMVar
      wlseat   <- WL.bindGlobal @WL.Seat registry (Just name) Nothing
      ver <- io $ WL.getVersion wlseat
      logInfo $ "WL SEAT" :# [ "version" .= ver ]
      withObject $ \l -> WL.listenerAdd wlseat l seat
      -- Register idle notifier
      withObject $ \idleNotify -> do
        idleN <- Ext.idleNotifierGetIdleNotification idleNotify (10 * 60 * 1000) wlseat
        withObject $ \l -> WL.listenerAdd idleN l seat

    R.RiverSeatRemoved _ seat ->
      runInHS $ withSeat seat deleteRemovedSeat

    _ -> return ()

handleWlSeatEvent :: WL.SeatEvent -> H ()
handleWlSeatEvent e = do
  case e of
    WL.SeatName ud wl_seat name -> runInHS $ do
      modifySeat' ud $ \x -> x {name = name, wl_seat}

    WL.SeatCapabilities ud s caps -> do
      runInHS $ modifySeat' ud $ \x -> x {caps = caps}
      forM_ (WL.parseSeatCapabilities caps) $ \case
        WL.SeatCapabilityKeyboard -> do
          wlkeyboard <- WL.seatGetKeyboard s
          logDebug $ "seat: get keyboard" :# [ "seat" .= tshow s, "keyboard" .= tshow wlkeyboard ]
          withObject $ WL.listenerAdd_ wlkeyboard

        WL.SeatCapabilityPointer -> do
          wlpointer <- WL.seatGetPointer s
          logDebug $ "seat: got pointer" :# [ "seat" .= tshow s, "pointer" .= tshow wlpointer ]
          withObject $ WL.listenerAdd_ wlpointer

        WL.SeatCapabilityTouch -> do
          logDebug $ "seat: got touch" :# [ "seat" .= tshow s ]

        _ -> return ()

handleLayerShellSeat :: R.RiverLayerShellSeatEvent -> H ()
handleLayerShellSeat e = do
  _newFocus <- case e of
    -- layer shell surface has exclusive focus
    R.RiverLayerShellSeatFocusExclusive ud _ -> do
      runInHS $ modifySeat' ud $ \s -> s { currentFocus = SFocusLayerShell True (currentFocus s) }
      -- pure $ FocusLayerShell True

    -- layer shell surface wants non-exclusive focus
    -- A layer shell surface will be given non-exclusive keyboard focus at the end
    -- of the manage sequence in which this event is sent. The window manager may want
    -- to update window decorations or similar to indicate that no window is focused.
    R.RiverLayerShellSeatFocusNonExclusive ud _ -> do
      runInHS $ modifySeat' ud $ \s -> s { currentFocus = SFocusLayerShell False (currentFocus s) }
      -- pure $ FocusLayerShell False

    -- no layer shell surface has focus
    -- No layer shell surface will have keyboard focus at the end
    -- of the manage sequence in which this event is sent. The window
    -- manager may want to return focus to whichever window last had focus, for example.
    R.RiverLayerShellSeatFocusNone ud _ -> do
      runInHS $ modifySeat' ud $ \s -> s { currentFocus = SFocusNone }
      -- pure FocusNone

  return ()
  -- modifyObject $ \st -> st { seat_lshell_focus = newFocus }

handleXkbBindingEvent :: R.RiverXkbBindingEvent -> H ()
handleXkbBindingEvent = \case
    R.RiverXkbBindingPressed dt _ -> do
     xb <- io $ deRefStablePtr (castPtrToStablePtr (castPtr dt) :: StablePtr (XkbBinding (SomeAction H)))
     execXkbBinding xb

    R.RiverXkbBindingReleased dt _ -> do
     xb <- io $ deRefStablePtr (castPtrToStablePtr (castPtr dt) :: StablePtr (XkbBinding (SomeAction H)))
     cancelXkbBinding xb

    R.RiverXkbBindingStopRepeat dt _ -> do
     xb <- io $ deRefStablePtr (castPtrToStablePtr (castPtr dt) :: StablePtr (XkbBinding (SomeAction H)))
     cancelXkbBinding xb

handleXkbBindingsSeatEvent :: R.RiverXkbBindingsSeatEvent -> H ()
handleXkbBindingsSeatEvent = \case
  -- unhandled submap keys
  R.RiverXkbBindingsSeatAteUnboundKey dt _ ->
    runInHS $ modifySeat' dt $ \s -> s {pending_action = S_SUBMAP_CANCEL}

handlePointerEvent :: R.RiverPointerBindingEvent -> H ()
handlePointerEvent = \case
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
    Just (theme, size) -> R.riverSeatSetXcursorTheme rs (Just theme) size
    Nothing -> pure ()

manage :: H ()
manage = do
  om <- getObject @SeatManager
  -- Handle new seats
  newSeats <- forM om.pending_manage createSeatBindings
  unless (null newSeats) $ do
    runInHS $ modify $ \s -> s {_seats = _seats s ++ newSeats}
    forM_ newSeats $ \s -> setXCursorTheme $ getField @"river_seat" s
    modifyObject $ \st -> st { pending_manage = [] }
  -- Manage existing ones
  runInHS $ gets _seats >>= mapM_ manage1

-- | Manage SeatOp state
manage1 :: Seat -> HS ()
manage1 s = do
  case s.inputOverride of
    Just (onEmpty, skeys) -> do
      logInfo "seat: input overridden, main loop disabled!"
      case s.pending_action of
        S_SUBMAP_CANCEL ->
          onEmpty >>= \case
            True -> do
              ensureNextKeyEaten s
              doS $ \s' -> s' {pending_action = S_NONE}
            False -> do
              io $ forM_ skeys $ deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding
              managePendingAction s.pending_action >> manageActiveOp
        _ -> return ()
    _ -> managePendingAction s.pending_action >> manageActiveOp
  modifySeat s.river_seat $ \x -> x { suppressChangeFocus = max 0 (suppressChangeFocus x - 1) }
  where
    doS = modifySeat s.river_seat

    managePendingAction = \case
      S_NONE -> do
        case s.currentFocus of
          SFocusNone -> do
            withWindow s.focused $ \_ -> R.riverSeatFocusWindow s.river_seat s.focused
            doS $ \x -> x { currentFocus = SFocusWindow s.focused }

          SFocusWindow{} -> case s.pendingPointerEnter of
            Just (rw, pos) -> do
              doS $ \x -> x { pendingPointerEnter = Nothing }
              when (pos /= s.position) $ do
                logInfo "seat: focus changed by pointer"
                doS $ \x -> x { focused = rw }
                R.riverSeatFocusWindow s.river_seat rw
                windows $ W.focusWindow rw
            _ -> pure ()

          _ -> pure ()

      S_SUBMAP_NEXT_KEY action subkeys -> do
        -- make sure next key is devoured
        ensureNextKeyEaten s
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
          Just w -> do
            logInfo "seat: start move op"
            doS $ \s' -> s' {pending_action = S_NONE}
            withWindow w $ seatPointerMove s.river_seat
          Nothing -> return ()
      S_START_OP SEAT_OP_RESIZE -> do
        mw <- withWindowSet $ maybe (pure Nothing) lookupWindow . W.peek
        case mw of
          Nothing -> return ()
          Just w -> do
            logInfo "seat: start resize op"
            doS $ \s' -> s' {pending_action = S_NONE}
            let edges = calcResizeEdges w s.position
            seatPointerResize s.river_seat w edges
      S_INPUT_OVERRIDE onEmpty keys -> do
        logInfo "seat: input override mode"
        kbdListen <- liftH getObject
        binds <- liftH getObject
        -- disable current keys
        io $ mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . xkb_binding) s.xkb_bindings
        skeys <- createXkbBindings (binds, kbdListen, s.river_seat) actionSubmap keys
        doS $ \s' -> s' {pending_action = S_NONE, inputOverride = Just (onEmpty, skeys)}
        ensureNextKeyEaten s
      _ -> return ()

    manageActiveOp = do
      case s.op of
        SEAT_OP_NONE -> return ()
        SEAT_OP_MOVE ->
          when s.op_release $ do
            R.riverSeatOpEnd s.river_seat
            float s.op_window
            modifySeat s.river_seat $ \x -> x {op = SEAT_OP_NONE, op_window = R.invalidWindow}
        SEAT_OP_RESIZE -> do
          when s.op_release $ do
            R.riverWindowInformResizeEnd s.op_window
            R.riverSeatOpEnd s.river_seat
            float s.op_window
            modifySeat s.river_seat $ \x -> x {op = SEAT_OP_NONE, op_window = R.invalidWindow}
          withWindow s.op_window $ \w -> do
            let width =
                  s.op_start_width
                    - (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeLeft)) /= 0 then s.op_dx else 0)
                    + (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeRight)) /= 0 then s.op_dx else 0)
            let height =
                  s.op_start_height
                    - (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeTop)) /= 0 then s.op_dy else 0)
                    + (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeBottom)) /= 0 then s.op_dy else 0)
            R.riverWindowProposeDimensions w.river_window (max width 1) (max height 1)
      when s.op_release $ do
        modifySeat s.river_seat $ \x -> x {op_release = False}

seatFocus :: Seat -> Window -> HS ()
seatFocus s w = when (w.river_window /= R.invalidWindow) $ do
  when (w.river_window /= s.focused) $ setFocus w.river_window -- clearFocus
  modifySeat s.river_seat $ \s' -> s' {focused = w.river_window}
  where
    setFocus rw = when (rw /= R.invalidWindow) $ R.riverSeatFocusWindow s.river_seat rw

-- | /manage sequence/
seatClearFocus :: Seat -> H ()
seatClearFocus s = R.riverSeatClearFocus s.river_seat

seatPointerMove :: RiverSeat -> Window -> HS ()
seatPointerMove sid w = do
  logDebug $ "seatPointerMove" :# [ "seat" .= show sid, "window" .= show w ]
  withSeat sid $ \s -> seatFocus s w
  R.riverNodePlaceTop w.node
  R.riverSeatOpStartPointer sid
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
    logDebug $ "seat pointer resize" :# [ "seat" .= show sid, "window" .= show w, "edges" .= edges ]
    seatFocus s w
    R.riverNodePlaceTop w.node
    R.riverWindowInformResizeStart w.river_window
    R.riverSeatOpStartPointer s.river_seat
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
      let x = s.op_start_x + (if (s.op_edges .&. fi ((.unwrap) R.EdgeLeft)) /= 0 then s.op_start_width - w.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fi ((.unwrap) R.EdgeTop)) /= 0 then s.op_start_height - w.height else 0)
      setWindowPosition w x y

----------------------------------------------------------

-- * Xkb and Pointer bindings

createSeatBindings :: Seat -> H Seat
createSeatBindings s = do
  binds     <- getObject
  kbdListen <- getObject
  pbListen  <- getObject @R.RiverPointerBindingListener

  myMod  <- asks (defaultModMask . config) <&> resolveModMask 0
  pBinds <- asks (pointerBindings . config) >>= resolvePointerBinds myMod
  pPtrs  <- forM pBinds $ \((m, b), a) -> newPointerBinding pbListen s.river_seat m b a
  kPtrs  <- createXkbBindings (binds, kbdListen, s.river_seat) actionSubmap =<< asks (keyBindings . config)
  return s
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
ensureNextKeyEaten, cancelEnsureNextKeyEaten :: MonadIO m => Seat -> m ()
ensureNextKeyEaten s = R.riverXkbBindingsSeatEnsureNextKeyEaten s.xkb_bindings_seat
cancelEnsureNextKeyEaten s = R.riverXkbBindingsSeatCancelEnsureNextKeyEaten s.xkb_bindings_seat

cancelXkbBinding :: XkbBinding (SomeAction H) -> H ()
cancelXkbBinding xb = tryTakeMVar xb.running >>= maybe (return ()) cancel

execXkbBinding :: XkbBinding (SomeAction H) -> H ()
execXkbBinding xb = local (\r -> r {thisSeat = Just rs}) $ do
  let next action = runInHS $ modifySeat rs $ \s' -> s' {pending_action = action }
      execute = void . userCode $ runner xb.action
      boundAction = do
        tryTakeMVar xb.running >>= maybe (return ()) cancel
        if xb.autorepeat
           then do logDebug "xkbbind: autorepeat on"
                   r <- async $ forever $ execute >> threadDelay (1000 * 1300)
                   putMVar xb.running r
           else do r <- async execute
                   putMVar xb.running r
  ms <- runInHS $ lookupSeat rs
  whenJust ms $ \s -> case (s.submap_pending, actionSubmap @H xb.action) of
      _ | Just _ <- s.inputOverride -> void $ async execute -- XXX ?
      (Nothing, []) -> boundAction
      (Nothing, _) -> next (S_SUBMAP_NEXT_KEY xb.action xb.subKeymap) -- Submap binding activated
      (Just _, []) -> next S_SUBMAP_CANCEL >> void (async execute) -- Submap action + reset
      (Just (_, _), _ : _) -> next (S_SUBMAP_NEXT_KEY xb.action xb.subKeymap) -- Submap binding activated (lvl++)
  where
    rs = xb.river_seat

calcResizeEdges :: Window -> (Int32, Int32) -> Int32
calcResizeEdges w (sx, sy) = (if closerL then 4 else 8) .|. (if closerU then 1 else 2)
  where
  closerL = (sx - w.x) < (w.x + w.width - sx)
  closerU = (sy - w.y) < (w.y + w.height - sy)

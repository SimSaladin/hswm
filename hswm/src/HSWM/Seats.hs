{-# OPTIONS_GHC -Wno-ambiguous-fields #-}
{-# OPTIONS_GHC -Wno-orphans #-}

-- |
-- Module      : HSWM.Seats
-- Description : River seats management home
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Seat management
module HSWM.Seats where

import HSWM.Core
import HSWM.Operations
import HSWM.StackSet qualified as W
import HSWM.Wayland

import River qualified as R
import WL.Client qualified as WL
import WL.ExtIdleNotify.Staging.V1.Client qualified as EXT_IN

import Data.List qualified as L
import Data.Map qualified as M
import qualified Data.Set as Set
import Data.Kind
import GHC.Records
--import HSWM.Util.PP
--import qualified Prettyprinter.Combinators as PP


type family UserDataFormat (m :: Type -> Type) object

class MonadIO m => DecodeUserData m object decoded | m object -> decoded where

  -- | Dereference the opaque pointer to expected data type.
  unrefUserData :: WL.ObjectListenerEvent object -> m decoded
  --unrefUserData = io . WL.fromUserData . getField @"userdata"

  -- | Creates a new pointer that's suitable to be used as userdata in wayland protocols with the given content.
  refUserData :: Proxy object -> decoded -> m (Ptr Void)

  -- addGlobalListener
-- instance DecodeUserData H R.RiverXkbBinding where
-- Pointer: old: (PointerBinding (SomeAction H))
--Keyboard:  (XkbBinding' Both (SomeAction H))

-- OLD
--type instance UserDataFormat H R.RiverXkbBinding = StablePtr (XkbBinding' Both (SomeAction H))
-- NEW
type instance UserDataFormat H R.RiverXkbBinding = {- StablePtr-} (BoundKeyInfo (SomeAction H))

-- | Separate data type for state data that's not serializable or Showable.
newtype InternalSeatState = InternalSeatState
  { seatBindingsRepeatWorker :: IORef (Async ())
  } deriving (Generic)
instance Show InternalSeatState where show _ = "<InternalSeatState>"

type InternalSeatStateStore = M.Map RiverSeat InternalSeatState

-- | Create an event handler that automatically extracts the userdata pointer
-- and dereferences it for use in the handler.
decodeUserDataHandler
  :: forall object decoded.
    (decoded ~ UserDataFormat H object,
    --WL.IsUserData decoded,
    HasField "userdata" (WL.ObjectListenerEvent object) (Ptr Void)
    )
  => (UserDataFormat H object -> WL.ObjectListenerEvent object -> H ())
  -> WL.ObjectListenerEvent object
  -> H ()
decodeUserDataHandler f e = do
  let udPtr = getField @"userdata" e
  dec <- io $ deRefStablePtr . castPtrToStablePtr . castPtr $ udPtr
  f dec e

-- | Handle key bind events.
instance HandleEvent H R.RiverXkbBindingEvent where
  handleEvent =
    decodeUserDataHandler $ \bkey ev -> do
        --logDebugNS "xkb" $ "key event" :# [ "data" .=  PP.render (pretty bkey)]
        --handleXkbBindingEvent bkey $ \case
        case ev of
            R.RiverXkbBindingPressed _ _ -> runBoundKeyBinding bkey
            R.RiverXkbBindingReleased _ _ -> cancelRepeat bkey
            R.RiverXkbBindingStopRepeat _ _ -> cancelRepeat bkey

mapInternalSeatDatas :: (MonadReader s m, HasGlobalTMap s, MonadEffectsIO m) => (RiverSeat -> InternalSeatState -> m b) -> m ()
mapInternalSeatDatas f = withObjectDef @InternalSeatStateStore $ mapM_ (uncurry f) . M.toList

lookupInternalSeatState :: MonadStateGlobal env m => RiverSeat -> m InternalSeatState
lookupInternalSeatState rs = withObjectDef @InternalSeatStateStore $ maybe f return . M.lookup rs
    where
      f = do s <- mk
             modifyObject @InternalSeatStateStore (M.insert rs s) $> s
      mk = InternalSeatState <$> (newIORef =<< async (return ()))


-- * Event handling

handleEvent :: (HandleEvent H EXT_IN.IdleNotificationEvent) => R.RiverSeatEvent -> H ()
handleEvent = \case
  R.RiverSeatWlSeat _ seat name -> hasWlSeat seat name
  R.RiverSeatPointerEnter _ seat window -> runInHS $ withSeat_ seat $ \s -> modifySeat seat $ hovered .~ window &+ pendingPointerEnter ?~ (window, s.position)
  R.RiverSeatPointerLeave _ seat -> runInHS $ modifySeat seat $ hovered .~ def &+ pendingPointerEnter .~ Nothing
  R.RiverSeatPointerPosition _ seat x y -> runInHS $ modifySeat seat $ position .~ Position x y
  R.RiverSeatWindowInteraction _ seat window -> runInHS $ modifySeat seat $ interacted .~ window
  R.RiverSeatOpDelta _ seat dx dy -> runInHS $ modifySeat seat $ opDx .~ fi dx &+ opDy .~ fi dy
  R.RiverSeatOpRelease _ seat -> runInHS $ modifySeat seat $ opRelease .~ True
  R.RiverSeatRemoved _ seat -> runInHS $ withSeat_ seat deleteRemovedSeat
  -- unhandled
  R.RiverSeatShellSurfaceInteraction _ seat ss -> logError $ "shell surface interaction" :# ["seat" .= show seat, "shell-surface" .= show ss]
  _ -> return () -- TODO touch events

instance HandleEvent H WL.KeyboardEvent where
  handleEvent = \case
    WL.KeyboardRepeatInfo ud _kbd r d ->
      modifySeat' ud $ keyboard . rrate .~ r &+ keyboard . rdelay .~ d
    _ -> pure ()

handleWlSeatEvent :: (HandleEvent H WL.TouchEvent, HandleEvent H WL.PointerEvent) => WL.SeatEvent -> H ()
handleWlSeatEvent = \case
  WL.SeatName ud _ name -> runInHS $ modifySeat' ud $ _name .~ name
  WL.SeatCapabilities ud wls seatCaps -> do
    let individual = WL.parseSeatCapabilities seatCaps
    upds <- forM individual $ \case
      WL.SeatCapabilityKeyboard -> do
        wlKbd <- WL.seatGetKeyboard wls
        addGlobalListener wlKbd (Just ud)
        logDebug $ "Seat has capability: keyboard" :# ["wl_seat" .= tshow wls, "wl_keyboard" .= tshow wlKbd]
        return $ keyboard .~ def{wl_keyboard = wlKbd}
      WL.SeatCapabilityPointer -> do
        wlPtr <- WL.seatGetPointer wls
        addGlobalListener_ wlPtr
        logDebug $ "Seat has capability: pointer" :# ["wl_seat" .= tshow wls, "wl_pointer" .= tshow wlPtr]
        return $ wlPointer .~ wlPtr
      WL.SeatCapabilityTouch -> do
        wltch <- WL.seatGetTouch wls
        addGlobalListener_ wltch
        logDebug $ "Seat has capabality: touch" :# ["wl_seat" .= tshow wls]
        return $ wlTouch .~ wltch
      _ -> return id
    runInHS $ modifySeat' ud $ foldl' (.) (caps .~ seatCaps) upds

-- |
-- Possible states:
--
-- - layer shell surface has exclusive focus
--
-- - layer shell surface wants non-exclusive focus
--
--    A layer shell surface will be given non-exclusive keyboard focus at the end
--    of the manage sequence in which this event is sent. The window manager may want
--    to update window decorations or similar to indicate that no window is focused.
--
-- - no layer shell surface has focus
--
--    No layer shell surface will have keyboard focus at the end
--    of the manage sequence in which this event is sent. The window
--    manager may want to return focus to whichever window last had focus, for example.
handleLayerShellSeat :: R.RiverLayerShellSeatEvent -> H ()
handleLayerShellSeat = \case
  R.RiverLayerShellSeatFocusExclusive ud _ -> runInHS $ modifySeat' ud $ currentFocus %~ SFocusLayerShell True
  R.RiverLayerShellSeatFocusNonExclusive ud _ -> runInHS $ modifySeat' ud $ currentFocus %~ SFocusLayerShell False
  R.RiverLayerShellSeatFocusNone ud _ -> runInHS $ modifySeat' ud $ currentFocus .~ SFocusNone

-- | Unhandled submap keys.
--
-- User data is the 'RiverSeat'.
handleXkbBindingsSeatEvent :: R.RiverXkbBindingsSeatEvent -> H ()
handleXkbBindingsSeatEvent = \case
  R.RiverXkbBindingsSeatAteUnboundKey dt _ -> do
    -- Run default action if defined TODO readd this
    mseat <- runInHS $ lookupSeat $ R.RiverSeat $ castPtr dt
    whenJust mseat $ \s -> do
      -- submap cancellation in next manage p phase
      writeManageQ $ do
         -- Disable sub-keymap keys + enable main keymap keys + reset state
         modifySeat s $ (pendingSubmapKey .~ Nothing) . (keyBindings %~ (\x -> fromMaybe x (rollbackSubmaps x)))
         updateActiveBindings s

  R.RiverXkbBindingsSeatModifiersUpdate{} -> return () -- TODO take advantage of this event


-- | Calculate the necessary changes to which binds will be disabled and which enabled on the account of active
-- submaps.
updateActiveBindings :: SomeSeat ss => ss -> HS ()
updateActiveBindings ss = withSeat_ ss $ \seat -> do
  let enable  = seat.keyBindingsState.riverBoundKeys `M.restrictKeys` (M.keysSet seat.keyBindings.bindings `Set.difference` seat.keyBindingsState.riverBoundKeysEnabled)
  let disable = seat.keyBindingsState.riverBoundKeys `M.restrictKeys` (seat.keyBindingsState.riverBoundKeysEnabled `Set.difference` M.keysSet seat.keyBindings.bindings)
  forM_ disable R.riverXkbBindingDisable
  forM_ enable R.riverXkbBindingEnable
  logDebug $ "key bindings updated" :# ["disabled" .= M.size disable, "enable" .= M.size enable]
  modifySeat seat (keyBindingsState . riverBoundKeysEnabled %~
    (`Set.difference` M.keysSet disable) . (`Set.union` M.keysSet enable))

-- | Pointer events.
handlePointerEvent :: R.RiverPointerBindingEvent -> H ()
handlePointerEvent = \case
  R.RiverPointerBindingPressed dt _ -> unRefPointerBindingUser dt >>= execPointerBinding
  _ -> return ()

unRefPointerBindingUser :: MonadIO m => Ptr Void -> m (PointerBinding (SomeAction H))
unRefPointerBindingUser dt = io $ deRefStablePtr (castPtrToStablePtr $ castPtr dt)

-- * Manage

manage :: (HandleEvent H R.RiverXkbBindingEvent) => H ()
manage = runInHS $ use seatList >>= mapM_ manage1

-- | Manage SeatOp state
manage1 :: (HandleEvent H R.RiverXkbBindingEvent) => Seat -> HS ()
manage1 s = do
  -- Handle new seats
  when s.new $ do
    createSeatPointerBindings s.river_seat
    --createSeatKeyboardBindingsOld s.river_seat
    keyBindingsInit  s.river_seat
    setXCursorTheme s.river_seat
    modifySeat s $ _new .~ False
  -- Perform pending actions
  managePendingAction s s.pending_action >> manageActiveOp s
  -- ?
  modifySeat s $ suppressChangeFocus %~ max 0 . subtract 1

-- | Manage
--
--  - S_SUBMAP_NEXT_KEY
--
--  - S_SUBMAP_CANCEL
--
--  - S_START_OP
managePendingAction :: Seat -> SeatAction H -> HS ()
managePendingAction s = \case
  S_NONE -> do
    case s.pendingPointerEnter of
      Just (rw, pos) -> do
        modifySeat s $ \x -> x{pendingPointerEnter = Nothing}
        when (pos /= s.position) $ do
          -- logDebug "seat: focus changed by pointer"
          modifySeat s $ \x -> x{focused = rw}
          R.riverSeatFocusWindow s.river_seat rw
          windows $ W.focusWindow rw
      _ -> pure ()
    case s.currentFocus of
      SFocusNone -> do
        withWindow_ s.focused $ \_ -> R.riverSeatFocusWindow s.river_seat s.focused
        modifySeat s $ \x -> x{currentFocus = SFocusWindow s.focused}
      _ -> pure ()

      -- We need to take care to properly reset bindings to base keymap s state also when the submap selection is
     -- -- interrupted or is cancelled... Hence this.
     -- S_SUBMAP_NEXT_KEY action subkeys subdef -> do
     --   ensureNextKeyEaten s
     --   -- Disable previous keymap keys + activate sub-keymap keys + store submap state
     --   io $
     --     mapM_ (deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)) $
     --       maybe (s.xkb_bindings ^.. each . to (snd . (.unBoth))) ((^.. each . to (snd . (.unBoth))) . view _2) s.submap_pending
     --   -- Enable submap keys
     --   io $ forM_ (bindsToList subkeys) $ deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)
     --   modifySeat s $ \s' ->
     --     s'
     --       { submap_pending = Just (action, subkeys, subdef)
     --       , pending_action = S_NONE
     --       }
    --  S_SUBMAP_CANCEL -> do
    --    -- Disable sub-keymap keys + enable main keymap keys + reset state
    --    whenJust s.submap_pending $ \(_, subkeys, _) ->
    --      io $ forM_ (subkeys ^.. each . to (.unBoth) . _2) $ deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)
    --    -- Enable base bindings
    --    io $ forM_ (s.xkb_bindings ^.. each . to (.unBoth) . _2) $ deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)
    --    modifySeat s $ \s' -> s'{submap_pending = Nothing, pending_action = S_NONE}
  S_START_OP SEAT_OP_MOVE -> do
    mw <- withWindowSet $ return . W.peek
    case mw of
      Just w -> do
        modifySeat s $ \s' -> s'{pending_action = S_NONE}
        withWindow_ w $ seatPointerMove s.river_seat
      Nothing -> return ()
  S_START_OP SEAT_OP_RESIZE -> do
    mw <- withWindowSet $ maybe (pure Nothing) lookupWindow . W.peek
    case mw of
      Just w -> do
        modifySeat s $ \s' -> s'{pending_action = S_NONE}
        seatPointerResize s.river_seat w $ calcResizeEdges w s.position
      Nothing -> return ()
  S_START_OP SEAT_OP_NONE -> return () -- ??

-- | Manage pointer-move, pointer-resize operations.
manageActiveOp :: Seat -> HS ()
manageActiveOp s = do
  case s.op of
    SEAT_OP_NONE -> return ()
    SEAT_OP_MOVE ->
      when s.op_release $ do
        R.riverSeatOpEnd s.river_seat
        float s.op_window
        modifySeat s.river_seat $ \x -> x{op = SEAT_OP_NONE, op_window = def}
    SEAT_OP_RESIZE -> do
      when s.op_release $ do
        R.riverWindowInformResizeEnd s.op_window
        R.riverSeatOpEnd s.river_seat
        float s.op_window
        modifySeat s.river_seat $ \x -> x{op = SEAT_OP_NONE, op_window = def}
      withWindow_ s.op_window $ \w -> do
        let rw =
              s.op_start_width
                - (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeLeft)) /= 0 then s.op_dx else 0)
                + (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeRight)) /= 0 then s.op_dx else 0)
        let rh =
              s.op_start_height
                - (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeTop)) /= 0 then s.op_dy else 0)
                + (if (s.op_edges .&. fromIntegral ((.unwrap) R.EdgeBottom)) /= 0 then s.op_dy else 0)
        R.riverWindowProposeDimensions w.river_window (max rw 1) (max rh 1)
  when s.op_release $
    modifySeat s.river_seat $
      \x -> x{op_release = False}

-- * Render

render :: H ()
render = runInHS $ mapSeats render1

render1 :: Seat -> HS ()
render1 s = do
  case s.op of
    SEAT_OP_NONE -> return ()
    SEAT_OP_MOVE -> do
      withWindow_ s.op_window $ \w -> do
        let x = s.op_start_x + s.op_dx
            y = s.op_start_y + s.op_dy
        setWindowPosition w x y
    SEAT_OP_RESIZE -> withWindow_ s.op_window $ \w -> do
      let x = s.op_start_x + (if (s.op_edges .&. fi ((.unwrap) R.EdgeLeft)) /= 0 then s.op_start_width - fi w.size.width else 0)
      let y = s.op_start_y + (if (s.op_edges .&. fi ((.unwrap) R.EdgeTop)) /= 0 then s.op_start_height - fi w.size.height else 0)
      setWindowPosition w x y

-- * Adding a new seat

type SeatHandleCtx = (HandleEvent H R.RiverXkbBindingsSeatEvent, HandleEvent H R.RiverLayerShellSeatEvent, HandleEvent H R.RiverSeatEvent)

-- | New seat added
--
added :: SeatHandleCtx => RiverSeat -> H ()
added rs = do
  lss <- withObject $ flip R.riverLayerShellGetSeat rs
  xbs <- withObject $ flip R.riverXkbBindingsGetSeat rs
  addGlobalListener_ rs
  addGlobalListener lss $ Just rs
  addGlobalListener xbs $ Just rs
  -- XXX: watch for modifier state change - any use?
  --R.riverXkbBindingsSeatModifiersWatch xbs $ R.RiverSeatModifiersCtrl <> ... <> R.RiverSeatModifiersMod5
  let seat =
        def
          & _new
            .~ True
          & riverSeat
            .~ rs
          & riverLayerShellSeat
            .~ lss
          & xkbBindingsSeat
            .~ xbs
  runInHS $ seatList %= (<> [seat])

-- | Bind the Wl_seat interface of a river_seat as well.
--
-- Currently this will also request idle notifications via ext-idle-notify-v1.
-- FIXME the notification delay is hardcoded here
hasWlSeat :: (HandleEvent H EXT_IN.IdleNotificationEvent) => RiverSeat -> WL.ObjectName -> H ()
hasWlSeat seat name = do
  wls <- globalBindAndListen @WL.Seat False Nothing (Just seat) Nothing (Just name)
  idlno <- objectCommand EXT_IN.idleNotifierGetIdleNotification >>= \f -> f (10 * 60 * 1000) wls
  addGlobalListener idlno (Just seat)
  runInHS $ modifySeat seat $ wlSeat .~ wls &+ idleNotification .~ idlno

-- * Removing a seat from state

deleteRemovedSeat :: Seat -> HS ()
deleteRemovedSeat s = do
  seatList %= L.filter ((/= s.river_seat) . view riverSeat)
  forM_ (s ^.. keyBindingsState . riverBoundKeys . each) WL.objectDestroy
  forM_ s.pointer_bindings destroyPointerBinding
  R.objectDestroy s.xkb_bindings_seat
  R.objectDestroy s.river_layer_shell_seat
  R.objectDestroy s.idleNotification
  R.objectDestroy s.keyboard.wl_keyboard
  R.objectDestroy s.wlPointer
  R.objectDestroy s.wlTouch
  R.objectDestroy s.wl_seat
  R.objectDestroy s.river_seat

-- * Seat management

seatFocus :: Seat -> Window -> HS ()
seatFocus s w = when (w.river_window /= def) $ do
  when (w.river_window /= s.focused) $ setFocus w.river_window -- clearFocus
  modifySeat s.river_seat $ \s' -> s'{focused = w.river_window}
  where
    setFocus rw = when (rw /= def) $ R.riverSeatFocusWindow s.river_seat rw

-- | /needs to be called in manage sequence/
seatClearFocus :: (SomeSeat a) => a -> H ()
seatClearFocus s = R.riverSeatClearFocus (s ^. riverId)

-- | Do SEAT_OP_MOVE
seatPointerMove :: RiverSeat -> Window -> HS ()
seatPointerMove sid w = do
  logInfo $ "seat: pointer move" :# ["seat" .= show sid, "window" .= show w]
  withSeat_ sid $ \s -> seatFocus s w
  R.riverNodePlaceTop w.node
  R.riverSeatOpStartPointer sid
  modifySeat sid $ \s ->
    s
      { op = SEAT_OP_MOVE
      , op_window = w.river_window
      , op_start_x = w ^. _x
      , op_start_y = w ^. _y
      , op_dx = 0
      , op_dy = 0
      }

-- | Do SEAT_OP_RESIZE
seatPointerResize :: RiverSeat -> Window -> Int32 -> HS ()
seatPointerResize sid w edges = do
  withSeat_ sid $ \s -> do
    logInfo $ "seat: pointer resize" :# ["seat" .= show sid, "window" .= show w, "edges" .= edges]
    seatFocus s w
    R.riverNodePlaceTop w.node
    R.riverWindowInformResizeStart w.river_window
    R.riverSeatOpStartPointer s.river_seat
  modifySeat sid $ \s ->
    s
      { op = SEAT_OP_RESIZE
      , op_window = w.river_window
      , op_edges = edges
      , op_start_x = w ^. _x
      , op_start_y = w ^. _y
      , op_start_width = fi $ w ^. width
      , op_start_height = fi $ w ^. height
      , op_dx = 0
      , op_dy = 0
      }

-- | XXX: also set XCURSOR_THEME= ? XCURSOR_PATH= ?
setXCursorTheme :: (MonadIO m, MonadReader HConf m) => RiverSeat -> m ()
setXCursorTheme rs = do
  theme <- view (config . cursorTheme)
  sz <- view (config . cursorSize)
  case (theme, sz) of
    ("", _) | sz > 1 -> R.riverSeatSetXcursorTheme rs Nothing sz
    (_ : _, _) | sz > 1 -> R.riverSeatSetXcursorTheme rs (Just theme) sz
    _ -> pure ()

-- * Keyboard and Pointer bindings

-- | This is called at manage step when first setting things up for this seat.
createSeatPointerBindings :: (HandleEvent H R.RiverXkbBindingEvent) => RiverSeat -> HS ()
createSeatPointerBindings rs = do
  -- pointer bindings
  pbListen <- getObject
  let resolvePointerBinds mdef xs = do
          r <- forM xs $ \((m, k), a) -> do
            let mods = resolveModMask mdef m
            (PKey mods k,) <$> newPointerBinding pbListen rs mods k a
          return $ M.fromList r
  myMod <- view (config . defaultModMask) <&> resolveModMask 0
  pPtrs <- view (config . pointerBindings) >>= resolvePointerBinds myMod
  modifySeat rs $ \s -> s & pointerBindings <>~ pPtrs

keyBindingsInit :: (HandleEvent H R.RiverXkbBindingEvent) => RiverSeat -> HS ()
keyBindingsInit rs = do
  logInfo "NEW key bindings init in progress!"

  keyBinds <- view (config . keyBindings)
  logDebug $ "Setting keybindings" :# [ "bindings" .= keyBinds ]
  let getLeafBinds km =
        M.keysSet (km ^. bindings) <>
          fold (km ^.. bindings . each . _Left . to getLeafBinds)
      utilized = getLeafBinds keyBinds

  -- append bindings from config to the seat state...
  modifySeat rs $ keyBindings <>~ keyBinds
  seatBinds <- forM (M.fromSet id utilized) $ \xbkey@(XBKey mods keysym) -> do
      xkbBinds <- getObject
      xb <- R.riverXkbBindingsGetXkbBinding xkbBinds rs (fi keysym) (R.toCEnum $ fi mods)
      runvar <- newEmptyMVar
      dtPtr <- io $ newStablePtr $ BoundKeyInfo
        { boundKey = xbkey
        , riverXkbBinding = xb
        , riverSeat = rs
        , runningVar = runvar
        }
      addGlobalListener (xb :: R.RiverXkbBinding) $ Just (dtPtr :: StablePtr (BoundKeyInfo (SomeAction H)))
      return (xb, dtPtr)

  -- Store the river bindings just created in state
  modifySeat rs $
      (keyBindingsState . riverBoundKeys .~ fmap fst seatBinds) .
      (cleanupTasks <>~ CleanupTasks (forM_ seatBinds $ freeStablePtr . snd))
  logDebugNS "xkb-bindings" $ "Created keybindings added them to seat" :# [ "keys" .= M.size seatBinds ]

  -- Activate bindings that are active in the base keymap
  withSeat_ rs $ \s -> do
    let need = bindingsNeeded (s ^. keyBindingsState) (s ^. keyBindings)
    forM_ need R.riverXkbBindingEnable
    modifySeat rs $ keyBindingsState . riverBoundKeysEnabled .~ M.keysSet need
    logDebugNS "xkb-bindings" $ "Enabled some initial keybindings" :# [ "count" .= M.size need ]

runBoundKeyBinding :: forall k v f a. (k ~ XBKey, v ~ SomeAction f, H ~ f) => BoundKeyInfo a -> f ()
runBoundKeyBinding boundInfo = withSeat' rs $ \seat -> do
    let newInput = getInput seat.keyBindings
    res <- runInHS $ case newInput of
        BindingRunAction action mbNewKeys -> mapM_ (setActiveKeyBinds False seat.keyBindingsState) mbNewKeys $> Just action
        BindingNotFound mbNewKeys xbkey -> mapM_ (setActiveKeyBinds False seat.keyBindingsState) mbNewKeys >> logError ("no binding found for key" :# [ "key" .= xbkey ]) $> Nothing
        BindingActivateSubmap newKeys -> setActiveKeyBinds True seat.keyBindingsState newKeys $> Nothing
    intSt <- lookupInternalSeatState rs
    mapM_ (runBindingAction intSt.seatBindingsRepeatWorker) (res :: Maybe (SomeAction f))
  where
      getInput = activateBinding boundInfo.boundKey

      rs = boundInfo.riverSeat
      runBindingAction rref action = do
        --logDebugNS "xkb-bindings" "starting keypress handler"
        bindingStartAction boundInfo.riverXkbBinding (onHoldRepeat (Proxy @H) action) rref boundInfo.runningVar action

      -- NOTE it is necessary to sync this to the next manage phase.
      setActiveKeyBinds :: Bool -> KeyBindingsState k -> KeyBindings k v -> HS ()
      setActiveKeyBinds waitSubmap curstate binds = writeManageQ $ do
          logInfoNS "submaps" "seat active keymap is now being updated"
          when waitSubmap $ do
              ensureNextKeyEaten rs
              modifySeat rs $ pendingSubmapKey ?~ True
          let enable  = curstate.riverBoundKeys `M.restrictKeys` (M.keysSet binds.bindings `Set.difference` curstate.riverBoundKeysEnabled)
          let disable = curstate.riverBoundKeys `M.restrictKeys` (curstate.riverBoundKeysEnabled `Set.difference` M.keysSet binds.bindings)
          forM_ disable R.riverXkbBindingDisable
          forM_ enable R.riverXkbBindingEnable
          logDebug $ "key bindings updated" :# ["disabled" .= M.size disable, "enable" .= M.size enable]
          modifySeat rs $
              (keyBindings . bindings .~ binds.bindings) .
              (keyBindings . previous .~ binds.previous) .
              (keyBindingsState . riverBoundKeysEnabled %~ (`Set.difference` M.keysSet disable) . (`Set.union` M.keysSet enable))


withSeat' :: (SomeSeat a, GetHState m, MonadReader HConf m) => a -> (Seat -> m ()) -> m ()
withSeat' ss f = withSeat_ ss $ \s ->
  local (\r -> r{thisSeat = Just (s ^. riverId)}) (f s)

-- |
-- Start the action in new thread (stored in xb.runningVar), there's not already a runner active for the same
-- binding.
--
-- @
-- bindingStartAction <RiverXkbBinding> <repeat?> <repeatWorker> <runningVar> <SomeAction H>
-- @
bindingStartAction :: R.RiverXkbBinding -> RepeatInfo -> IORef (Async ()) -> MVar (Async ()) -> SomeAction H -> H ()
bindingStartAction xkbBind rinfo rref runVar action = do
  cancelRepeat () -- TODO
  execute
  when (def /= rinfo) $ do
    let RepeatInfo{rate = rr,delay = rd} = rinfo
    when (rr < 10) $ throwString "Repeat rate can't be under 10!"
    when (rd < 30) $ throwString "Repeat delay can't be under 30!"
    writeIORef rref =<< async (threadDelay (fi rd * 1_000) >> forever (execute >> threadDelay (fi rr * 1_000))) -- 2G0ms
  where
    execute = do
      running <- checkRun xkbBind runVar
      unless running $ do
        void $ tryTakeMVar runVar
        async (runner action) >>= putMVar runVar

-- | check the running async:
--
--   - if the task is not running any longer, return False
--   - add logging info around the cases that the task threw an exception or is still running when checking.
--
-- @checkRun xkbBindVar runningVar@
checkRun :: (MonadLogger m, MonadIO m) => R.RiverXkbBinding -> MVar (Async ()) -> m Bool
checkRun xkbBind runVar =
  tryReadMVar runVar >>= mapM poll >>= \case
    Just (Just res) -> do
      case res of
        Left ex -> logError $ "xkb-key-binding action threw error" :# ["keybinding" .= show xkbBind, "error" .= show ex]
        _ -> return ()
      return False
    Just Nothing -> do
      logError $ "xkb-key-binding: already executing!" :# ["keybinding" .= show xkbBind]
      return True
    Nothing ->
      return False

-- XXX: this should be one per Seat!
cancelRepeat :: xb -> H ()
cancelRepeat _ = do
  -- Handle the global repeat worker
  cancelIt =<< view repeatWorker
  mapInternalSeatDatas $ \_ st -> cancelIt st.seatBindingsRepeatWorker
    where
      cancelIt ref = do
        as <- readIORef ref
        cancel as
        waitCatch as >>= \case
          Right{} -> return ()
          Left err
            | Just AsyncCancelled <- fromException err -> return ()
            | otherwise -> logError $ "Repeat worker threw exception" :# ["error" .= tshow err]

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
ensureNextKeyEaten :: (SomeSeat s, GetHState m, MonadIO m) => s -> m ()
ensureNextKeyEaten ss = withSeat_ ss $
  \s -> R.riverXkbBindingsSeatEnsureNextKeyEaten s.xkb_bindings_seat

cancelEnsureNextKeyEaten :: (MonadIO m) => Seat -> m ()
cancelEnsureNextKeyEaten s = R.riverXkbBindingsSeatCancelEnsureNextKeyEaten s.xkb_bindings_seat

execPointerBinding :: PointerBinding (SomeAction H) -> H ()
execPointerBinding xb = userCodeDef () $ runner xb.boundAction

-- * Utilities

calcResizeEdges :: Window -> Position -> Int32
calcResizeEdges w (Position sx sy) = (if closerL then 4 else 8) .|. (if closerU then 1 else 2)
  where
    closerL = (sx - w.position.x) < (w.position.x + fi w.size.width - sx)
    closerU = (sy - w.position.y) < (w.position.y + fi w.size.height - sy)

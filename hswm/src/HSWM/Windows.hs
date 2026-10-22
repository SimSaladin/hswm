{-# LANGUAGE MultiWayIf #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}

-- |
-- Module      : HSWM.Windows
-- Description : Window handling
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Windows (
  manage,
  render,
  handleEvent,
  added,
  finishRecovery,
) where

import HSWM.Core hiding (handleEvent)
import HSWM.Operations
import HSWM.StackSet qualified as W
import HSWM.Wayland
import River qualified as R

import Data.List qualified as L
import Data.Map qualified as M

-- * Events processing

handleEvent :: R.RiverWindowEvent -> H ()
handleEvent e = case e of
  -- The window has been closed by the server, perhaps due to an xdg_toplevel.close request or similar.
  -- The server will send no further events on this object and ignore any request other than river_window_v1.destroy made after this event is sent.
  -- The client should destroy this object with the river_window_v1.destroy request to free up resources.
  R.RiverWindowClosed _ w -> modifyWindow' w $ \s -> s{closed = True}
  -- Properties
  R.RiverWindowDimensions _ rw w h -> modifyWindow' rw $ width .~ fi w &+ height .~ fi h
  R.RiverWindowParent _ rw we_parent -> modifyWindow' rw $ parent ?~ we_parent
  R.RiverWindowAppId _ rw we_app_id -> modifyWindow' rw $ appId .~ we_app_id
  R.RiverWindowTitle _ rw we_title -> modifyWindow' rw $ title .~ we_title
  R.RiverWindowUnreliablePid _ rw we_unreliable_pid -> modifyWindow' rw $ unreliablePid ?~ fi we_unreliable_pid
  R.RiverWindowIdentifier _ rw uuid -> modifyWindow' rw (identifier .~ uuid) >> attemptWindowRecovery rw uuid
  R.RiverWindowDecorationHint _ rw we_hint -> modifyWindow' rw $ decorationHint ?~ we_hint
  R.RiverWindowPresentationHint _ rw we_hint -> modifyWindow' rw $ presentationHint ?~ we_hint
  R.RiverWindowDimensionsHint _ rw minWidth minHeight maxWidth maxHeight -> do
    modifyWindow' rw $ \s -> s{minWidth, minHeight, maxWidth, maxHeight}
    fixedSizeAutoFloat rw minWidth minHeight maxWidth maxHeight

  -- Manage fullscreen
  R.RiverWindowFullscreenRequested _ w output -> runInHS $ doManage (if output == def then WFullscreen else WFullscreenOnScreen output) w
  R.RiverWindowExitFullscreenRequested _ w -> runInHS $ doManage WExitFullscreen w
  R.RiverWindowPointerMoveRequested _ w seat -> modifyWindow' w $ pointerMoveRequested .~ seat
  R.RiverWindowPointerResizeRequested _ w seat edges -> modifyWindow' w $ pointerResizeRequested .~ seat &+ pointerResizeRequestedEdges .~ edges
  R.RiverWindowMaximizeRequested _ _w -> return ()
  R.RiverWindowUnmaximizeRequested _ _w -> return ()
  R.RiverWindowShowWindowMenuRequested{} -> return ()
  R.RiverWindowMinimizeRequested _ _w -> return ()
  _ -> return () -- Touch events

render :: H ()
render = runInHS $ do
  bwDef <- view (config . borderWidth)
  borderDef <- view (config . normalBorder)
  mapWindows $ \w -> do
    forM_ w.pendingRender $ \case
      WRPosition (Position x y) -> unless w.minimized $ setWindowPosition w x y
      WRBorder -> setWindowBorder w.river_window (fromMaybe bwDef w.wBorderWidth) (fromMaybe borderDef w.borderColor)
      WRPlaceTop -> unless w.minimized $ R.riverNodePlaceTop w.node
      WRPlaceBottom -> unless w.minimized $ R.riverNodePlaceBottom w.node
      WRHide -> hide w.river_window
      WRReveal -> unless w.minimized $ reveal w.river_window
    modifyWindow w.river_window $ \s -> s{pendingRender = []}

-- | Do nothing while pointer operation is in progress.
manage :: H ()
manage = runInHS $ do
  seats <- use seatList
  unless (any (\s -> s.op /= SEAT_OP_NONE) seats) manage_

manage_ :: (HasCallStack) => HS ()
manage_ = do
  -- Do initial properties for new windows
  -- Get rid of any closed windows
  mapWindows $ \w ->
    if
      | w.closed -> doRemoveWindow w
      | w.new -> do
          setInitialManageProperties w
          -- run user manageHook for the new window
          mh <- view (config . manageHook)
          g <- appEndo <$> userCodeDefS mempty (runQuery mh w)
          windows g
      | otherwise -> return ()

  -- run queued manage actions for each window
  mapWindows $ \w ->
    applyManageActions w w.p_manage_action >>= (`whenJust` (modifyWindow w . const))

  ws <- use windowset
  old <- use windowsetOld

  -- calculate what is changed since last time
  let oldvisible = concatMap (W.integrate' . W.stack . W.workspace) $ W.current old : W.visible old
      newwindows = W.allWindows ws L.\\ W.allWindows old
      tags_oldvisible = map (W.tag . W.workspace) $ W.current old : W.visible old
      gottenhidden = filter (flip elem tags_oldvisible . W.tag) $ W.hidden ws
      allscreens = W.screens ws
      summed_visible = scanl (++) [] $ map (W.integrate' . W.stack . W.workspace) allscreens

  -- Update border on previously focused window to normal
  whenJust (W.peek old) $ \otherw -> manageWindowBorder otherw =<< view (config . normalBorder)

  -- Dispatch messages to workspaces that got hidden.
  mapM_ (sendMessageWithNoRefresh Hide) gottenhidden

  -- for each workspace, layout the currently visible workspaces...
  -- return the visible windows for this workspace
  (trects, frects) <- fmap mconcat $ forM (zip allscreens summed_visible) $ \(w, vis) -> do
    let wsp = W.workspace w
        sd = W.screenDetail w
        this = W.view n ws
        n = W.tag wsp
        viewrect = Rectangle{x = fi sd.x, y = fi sd.y, width = fi sd.width, height = fi sd.height}
        tiled =
          (W.stack . W.workspace . W.current) this
            >>= W.filter (`M.notMember` W.floating ws)
            >>= W.filter (`notElem` vis)
        flws = W.floating ws
        floated =
          [ (fw, scaleRationalRect viewrect r)
          | fw <- filter (`M.member` flws) (W.index this)
          , fw `notElem` vis
          , Just r <- [M.lookup fw flws]
          ]

    -- just the tiled windows: now tile the windows on this workspace, modified by the gap
    (rs, ml') <-
      runLayout wsp{W.stack = tiled} viewrect
        `catchHS` runLayout wsp{W.stack = tiled, W.layout = Layout Full} viewrect
    updateLayout n ml'

    return (rs, floated)

  let visible = map fst frects ++ map fst trects

  -- hide every window that was potentially visible before, but is not
  -- given a position by a layout now. (hide operations are deferred to render phase)
  mapM_ manageHide (L.nub (oldvisible ++ newwindows) L.\\ visible)
  -- reveal windows that are now newly visible
  mapM_ manageReveal $ visible L.\\ oldvisible

  -- Position all visible tiled windows
  forM_ trects $ uncurry tileWindow
  -- Position all floating windows
  forM_ frects $ uncurry tileWindow

  -- XXX
  -- Raise the top-most window in the stack to the front...
  whenJust (W.peek ws) $ \w -> do
    manageWindowBorder w =<< view (config . focusedBorder)
    when (W.peek old /= Just w) $ windowPlaceTop w

  --  XXX: move floating to top
  --  doRender WRPlaceTop rw

  -- update focus
  setTopFocus

  -- Corner case: pointer focused moved to an empty
  -- screen; warp the pointer to the empty center.
  when (isNothing (W.peek ws) && W.tag (W.workspace $ W.current ws) /= W.tag (W.workspace $ W.current old)) $
    warpPointerToScreen (W.screenDetail $ W.current ws) (W.screen $ W.current ws)

  -- Change layer shell default output to currently focused output.
  when (W.screen (W.current ws) /= W.screen (W.current old)) $
    withScreenOutput (W.screen $ W.current ws) $ \o ->
      R.riverLayerShellOutputSetDefault o.layerShellOutput

  -- store the new windowset as old for next time
  use windowset >>= \ws' -> modify (\s -> s{windowsetOld = ws'})

applyManageActions :: Window -> [WindowManageAction] -> HS (Maybe Window)
applyManageActions _ [] = return Nothing
applyManageActions w0 xs0 = doAll w0 xs0 >>= \w' -> return $ Just w'{p_manage_action = []}
  where
    rw = w0.river_window
    doIt w = \case
      WRequestClose -> R.riverWindowClose rw $> w
      WFullscreenOnScreen ro -> do
        R.riverWindowFullscreen rw ro
        R.riverWindowInformFullscreen rw
        -- The position does not get updated otherwise
        mbOut <- lookupOutput ro
        pure $
          w
            & fullscreen
              ?~ ro
            & maybe id (\o -> size .~ o.size) mbOut
      WFullscreen -> do
        sid <- gets $ W.screen . W.current . view windowset
        lookupOutputBy (\x -> x.screen == sid) >>= \case
          Nothing -> pure w
          Just out -> doIt w $ WFullscreenOnScreen (out ^. riverId)
      WExitFullscreen -> do
        R.riverWindowExitFullscreen rw
        R.riverWindowInformNotFullscreen rw
        pure $ w & fullscreen .~ Nothing
      WToggleFullscreen
        | isJust w.fullscreen -> doIt w WExitFullscreen
        | otherwise -> doIt w WFullscreen

    doAll :: Window -> [WindowManageAction] -> HS Window
    doAll w (x : xs) = doIt w x >>= flip doAll xs
    doAll w [] = pure w

-- * Add window state

added :: RiverWindow -> H ()
added w = do
  -- Setup WL window listener
  addGlobalListener_ w
  node <- R.riverWindowGetNode w
  let win =
        def
          { new = True
          , river_window = w
          , node = node
          , maxHeight = maxBound
          , maxWidth = maxBound
          }
  -- Insert it into stack and state
  runInHS $ do
    alterWindow w (\_ -> Just win)
    modifyWindowSet (W.insertUp w)

-- | /manage/
setInitialManageProperties :: Window -> HS ()
setInitialManageProperties Window{river_window = rw} = do
  R.riverWindowUseSsd rw
  R.riverWindowSetCapabilities rw (mconcat [R.Maximize, R.Fullscreen])
  R.riverWindowSetTiled rw (mconcat [R.EdgeTop, R.EdgeBottom, R.EdgeLeft, R.EdgeRight])
  modifyWindow rw $ _new .~ False
  doRender WRBorder rw

-- * Remove window state

-- | Completely removes the specified window from state and frees associated resources.
doRemoveWindow :: Window -> HS ()
doRemoveWindow w = do
  -- Remove window (screen) from stack
  modifyWindowSet $ W.delete w.river_window
  alterWindow w.river_window (const Nothing)
  -- Remove references in seats
  seats <- use seatList
  forM_ seats $ \s -> do
    when (s.op_window == w.river_window) $ R.riverSeatOpEnd s.river_seat
    modifySeat s.river_seat $
      focused
        . filtered (== w.river_window)
        .~ def
        &+ hovered
          . filtered (== w.river_window)
          .~ def
        &+ interacted
          . filtered (== w.river_window)
          .~ def
        &+ if s.op_window == w.river_window
          then op .~ def &+ opWindow .~ def
          else id
  -- Destroy WL references
  R.objectDestroy w.node
  R.objectDestroy w.river_window

-- * Window recovery (after restart etc.)

-- | we use the unique identifier to recover windows after restart
attemptWindowRecovery :: RiverWindow -> String -> H ()
attemptWindowRecovery rw uuid = runInHS $ gets (M.lookup uuid . view recoveredWindows) >>= (`whenJust` recoverWindow)
  where
    recoverWindow w = do
      modifyWindowSet $ W.mapWindow (\x -> if x == w then rw else x) . W.delete rw
      recoveredWindows %= M.delete uuid

-- | End recovering windows. Removes any leftoover windows that are no longer present.
finishRecovery :: HS ()
finishRecovery = do
  rwins <- use recoveredWindows
  unless (M.null rwins) $ do
    assign recoveredWindows mempty
    forM_ (M.toList rwins) $ \(_, rw) -> do
      modifyWindowSet $ W.delete rw
      alterWindow rw $ const Nothing

-- * Misc. tweaks

-- | Auto-float fixed-size windows
fixedSizeAutoFloat :: RiverWindow -> Int32 -> Int32 -> Int32 -> Int32 -> H ()
fixedSizeAutoFloat rw minWidth minHeight maxWidth maxHeight = when fixed $
  runInHS $
    withWindow_ rw $ \w ->
      modifyWindowSet $ \ws ->
        W.float
          rw
          ( centerRationalRect $
              rationalRectIn
                (Rectangle' w.position (Size (fi maxWidth) (fi maxHeight)))
                (screenRect $ W.screenDetail $ W.current ws)
          )
          ws
  where
    fixed = maxWidth > 0 && maxHeight > 0 && maxWidth == minWidth && maxHeight == minHeight

-- XXX: this does not exactly belong here does it?

-- | Warp the pointer to the defined screen. (NB: All seats])
warpPointerToScreen :: ScreenDetail -> ScreenId -> HS ()
warpPointerToScreen sd sid = do
  mapSeats $ \s -> do
    R.riverSeatPointerWarp s.river_seat px py
    modifySeat s.river_seat $ focused .~ def
  withScreenOutput sid $ \o -> io $ R.riverLayerShellOutputSetDefault o.layerShellOutput
  where
    px = fi $ sd.x + sd.width `div` 2
    py = fi $ sd.y + sd.height `div` 2

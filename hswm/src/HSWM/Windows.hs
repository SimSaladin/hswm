{-# LANGUAGE MultiWayIf #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

-- |
-- Module      : HSWM.Windows
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module HSWM.Windows where

import Control.Monad.State qualified as State
import Data.List qualified as L
import Data.Map qualified as M
import Foreign
import HSWM.Core
import HSWM.Operations
import HSWM.Seats qualified as Seats
import HSWM.StackSet qualified as W
import River.Objects qualified as R
import River.Safe qualified as R

added :: RiverWindow -> H ()
added w = do
  -- setup WL window listener
  window_listener <- getObject
  io $ R.listenerAdd w window_listener nullPtr
  nd <- io $ R.riverWindowGetNode w
  let win = def {new = True, river_window = w, node = nd, max_height = maxBound, max_width = maxBound}
  -- insert window to stack and state
  runInHS $ do
    alterWindow w (\_ -> Just win)
    modifyWindowSet (W.insertUp w)

applyManageActions :: Window -> [WindowManageAction] -> HS (Maybe Window)
applyManageActions _ [] = return Nothing
applyManageActions w0 xs0 = doAll w0 xs0 >>= \w' -> return $ Just w' {p_manage_action = []}
  where
    doAll :: Window -> [WindowManageAction] -> HS Window
    doAll w [] = pure w
    doAll w (x : xs) = doIt w x >>= flip doAll xs

    doIt w a = do
      let rw = w.river_window
      case a of
        WRequestClose -> do
          io $ R.riverWindowClose rw
          pure w
        WFullscreenOnScreen ro -> do
          io $ R.riverWindowFullscreen rw ro
          io $ R.riverWindowInformFullscreen rw
          pure w {fullscreen = True}
        WFullscreen -> do
          sid <- gets $ W.screen . W.current . windowset
          withScreenOutput sid $ \o -> do
            io $ R.riverWindowFullscreen rw o.river_output
            io $ R.riverWindowInformFullscreen rw
          pure w {fullscreen = True}
        WExitFullscreen -> do
          io $ R.riverWindowExitFullscreen rw
          io $ R.riverWindowInformNotFullscreen rw
          pure w {fullscreen = False}
        WToggleFullscreen
          | w.fullscreen -> doIt w WExitFullscreen
          | otherwise -> doIt w WFullscreen

-- | Do nothing while pointer operation is in progress.
manage :: H ()
manage = runInHS $ do
  ss <- gets _seats
  unless (any (\s -> s.op /= SEAT_OP_NONE) ss) manage_

manage_ :: HS ()
manage_ = do
  -- get rid of any closed windows
  -- do initial properties for new windows
  mapWindows $ \w -> do
    if
      | w.closed -> doRemoveWindow w
      | w.new -> setInitialManageProperties w >> modifyWindow w.river_window (\s -> s {new = False})
      | otherwise -> applyManageActions w w.p_manage_action >>= (`whenJust` (modifyWindow w.river_window . const))

  old <- gets windowsetOld
  ws <- gets windowset
  let oldvisible = concatMap (W.integrate' . W.stack . W.workspace) $ W.current old : W.visible old
      newwindows = W.allWindows ws L.\\ W.allWindows old

  whenJust (W.peek old) $ \otherw ->
    manageWindowBorder otherw =<< asks (normalBorder . config)

  modify (\s -> s {windowsetOld = ws})

  let tags_oldvisible = map (W.tag . W.workspace) $ W.current old : W.visible old
      gottenhidden = filter (flip elem tags_oldvisible . W.tag) $ W.hidden ws
  mapM_ (sendMessageWithNoRefresh Hide) gottenhidden

  -- for each workspace, layout the currently visible workspaces
  let allscreens = W.screens ws
      summed_visible = scanl (++) [] $ map (W.integrate' . W.stack . W.workspace) allscreens

  rects <- fmap concat $ forM (zip allscreens summed_visible) $ \(w, vis) -> do
    let wsp = W.workspace w
        this = W.view n ws
        n = W.tag wsp
        tiled =
          (W.stack . W.workspace . W.current $ this)
            >>= W.filter (`M.notMember` W.floating ws)
            >>= W.filter (`notElem` vis)
        sd = W.screenDetail w
        viewrect = Rectangle {x = fi sd.x, y = fi sd.y, width = fi sd.width, height = fi sd.height}

    -- just the tiled windows:
    -- now tile the windows on this workspace, modified by the gap
    (rs, ml') <-
      runLayout wsp {W.stack = tiled} viewrect
        `catchHS` runLayout wsp {W.stack = tiled, W.layout = Layout Full} viewrect
    updateLayout n ml'

    let m = W.floating ws
        flt =
          [ (fw, scaleRationalRect viewrect r, True)
          | fw <- filter (`M.member` m) (W.index this),
            fw `notElem` vis,
            Just r <- [M.lookup fw m]
          ]

    -- return the visible windows for this workspace:
    return (flt ++ [(a, b, False) | (a, b) <- rs])

  let visible = map (\(a, _, _) -> a) rects

  mapM_ (\(a, b, c) -> tileWindow c a b) rects

  sm <- liftH Seats.getSMgr

  whenJust (W.peek ws) $ \w ->
    if sm.seat_lshell_focus == Seats.FocusNone
      then manageWindowBorder w =<< asks (focusedBorder . config)
      else manageWindowBorder w =<< asks (normalBorder . config)

  mapM_ manageReveal visible
  setTopFocus

  -- hide every window that was potentially visible before, but is not
  -- given a position by a layout now.
  mapM_ manageHide (L.nub (oldvisible ++ newwindows) L.\\ visible)

render :: H ()
render = runInHS $ do
  mapWindows $ \w -> do
    whenJust w.p_render_pos $ uncurry (setWindowPosition w)
    whenJust w.p_render_border $ setWindowBorder w.river_window
    case w.p_render_place of
      i
        | i == R.rIVER_NODE_V1_PLACE_TOP -> io $ R.riverNodePlaceTop w.node
        | i == R.rIVER_NODE_V1_PLACE_BOTTOM -> io $ R.riverNodePlaceBottom w.node
      _ -> return ()
    whenJust w.p_set_visible $ \viz -> if viz then reveal w.river_window else hide w.river_window
    -- reset pending fields
    modifyWindow w.river_window $ \s ->
      s
        { p_render_border = Nothing,
          p_render_pos = Nothing,
          p_render_place = 0,
          p_set_visible = Nothing
        }

-- | /manage/
setInitialManageProperties :: Window -> HS ()
setInitialManageProperties Window {river_window = rw} = do
  io $ R.riverWindowUseSsd rw
  io $ R.riverWindowSetCapabilities rw (fi $ foldl' (.|.) 0 $ map (.unwrap) [Maximize, Fullscreen])
  io $ R.riverWindowSetTiled rw (fi $ foldl' (.|.) 0 $ map (.unwrap) [EdgeTop, EdgeBottom, EdgeLeft, EdgeRight])
  bcolor <- asks (normalBorder . config)
  modifyWindow rw $ \s -> s {new = False, p_render_border = Just bcolor}

doRemoveWindow :: Window -> HS ()
doRemoveWindow w@Window {} = do
  -- reove from stack
  modifyWindowSet $ W.delete w.river_window
  alterWindow w.river_window (const Nothing)
  -- remove references in seats
  gets _seats >>= \xs -> do
    xs' <- forM xs $ \seat' -> do
      let seat =
            seat'
              { focused = if focused seat' == w.river_window then invalidWindow else focused seat',
                hovered = if hovered seat' == w.river_window then invalidWindow else hovered seat',
                interacted = if interacted seat' == w.river_window then invalidWindow else interacted seat'
              }
      if op_window seat == w.river_window
        then do
          liftIO $ R.riverSeatOpEnd seat.river_seat
          return $ seat {op_window = invalidWindow, op = SEAT_OP_NONE}
        else return seat
    modify $ \s -> s {_seats = xs'}
  -- destroy WL references
  io $ R.objectDestroy w.node
  io $ R.objectDestroy w.river_window

handleEvent :: R.RiverWindowEvent -> H ()
handleEvent e = case e of
  -- The window has been closed by the server, perhaps due to an xdg_toplevel.close request or similar.
  -- The server will send no further events on this object and ignore any request other than river_window_v1.destroy made after this event is sent. The client should destroy this object with the river_window_v1.destroy request to free up resources.
  R.RiverWindowClosed _ w -> runInHS $ modifyWindow w $ \s -> s {closed = True}
  -- properties
  R.RiverWindowParent _ window we_parent -> runInHS $ modifyWindow window $ \s -> s {parent = Just we_parent}
  R.RiverWindowAppId _ window we_app_id -> runInHS $ modifyWindow window $ \s -> s {appId = we_app_id}
  R.RiverWindowTitle _ window we_title -> runInHS $ modifyWindow window $ \s -> s {title = we_title}
  R.RiverWindowUnreliablePid _ window we_unreliable_pid -> runInHS $ modifyWindow window $ \s -> s {unreliablePid = Just $ fi we_unreliable_pid}
  R.RiverWindowIdentifier _ window we_identifier -> runInHS $ do
    modifyWindow window $ \s -> s {identifier = we_identifier}
    let recoverWindow w = do
          modifyWindowSet $ W.mapWindow (\x -> if x == w then window else x) . W.delete window
          State.modify' $ \s -> s {recoveredWindows = M.delete we_identifier s.recoveredWindows}
    gets (M.lookup we_identifier . recoveredWindows) >>= (`whenJust` recoverWindow)

  -- updated width + height
  R.RiverWindowDimensions _ window we_width we_height -> runInHS $ modifyWindow window $ \s -> s {width = fi we_width, height = fi we_height}
  -- Hints
  R.RiverWindowDecorationHint _ window we_hint -> runInHS $ modifyWindow window $ \s -> s {decorationHint = Just $ R.River_window_v1_decoration_hint (fi we_hint)}
  R.RiverWindowPresentationHint _ window we_hint -> runInHS $ modifyWindow window $ \s -> s {presentationHint = Just (R.River_output_v1_presentation_mode (fi we_hint))}
  R.RiverWindowDimensionsHint _ window we_min_width we_min_height we_max_width we_max_height ->
    runInHS $ modifyWindow window $ \s -> s {min_width = fi we_min_width, min_height = fi we_min_height, max_width = fi we_max_width, max_height = fi we_max_height}
  -- fullscreen
  R.RiverWindowFullscreenRequested _ window output -> runInHS $ doManage' (if output == def then WFullscreen else WFullscreenOnScreen output) window
  R.RiverWindowExitFullscreenRequested _ window -> runInHS $ doManage' WExitFullscreen window
  -- TODO what's this
  R.RiverWindowPointerMoveRequested _ w seat ->
    runInHS $ modifyWindow w $ \s -> s {pointer_move_requested = seat}
  R.RiverWindowPointerResizeRequested _ w seat edges ->
    runInHS $ modifyWindow w $ \x -> x {pointer_resize_requested = seat, pointer_resize_requested_edges = fromIntegral edges}
  -- TODO maximize
  R.RiverWindowMaximizeRequested _ _w -> return ()
  R.RiverWindowUnmaximizeRequested _ _w -> return ()
  _ -> return ()

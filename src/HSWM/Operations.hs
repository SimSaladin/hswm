module HSWM.Operations where

import           Data.Bits
import qualified Data.List as L
import qualified Data.Map as M
import qualified HSWM.StackSet as W
import           HSWM.Types
import           River

windows :: H ()
windows = do
    old <- gets windowsetOld
    ws <- gets windowset
    let oldvisible = concatMap (W.integrate' . W.stack . W.workspace) $ W.current old : W.visible old
        newwindows = W.allWindows ws L.\\ W.allWindows old

    mapM_ setInitialProperties newwindows

    whenJust (W.peek old) $ \otherw ->
      setWindowBorder otherw =<< asks (normalBorder . config)

    modify (\s -> s { windowsetOld = ws })

    let tags_oldvisible = map (W.tag . W.workspace) $ W.current old : W.visible old
        gottenhidden    = filter (flip elem tags_oldvisible . W.tag) $ W.hidden ws
    mapM_ (sendMessageWithNoRefresh Hide) gottenhidden

    -- for each workspace, layout the currently visible workspaces
    let allscreens     = W.screens ws
        summed_visible = scanl (++) [] $ map (W.integrate' . W.stack . W.workspace) allscreens

    rects <- fmap concat $ forM (zip allscreens summed_visible) $ \ (w, vis) -> do
        let wsp   = W.workspace w
            this  = W.view n ws
            n     = W.tag wsp
            tiled = (W.stack . W.workspace . W.current $ this)
                    >>= W.filter (`M.notMember` W.floating ws)
                    >>= W.filter (`notElem` vis)
            sd = W.screenDetail w
            viewrect = Rectangle{x=fi sd.x, y=fi sd.y, width=fi sd.width, height=fi sd.height}

        -- just the tiled windows:
        -- now tile the windows on this workspace, modified by the gap
        (rs, ml') <- runLayout wsp { W.stack = tiled } viewrect `catchH`
                     runLayout wsp { W.stack = tiled, W.layout = Layout Full } viewrect
        updateLayout n ml'

        let m   = W.floating ws
            flt = [(fw, scaleRationalRect viewrect r)
                    | fw <- filter (`M.member` m) (W.index this)
                    , fw `notElem` vis
                    , Just r <- [M.lookup fw m]]
            vs = flt ++ rs

        -- return the visible windows for this workspace:
        return vs

    let visible = map fst rects

    mapM_ (uncurry tileWindow) rects

    whenJust (W.peek ws) $ \w ->
      setWindowBorder w =<< asks (focusedBorder . config)

    mapM_ reveal visible
    setTopFocus

    -- hide every window that was potentially visible before, but is not
    -- given a position by a layout now.
    mapM_ hide (L.nub (oldvisible ++ newwindows) L.\\ visible)

    asks (logHook . config) >>= userCodeDef ()

-- | Produce the actual rectangle from a screen and a ratio on that screen.
scaleRationalRect :: Rectangle -> W.RationalRect -> Rectangle
scaleRationalRect (Rectangle sx sy sw sh) (W.RationalRect rx ry rw rh)
 = Rectangle (sx + scale sw rx) (sy + scale sh ry) (scale sw rw) (scale sh rh)
 where scale s r = floor (toRational s * r)

--------------------------------------------------------------

-- | Draw borders on the the window.
setWindowBorder :: RiverWindow -> RiverColor -> H ()
setWindowBorder w RiverColor {red = wb_r, green = wb_g, blue = wb_b, alpha = wb_a} = do
    wb_width <- asks (borderWidth . config)
    wb_edges <- asks (fi . borderEdges . config)
    let borders = WindowBorders{..}
    liftIO $ riverWindowV1SetBorders w borders

-- | Move and resize @w@ such that it fits inside the given rectangle,
-- including its border.
tileWindow :: RiverWindow -> Rectangle -> H ()
tileWindow i r = withWindow i $ \w -> do
    -- give all windows at least 1x1 pixels
    let bw = 1 -- fromIntegral $ wa_border_width wa
        least x | x <= bw*2  = 1
                | otherwise  = x - bw*2
    io $ river_window_v1_propose_dimensions w.river_window (least $ fi r.width) (least $ fi r.height)
    io $ setNodePosition w.node (fi r.x + bw) (fi r.y + bw)

reveal :: RiverWindow -> H ()
reveal rw = io $ river_window_v1_show rw

hide :: RiverWindow -> H ()
hide rw = io $ river_window_v1_hide rw

-- | Set the focus to the window on top of the stack, or root
setTopFocus :: H ()
setTopFocus = withWindowSet $ maybe (pure ()) setFocusH . W.peek

setFocusH :: RiverWindow -> H ()
setFocusH rw = do
  mapSeats $ \s -> do
    io $ river_seat_v1_focus_window s.river_seat rw

setInitialProperties :: RiverWindow -> H ()
setInitialProperties rw = do
  io $ riverWindowV1UseSsd rw
  io $ riverWindowV1SetCapabilities rw (fi $ foldl' (.|.) 0 $ map fromEnum [Maximize, Fullscreen])
  io $ riverWindowV1SetTiled rw (fi $ foldl' (.|.) 0 $ map fromEnum [EdgeTop, EdgeBottom, EdgeLeft, EdgeRight])
  setWindowBorder rw =<< asks (normalBorder . config)

--------------------------------------------------------------

{-
-- | Throw a message to the current 'LayoutClass' possibly modifying how we
-- layout the windows, in which case changes are handled through a refresh.
sendMessage :: Message a => a -> H ()
sendMessage a = windowBracket_ $ do
    w <- gets $ W.workspace . W.current . windowset
    ml' <- handleMessage (W.layout w) (SomeMessage a) `catchH` return Nothing
    whenJust ml' $ \l' ->
        modifyWindowSet $ \ws -> ws { W.current = (W.current ws)
                                { W.workspace = (W.workspace $ W.current ws)
                                  { W.layout = l' }}}
    return (Any $ isJust ml')
-}

-- -- | Send a message to all layouts, without refreshing.
-- broadcastMessage :: Message a => a -> H ()
-- broadcastMessage a = withWindowSet $ \ws -> do
--     -- this is O(n²), but we can't really fix this as there's code in
--     -- xmonad-contrib that touches the windowset during handleMessage
--     -- (returning Nothing for changes to not get overwritten), so we
--     -- unfortunately need to do this one by one and persist layout states
--     -- of each workspace separately)
--     let c = W.workspace . W.current $ ws
--         v = map W.workspace . W.visible $ ws
--         h = W.hidden ws
--     mapM_ (sendMessageWithNoRefresh a) (c : v ++ h)

-- | Send a message to a layout, without refreshing.
sendMessageWithNoRefresh :: Message a => a -> WindowSpace -> H ()
sendMessageWithNoRefresh a w =
    handleMessage (W.layout w) (SomeMessage a) `catchH` return Nothing >>=
    updateLayout  (W.tag w)

-- | Update the layout field of a workspace.
updateLayout :: WorkspaceId -> Maybe (Layout RiverWindow) -> H ()
updateLayout i ml = whenJust ml $ \l ->
    runOnWorkspaces $ \ww -> return $ if W.tag ww == i then ww { W.layout = l} else ww


--------------------------------------------------------------

-- | This is basically a map function, running a function in the 'H' monad on
-- each workspace with the output of that function being the modified workspace.
runOnWorkspaces :: (WindowSpace -> H WindowSpace) -> H ()
runOnWorkspaces job = do
    ws <- gets windowset
    h <- mapM job $ W.hidden ws
    c:v <- mapM (\s -> (\w -> s { W.workspace = w}) <$> job (W.workspace s))
             $ W.current ws : W.visible ws
    modify $ \s -> s { windowset = ws { W.current = c, W.visible = v, W.hidden = h } }

{-
-- | Perform an @H@ action and check its return value against a predicate p.
-- If p holds, unwind changes to the @WindowSet@ and replay them using @windows@.
windowBracket :: (a -> Bool) -> H a -> H a
windowBracket p action = withWindowSet $ \old -> do
  a <- action
  when (p a) . withWindowSet $ \new -> do
    modifyWindowSet $ const old
    windows         $ const new
  return a

-- | Perform an @H@ action. If it returns @Any True@, unwind the
-- changes to the @WindowSet@ and replay them using @windows@. This is
-- a version of @windowBracket@ that discards the return value and
-- handles an @H@ action that reports its need for refresh via @Any@.
windowBracket_ :: H Any -> H ()
windowBracket_ = void . windowBracket getAny
-}

-- outputs

withOutput :: RiverOutput -> (Output -> H ()) -> H ()
withOutput k m = gets _outputs >>= mapM_ (\x -> when (x.river_output == k) (m x))

modifyOutput :: RiverOutput -> (Output -> Output) -> H ()
modifyOutput ro f = modify $ \s -> s { _outputs = map g (_outputs s) }
  where g a@Output{..} | river_output == ro = f a
                       | otherwise = a

-- seats

withSeat :: RiverSeat -> (Seat -> H ()) -> H ()
withSeat sid f = gets _seats >>= mapM_ (\s -> when (s.river_seat == sid) (f s))

modifySeat :: RiverSeat -> (Seat -> Seat) -> H ()
modifySeat ro f = modify $ \s -> s { _seats = map g (_seats s) }
  where g x@Seat{} | x.river_seat == ro = f x
                   | otherwise = x

modifySeats :: (Seat -> Bool) -> (Seat -> Seat) -> H ()
modifySeats choose f = modify $ \s -> s { _seats = map g (_seats s) }
  where g x | choose x    = f x
            | otherwise   = x

mapSeats :: (Seat -> H ()) -> H ()
mapSeats f = gets _seats >>= mapM_ f

-- windows

withWindow :: RiverWindow -> (Window -> H ()) -> H ()
withWindow wid f = gets _windows >>= mapM_ (\w -> when (w.river_window == wid) (f w))

modifyWindow :: RiverWindow -> (Window -> Window) -> H ()
modifyWindow w f = modify $ \s -> s { _windows = map g s._windows }
  where g x | x.river_window == w = f x
            | otherwise = x

mapWindows :: (Window -> H ()) -> H ()
mapWindows f = gets _windows >>= mapM_ f

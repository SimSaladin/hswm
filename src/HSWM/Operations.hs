module HSWM.Operations where

import           Data.Bits
import qualified Data.List as L
import qualified Data.Map as M
import           Foreign (IntPtr, intPtrToPtr, ptrToIntPtr)
import qualified HSWM.StackSet as W
import           HSWM.Types
import           River
import qualified River.Safe as R
import           System.Directory (removeFile)
import           System.IO
import qualified System.Posix as Posix
import           System.Posix.Process (executeFile)

manageKill :: Window -> H ()
manageKill = doManage WRequestClose

doManage :: WindowManageAction -> Window -> H ()
doManage a w = modifyWindow w.river_window $ \s -> s { p_manage_action = p_manage_action s ++ [a] }

withScreenOutput :: ScreenId -> (Output -> H ()) -> H ()
withScreenOutput sid f = mapM_ f . L.find (\o -> o.screen == sid) =<< gets _outputs

-- | Produce the actual rectangle from a screen and a ratio on that screen.
scaleRationalRect :: Rectangle -> W.RationalRect -> Rectangle
scaleRationalRect (Rectangle sx sy sw sh) (W.RationalRect rx ry rw rh)
 = Rectangle (sx + scale sw rx) (sy + scale sh ry) (scale sw rw) (scale sh rh)
 where scale s r = floor (toRational s * r)

--------------------------------------------------------------

manageWindowBorder :: RiverWindow -> RiverColor -> H ()
manageWindowBorder rw rc = modifyWindow rw $ \s -> s { p_render_border = Just rc }

-- | /render sequence/ Draw borders on the the window.
setWindowBorder :: RiverWindow -> RiverColor -> H ()
setWindowBorder w RiverColor {red = wb_r, green = wb_g, blue = wb_b, alpha = wb_a} = withWindow w $ \_ -> do
    wb_width <- asks (borderWidth . config)
    wb_edges <- asks (fi . borderEdges . config)
    let borders = WindowBorders{..}
    liftIO $ riverWindowV1SetBorders w borders

-- | /manage/
-- Move and resize @w@ such that it fits inside the given rectangle, including its border.
tileWindow :: Bool -> RiverWindow -> Rectangle -> H ()
tileWindow placeTop i r = withWindow i $ \w -> do
    bw <- asks (fi . borderWidth . config)
    -- give all windows at least 1x1 pixels
    let least x | x <= bw*2  = 1
                | otherwise  = x - bw*2
    io $ river_window_v1_propose_dimensions w.river_window (least $ fi r.width) (least $ fi r.height)
    modifyWindow i $ \s -> s
      -- setNodePosition w.node (fi r.x + bw) (fi r.y + bw)
      { p_render_pos = Just (fi r.x + bw, fi r.y + bw)
      , p_render_place = if placeTop then R.rIVER_NODE_V1_PLACE_TOP else 0
      }

manageReveal, manageHide :: RiverWindow -> H ()
manageReveal = flip modifyWindow $ \s -> s { p_set_visible = Just True }
manageHide = flip modifyWindow $ \s -> s { p_set_visible = Just False }

-- | /render sequence/
reveal :: RiverWindow -> H ()
reveal rw = withWindow rw $ \_ -> io $ river_window_v1_show rw

-- | /render sequence/
hide :: RiverWindow -> H ()
hide rw = withWindow rw $ \_ -> io $ river_window_v1_hide rw

-- | /manage sequence/ focus a window in every seat.
setFocusH :: RiverWindow -> H ()
setFocusH rw = mapSeats $ \s -> io $ river_seat_v1_focus_window s.river_seat rw

-- | Force new manage sequence.
manageDirty :: H ()
manageDirty = withObject (io . riverWindowManagerManageDirty)

--------------------------------------------------------------

{-
-- | Throw a message to the current 'LayoutClass' possibly modifying how we
-- layout the windows, in which case changes are handled through a refresh.
-}
sendMessage :: Message a => a -> H ()
sendMessage a = do
    w <- gets $ W.workspace . W.current . windowset
    ml' <- handleMessage (W.layout w) (SomeMessage a) `catchH` return Nothing
    whenJust ml' $ \l' -> do
        modifyWindowSet $ \ws -> ws { W.current = (W.current ws)
                                { W.workspace = (W.workspace $ W.current ws)
                                  { W.layout = l' }}}
        manageDirty
    return ()

--  Xmonad impl:
--sendMessage a = windowBracket_ $ do
--    w <- gets $ W.workspace . W.current . windowset
--    ml' <- handleMessage (W.layout w) (SomeMessage a) `catchH` return Nothing
--    whenJust ml' $ \l' ->
--        modifyWindowSet $ \ws -> ws { W.current = (W.current ws)
--                                { W.workspace = (W.workspace $ W.current ws)
--                                  { W.layout = l' }}}
--    return (Any $ isJust ml')

-- | Send a message to all layouts, without refreshing.
broadcastMessage :: Message a => a -> H ()
broadcastMessage a = withWindowSet $ \ws -> do
    -- this is O(n²), but we can't really fix this as there's code in
    -- xmonad-contrib that touches the windowset during handleMessage
    -- (returning Nothing for changes to not get overwritten), so we
    -- unfortunately need to do this one by one and persist layout states
    -- of each workspace separately)
    let c = W.workspace . W.current $ ws
        v = map W.workspace . W.visible $ ws
        h = W.hidden ws
    mapM_ (sendMessageWithNoRefresh a) (c : v ++ h)

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
-- * WindowSet etc. modifications

-- | Set the focus to the window on top of the stack, or root
setTopFocus :: H ()
setTopFocus = withWindowSet $ maybe (pure ()) setFocusH . W.peek

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

withFocused :: (Window -> H ()) -> H ()
withFocused f = gets windowset >>= \ws -> whenJust (W.peek ws) (`withWindow` f)

withWindow :: RiverWindow -> (Window -> H ()) -> H ()
withWindow wid f = gets _windows >>= mapM_ (\w -> when (w.river_window == wid) (f w))

modifyWindow :: RiverWindow -> (Window -> Window) -> H ()
modifyWindow w f = modify $ \s -> s { _windows = map g s._windows }
  where g x | x.river_window == w = f x
            | otherwise = x

mapWindows :: (Window -> H ()) -> H ()
mapWindows f = gets _windows >>= mapM_ f

-------------------------------------------------------------------
-- * Restart with state

data StateData = StateData
  { sfWins :: W.StackSet WorkspaceId String (IntPtr, String) WorkspaceDetail ScreenId ScreenDetail
  , sfExt  :: [(String, String)]
  } deriving (Show, Read)

restart :: String -> H ()
restart prog = do
  broadcastMessage ReleaseResources
  writeStateToFile
  io $ executeFile prog True [] Nothing `catch`
    (\(SomeException e) -> hPrint stderr e >> hFlush stderr)

writeStateToFile :: H ()
writeStateToFile = do
  let path = ".hswm.state"
      wsData s = W.mapLayout show $ W.mapWindow winIdent $ windowset s
        where
          winIdent w
            | Just win <- L.find (\x -> x.river_window == w) s._windows = (ptrToIntPtr w, win.identifier)
            | otherwise = (ptrToIntPtr w, "")
      extState _ = [] -- TODO
  stateData <- gets $ \s -> StateData (wsData s) (extState s)
  catchIO $ writeFile path $ show stateData


catchIO :: MonadIO m => IO () -> m ()
catchIO f = io (f `catch` \(SomeException e) -> hPrint stderr e >> hFlush stderr)


-- | Read the state of a previous xmonad instance from a file and
-- return that state.  The state file is removed after reading it.
readStateFile :: (LayoutClass l RiverWindow, Read (l RiverWindow)) => HSWMConfig l -> IO (Maybe HState)
readStateFile xmc = do
    let path = ".hswm.state"

    -- I'm trying really hard here to make sure we read the entire
    -- contents of the file before it is removed from the file system.
    res <- try @SomeException $ do
        raw <- withFile path ReadMode readStrict
        return $! maybeRead reads raw
    try @SomeException $ io (removeFile path)

    case res of
       Left e -> print e >> return Nothing
       Right sf' -> return $ do
          sf <- sf'

          let wins = W.allWindows (sfWins sf)
          let winset = W.ensureTags layout (workspaces xmc) $
                W.mapLayout (fromMaybe layout . maybeRead lreads) $
                  W.mapWindow (intPtrToPtr . fst) (sfWins sf)
              --extState = M.fromList . map (second Left) $ sfExt sf

          return def
            { windowset = winset
            , windowsetOld = winset
            , recoveredWindows = M.fromList [ (b, intPtrToPtr a) | (a,b) <- wins ]
            }
  where
    layout = Layout (layoutHook xmc)
    lreads = readsLayout layout
    maybeRead reads' s = case reads' s of
                           [(x, "")] -> Just x
                           _         -> Nothing

    readStrict :: Handle -> IO String
    readStrict h = hGetContents h >>= \s -> length s `seq` return s

sendRestart :: H ()
sendRestart = io $ Posix.raiseSignal Posix.sigUSR1

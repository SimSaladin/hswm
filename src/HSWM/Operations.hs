module HSWM.Operations where

import qualified HSWM.StackSet as W
import           HSWM.Core

import Data.Function (on)
import Data.Ratio  ((%))
import qualified River.Safe as R
import qualified River.Objects as R

import qualified Data.List as L
import qualified Data.Map as M
import           Foreign (IntPtr, intPtrToPtr, ptrToIntPtr)
import           System.Directory (removeFile)
import           System.IO
import System.Exit
import System.Environment
import qualified System.Posix as Posix
import           System.Posix.Process (executeFile)

-- * Manage tasks that defer to next manage sequence

manageReveal, manageHide :: RiverWindow -> H ()
manageReveal = flip modifyWindow $ \s -> s { p_set_visible = Just True }
manageHide = flip modifyWindow $ \s -> s { p_set_visible = Just False }

manageKill :: Window -> H ()
manageKill = doManage WRequestClose

-- | /manage/
-- Move and resize @w@ such that it fits inside the given rectangle, including its border.
tileWindow :: Bool -> RiverWindow -> Rectangle -> H ()
tileWindow placeTop i r = withWindow i $ \w -> do
    bw <- asks (fi . borderWidth . config)
    -- give all windows at least 1x1 pixels
    let least x | x <= bw*2  = 1
                | otherwise  = x - bw*2
    io $ R.riverWindowProposeDimensions w.river_window (least $ fi r.width) (least $ fi r.height)
    modifyWindow i $ \s -> s
      -- setNodePosition w.node (fi r.x + bw) (fi r.y + bw)
      { p_render_pos = Just (fi r.x + bw, fi r.y + bw)
      , p_render_place = if placeTop then R.rIVER_NODE_V1_PLACE_TOP else 0
      }

manageWindowBorder :: RiverWindow -> RiverColor -> H ()
manageWindowBorder rw rc = modifyWindow rw $ \s -> s { p_render_border = Just rc }

doManage' :: WindowManageAction -> RiverWindow -> H ()
doManage' a rw = modifyWindow rw $ \s -> s { p_manage_action = p_manage_action s ++ [a] }

doManage :: WindowManageAction -> Window -> H ()
doManage a w = doManage' a w.river_window

--------------------------------------------------------------

-- * Operations not tied to manage/render phases
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

withScreenOutput :: ScreenId -> (Output -> H ()) -> H ()
withScreenOutput sid f = mapM_ f . L.find (\o -> o.screen == sid) =<< gets _outputs

-- | Force new manage sequence.
manageDirty :: H ()
manageDirty = withObject (io . R.riverWindowManagerManageDirty)


-- * Manage sequence /only/

-- | /manage sequence/ focus a window in every seat.
setFocusH :: RiverWindow -> H ()
setFocusH rw = mapSeats $ \s -> io $ R.riverSeatFocusWindow s.river_seat rw

--------------------------------------------------------------

-- * Render sequence / defer to render sequence

-- | /render sequence/ Draw borders on the the window.
setWindowBorder :: RiverWindow -> RiverColor -> H ()
setWindowBorder w RiverColor {red = wb_r, green = wb_g, blue = wb_b, alpha = wb_a} = withWindow w $ \_ -> do
    wb_width <- asks (borderWidth . config)
    wb_edges <- asks (fi . borderEdges . config)
    let borders = WindowBorders{..}
    liftIO $ riverWindowSetBorders w borders

riverWindowSetBorders :: RiverWindow -> WindowBorders -> IO ()
riverWindowSetBorders w WindowBorders{..} =
  R.riverWindowSetBorders w wb_edges wb_width wb_r wb_g wb_b wb_a

-- | /render sequence/
reveal, hide :: RiverWindow -> H ()
reveal rw = withWindow rw $ \_ -> io $ R.riverWindowShow rw
hide rw = withWindow rw $ \_ -> io $ R.riverWindowHide rw

--------------------------------------------------------------


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

lookupWindow :: RiverWindow -> H (Maybe Window)
lookupWindow wid = gets (M.lookup wid . _windows)

withWindow :: RiverWindow -> (Window -> H ()) -> H ()
withWindow wid f = gets (M.lookup wid . _windows) >>= (`whenJust` f)

modifyWindow :: RiverWindow -> (Window -> Window) -> H ()
modifyWindow w f = alterWindow w (fmap f)

alterWindow :: RiverWindow -> (Maybe Window -> Maybe Window) -> H ()
alterWindow w f = modify $ \s -> s { _windows = M.alter f w s._windows }

mapWindows :: (Window -> H ()) -> H ()
mapWindows f = gets _windows >>= mapM_ f

-------------------------------------------------------------------
-- * Restart with state

data StateData = StateData
  { sfWins :: W.StackSet WorkspaceId String (IntPtr, String) WorkspaceDetail ScreenId ScreenDetail
  , sfExt  :: [(String, String)]
  } deriving (Show, Read)

getProgramPath :: IO FilePath
getProgramPath = lookupEnv "HSWM_EXECUTABLE" >>= \case
    Just x -> return x
    Nothing
      | Just getExe <- executablePath -> do
          x <- fromMaybe (error "restart: unable to get program path") <$> getExe
          setEnv "HSWM_EXECUTABLE" x
          return x
      | otherwise -> error "restart: unable to resolve program path"

restart :: String -> H ()
restart prog = do
  broadcastMessage ReleaseResources
  void . userCode =<< asks (exitHook . config)
  writeStateToFile
  io $ do
    res <- try $ executeFile prog True [] Nothing
    case res of
      Left (SomeException e) -> hPrint stderr e >> exitFailure
      Right{} -> return ()

rwToIntPtr (R.RiverWindow w) = ptrToIntPtr w

writeStateToFile :: H ()
writeStateToFile = do
  let path = ".hswm.state"
      wsData s = W.mapLayout show $ W.mapWindow winIdent $ windowset s
        where
          winIdent w
            | Just win <- L.find (\x -> x.river_window == w) s._windows = (rwToIntPtr w, win.identifier)
            | otherwise = (rwToIntPtr w, "")
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
    _ <- try @SomeException $ io (removeFile path)

    case res of
       Left e -> print e >> return Nothing
       Right sf' -> return $ do
          sf <- sf'

          let wins = W.allWindows (sfWins sf)
          let winset = W.ensureTags layout (workspaces xmc) $
                W.mapLayout (fromMaybe layout . maybeRead lreads) $
                  W.mapWindow (R.RiverWindow . intPtrToPtr . fst) (sfWins sf)
              --extState = M.fromList . map (second Left) $ sfExt sf

          return def
            { windowset = winset
            , windowsetOld = winset
            , recoveredWindows = M.fromList [ (b, R.RiverWindow $ intPtrToPtr a) | (a,b) <- wins ]
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
sendRestart = io $ Posix.raiseSignal Posix.sigUSR2



-----------------------------------

startSeatOp op = modifySeats (const True) $ \seat -> seat { pending_action = S_START_OP op }

-- | Make a tiled window floating, using its suggested rectangle
float :: RiverWindow -> H ()
float rw = withWindow rw $ \w -> do
    (sc, rr) <- floatLocation w
    modifyWindowSet $ \ws -> W.float rw rr . fromMaybe ws $ do
        i  <- W.findTag rw ws
        guard $ i `elem` map (W.tag . W.workspace) (W.screens ws)
        f  <- W.peek ws
        sw <- W.lookupWorkspace sc ws
        return (W.focusWindow f . W.shiftWin sw rw $ ws)

-- | Given a window, find the screen it is located on, and compute
-- the geometry of that window WRT that screen.
floatLocation :: Window -> H (ScreenId, W.RationalRect)
floatLocation w = go
      -- -- Fallback solution if `go' fails.  Which it might, since it
      -- -- calls `getWindowAttributes'.
      -- sc <- gets $ W.current . windowset
      -- return (W.screen sc, W.RationalRect 0 0 1 1)

  where go = do
          ws <- gets windowset
          let bw = fi 2 -- (fromIntegral . wa_border_width) wa
          point_sc <- pointScreen (fi w.x) (fi $ w.y)

          -- ignore pointScreen for new windows unless it's the current
          -- screen, otherwise the float's relative size is computed against
          -- a different screen and the float ends up with the wrong size
          let sr_eq = (==) `on` fmap (screenRect . W.screenDetail)
              sc = fromMaybe (W.current ws) $
                  if point_sc `sr_eq` Just (W.current ws) then point_sc else Nothing
              sr = screenRect . W.screenDetail $ sc
              x = (fi w.x - fi (sr.x)) % fi (sr.width)
              y = (fi w.y - fi (sr.y)) % fi (sr.height)
              (width, height) = {- applySizeHintsContents sh -} (fi w.width, fi w.height)
              rwidth  = fi (width + bw*2) % fi (sr.width)
              rheight = fi (height + bw*2) % fi (sr.height)
              -- adjust x/y of unmanaged windows if we ignored or didn't get pointScreen,
              -- it might be out of bounds otherwise
              rr = if point_sc `sr_eq` Just sc
                  then W.RationalRect x y rwidth rheight
                  else W.RationalRect (0.5 - rwidth/2) (0.5 - rheight/2) rwidth rheight

          return (W.screen sc, rr)

-- | Given a point, determine the screen (if any) that contains it.
pointScreen :: Position -> Position
            -> H (Maybe (W.Screen WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail))
pointScreen x y = withWindowSet $ return . L.find p . W.screens
  where p = pointWithin x y . screenRect . W.screenDetail

screenRect SD{..} = Rectangle (fi x) (fi y) (fi width) (fi height)

setWindowPosition :: Window -> Int32 -> Int32 -> H ()
setWindowPosition w x y = do
  setNodePosition w.node x y
  modifyWindow w.river_window $ \s -> s { x = x, y = y }

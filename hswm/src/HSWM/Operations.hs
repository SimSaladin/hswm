module HSWM.Operations where

import Data.List qualified as L
import Data.Map qualified as M
import Data.Ratio ((%))
import Data.Set qualified as S
import GHC.Stack
import HSWM.Core
import HSWM.Main.Persist qualified as Persist
import HSWM.StackSet qualified as W
import River qualified as R
import System.Posix qualified as Posix
import System.Posix.Process (executeFile)
import WL.Wlr.OutputPowerManagement.Unstable.V1.Client qualified as WLR_OPM

-- * Schedule window operations to next manage or render phase

{- |
Move and resize @w@ such that it fits inside the given rectangle, including its border.

/manage/
-}
tileWindow :: (SomeWindow a) => a -> Rectangle -> HS ()
tileWindow sw r = do
    let rw = sw ^. riverId
    withWindow_ rw $ \w ->
        case w.fullscreen of
            Nothing -> do
                bwDef <- view $ config . borderWidth . to fi
                let bw = fromMaybe bwDef w.wBorderWidth
                -- give all windows at least 1x1 pixels
                let least x
                        | x <= bw * 2 = 1
                        | otherwise = x - bw * 2
                R.riverWindowProposeDimensions w.river_window (least $ fi r.size.width) (least $ fi r.size.height)
                doRender (WRPosition $ Position (fi r.position.x + bw) (fi r.position.y + bw)) rw
            Just ro -> do
                sid <- pointScreen r.position.x r.position.y
                mo <- lookupOutputBy (\x -> Just x.screen == fmap W.screen sid)
                case mo of
                    -- need to change the output where the window is fullscreened
                    Just o | ro /= o.river_output -> do
                        R.riverWindowFullscreen rw o.river_output
                        modifyWindow rw $ fullscreen ?~ o.river_output &+ position .~ o.position &+ size .~ o.size
                    _ -> return ()

-- | Mark the window to be revealed or hidden in next manage sequence.
manageReveal, manageHide :: (SomeWindow a) => a -> HS ()
manageReveal = doRender WRReveal
manageHide = doRender WRHide

-- | Mark the window to be closed in the next manage sequence.
manageKill :: (SomeWindow a) => a -> HS ()
manageKill = doManage WRequestClose

doManage :: (SomeWindow a) => WindowManageAction -> a -> HS ()
doManage a sw = modifyWindow sw $ pManageAction <>~ [a]

doRender :: (SomeWindow a) => WindowRenderAction -> a -> HS ()
doRender a sw = modifyWindow sw $ pendingRender <>~ [a]

windowPlaceTop :: (SomeWindow a) => a -> HS ()
windowPlaceTop = doRender WRPlaceTop

windowPlaceBottom :: (SomeWindow a) => a -> HS ()
windowPlaceBottom = doRender WRPlaceBottom

-- | Set the window border color
manageWindowBorder :: (SomeWindow a) => a -> RiverColor -> HS ()
manageWindowBorder sw rc = do
    modifyWindow sw $ borderColor ?~ rc
    doRender WRBorder sw

manageWindowBorderWidth :: (SomeWindow a) => a -> Maybe Int32 -> HS ()
manageWindowBorderWidth sw bw = do
    modifyWindow sw $ wBorderWidth .~ bw
    doRender WRBorder sw

----------------------------------------------------------------------------------

-- * Operations not tied to manage/render phases

-- | Send a message to all layouts, without refreshing.
broadcastMessage :: (Message a) => a -> HS ()
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

{- | Throw a message to the current 'LayoutClass' possibly modifying how we
layout the windows, in which case changes are handled through a refresh.
-}
sendMessage :: (Message a) => a -> HS ()
sendMessage a = do
    w <- gets $ W.workspace . W.current . view windowset
    ml' <- handleMessage (W.layout w) (SomeMessage a) `catchHS` return Nothing
    whenJust ml' $ \l' -> do
        modifyWindowSet $ \ws ->
            ws
                { W.current =
                    (W.current ws)
                        { W.workspace = (W.workspace $ W.current ws){W.layout = l'}
                        }
                }
        manageDirty
    return ()

-- | Send a message to a layout, without refreshing.
sendMessageWithNoRefresh :: (Message a) => a -> WindowSpace -> HS ()
sendMessageWithNoRefresh a w =
    handleMessage (W.layout w) (SomeMessage a) `catchHS` return Nothing
        >>= updateLayout (W.tag w)

-- | Force new manage sequence.
manageDirty :: (HasCallStack) => (MonadH m) => m ()
manageDirty = liftH $ do
    logDebug $ "wm request: manage_dirty" :# ["stack" .= prettyCallStack callStack]
    withObject R.riverWindowManagerManageDirty
    writeMainQ MainPoll

--------------------------------------------------------------

-- * Manage sequence /only/

-- NOTE: these operations can only be executed within an active render phase!

{- | Set the focus to the window on top of the stack, or root

/manage sequence/ focus a window in every seat.
-}
setTopFocus :: HS ()
setTopFocus = withWindowSet $ maybe (pure ()) setTopFocus' . W.peek

-- | Set the specified window as focus (all seats).
setTopFocus' :: RiverWindow -> HS ()
setTopFocus' rw = mapSeats $ \s -> do
    when (s.focused /= rw) $ do
        withWindow_ rw $ \w -> do
            -- logDebug $ "seat: focus window" :# [ "window" .= show rw, "seat" .= s.name ]
            R.riverSeatFocusWindow s.river_seat rw
            modifySeat s.river_seat $ focused .~ rw
            -- FIXME: when focusing a newly created window, we end up here when w.x and w.y are still 0.
            -- The position is updated a bit later by the WindowDimensions event.
            when (s.suppressChangeFocus <= 0 && w ^. size /= Size 0 0) $ do
                let Position x' y' = fromMaybe w.position $ listToMaybe [pos | WRPosition pos <- w.pendingRender]
                    px = x' + (fi w.size.width `div` 2)
                    py = y' + (fi w.size.height `div` 2)
                -- logDebug $ "seat: pointer warp" :# [ "dest" .= (px, py), "seat" .= s.name, "window" .= show w.river_window ]
                io $ R.riverSeatPointerWarp s.river_seat px py

seatDisableBindingsMatching :: (SomeSeat a) => a -> [ModMask] -> [KeySym] -> HS ()
seatDisableBindingsMatching rs mods keys = withSeat_ rs $ \s -> do
    let binds = s.xkb_bindings
        matchedKeys = S.filter match (M.keysSet binds)
        matchedBinds = M.fromSet (view _2 . (.unBoth) . (binds M.!)) matchedKeys
    logInfo $ "seat: temporarily disabling bindings" :# ["count" .= length matchedBinds]
    io . forM_ matchedBinds $ deRefStablePtr >=> R.riverXkbBindingDisable . (.riverXkbBinding)
  where
    match (XBKey mod' key) = any (\m -> m .&. mod' > 0) mods || key `elem` keys

seatEnableBindingsMatching :: (SomeSeat a) => a -> [ModMask] -> [KeySym] -> HS ()
seatEnableBindingsMatching rs mods keys = withSeat_ rs $ \s -> do
    let binds = s.xkb_bindings
        matchedKeys = S.filter match (M.keysSet binds)
        matchedBinds = M.fromSet (view _2 . (.unBoth) . (binds M.!)) matchedKeys
    logInfo $ "seat: restoring bindings to enabled" :# ["seat" .= show (rs ^. riverId), "count" .= length matchedBinds]
    io . forM_ matchedBinds $ deRefStablePtr >=> R.riverXkbBindingEnable . (.riverXkbBinding)
  where
    match (XBKey mod' key) = any (\m -> m .&. mod' > 0) mods || key `elem` keys

--------------------------------------------------------------

-- * Render sequence / defer to render sequence

-- NOTE: these operations can only be executed within an active render phase!

-- | /render sequence/
reveal, hide :: RiverWindow -> HS ()
reveal rw = withWindow_ rw $ \_ -> R.riverWindowShow rw
hide rw = withWindow_ rw $ \_ -> R.riverWindowHide rw

-- | /render sequence/ Draw borders on the the window.
setWindowBorder :: RiverWindow -> Int32 -> RiverColor -> HS ()
setWindowBorder w wbWidth wbColor = withWindow_ w $ \_ -> do
    wbEdges <- asks $ view (config . borderEdges)
    liftIO $ riverWindowSetBorders w R.WindowBorders{..}

riverWindowSetBorders :: RiverWindow -> R.WindowBorders -> IO ()
riverWindowSetBorders w R.WindowBorders{wbColor = RiverColor{..}, ..} =
    R.riverWindowSetBorders w wbEdges wbWidth red green blue alpha

setWindowPosition :: Window -> Int32 -> Int32 -> HS ()
setWindowPosition w x y = do
    R.riverNodeSetPosition w.node x y
    modifyWindow w.river_window $ _x .~ x &+ _y .~ y

--------------------------------------------------------------

-- * WindowSet operations

-- TODO clean this up

-- | Given a point, determine the screen (if any) that contains it.
pointScreen ::
    Position1D ->
    Position1D ->
    HS (Maybe (W.Screen WorkspaceId (Layout RiverWindow) RiverWindow WorkspaceDetail ScreenId ScreenDetail))
pointScreen x y = withWindowSet $ return . L.find point . W.screens
  where
    point = pointWithin x y . screenRect . W.screenDetail

-- | Set the layout of the currently viewed workspace.
setLayout :: Layout RiverWindow -> HS ()
setLayout l = do
    ss@W.StackSet{W.current = c@W.Screen{W.workspace = ws}} <- use windowset
    _ <- handleMessage (W.layout ws) (SomeMessage ReleaseResources)
    windows $ const $ ss{W.current = c{W.workspace = ws{W.layout = l}}}

-- | Update the layout field of a workspace.
updateLayout :: WorkspaceId -> Maybe (Layout RiverWindow) -> HS ()
updateLayout i ml = whenJust ml $ \l ->
    runOnWorkspaces $ \ww -> return $ if W.tag ww == i then ww{W.layout = l} else ww

withFocused :: (Window -> HS ()) -> HS ()
withFocused f = use windowset >>= \ws -> whenJust (W.peek ws) (`withWindow_` f)

withFocused' :: (MonadHS m) => (Window -> m ()) -> m ()
withFocused' f = runInHS (use windowset >>= mapM lookupWindow . W.peek) >>= mapM_ f . join

-- | Make a tiled window floating, using its suggested rectangle (modifies the windowset only).
float :: (SomeWindow a) => a -> HS ()
float sw = floatLocation sw >>= mapM_ go
  where
    rw = sw ^. riverId
    go (sc, rr) = modifyWindowSet $ \ws -> W.float rw rr . fromMaybe ws $ do
        i <- W.findTag rw ws
        guard $ i `elem` map (W.tag . W.workspace) (W.screens ws)
        f <- W.peek ws
        tows <- W.lookupWorkspace sc ws
        return (W.focusWindow f . W.shiftWin tows rw $ ws)

{- | Given a window, find the screen it is located on, and compute
the geometry of that window WRT that screen.
-}
floatLocation :: (SomeWindow a) => a -> HS (Maybe (ScreenId, W.RationalRect))
floatLocation sw = withWindow sw $ \w -> do
    ws <- use windowset
    let bw = 2 :: Int -- (fromIntegral . wa_border_width) wa
    point_sc <- pointScreen (fi $ w ^. _x) (fi $ w ^. _y)

    -- ignore pointScreen for new windows unless it's the current
    -- screen, otherwise the float's relative size is computed against
    -- a different screen and the float ends up with the wrong size
    let sr_eq = (==) `on` fmap (screenRect . W.screenDetail)
        sc =
            fromMaybe (W.current ws) $
                if point_sc `sr_eq` Just (W.current ws) then point_sc else Nothing
        sr = screenRect . W.screenDetail $ sc
        x = (fi w.position.x - fi sr.position.x) % fi sr.size.width
        y = (fi w.position.y - fi sr.position.y) % fi sr.size.height
        (width', height') = {- applySizeHintsContents sh -} (fi w.size.width, fi w.size.height)
        rwidth = fi (width' + bw * 2) % fi sr.size.width
        rheight = fi (height' + bw * 2) % fi sr.size.height
        -- adjust x/y of unmanaged windows if we ignored or didn't get pointScreen,
        -- it might be out of bounds otherwise
        rr =
            if point_sc `sr_eq` Just sc
                then W.RationalRect x y rwidth rheight
                else W.RationalRect (0.5 - rwidth / 2) (0.5 - rheight / 2) rwidth rheight

    return (W.screen sc, rr)

windows :: (WindowSet -> WindowSet) -> HS ()
windows = modifyWindowSet

-- | Run a monadic action with the current stack set
withWindowSet :: (WindowSet -> HS a) -> HS a
withWindowSet f = use windowset >>= f

modifyWindowSet :: (WindowSet -> WindowSet) -> HS ()
modifyWindowSet = modifying windowset

-- | Return workspace visible on screen @sc@, or 'Nothing'.
screenWorkspace :: ScreenId -> HS (Maybe WorkspaceId)
screenWorkspace sc = withWindowSet $ return . W.lookupWorkspace sc

{- | This is basically a map function, running a function in the 'H' monad on
each workspace with the output of that function being the modified workspace.
-}
runOnWorkspaces :: (WindowSpace -> HS WindowSpace) -> HS ()
runOnWorkspaces job = do
    ws <- use windowset
    h <- mapM job $ W.hidden ws
    c : v <-
        mapM (\s -> (\w -> s{W.workspace = w}) <$> job (W.workspace s)) $
            W.current ws : W.visible ws
    modify $ \s -> s{windowset = ws{W.current = c, W.visible = v, W.hidden = h}}

--------------------------------------------------------------

-- * Output lookup and manipulation

lookupOutput :: (SomeOutput a) => a -> HS (Maybe Output)
lookupOutput k = preuse $ outputList . eachRiverId k

lookupOutputBy :: (Output -> Bool) -> HS (Maybe Output)
lookupOutputBy f = preuse $ outputList . each . filtered f

withOutput :: (SomeOutput a) => a -> (Output -> HS b) -> HS (Maybe b)
withOutput k f = lookupOutput k >>= mapM f

withOutput_ :: (SomeOutput a) => a -> (Output -> HS ()) -> HS ()
withOutput_ k f = lookupOutput k >>= mapM_ f

modifyOutput :: (SomeOutput a) => a -> (Output -> Output) -> HS ()
modifyOutput k f = outputList . eachRiverId k %= f

setOutputPower :: Bool -> HS ()
setOutputPower mode = do
    use outputList >>= traverseOf_ (each . filtered ((/= def) . view outputPower)) f
  where
    f output = do
        logInfo $ "Setting output power" :# ["on" .= mode, "output" .= show output.river_output, "opmId" .= show output.outputPower]
        WLR_OPM.outputPowerSetMode output.outputPower $
            if mode
                then WLR_OPM.OutputPowerModeOn
                else WLR_OPM.OutputPowerModeOff

withScreenOutput :: ScreenId -> (Output -> HS ()) -> HS ()
withScreenOutput sid f = mapM_ f . L.find (\o -> o.screen == sid) =<< use outputList

--------------------------------------------------------------

-- * Seat lookup & manipulation

lookupSeat :: (SomeSeat a) => a -> HS (Maybe Seat)
lookupSeat k = preuse $ seatList . eachRiverId k

withSeat :: (SomeSeat a) => a -> (Seat -> HS b) -> HS (Maybe b)
withSeat k f = lookupSeat k >>= mapM f

withSeat_ :: (SomeSeat a) => a -> (Seat -> HS ()) -> HS ()
withSeat_ k f = lookupSeat k >>= mapM_ f

modifySeat :: (SomeSeat a) => a -> (Seat -> Seat) -> HS ()
modifySeat k f = seatList . eachRiverId k %= f

modifySeats :: (Seat -> Bool) -> (Seat -> Seat) -> HS ()
modifySeats choose f = seatList . each . filtered choose %= f

-- | Use seat list read-only.
mapSeats :: (GetHState m) => (Seat -> m ()) -> m ()
mapSeats f = getHState >>= mapM_ f . view seatList

startSeatOp :: SeatOperation -> HS ()
startSeatOp seatop = modifySeats (const True) $ pendingAction .~ S_START_OP seatop

-- | Casts the pointer into @RiverSeat@.
modifySeat' :: Ptr Void -> (Seat -> Seat) -> HS ()
modifySeat' ud = modifySeat (R.RiverSeat $ castPtr ud)

--------------------------------------------------------------

-- * Window lookup & manipulation

lookupWindow :: (SomeWindow a) => a -> HS (Maybe Window)
lookupWindow k = preuse (_windows . ix (k ^. riverId))

lookupWindows :: (SomeWindow a) => [a] -> HS [Window]
lookupWindows ks = gets (^.. _windows . traversed . filtered (\x -> any (riverIdEq x) ks))

withWindow :: (SomeWindow a) => a -> (Window -> HS b) -> HS (Maybe b)
withWindow k f = lookupWindow k >>= mapM f

withWindow_ :: (SomeWindow a) => a -> (Window -> HS ()) -> HS ()
withWindow_ k f = lookupWindow k >>= mapM_ f

modifyWindow :: (SomeWindow a) => a -> (Window -> Window) -> HS ()
modifyWindow k f = alterWindow k (fmap f)

modifyWindow' :: (SomeWindow a, MonadEffects m, MonadHS m) => a -> (Window -> Window) -> m ()
modifyWindow' w = runInHS . modifyWindow w

alterWindow :: (SomeWindow a) => a -> (Maybe Window -> Maybe Window) -> HS ()
alterWindow k f = _windows . at (k ^. riverId) %= f

mapWindows :: (Window -> HS ()) -> HS ()
mapWindows f = use _windows >>= mapM_ f

-------------------------------------------------------------------

-- * Restart (with state)

restart :: (HasCallStack) => FilePath -> H ()
restart prog = do
    runInHS $ broadcastMessage ReleaseResources
    logInfo $ "Running exit hooks..."
    void . userCode =<< asks (view $ config . exitHook)
    statefile <- runInHS Persist.writeStateToFile
    let args = ["--state-file", statefile]
    logInfo $ "Now restarting! Executing file " <> toText prog <> "..." :# ["args" .= args]
    io =<< view _loggerCleanup
    res <- io $ try $ executeFile prog True args Nothing
    logError $
        "Uh-oh, executing the new program appears to have failed!"
            :# ["reason" .= show e | Left (e :: IOException) <- [res]]

-- | Trigger restart by signal (USR2).
sendRestart :: (MonadIO m) => m ()
sendRestart = io $ Posix.raiseSignal Posix.sigUSR2

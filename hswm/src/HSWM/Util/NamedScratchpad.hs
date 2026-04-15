-- |
-- Module      : HSWM.Util.NamedScratchpad
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.NamedScratchpad where

import Data.List qualified as L
import Data.Map qualified as M
import HSWM.Actions.Minimize
import HSWM.Core
import HSWM.Operations
import HSWM.StackSet qualified as W
import HSWM.Util.ExtensibleState qualified as XS
import HSWM.Util.RofiPrompt qualified as RP
import Text.Printf

type ScratchpadId = String

data Scratchpad = SP
  { spName :: ScratchpadId,
    spCmd :: H (),
    spQuery :: Query Bool,
    spHook :: ManageHook,
    spExclusive :: [String]
  }

-- | "mkPad name mh match launch"
mkPad :: ScratchpadId -> ManageHook -> Query Bool -> H () -> Scratchpad
mkPad nm mh q a = SP nm a q mh []

-- | Make exclusive set.
exclusive :: [Scratchpad] -> [Scratchpad]
exclusive xs = [x {spExclusive = L.delete (spName x) (map spName xs)} | x <- xs]

newtype Scratchpads = Scratchpads {xpads :: M.Map ScratchpadId Scratchpad}

instance ExtensionClass Scratchpads where
  initialValue = Scratchpads mempty

newtype ScratchpadDyn = ScratchpadDyn {dynWins :: M.Map ScratchpadId RiverWindow} deriving (Read, Show)

instance ExtensionClass ScratchpadDyn where
  initialValue = ScratchpadDyn mempty
  extensionType = PersistentExtension

-- * Actions

-- | First, minimize any pads exclusive with target.
-- Then, look for an existing instance in focused workspace.
-- If that fails, look for an instance across all windows.
toggleScratchpad :: Bool -> ScratchpadId -> H ()
toggleScratchpad createIfMissing k = do
  spads <- runInHS $ XS.gets xpads
  whenJust (M.lookup k spads) $ toggleScratchpad' createIfMissing

toggleScratchpad' :: Bool -> Scratchpad -> H ()
toggleScratchpad' createIfMissing sp@SP {spQuery = q, spHook = h} = do
  s <- runInHS $ XS.gets xpads
  case M.lookup (spName sp) s of
    Nothing -> runInHS $ XS.modify $ \x -> x {xpads = M.alter (const $ Just sp) (spName sp) (xpads x)}
    Just _ -> return ()
  toggle [x | x <- M.elems s, spName x `elem` spExclusive sp]
  where
    toggle :: [Scratchpad] -> H ()
    toggle excl = do
      runInHS $ minimizeScratchpads excl
      runInHS (withWindowSet currentWindows' >>= filterM (runQuery q)) >>= \case
        w : _ -> runInHS $ toggleWindow Nothing h w
        [] ->
          runInHS (withWindowSet (asWindows . W.allWindows) >>= filterM (runQuery q)) >>= \case
            w : _ -> runInHS $ toggleWindow Nothing h w
            []
              | createIfMissing -> spCmd sp
              | otherwise -> return ()

minimizeScratchpads :: [Scratchpad] -> HS ()
minimizeScratchpads xs = mapM_ hook =<< withWindowSet currentWindows'
  where
    hook w = runQuery (xpad' xs) w >>= maybe mempty (go w)
    go w sp = toggleWindow (Just False) (spHook sp) w

--   "Toggle scratchpad %s" name
togglePad :: ScratchpadId -> H ()
togglePad = toggleScratchpad True

-- | Don't create if missing
togglePadNoCreate :: ScratchpadId -> H ()
togglePadNoCreate = toggleScratchpad False

{-
-- | Toggle next scratchpad (cyclic)
cyclePads :: H ()
cyclePads = do
    padsAll <- runInHS $ XS.gets (M.elems . xpads)
    padsExist <- runInHS $ withWindowSet $ \wset ->
      catMaybes <$> mapM (runQuery xpad) (W.allWindows wset)
    let pads = [pad | pad <- padsAll, any ((==) (spName pad) . spName) padsExist]
    res <- withFocii $ \_ w ->
      fmap (\x -> drop 1 . dropWhile ((/=) (spName x) . spName)) <$> runQuery xpad w
    case fromMaybe id res pads of
      npad:_ -> togglePadNoCreate (spName npad)
      _      -> minimizeScratchpads pads
-}

-- | Toggle minimize/maximize of a window. See "HSWM.Actions.Minimize"
-- First argument: only maximize (True) or minimize (False).
toggleWindow :: Maybe Bool -> ManageHook -> Window -> HS ()
toggleWindow ma mh w = do
  f <- appEndo <$> runQuery mh w
  liftM2 (,) (runQuery isHidden w) inCurrentWS >>= \case
    (True, True) | ma /= Just False -> modifyWindowSet (f . W.insertUp w.river_window . W.delete' w.river_window) >> maximizeWindowAndFocus w.river_window
    (True, False) | ma /= Just False -> modifyWindowSet (W.currentTag >>= flip W.shiftWin w.river_window) >> windows f >> maximizeWindowAndFocus w.river_window
    (False, False) | ma /= Just False -> modifyWindowSet (W.currentTag >>= flip W.shiftWin w.river_window) >> windows f
    (False, True) | ma /= Just True ->
      do
        windows (W.peek >>= \w' -> if w' == Just w.river_window then W.focusUp else id)
        minimizeWindow w.river_window
        -- shift to master, so that we won't bump into the minimized window when refocusing after dead window.
        modifyWindowSet (W.peek >>= \w' -> maybe id W.focusWindow w' . W.shiftMaster . W.focusWindow w.river_window)
    _ -> return ()
  where
    inCurrentWS = withWindowSet (return . elem w.river_window . currentWindows)
    isHidden = isMinimized

-- * Hooks

scratchpadsStartupHook :: [Scratchpad] -> HS ()
scratchpadsStartupHook pads = do
  mapM_ (`dynPadSet'` Nothing) pads

-- * ManageHooks

managePads :: MaybeManageHook
managePads = xpad >>= flip whenJust' padManageHook

whenJust' :: Maybe a -> (a -> MaybeManageHook) -> MaybeManageHook
whenJust' Nothing _ = return Nothing
whenJust' (Just a) f = f a

padManageHook :: Scratchpad -> MaybeManageHook
padManageHook sp = spQuery sp -?> spHook sp

xpad :: Query (Maybe Scratchpad)
xpad = liftHS (XS.gets xpads) >>= xpad' . M.elems

xpad' :: [Scratchpad] -> Query (Maybe Scratchpad)
xpad' = go
  where
    go (x : xs) = spQuery x >>= \r -> if r then pure (Just x) else go xs
    go [] = return Nothing

{-
-- * Dynamic

dynUpdateFocusedWindow :: ScratchpadId -> "Set ad-hoc scratchpad with focused window" :? HS ()
dynUpdateFocusedWindow k = cmdT $ dynPadToggleFocused k

dynPadToggleFocused :: ScratchpadId -> HS ()
dynPadToggleFocused k = do
    cur <- dynPadCurrent k
    withFocused $ \foc -> dynPadSet k $ if Just foc == cur then Nothing else Just foc
-}

dynPadSet :: ScratchpadId -> Maybe Window -> H ()
dynPadSet k w = do
    old <- runInHS $ dynPadCurrent k
    runInHS $ XS.modify $ \s -> s { dynWins = M.alter (const $ fmap (\x -> x.river_window) w) k (dynWins s) }
    runInHS $ forM_ old (`withWindow` toggleWindow (Just True) idHook)
    whenJust w (\_ -> togglePadNoCreate k)

dynPadSet' :: Scratchpad -> Maybe RiverWindow -> HS ()
dynPadSet' sp w = do
  XS.modify $ \s -> s {xpads = M.alter (const $ Just sp) (spName sp) (xpads s)}
  XS.modify $ \s -> s {dynWins = M.alter (const w) (spName sp) (dynWins s)}

dynPadCurrent :: ScratchpadId -> HS (Maybe RiverWindow)
dynPadCurrent k = XS.gets $ M.lookup k . dynWins

-- | Pad with no static launch action. Use the provided action to bind to an existing window.
mkPadDyn :: ScratchpadId -> RP.RofiPromptConfig -> ManageHook -> Scratchpad
mkPadDyn nm rpc mh = mkPad nm mh q a
  where q = liftHS (dynPadCurrent nm) >>= \mw -> asks (\x -> Just x.river_window) =? mw
        a = dynDefaultPrompt rpc nm
        -- a = dynPadToggleFocused nm

-- | Add a launch action to a dynamic pad. It prompts for confirmation to bind focused window to the pad.
dynDefaultPrompt :: RP.RofiPromptConfig -> ScratchpadId -> H ()
dynDefaultPrompt rpc k = do
  mfoc <- runInHS $ gets windowset >>= maybe (return Nothing) lookupWindow . W.peek
  case mfoc of
    Just foc -> do
      let text = printf "%s: Bind window %s '%s'" k (show foc.river_window) foc.title
      RP.confirmPrompt rpc text (dynPadSet k (Just foc))

    Nothing -> return ()

-- * Misc.

currentWindows :: W.StackSet i l a wd sid sd -> [a]
currentWindows = W.integrate' . W.stack . W.workspace . W.current

currentWindows' :: W.StackSet i l RiverWindow wd sid sd -> HS [Window]
currentWindows' ws = do
  let cur = currentWindows ws
  wins <- gets _windows
  return [w | rw <- cur, Just w <- [M.lookup rw wins]]

asWindows :: [RiverWindow] -> HS [Window]
asWindows cur = do
  wins <- gets _windows
  return [w | rw <- cur, Just w <- [M.lookup rw wins]]

--
-- -- * Prompts & completion
--
-- -- scratchpadCompl :: [Scratchpad] -> XP.ComplFunction
-- scratchpadCompl xpc pads = XP.mkComplFunFromList' xpc (map spName pads)

{-# LANGUAGE PatternGuards #-}
{-# LANGUAGE ScopedTypeVariables #-}

-----------------------------------------------------------------------------

-----------------------------------------------------------------------------

-- |
-- Module      :  HSWM.Actions.CycleRecentWS
-- Description :  Cycle through most recently used workspaces.
-- Copyright   :  (c) Michal Janeczek <janeczek@gmail.com>
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  Michal Janeczek <janeczek@gmail.com>
-- Stability   :  unstable
-- Portability :  unportable
--
-- Provides bindings to cycle through most recently used workspaces
-- with repeated presses of a single key (as long as modifier key is
-- held down). This is similar to how many window managers handle
-- window switching.
module HSWM.Actions.CycleRecentWS
  ( -- * Usage
    -- $usage
    cycleRecentWS,
    cycleRecentNonEmptyWS,
    cycleWindowSets,
    toggleRecentWS,
    toggleRecentNonEmptyWS,
    toggleWindowSets,
    recentWS,
  )
where

-- import HSWM.Actions.Repeatable (repeatableSt)

import Data.Enum (pred, succ)
import Data.List (splitAt, (!!))
import HSWM hiding (screen, view, workspaces)
import HSWM.StackSet hiding (filter, modify)
import HSWM.Util.GrabKeyboard
import Prelude hiding (view)

-- $usage
-- You can use this module with the following in your @xmonad.hs@ file:
--
-- > import HSWM.Actions.CycleRecentWS
-- >
-- >   , ((modm, xK_Tab), cycleRecentWS [xK_Alt_L] xK_Tab xK_grave)
--
-- For detailed instructions on editing your key bindings, see
-- <https://xmonad.org/TUTORIAL.html#customizing-xmonad the tutorial>.

-- | Cycle through most recent workspaces with repeated presses of a key, while
--   a modifier key is held down. The recency of workspaces previewed while browsing
--   to the target workspace is not affected. That way a stack of most recently used
--   workspaces is maintained, similarly to how many window managers handle window
--   switching. For best effects use the same modkey+key combination as the one used
--   to invoke this action.
cycleRecentWS ::
  -- | A list of modifier keys used when invoking this action.
  --   As soon as one of them is released, the final switch is made.
  [KeySym] ->
  -- | Key used to switch to next (less recent) workspace.
  KeySym ->
  -- | Key used to switch to previous (more recent) workspace.
  --   If it's the same as the nextWorkspace key, it is effectively ignored.
  KeySym ->
  H ()
cycleRecentWS = cycleWindowSets $ recentWS (const True)

-- | Like 'cycleRecentWS', but restricted to non-empty workspaces.
cycleRecentNonEmptyWS ::
  -- | A list of modifier keys used when invoking this action.
  --   As soon as one of them is released, the final switch is made.
  [KeySym] ->
  -- | Key used to switch to next (less recent) workspace.
  KeySym ->
  -- | Key used to switch to previous (more recent) workspace.
  --   If it's the same as the nextWorkspace key, it is effectively ignored.
  KeySym ->
  H ()
cycleRecentNonEmptyWS = cycleWindowSets $ recentWS (not . null . stack)

-- | Switch to the most recent workspace. The stack of most recently used workspaces
-- is updated, so repeated use toggles between a pair of workspaces.
toggleRecentWS :: HS ()
toggleRecentWS = toggleWindowSets $ recentWS (const True)

-- | Like 'toggleRecentWS', but restricted to non-empty workspaces.
toggleRecentNonEmptyWS :: HS ()
toggleRecentNonEmptyWS = toggleWindowSets $ recentWS (not . null . stack)

-- | Given a predicate @p@ and the current 'WindowSet' @w@, create a
-- list of workspaces to choose from. They are ordered by recency and
-- have to satisfy @p@.
recentWS ::
  -- | A workspace predicate.
  (WindowSpace -> Bool) ->
  -- | The current WindowSet
  WindowSet ->
  [WorkspaceId]
recentWS p w =
  map tag $
    filter p $
      map workspace (visible w)
        ++ hidden w
        ++ [workspace (current w)]

-- | Cycle through a finite list of workspaces with repeated presses of a key, while
--   a modifier key is held down. For best effects use the same modkey+key combination
--   as the one used to invoke this action.
cycleWindowSets ::
  -- | A function used to create a list of workspaces to choose from
  (WindowSet -> [WorkspaceId]) ->
  -- | A list of modifier keys used when invoking this action.
  --   As soon as one of them is released, the final workspace is chosen and the action exits.
  [KeySym] ->
  -- | Key used to preview next workspace from the list of generated options
  KeySym ->
  -- | Key used to preview previous workspace from the list of generated options.
  --   If it's the same as nextOption key, it is effectively ignored.
  KeySym ->
  H ()
cycleWindowSets genOptions holdMods keyNext keyPrev = do
  (options, unView') <- runInHS $ gets $ (genOptions &&& unView) . windowset
  let previewWS i = do
        logInfo $ "[cyclews] previewing " <> fromString (show i)
        runInHS $ windows (view (options !! (i `mod` n)) . unView')
        manageDirty
        where
          n = length options

      process s (Right GK {..})
        | state > 0, keysym == fi keyNext = previewWS (succ s) >> pure (Right (succ s))
        | state > 0, keysym == fi keyPrev = previewWS (pred s) >> pure (Right (pred s))
        | otherwise = pure (Right s)
      process s (Right GMod {..})
        | mods == 0 = pure (Left Done)
        | otherwise = pure (Right s)
      process _ Left {} = pure (Left Done)

  Just rs <- asks thisSeat
  Just seat <- runInHS $ lookupSeat rs
  previewWS 0
  withKeyboardGrab seat holdMods [keyNext, keyPrev] process 0

-- | Given an old and a new 'WindowSet', which is __exactly__ one
-- 'view' away from the old one, restore the workspace order of the
-- former inside of the latter.  This respects any new state that the
-- new 'WindowSet' may have accumulated.
unView ::
  forall i l a wd s sd.
  (Eq i, Eq s) =>
  StackSet i l a wd s sd -> StackSet i l a wd s sd -> StackSet i l a wd s sd
unView w0 w1 = fixOrderH . fixOrderV . view' (currentTag w0) $ w1
  where
    view' = if screen (current w0) == screen (current w1) then greedyView else view
    fixOrderV w
      | v : vs <- visible w = w {visible = insertAt (pfxV (visible w0) vs) v vs}
      | otherwise = w
    fixOrderH w
      | h : hs <- hidden w = w {hidden = insertAt (pfxH (hidden w0) hs) h hs}
      | otherwise = w
    pfxV = commonPrefix `on` fmap (tag . workspace)
    pfxH = commonPrefix `on` fmap tag

    insertAt :: Int -> x -> [x] -> [x]
    insertAt n x xs = let (l, r) = splitAt n xs in l ++ [x] ++ r

    commonPrefix :: (Eq x) => [x] -> [x] -> Int
    commonPrefix a b = length $ takeWhile id $ zipWith (==) a b

-- | Given some function that generates a list of workspaces from a
-- given 'WindowSet', switch to the first generated workspace.
toggleWindowSets :: (WindowSet -> [WorkspaceId]) -> HS ()
toggleWindowSets genOptions = do
  options <- gets $ genOptions . windowset
  case options of
    [] -> return ()
    o : _ -> windows (view o)

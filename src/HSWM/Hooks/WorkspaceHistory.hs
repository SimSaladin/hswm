{-# LANGUAGE DerivingVia #-}
-----------------------------------------------------------------------------
-- |
-- Module      :  HSWM.Hooks.WorkspaceHistory
-- Description :  Keep track of workspace viewing order.
-- Copyright   :  (c) 2013 Dmitri Iouchtchenko
-- License     :  BSD3-style (see LICENSE)
--
-- Maintainer  :  Dmitri Iouchtchenko <johnnyspoon@gmail.com>
-- Stability   :  unstable
-- Portability :  unportable
--
-- Keeps track of workspace viewing order.
--
-----------------------------------------------------------------------------

module HSWM.Hooks.WorkspaceHistory (
      -- * Usage
      -- $usage
      -- * Hooking
    workspaceHistoryHook
  , workspaceHistoryHookExclude
      -- * Querying
  , workspaceHistory
  , workspaceHistoryByScreen
  , workspaceHistoryWithScreen
    -- * Handling edits
  , workspaceHistoryTransaction
  , workspaceHistoryModify
  ) where

import Control.DeepSeq

import HSWM
import HSWM.StackSet hiding (delete, filter, new)
import qualified HSWM.Util.ExtensibleState as XS
import qualified Data.List as L

-- $usage
-- To record the order in which you view workspaces, you can use this
-- module with the following in your @xmonad.hs@:
--
-- > import HSWM.Hooks.WorkspaceHistory (workspaceHistoryHook)
--
-- Then add the hook to your 'logHook':
--
-- >  main = xmonad $ def
-- >      { ...
-- >      , logHook = ... >> workspaceHistoryHook >> ...
-- >      , ...
-- >      }
--
-- If you want to completely exclude certain workspaces from entering
-- the history, you can use 'workspaceHistoryHookExclude' instead.  For
-- example, to ignore the named scratchpad workspace:
--
-- > import HSWM.Util.NamedScratchpad (scratchpadWorkspaceTag)
-- > ...
-- > , logHook = ... >> workspaceHistoryHookExclude [scratchpadWorkspaceTag] >> ...
--
-- To make use of the collected data, a query function is provided.

newtype WorkspaceHistory = WorkspaceHistory
  { history :: [(ScreenId, WorkspaceId)] -- ^ Workspace Screens in
                                         -- reverse-chronological order.
  }
  deriving (Read, Show)
  deriving NFData via [(Int, WorkspaceId)]

instance ExtensionClass WorkspaceHistory where
    initialValue = WorkspaceHistory []
    extensionType = PersistentExtension

-- | A 'logHook' that keeps track of the order in which workspaces have
-- been viewed.
workspaceHistoryHook :: H ()
workspaceHistoryHook = workspaceHistoryHookExclude []

-- | Like 'workspaceHistoryHook', but with the ability to exclude
-- certain workspaces.
workspaceHistoryHookExclude :: [WorkspaceId] -> H ()
workspaceHistoryHookExclude ws = XS.modify' . update =<< gets windowset
  where
    update :: WindowSet -> WorkspaceHistory -> WorkspaceHistory
    update s = force . updateLastActiveOnEachScreenExclude ws s

workspaceHistoryWithScreen :: H [(ScreenId, WorkspaceId)]
workspaceHistoryWithScreen = XS.gets history

workspaceHistoryByScreen :: H [(ScreenId, [WorkspaceId])]
workspaceHistoryByScreen =
  map (\wss -> (maybe 0 fst (listToMaybe wss), map snd wss)) .
  L.groupBy (\a b -> fst a == fst b) .
  L.sortBy (\a b -> compare (fst a) $ fst b)<$>
  workspaceHistoryWithScreen

-- | A list of workspace tags in the order they have been viewed, with the
-- most recent first. No duplicates are present, but not all workspaces are
-- guaranteed to appear, and there may be workspaces that no longer exist.
workspaceHistory :: H [WorkspaceId]
workspaceHistory = L.nub . map snd <$> XS.gets history

workspaceHistoryTransaction :: H () -> H ()
workspaceHistoryTransaction action = do
  startingHistory <- XS.gets history
  action
  new <- flip updateLastActiveOnEachScreen (WorkspaceHistory startingHistory) <$> gets windowset
  XS.put $! force new

-- | Update the last visible workspace on each monitor if needed
-- already there, or move it to the front if it is.
updateLastActiveOnEachScreen :: WindowSet -> WorkspaceHistory -> WorkspaceHistory
updateLastActiveOnEachScreen = updateLastActiveOnEachScreenExclude []

-- | Like 'updateLastActiveOnEachScreen', but with the ability to
-- exclude certain workspaces.
updateLastActiveOnEachScreenExclude :: [WorkspaceId] -> WindowSet -> WorkspaceHistory -> WorkspaceHistory
updateLastActiveOnEachScreenExclude ws StackSet {current = cur, visible = vis} wh =
  WorkspaceHistory { history = doUpdate cur $ foldl' updateLastForScreen (history wh) $ vis ++ [cur] }
  where
    firstOnScreen sid = L.find ((== sid) . fst)
    doUpdate Screen {workspace = Workspace { tag = wid }, screen = sid} curr =
      let newEntry = (sid, wid)
       in if wid `elem` ws then curr else newEntry : L.delete newEntry curr
    updateLastForScreen curr Screen {workspace = Workspace { tag = wid }, screen = sid} =
      let newEntry = (sid, wid)
          alreadyCurrent = Just newEntry == firstOnScreen sid curr
      in if alreadyCurrent || wid `elem` ws then curr else newEntry : L.delete newEntry curr

-- | Modify a the workspace history with a given pure function.
workspaceHistoryModify :: ([(ScreenId, WorkspaceId)] -> [(ScreenId, WorkspaceId)]) -> H ()
workspaceHistoryModify action = XS.modify' $ force . WorkspaceHistory . action . history

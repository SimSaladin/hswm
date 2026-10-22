-- |
-- Module      : HSWM.Prompt.Workspaces
-- Description : Workspace prompts
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Prompt.Workspaces where

import Data.List qualified as L
import HSWM
import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Actions.DynamicWorkspaces qualified as DynWS
import HSWM.StackSet qualified as W
import HSWM.Util.RofiPrompt qualified as RP

-- | Go to workspace
workspacePrompt :: RP.RofiPromptConfig' -> H ()
workspacePrompt pc =
  mkWorkspacePrompt
    (\_ _ -> pc{RP.prompt = "Go to workspace"})
    ( \_ input -> do
        logInfo $ "switching workspace" :# ["tag" .= input]
        exist <- runInHS $ do
          windows $ W.view input
          withWindowSet (return . W.tagMember input)
        if exist
          then manageDirty
          else handleNotExists input
    )
    pc
  where
    handleNotExists tag = do
      RP.confirmPrompt (pc @[String]) ("Create new workspace '" ++ tag ++ "'?") $ runInHS $ do
        -- modifySeats (const True) $ \s -> s { suppressChangeFocus = 2 }
        DynWS.addWorkspace tag
        manageDirty

renameWorkspacePrompt :: RP.RofiPromptConfig' -> H ()
renameWorkspacePrompt =
  mkWorkspacePrompt
    (\pc curTag -> pc{RP.prompt = "Rename workspace '" ++ curTag ++ "'"})
    ( \old input -> runInHS $ do
        DWO.updateName old input
        DynWS.renameWorkspaceByName input
    )

addWorkspacePrompt :: RP.RofiPromptConfig' -> H ()
addWorkspacePrompt =
  mkWorkspacePrompt
    (\pc _ -> pc{RP.prompt = "Add new workspace"})
    ( \_ input -> do
        runInHS $ do
          modifySeats (const True) $ \s -> s{suppressChangeFocus = 2}
          DynWS.addWorkspace input
        manageDirty
    )

mkWorkspacePrompt ::
  (RP.RofiPromptConfig' -> WorkspaceId -> RP.RofiPromptConfig')
  -> (WorkspaceId -> String -> H a)
  -> RP.RofiPromptConfig'
  -> H ()
mkWorkspacePrompt prompt apply rofiPrompt = do
  wsComp <- runInHS DWO.getWsCompareByOrder
  (curTag, (hiddenTags, visibleTags)) <- runInHS $ withWindowSet $ return . (W.currentTag &&& map W.tag . W.hidden &&& map (W.tag . W.workspace) . W.visible)
  let allTags =
        [RP.fromContent curTag & RP.active .~ True & RP.nonselectable .~ True]
          ++ [RP.fromContent t & RP.active .~ True | t <- visibleTags]
          ++ [RP.fromContent t | t <- hiddenTags]
      sorted = L.sortBy (wsComp `on` view RP.content) allTags
  RP.runRofi (prompt rofiPrompt curTag) sorted >>= (`whenJust` doApply curTag)
  where
    doApply cur input = do
      _ <- apply cur input
      view (config . logHook) >>= void . userCode

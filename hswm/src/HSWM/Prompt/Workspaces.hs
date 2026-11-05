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
import HSWM hiding ((-->>))
import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Actions.DynamicWorkspaces qualified as DynWS
import HSWM.Prompt.Confirm
import HSWM.StackSet qualified as W
import HSWM.Util.RofiPrompt
import HSWM.Util.RofiPrompt qualified as RP

type WorkspacePrompt = RofiPromptConfig [(WorkspaceId, InputRowAttrs)] 's'

-- | Go to workspace
workspacePrompt :: WorkspacePrompt -> H ()
workspacePrompt pc =
  mkWorkspacePrompt
    (\pc' _ -> pc' & prompt .~ "Go to workspace")
    ( \_ input -> do
        logInfo $ "switching workspace" :# ["tag" .= input]
        exist <- runInHS $ do
          windows $ W.view input
          withWindowSet (return . W.tagMember input)
        if exist then manageDirty else handleNotExists input
    )
    pc
  where
    handleNotExists tag = do
      confirmPrompt @[String] (pc & RP.clearTypeParams) ("Create new workspace '" ++ tag ++ "'?") $ runInHS $ do
        -- modifySeats (const True) $ \s -> s { suppressChangeFocus = 2 }
        DynWS.addWorkspace tag
        manageDirty

renameWorkspacePrompt :: WorkspacePrompt -> H ()
renameWorkspacePrompt =
  mkWorkspacePrompt
    (\pc curTag -> pc & prompt .~ "Rename workspace '" ++ curTag ++ "'")
    ( \old input -> runInHS $ do
        DWO.updateName old input
        DynWS.renameWorkspaceByName input
    )

addWorkspacePrompt :: WorkspacePrompt -> H ()
addWorkspacePrompt =
  mkWorkspacePrompt
    (\pc _ -> pc & prompt .~ "Add new workspace")
    ( \_ input -> do
        runInHS $ do
          modifySeats (const True) $ \s -> s{suppressChangeFocus = 2}
          DynWS.addWorkspace input
        manageDirty
    )

mkWorkspacePrompt ::
  (WorkspacePrompt -> WorkspaceId -> WorkspacePrompt)
  -> (WorkspaceId -> String -> H a)
  -- ^ Thing to do with ws
  -> WorkspacePrompt
  -> H ()
mkWorkspacePrompt mkPrompt apply rofiPrompt = do
  wsComp <- runInHS DWO.getWsCompareByOrder
  (curTag, (hiddenTags, visibleTags)) <- runInHS $ withWindowSet $ return . (W.currentTag &&& map W.tag . W.hidden &&& map (W.tag . W.workspace) . W.visible)
  let allTags =
        [(curTag, def & RP.active .~ True & RP.nonselectable .~ True :: RP.InputRowAttrs)]
          ++ [(t, def & RP.active .~ True) | t <- visibleTags]
          ++ [(t, def) | t <- hiddenTags]
      sorted = L.sortBy (wsComp `on` fst) allTags
  void $ sorted -->> mkPrompt rofiPrompt curTag :-->> doApply curTag
  where
    doApply cur input = do
      _ <- apply cur input
      view (config . logHook) >>= void . userCode

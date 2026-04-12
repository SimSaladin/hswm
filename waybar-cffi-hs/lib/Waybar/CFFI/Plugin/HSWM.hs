{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedRecordDot #-}

-- |
-- Module      : Waybar.CFFI.Plugin.HSWM
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Longer description of this module.
module Waybar.CFFI.Plugin.HSWM where

import Control.Monad
import Control.Monad.Fix
import Data.Char (isDigit)
import Data.GI.Base.Attributes
import Data.List qualified as L
import Data.Maybe
import Data.String
import Data.Text qualified as T
import qualified Data.Map as M
import GHC.OverloadedLabels
import GHC.Records
import GI.Gtk as Gtk
import HSWM (ScreenId, def)
import HSWM.Util.IPC (ProtoMsg (..), WindowInfo (..), WorkspaceInfo(..), WsId, clientRun)
import Waybar.CFFI.Plugin.Base
import Control.Monad.Logger.Aeson hiding (Message)
import qualified Data.Aeson.KeyMap as A
import RIO.Prelude
import RIO.Prelude.Types
import RIO (Async, IORef, readIORef, cancel, writeIORef, liftIO, threadDelay, modifyIORef, async, newIORef)
import Text.Printf

runMIO = runStdoutLoggingT

type MIO = LoggingT IO

data MyMod = MyMod
  { -- | GtkBox* container
    topContainer :: !Box,
    workspacesContainer :: !Box,
    layoutWidget, focusInfoWidget :: !Label,
    stRef :: !(IORef ModState),
    wmThread :: !(Async ())
  }
  deriving (Generic)

data ModState = ModState
  { tagWidgets :: [Label],
    thisOutputName :: !T.Text,
    outputs :: [(Text, ScreenId)],
    workspaces :: WSList,
    curfocus :: Maybe WindowInfo
  }

data WSList = WSList
  { wsNames :: [(WsId, Text)] -- ^ the correct sort order (+ keyhint)
  , wsFocused :: (ScreenId, WorkspaceInfo)
  , wsVisible :: [(ScreenId, WorkspaceInfo)]
  , wsHidden :: [WorkspaceInfo]
  }

-- |
-- @
--   box()#hsvm.module
--     box().workspaces
--       label().workspace.[|visible|focused]
--                            {text:format-workspace =? "{name}"}
--                            {tooltip:...}
--       *
--       *
--     label().current-layout {text:format-layout =? "{name}"}
--                            {tooltip:...}
--     label().focused-window {text:format-focused-window =? "{title}"}
--                            {tooltip:...}
-- @
instanceNew :: IConf a -> IO MyMod
instanceNew iconf@IConf {..} =
  runMIO $ do
    logInfo $ "cffi_hswm: init config: waybar " :# [ "version" .= fromString wbVersion ]
    logInfo $ "plugin settings" :# [ k .= v | (k,v) <- A.toList configs ]

    -- Add a container for displaying the next widgets
    topContainer <- boxNew OrientationHorizontal 5
    widgetSetName topContainer "hswm"
    sc <- widgetGetStyleContext topContainer
    styleContextAddClass sc "module"
    containerAdd rootWidget topContainer

    workspacesContainer <- boxNew OrientationHorizontal 5
    sc' <- widgetGetStyleContext workspacesContainer
    styleContextAddClass sc' "workspaces"
    containerAdd topContainer workspacesContainer

    layoutWidget <- labelNew (Just "Loading...")
    sc'' <- widgetGetStyleContext layoutWidget
    styleContextAddClass sc'' "current-layout"
    containerAdd topContainer layoutWidget

    focusInfoWidget <- labelNew Nothing
    sc''' <- widgetGetStyleContext focusInfoWidget
    styleContextAddClass sc''' "focused-window"
    containerAdd topContainer focusInfoWidget

    stRef <- newIORef $ ModState [] "" mempty (WSList [] (minBound,error "empty wsi") [] []) Nothing
    res <- lift . mfix $ \myMod -> do
      _ <- async $ runMIO $ updateOutputName iconf myMod
      wmThread <- async $ runMIO $ connectToWM (handleMsg iconf myMod)
      return MyMod {..}

    logDebug "Instance created"
    return res

connectToWM :: (ProtoMsg -> MIO ()) -> MIO ()
connectToWM onMsg = do
  logInfo "Connecting..."
  flip runReaderT () $ clientRun def (lift . onMsg) (\_say -> forever $ threadDelay maxBound)

handleMsg :: IConf a -> MyMod -> ProtoMsg -> MIO ()
handleMsg _ _ Identify {} = pure ()
handleMsg _ m OutputInfo {..} = modifyIORef (stRef m) $ \s -> s {outputs}

handleMsg ic m WsInfo {..} = do
  modifyIORef (stRef m) $ \s -> s {workspaces = WSList wsNames wsFocused wsVisible wsHidden}
  liftIO $ queueUpdate ic

handleMsg ic m FocusedWindow {window} = do
  modifyIORef (stRef m) $ \s -> s {curfocus = Just window}
  liftIO $ queueUpdate ic

handleMsg _ _ msg = logWarn $ "unhandled incoming message" :# [ "msg" .= show msg ]

-- | Wait for the waybar window to be created, then sniff out the assigned screen name.
updateOutputName :: IConf a -> MyMod -> MIO ()
updateOutputName ic m = do
  threadDelay 1000000
  rootPath <- widgetGetPath (topContainer m)
  classes <- widgetPathIterListClasses rootPath 0
  case filter check classes of
    [] -> logError "Could not determine output name name!"
    name : _ -> do
      logInfo $ fromString $ "output name detected: " ++ T.unpack name
      modifyIORef (stRef m) $ \s -> s {thisOutputName = name}
      liftIO $ queueUpdate ic
  where
    check s
      | Just ('-', x) <- T.uncons (T.takeEnd 2 s), Just (n, _) <- T.uncons x = isDigit n
      | otherwise = False

updateWorkspaces :: MyMod -> MIO ()
updateWorkspaces m = do
  st <- readIORef (stRef m)

  let WSList tags focused@(foScreen, foWSI) visible hidden = workspaces st

      thisScreen = fromMaybe maxBound (L.lookup (thisOutputName st) st.outputs)

      add (tag, hint) = do
        l <- labelNew (Just "")
        sc <- widgetGetStyleContext l
        styleContextAddClass sc "workspace"
        containerAdd (workspacesContainer m) l
        widgetShow l
        return l

      remove = widgetDestroy

      setWidgetWSI sc w screen WorkspaceInfo{tag, layout, windowList} = do
        let wcount = length windowList
        if wcount > 0
           then styleContextRemoveClass sc "empty"
           else styleContextAddClass sc "empty"
        set w [ #tooltipMarkup := T.intercalate "\r"
                [ maybe "" ((<> " - ") . tshow . fromEnum) screen <> maybe "?" fst (L.find (\(_, b) -> Just b == screen) st.outputs)
                , "Windows: " <> T.pack (if wcount > 0 then show wcount else "(none)")
                , "Layout: " <> layout ] ]

  -- Create new
  newTags <- forM (drop (length (tagWidgets st)) tags) add

  -- Destroy deleted
  forM_ (drop (length tags) (tagWidgets st)) remove

  let tagWidgets' = take (length tags) (tagWidgets st) ++ newTags

  forM_ (zip tags tagWidgets') $ \((tag, hint), w) -> do

    labelSetMarkup w (T.pack $ printf "<span>%s:</span>%s" hint tag)

    sc <- widgetGetStyleContext w

    if
      | tag == foWSI.tag,
        thisScreen == foScreen -> do
          styleContextAddClass sc "focused"
          styleContextRemoveClass sc "visible"
          labelSetText (layoutWidget m) foWSI.layout
          setWidgetWSI sc w (Just foScreen) foWSI

      | (screen, wsi) : _ <- [x | x@(_, wsi) <- focused : visible, wsi.tag == tag] -> do
          styleContextAddClass sc "visible"
          styleContextRemoveClass sc "focused"
          setWidgetWSI sc w (Just screen) wsi
          when (screen == thisScreen) $
            labelSetText (layoutWidget m) wsi.layout

      | wsi : _ <- [wsi | wsi <- hidden, wsi.tag == tag] -> do
          styleContextRemoveClass sc "visible"
          styleContextRemoveClass sc "focused"
          clear w #tooltipMarkup
          setWidgetWSI sc w Nothing wsi

      | otherwise -> return ()

  writeIORef m.stRef st {tagWidgets = tagWidgets'}

updateFocusInfo :: MyMod -> MIO ()
updateFocusInfo MyMod {..} = do
  st <- readIORef stRef
  case curfocus st of
    Just WindowInfo {..} -> do
      labelSetText focusInfoWidget title
      widgetSetTooltipMarkup focusInfoWidget $ Just $ title <> " - " <> appId <> maybe "" (\i -> "(PID: " <> tshow i <> ")") pid
    Nothing -> do
      labelSetText focusInfoWidget ""
      widgetSetTooltipMarkup focusInfoWidget Nothing

instanceDestroy :: IConf MyMod -> IO ()
instanceDestroy ic@IConf {instanceData = MyMod {..}} = runMIO $ do
  logInfo "Shutting down.."
  cancel wmThread
  widgetDestroy topContainer

-- | Update the UI
updateDo :: IConf MyMod -> IO ()
updateDo ic@IConf {..} = runMIO $ updateWorkspaces instanceData >> updateFocusInfo instanceData

-- | Handle signal which was propagated by waybar (reload, etc.)
signalDo :: IConf MyMod -> Int -> IO ()
signalDo _ _ = pure ()

-- | Trigger a module action
actionDo :: IConf MyMod -> String -> IO ()
actionDo ic actStr = runMIO $ do
  logWarn $ fromString $ "unhandled module action: " <> fromString actStr

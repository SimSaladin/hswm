{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE RebindableSyntax #-}

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

import           Control.Monad
import           Control.Monad.Fix
import           Data.Char (isDigit)
import qualified Data.List as L
import           Data.Maybe
import           Data.String
import qualified Data.Text as T
import           GHC.OverloadedLabels
import           GHC.Records
import           RIO hiding (set)

import           GI.Gtk as Gtk
import           Data.GI.Base.Attributes

import           HSWM (ScreenId, def)
import           HSWM.Util.IPC (ProtoMsg(..), WindowInfo(..), clientRun)
import           Waybar.CFFI.Plugin.Base
-- import qualified RIO as RIO

type MIO = ReaderT LogFunc IO

data MyMod = MyMod
  { -- | GtkBox* container
    topContainer :: !Box,
    workspacesContainer :: !Box,
    layoutWidget, focusInfoWidget :: !Label,
    stRef :: !(IORef ModState),
    wmThread :: !(Async ()),
    logFunc :: !LogFunc
  }
  deriving (Generic)

data ModState = ModState
  { tagWidgets :: [Label]
  , thisOutputName :: !T.Text
  , outputs :: [(Text, ScreenId)]
  , workspaces :: !(Maybe ([String], (String, ScreenId, T.Text), [(String, ScreenId, T.Text)]))
  , curfocus :: Maybe WindowInfo
  }

runMIO :: IConf MyMod -> MIO a -> IO a
runMIO ic a = runReaderT a ic.instanceData.logFunc

instanceNew :: IConf a -> IO MyMod
instanceNew iconf@IConf {..} = do
  logOpts <- RIO.logOptionsHandle RIO.stderr True <&> setLogUseLoc False . setLogUseTime False
  RIO.withLogFunc logOpts $ \logFunc -> flip RIO.runReaderT logFunc $  do
    logInfo $ "cffi_hswm: init config: waybar " <> fromString wbVersion <> " :: config entries " <> display (length configs) <> ":"
    logInfo $ "configs: " <> displayShow configs

    -- Add a container for displaying the next widgets
    topContainer <- boxNew OrientationHorizontal 5
    widgetSetName topContainer "hswm"
    sc <- widgetGetStyleContext topContainer
    styleContextAddClass sc "module"
    containerAdd rootWidget topContainer

    workspacesContainer <- boxNew OrientationHorizontal 5
    containerAdd topContainer workspacesContainer

    layoutWidget <- labelNew (Just "Loading...")
    containerAdd topContainer layoutWidget

    focusInfoWidget <- labelNew Nothing
    containerAdd topContainer focusInfoWidget

    stRef <- newIORef $ ModState [] "" mempty Nothing Nothing

    res <- mfix $ \myMod -> do
      _ <- async $ updateOutputName iconf myMod
      wmThread <- async $ connectToWM (handleMsg iconf myMod)
      return MyMod {..}
    logDebug "Instance created"
    return res

connectToWM :: (ProtoMsg -> MIO ()) -> MIO ()
connectToWM onMsg = do
    logInfo "Connecting..."
    clientRun def onMsg (\_say -> forever $ threadDelay maxBound)

handleMsg :: IConf a -> MyMod -> ProtoMsg -> MIO ()
handleMsg _  _ Identify{} = pure ()
handleMsg _  m OutputInfo{..} = modifyIORef (stRef m) $ \s -> s { outputs }
handleMsg ic m WsInfo{..} = do
  modifyIORef (stRef m) $ \s -> s { workspaces = Just (wsNames, wsFocused, wsVisible) }
  liftIO $ queueUpdate ic
handleMsg ic m FocusedWindow{window} = do
  modifyIORef (stRef m) $ \s -> s { curfocus = Just window }
  liftIO $ queueUpdate ic
handleMsg _ _ msg = logWarn $ "unhandled incoming message: " <> fromString (show msg)

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
      modifyIORef (stRef m) $ \s -> s { thisOutputName = name }
      liftIO $ queueUpdate ic
  where
    check s
      | Just ('-', x) <- T.uncons (T.takeEnd 2 s), Just (n, _) <- T.uncons x = isDigit n
      | otherwise = False

updateWorkspaces :: MyMod -> MIO ()
updateWorkspaces m = do
  st <- readIORef (stRef m)
  case workspaces st of
    Nothing -> logWarn "No workspaces found!"
    Just (tags, (focusedTag, focusedScreen, focusedLayout), visibleTags) -> do

      let thisScreen = fromMaybe maxBound (L.lookup (thisOutputName st) st.outputs)
          add tag = do
            l <- labelNew (Just $ T.pack tag)
            sc <- widgetGetStyleContext l
            styleContextAddClass sc "workspace"
            containerAdd (workspacesContainer m) l
            widgetShow l
            return l
          remove = widgetDestroy

      -- create new
      newTags <- forM (drop (length (tagWidgets st)) tags) add
      -- destroy deleted
      forM_ (drop (length tags) (tagWidgets st)) remove

      let tagWidgets' = take (length tags) (tagWidgets st) ++ newTags

      forM_ (zip tags tagWidgets') $ \(tag, w) -> do
        setLabelLabel w (T.pack tag)
        sc <- widgetGetStyleContext w
        if | tag == focusedTag, thisScreen == focusedScreen -> do
              styleContextAddClass sc "focused"
              styleContextRemoveClass sc "visible"
              labelSetText (layoutWidget m) focusedLayout
              set w [ #tooltipMarkup := T.intercalate "\r"
                [ "Output: " <> maybe "?" fst (L.find (\(_,b) -> b == thisScreen) st.outputs)
                , "Layout: " <> focusedLayout ] ]
           | (_, screen, layout) : _ <- [ x | x@(vtag, _, _) <- visibleTags, vtag == tag ] -> do
              styleContextAddClass sc "visible"
              styleContextRemoveClass sc "focused"
              set w [ #tooltipMarkup := T.intercalate "\r"
                [ "Output: " <> maybe "?" fst (L.find (\(_,b) -> b == screen) st.outputs)
                , "Layout: " <> layout ] ]
           | otherwise -> do
              styleContextRemoveClass sc "visible"
              styleContextRemoveClass sc "focused"
              clear w #tooltipMarkup

      writeIORef m.stRef st { tagWidgets = tagWidgets' }

updateFocusInfo :: MyMod -> MIO ()
updateFocusInfo MyMod{..} = do
  st <- readIORef stRef
  case curfocus st of
    Just WindowInfo{..} -> do
      labelSetText focusInfoWidget title
      widgetSetTooltipMarkup focusInfoWidget $ Just $ T.intercalate "\r" $
        [ title
        , appId
        ] ++ [ "PID: " <> tshow i | Just i <- [pid] ]
    Nothing -> do
      labelSetText focusInfoWidget ""
      widgetSetTooltipMarkup focusInfoWidget Nothing

instanceDestroy :: IConf MyMod -> IO ()
instanceDestroy ic@IConf {instanceData = MyMod {..}} = runMIO ic $ do
  logInfo "Shutting down.."
  cancel wmThread
  widgetDestroy topContainer

-- | Update the UI
updateDo :: IConf MyMod -> IO ()
updateDo ic@IConf{..} = runMIO ic $ updateWorkspaces instanceData >> updateFocusInfo instanceData

-- | Handle signal which was propagated by waybar (reload, etc.)
signalDo :: IConf MyMod -> Int -> IO ()
signalDo _ _ = pure ()

-- | Trigger a module action
actionDo :: IConf MyMod -> String -> IO ()
actionDo ic actStr = runMIO ic $ do
  logWarn $ "unhandled module action: " <> fromString actStr

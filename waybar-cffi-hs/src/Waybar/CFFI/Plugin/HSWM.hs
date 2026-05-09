{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE TypeFamilies #-}

-- |
-- Module      : Waybar.CFFI.Plugin.HSWM
-- Description : HSWM Waybar CFFI Plugin
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin.HSWM ( MyMod ) where

import           Waybar.CFFI.Plugin.Base

import           HSWM (ScreenId, SomeException, def, try)
import           HSWM.Util.IPC (ProtoMsg(..), WindowInfo(..), WorkspaceInfo(..), WsId, clientRun,
                                runMIO)

import           GI.Gtk as Gtk
import           GI.Pango.Enums

import           Control.Monad
import           Control.Monad.Logger.Aeson hiding (Message)
import           Data.Char (isDigit)
import           Data.GI.Base.Attributes
import qualified Data.List as L
import           Data.Maybe
import           Data.String
import qualified Data.Text as T
import           RIO (Async, IORef, async, cancel, liftIO, modifyIORef, newIORef, readIORef,
                      threadDelay, writeIORef)
import           RIO.Prelude
import           RIO.Prelude.Types
import           Text.Printf
import           Data.Aeson as A

type MIO = Context MyMod

data MyMod = MyMod
  { topContainer, workspacesContainer :: !Box
  , layoutWidget, focusInfoWidget     :: !Label
  , wmThread                          :: !(Async ())
  , stRef                             :: !(IORef ModState)
  } deriving (Generic)

data ModState = ModState
  { tagWidgets     :: [Label],
    thisOutputName :: !T.Text, -- ^ Name of this output, e.g. eDP-1, DP-2, etc.
    outputs        :: ![(Text, ScreenId)],
    workspaces     :: !WSList,
    curfocus       :: !(Maybe WindowInfo)
  } deriving (Generic)

data WSList = WSList
  { wsNames   :: ![(WsId, Text)] -- ^ the correct sort order (+ keyhint)
  , wsFocused :: !(ScreenId, WorkspaceInfo)
  , wsVisible :: ![(ScreenId, WorkspaceInfo)]
  , wsHidden  :: ![WorkspaceInfo]
  } deriving (Generic)

instance FromJSON (PluginConfig MyMod) where
  parseJSON = withObject "Config" $ \v -> Config
    <$> (v .: "padding" <|> pure 5)
    <*> (v .: "focused-window-max-length" <|> pure 42)

instance ToJSON (PluginConfig MyMod)

instance WaybarPlugin MyMod where
  data GlobalState MyMod = MyState
    deriving (Show, Eq, Ord, Generic)

  data PluginConfig MyMod = Config
    { padding :: Int
    , focusedWindowMaxLength :: Int
    } deriving (Show, Eq, Ord, Generic)

  type ContextT MyMod = LoggingT

  initGlobalState = pure MyState

  runContext = runMIO

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
  init runInIO ver c root = do
    logInfo $ "Plugin initializing" :# [ "waybar_version" .= ver, "config" .= c ]

    -- Add a container for displaying the next widgets
    topContainer <- boxNew OrientationHorizontal (fromIntegral c.padding)
    set topContainer [ #name := "hswm" ]
    widgetGetStyleContext topContainer >>= \sc -> styleContextAddClass sc "module"
    containerAdd root topContainer

    workspacesContainer <- boxNew OrientationHorizontal (fromIntegral c.padding)
    widgetGetStyleContext workspacesContainer >>= \sc -> styleContextAddClass sc "workspaces"
    containerAdd topContainer workspacesContainer

    layoutWidget <- labelNew (Just "<layout>")
    widgetGetStyleContext layoutWidget >>= \sc -> styleContextAddClass sc "current-layout"
    containerAdd topContainer layoutWidget

    focusInfoWidget <- labelNew (Just "<focused>")
    set focusInfoWidget
      [ #maxWidthChars := fromIntegral c.focusedWindowMaxLength
      , #ellipsize := EllipsizeModeEnd
      ]
    widgetGetStyleContext focusInfoWidget >>= \sc -> styleContextAddClass sc "focused-window"
    containerAdd topContainer focusInfoWidget

    _ <- liftIO . async $ runInIO updateOutputName
    wmThread <- liftIO . async $ runInIO connectToWM

    stRef <- newIORef $ ModState [] "" mempty (WSList [] (minBound, error "empty wsi") [] []) Nothing

    logDebug "Instance created"
    return MyMod{..}

  deinit = do
    logInfo "Shutting down..."
    MyMod{..} <- getInstance
    cancel wmThread
    widgetDestroy topContainer

  update = updateWorkspaces >> updateFocusInfo

  -- | Handle signal which was propagated by waybar (reload, etc.)
  refresh sig = logInfo $ "received signal" :# [ "signal" .= show sig ]

  -- | Trigger a module action
  doaction actStr = logWarn $ fromString $ "unhandled module action: " <> fromString actStr

connectToWM :: Context MyMod ()
connectToWM = do
  logInfo "Connecting..."
  res <- try $ clientRun def handleMsg $ \_say -> do
    logInfo "Connected"
    forever $ threadDelay maxBound
  case res of
    Right{} -> return ()
    Left (ex :: SomeException) -> do
      logError $ "IPC disconnect (exception)" :# [ "exception" .= show ex ]
      threadDelay 5_000_000
      connectToWM

handleMsg :: ProtoMsg -> Context MyMod ()
handleMsg Identify {} = pure ()
handleMsg OutputInfo {..} = do
  m <- getInstance
  modifyIORef (stRef m) $ \s -> s {outputs}

handleMsg WsInfo {..} = do
  m <- getInstance
  modifyIORef (stRef m) $ \s -> s {workspaces = WSList wsNames wsFocused wsVisible wsHidden}
  queueUpdate

handleMsg FocusedWindow {window} = do
  m <- getInstance
  modifyIORef (stRef m) $ \s -> s {curfocus = Just window}
  queueUpdate

handleMsg msg = logWarn $ "Unhandled incoming message" :# [ "msg" .= show msg ]

-- | Wait for the waybar window to be created, then sniff out the assigned screen name.
updateOutputName :: Context MyMod ()
updateOutputName = do
  threadDelay 1_000_000
  m <- getInstance
  rootPath <- widgetGetPath (topContainer m)
  classes <- widgetPathIterListClasses rootPath 0
  case filter check classes of
    name : _ -> do
      logInfo $ fromString $ "Output name detected: " ++ T.unpack name
      modifyIORef (stRef m) $ \s -> s {thisOutputName = name}
      queueUpdate
    [] -> logError "Could not determine output name name!"
  where
    check s
      | Just ('-', x) <- T.uncons (T.takeEnd 2 s), Just (n, _) <- T.uncons x = isDigit n
      | otherwise = False

updateWorkspaces :: MIO ()
updateWorkspaces = do
  m <- getInstance
  st <- readIORef (stRef m)
  let WSList tags focused@(foScreen, foWSI) visible hidden = workspaces st
      thisScreen = fromMaybe maxBound (L.lookup (thisOutputName st) st.outputs)
      add _ = do
        l <- labelNew Nothing
        widgetGetStyleContext l >>= \sc -> styleContextAddClass sc "workspace"
        containerAdd (workspacesContainer m) l
        widgetShow l
        return l

      setWidgetWSI sc w screen WorkspaceInfo{layout, windowList} = do
        let wcount = length windowList
        let tooltip = T.intercalate "\r"
                [ maybe "" ((<> " - ") . tshow . fromEnum) screen <> maybe "?" fst (L.find (\(_, b) -> Just b == screen) st.outputs)
                , "Windows: " <> T.pack (if wcount > 0 then show wcount else "(none)")
                , "Layout: " <> layout ]
        if wcount > 0
           then styleContextRemoveClass sc "empty"
           else styleContextAddClass sc "empty"
        set w [ #tooltipMarkup := tooltip ]

  -- Create new
  newTags <- forM (drop (length (tagWidgets st)) tags) add
  -- Destroy deleted
  forM_ (drop (length tags) (tagWidgets st)) widgetDestroy

  let tagWidgets' = take (length tags) (tagWidgets st) ++ newTags
  forM_ (zip tags tagWidgets') $ \((tag, hint), w) -> do
    labelSetMarkup w (T.pack $ printf "<span>%s:</span>%s" hint tag)

    sc <- widgetGetStyleContext w
    if
      -- Focused (this screen)
      | tag == foWSI.tag,
        thisScreen == foScreen -> do
          styleContextAddClass sc "focused"
          styleContextRemoveClass sc "visible"
          set (layoutWidget m) [ #label := last $ T.words foWSI.layout ]
          setWidgetWSI sc w (Just foScreen) foWSI

      -- Visible (but not focused)
      | (screen, wsi) : _ <- [x | x@(_, wsi) <- focused : visible, wsi.tag == tag] -> do
          styleContextAddClass sc "visible"
          styleContextRemoveClass sc "focused"
          setWidgetWSI sc w (Just screen) wsi
          when (screen == thisScreen) $ do
            set (layoutWidget m) [ #label := last $ T.words wsi.layout ]

      -- Hidden
      | wsi : _ <- [wsi | wsi <- hidden, wsi.tag == tag] -> do
          styleContextRemoveClass sc "visible"
          styleContextRemoveClass sc "focused"
          setWidgetWSI sc w Nothing wsi

      | otherwise -> return ()

  writeIORef m.stRef st {tagWidgets = tagWidgets'}

updateFocusInfo :: MIO ()
updateFocusInfo = do
  MyMod {..} <- getInstance
  st <- readIORef stRef
  case curfocus st of
    Just winfo -> do
      set focusInfoWidget
        [ #label := winfo.title
        , #tooltipMarkup := mkFocusedTooltip winfo
        ]
    Nothing -> do
      set focusInfoWidget [ #label := "" ]
      clear focusInfoWidget #tooltipMarkup

  where
    mkFocusedTooltip WindowInfo{..} =
      title <> " - " <> appId <> maybe "" (\i -> "\r(PID: " <> tshow i <> ")") pid

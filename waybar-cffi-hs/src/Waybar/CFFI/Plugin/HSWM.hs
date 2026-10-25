{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImplicitParams #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE TypeFamilies #-}

-- |
-- Module      : Waybar.CFFI.Plugin.HSWM
-- Description : HSWM Waybar CFFI Plugin
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin.HSWM (MyMod) where

import Waybar.CFFI.Plugin.Base
import Waybar.CFFI.Plugin.TextFormat

import HSWM.IPC (OutputId (..), RWorkspaces (..), Response (..), WindowInfo (..), WorkspaceInfo (..), WsId, clientRun)

-- "haskell-gi-base"
-- "gi-gtk3"
-- "gi-pango"

import Control.Monad.IO.Class
import Control.Monad.Logger.Aeson hiding (Message)
import Data.Aeson as A
import Data.Char (isDigit)
import Data.GI.Base.ShortPrelude (clear)
import Data.List qualified as L
import Data.Map qualified as M
import Data.Text qualified as T
import Data.Text.Short qualified as TS
import Foreign.StablePtr
import GI.GObject.Objects.Object qualified as GIGO
import GI.Gtk as Gtk
import GI.Pango (EllipsizeMode (..))
import RIO (Async, SomeException, askRunInIO, async, cancel, threadDelay, try)
import RIO.Prelude hiding (on)
import RIO.Prelude.Types

data MyMod = MyMod
  { workspacesContainer :: Maybe Container
  , layoutLabel :: Maybe Label
  , focusInfoLabel :: Maybe Label
  }
  deriving (Eq, Generic, Default)

type MIO = Context MyMod

instance Default (PluginState MyMod) where
  def = ModState [] "" mempty

-- * Plugin Config parsing

instance ToJSON (PluginConfig MyMod)
instance FromJSON (PluginConfig MyMod) where
  parseJSON = withObject "Config" $ \v ->
    Config
      <$> (v .: "active" <|> pure ViewWorkspaces)
      <*> (v .: "focused-window-max-length" <|> pure 42)
      <*> (v .: "workspace-spacing" <|> pure 1)
      <*> (v .: "workspace-format" <|> pure defWs)
      <*> (v .: "workspace-tooltip-format" <|> pure defWsTooltip)
      <*> (v .: "focused-window-tooltip-format" <|> pure defFocusedTooltip)
      <*> (v .: "layout-tooltip-format" <|> pure defLayoutTooltip)
      <*> (v .: "layout-windowlist-format" <|> pure defLayoutWindowList)
    where
      defWs = fromString "<span>{keyhint}:</span>{tag}"
      defLayoutTooltip = fromString "Layout: {layout}\rWindows:\r{windowlist}"
      defLayoutWindowList = fromString "{title} - {kitty} [{pid}]"
      defWsTooltip =
        fromString $
          "{screen}@{outputName}\r"
            <> "Windows:\t{numWindows}\r"
            <> "Layout:\t{layout}"
      defFocusedTooltip =
        fromString $
          "{title}\r"
            <> "AppID: {appId}\r"
            <> "PID: {pid}"

-- | Sum constructor for different views for this widget.
data ActivePart
  = ViewWorkspaces
  | ViewCurrentLayout
  | ViewFocusedWindow
  deriving (Eq, Ord, Show, Read)

instance FromJSON ActivePart where
  parseJSON = withText "ActivePart" $ \case
    "workspaces" -> pure ViewWorkspaces
    "layout" -> pure ViewCurrentLayout
    "focused" -> pure ViewFocusedWindow
    x -> error $ "unable to parse: " ++ T.unpack x

instance ToJSON ActivePart where
  toJSON x = toJSON $ case x of
    ViewWorkspaces -> "workspaces" :: Text
    ViewCurrentLayout -> "layout"
    ViewFocusedWindow -> "focused"

-- * instance WaybarPlugin MyMod

instance WaybarPlugin MyMod where
  type ContextT MyMod = LoggingT
  runContextT _ = runStderrLoggingT

  -- shared between all instances of this plugin (in the same waybar!)
  data GlobalState MyMod = Global
    { wmThread :: !(Async ())
    , outputs :: ![(Text, OutputId)]
    , workspacesInfo :: !RWorkspaces
    , curfocus :: !(Maybe WindowInfo)
    }
    deriving (Eq, Generic)

  -- config data supplied from waybar
  data PluginConfig MyMod = Config
    { activePart :: ActivePart
    , focusedWindowMaxLength :: !Int32
    , wsSpacing :: !Int32
    , -- \^ Spacing between workspace boxes
      wsFormat :: !TextFormat
    , wsTooltipFormat :: !TextFormat
    , focusedWindowTooltipFormat :: !TextFormat
    , layoutTooltipFormat :: !TextFormat
    , layoutWindowListFormat :: !TextFormat
    }
    deriving (Eq, Ord, Show, Read, Generic)

  -- instance-specific plugin state
  data PluginState MyMod = ModState
    { tagWidgets :: [(Button, Label)]
    , thisOutputName :: !Text
    , -- \^ Name of this output, e.g. eDP-1, DP-2, etc.
      workspacePtrs :: !(M.Map WsId (StablePtr WsId))
    }
    deriving (Eq, Generic)

  initGlobal = do
    -- Instances of this plugin share a single WM client!
    wmAs <- async connectToWM
    return $! Global wmAs def def def
  deinitGlobal g = cancel g.wmThread

  init = do
    c <- getConfig
    ic <- asks id
    logInfo $ "Plugin initializing" :# ["waybar-version" .= instWbVersion ic, "config" .= c, "id" .= instId ic]
    runInIO <- askRunInIO
    void $ after (instRootWidget ic) #map $ runInIO updateOutputName
    let setMain :: (MonadIO m, IsWidget a) => a -> m ()
        setMain w = do
          addClass w "module"
          containerAdd (instRootWidget ic) w
    case c.activePart of
      ViewWorkspaces -> do
        -- Container for workspace boxes
        container <- toContainer =<< new Box [#name := "hswm-workspaces", #orientation := OrientationHorizontal, #spacing := c.wsSpacing]
        setMain container
        return def{workspacesContainer = Just container}
      ViewCurrentLayout -> do
        -- Widget to display the current layout
        label <- new Label [#name := "hswm-layout", #sensitive := True]
        setMain label
        return def{layoutLabel = Just label}
      ViewFocusedWindow -> do
        -- Widget to display the currently focused window info
        label <- new Label [#name := "hswm-focused", #sensitive := True, #maxWidthChars := c.focusedWindowMaxLength, #ellipsize := EllipsizeModeEnd]
        setMain label
        return def{focusInfoLabel = Just label}
  update = do
    c <- getConfig
    case c.activePart of
      ViewWorkspaces -> updateWorkspaces
      ViewCurrentLayout -> updateLayoutInfo
      ViewFocusedWindow -> updateFocusInfo
  deinit = do
    logInfo "Shutting down..."
    m <- getInstance
    mapM_ widgetDestroy m.workspacesContainer
    mapM_ widgetDestroy m.layoutLabel
    mapM_ widgetDestroy m.focusInfoLabel

  -- \| Handle signal which was propagated by waybar (reload, etc.)
  refresh sig = logInfo $ "received signal" :# ["signal" .= show sig]

  -- \| Trigger a module action
  doaction act = logWarn $ "unhandled module action" :# ["action" .= show act]

-- * HSWM Client

connectToWM :: SetupGlobal MyMod ()
connectToWM = do
  logInfo "Connecting..."
  res <- try $ clientRun def handleMsgG $ \_ -> do
    logInfo "Connected"
    forever $ threadDelay maxBound
  case res of
    Right{} -> return ()
    Left (ex :: SomeException) -> do
      logError $ "Disconnected (exception occurred)" :# ["exception" .= show ex]
      threadDelay 5_000_000
      connectToWM

handleMsgG :: Response -> SetupGlobal MyMod ()
handleMsgG Identify{} = pure ()
handleMsgG Outputs{..} = modifyGlobal $ \s -> (s :: GlobalState MyMod){outputs = outputs}
handleMsgG Workspaces{..} = do
  modifyGlobal $ \s -> s{workspacesInfo = workspaces}
  queueUpdateAll
handleMsgG FocusedWindow{window} = do
  modifyGlobal $ \s -> s{curfocus = window}
  queueUpdateAll
handleMsgG msg = logWarn $ "Unhandled incoming message" :# ["msg" .= msg]

-- * Sniff waybar output name

-- | Wait for the waybar window to be created, then sniff out the assigned screen name.
updateOutputName :: Context MyMod ()
updateOutputName = do
  ic <- asks id
  let w = instRootWidget ic
  rootPath <- widgetGetPath w
  classes <- widgetPathIterListClasses rootPath 0
  case filter check classes of
    name : _ -> do
      logInfo $ "Output name detected" :# ["output" .= name]
      modifyState $ \s -> s{thisOutputName = name}
      queueUpdate
    [] -> logError $ "Could not determine output name name!" :# ["classes" .= classes]
  where
    check s
      | Just ('-', x) <- T.uncons (T.takeEnd 2 s), Just (n, _) <- T.uncons x = isDigit n
      | otherwise = False

-- * State update

updateLayoutInfo :: MIO ()
updateLayoutInfo = do
  g <- getGlobal
  m <- getInstance
  st <- getState
  forM_ m.layoutLabel $ \lLabel -> do
    let RWorkspaces{..} = g.workspacesInfo
        thisScreen = fromMaybe maxBound (L.lookup st.thisOutputName g.outputs)
    -- with the layout of currently visible tag on this screen...
    forM_ tags $ \ws ->
      when ((thisScreen, ws.tag) == focused) $ do
        tooltip <- mkLayoutTooltip ws
        set lLabel [#label := last (T.words ws.layout), #tooltipMarkup := tooltip]

updateWorkspaces :: MIO ()
updateWorkspaces = do
  g <- getGlobal
  st <- getState
  let RWorkspaces{..} = g.workspacesInfo
      thisScreen = fromMaybe maxBound (L.lookup st.thisOutputName g.outputs)

      setWidgetWSI (btnW, labelW) ws foc vis screen = do
        dt <- case M.lookup ws.tag st.workspacePtrs of
          Nothing -> do
            ptr <- liftIO $ newStablePtr ws.tag
            modifyState $ \s -> s{workspacePtrs = M.insert ws.tag ptr s.workspacePtrs}
            return ptr
          Just x -> return x
        GIGO.objectSetData btnW gTagName $ castStablePtrToPtr dt

        sc <- widgetGetStyleContext btnW
        setClass sc "focused" foc
        setClass sc "visible" vis
        setClass sc "empty" (null ws.windowList)
        text <- mkWorkspaceLabel ws
        tooltip <- mkWorkspaceTooltip ws screen (fst <$> L.find (\(_, b) -> Just b == screen) g.outputs)
        set labelW [#label := text, #tooltipMarkup := tooltip]

  m <- getInstance
  forM_ m.workspacesContainer $ \wsContainer -> do
    -- Destroy deleted / create new needed
    forM_ (drop (length tags) st.tagWidgets) $ \(b, l) -> widgetDestroy l >> widgetDestroy b
    newTags <- forM (drop (length st.tagWidgets) tags) (addWorkspaceWidget wsContainer)
    let widgets = take (length tags) st.tagWidgets ++ newTags
    modifyState $ \x -> x{tagWidgets = widgets}

    forM_ (zip tags widgets) $ \(ws, wds) ->
      if
        | (thisScreen, ws.tag) == focused ->
            -- Focused (on this screen)
            setWidgetWSI wds ws True False (Just thisScreen)
        | (screen, _) : _ <- [x | x <- focused : visible, ws.tag == snd x] ->
            -- Visible but not focused (on this screen)
            setWidgetWSI wds ws False True (Just screen)
        | otherwise ->
            -- Hidden
            setWidgetWSI wds ws False False Nothing
  where
    addWorkspaceWidget contw _ws = do
      b <- new Button [#valign := AlignEnd]
      l <- new Label [#valign := AlignEnd, #useMarkup := True]
      addClass b "workspace"
      -- set b [ #label := T.pack ws.tag ]
      containerAdd b l
      containerAdd contw b
      runInIO <- askRunInIO
      void $ on b #clicked $ runInIO $ handleClick l ?self
      widgetShowAll b
      return (b, l)

    handleClick _lb btn = do
      (tag :: WsId) <- liftIO $ GIGO.objectGetData btn gTagName >>= deRefStablePtr . castPtrToStablePtr
      logInfo $ "button was clicked!" :# ["tag" .= tag]

updateFocusInfo :: MIO ()
updateFocusInfo = do
  m <- getInstance
  g <- getGlobal
  forM_ m.focusInfoLabel $ \fiLabel -> do
    case g.curfocus of
      Just winfo -> do
        label <- markupEscape $ TS.toText winfo.title
        tooltip <- mkFocusedTooltip winfo
        set fiLabel [#label := label, #tooltipMarkup := tooltip]
      Nothing -> do
        set fiLabel [#label := ""]
        clear fiLabel #tooltipMarkup

-- * Output formatting

mkWorkspaceLabel :: WorkspaceInfo -> MIO Text
mkWorkspaceLabel ws = do
  c <- getConfig
  runTextFormatWith c.wsFormat $ \case
    "tag" -> formatted ws.tag
    "keyhint" -> formatted ws.keyhint
    _ -> pure ""

mkWorkspaceTooltip :: WorkspaceInfo -> Maybe OutputId -> Maybe Text -> MIO Text
mkWorkspaceTooltip ws screen outputName = do
  c <- getConfig
  runTextFormatWith c.wsTooltipFormat $ \case
    "numWindows" -> formatted $ length ws.windowList
    "layout" -> formatted ws.layout
    "screen" -> formatted $ fmap fromEnum screen
    "outputName" -> formatted $ fromMaybe "-" outputName
    "tag" -> formatted ws.tag
    "keyhint" -> formatted ws.keyhint
    _ -> return ""

mkFocusedTooltip :: WindowInfo -> MIO Text
mkFocusedTooltip wi = do
  c <- getConfig
  runTextFormat
    c.focusedWindowTooltipFormat
    [ ("title", markupEscape $ TS.toText wi.title)
    , ("appId", markupEscape $ TS.toText wi.appId)
    ]

mkLayoutTooltip :: WorkspaceInfo -> MIO Text
mkLayoutTooltip ws = do
  c <- getConfig
  runTextFormat
    c.layoutTooltipFormat
    [ ("layout", markupEscape ws.layout)
    , ("windowlist", T.intercalate "\r" <$> sequence [fmtWin c wi | wi <- ws.windowList])
    ]
  where
    fmtWin c v =
      runTextFormat
        c.layoutWindowListFormat
        [ ("appId", markupEscape $ TS.toText v.appId)
        , ("title", markupEscape $ TS.toText v.title)
        , ("pid", pure $ maybe "" tshow v.pid)
        ]

-- * General utilities

setClass :: (MonadIO m) => StyleContext -> Text -> Bool -> m ()
setClass sc name False = styleContextRemoveClass sc name
setClass sc name True = styleContextAddClass sc name

addClass :: (MonadIO m, IsWidget w) => w -> Text -> m ()
addClass w name = do
  sc <- widgetGetStyleContext w
  styleContextAddClass sc name

gTagName :: Text
gTagName = "HSWM_WS_TAG"

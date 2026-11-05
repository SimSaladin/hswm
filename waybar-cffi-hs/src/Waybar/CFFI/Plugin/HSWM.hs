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
module Waybar.CFFI.Plugin.HSWM (HSWMPlugin) where

import Waybar.CFFI.Plugin.Base
import Waybar.CFFI.Plugin.TextFormat

import HSWM.IPC (OutputId (..), RWorkspaces (..), Response (..), WindowInfo (..), WorkspaceInfo (..), WsId)
import HSWM.IPC qualified as C

import Data.GI.Base.Overloading (IsDescendantOf)
import Data.GI.Base.ShortPrelude (clear)
import GI.GObject.Objects.Object qualified as GIGO
import GI.Gtk as Gtk
import GI.Pango (EllipsizeMode (..))

import Control.Exception.Safe
import Control.Monad.IO.Class
import Control.Monad.Logger.Aeson hiding (Message)
import Data.Aeson as A
import Data.Char (isDigit)
import Data.List qualified as L
import Data.Map qualified as M
import Data.Text qualified as T
import Data.Text.Short qualified as TS
import Foreign.StablePtr
import RIO (Async, MVar, askRunInIO, async, cancel, newEmptyMVar, putMVar, takeMVar, threadDelay, withMVar)
import RIO.Prelude hiding (on)
import RIO.Prelude.Types

type PlugM = PluginM HSWMPlugin

-- * Plugin and Global State

-- | Plugin state
data HSWMPlugin
  = WorkspacesPlug {plugContainer :: Container}
  | LayoutPlug {plugLabel :: Label}
  | FocusInfoPlug {plugLabel :: Label}
  deriving (Eq, Generic)

-- | shared between all instances of this plugin (in the same waybar!)
data instance GlobalState HSWMPlugin = Global
  { wmThread :: !(Async ())
  , outputs :: ![(Text, OutputId)]
  , workspacesInfo :: !RWorkspaces
  , curfocus :: !(Maybe WindowInfo)
  , wmClient :: !(MVar C.ClientHandle)
  }
  deriving (Eq, Generic)

-- | Instance-specific plugin state
data instance PluginState HSWMPlugin = ModState
  { tagWidgets :: [(Button, Label)]
  , thisOutputName :: !Text
  -- ^ Name of this output, e.g. @eDP-1@, @DP-2@, etc.
  , workspacePtrs :: !(M.Map WsId (StablePtr WsId))
  }
  deriving (Eq, Generic)

instance Default (PluginState HSWMPlugin) where
  def = ModState [] "" mempty

-- * Plugin Config

-- config data supplied from waybar
data instance PluginConfig HSWMPlugin = Config
  { activePart :: ActivePart
  , focusedWindowMaxLength :: !Int32
  , wsSpacing :: !Int32
  -- ^ Spacing between workspace boxes
  , wsFormat :: !TextFormat
  , wsTooltipFormat :: !TextFormat
  , focusedWindowTooltipFormat :: !TextFormat
  , layoutTooltipFormat :: !TextFormat
  , layoutWindowListFormat :: !TextFormat
  }
  deriving (Eq, Ord, Show, Read, Generic)

instance ToJSON (PluginConfig HSWMPlugin)

instance FromJSON (PluginConfig HSWMPlugin) where
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
      defWsTooltip = fromString $ mconcat ["{screen}@{outputName}\r", "Windows:\t{numWindows}\r", "Layout:\t{layout}"]
      defFocusedTooltip = fromString $ mconcat ["{title}\r", "AppID: {appId}\r", "PID: {pid}"]

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

-- * Plugin Impl

instance WaybarPlugin HSWMPlugin where
  type PluginContextT HSWMPlugin = LoggingT

  runPluginContextT = runStderrLoggingT

  initGlobal = do
    wmClientVar <- newEmptyMVar
    -- Instances of this plugin share a single WM client!
    wmAs <- async $ connectToWM wmClientVar
    return $! Global wmAs def def def wmClientVar

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
        return WorkspacesPlug{plugContainer = container}
      ViewCurrentLayout -> do
        -- Widget to display the current layout
        label <- new Label [#name := "hswm-layout", #sensitive := True]
        setMain label
        return LayoutPlug{plugLabel = label}
      ViewFocusedWindow -> do
        -- Widget to display the currently focused window info
        label <- new Label [#name := "hswm-focused", #sensitive := True, #maxWidthChars := c.focusedWindowMaxLength, #ellipsize := EllipsizeModeEnd]
        setMain label
        return FocusInfoPlug{plugLabel = label}

  update =
    getInstance >>= \case
      WorkspacesPlug cont -> updateWorkspaces cont
      LayoutPlug lb -> updateLayoutInfo lb
      FocusInfoPlug lb -> updateFocusInfo lb

  deinit = do
    logInfo "Shutting down..."
    getInstance >>= \case
      WorkspacesPlug w -> widgetDestroy w
      LayoutPlug w -> widgetDestroy w
      FocusInfoPlug w -> widgetDestroy w

  -- \| Handle signal which was propagated by waybar (reload, etc.)
  refresh sig = logInfo $ "received signal" :# ["signal" .= show sig]

  -- \| Trigger a module action
  doaction act = logWarn $ "unhandled module action" :# ["action" .= show act]

-- * HSWM Client

connectToWM :: MVar C.ClientHandle -> GlobalM HSWMPlugin ()
connectToWM clientVar = do
  logInfo "Connecting..."
  handleErrors $ C.clientRunWith def $ \client -> do
    logInfo "Connected"
    bracket_ (putMVar clientVar client) (takeMVar clientVar) $
      C.receiveMessages handleMsgG client
    return ""
  where
    handleErrors run =
      catches
        run
        [ Handler $ \C.SocketDisconnected -> return "Socket disconnected"
        , Handler $ \(e :: C.ClientException) -> return $ show e
        ]
        >>= restart

    restart msg = do
      logError $ "Disconnected (exception occurred), reconnect in 5s" :# ["reason" .= msg]
      threadDelay 5_000_000
      connectToWM clientVar

handleMsgG :: Response -> GlobalM HSWMPlugin ()
handleMsgG Identify{} = pure ()
handleMsgG Outputs{..} = modifyGlobal $ \s -> (s :: GlobalState HSWMPlugin){outputs = outputs}
handleMsgG Workspaces{..} = do
  modifyGlobal $ \s -> s{workspacesInfo = workspaces}
  queueUpdateAll
handleMsgG FocusedWindow{window} = do
  modifyGlobal $ \s -> s{curfocus = window}
  queueUpdateAll
handleMsgG msg = logWarn $ "Unhandled incoming message" :# ["msg" .= msg]

-- * Sniff waybar output name

-- | Wait for the waybar window to be created, then sniff out the assigned screen name.
updateOutputName :: PluginM HSWMPlugin ()
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

updateLayoutInfo :: Label -> PlugM ()
updateLayoutInfo lLabel = do
  g <- getGlobal
  st <- getState
  let RWorkspaces{..} = g.workspacesInfo
      thisScreen = fromMaybe maxBound (L.lookup st.thisOutputName g.outputs)
  -- with the layout of currently visible tag on this screen...
  forM_ tags $ \ws ->
    when ((thisScreen, ws.tag) == focused) $ do
      tt <- mkLayoutTooltip ws
      let lb = last (T.words ws.layout)
      set lLabel [#label := lb, #tooltipMarkup := tt]

updateWorkspaces :: Container -> PlugM ()
updateWorkspaces wsContainer = do
  g <- getGlobal
  st <- getState
  let RWorkspaces{..} = g.workspacesInfo
      thisScreen = fromMaybe maxBound (L.lookup st.thisOutputName g.outputs)

      setWidgetWSI (btnW, labelW) ws foc vis screen = do
        dt <- case M.lookup ws.tag st.workspacePtrs of
          Just val -> return val
          Nothing -> do
            sp <- liftIO $ newStablePtr ws.tag
            modifyState $ \s -> s{workspacePtrs = M.insert ws.tag sp s.workspacePtrs}
            return sp
        objectSetData btnW gTagName dt
        updateStyleClasses
          btnW
          [ ("focused", foc)
          , ("visible", vis)
          , ("empty", null ws.windowList)
          ]
        lb <- mkWorkspaceLabel ws
        tt <- mkWorkspaceTooltip ws screen (fst <$> L.find (\(_, b) -> Just b == screen) g.outputs)
        set labelW [#label := lb, #tooltipMarkup := tt]

  -- Destroy deleted / create new needed
  forM_ (drop (length tags) st.tagWidgets) $ \(b, l) -> widgetDestroy l >> widgetDestroy b
  newTags <- forM (drop (length st.tagWidgets) tags) (addWorkspaceWidget wsContainer)
  let widgets = take (length tags) st.tagWidgets ++ newTags
  modifyState $ \x -> x{tagWidgets = widgets}

  forM_ (zip tags widgets) $ \(ws, wds) ->
    if
      -- Focused (on this screen)
      | (thisScreen, ws.tag) == focused -> setWidgetWSI wds ws True False (Just thisScreen)
      -- Visible but not focused (on this screen)
      | (screen, _) : _ <- [x | x <- focused : visible, ws.tag == snd x] -> setWidgetWSI wds ws False True (Just screen)
      -- Hidden
      | otherwise -> setWidgetWSI wds ws False False Nothing
  where
    addWorkspaceWidget contw _ws = do
      btn <- new Button [#valign := AlignEnd]
      label <- new Label [#valign := AlignEnd, #useMarkup := True]
      addClass btn "workspace"
      containerAdd btn label
      containerAdd contw btn
      runInIO <- askRunInIO
      void $ on btn #clicked $ runInIO $ workspaceOnClick ?self
      widgetShowAll btn
      return (btn, label)

-- | Workspace clicked
workspaceOnClick :: Button -> PlugM ()
workspaceOnClick btn = do
  tag <- objectGetData @WsId btn gTagName
  logInfo $ "button was clicked!" :# ["tag" .= tag]
  g <- getGlobal
  st <- getState
  let outputId = fromMaybe maxBound (L.lookup st.thisOutputName g.outputs)
  withMVar g.wmClient $ \c ->
    C.sendMsg c $ C.Contents (C.WmCtrl $ C.WmCtrlActionValue $ A.toJSON (C.ViewWorkspaceOnScreen{tag, screen = outputId} :: C.WmCtrlAction) :: C.Request) Nothing

updateFocusInfo :: Label -> PlugM ()
updateFocusInfo fiLabel = do
  g <- getGlobal
  case g.curfocus of
    Just wi -> do
      lb <- markupEscape $ TS.toText wi.title
      tt <- mkFocusedTooltip wi
      set fiLabel [#label := lb, #tooltipMarkup := tt]
    Nothing -> do
      set fiLabel [#label := ""]
      clear fiLabel #tooltipMarkup

-- * GObject data

objectGetData ::
  forall a object m.
  (MonadIO m, GObject object, IsDescendantOf GIGO.Object object) => object -> Text -> m a
objectGetData obj tag = liftIO $ GIGO.objectGetData obj tag >>= deRefStablePtr . castPtrToStablePtr

objectSetData :: (MonadIO m, GObject object, IsDescendantOf GIGO.Object object) => object -> Text -> StablePtr a -> m ()
objectSetData obj tag v = liftIO $ GIGO.objectSetData obj tag $ castStablePtrToPtr v

-- * Output formatting

mkWorkspaceLabel :: WorkspaceInfo -> PlugM Text
mkWorkspaceLabel ws = do
  c <- getConfig
  runTextFormatWith c.wsFormat $ \case
    "tag" -> formatted ws.tag
    "keyhint" -> formatted ws.keyhint
    _ -> pure ""

mkWorkspaceTooltip :: WorkspaceInfo -> Maybe OutputId -> Maybe Text -> PlugM Text
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

mkFocusedTooltip :: WindowInfo -> PlugM Text
mkFocusedTooltip wi = do
  c <- getConfig
  runTextFormat
    c.focusedWindowTooltipFormat
    [ ("title", markupEscape $ TS.toText wi.title)
    , ("appId", markupEscape $ TS.toText wi.appId)
    ]

mkLayoutTooltip :: WorkspaceInfo -> PlugM Text
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

updateStyleClasses :: (MonadIO m) => (IsWidget w) => w -> [(Text, Bool)] -> m ()
updateStyleClasses w xs = do
  sc <- widgetGetStyleContext w
  mapM_ (uncurry $ setClass sc) xs

setClass :: (MonadIO m) => StyleContext -> Text -> Bool -> m ()
setClass sc name False = styleContextRemoveClass sc name
setClass sc name True = styleContextAddClass sc name

addClass :: (MonadIO m, IsWidget w) => w -> Text -> m ()
addClass w name = do
  sc <- widgetGetStyleContext w
  styleContextAddClass sc name

gTagName :: Text
gTagName = "HSWM_WS_TAG"

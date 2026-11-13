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

-- | Shared between all instances of this plugin (in the same waybar!)
data instance GlobalState HSWMPlugin = Global
  { wmClient :: !(MVar C.ClientHandle)
  , wmThread :: !(Async ())
  , outputs :: ![(Text, OutputId)]
  , workspacesInfo :: !RWorkspaces
  , curfocus :: !(Maybe WindowInfo)
  }
  deriving (Eq, Generic)

-- | Instance-specific state.
data instance PluginState HSWMPlugin = ModState
  { thisOutputName :: !Text
  -- ^ Name of this output, e.g. @eDP-1@, @DP-2@, etc.
  , tagWidgets :: [(Button, Label)] -- XXX WorkspacePlug only
  , workspacePtrs :: !(M.Map WsId (StablePtr WsId)) -- XXX WorkspacePlug only
  }
  deriving (Eq, Generic)

instance Default (PluginState HSWMPlugin) where
  def =
    ModState
      { thisOutputName = ""
      , tagWidgets = []
      , workspacePtrs = mempty
      }

-- * Plugin Config

-- | Config data supplied from waybar.
-- Workspaces section:
-- @
-- workspace-format-hidden         = format
-- workspace-format-visible         = format
-- workspace-tooltip-format-visible = format
-- workspace-tooltip-format-hidden = format
-- workspace-spacing        = integer
-- @
--
-- Layout section:
-- @
-- "layout-windowlist-format" = format
-- "layout-tooltip-format"    = format
-- @
data instance PluginConfig HSWMPlugin = Config
  { activePart :: ActivePart
  , -- wss
    wsSpacing :: !Int32
  -- ^ Spacing between workspace boxes
  , wsFormatVisible :: !TextFormat
  -- ^ workspace-format
  , wsFormatHidden :: !TextFormat
  -- ^ workspace-format
  , wsTooltipFormatVisible :: !TextFormat
  , wsTooltipFormatHidden :: !TextFormat
  , -- focused window
    focusedWindowMaxLength :: !Int32
  , focusedWindowTooltipFormat :: !TextFormat
  , -- layout
    layoutTooltipFormat :: !TextFormat
  , layoutWindowListFormat :: !TextFormat
  }
  deriving (Eq, Ord, Show, Read, Generic)

instance ToJSON (PluginConfig HSWMPlugin)
instance FromJSON (PluginConfig HSWMPlugin) where
  parseJSON = withObject "Config" $ \v -> do
    activePart <- v .: "active" <|> pure ViewWorkspaces
    focusedWindowMaxLength <- v .: "focused-window-max-length" <|> pure 42
    wsSpacing <- v .: "workspace-spacing" <|> pure 1
    wsFormatVisible <- v .: "workspace-format-visible" <|> v .: "workspace-format" <|> pure defWs
    wsFormatHidden <- v .: "workspace-format-hidden" <|> v .: "workspace-format" <|> pure defWs
    wsTooltipFormatVisible <- v .: "workspace-tooltip-format-visible" <|> pure defWsTooltipVisible
    wsTooltipFormatHidden <- v .: "workspace-tooltip-format-hidden" <|> pure defWsTooltipHidden
    focusedWindowTooltipFormat <- v .: "focused-window-tooltip-format" <|> pure defFocusedTooltip
    layoutTooltipFormat <- v .: "layout-tooltip-format" <|> pure defLayoutTooltip
    layoutWindowListFormat <- v .: "layout-windowlist-format" <|> pure defLayoutWindowList
    pure Config{..}
    where
      defWs = fromString "<span>{keyhint}:</span>{tag}"
      defWsTooltipVisible =
        fromString $
          mconcat
            [ "<b>{tag}</b>: {numWindows} window(s)\r"
            , "Showing on screen no. {screen} (output: {outputName})\r"
            , "<i>Layout:</i> {layout}"
            ]
      defWsTooltipHidden =
        fromString $
          mconcat
            [ "<b>{tag}</b>: {numWindows} window(s)\r"
            , "<i>Layout:</i> {layout}"
            ]
      --
      defLayoutTooltip = fromString "Layout: {layout}\rWindows:\r{windowlist}"
      defLayoutWindowList = fromString "{title} - {kitty} [{pid}]"
      --
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
    -- Instances of this plugin share a single WM client!
    wmClientVar <- newEmptyMVar
    wmAs <- async $ connectToWM wmClientVar
    return $! Global wmClientVar wmAs def def def

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
      -- Container for workspace boxes
      ViewWorkspaces -> do
        container <- toContainer =<< new Box [#name := "hswm-workspaces", #orientation := OrientationHorizontal, #spacing := c.wsSpacing]
        setMain container
        return WorkspacesPlug{plugContainer = container}

      -- Widget to display the current layout
      ViewCurrentLayout -> do
        label <- new Label [#name := "hswm-layout", #sensitive := True]
        setMain label
        return LayoutPlug{plugLabel = label}

      -- Widget to display the currently focused window info
      ViewFocusedWindow -> do
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

-- | WM API message handler.
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
  w <- asks instRootWidget
  path <- widgetGetPath w
  cls <- widgetPathIterListClasses path 0
  case filter check cls of
    name : _ -> do
      logInfo $ "Output name detected" :# ["output" .= name]
      modifyState $ \s -> s{thisOutputName = name}
      queueUpdate
    [] -> logError $ "Could not determine output name name!" :# ["classes" .= cls]
  where
    check s
      | Just ('-', x) <- T.uncons (T.takeEnd 2 s), Just (n, _) <- T.uncons x = isDigit n
      | otherwise = False

-- * State update

updateLayoutInfo :: Label -> PlugM ()
updateLayoutInfo lLabel = do
  g <- getGlobal
  s <- getState
  let RWorkspaces{..} = g.workspacesInfo
      thisScreen = fromMaybe maxBound (L.lookup s.thisOutputName g.outputs)
  -- with the layout of currently visible tag on this screen...
  forM_ tags $ \ws ->
    when ((thisScreen, ws.tag) == focused) $ do
      tt <- mkLayoutTooltip ws
      let lb = last (T.words ws.layout)
      set lLabel [#label := lb, #tooltipMarkup := tt]

updateWorkspaces :: Container -> PlugM ()
updateWorkspaces wsContainer = do
  g <- getGlobal
  s <- getState
  let RWorkspaces{..} = g.workspacesInfo
      thisScreen = fromMaybe maxBound (L.lookup s.thisOutputName g.outputs)

      setWidgetWSI (btnW, labelW) ws foc vis screen = do
        dt <- case M.lookup ws.tag s.workspacePtrs of
          Just val -> return val
          Nothing -> do
            sp <- liftIO $ newStablePtr ws.tag
            modifyState $ \x -> x{workspacePtrs = M.insert ws.tag sp s.workspacePtrs}
            return sp
        objectSetData btnW gTagName dt
        updateStyleClasses
          btnW
          [ ("focused", foc)
          , ("visible", vis)
          , ("empty", null ws.windowList)
          ]
        let outputName = fst <$> L.find (\(_, b) -> Just b == screen) g.outputs
        lb <- mkWorkspaceLabel ws screen outputName
        tt <- mkWorkspaceTooltip ws screen outputName
        set labelW [#label := lb, #tooltipMarkup := tt]

  -- Destroy deleted / create new needed
  forM_ (drop (length tags) s.tagWidgets) $ \(b, l) -> widgetDestroy l >> widgetDestroy b
  newTags <- forM (drop (length s.tagWidgets) tags) (addWorkspaceWidget wsContainer)
  let widgets = take (length tags) s.tagWidgets ++ newTags
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

-- | A workspace button is clicked.
workspaceOnClick :: Button -> PlugM ()
workspaceOnClick btn = do
  tag <- objectGetData @WsId btn gTagName
  logInfo $ "button was clicked!" :# ["tag" .= tag]
  g <- getGlobal
  s <- getState
  let outputId = fromMaybe maxBound (L.lookup s.thisOutputName g.outputs)
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

-- | Get stored object data which must be a 'StablePtr'.
objectGetData ::
  forall a object m.
  (MonadIO m, GObject object, IsDescendantOf GIGO.Object object) => object -> Text -> m a
objectGetData obj tag = liftIO $ GIGO.objectGetData obj tag >>= deRefStablePtr . castPtrToStablePtr

-- | Store an arbitrary 'StablePtr' in a 'GObject'.
objectSetData :: (MonadIO m, GObject object, IsDescendantOf GIGO.Object object) => object -> Text -> StablePtr a -> m ()
objectSetData obj tag v = liftIO $ GIGO.objectSetData obj tag $ castStablePtrToPtr v

-- * Output formatting

mkWorkspaceLabel :: WorkspaceInfo -> Maybe OutputId -> Maybe Text -> PlugM Text
mkWorkspaceLabel ws screen outputName = do
  c <- getConfig
  runTextFormatWith (if isJust screen then c.wsFormatVisible else c.wsFormatHidden) $ \case
    "tag" -> formatted ws.tag
    "keyhint" -> formatted ws.keyhint
    "layout" -> formatted ws.layout
    "screen" -> formatted $ fmap fromEnum screen
    "outputName" -> formatted $ fromMaybe "-" outputName
    _ -> pure ""

mkWorkspaceTooltip :: WorkspaceInfo -> Maybe OutputId -> Maybe Text -> PlugM Text
mkWorkspaceTooltip ws screen outputName = do
  c <- getConfig
  runTextFormatWith (if isJust screen then c.wsTooltipFormatVisible else c.wsTooltipFormatHidden) $ \case
    "tag" -> formatted ws.tag
    "keyhint" -> formatted ws.keyhint
    "layout" -> formatted ws.layout
    "numWindows" -> formatted $ length ws.windowList
    "screen" -> formatted $ fmap fromEnum screen
    "outputName" -> formatted $ fromMaybe "-" outputName
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
  runTextFormatWith c.layoutTooltipFormat $ \case
    "layout" -> formatted $ markupEscape @PlugM ws.layout
    "windowlist" -> formattedList @PlugM [fmtWin c wi | wi <- ws.windowList]
    _ -> return ""
  where
    fmtWin c v =
      runTextFormat @PlugM
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

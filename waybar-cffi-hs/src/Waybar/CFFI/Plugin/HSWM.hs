{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE DuplicateRecordFields #-}


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

import           HSWM (ScreenId, SomeException, try, askRunInIO)
import           HSWM.Util.IPC (Response(..), RWorkspaces(..), WindowInfo(..), WorkspaceInfo(..), clientRun, runMIO)

import           GI.Gtk as Gtk
import           GI.Pango.Enums
import           GI.GLib.Functions (markupEscapeText)
import           Data.GI.Base.Attributes

import           RIO (Async, async, cancel, threadDelay)
import           RIO.Prelude
import           RIO.Prelude.Types

import           Control.Monad.IO.Class
import           Control.Monad.Logger.Aeson hiding (Message)
import           Data.Aeson as A
import           Data.Char (isDigit)
import qualified Data.List as L
import qualified Data.Text as T
import           GHC.TypeLits
import qualified Text.ParserCombinators.ReadP as RP

type MIO = Context MyMod

data Global = Global
  { wmThread       :: !(Async ())
  , outputs        :: ![(Text, ScreenId)]
  , workspacesInfo :: !RWorkspaces
  , curfocus       :: !(Maybe WindowInfo)
  } deriving (Eq, Generic)

data MyMod = MyMod
  { topContainer        :: !Container
  , workspacesContainer :: !Container
  , layoutWidget        :: !Label
  , focusInfoWidget     :: !Label
  } deriving (Eq, Generic)

-- | Mutable instance state.
data ModState = ModState
  { tagWidgets     :: [Label]
  , thisOutputName :: !Text -- ^ Name of this output, e.g. eDP-1, DP-2, etc.
  } deriving (Eq, Generic)

instance Default ModState where
  def = ModState [] ""

data Config = Config
  { spacing                    :: !Int32
  , focusedWindowMaxLength     :: !Int32
  , wsFormat                   :: !TextFormat
  , wsTooltipFormat            :: !TextFormat
  , focusedWindowTooltipFormat :: !TextFormat
  } deriving (Eq, Ord, Show, Read, Generic)

instance FromJSON Config where
  parseJSON = withObject "Config" $ \v -> Config
    <$> (v .: "spacing" <|> pure 5)
    <*> (v .: "focused-window-max-length" <|> pure 42)
    <*> (v .: "workspace-format" <|> pure defWs)
    <*> (v .: "workspace-tooltip-format" <|> pure defWsTooltip)
    <*> (v .: "focused-window-tooltip-format" <|> pure defFocusedTooltip)
      where
        defWs = fromString "<span>{keyhint}:</span>{tag}"

        defWsTooltip = fromString $
          "Screen: {screen}\r" <>
          "Output: {outputName}\r" <>
          "Windows: {numWindows}\r" <>
          "Layout: {layout}"

        defFocusedTooltip = fromString $
           "{title}\r" <>
           "AppID: {appId}\r" <>
           "PID: {pid}"

instance ToJSON Config

data TextFormat
  = TFLit Text
  | TFInterp SomeSymbol
  | TFMany [TextFormat]
  deriving (Eq, Ord, Show, Read, Generic)

instance IsString TextFormat where
  fromString s = case reverse $ RP.readP_to_S parseTextFormat s of
                   (x, "") : _ -> x
                   _ -> error $ "TextFormat: no parse: " ++ s

ppTextFormat :: TextFormat -> Text
ppTextFormat = go where
  go (TFLit x) = x
  go (TFInterp (SomeSymbol p)) = "{" <> T.pack (symbolVal p) <> "}"
  go (TFMany xs) = mconcat $! map go xs

parseTextFormat :: RP.ReadP TextFormat
parseTextFormat = (TFMany <$> RP.many (lit RP.+++ interp)) <* RP.eof
  where
    lit = TFLit . T.pack <$> RP.munch1 (/= '{')
    interp = do
      s <- RP.between (RP.char '{') (RP.char '}') (RP.munch (/= '}'))
      return $ TFInterp $ someSymbolVal s

instance FromJSON TextFormat where
  parseJSON = withText "TextFormat" $ \x ->
    pure $! fromString $! T.unpack x

instance ToJSON TextFormat where
  toJSON = A.String . ppTextFormat

runTextFormat :: forall m. (Monad m) => [(String, m Text)] -> TextFormat -> m Text
runTextFormat vals = go
  where
    go (TFLit x) = pure x
    go (TFMany xs) = mconcat <$> mapM go xs
    go (TFInterp ss) = f ss

    f (SomeSymbol proxy) = fromMaybe (pure "") $ L.lookup (symbolVal proxy) vals


instance WaybarPlugin MyMod where

  type ContextT MyMod = LoggingT

  runContextT _ = runMIO

  initGlobal _ = do
    wmAs <- async connectToWM
    return $! Global wmAs def def def

  deinitGlobal _ g = do
    cancel g.wmThread

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
  init = do
    c <- getConfig
    ic <- asks envInstance
    logInfo $ "Plugin initializing" :# [ "waybar_version" .= wbVersion ic, "config" .= c, "instance" .= instId ic ]

    runInIO <- askRunInIO
    _ <- after (instRootWidget ic) #map $ runInIO updateOutputName

    -- Add a container for displaying the next widgets
    topContainer <- toContainer =<< new Box [ #name := "hswm", #orientation := OrientationHorizontal, #spacing := c.spacing ]
    addClass topContainer "module"
    containerAdd (instRootWidget ic) topContainer

    workspacesContainer <- toContainer =<< new Box [ #orientation := OrientationHorizontal, #spacing := c.spacing ]
    addClass workspacesContainer "workspaces"
    containerAdd topContainer workspacesContainer

    layoutWidget <- new Label [ ]
    addClass layoutWidget "current-layout"
    containerAdd topContainer layoutWidget

    focusInfoWidget <- new Label [ #maxWidthChars := c.focusedWindowMaxLength, #ellipsize := EllipsizeModeEnd ]
    addClass focusInfoWidget "focused-window"
    containerAdd topContainer focusInfoWidget

    logDebug "Instance created"
    return MyMod{..}

  deinit = do
    logInfo "Shutting down..."
    MyMod{..} <- getInstance
    widgetDestroy topContainer

  update = updateWorkspaces >> updateFocusInfo

  -- | Handle signal which was propagated by waybar (reload, etc.)
  refresh sig = logInfo $ "received signal" :# [ "signal" .= show sig ]

  -- | Trigger a module action
  doaction act = logWarn $ "unhandled module action" :# [ "action" .= show act ]
  {-# INLINe doaction #-}

type instance GlobalState  MyMod = Global
type instance PluginConfig MyMod = Config
type instance PluginState  MyMod = ModState
type instance PluginAction MyMod = String

connectToWM :: ContextM MyMod a ()
connectToWM = do
  logInfo "Connecting..."
  res <- try $ clientRun def handleMsgG $ \_ -> do
    logInfo "Connected"
    forever $ threadDelay maxBound
  case res of
    Right{} -> return ()
    Left (ex :: SomeException) -> do
      logError $ "Disconnected (exception occurred)" :# [ "exception" .= show ex ]
      threadDelay 5_000_000
      connectToWM

handleMsgG :: Response -> ContextM MyMod a ()
handleMsgG Identify {} = pure ()
handleMsgG Outputs {..} = modifyGlobal @MyMod @Global $ \s -> s {outputs = outputs}
handleMsgG Workspaces {..} = do
  modifyGlobal $ \s -> s {workspacesInfo = workspaces}
  queueUpdateAll
handleMsgG FocusedWindow {window} = do
  modifyGlobal $ \s -> s {curfocus = window}
  queueUpdateAll
handleMsgG msg = logWarn $ "Unhandled incoming message" :# [ "msg" .= msg ]

-- | Wait for the waybar window to be created, then sniff out the assigned screen name.
updateOutputName :: (PluginState a ~ ModState) => ContextM MyMod (IConf a) ()
updateOutputName = do
  ic <- asks envInstance
  let w = instRootWidget ic
  rootPath <- widgetGetPath w
  classes <- widgetPathIterListClasses rootPath 0
  case filter check classes of
    name : _ -> do
      logInfo $ "Output name detected" :# [ "output" .= name ]
      modifyState $ \s -> s {thisOutputName = name}
      queueUpdate
    [] -> logError $ "Could not determine output name name!" :# [ "classes" .= classes ]
  where
    check s
      | Just ('-', x) <- T.uncons (T.takeEnd 2 s), Just (n, _) <- T.uncons x = isDigit n
      | otherwise = False

updateWorkspaces :: MIO ()
updateWorkspaces = do
  m <- getInstance
  g <- getGlobal
  st <- getState

  let RWorkspaces{..} = g.workspacesInfo
      thisScreen = fromMaybe maxBound (L.lookup st.thisOutputName g.outputs)

      setWidgetWSI w ws foc vis screen = do
        sc <- widgetGetStyleContext w
        setClass sc "focused" foc
        setClass sc "visible" vis
        setClass sc "empty" (null ws.windowList)
        text <- mkWorkspaceLabel ws
        tooltip <- mkWorkspaceTooltip ws screen (fst <$> L.find (\(_, b) -> Just b == screen) g.outputs)
        set w [ #label := text, #tooltipMarkup := tooltip ]
        when (screen == Just thisScreen) $
          set (layoutWidget m) [ #label := last $ T.words ws.layout, #tooltipText := ws.layout ]

  -- Destroy deleted
  forM_ (drop (length tags) st.tagWidgets) widgetDestroy

  -- Create new
  newTags <- forM (drop (length st.tagWidgets) tags) add

  let widgets = take (length tags) st.tagWidgets ++ newTags

  forM_ (zip tags widgets) $ \(ws, w) ->
    if
      -- Focused (on this screen)
      | (thisScreen, ws.tag) == focused -> setWidgetWSI w ws True False (Just thisScreen)
      -- Visible but not focused (on this screen)
      | (screen, _) : _ <- [x | x <- focused : visible, ws.tag == snd x] -> setWidgetWSI w ws False True (Just screen)
      -- Hidden
      | otherwise -> setWidgetWSI w ws False False Nothing

  modifyState $ \x -> x {tagWidgets = widgets}
    where
      add _ = do
        m <- getInstance
        l <- new Label [ #useMarkup := True ]
        widgetGetStyleContext l >>= \sc -> styleContextAddClass sc "workspace"
        containerAdd m.workspacesContainer l
        widgetShow l
        return l

updateFocusInfo :: MIO ()
updateFocusInfo = do
  MyMod {..} <- getInstance
  g <- getGlobal
  case g.curfocus of
    Just winfo -> do
      label <- markupEscape winfo.title
      tooltip <- mkFocusedTooltip winfo
      set focusInfoWidget [ #label := label, #tooltipMarkup := tooltip ]
    Nothing -> do
      set focusInfoWidget [ #label := "" ]
      clear focusInfoWidget #tooltipMarkup

mkWorkspaceLabel :: WorkspaceInfo -> MIO Text
mkWorkspaceLabel ws = do
  c <- getConfig
  let vals = [ ("tag", pure $ T.pack ws.tag)
             , ("keyhint", pure ws.keyhint)
             ]
  runTextFormat vals c.wsFormat

mkWorkspaceTooltip :: WorkspaceInfo -> Maybe ScreenId -> Maybe Text -> MIO Text
mkWorkspaceTooltip ws screen outputName = do
  c <- getConfig
  let vals :: [(String, MIO Text)]
      vals = [ ("numWindows", pure $ tshow $ length ws.windowList)
             , ("layout", pure ws.layout)
             , ("screen", pure $ maybe "" (tshow . fromEnum) screen)
             , ("outputName", pure $ fromMaybe "-" outputName)
             ]
  runTextFormat vals c.wsTooltipFormat

mkFocusedTooltip :: WindowInfo -> MIO Text
mkFocusedTooltip wi = do
  c <- getConfig
  let vals = [ ("title", markupEscape wi.title)
             , ("appId", markupEscape wi.appId)
             ]
  runTextFormat vals c.focusedWindowTooltipFormat

markupEscape :: MonadIO m => Text -> m Text
markupEscape text = markupEscapeText (text <> "\0") (-1)

setClass :: MonadIO m => StyleContext -> Text -> Bool -> m ()
setClass sc name False = styleContextRemoveClass sc name
setClass sc name True  = styleContextAddClass    sc name

addClass :: (MonadIO m, IsWidget w) => w -> Text -> m ()
addClass w name = do
  sc <- widgetGetStyleContext w
  styleContextAddClass sc name

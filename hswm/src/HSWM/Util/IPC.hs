{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE PartialTypeSignatures #-}

-- |
-- Module      : HSWM.Util.IPC
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.IPC where

import Data.Aeson qualified as A
import Data.ByteString.Char8 qualified as C8
import Data.ByteString.Lazy qualified as BL
import Data.ByteString.UTF8 qualified as BUTF8
import Data.Map qualified as M
import Data.Text qualified as T
import Data.Text.Lazy qualified as TL
import Data.Version (showVersion)
import Foreign.Ptr
import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Core as HSWM
import HSWM.Operations
import HSWM.StackSet qualified as W
import Network.Socket
import Network.Socket.ByteString qualified as NB
import PackageInfo_hswm qualified as PKG
import Bindings.River qualified as R
import qualified Data.List as L
import HSWM.InputConfig (InputConfigState)
import Text.Pretty.Simple qualified as P

runStdoutAsTextLoggingT :: MonadIO m => LoggingT m a -> m a
runStdoutAsTextLoggingT a = do
  let logFunc = defaultOutput stdout
  runLoggingT a logFunc

runMIO :: LoggingT m a -> m a
runMIO = runStdoutLoggingT

type MIO = LoggingT IO

type MonadIPC env m = (MonadReader env m, MonadLogger m, MonadIO m, MonadUnliftIO m, MonadMask m)

-- | Workspace identifier type
type WsId = String

type LayoutDesc = T.Text

data ConnectedPeers = ConnectedPeers
  { connected :: M.Map String Socket,
    currentWorkspaces :: [String]
  }
  deriving (Generic)
  deriving anyclass (Default)

data ProtoMsg
  = -- | Sent at the beginning of the connection (both ways)
    Identify {name :: String, version :: Int, description :: Maybe String}
  | Ping {seqn :: !Int}
  | Pong {seqn :: !Int}
  | OutputInfo {outputs :: [(T.Text, ScreenId)]}
  | -- | Inform the client of current workspace configuration.
    WsInfo
      { wsNames :: [(WsId, Text)] -- ^ the correct sort order (+ keyhint)
      , wsFocused :: (ScreenId, WorkspaceInfo)
      , wsVisible :: [(ScreenId, WorkspaceInfo)]
      , wsHidden :: [WorkspaceInfo]
      }
  | -- | Inform the client about the details of the currently focused window.
    FocusedWindow {window :: WindowInfo}

  | -- | There is nothing currently focused
    FocusedNone

  | StateDump { param :: String }
  | StateDumpResponse TL.Text
  deriving (Eq, Show, Read, Generic)

data WorkspaceInfo = WorkspaceInfo
  { tag :: WsId
  , layout :: LayoutDesc
  , windowList :: [WindowInfo]
  } deriving (Eq, Show, Read, Generic)

data WindowInfo = WindowInfo
  { wid :: Word,
    title, appId, identifier :: Text,
    pid :: Maybe Int
  }
  deriving (Eq, Show, Read, Generic)
instance Default WindowInfo where def = WindowInfo def  "" "" "" def

instance A.ToJSON WorkspaceInfo

instance A.FromJSON WorkspaceInfo

instance A.ToJSON WindowInfo

instance A.FromJSON WindowInfo

instance A.ToJSON ProtoMsg

instance A.FromJSON ProtoMsg

data ServerConfig = ServerConfig
  { socketAddr :: SockAddr,
    maxPendingConns :: Int
  }
  deriving (Eq, Show)

instance Default ServerConfig where
  def = ServerConfig (SockAddrUnix "/run/user/1000/hswm-1") 8

newtype ClientConfig = ClientConfig { connectTo :: SockAddr }
  deriving (Eq, Show)

instance Default ClientConfig where
  def = ClientConfig (SockAddrUnix "/run/user/1000/hswm-1")

ipcLogHook :: H ()
ipcLogHook = withObject $ \(sRef :: IORef ConnectedPeers) -> do
  msgs <- fullStateUpdate
  s <- io $ readIORef sRef
  forM_ (M.elems s.connected) $ \c -> io . forkIO $ mapM_ (sendMsg c) msgs

serverStartupHook :: ServerConfig -> H ()
serverStartupHook conf = do
  logInfo "Starting IPC server"
  stateRef <- getOrCreateObject (newIORef (def :: ConnectedPeers))
  _ <- async $ serverRun conf stateRef serverHandleMsg
      `finally` logInfo "IPC server thread finished"
  logInfo "IPC server started"

serverRun ::
  forall env m.
  (MonadIPC env m, env ~ HConf) =>
  ServerConfig -> IORef ConnectedPeers -> (Socket -> ProtoMsg -> m ()) -> m ()
serverRun conf stateRef onMsg = withThreadContext ["component" .= ("ipc/server"::String)] $ do

  case conf.socketAddr of
    SockAddrUnix socketPath -> do
      exists <- io $ doesFileExist socketPath
      io $ when exists $ removeFile socketPath
    _ -> return ()

  bracket (io $ socket AF_UNIX Stream defaultProtocol) (io . close) $ \sock -> do
    io $ bind sock conf.socketAddr
    io $ listen sock conf.maxPendingConns
    logInfo $ "Socket server listening" :# [ "addr" .= show conf.socketAddr ]
    acceptLoop sock
  where
    acceptLoop :: _ -> m ()
    acceptLoop sock = forever $ do
      (conn, _) <- io $ accept sock
      let ck = show conn
      logInfo $ "New domain socket client connected" :# [ "peer" .= show conn ]
      let cleanup = do
            modifyIORef stateRef $ \s -> s {connected = M.delete ck s.connected}
            io $ close conn
      _clientAs <- async $ handleClient ck conn `finally` cleanup
      modifyIORef stateRef $ \s -> s {connected = M.insert ck conn s.connected}

    handleClient :: _ -> _ -> m ()
    handleClient _ck conn = do
      sendMsg conn $ Identify (PKG.name ++ "-server") 0 (Just $ PKG.synopsis ++ " " ++ showVersion PKG.version)
      let worker lo = do
            (resps, leftover) <- io $ recvLines conn lo
            mapM_ doMsg resps
            worker leftover

          doMsg resp = case A.eitherDecodeStrict' resp of
            Left e -> log' $ display $ "Received malformed message from client: " <> toText e
            Right (Ping n) -> sendMsg conn (Pong n)
            Right (msg :: ProtoMsg) -> do
              --logDebug $ "IPC client event (raw)" :# [ "peer" .= fromString ck, "msg" .= BUTF8.toString resp ]
              -- debug' $ "IPC client event (decoded): " <> tshow msg
              onMsg conn msg
      worker ""

serverHandleMsg :: (MonadIPC env m, env ~ HConf) => Socket -> ProtoMsg -> m ()
serverHandleMsg c Identify {} = fullStateUpdate >>= mapM_ (sendMsg c)
serverHandleMsg c StateDump{..} = do
  dump <- case param of
            "input-config-state" -> P.pShow <$> getObjectDef @InputConfigState
            _ -> TL.pack <$> runInHS dumpStateAsString
  sendMsg c $ StateDumpResponse dump
serverHandleMsg c msg = logWarn $ "[IPC] unhandled message" :# [ "message" .= msg, "peer" .= show c ]

clientRun ::
  (MonadIPC env m) =>
  ClientConfig ->
  -- | Process incoming
  (ProtoMsg -> m ()) ->
  -- | Emit outgoing msg
  ((ProtoMsg -> m ()) -> m ()) ->
  m ()
clientRun conf onMsg cb = withThreadContext ["component" .= ("ipc/client"::String)] $ bracket (io $ socket AF_UNIX Stream defaultProtocol) (io . close) $ \sock -> do
  io $ connect sock conf.connectTo
  io $ sendMsg sock $ Identify (PKG.name ++ "-client") 0 (Just $ PKG.synopsis ++ " " ++ showVersion PKG.version)
  withAsync (inputWorker sock) $ \inputAs -> do
    link inputAs
    cb (sendMsg sock) `finally` cancel inputAs
  where
    inputWorker sock = do
      let worker lo = do
            (resps, leftover) <- io $ recvLines sock lo
            mapM_ doMsg resps
            worker leftover

          doMsg resp = case A.eitherDecodeStrict' resp of
            Left e -> logWarn $ "Received malformed message from server" :# [ "ex" .= toText e, "msg" .= BUTF8.toString resp ]
            Right (Ping n) -> sendMsg sock (Pong n)
            Right msg -> do
              --logDebug $ "IPC server event (raw)" :# [ "msg" .= BUTF8.toString resp ]
              onMsg msg
      forever $ worker ""

sendMsg :: (MonadIO m) => Socket -> ProtoMsg -> m ()
sendMsg sock msg = io $ NB.sendAll sock (BL.toStrict $ A.encode msg <> "\n")

recvLines :: Socket -> ByteString -> IO ([ByteString], ByteString)
recvLines sock leftover = do
  res <- NB.recv sock 4096
  when (res == "") $ error "recvLines: disconnected"
  return $! decode [] (leftover <> res)
  where
    decode :: [ByteString] -> ByteString -> ([ByteString], ByteString)
    decode msgs x =
      let (as, bs) = C8.break (== '\n') x
       in case C8.uncons bs of
            Just ('\n', bs') -> decode (msgs ++ [as]) bs'
            _ -> (msgs, x)

----------------------------------------------------------------------------------
-- Info for status bars

-- | Set of events to fully refresh statusbar's tracked state
fullStateUpdate :: (MonadIPC env m, env ~ HConf) => m [ProtoMsg]
fullStateUpdate = runInHS $ do
  outs <- gets _outputs
  ws <- gets windowset

  -- gather outputs
  let outputInfo = OutputInfo [(T.pack out.outputName, out.screen) | out <- outs]

  -- workspace sort order
  wsSortPP <- DWO.getSortByOrder

  wins <- gets _windows

  let tags = zip [tag | W.Workspace {..} <- wsSortPP (W.workspaces ws)] (keyhints ++ L.repeat "")

      keyhints = map (toText . (:[])) ['a'..'z']

      focusedTag = let W.Screen ws' sid _ = W.current ws in (sid, getWsData ws')
      visibleTags = [(sid, getWsData ws') | W.Screen ws' sid _ <- W.visible ws]
      hiddens = map getWsData $ W.hidden ws

      getWsData W.Workspace{..} = WorkspaceInfo tag (toText $ HSWM.description layout) (map getWindowInfo $ W.integrate' stack)

      getWindowInfo rw = maybe def toWindowInfo (M.lookup rw wins)

  -- basic info about workspaces
  let wsInfo = WsInfo tags focusedTag visibleTags hiddens

  -- info about focused window (if any)
  focusedInfo <-
    if
      | Just fw <- W.peek ws ->
          lookupWindow fw >>= \case
            Just w -> return $ FocusedWindow $ toWindowInfo w
            Nothing -> return FocusedNone
      | otherwise -> return FocusedNone

  return [outputInfo, wsInfo, focusedInfo]

toWindowId :: RiverWindow -> Word
toWindowId (R.RiverWindow w) = let WordPtr res = ptrToWordPtr w in res

toWindowInfo :: Window -> WindowInfo
toWindowInfo w =
  WindowInfo
    { wid = toWindowId w.river_window,
      title = toText w.title,
      appId = toText w.appId,
      identifier = toText w.identifier,
      pid = w.unreliablePid
    }

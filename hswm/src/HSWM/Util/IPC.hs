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
import Options.Generic
import HSWM.Utils
import System.FileLock

runStdoutAsTextLoggingT :: MonadIO m => LoggingT m a -> m a
runStdoutAsTextLoggingT a = do
  let logFunc = defaultOutput stdout
  runLoggingT a logFunc

runMIO :: LoggingT m a -> m a
runMIO = runStderrLoggingT

type MIO = LoggingT IO

type MonadIPC env m = (MonadReader env m, MonadLogger m, MonadIO m, MonadUnliftIO m, MonadMask m)

-- | Workspace identifier type
type WsId = String

type LayoutDesc = T.Text

data Connection = Connection
  { connSocket :: Socket
  , connSendQ :: TQueue ProtoMsg
  , connWorkerThread :: Async ()
  , connPid, connUid, connGid :: !Int
  } deriving (Generic)

data ConnectedPeers = ConnectedPeers
  { connected :: M.Map Int Connection,
    currentWorkspaces :: [String],
    serverThread :: Maybe (Async ())
  }
  deriving (Generic)
  deriving anyclass (Default)

data ProtoMsg
  = -- | Sent at the beginning of the connection (both ways)
    Identify {name :: String, version :: Int, description :: Maybe String}
  | Ping {seqn :: !Int}
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
  { bindTo :: Maybe AddrInfo,
    maxPendingConns :: Int,
    onClientMessage :: Socket -> Request -> H ()
  }

instance Default ServerConfig where
  def = ServerConfig Nothing 8 serverHandleMsg

newtype ClientConfig = ClientConfig { connectTo :: SockAddr }
  deriving (Eq, Show)

instance Default ClientConfig where
  def = ClientConfig (SockAddrUnix "/run/user/1000/hswm-1")

data Request
  = IdentifyClient {name :: String, version :: Int, description :: Maybe String}
  | DumpState { param :: String }
  | Pong {seqn :: !Int}
  deriving (Generic, Eq, Show, Read)

instance ParseRecord Request

instance A.ToJSON Request

instance A.FromJSON Request

ipcLogHook :: H ()
ipcLogHook = withObject $ \(sRef :: IORef ConnectedPeers) -> do
  msgs <- fullStateUpdate
  s <- readIORef sRef
  forM_ (M.elems s.connected) $ \c ->
    atomically $ mapM_ (writeTQueue c.connSendQ) msgs

serverStartupHook :: ServerConfig -> H ()
serverStartupHook conf = do
  stateRef <- getOrCreateObject (newIORef (def :: ConnectedPeers))
  serverThread <- async $ serverRun conf stateRef
  modifyIORef stateRef $ \st -> st { serverThread = Just serverThread }

getServerAddr :: ServerConfig -> H (AddrInfo, Maybe FilePath)
getServerAddr conf = case conf.bindTo of
                       Just ai -> return (ai, Nothing)
                       Nothing -> do
                         runtimeDir <- io getXdgRuntimeDirectory
                         let sockFile = runtimeDir ++ "/hswm-1"
                         return (defaultHints
                           { addrFamily = AF_UNIX
                           , addrSocketType = Stream
                           , addrAddress = SockAddrUnix sockFile
                           }, Just (sockFile ++ ".lock"))

serverRun :: ServerConfig -> IORef ConnectedPeers -> H ()
serverRun conf stateRef = withThreadContext ["component" .= ("ipc/server"::String)] $ do
  (ai, mlockFile) <- getServerAddr conf
  withLock mlockFile $ do
    logInfo $ "Starting IPC server" :# [ "bind" .= show ai ]
    case ai.addrAddress of
      SockAddrUnix socketPath -> do
        exists <- io $ doesFileExist socketPath
        io $ when exists $ removeFile socketPath
      _ -> return ()
    bracket (open ai) (io . close) loop
      `finally` logInfo "IPC server thread finished"
  where
    withLock mlock a = case mlock of
      Nothing -> a
      Just fp -> do
        r <- io $ tryLockFile fp Exclusive
        case r of
          Just _ -> a
          Nothing -> do
            logError "Could not lock file"

    open ai = bracketOnError (io $ openSocket ai) (io . close) $ \sock -> do
      io $ withFdSocket sock setCloseOnExecIfNeeded
      io $ bind sock ai.addrAddress
      io $ listen sock conf.maxPendingConns
      logInfo $ "Socket server listening" :# [ "addr" .= show ai.addrAddress ]
      return sock

    loop :: _ -> H ()
    loop sock = forever $
      bracketOnError (io $ accept sock) (io . close . fst) $ \(conn, _peer) -> do
        (connFd :: Int) <- io $ withFdSocket conn $ return . fi
        (mpid, muid, mgid) <- io $ getPeerCredential conn
        let pid = fi $ fromMaybe 0 mpid :: Int
        let uid = fi $ fromMaybe 0 muid :: Int
        let gid = fi $ fromMaybe 0 mgid :: Int
        logInfo $ "New domain socket client connected" :# [ "fd" .= connFd, "pid" .= pid, "uid" .= uid, "gid" .= gid ]
        let cleanup = do
              modifyIORef stateRef $ \s -> s {connected = M.delete connFd s.connected}
              io $ gracefulClose conn 5000
              logInfo "Client connection closed"
        connSendQ <- newTQueueIO
        connWorkerThread <- async $
          withThreadContext [ "fd" .= connFd, "pid" .= pid, "uid" .= uid, "gid" .= gid ] $
          handleClient conn connSendQ `finally` cleanup
        let c = Connection{connSocket = conn, connPid = pid, connUid = uid, connGid = gid, ..}
        modifyIORef stateRef $ \s -> s {connected = M.insert connFd c s.connected}

    handleClient :: _ -> _ -> H ()
    handleClient conn sendQ = do
      atomically . writeTQueue sendQ $ Identify (PKG.name ++ "-server") 0 (Just $ PKG.synopsis ++ " " ++ showVersion PKG.version)
      let worker lo = do
            waitRead <- io $ waitReadSocketSTM conn
            r <- atomically $ (Left <$> waitRead) `orElse` (Right <$> readTQueue sendQ)
            case r of
              Left{} -> do
                (resps, leftover) <- recvLines conn lo
                mapM_ doMsg resps
                worker leftover
              Right msg -> do
                sendMsg conn msg
                worker lo

          doMsg resp = case A.eitherDecodeStrict' resp of
                         Left e -> logWarn $ "Received malformed message from client" :# [ "exception" .= toText e, "msg" .= BUTF8.toString resp ]
                         Right msg -> conf.onClientMessage conn msg
      worker ""

serverHandleMsg :: (MonadIPC env m, env ~ HConf) => Socket -> Request -> m ()
serverHandleMsg c r@IdentifyClient{} = do
  logInfo $ "client sent identity" :# [ "id" .= r ]
  fullStateUpdate >>= mapM_ (sendMsg c)
serverHandleMsg c DumpState{..} = do
  dump <- case param of
            "input-config-state" -> P.pShow <$> getObjectDef @InputConfigState
            _ -> TL.pack <$> runInHS dumpStateAsString
  sendMsg c $ StateDumpResponse dump
serverHandleMsg _ msg = logWarn $ "Unhandled message" :# [ "message" .= msg ]

clientRun ::
  (MonadIPC env m) =>
  ClientConfig ->
  -- | Process incoming
  (ProtoMsg -> m ()) ->
  -- | Emit outgoing msg
  ((Request -> m ()) -> m ()) ->
  m ()
clientRun conf onMsg cb = withThreadContext ["component" .= ("ipc/client"::String)] $
  bracket (open conf.connectTo) (io . close) $ \sock -> do
    io $ sendMsg sock $ IdentifyClient (PKG.name ++ "-client") 0 (Just $ PKG.synopsis ++ " " ++ showVersion PKG.version)
    withAsync (inputWorker sock) $ \inputAs -> do
      link inputAs
      cb (sendMsg sock) `finally` cancel inputAs
  where
    open addr = bracketOnError (io $ socket AF_UNIX Stream defaultProtocol) (io . close) $ \sock -> do
      io $ connect sock addr
      return sock

    inputWorker sock = do
      let worker lo = do
            (resps, leftover) <- recvLines sock lo
            mapM_ doMsg resps
            worker leftover

          doMsg resp = case A.eitherDecodeStrict' resp of
            Left e -> logWarn $ "Received malformed message from server" :# [ "ex" .= toText e, "msg" .= BUTF8.toString resp ]
            Right (Ping n) -> sendMsg sock (Pong n)
            Right msg -> do
              --logDebug $ "IPC server event (raw)" :# [ "msg" .= BUTF8.toString resp ]
              onMsg msg
      forever $ worker ""

sendMsg :: (MonadIO m, A.ToJSON msg) => Socket -> msg -> m ()
sendMsg sock msg = io $ NB.sendAll sock (BL.toStrict $ A.encode msg <> "\n")

recvLines :: (MonadIPC env m) => Socket -> ByteString -> m ([ByteString], ByteString)
recvLines sock leftover = do
  res <- io $ NB.recv sock 4096
  when (res == "") $ throwString "recvLines: disconnected"
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

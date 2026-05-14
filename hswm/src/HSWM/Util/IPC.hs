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
import Data.Aeson.KeyMap qualified as KM
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

type MonadIPC env m = (MonadLogger m, MonadIO m, MonadUnliftIO m, MonadMask m, MonadReader env m)

type MonadIPCClient m = (MonadLogger m, MonadIO m, MonadUnliftIO m, MonadMask m)

-- | Requests (client to server).
data Request
  = IdentifyClient {name :: String, version :: Int, description :: Maybe String }
  -- ^ Identifies the client to the server.

  | DumpState { param :: String }
  -- ^ Request a state dump.

  | Pong
  deriving (Generic, Eq, Show, Read)

instance A.ToJSON Request
instance A.FromJSON Request
instance ParseRecord Request

-- | Responses (server to client).
data Response
  = Identify { name :: String, version :: Int, description :: Maybe String }
  -- ^ Server identification info.

  | Ping

  | Outputs { outputs :: [(Text, ScreenId)] }
  -- ^ Outputs updated. @(outputName, screenId)@

  | Workspaces { workspaces :: RWorkspaces }
  -- ^ Inform the client of current workspace configuration.

  | FocusedWindow { window :: Maybe WindowInfo }
  -- ^ Details of the currently focused window.

  | StateDumpResponse TL.Text
  deriving (Eq, Show, Read, Generic)

instance A.ToJSON Response
instance A.FromJSON Response

data RWorkspaces = RWorkspaces
  { tags :: [WorkspaceInfo]
  , focused :: (ScreenId, WsId)
  , visible :: [(ScreenId, WsId)]
  } deriving (Eq, Show, Read, Generic)

instance Default RWorkspaces where def = RWorkspaces def (def, def) def
instance A.ToJSON RWorkspaces
instance A.FromJSON RWorkspaces

data Msg a = Msg
  { msgBody :: a
  , msgSeqn :: Maybe Int
  }

instance A.ToJSON a => A.ToJSON (Msg a) where
  toJSON Msg{..} =
    case A.toJSON msgBody of
        A.Object o -> A.Object $! KM.insert "seqn" (A.toJSON msgSeqn) o
        x -> x

instance A.FromJSON a => A.FromJSON (Msg a) where
  parseJSON v = do
    msgBody <- A.parseJSON v
    msgSeqn <- A.withObject "Msg" (\v' -> v' A..:? "seqn") v
    return Msg{..}

data WorkspaceInfo = WorkspaceInfo
  { tag        :: WsId
  , keyhint    :: Text
  , layout     :: Text
  , windowList :: [WindowInfo]
  } deriving (Eq, Show, Read, Generic)

instance A.ToJSON WorkspaceInfo
instance A.FromJSON WorkspaceInfo

data WindowInfo = WindowInfo
  { wid :: Word
  , title, appId, identifier :: Text
  , pid :: Maybe Int
  }
  deriving (Eq, Show, Read, Generic)

instance Default WindowInfo where def = WindowInfo def  "" "" "" def
instance A.ToJSON WindowInfo
instance A.FromJSON WindowInfo

-- | Workspace identifier type
type WsId = String

runStdoutAsTextLoggingT :: MonadIO m => LoggingT m a -> m a
runStdoutAsTextLoggingT a = do
  let logFunc = defaultOutput stdout
  runLoggingT a logFunc

runMIO :: LoggingT m a -> m a
runMIO = runStderrLoggingT

type MIO = LoggingT IO

-- * Hooks

serverStartupHook :: ServerConfig -> H ()
serverStartupHook conf = do
  stateRef <- getOrCreateObject (newIORef (def :: ConnectedPeers))
  serverThread <- async $ serverRun conf stateRef
  modifyIORef stateRef $ \st -> st { serverThread = Just serverThread }

ipcLogHook :: H ()
ipcLogHook = withObject $ \(sRef :: IORef ConnectedPeers) -> do
  msgs <- fullStateUpdate
  s <- readIORef sRef
  atomically $ forM_ (M.elems s.connected) $ \c ->
    mapM_ (writeTQueue c.connSendQ) msgs

-- * Server

data ServerConfig = ServerConfig
  { bindTo          :: Maybe AddrInfo
  , maxPendingConns :: Int
  , onClientMessage :: Socket -> Msg Request -> H ()
  } deriving (Generic)

instance Default ServerConfig where
  def = ServerConfig Nothing 8 serverHandleMsg

-- | Server-side state.
data ConnectedPeers = ConnectedPeers
  { connected    :: M.Map Int Connection
  , serverThread :: Maybe (Async ())
  }
  deriving stock (Generic)
  deriving anyclass (Default)

-- | A single connection (server-side).
data Connection = Connection
  { connSocket                :: Socket
  , connSendQ                 :: TQueue Response
  , connWorkerThread          :: Async ()
  , connPid, connUid, connGid :: !Int
  } deriving stock (Generic)

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
      Just file -> do
        r <- io $ tryLockFile file Exclusive
        case r of
          Just _ -> a
          Nothing -> logError "Could not lock file"

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

        connSendQ <- newTQueueIO
        connWorkerThread <- async $
          withThreadContext [ "fd" .= connFd, "pid" .= pid, "uid" .= uid, "gid" .= gid ] $
          connWorker conn connSendQ `finally` cleanup connFd conn

        let c = Connection{connSocket = conn, connPid = pid, connUid = uid, connGid = gid, ..}

        modifyIORef stateRef $ \s -> s {connected = M.insert connFd c s.connected}

    connWorker :: _ -> _ -> H ()
    connWorker conn sendQ = do
      let worker lo = do
            waitRead <- io $ waitReadSocketSTM conn
            r <- atomically $ (Left <$> waitRead) `orElse` (Right <$> readTQueue sendQ)
            case r of
              Left{} -> do
                (rs, loNew) <- recvLines conn lo
                mapM_ doMsg rs
                worker loNew
              Right msg -> sendMsg conn msg >> worker lo

          doMsg resp = case A.eitherDecodeStrict' resp of
                         Right msg -> conf.onClientMessage conn msg
                         Left e -> logWarn $ "Received malformed message from client" :# [ "exception" .= toText e, "msg" .= BUTF8.toString resp ]

      atomically . writeTQueue sendQ $ Identify (PKG.name ++ "-server") 0 (Just $ PKG.synopsis ++ " " ++ showVersion PKG.version)
      worker ""

    cleanup connFd conn = do
          modifyIORef stateRef $ \s -> s {connected = M.delete connFd s.connected}
          io $ gracefulClose conn 5000
          logInfo "Client connection closed"

getServerAddr :: ServerConfig -> H (AddrInfo, Maybe FilePath) -- ^ (resolved addrinfo, lockfile)
getServerAddr conf =
  case conf.bindTo of
    Just ai -> return (ai, Nothing)
    Nothing -> do
      runtimeDir <- io getXdgRuntimeDirectory
      let sockFile = runtimeDir ++ "/hswm-1"
      return (defaultHints
        { addrFamily = AF_UNIX
        , addrSocketType = Stream
        , addrAddress = SockAddrUnix sockFile
        }, Just (sockFile ++ ".lock"))

serverHandleMsg :: (MonadIPC env m, env ~ HConf) => Socket -> Msg Request -> m ()
serverHandleMsg c (Msg r seqn) =
  case r of
    IdentifyClient{} -> do
      logInfo $ "client sent identity" :# [ "id" .= r ]
      fullStateUpdate >>= mapM_ (sendMsg c)
    DumpState{..} -> do
      dump <- case param of
                "input-config-state" -> P.pShow <$> getObjectDef @InputConfigState
                _ -> TL.pack <$> runInHS dumpStateAsString
      sendMsg c $ Msg (StateDumpResponse dump) seqn

    _ -> logWarn $ "Unhandled message" :# [ "message" .= r ]

-- * Client

-- | IPC client configuration:
--
-- @connectTo@: @unix:[PATH]@
newtype ClientConfig = ClientConfig
  { connectTo :: String }
  deriving (Eq, Show, Read, Generic)

instance Default ClientConfig where
  def = ClientConfig "unix:"

getClientAI :: MonadIO m => ClientConfig -> m AddrInfo
getClientAI ClientConfig{..} =
  case L.break (== ':') connectTo of
    ("unix", ':' : name) -> do
      file <- makeAbs $ if name == "" then "hswm-1" else name
      return defaultHints
        { addrFamily = AF_UNIX
        , addrSocketType = Stream
        , addrAddress = SockAddrUnix file
        }
    _ -> throwString $ "cannot parse connect-to parameter: " ++ connectTo
  where
    makeAbs name
      | "/" `L.isPrefixOf` name = return name
      | otherwise = do
        rdir <- io getXdgRuntimeDirectory
        return $ rdir ++ "/" ++ name

clientRun :: MonadIPCClient m
          => ClientConfig
          -> (Response -> m ()) -- ^ Process incoming
          -> ((Request -> m ()) -> m ()) -- ^ Emit outgoing
          -> m ()
clientRun conf onMsg cb = withThreadContext ["component" .= ("ipc/client"::String)] $ do
  ai <- getClientAI conf
  bracket (open ai) (io . close) $ \sock -> do
    sendMsg sock $ IdentifyClient (PKG.name ++ "-client") 0 (Just $ PKG.synopsis ++ " " ++ showVersion PKG.version)
    withAsync (inputWorker sock) $ \inputAs -> do
      link inputAs
      cb (sendMsg sock) `finally` cancel inputAs
  where
    open ai = bracketOnError (io $ socket ai.addrFamily ai.addrSocketType ai.addrProtocol) (io . close) $ \sock -> do
      io $ connect sock ai.addrAddress
      return sock

    inputWorker sock = do
      let worker lo = do
            (resps, leftover) <- recvLines sock lo
            mapM_ doMsg resps
            worker leftover

          doMsg resp = case A.eitherDecodeStrict' resp of
            Right (Msg Ping n) -> sendMsg sock $ Msg Pong n
            Right (Msg msg _) -> onMsg msg
            --logDebug $ "IPC server event (raw)" :# [ "msg" .= BUTF8.toString resp ]
            Left e -> logWarn $ "Received malformed message from server" :# [ "ex" .= toText e, "msg" .= BUTF8.toString resp ]
      worker ""

-- * Utilities

sendMsg :: (MonadIO m, A.ToJSON msg) => Socket -> msg -> m ()
sendMsg sock msg = io $ NB.sendAll sock $ BL.toStrict $ A.encode msg <> "\n"

broadcastMsg :: (MonadIO m, A.ToJSON msg, Traversable t) => msg -> t Socket -> m ()
broadcastMsg msg socks = io $ forM_ socks $ \s -> NB.sendAll s msg'
  where msg' = BL.toStrict $ A.encode msg <> "\n"

recvLines :: (MonadIPCClient m) => Socket -> ByteString -> m ([ByteString], ByteString)
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

-- * Info for status bars

-- | Set of events to fully refresh statusbar's tracked state
fullStateUpdate :: (MonadIPC env m, env ~ HConf) => m [Response]
fullStateUpdate = runInHS $ sequence [ getOutputsInfo, getWorkspacesInfo, getFocusedInfo ]
  where
    getOutputsInfo = do
      outs <- gets _outputs
      return $! Outputs [(T.pack out.outputName, out.screen) | out <- outs]

    getWorkspacesInfo = do
      ws <- gets windowset
      wins <- gets _windows
      wsSortPP <- DWO.getSortByOrder
      let getWsData (W.Workspace{..}, keyhint) = WorkspaceInfo
            { tag = tag
            , keyhint = keyhint
            , layout = toText (HSWM.description layout)
            , windowList = map getWindowInfo (W.integrate' stack)
            }
          getWindowInfo rw = maybe def toWindowInfo (M.lookup rw wins)
      return $! Workspaces $! RWorkspaces
        { tags = map getWsData $ zip (wsSortPP (W.workspaces ws)) (keyhints ++ L.repeat "")
        , focused = let W.Screen sws sid _ = W.current ws in (sid, W.tag sws)
        , visible = [(sid, W.tag sws) | W.Screen sws sid _ <- W.visible ws]
        }

    keyhints = map (toText . (:[])) ['a'..'z']

    -- info about focused window (if any)
    getFocusedInfo = do
      ws <- gets windowset
      if
        | Just fw <- W.peek ws -> FocusedWindow . fmap toWindowInfo <$> lookupWindow fw
        | otherwise -> return $! FocusedWindow Nothing

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

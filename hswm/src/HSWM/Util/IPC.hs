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

import           HSWM.IPC
import qualified HSWM.Actions.DynamicWorkspaceOrder as DWO
import           HSWM.Core as HSWM
import           HSWM.InputConfig (InputConfigState)
import           HSWM.Operations
import qualified HSWM.StackSet as W

import qualified River as R
import qualified Data.Aeson as A
import qualified Data.ByteString.UTF8 as BUTF8
import qualified Data.List as L
import qualified Data.Map as M
import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import           Network.Socket
import           System.FileLock
import qualified Text.Pretty.Simple as P

type MonadIPC env m = (MonadLogger m, MonadIO m, MonadUnliftIO m, MonadMask m, MonadReader env m)

-- * ServerConfig

data ServerConfig = ServerConfig
  { bindTo          :: Maybe AddrInfo
  , maxPendingConns :: Int
  , onClientMessage :: Socket -> Msg Request -> H ()
  } deriving (Generic)

instance Default ServerConfig where
  def = ServerConfig Nothing 8 serverHandleMsg

-- * Server State

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
  atomically $
    forM_ msgs $ \msg ->
      forM_ (M.elems s.connected) $ \c ->
        writeTQueue c.connSendQ msg

serverRun :: ServerConfig -> IORef ConnectedPeers -> H ()
serverRun conf stateRef = withThreadContext ["component" .= ("ipc/server" :: String)] $ do
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
    withLock mlock f = case mlock of
      Nothing -> f
      Just file -> do
        r <- io $ tryLockFile file Exclusive
        case r of
          Just _ -> f
          Nothing -> logError $ "Could not lock lockfile" :# [ "lockfile" .= file ]

    open ai = bracketOnError (io $ openSocket ai) (io . close) $ \sock -> do
      io $ withFdSocket sock setCloseOnExecIfNeeded
      io $ bind sock ai.addrAddress
      io $ listen sock conf.maxPendingConns
      logInfo $ "Socket server listening" :# [ "addr" .= show ai.addrAddress ]
      return sock

    loop :: _ -> H ()
    loop sock = forever $
      bracketOnError (io $ accept sock) (io . close . fst) $ \(conn, _peer) -> do
        connSendQ <- newTQueueIO
        (connFd :: Int) <- io $ withFdSocket conn $ return . fi
        (mpid, muid, mgid) <- io $ getPeerCredential conn
        let pid = fi $ fromMaybe 0 mpid :: Int
        let uid = fi $ fromMaybe 0 muid :: Int
        let gid = fi $ fromMaybe 0 mgid :: Int
        let ctx = [ "fd" .= connFd, "pid" .= pid, "uid" .= uid, "gid" .= gid ]
        connWorkerThread <- async $ withThreadContext ctx $
          connWorker conn connSendQ `finally` cleanup connFd conn
        let c = Connection{connSocket = conn, connPid = pid, connUid = uid, connGid = gid, ..}
        modifyIORef stateRef $ \s -> s {connected = M.insert connFd c s.connected}

    connWorker :: _ -> _ -> H ()
    connWorker conn sendQ = do
      logInfo "New domain socket client connected"
      atomically . writeTQueue sendQ $ Identify (thisPeerIdent "server") 0 (Just thisPeerDescription)

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

-- * Info for status bars

-- | Set of events to fully refresh statusbar's tracked state
fullStateUpdate :: (MonadIPC env m, env ~ HConf) => m [Response]
fullStateUpdate = runInHS $ sequence [ getOutputsInfo, getWorkspacesInfo, getFocusedInfo ]
  where
    getOutputsInfo = do
      outs <- use _outputs
      return $! Outputs [(T.pack out.outputName, s2o out.screen) | out <- outs]

    s2o (S x) = OutputId x

    getWorkspacesInfo = do
      ws <- use windowset
      wins <- use _windows
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
        , focused = let W.Screen sws sid _ = W.current ws in (s2o sid, W.tag sws)
        , visible = [(s2o sid, W.tag sws) | W.Screen sws sid _ <- W.visible ws]
        }

    keyhints = map (toText . (:[])) ['a'..'z']

    -- info about focused window (if any)
    getFocusedInfo = do
      ws <- use windowset
      if
        | Just fw <- W.peek ws -> FocusedWindow . fmap toWindowInfo <$> lookupWindow fw
        | otherwise -> return $! FocusedWindow Nothing

toWindowId :: RiverWindow -> Word
toWindowId (R.RiverWindow w) = let WordPtr res = ptrToWordPtr w in res

toWindowInfo :: Window -> WindowInfo
toWindowInfo w = WindowInfo
  { wid = toWindowId w.river_window
  , title = toText w.title
  , appId = toText w.appId
  , identifier = toText w.identifier
  , pid = w.unreliablePid
  }

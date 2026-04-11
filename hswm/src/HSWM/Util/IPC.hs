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
import System.Directory

type MonadIPC env m = (env ~ HConf, MonadReader env m, HasLogFunc env, MonadIO m)

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
    WsInfo {wsNames :: [WsId], wsFocused :: (WsId, ScreenId, LayoutDesc), wsVisible :: [(WsId, ScreenId, LayoutDesc)]}
  | -- | Inform the client about the details of the currently focused window.
    FocusedWindow {window :: WindowInfo}
  | -- | There is nothing currently focused
    FocusedNone
  deriving (Eq, Show, Read, Generic)

data WindowInfo = WindowInfo
  { wid :: Word,
    title, appId, identifier :: Text,
    pid :: Maybe Int
  }
  deriving (Eq, Show, Read, Generic)

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

data ClientConfig = ClientConfig
  { connectTo :: SockAddr
  }
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
  env <- ask
  logFunc <- asks (view logFuncL)
  void $
    io $
      forkFinally
        (flip runReaderT logFunc $ serverRun conf stateRef (\c -> io . flip runReaderT env . serverHandleMsg c))
        (\_ -> flip runReaderT logFunc $ log' "IPC server thread finished")
  logInfo "IPC server started"

serverRun ::
  forall env m.
  (MonadIO m, MonadUnliftIO m, MonadReader env m, HasLogFunc env) =>
  ServerConfig -> IORef ConnectedPeers -> (Socket -> ProtoMsg -> m ()) -> m ()
serverRun conf stateRef onMsg = do
  case conf.socketAddr of
    SockAddrUnix socketPath -> do
      exists <- io $ doesFileExist socketPath
      io $ when exists $ removeFile socketPath
    _ -> return ()

  bracket (io $ socket AF_UNIX Stream defaultProtocol) (io . close) $ \sock -> do
    io $ bind sock conf.socketAddr
    io $ listen sock conf.maxPendingConns
    logInfo $ "Socket server listening at: " <> displayShow conf.socketAddr
    acceptLoop sock
  where
    acceptLoop :: _ -> m ()
    acceptLoop sock = forever $ do
      (conn, _) <- io $ accept sock
      let ck = show conn
      logInfo $ "New domain socket client connected: " <> displayShow conn
      let cleanup = do
            modifyIORef stateRef $ \s -> s {connected = M.delete ck s.connected}
            io $ close conn
      _clientAs <- async $ handleClient ck conn `finally` cleanup
      modifyIORef stateRef $ \s -> s {connected = M.insert ck conn s.connected}

    handleClient :: _ -> _ -> m ()
    handleClient ck conn = do
      sendMsg conn $ Identify (PKG.name ++ "-server") 0 (Just $ PKG.synopsis ++ " " ++ showVersion PKG.version)
      let worker lo = do
            (resps, leftover) <- io $ recvLines conn lo
            mapM_ doMsg resps
            worker leftover

          doMsg resp = case A.eitherDecodeStrict' resp of
            Left e -> log' $ display $ "Received malformed message from client: " <> toText e
            Right (Ping n) -> sendMsg conn (Pong n)
            Right (msg :: ProtoMsg) -> do
              logDebug $ display $ "IPC client event (raw): " <> fromString ck <> ": " <> toText (BUTF8.toString resp)
              -- debug' $ "IPC client event (decoded): " <> tshow msg
              onMsg conn msg
      worker ""

serverHandleMsg :: (MonadIPC env m) => Socket -> ProtoMsg -> m ()
serverHandleMsg c Identify {} = fullStateUpdate >>= mapM_ (sendMsg c)
serverHandleMsg _ msg = log' $ display $ "[IPC] warn: unhandled message: " <> tshow msg

clientRun ::
  (MonadIO m, MonadUnliftIO m, MonadReader env m, HasLogFunc env) =>
  ClientConfig ->
  -- | Process incoming
  (ProtoMsg -> m ()) ->
  -- | Emit outgoing msg
  ((ProtoMsg -> m ()) -> m ()) ->
  m ()
clientRun conf onMsg cb = bracket (io $ socket AF_UNIX Stream defaultProtocol) (io . close) $ \sock -> do
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
            Left e -> logWarn $ display $ "Received malformed message from server: " <> toText e <> ": " <> toText (BUTF8.toString resp)
            Right (Ping n) -> sendMsg sock (Pong n)
            Right msg -> do
              debug' $ display $ "IPC server event (raw): " <> toText (BUTF8.toString resp)
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
fullStateUpdate :: (MonadIPC env m) => m [ProtoMsg]
fullStateUpdate = runInHS $ do
  outs <- gets _outputs
  ws <- gets windowset

  let outputInfo = OutputInfo [(T.pack out.outputName, out.screen) | out <- outs]

  wsSortPP <- DWO.getSortByOrder

  let focusedTag = let W.Screen W.Workspace {..} sid _ = W.current ws in (tag, sid, toText $ HSWM.description layout)
      visibleTags = [(tag, sid, toText $ HSWM.description layout) | W.Screen W.Workspace {..} sid _ <- W.visible ws]
  let tags = [tag | W.Workspace {..} <- wsSortPP (W.workspaces ws)]

  -- basic info about workspaces
  let wsInfo = WsInfo tags focusedTag visibleTags

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

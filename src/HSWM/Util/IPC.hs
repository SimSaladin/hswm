{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE PartialTypeSignatures #-}


-- |
-- Module      : HSWM.Util.IPC
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
module HSWM.Util.IPC where

import Data.Aeson qualified as A
import Data.ByteString.Lazy qualified as BL
import Data.ByteString.UTF8 qualified as BUTF8
import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as C8
import Data.Map qualified as M
import Data.Version (showVersion)
import Network.Socket
import Network.Socket.ByteString qualified as NB
import PackageInfo_hswm qualified as PKG
import System.Directory
import Foreign.Ptr
import qualified Data.Text as T
import qualified River.Objects as R

import HSWM.Core as HSWM
import qualified HSWM.StackSet as W
import HSWM.Operations

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

  | Ping {seqn :: Int}
  | Pong {seqn :: Int}

  | OutputInfo {outputs :: [(T.Text, ScreenId)]}

  | -- | Inform the client of current workspace configuration.
    WsInfo {wsNames :: [WsId], wsFocused :: (WsId, ScreenId, LayoutDesc), wsVisible :: [(WsId, ScreenId, LayoutDesc)]}

  | -- | Inform the client about the details of the currently focused window.
    FocusedWindow {wId :: Word, wTitle, wAppId, wIdentifier :: String, wPid :: Maybe Int}
  | -- | There is nothing currently focused
    FocusedNone

  deriving (Eq, Show, Read, Generic)


instance A.ToJSON ProtoMsg

instance A.FromJSON ProtoMsg

socketPath :: FilePath
socketPath = "/run/user/1000/hswm-1"

ipcLogHook :: H ()
ipcLogHook = withObject $ \(sRef :: IORef ConnectedPeers) -> do
  msgs <- fullStateUpdate
  s <- io $ readIORef sRef
  forM_ (M.elems s.connected) $ \c -> io . forkIO $ mapM_ (sendMsg c) msgs

serverStartupHook :: H ()
serverStartupHook = do
  stateRef <- getOrCreateObject (newIORef (def :: ConnectedPeers))
  logFunc <- asks (view logFuncL)
  withRunInH $ \runInH ->
    void $ forkFinally
      (flip runReaderT logFunc $ serverRun stateRef (\c -> io . runInH . serverHandleMsg c))
      (\_ ->flip runReaderT logFunc $ log' "IPC server thread finished" )

serverRun :: forall env m. (MonadIO m, MonadUnliftIO m, MonadReader env m, HasLogFunc env) => IORef ConnectedPeers -> (Socket -> ProtoMsg -> m ()) -> m ()
serverRun stateRef onMsg = do
  exists <- io $ doesFileExist socketPath
  io $ when exists $ removeFile socketPath

  bracket (io $ socket AF_UNIX Stream defaultProtocol) (io . close) $ \sock -> do
    io $ bind sock (SockAddrUnix socketPath)
    io $ listen sock 8
    log' $ display $ "Socket server listening at: " <> toText socketPath
    acceptLoop sock
  where
    acceptLoop ::  _ -> m ()
    acceptLoop sock = forever $ do
      (conn, _) <- io $ accept sock
      let ck = show conn
      log' $ display $ "New domain socket client connected: " <> tshow conn
      modifyIORef stateRef $ \s -> s {connected = M.insert ck conn s.connected}
      withAsync (handleClient ck conn) $ \as -> do
          r <- waitCatch as
          modifyIORef stateRef $ \s -> s {connected = M.delete ck s.connected}
          io $ close conn

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
                    debug' $ display $ "IPC client event (raw): " <> toText (BUTF8.toString resp)
                    --debug' $ "IPC client event (decoded): " <> tshow msg
                    onMsg conn msg
      worker ""

serverHandleMsg :: Socket -> ProtoMsg -> H ()
serverHandleMsg c Identify{} = fullStateUpdate >>= mapM_ (sendMsg c)
serverHandleMsg _ msg = log' $ display $ "[IPC] warn: unhandled message: " <> tshow msg

clientRun :: (MonadIO m, MonadUnliftIO m, MonadReader env m, HasLogFunc env) =>
  Maybe FilePath ->
  -- | Process incoming
  (ProtoMsg -> m ()) ->
  -- | Emit outgoing msg
  ((ProtoMsg -> m ()) -> m ()) -> m ()
clientRun mSockPath onMsg cb = bracket (io $ socket AF_UNIX Stream defaultProtocol) (io . close) $ \sock -> do
  io $ connect sock (SockAddrUnix $ fromMaybe socketPath mSockPath)
  io $ sendMsg sock $ Identify (PKG.name ++ "-client") 0 (Just $ PKG.synopsis ++ " " ++ showVersion PKG.version)
  mainThread <- io myThreadId
  let inputWorker = forever $ do
        let worker lo = do
              (resps, leftover) <- io $ recvLines sock lo
              mapM_ doMsg resps
              worker leftover

            doMsg resp = case A.eitherDecodeStrict' resp of
              Left e -> do
                log' $ display $ "Received malformed message from server: " <> toText e <> ": " <> toText (BUTF8.toString resp)
              Right (Ping n) -> sendMsg sock (Pong n)
              Right msg -> do
                debug' $ display $ "IPC server event (raw): " <> toText (BUTF8.toString resp)
                --debug' $ "IPC server event (decoded): " <> tshow msg
                onMsg msg
        worker ""

      andThen r = io $ do
        case r of
          Left ex -> throwTo mainThread (ex :: SomeException)
          Right _ -> killThread mainThread

  withAsync (inputWorker `finally` andThen (Right ())) $ \inputAs ->
    cb (sendMsg sock) `finally` cancel inputAs

sendMsg :: MonadIO m => Socket -> ProtoMsg -> m ()
sendMsg sock msg = io $ NB.sendAll sock (BL.toStrict $ A.encode msg <> "\n")

toWindowId :: RiverWindow -> Word
toWindowId (R.RiverWindow w) = let WordPtr res = ptrToWordPtr w in res

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
fullStateUpdate :: H [ProtoMsg]
fullStateUpdate = do
  outs <- gets _outputs
  ws <- gets windowset

  let outputInfo = OutputInfo [ (T.pack out.outputName, out.screen) | out <- outs ]

  let tags        = [ tag | W.Workspace{..} <- W.workspaces ws ]
      visibleTags = [ (tag, sid, toText $ HSWM.description layout) | W.Screen W.Workspace{..} sid _ <- W.visible ws ]
      focusedTag  = let W.Screen W.Workspace{..} sid _ = W.current ws in (tag, sid, toText $ HSWM.description layout)

  -- basic info about workspaces
  let wsInfo = WsInfo tags focusedTag visibleTags

  -- info about focused window (if any)
  focusedInfo <-
    if | Just fw <- W.peek ws -> lookupWindow fw >>= \case
              Just w -> return $ FocusedWindow (toWindowId fw) w.title w.appId w.identifier w.unreliablePid
              Nothing -> return FocusedNone
       | otherwise -> return FocusedNone

  return [outputInfo, wsInfo, focusedInfo]

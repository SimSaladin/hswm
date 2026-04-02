------------------------------------------------------------------------------
-- |
-- Module      : HSWM.Util.IPC
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@paivola.fi>
-- Stability   : unstable
-- Portability : unportable
--
------------------------------------------------------------------------------
module HSWM.Util.IPC where

import HSWM.Core

import qualified Data.ByteString.Lazy as BL
import           Data.IORef
import qualified Data.Map as M
import           Network.Socket
import qualified Network.Socket.ByteString as NB
import           System.Directory
import qualified Data.Aeson as A

data ConnectedPeers = ConnectedPeers
  { connected :: M.Map String Socket
  , currentWorkspaces :: [String]
  }
  deriving (Generic)
  deriving anyclass (Default)

data ProtoMsg =
  MsgIdentity { name :: String, version :: Int } -- ^ name and version
  deriving (Eq, Show, Read, Generic)

instance A.ToJSON ProtoMsg
instance A.FromJSON ProtoMsg

socketPath :: FilePath
socketPath = "/run/user/1000/hswm-1"

serverStartupHook :: H ()
serverStartupHook = do
  stateRef <- getOrCreateObject (newIORef (def :: ConnectedPeers))
  io $ void $ forkFinally (serverRun stateRef) (\_ -> log' "Socket server thread finished")

serverRun :: IORef ConnectedPeers -> IO ()
serverRun stateRef = do
  exists <- doesFileExist socketPath
  when exists $ removeFile socketPath

  bracket (socket AF_UNIX Stream defaultProtocol) close $ \sock -> do
    bind sock (SockAddrUnix socketPath)
    listen sock 8
    log' $ "Socket server listening at: " <> toText socketPath
    acceptLoop sock

  where
    acceptLoop sock = forever $ do
      (conn, _) <- accept sock
      let ck = show conn
      log' $ "New domain socket client connected: " <> tshow conn
      modifyIORef stateRef $ \s -> s { connected = M.insert ck conn s.connected }
      void $ forkFinally (handleClient ck conn)
          (\_ -> do
            modifyIORef stateRef $ \s -> s { connected = M.delete ck s.connected }
            close conn
          )

    handleClient _ck conn = do
      sendMsg conn $ MsgIdentity "hswm" 0
      let handleClientInput = do
              resp <- NB.recv conn 4096
              if resp == ""
                 then log' "Client disconnected"
                 else do
                   case A.eitherDecodeStrict' resp of
                        Left e -> log' $ "Received malformed message from client: " <> toText e
                        Right (msg :: ProtoMsg) -> do
                            debug' $ "IPC client event (raw): " <> tshow resp
                            debug' $ "IPC client event (decoded): " <> tshow msg
                   handleClientInput
      handleClientInput

clientRun :: Maybe FilePath
          -> (ProtoMsg -> IO ()) -- ^ Process incoming
          -> ((ProtoMsg -> IO ()) -> IO ()) -- ^ Emit outgoing msg
          -> IO ()
clientRun mSockPath onMsg cb = bracket (socket AF_UNIX Stream defaultProtocol) close $ \sock -> do
    connect sock (SockAddrUnix $ fromMaybe socketPath mSockPath)
    sendMsg sock $ MsgIdentity "hswm-client" 0
    threadId <- forkIO $ forever $ do
      resp <- NB.recv sock 4096
      case A.eitherDecodeStrict' resp of
        Left e -> log' $ "Received malformed message from server: " <> toText e
        Right msg -> do
          debug' $ "IPC server event (raw): " <> tshow resp
          debug' $ "IPC server event (decoded): " <> tshow msg
          onMsg msg
    cb (sendMsg sock) `finally` killThread threadId

sendMsg :: Socket -> ProtoMsg -> IO ()
sendMsg sock msg = NB.sendAll sock (BL.toStrict $ A.encode msg)

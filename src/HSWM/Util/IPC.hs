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

--import qualified Data.ByteString as S
import           Data.IORef
import qualified Data.Map as M
import           Network.Socket
import qualified Network.Socket.ByteString as NB
import           System.Directory

data ConnectedPeers = ConnectedPeers
  { connected :: M.Map String Socket
  , currentWorkspaces :: [String]
  }
  deriving (Generic)
  deriving anyclass (Default)

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
    acceptLoop sock = do
      (conn, _) <- accept sock
      let ck = show conn
      log' $ "New domain socket client connected: " <> tshow conn
      modifyIORef stateRef $ \s -> s { connected = M.insert ck conn s.connected }
      void $ forkFinally (handleClient ck conn)
          (\_ -> do
            modifyIORef stateRef $ \s -> s { connected = M.delete ck s.connected }
            close conn
          )

    handleClient ck conn = do
      msg <- NB.recv conn 4096
      if msg == ""
         then log' "Client disconnected"
         else do
           log' $ "Socket client received: " <> tshow msg

           -- TODO send response?
           handleClient ck conn

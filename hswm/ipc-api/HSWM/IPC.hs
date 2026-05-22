-- |
-- Module      : HSWM.IPC
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module HSWM.IPC where

import Data.Aeson qualified as A
import Data.Aeson.KeyMap qualified as KM
import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.Lazy qualified as TL
import Data.ByteString.Char8 qualified as C8
import Data.ByteString.Lazy qualified as BL
import Data.ByteString.UTF8 qualified as BUTF8
import Data.Map qualified as M
import Data.Text qualified as T
import Data.Text.Lazy qualified as TL
import Data.Version (showVersion)
import qualified Data.List as L
import           System.Environment (lookupEnv)

import Foreign.Ptr

import Network.Socket
import Network.Socket.ByteString qualified as NB

import PackageInfo_hswm qualified as PKG

type MonadIPCClient m = (MonadLogger m, MonadIO m, MonadUnliftIO m, MonadMask m)

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

-- | Requests (client to server).
data Request
  = IdentifyClient {name :: String, version :: Int, description :: Maybe String }
  -- ^ Identifies the client to the server.

  | DumpState { param :: String }
  -- ^ Request a state dump.

  | Pong
  deriving (Generic, Eq, Show, Read)

-- | Responses (server to client).
data Response
  = Identify { name :: String, version :: Int, description :: Maybe String }
  -- ^ Server identification info.

  | Ping

  | Outputs { outputs :: [(Text, OutputId)] }
  -- ^ Outputs updated. @(outputName, OutputId)@

  | Workspaces { workspaces :: RWorkspaces }
  -- ^ Inform the client of current workspace configuration.

  | FocusedWindow { window :: Maybe WindowInfo }
  -- ^ Details of the currently focused window.

  | StateDumpResponse TL.Text
  deriving (Eq, Show, Read, Generic)

data RWorkspaces = RWorkspaces
  { tags :: [WorkspaceInfo]
  , focused :: (OutputId, WsId)
  , visible :: [(OutputId, WsId)]
  } deriving (Eq, Show, Read, Generic)

data WorkspaceInfo = WorkspaceInfo
  { tag        :: WsId
  , keyhint    :: Text
  , layout     :: Text
  , windowList :: [WindowInfo]
  } deriving (Eq, Show, Read, Generic)

data WindowInfo = WindowInfo
  { wid :: Word
  , title, appId, identifier :: Text
  , pid :: Maybe Int
  }
  deriving (Eq, Show, Read, Generic)

newtype OutputId = OutputId { unwrap :: Int }
  deriving stock (Eq, Show, Read, Generic)
  deriving newtype (Bounded, Enum, A.FromJSON, A.ToJSON, Default)

-- | Workspace identifier type
type WsId = String

instance A.ToJSON Request
instance A.FromJSON Request

instance A.ToJSON Response
instance A.FromJSON Response

instance Default RWorkspaces where def = RWorkspaces def (def, def) def
instance A.ToJSON RWorkspaces
instance A.FromJSON RWorkspaces

instance A.ToJSON WorkspaceInfo
instance A.FromJSON WorkspaceInfo

instance Default WindowInfo where def = WindowInfo def  "" "" "" def
instance A.ToJSON WindowInfo
instance A.FromJSON WindowInfo

runMIO :: LoggingT m a -> m a
runMIO = runStderrLoggingT

type MIO = LoggingT IO

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

getXdgRuntimeDirectory :: IO FilePath
getXdgRuntimeDirectory = lookupEnv "XDG_RUNTIME_DIR" >>= \case
  Nothing -> error "XDG_RUNTIME_DIR not set"
  Just dir -> return dir

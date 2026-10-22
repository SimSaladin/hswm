{- |
Module      : HSWM.IPC
Description :
Copyright   : (c) Samuli Thomasson, 2026

Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
Stability   : unstable
Portability : unportable
-}
module HSWM.IPC where

import Data.Aeson qualified as A
import Data.Aeson.KeyMap qualified as KM
import Data.ByteString.Lazy qualified as BL
import Data.ByteString.Lazy.Char8 qualified as C8LB
import Data.List qualified as L
import Data.Text.Lazy qualified as TL
import Data.Version (showVersion)
import Network.Socket
import Network.Socket.ByteString qualified as NB
import System.Random (randomIO)
import PackageInfo_hswm qualified as PKG
import Options.Generic

aesonOptions :: A.Options
aesonOptions =
    A.defaultOptions
        { A.omitNothingFields = True
        , A.fieldLabelModifier = A.camelTo2 '_'
        }

-- * Message wrapper

data Msg a = Msg {msgBody :: a, msgSeqn :: Maybe Int}
    deriving (Eq, Show, Generic)

instance (A.ToJSON a) => A.ToJSON (Msg a) where
    toJSON Msg{..} =
        case A.toJSON msgBody of
            A.Object o -> A.Object $! KM.insert "seqn" (A.toJSON msgSeqn) o
            x -> error $ "expected body to be an object: " ++ show x

instance (A.FromJSON a) => A.FromJSON (Msg a) where
    parseJSON = A.withObject "Msg" $ \v -> do
        msgSeqn <- v A..:? "seqn"
        msgBody <- A.parseJSON (A.Object v)
        return Msg{..}

-- * Request

-- | Requests (client to server).
type Request = Request' Unwrapped

-- | The unwrapped version is for optparse-generic
data Request' w
    = -- | Identifies the client to the server.
      IdentifyClient
          { name :: String
          , version :: Int, description :: Maybe String}
    | -- | Request a state dump.
      DumpState {param :: w ::: String }
    | ListSeats
    | ListOutputs
    | ListWindows
    | ConfigGet
    | CallMethod
        { method :: w ::: String       <#> "n" <?> "method name"
        , params :: w ::: MethodParams <#> "p" <?> "arbitrary method arguments (JSON-encoded)"
        }
    deriving (Generic)

deriving instance Eq Request
deriving instance Show Request
deriving instance Read Request

instance A.ToJSON Request where
    toJSON = A.genericToJSON aesonOptions
    toEncoding = A.genericToEncoding aesonOptions
instance A.FromJSON Request where
    parseJSON = A.genericParseJSON aesonOptions

newtype MethodParams = MethodParams A.Value
    deriving (Generic, Eq, Show, Read)
    deriving newtype (A.ToJSON, A.FromJSON)

-- * Response

-- | Responses (server to client).
data Response
    = -- | Server identification info.
      Identify {name :: String, version :: Int, description :: Maybe String}
    | Error {message :: Text}
    | -- | Outputs updated. @(outputName, OutputId)@
      Outputs {outputs :: [(Text, OutputId)]}
    | -- | Inform the client of current workspace configuration.
      Workspaces {workspaces :: RWorkspaces}
    | -- | Details of the currently focused window.
      FocusedWindow {window :: Maybe WindowInfo}
    | StateDumpResponse TL.Text
    | InternalObject {value :: A.Value}
    deriving (Eq, Show, Read, Generic)

instance A.ToJSON Response where
    toJSON = A.genericToJSON aesonOptions
    toEncoding = A.genericToEncoding aesonOptions
instance A.FromJSON Response where
    parseJSON = A.genericParseJSON aesonOptions

data RWorkspaces = RWorkspaces
    { tags :: [WorkspaceInfo]
    , focused :: (OutputId, WsId)
    , visible :: [(OutputId, WsId)]
    }
    deriving (Eq, Show, Read, Generic)

data WorkspaceInfo = WorkspaceInfo
    { tag :: !WsId
    , keyhint :: !Text
    , layout :: !Text
    , windowList :: ![WindowInfo]
    }
    deriving (Eq, Show, Read, Generic)

data WindowInfo = WindowInfo
    { wid :: !Word
    , title, appId, identifier :: !Text
    , pid :: !(Maybe Int)
    }
    deriving (Eq, Show, Read, Generic)

newtype OutputId = OutputId {unwrap :: Int}
    deriving stock (Eq, Show, Read, Generic)
    deriving newtype (Bounded, Enum, A.FromJSON, A.ToJSON, Default)

-- | Workspace identifier type
type WsId = String

instance Default RWorkspaces where def = RWorkspaces def (def, def) def
instance A.ToJSON RWorkspaces
instance A.FromJSON RWorkspaces

instance A.ToJSON WorkspaceInfo
instance A.FromJSON WorkspaceInfo

instance Default WindowInfo where def = WindowInfo def "" "" "" def
instance A.ToJSON WindowInfo
instance A.FromJSON WindowInfo

-- * Client

{- | IPC client configuration:

@connectTo@: @unix:[PATH]@
-}
newtype ClientConfig = ClientConfig
    {connectTo :: String}
    deriving (Eq, Show, Read, Generic)

instance Default ClientConfig where
    def = ClientConfig "unix:"

type MonadIPCClient m = (MonadLogger m, MonadIO m, MonadUnliftIO m, MonadMask m)

clientRun ::
    (MonadIPCClient m) =>
    ClientConfig ->
    -- | Process incoming
    (Response -> m ()) ->
    -- | Emit outgoing
    ((Request -> m ()) -> m r) ->
    m r
clientRun conf onMsg cb = clientRunWith conf $ \sock -> do
    let doMsg resp = case A.eitherDecode resp of
            Right (Msg msg _) -> onMsg msg
            Left e -> logWarn $ "Received malformed message from server" :# ["ex" .= toText e, "msg" .= BL.unpack (BL.take 256 resp)]
    let worker lo = do
            (resps, leftover) <- recvLines sock lo
            mapM_ doMsg resps
            worker leftover
    withAsync (worker mempty) $ \inputAs -> do
        link inputAs
        cb (sendMsg sock)

clientRunWith :: (MonadIPCClient m) => ClientConfig -> (Socket -> m r) -> m r
clientRunWith conf program = do
    ai <- getClientAI conf
    withThreadContext ["component" .= ("ipc-client" :: String), "address" .= show ai.addrAddress] $ do
        bracket (open ai) (io . close) $ \sock -> do
            sendMsg sock $ (IdentifyClient (thisPeerIdent "client") 0 (Just thisPeerDescription) :: Request)
            program sock
  where
    open ai = bracketOnError (io $ socket ai.addrFamily ai.addrSocketType ai.addrProtocol) (io . close) $ \sock -> do
        logInfo $ "Connecting to server..." :# ["address" .= show ai.addrAddress]
        io $ connect sock ai.addrAddress
        return sock

syncRequest :: (MonadIPCClient m) => Socket -> Request -> m Response
syncRequest sock req = do
    m <- randomIO
    logDebug $ "new request" :# ["req" .= req, "id" .= m]
    sendMsg sock (Msg req (Just m))
    let go ([], acc) = syncReceive sock acc >>= go
        go (Msg x n : xs, acc)
            | n == Just m = return x
            | otherwise = go (xs, acc)
    go ([], "")

syncReceive :: (HasCallStack) => (MonadIPCClient m) => Socket -> BL.ByteString -> m ([Msg Response], BL.ByteString)
syncReceive sock acc0 = do
    go acc0
  where
    go acc =
        recvLines sock acc >>= \case
            ([], acc') -> go acc'
            (xs, acc') -> do
                xs' <- forM xs $ \bs -> do
                    -- logDebug $ "response" :# [ "begin" .= C8LB.unpack (C8LB.take 50 bs) ]
                    case A.eitherDecode bs :: Either String (Msg Response) of
                        Left err -> throwString $ "invalid response: " ++ err ++ "\nresponse was: " ++ C8LB.unpack (C8LB.take 500 bs)
                        Right x -> return x
                return (xs', acc')

-- * Utilities

sendMsg :: (MonadIO m, A.ToJSON msg) => Socket -> msg -> m ()
sendMsg sock msg = io $ NB.sendAll sock $! BL.toStrict $! A.encode msg <> "\n"

recvLines :: (MonadIPCClient m) => Socket -> BL.ByteString -> m ([BL.ByteString], BL.ByteString)
recvLines sock leftover = do
    res <- io $ NB.recv sock 4096
    when (res == "") $ throwString "recvLines: disconnected"
    -- logDebug $ "received input" :# [ "size" .= C8.length res ]
    return $! decode [] leftover (BL.fromStrict res)
  where
    decode :: [BL.ByteString] -> BL.ByteString -> BL.ByteString -> ([BL.ByteString], BL.ByteString)
    decode msgs acc x =
        let (as, bs) = C8LB.break (== '\n') x
         in case C8LB.uncons bs of
                Just ('\n', bs') -> decode (msgs ++ [acc <> as]) "" bs'
                _ -> (msgs, acc <> x)

getXdgRuntimeDirectory :: IO FilePath
getXdgRuntimeDirectory =
    lookupEnv "XDG_RUNTIME_DIR" >>= \case
        Just dir -> return dir
        Nothing -> error "XDG_RUNTIME_DIR not set"

defaultSocketName :: IO String
defaultSocketName =
    lookupEnv "WAYLAND_DISPLAY" >>= \case
        Just str | Just (s :: Int) <- L.stripPrefix "wayland-" str >>= readMaybe -> return $ "hswm-" ++ show s
        _ -> return "hswm-1"

getClientAI :: (MonadIO m) => ClientConfig -> m AddrInfo
getClientAI ClientConfig{..} =
    case L.break (== ':') connectTo of
        ("unix", ':' : name) -> do
            file <- makeAbs =<< io (if name == "" then defaultSocketName else return name)
            return
                defaultHints
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

-- * Identity strings

thisPeerIdent :: String -> String
thisPeerIdent x = PKG.name ++ "-" ++ x

thisPeerDescription :: String
thisPeerDescription = PKG.synopsis ++ " " ++ showVersion PKG.version

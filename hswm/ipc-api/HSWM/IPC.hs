-- |
-- Module      : HSWM.IPC
-- Description :
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module HSWM.IPC where

import Data.Aeson qualified as A
import Data.Aeson.Encoding qualified as A
import Data.ByteString.Lazy qualified as BL
import Data.ByteString.Lazy.Char8 qualified as C8LB
import Data.Char qualified as C
import Data.List qualified as L
import Data.Text.Lazy qualified as TL
import Data.Version (showVersion)
import GHC.Generics (Generic1)
import Network.Socket
import Network.Socket.ByteString qualified as NB
import Options.Generic
import PackageInfo_hswm qualified as PKG
import System.Random (randomIO)

aesonOptions :: A.Options
aesonOptions =
  A.defaultOptions
    { A.omitNothingFields = True
    , A.fieldLabelModifier = A.camelTo2 '_'
    , A.constructorTagModifier = map C.toUpper . A.camelTo2 '_'
    }

-- * Message wrapper

data Msg a
  = Contents {contents :: a, seqn :: Maybe Word16}
  | Error Text
  deriving (Eq, Show, Generic, Generic1)

instance A.ToJSON1 Msg where
  liftToJSON _ inner _ Contents{..} = A.object ["contents" .= inner contents, "id" .= seqn]
  liftToJSON _ _ _ (Error msg) = A.object ["error" .= msg]
  liftToEncoding _ f _ Contents{..} = A.pairs $ A.pairStr "contents" (f contents) <> "id" .= seqn
  liftToEncoding _ _ _ (Error msg) = A.pairs $ "error" .= msg

instance A.FromJSON1 Msg where
  liftParseJSON _ f _ = A.withObject "Msg" $ \v ->
    (Error <$> v A..: "error")
      <|> (Contents <$> (v A..: "contents" >>= f) <*> v A..:? "id")

instance (A.ToJSON a) => A.ToJSON (Msg a) where
  toJSON = A.toJSON1
  toEncoding = A.toEncoding1
instance (A.FromJSON a) => A.FromJSON (Msg a) where
  parseJSON = A.parseJSON1

-- * Request & Response

-- | Requests (client to server).
type Request = Request' Unwrapped

-- | The unwrapped version is for optparse-generic
data Request' w
  = -- | Identifies the client to the server.
    IdentifyClient
      { name :: String
      , version :: Int
      , description :: Maybe String
      }
  | -- | Request a state dump.
    DumpState
      {param :: w ::: String <?> "the internal state which is to be shown [hstate,global,input-config,*]"}
  | ListSeats
      {bindings :: w ::: Bool <#> "k" <?> "show keybindings too"}
  | ListOutputs
  | ListWindows
  | ListInputDevices
      {libinput :: w ::: Bool <#> "L" <?> "show libinput configuration"}
  | ListMethods
  | CallMethod
      { method :: w ::: MethodName <#> "n" <?> "method name"
      , params :: w ::: MethodParams <#> "p" <?> "arbitrary method arguments (JSON-encoded)"
      }
  | ConfigGet
  | WmCtrl {action :: WmCtrlActionValue} -- Note: should be a WmCtrlAction'
  deriving (Generic)

deriving instance Eq Request
deriving instance Show Request
deriving instance Read Request

-- | Responses (server to client).
data Response
  = -- | Server identification info.
    Identify {name :: String, version :: Int, description :: Maybe String}
  | -- \| Outputs updated. @(outputName, OutputId)@

    -- | Error {message :: Text}
    Outputs {outputs :: [(Text, OutputId)]}
  | -- | Inform the client of current workspace configuration.
    Workspaces {workspaces :: RWorkspaces}
  | -- | Details of the currently focused window.
    FocusedWindow {window :: Maybe WindowInfo}
  | StateDumpResponse TL.Text
  | InternalObject {value :: A.Value}
  deriving (Eq, Show, Read, Generic)

instance A.ToJSON Request where
  toJSON = A.genericToJSON aesonOptions
  toEncoding = A.genericToEncoding aesonOptions
instance A.FromJSON Request where
  parseJSON = A.genericParseJSON aesonOptions

instance A.ToJSON Response where
  toJSON = A.genericToJSON aesonOptions
  toEncoding = A.genericToEncoding aesonOptions
instance A.FromJSON Response where
  parseJSON = A.genericParseJSON aesonOptions

-- * Wrapper datatypes for parameter handling

newtype WmCtrlActionValue = WmCtrlActionValue {unwrap :: A.Value}
  deriving (Eq, Ord, Show, Read)
  deriving newtype (A.FromJSON, A.ToJSON)

-- | Actions that will alter the StackSet.
data WmCtrlAction' w
  = ViewWorkspaceOnScreen
      { tag :: w ::: WsId <?> "Workspace name"
      , screen :: w ::: OutputId <?> "Screen number (1, 2, etc.)"
      }
  | SendLayoutMessage
      { message :: w ::: Text <?> "message (how to encode??)"
      } -- TODO
  deriving stock (Generic)

deriving instance Eq (WmCtrlAction' Unwrapped)
deriving instance Show (WmCtrlAction' Unwrapped)
deriving instance Read (WmCtrlAction' Unwrapped)

type WmCtrlAction = WmCtrlAction' Unwrapped

newtype MethodName = MkMethod {unwrap :: String}
  deriving (Generic, Eq, Show, Read)
  deriving newtype (A.ToJSON, A.FromJSON, IsString)

newtype MethodParams = MethodParams {unwrap :: A.Value}
  deriving (Generic, Eq, Show, Read)
  deriving newtype (A.ToJSON, A.FromJSON)

data RWorkspaces = RWorkspaces
  { tags :: [WorkspaceInfo]
  , focused :: (OutputId, WsId)
  , visible :: [(OutputId, WsId)]
  }
  deriving (Eq, Show, Read, Generic)

data WorkspaceInfo = WorkspaceInfo
  { tag :: !WsId
  , keyhint :: !ShortText
  , layout :: !Text
  , windowList :: ![WindowInfo]
  }
  deriving (Eq, Show, Read, Generic)

data WindowInfo = WindowInfo
  { wid :: !Word
  , title, appId, identifier :: !ShortText
  , pid :: !(Maybe Int)
  }
  deriving (Eq, Show, Read, Generic)

newtype OutputId = OutputId {unwrap :: Int}
  deriving stock (Eq, Show, Read, Generic)
  deriving newtype (Bounded, Enum, A.FromJSON, A.ToJSON, Default)

-- | Workspace identifier type
type WsId = ShortText

instance Default RWorkspaces where def = RWorkspaces def (def, "") def
instance Default WindowInfo where def = WindowInfo def "" "" "" def

instance A.ToJSON RWorkspaces where
  toJSON = A.genericToJSON aesonOptions
  toEncoding = A.genericToEncoding aesonOptions
instance A.FromJSON RWorkspaces where
  parseJSON = A.genericParseJSON aesonOptions

instance A.ToJSON WorkspaceInfo where
  toJSON = A.genericToJSON aesonOptions
  toEncoding = A.genericToEncoding aesonOptions
instance A.FromJSON WorkspaceInfo where
  parseJSON = A.genericParseJSON aesonOptions

instance A.ToJSON WindowInfo where
  toJSON = A.genericToJSON aesonOptions
  toEncoding = A.genericToEncoding aesonOptions
instance A.FromJSON WindowInfo where
  parseJSON = A.genericParseJSON aesonOptions

instance A.ToJSON (WmCtrlAction' Unwrapped) where
  toJSON = A.genericToJSON aesonOptions
  toEncoding = A.genericToEncoding aesonOptions
instance A.FromJSON (WmCtrlAction' Unwrapped) where
  parseJSON = A.genericParseJSON aesonOptions

-- * Exceptions

data SocketDisconnected = SocketDisconnected
  deriving (Eq, Show)

instance Exception SocketDisconnected

-- * Client

-- | IPC client configuration:
--
-- @connectTo@: @unix:[PATH]@
newtype ClientConfig = ClientConfig
  {connectTo :: String}
  deriving (Eq, Show, Read, Generic)

instance Default ClientConfig where
  def = ClientConfig "unix:"

type MonadIPCClient m = (MonadLogger m, MonadIO m, MonadUnliftIO m, MonadMask m)

-- | Simplest client invocation.
clientRunWith :: (MonadIPCClient m) => ClientConfig -> (Socket -> m r) -> m r
clientRunWith conf program = do
  ai <- getClientAI conf
  withThreadContext ["component" .= ("ipc-client" :: String), "address" .= show ai.addrAddress] $ do
    bracket (open ai) (io . close) $ \sock -> do
      sendMsg sock $ Contents (IdentifyClient (thisPeerIdent "client") 0 (Just thisPeerDescription) :: Request) Nothing
      program sock
  where
    open ai = bracketOnError (io $ socket ai.addrFamily ai.addrSocketType ai.addrProtocol) (io . close) $ \sock -> do
      logInfo $ "Connecting to server..." :# ["address" .= show ai.addrAddress]
      io $ connect sock ai.addrAddress
      return sock

-- | Callback-oriented client entrypoint.
clientRun ::
  (MonadIPCClient m) =>
  ClientConfig
  -> (Response -> m ())
  -- ^ Process incoming
  -> ((Request -> m ()) -> m r)
  -- ^ Emit outgoing
  -> m r
clientRun conf onMsg f =
  clientRunWith conf $ \sock ->
    withAsync (worker sock mempty) $ \inputAs -> do
      link inputAs
      f (sendMsg sock)
  where
    worker sock lo = do
      (resps, leftover) <- recvLines sock lo
      mapM_ doMsg resps
      worker sock leftover
    doMsg resp = case A.eitherDecode resp of
      Right (Contents msg _) -> onMsg msg
      Right (Error msg) -> logWarn $ "Server error" :# ["error" .= msg]
      Left e -> logWarn $ "Received malformed message from server" :# ["ex" .= toText e, "msg" .= BL.unpack (BL.take 256 resp)]

syncRequest :: (MonadIPCClient m) => Socket -> Request -> m Response
syncRequest sock req = do
  m <- randomIO @Word16
  logDebug $ "new request" :# ["req" .= req, "id" .= m]
  sendMsg sock (Contents req (Just m))
  let go ([], acc) = syncReceive sock acc >>= go
      go (Error err : _, _) =
        throwString $ "Server error: " <> show err
      go (Contents x n : xs, acc)
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

-- | Send a JSON object over the socket.
sendMsg :: (MonadIO m, A.ToJSON msg) => Socket -> msg -> m ()
sendMsg sock msg = io $ NB.sendMany sock $ BL.toChunks (A.encode msg <> "\n")

-- | Read and parse lines
recvLines :: (MonadIPCClient m) => Socket -> BL.ByteString -> m ([BL.ByteString], BL.ByteString)
recvLines sock leftover = do
  res <- io $ NB.recv sock 4096
  when (res == "") $ throwM SocketDisconnected
  -- logDebug $ "received input" :# [ "size" .= C8.length res ]
  return $! decode [] leftover (BL.fromStrict res)
  where
    decode :: [BL.ByteString] -> BL.ByteString -> BL.ByteString -> ([BL.ByteString], BL.ByteString)
    decode msgs acc x =
      let (as, bs) = C8LB.break (== '\n') x
       in case C8LB.uncons bs of
            Just ('\n', bs') -> decode (msgs ++ [acc <> as]) "" bs'
            _ -> (msgs, acc <> x)

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

-- ** Filepath stuff

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

-- * Identity strings

thisPeerIdent :: String -> String
thisPeerIdent x = PKG.name ++ "-" ++ x

thisPeerDescription :: String
thisPeerDescription = PKG.synopsis ++ " " ++ showVersion PKG.version

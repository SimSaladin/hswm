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

import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Core as HSWM
import HSWM.IPC
import HSWM.InputConfig (InputConfigState)
import HSWM.Main.Persist qualified as Persist
import HSWM.Operations
import HSWM.StackSet qualified as W

import Data.Aeson qualified as A
import Data.Aeson.Types qualified as A
import Data.ByteString.Lazy qualified as LB
import River qualified as R

-- import qualified Data.ByteString.UTF8 as BUTF8
import Data.List qualified as L
import Data.Map qualified as M
import Data.Text qualified as T
import Data.Text.Lazy qualified as TL
import Data.Typeable
import GHC.StaticPtr
import Network.Socket
import System.FileLock
import Text.Pretty.Simple qualified as P

type MonadIPC env m = (MonadEffectsIO m, MonadReader env m, MonadHS m)

-- * ServerConfig

data ServerConfig = ServerConfig
  { bindTo :: !(Maybe AddrInfo)
  , maxPendingConns :: !Int
  , getWorkspacesInfo :: HS Response
  , requestHandler :: Request -> H Response
  }
  deriving (Generic)

instance Default ServerConfig where
  def = ServerConfig Nothing 8 defaultWorkspacesInfo defaultRequestHandler

defaultRequestHandler :: Request -> H Response
defaultRequestHandler = \case
  ListWindows{} -> getHState <&> InternalObject . toJSON . (^.. _windows . traversed)
  ListSeats{} -> getHState <&> view (seatList . to toJSON . to InternalObject)
  ListOutputs{} -> getHState <&> view (outputList . to toJSON . to InternalObject)
  ConfigGet{} -> view $ config . to toJSON . to InternalObject
  DumpState{..} -> case param of
    "input-config" -> StateDumpResponse . P.pShow <$> getObjectDef @InputConfigState
    "hstate" -> InternalObject . A.toJSON <$> getHState
    "global" -> InternalObject <$> dumpObjects
    "cmds" -> do
      cs <- getObjectDef @CommandStore
      return $ StateDumpResponse $ P.pShow cs
    _ -> StateDumpResponse . TL.pack <$> runInHS Persist.dumpStateAsString
  CallMethod{..} -> do
    cs <- getObjectDef @CommandStore
    case cs.commands ^? ix method of
      Just (SomeCommand cmd) -> runCommandJSON cmd params <&> either (Error . toText) InternalObject
      Nothing -> pure $ Error "method not found"
  r -> do
    logWarn $ "Unhandled message" :# ["message" .= r]
    return $ Error "no handler"

-- * Server State

-- | Server-side state.
data ConnectedPeers = ConnectedPeers
  { connected :: !(M.Map Int Connection)
  , serverThread :: !(Maybe (Async ()))
  }
  deriving stock (Generic)
  deriving anyclass (Default)

-- | A single connection (server-side).
data Connection = Connection
  { connSocket :: !Socket
  , connPid, connUid, connGid :: !Int
  , connSendQ :: !(TQueue Response)
  , connWorkerThread :: !(Async ())
  }
  deriving stock (Generic)

-- * Hooks

ipcServer :: ServerConfig -> ConfigDoM H
ipcServer conf =
  startupHook
    <>~ serverStartupHook conf
    &+ logHook
    <>~ ipcLogHook conf

serverStartupHook :: (HasCallStack) => ServerConfig -> H ()
serverStartupHook conf = do
  stateRef <- getOrCreateObject (newIORef (def :: ConnectedPeers))
  serverThread <- async $ serverRun conf stateRef
  modifyIORef stateRef $ \st -> st{serverThread = Just serverThread}

ipcLogHook :: (HasCallStack) => ServerConfig -> H ()
ipcLogHook conf = withObject $ \(sRef :: IORef ConnectedPeers) -> do
  msgs <- fullStateUpdate conf
  s <- readIORef sRef
  forConcurrently_ (M.elems s.connected) $ \c ->
    forM_ msgs $ atomically . writeTQueue c.connSendQ

serverRun :: ServerConfig -> IORef ConnectedPeers -> H ()
serverRun conf stateRef = withThreadContext ["component" .= ("ipc-server" :: String)] $ do
  (ai, mlockFile) <- getServerAddr conf
  withLock mlockFile $ do
    logDebug $ "Starting IPC server" :# ["bind" .= show ai.addrAddress]
    case ai.addrAddress of
      SockAddrUnix socketPath -> io $ do
        exists <- doesFileExist socketPath
        when exists $ removeFile socketPath
      _ -> return ()
    bracket (open ai) (io . close) loop
      `finally` logInfo "IPC server thread finished"
  where
    withLock Nothing f = f
    withLock (Just file) f =
      io (tryLockFile file Exclusive) >>= \case
        Just _ -> f
        Nothing -> logError $ "Could not lock lockfile" :# ["filepath" .= file]

    open ai = bracketOnError (io $ openSocket ai) (io . close) $ \sock -> do
      io $ withFdSocket sock setCloseOnExecIfNeeded
      io $ bind sock ai.addrAddress
      io $ listen sock conf.maxPendingConns
      logInfo $ "server listener started" :# ["address" .= show ai.addrAddress]
      return sock

    loop :: Socket -> H ()
    loop sock = forever $
      bracketOnError (io $ accept sock) (io . close . fst) $ \(connSocket, peerAddr) -> do
        connFd <- io $ withFdSocket connSocket $ return . fi
        (mpid, muid, mgid) <- io $ getPeerCredential connSocket
        let connPid = fi $ fromMaybe (-1) mpid :: Int
            connUid = fi $ fromMaybe (-1) muid :: Int
            connGid = fi $ fromMaybe (-1) mgid :: Int
            ctx =
              [ "component" .= ("ipc-server" :: String)
              , "peer"
                  .= A.object
                    [ "address" .= show peerAddr
                    , "fd" .= connFd
                    , "pid" .= connPid
                    , "uid" .= connUid
                    , "gid" .= connGid
                    ]
              ]
        connSendQ <- newTQueueIO
        connWorkerThread <-
          async $
            withThreadContext ctx $
              connWorker conf connSocket connSendQ `finally` cleanup connFd connSocket
        let c = Connection{..}
        modifyIORef stateRef $ \s -> s{connected = M.insert connFd c s.connected}

    cleanup connFd conn = do
      modifyIORef stateRef $ \s -> s{connected = M.delete connFd s.connected}
      io $ gracefulClose conn 5000
      logInfo "Client connection closed"

connWorker :: ServerConfig -> Socket -> _ -> H ()
connWorker conf conn sendQ = do
  logInfo "New client connected"
  atomically . writeTQueue sendQ $ Identify (thisPeerIdent "server") 0 (Just thisPeerDescription)
  worker ""
  where
    worker lo = do
      waitRead <- io $ waitReadSocketSTM conn
      r <- atomically $ (Left <$> waitRead) `orElse` (Right <$> readTQueue sendQ)
      case r of
        Right msg -> sendMsg conn msg >> worker lo
        Left () -> do
          (rs, lo') <- recvLines conn lo
          mapM_ handleRequest rs
          worker lo'
    handleRequest resp = case A.eitherDecode resp of
      Right msg -> serverHandleMsg conf conn msg
      Left e -> logWarn $ "Malformed request from client" :# ["error" .= toText e, "msg" .= LB.unpack (LB.take 256 resp)]

getServerAddr ::
  (MonadIO m) =>
  ServerConfig
  -> m (AddrInfo, Maybe FilePath)
  -- ^ (resolved addrinfo, lockfile)
getServerAddr conf =
  case conf.bindTo of
    Just ai -> return (ai, Nothing)
    Nothing -> do
      runtimeDir <- io getXdgRuntimeDirectory
      sockName <- io defaultSocketName
      let sockFile = runtimeDir ++ "/" ++ sockName
      return
        ( defaultHints
            { addrFamily = AF_UNIX
            , addrSocketType = Stream
            , addrAddress = SockAddrUnix sockFile
            }
        , Just (sockFile ++ ".lock")
        )

serverHandleMsg :: ServerConfig -> Socket -> Msg Request -> H ()
serverHandleMsg conf c (Msg r seqn) = do
  case r of
    IdentifyClient{} -> do
      logInfo $ "client sent identity" :# ["id" .= r]
      fullStateUpdate conf >>= mapM_ (sendMsg c)
    _ -> do
      res <- userCode $ conf.requestHandler r
      forM_ res $ sendMsg c . flip Msg seqn

-- * Info for status bars

-- | Set of events to fully refresh statusbar's tracked state
fullStateUpdate :: (MonadIPC env m, env ~ HConf) => ServerConfig -> m [Response]
fullStateUpdate c = runInHS $ sequence [getOutputsInfo, c.getWorkspacesInfo, getFocusedInfo]
  where
    getOutputsInfo = do
      outs <- use outputList
      return $! Outputs [(T.pack out.name, s2o out.screen) | out <- outs]

    -- info about focused window (if any)
    getFocusedInfo = do
      ws <- use windowset
      if
        | Just fw <- W.peek ws -> FocusedWindow . fmap toWindowInfo <$> lookupWindow fw
        | otherwise -> return $! FocusedWindow Nothing

defaultWorkspacesInfo :: HS Response
defaultWorkspacesInfo = do
  ws <- use windowset
  wins <- use _windows
  wsSortPP <- DWO.getSortByOrder
  let getWsData W.Workspace{..} keyhint =
        WorkspaceInfo
          { tag = tag
          , keyhint = keyhint
          , layout = toText (HSWM.description layout)
          , windowList = map getWindowInfo (W.integrate' stack)
          }
      getWindowInfo rw = maybe def toWindowInfo (M.lookup rw wins)

  return $!
    Workspaces $!
      RWorkspaces
        { tags = zipWith getWsData (wsSortPP (W.workspaces ws)) (keyhints ++ L.repeat "")
        , focused = let W.Screen sws sid _ = W.current ws in (s2o sid, W.tag sws)
        , visible = [(s2o sid, W.tag sws) | W.Screen sws sid _ <- W.visible ws]
        }
  where
    keyhints = map (toText . (: [])) ['a' .. 'z']

s2o :: ScreenId -> OutputId
s2o (S x) = OutputId x

toWindowInfo :: Window -> WindowInfo
toWindowInfo w =
  WindowInfo
    { wid = riverIdToWord w.river_window
    , title = toText w.title
    , appId = toText w.appId
    , identifier = toText w.identifier
    , pid = w.unreliablePid
    }

-- * Static methods

data Command arg res = Command
  { actionPtr :: !(StaticPtr (arg -> H res))
  , actionArg :: !(Maybe (Argument arg))
  , cmdInstances :: !(StaticPtr (Dict (CommandCtx arg res)))
  }
  deriving (Generic)

type CommandCtx arg res =
  ( Typeable arg
  , FromJSON arg
  , Show arg
  , Typeable res
  , ToJSON res
  , Show res
  )

newtype Argument arg = Argument {getArg :: arg}
  deriving (Eq, Ord, Show, Generic)

data Dict c where
  Dict :: (c) => Dict c

instance Show (Command arg res) where
  show (Command ptr _ dict) =
    case deRefStaticPtr dict of
      (Dict :: Dict (CommandCtx arg res)) ->
        let fnTy = typeRep (undefined :: proxy (arg -> H res))
         in "Command"
              ++ "{ type = "
              ++ show fnTy
              ++ ", ptr = "
              ++ showStaticPtr ptr
              ++ "}"
    where
      showStaticPtr p =
        let StaticPtrInfo{..} = staticPtrInfo p
         in show (staticKey ptr) ++ " @(" ++ spInfoUnitId ++ ":" ++ spInfoModuleName ++ ":" ++ (\(x, y) -> show x ++ ":" ++ show y) spInfoSrcLoc ++ ")"

data SomeCommand where
  SomeCommand :: forall arg res. {someCommand :: Command arg res} -> SomeCommand

instance Show SomeCommand where
  show (SomeCommand cmd) = show cmd

mkCommand :: StaticPtr (Dict (CommandCtx arg res)) -> StaticPtr (arg -> H res) -> Maybe () -> Command arg res
mkCommand dict action _arg =
  Command
    { actionPtr = action
    , actionArg = Nothing -- Argument arg
    , cmdInstances = dict
    }

runCommand :: Command arg res -> arg -> H res
runCommand (Command ptr _ _) = deRefStaticPtr ptr

runCommandJSON :: Command arg res -> MethodParams -> H (Either String A.Value)
runCommandJSON cmd@(Command ptr _ dict) (MethodParams val) =
  case deRefStaticPtr dict of
    (Dict :: Dict (CommandCtx arg res)) ->
      case A.parseEither A.parseJSON val :: Either String arg of
        Left err -> return (Left err)
        Right arg1 -> Right . A.toJSON <$> runCommand cmd arg1

newtype CommandStore = CommandStore {commands :: M.Map String SomeCommand}
  deriving stock (Show, Generic)
  deriving anyclass (Default)

registerCommand :: String -> Command arg res -> H ()
registerCommand name cmd =
  modifyObjectDef @CommandStore $ \st -> st{commands = M.insert name (SomeCommand cmd) st.commands}

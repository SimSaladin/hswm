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

import HSWM.Util.CommandStatic
import HSWM.Actions.DynamicWorkspaceOrder qualified as DWO
import HSWM.Core as HSWM
import HSWM.IPC
import HSWM.Main.Persist qualified as Persist
import HSWM.Operations
import HSWM.StackSet qualified as W
import HSWM.InputConfig

import Data.Aeson qualified as A
import Data.ByteString.Lazy qualified as LB
import Data.ByteString.Lazy.Char8 qualified as LBC8
import River qualified as R
import Data.List qualified as L
import Data.Map qualified as M
import Data.Text qualified as T
import Data.Text.Lazy qualified as TL
import Network.Socket
import System.FileLock
import Text.Pretty.Simple qualified as P

type MonadIPC env m = (MonadEffectsIO m, MonadReader env m, MonadHS m)

-- * ServerConfig

data ServerConfig = ServerConfig
  { bindTo :: !(Maybe AddrInfo)
  , maxPendingConns :: !Int
  , getWorkspacesInfo :: HS Response
  , requestHandler :: Request -> H (Either Text Response)
  }
  deriving (Generic)

instance Default ServerConfig where
  def = ServerConfig Nothing 8 defaultWorkspacesInfo defaultRequestHandler

defaultRequestHandler :: Request -> H (Either Text Response)
defaultRequestHandler = \case
  ListWindows{} -> getHState <&> Right . InternalObject . toJSON . (^.. _windows . traversed)

  -- hide key bindings by default (lots of noise)
  ListSeats{bindings} -> getHState <&>
      view (seatList . to (if bindings then id else each . xkbBindings .~ mempty) . to (Right . InternalObject . toJSON))

  ListOutputs{} -> getHState <&> view (outputList . to toJSON . to InternalObject . to Right)

  ConfigGet{} -> view $ config . to toJSON . to InternalObject . to Right

  ListInputDevices{libinput} -> getObjectDef @InputConfigState <&> fmap (Right . InternalObject . toJSON)
      (\st ->
        let getInputDev k dev = A.object $
              [ "name" .= (dev ^. deviceName)
              , "type" .= (dev ^. deviceType)
              ] ++
              [ "libinput" .= getLibinputDevice k | libinput ] ++
              [ "repeat-info" .= info | Just info <- [dev ^. repeatInfo] ] ++
              maybe [] getXkbKeyboard (dev ^. xkbKeyboard)
            getXkbKeyboard k
              | Just v <- st ^. xkbKeyboards . at k =
                    [ "layout" .= (v ^. layoutName)
                    , "layout_index" .= (v ^. layoutIndex)
                    ]
              | otherwise = []
            getLibinputDevice k = A.toJSON $ st ^? libinputDevices . each . filtered ((== k) . view inputDevice)
        in st ^. inputDevices & M.mapWithKey getInputDev
      )

  DumpState{..} -> case param of
    "input-config" -> Right . StateDumpResponse . P.pShow <$> getObjectDef @InputConfigState
    "hstate" -> Right . InternalObject . A.toJSON <$> getHState
    "global" -> Right . InternalObject <$> dumpObjects
    _ -> Right . StateDumpResponse . TL.pack <$> runInHS Persist.dumpStateAsString

  ListMethods{} -> getObjectDef @CommandStore <&> Right . StateDumpResponse . P.pShow

  CallMethod{..} -> do
    cs <- getObjectDef @CommandStore
    case cs.commands ^? ix method.unwrap of
      Just (SomeCommand cmd) -> runCommandJSON cmd params <&> either (Left . toText) (Right . InternalObject)
      Nothing -> pure $ Left "method not found"

  r -> do
    logWarn $ "Unhandled message" :# ["message" .= r]
    return $ Left "no handler"

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
  , connSendQ :: !(TQueue (Msg Response))
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
    forM_ msgs $ atomically . writeTQueue c.connSendQ . flip Contents Nothing

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
    loop sock =
      let go n = bracketOnError (io $ accept sock) (io . close . fst) (withPeer n) >> go (n + 1)
       in go 1

    withPeer peerId (connSocket, peerAddr) = do
        peerInfo <- case peerAddr of
                      SockAddrUnix{} -> do
                        connFd <- io $ withFdSocket connSocket $ return . fi
                        (mpid, muid, mgid) <- io $ getPeerCredential connSocket
                        let connPid = fi $ fromMaybe (-1) mpid :: Int
                            connUid = fi $ fromMaybe (-1) muid :: Int
                            connGid = fi $ fromMaybe (-1) mgid :: Int
                        return $ A.object
                              [ "fd" .= (connFd :: Int)
                              , "pid" .= connPid
                              , "uid" .= connUid
                              , "gid" .= connGid
                              , "id" .= peerId
                              ]
                      _ -> return $ A.object
                              [ "address" .= show peerAddr
                              , "id" .= peerId
                              ]
        let ctx = [ "component" .= ("ipc-server" :: String), "peer" .= peerInfo ]
        connSendQ <- newTQueueIO
        connWorkerThread <-
          async $
            withThreadContext ctx $
              connWorker conf connSocket connSendQ `finally` cleanup peerId connSocket
        let c = Connection{..}
        modifyIORef stateRef $ \s -> s{connected = M.insert peerId c s.connected}

    cleanup peerId conn = do
      modifyIORef stateRef $ \s -> s{connected = M.delete peerId s.connected}
      logInfo "Client connection closed"
      io $ gracefulClose conn 5000

connWorker :: ServerConfig -> Socket -> _ -> H ()
connWorker conf conn sendQ = do
  logInfo "New client connected"
  atomically . writeTQueue sendQ $ Contents (Identify (thisPeerIdent "server") 0 (Just thisPeerDescription)) Nothing
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
      Left e -> do
          logWarn $ "Malformed request from client" :# ["error" .= toText e, "msg" .= LBC8.unpack (LB.take 256 resp)]
          sendMsg conn (Error (toText e) :: Msg ())

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
serverHandleMsg _    _ Error{} = return ()
serverHandleMsg conf c (Contents r seqn) = do
  case r of
    IdentifyClient{} -> do
      logInfo $ "client sent identity" :# ["id" .= r]
      fullStateUpdate conf >>= mapM_ (sendMsg c . flip Contents Nothing)
    _ -> do
      res <- userCode $ conf.requestHandler r
      sendMsg c $ maybe (Error "handler exception") (either Error (`Contents` seqn)) res

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

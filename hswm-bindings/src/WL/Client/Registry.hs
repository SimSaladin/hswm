{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}

-- |
-- Module      : WL.Client.Registry
-- Description : Global registry wrapper interface
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module WL.Client.Registry (
  -- * Initialize registry
  initRegistryState,
  RegistrySettings (..),
  RegistryState,

  -- * Bind objects
  bindGlobal,
  -- , registryBindObject
  GlobalException (..),

  -- * Events
  RegistryEvent (..),
  pattern RegistryGlobalRemove',
  pattern RegistryGlobal',
) where

import Control.Monad
import Control.Monad.Fix
import Data.Default (Default (..))
import Data.List qualified as L
import Data.Map qualified as M
import Data.Maybe
import Data.Proxy
import Foreign.C.ConstPtr (ConstPtr)
import GHC.Generics (Generic)
import GHC.Stack
import UnliftIO
import WL.Core.Client hiding (shmCreatePool)

data GlobalException
  = NoSuchGlobal String (Maybe Version) (Maybe ObjectName)
  | GlobalAlreadyBound String SomeObject
  deriving stock (Eq, Ord, Show, Generic)

instance Exception GlobalException

pattern RegistryGlobal' :: String -> ObjectName -> Version -> RegistryEvent
pattern RegistryGlobal' interface name version <- RegistryGlobal{name, interface, version}

pattern RegistryGlobalRemove' :: ObjectName -> RegistryEvent
pattern RegistryGlobalRemove' name <- RegistryGlobalRemove{name}

-- | Tracks the global objects that are available through wl_registry.
data RegistryState = RegistryState
  { registrySettings :: !RegistrySettings
  , registryPtr :: !Registry
  , registryListener :: !(ConstPtr (ObjectListener Registry))
  , fixesMVar :: !(MVar (Fixes, Version))
  , globals :: !(IORef (M.Map ObjectName Global))
  -- ^ All global variables that the server has announced and are have not been removed.
  }
  deriving stock (Generic)

data SomeObject where
  SomeObject :: (HasInterface object) => ObjectName -> Version -> object -> SomeObject

instance Eq SomeObject where
  SomeObject a _ _ == SomeObject b _ _ = a == b

instance Ord SomeObject where
  compare (SomeObject a _ _) (SomeObject b _ _) = compare a b

instance Show SomeObject where
  show (SomeObject nm ver (o :: o)) = objectInterfaceName @o Proxy ++ ":" ++ show nm ++ "(" ++ show ver ++ ")"

-- | Global description
data Global = Global
  { name :: {-# UNPACK #-} !ObjectName
  -- ^ Name of the global.
  --
  --     This is an identifier used by the server to reference some specific global.
  , version :: {-# UNPACK #-} !Version
  -- ^ Advertised version of the global.
  --
  --     This specifies the maximum version of the global that may be bound. This means any lower version of
  --     the global may be bound.
  , interface :: !String
  -- ^ Interface of the global.
  --
  --     Describes what type of protocol object the global is.
  , proxyObject :: !(Maybe SomeObject)
  }
  deriving stock (Eq, Ord, Show, Generic)

data RegistrySettings = RegistrySettings
  { regOnEvent :: RegistryEvent -> IO ()
  -- ^ Callback to run for registry events (in addition)
  , regOnBind :: forall a. (HasInterface a) => Proxy a -> ObjectName -> Version -> IO ()
  -- ^ A function run on every successful global bind
  }

instance Default RegistrySettings where
  def =
    RegistrySettings
      { regOnEvent = \_ -> pure ()
      , regOnBind = \_ _ _ -> pure ()
      }

-- | NB: the only way to remove a registry is through the wl_fixes interface.
-- The server must support it. If it is not advertised this destructor is noop.
instance HasDestructor RegistryState where
  objectDestroy st = do
    tryTakeMVar st.fixesMVar >>= \case
      Just (fixes, _) -> do
        fixesDestroyRegistry fixes st.registryPtr
        objectDestroy fixes
        objectDestroy st.registryListener
      Nothing -> return ()

initRegistryState :: (MonadIO m) => Display -> RegistrySettings -> m RegistryState
initRegistryState disp registrySettings = liftIO $ do
  registryPtr <- displayGetRegistry disp
  globals <- newIORef mempty
  fixesMVar <- newEmptyMVar
  mfix $ \st -> do
    registryListener <- createListener $ \ev -> do
      case ev of
        RegistryGlobal{..} -> do
          modifyIORef globals $ M.insert name $ Global name version interface Nothing
          when (interface == objectInterfaceName @Fixes Proxy) $ do
            fixes <- registryBindObject st name version
            putMVar fixesMVar (fixes, version)
          regOnEvent registrySettings ev
        RegistryGlobalRemove{..} -> do
          modifyIORef globals $ M.delete name
          regOnEvent registrySettings ev
          tryReadMVar fixesMVar >>= mapM_ (\(fx, ver) -> when (ver >= 2) (fixesAckGlobalRemove fx registryPtr name))
    listenerAdd_ registryPtr registryListener
    return RegistryState{..}

-- |
-- Throws 'NoSuchGlobal' if the requested global cannot be found.
bindGlobal ::
  forall a m.
  (MonadIO m, HasInterface a) =>
  (HasCallStack) =>
  RegistryState
  -> Maybe ObjectName
  -- ^ Bind to a specific object. The interface name is still checked!
  -> Maybe Version
  -- ^ Maximum version, if lower than what the bindings specify.
  --     The final version is smallest of this and server-supported maximum.
  -> m a
bindGlobal st reqName reqVersion = liftIO $ do
  readIORef st.globals >>= maybe notFound found . locate
  where
    found x
      | Just o <- x.proxyObject = throwIO $ GlobalAlreadyBound implName o
      | otherwise = registryBindObject st x.name (min limitVer x.version)
    notFound = throwIO $ NoSuchGlobal implName reqVersion reqName
    locate gm
      | Just nm <- reqName = mfilter check $ M.lookup nm gm
      | otherwise = L.find check $ M.elems gm
    check x = maybe True (== x.name) reqName && x.interface == implName
    limitVer = fromMaybe (objectInterfaceVersion @a Proxy) reqVersion
    implName = objectInterfaceName @a Proxy

-- | Bind to the specified object.
--
-- @
-- registryBindObject @Interface
-- @
registryBindObject ::
  forall a m.
  (MonadIO m, HasInterface a) =>
  RegistryState
  -> ObjectName
  -- ^ The object to bind.
  -> Version
  -- ^ The maximum version to request. Clamped to the version of the generated bindings.
  -> m a
{-# INLINE registryBindObject #-}
registryBindObject st name maxVersion = liftIO $ do
  o <- objectBindWrap <$> registryBind st.registryPtr name (objectInterface @a Proxy) limitVer
  ver <- getVersion o
  modifyIORef st.globals $
    let f x = x{proxyObject = Just (SomeObject name ver o)}
     in M.adjust f name
  (regOnBind st.registrySettings) @a Proxy name ver
  return o
  where
    limitVer = min maxVersion $ objectInterfaceVersion @a Proxy

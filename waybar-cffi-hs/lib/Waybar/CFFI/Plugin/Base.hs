{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE TypeFamilies #-}

-- |
-- Module      : Waybar.CFFI.Plugin.Base
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin.Base
  ( module Waybar.CFFI.Plugin.Base,
    module RXP,
  )
where

import Prelude hiding (init)
import Control.Monad
import Data.Aeson qualified as A
import Data.Aeson.KeyMap qualified as A.KM
import Foreign as RXP
import Foreign.C as RXP
import Foreign.Storable.Generic as RXP (GStorable (..))
import GHC.Generics as RXP (Generic)
import GI.Gtk.Objects.Container as RXP (Container)
import Data.Kind
import Data.Proxy
import Data.ByteString qualified as BS
import Data.String (IsString (..))
import Data.Void
import GI.Gtk (newObject)
import GI.Gtk.Objects.Container as Container
import Data.Dynamic
import System.IO.Unsafe
import Data.IORef
import Control.Exception qualified as E

data IConf id = IConf
  { wbModule :: !(Ptr WbcffiModule),
    -- | waybar version
    wbVersion :: !String,
    -- | Widget root widget
    rootWidget :: !Container,
    configs :: !A.Object,
    -- | Queue update to waybar
    queueUpdate :: !(IO ()),
    instanceData :: !id
  }
  deriving (Generic)

-- | Waybar module information
data {-# CTYPE "waybar_cffi_module.h" "wbcffi_init_info" #-} InitInfo = InitInfo
  { -- | Private Waybar CFFI module
    wbcffi_module :: !(Ptr WbcffiModule),
    -- | Waybar version string
    waybar_version :: !CString,
    -- | Returns the waybar widget allocated for this module
    -- @param obj Waybar CFFI object pointer
    get_root_widget :: !(FunPtr (Ptr WbcffiModule -> IO (Ptr Container))),
    -- | Queues a request for calling wbcffi_update() on the next GTK main event
    -- loop iteration
    -- @param obj Waybar CFFI object pointer
    queue_update :: !(FunPtr (Ptr WbcffiModule -> IO ()))
  }
  deriving (Generic)

data {-# CTYPE "waybar_cffi_module.h" "wbcffi_module" #-} WbcffiModule deriving (Generic)

-- | Config key-value pair
data {-# CTYPE "waybar_cffi_module.h" "struct wbcffi_config_entry" #-} ConfigEntry = ConfigEntry
  { -- | Entry key
    configEntryKey :: !CString,
    -- | Entry value. In ver 2 this is json object or json string.
    configEntryValue :: !CString
  }
  deriving (Generic)

instance GStorable InitInfo

instance GStorable ConfigEntry

foreign import ccall "dynamic"
  mkGetRootFun :: FunPtr (Ptr WbcffiModule -> IO (Ptr Container)) -> Ptr WbcffiModule -> IO (Ptr Container)

foreign import ccall "dynamic"
  mkQueueUpdate :: FunPtr (Ptr WbcffiModule -> IO ()) -> Ptr WbcffiModule -> IO ()

class WaybarPlugin a where
  type PluginState a :: Type

  globalInit :: Proxy a -> IO (PluginState a)

  globalDeinit :: Proxy a -> PluginState a -> IO ()

  type Context a :: Type -> Type

  runContext :: Proxy a -> PluginState a -> Context a r -> IO r

  init :: Monad (Context a) => IConf () -> Context a a

  deinit :: Monad (Context a) => IConf a -> Context a ()

  update :: Monad (Context a) => IConf a -> Context a ()
  update _ = return ()

  refresh :: Monad (Context a) => IConf a -> Int -> Context a ()
  refresh _ _ = return ()

  doaction :: Monad (Context a) => IConf a -> String -> Context a ()
  doaction _ _ = pure ()

getConfigEntries :: Ptr ConfigEntry -> CSize -> IO A.Object
getConfigEntries ptr size = fmap A.KM.fromList $
  forM [0 .. (fromIntegral size - 1)] $ \i -> do
    ConfigEntry pk pv <- peek (advancePtr ptr i)
    (k, v) <- (,) <$> peekCString pk <*> BS.packCString pv
    case A.decodeStrict' v :: Maybe A.Value of
      Just v' -> return (fromString k, v')
      Nothing -> error "getConfigEntries: parse error"

data WaybarPluginFFI = WaybarPluginFFI
  -- | Module init/new function, called on module instantiation
  --
  -- MANDATORY CFFI function
  --
  -- @param init_info          Waybar module information
  -- @param config_entries     Flat representation of the module JSON config. The data only available
  --                           during wbcffi_init call.
  -- @param config_entries_len Number of entries in `config_entries`
  --
  -- @return A untyped pointer to module data, NULL if the module failed to load.
  { _init :: Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void)
  -- | Module deinit/delete function, called when Waybar is closed or when the module is removed
  --
  -- MANDATORY CFFI function
  --
  -- @param instance Module instance data (as returned by `wbcffi_init`)
  , _deinit :: Ptr Void -> IO ()
  -- | Called from the GTK main event loop, to update the UI
  --
  -- Optional CFFI function
  --
  -- @param instance Module instance data (as returned by `wbcffi_init`)
  -- @param action_name Action name
  , _update :: Ptr Void -> IO ()
  -- | Called when Waybar receives a POSIX signal and forwards it to each module
  --
  -- Optional CFFI function
  --
  -- @param instance Module instance data (as returned by `wbcffi_init`)
  -- @param signal Signal ID
  , _refresh :: Ptr Void -> Int -> IO ()
  -- | Called on module action (see
  -- https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
  --
  -- Optional CFFI function
  --
  -- @param instance Module instance data (as returned by `wbcffi_init`)
  -- @param action_name Action name
  , _doaction :: Ptr Void -> CString -> IO ()
  , _globalInit :: IO ()
  , _globalDeinit :: IO ()
  }

globalStateRef :: IORef Dynamic
globalStateRef = unsafePerformIO $ newIORef undefined
{-# NOINLINE globalStateRef #-}

mkPlugin :: forall a. (WaybarPlugin a, Typeable (PluginState a), Monad (Context a)) => Proxy a -> WaybarPluginFFI
mkPlugin proxy = WaybarPluginFFI {..} where
  _globalInit = do
    st <- globalInit proxy
    writeIORef globalStateRef (toDyn st)
  _globalDeinit = do
    Just st <- fromDynamic <$> readIORef globalStateRef
    globalDeinit proxy st

  _init ii ce csize = do
    initInfo@InitInfo {wbcffi_module = wbModule} <- peek ii
    wbVersion <- peekCString (waybar_version initInfo)
    configs <- getConfigEntries ce csize
    rootWidget <- mkGetRootFun (get_root_widget initInfo) (wbcffi_module initInfo)
      >>= newObject Container.Container

    let queueUpdate = mkQueueUpdate (queue_update initInfo) wbModule
        instanceData = ()
    let iconf = IConf{..}
    Just st <- fromDynamic <$> readIORef globalStateRef
    inst <- runContext proxy st $ init @a iconf
    sptr <- newStablePtr iconf { instanceData = inst }
    return $ castPtr $ castStablePtrToPtr sptr

  _deinit ptr = (deref ptr >>= run . deinit @a) `E.finally` freeStablePtr (castPtrToStablePtr $ castPtr ptr)

  _update ptr = deref ptr >>= run . update @a
  _refresh ptr sig = deref ptr >>= run . flip (refresh @a) sig
  _doaction ptr cstr = do
    action <- peekCString cstr
    deref ptr >>= run . flip (doaction @a) action

  run m = do
    Just st <- fromDynamic <$> readIORef globalStateRef
    runContext proxy st m

  deref = deRefStablePtr . castPtrToStablePtr . castPtr

{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DefaultSignatures #-}
{-# LANGUAGE TemplateHaskellQuotes #-}


-- |
-- Module      : Waybar.CFFI.Plugin.Base
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Waybar.CFFI.Plugin.Base (
  -- * Plugin interface
  WaybarPlugin(..),
  makeCFFIModule,
  -- * Types
  IConf(..),
  InitInfo(..),
  WbcffiModule,
  ConfigEntry(..),
  GetRootFn,
  QueueUpdate,
  -- * Misc.
  forExpD,
  -- * Re-exports
  module RXP,
  ) where

import qualified Control.Exception as E
import           Control.Monad
import qualified Data.Aeson as A
import qualified Data.Aeson.KeyMap as A.KM
import qualified Data.ByteString as BS
import           Data.Dynamic
import           Data.IORef
import qualified Data.Kind as Kind
import           Data.String (IsString(..))
import           Data.Void
import           Foreign as RXP
import           Foreign.C as RXP
import           Foreign.C.ConstPtr
import           Foreign.Storable.Generic as RXP (GStorable(..))
import           GHC.Generics as RXP (Generic)
import           GI.Gtk (newObject)
import           GI.Gtk.Objects.Container as Container
import           GI.Gtk.Objects.Container as RXP (Container)
import           Prelude hiding (init)
import           System.IO.Unsafe
import           Data.Default
import Language.Haskell.TH

-- | Exported functions:
--
-- @
-- plugin_runtime_init :: !(IO ())
-- @
--
-- @
-- plugin_runtime_destroy :: !(IO ())
-- @
--
-- Module init/new function, called on module instantiation
--
-- MANDATORY CFFI function
--
-- @
-- param init_info          Waybar module information
-- param config_entries     Flat representation of the module JSON config. The data only available
--                           during wbcffi_init call.
-- param config_entries_len Number of entries in `config_entries`
--
-- return A untyped pointer to module data, NULL if the module failed to load.
--
-- wbcffi_init :: !(Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void))
-- @
--
-- Module deinit/delete function, called when Waybar is closed or when the module is removed
--
-- MANDATORY CFFI function
--
-- @
-- param instance Module instance data (as returned by `wbcffi_init`)
-- wbcffi_deinit :: !(Ptr Void -> IO ())
-- @
--
-- Called from the GTK main event loop, to update the UI
--
-- Optional CFFI function
--
-- @
-- param instance Module instance data (as returned by `wbcffi_init`)
-- param action_name Action name
-- wbcffi_update :: !(Ptr Void -> IO ())
-- @
--
-- Called when Waybar receives a POSIX signal and forwards it to each module
--
-- Optional CFFI function
--
-- @
-- param instance Module instance data (as returned by `wbcffi_init`)
-- param signal Signal ID
-- wbcffi_refresh :: !(Ptr Void -> Int -> IO ())
-- @
--
-- Called on module action (see
-- https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
--
-- Optional CFFI function
--
-- @
-- param instance Module instance data (as returned by `wbcffi_init`)
-- param action_name Action name
-- wbcffi_doaction :: !(Ptr Void -> ConstPtr CChar -> IO ())
-- @
makeCFFIModule :: Name -> Q [Dec]
makeCFFIModule ty = do
  top <- [d|
    stref :: IORef (GlobalState $(conT ty))
    stref = mkStateRef ()
    {-# NOINLINE stref #-}

    pluginRuntimeInit :: IO ()
    pluginRuntimeInit = globalInit @($(conT ty)) >>= writeIORef stref

    pluginRuntimeDestroy :: IO ()
    pluginRuntimeDestroy = readIORef stref >>= globalDeinit @($(conT ty))

    wbcffiInit :: Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void)
    wbcffiInit = instanceInit @($(conT ty)) stref

    wbcffiDeinit :: Ptr Void -> IO ()
    wbcffiDeinit ptr = (deref ptr >>= run @($(conT ty)) stref . deinit @($(conT ty))) `E.finally` freeStablePtr (castPtrToStablePtr $ castPtr ptr)

    wbcffiUpdate :: Ptr Void -> IO ()
    wbcffiUpdate ptr = deref ptr >>= run @($(conT ty)) stref . update @($(conT ty))

    wbcffiRefresh :: Ptr Void -> Int -> IO ()
    wbcffiRefresh ptr i = deref ptr >>= run @($(conT ty)) stref . flip (refresh @($(conT ty))) i

    wbcffiDoaction :: Ptr Void -> ConstPtr CChar -> IO ()
    wbcffiDoaction ptr cstr = do
      action <- peekCString (unConstPtr cstr)
      deref ptr >>= run @($(conT ty)) stref . flip (doaction @($(conT ty))) action
    |]
  fexps <- sequence
    [ forExpD CCall "plugin_runtime_init"    (mkName "pluginRuntimeInit")    [t|IO ()|]
    , forExpD CCall "plugin_runtime_destroy" (mkName "pluginRuntimeDestroy") [t|IO ()|]
    , forExpD CCall "wbcffi_init" (mkName "wbcffiInit") [t|Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void)|]
    , forExpD CCall "wbcffi_deinit" (mkName "wbcffiDeinit") [t|Ptr Void -> IO ()|]
    , forExpD CCall "wbcffi_update" (mkName "wbcffiUpdate") [t|Ptr Void -> IO ()|]
    , forExpD CCall "wbcffi_refresh" (mkName "wbcffiRefresh") [t|Ptr Void -> Int -> IO ()|]
    , forExpD CCall "wbcffi_doaction" (mkName "wbcffiDoaction") [t|Ptr Void -> ConstPtr CChar -> IO ()|]
    ]
  return $ top ++ fexps

forExpD :: Callconv -> String -> Name -> Q Type -> Q Dec
forExpD cc str n ty = ForeignD . ExportF cc str n <$> ty

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
    waybar_version :: !(ConstPtr CChar),
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

type GetRootFn = Ptr WbcffiModule -> IO (Ptr Container)

type QueueUpdate = Ptr WbcffiModule -> IO ()

foreign import ccall "dynamic" mkGetRootFun  :: FunPtr GetRootFn   -> GetRootFn

foreign import ccall "dynamic" mkQueueUpdate :: FunPtr QueueUpdate -> QueueUpdate

class (Typeable a, Typeable (GlobalState a), Monad (Context a)) => WaybarPlugin a where

  -- | Global state type. Initialized once per library loading.
  data GlobalState a :: Kind.Type

  -- | Execution context of the plugin callbacks.
  type Context a :: Kind.Type -> Kind.Type

  -- | Called once on library load.
  globalInit :: IO (GlobalState a)
  default globalInit :: Default (GlobalState a) => IO (GlobalState a)
  globalInit = return def

  -- | Called once at exit.
  globalDeinit :: GlobalState a -> IO ()
  globalDeinit _ = return ()

  -- | Execute in callback context.
  runContext :: GlobalState a -> Context a r -> IO r
  default runContext :: Context a ~ IO => GlobalState a -> Context a r -> IO r
  runContext _ = id

  -- | Initalize a new instance.
  init :: Monad (Context a) => IConf () -> Context a a

  -- | Destroy the instance.
  deinit :: Monad (Context a) => IConf a -> Context a ()

  -- | Update the UI (redraw).
  update :: Monad (Context a) => IConf a -> Context a ()
  update _ = return ()

  -- | Signal (e.g. SIGUSR2 for reloading the config.)
  refresh :: Monad (Context a) => IConf a -> Int -> Context a ()
  refresh _ _ = return ()

  -- | Action is triggered.
  doaction :: Monad (Context a) => IConf a -> String -> Context a ()
  doaction _ _ = pure ()

mkStateRef :: () -> IORef a
mkStateRef () = unsafePerformIO (newIORef undefined)
{-# INLINE mkStateRef #-}

instanceInit :: forall a. WaybarPlugin a => IORef (GlobalState a) -> Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void)
instanceInit stref ii ce csize = do
    initInfo@InitInfo {wbcffi_module = wbModule} <- peek ii
    wbVersion <- peekCString $ unConstPtr $ waybar_version initInfo
    configs <- getConfigEntries ce csize
    rootWidget <- mkGetRootFun (get_root_widget initInfo) (wbcffi_module initInfo)
      >>= newObject Container.Container
    let queueUpdate = mkQueueUpdate (queue_update initInfo) wbModule
        instanceData = ()
    let iconf = IConf{..}
    st <- readIORef stref
    inst <- runContext @a st $ init @a iconf
    sptr <- newStablePtr iconf { instanceData = inst }
    return $! castPtr $ castStablePtrToPtr sptr
{-# INLINABLE instanceInit #-}

run :: forall a b. WaybarPlugin a => IORef (GlobalState a) -> Context a b -> IO b
run stref m = do
  st <- readIORef stref
  runContext @a st m

deref :: Ptr a -> IO b
deref = deRefStablePtr . castPtrToStablePtr . castPtr

getConfigEntries :: Ptr ConfigEntry -> CSize -> IO A.Object
getConfigEntries ptr size = fmap A.KM.fromList $
  forM [0 .. (fromIntegral size - 1)] $ \i -> do
    ConfigEntry pk pv <- peek (advancePtr ptr i)
    (k, v) <- (,) <$> peekCString pk <*> BS.packCString pv
    case A.decodeStrict' v :: Maybe A.Value of
      Just v' -> return (fromString k, v')
      Nothing -> error "getConfigEntries: parse error"

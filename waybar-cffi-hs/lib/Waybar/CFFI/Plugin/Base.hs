{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DefaultSignatures #-}

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

forExpD :: Callconv -> String -> Name -> Q Type -> Q Dec
forExpD cc str n ty = do
  ty' <- ty
  pure $ ForeignD $ ExportF cc str n ty'

makeForeignExports :: Name -> Q [Dec]
makeForeignExports rty = do
  TyConI (DataD _ _ _ _ [RecC _ vbts] _) <- reify rty
  let xs = [ mkName $ nameBase x | (x,_,_) <- vbts ]
  mapM mk1 xs
    where
      mk1 f = do
        VarI fN fT _ <- reify f
        forExpD CCall (nameBase fN) fN (pure fT)

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

-- | Exported functions.
data WaybarPluginFFI plugin = WaybarPluginFFI
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
  { wbcffi_init :: !(Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void))
  -- | Module deinit/delete function, called when Waybar is closed or when the module is removed
  --
  -- MANDATORY CFFI function
  --
  -- @param instance Module instance data (as returned by `wbcffi_init`)
  , wbcffi_deinit :: !(Ptr Void -> IO ())
  -- | Called from the GTK main event loop, to update the UI
  --
  -- Optional CFFI function
  --
  -- @param instance Module instance data (as returned by `wbcffi_init`)
  -- @param action_name Action name
  , wbcffi_update :: !(Ptr Void -> IO ())
  -- | Called when Waybar receives a POSIX signal and forwards it to each module
  --
  -- Optional CFFI function
  --
  -- @param instance Module instance data (as returned by `wbcffi_init`)
  -- @param signal Signal ID
  , wbcffi_refresh :: !(Ptr Void -> Int -> IO ())
  -- | Called on module action (see
  -- https://github.com/Alexays/Waybar/wiki/Configuration#module-actions-config)
  --
  -- Optional CFFI function
  --
  -- @param instance Module instance data (as returned by `wbcffi_init`)
  -- @param action_name Action name
  , wbcffi_doaction :: !(Ptr Void -> ConstPtr CChar -> IO ())
  , plugin_runtime_init :: !(IO ())
  , plugin_runtime_destroy :: !(IO ())
  }

class (Typeable a, Typeable (GlobalState a), Monad (Context a)) => WaybarPlugin a where
  data GlobalState a :: Kind.Type

  type Context a :: Kind.Type -> Kind.Type

  globalInit :: IO (GlobalState a)
  default globalInit :: Default (GlobalState a) => IO (GlobalState a)
  globalInit = return def
  {-# INLINE globalInit #-}

  globalDeinit :: GlobalState a -> IO ()
  globalDeinit _ = return ()
  {-# INLINE globalDeinit #-}

  runContext :: GlobalState a -> Context a r -> IO r
  default runContext :: Context a ~ IO => GlobalState a -> Context a r -> IO r
  runContext _ = id
  {-# INLINE runContext #-}

  init :: Monad (Context a) => IConf () -> Context a a

  deinit :: Monad (Context a) => IConf a -> Context a ()

  update :: Monad (Context a) => IConf a -> Context a ()
  update _ = return ()

  refresh :: Monad (Context a) => IConf a -> Int -> Context a ()
  refresh _ _ = return ()

  doaction :: Monad (Context a) => IConf a -> String -> Context a ()
  doaction _ _ = pure ()
  {-# INLINE update #-}
  {-# INLINE refresh #-}
  {-# INLINE doaction #-}

mkStateRef :: IORef a
mkStateRef = unsafePerformIO (newIORef undefined)
{-# INLINE mkStateRef #-}

_plugin_runtime_init :: forall a. WaybarPlugin a => IORef (GlobalState a) -> IO ()
_plugin_runtime_init stref = globalInit @a >>= writeIORef stref

_plugin_runtime_destroy :: forall a. WaybarPlugin a => IORef (GlobalState a) -> IO ()
_plugin_runtime_destroy stref = readIORef stref >>= globalDeinit @a

_wbcffi_init :: forall a. WaybarPlugin a => IORef (GlobalState a) -> Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void)
_wbcffi_init stref ii ce csize = do
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

_wbcffi_deinit :: forall a. WaybarPlugin a => IORef (GlobalState a) -> Ptr Void -> IO ()
_wbcffi_deinit stref ptr = (deref ptr >>= run @a stref . deinit @a) `E.finally` freeStablePtr (castPtrToStablePtr $ castPtr ptr)

_wbcffi_update :: forall a. WaybarPlugin a => IORef (GlobalState a) -> Ptr Void -> IO ()
_wbcffi_update stref ptr = deref ptr >>= run @a stref . update @a

_wbcffi_refresh :: forall a. WaybarPlugin a => IORef (GlobalState a) -> Ptr Void -> Int -> IO ()
_wbcffi_refresh stref ptr i = deref ptr >>= run @a stref . flip (refresh @a) i

_wbcffi_doaction :: forall a. WaybarPlugin a => IORef (GlobalState a) -> Ptr Void -> ConstPtr CChar -> IO ()
_wbcffi_doaction stref ptr cstr = do
  action <- peekCString (unConstPtr cstr)
  deref ptr >>= run @a stref . flip (doaction @a) action

run :: forall a b. WaybarPlugin a => IORef (GlobalState a) -> Context a b -> IO b
run stref m = do
  st <- readIORef stref
  runContext @a st m

deref = deRefStablePtr . castPtrToStablePtr . castPtr

getConfigEntries :: Ptr ConfigEntry -> CSize -> IO A.Object
getConfigEntries ptr size = fmap A.KM.fromList $
  forM [0 .. (fromIntegral size - 1)] $ \i -> do
    ConfigEntry pk pv <- peek (advancePtr ptr i)
    (k, v) <- (,) <$> peekCString pk <*> BS.packCString pv
    case A.decodeStrict' v :: Maybe A.Value of
      Just v' -> return (fromString k, v')
      Nothing -> error "getConfigEntries: parse error"

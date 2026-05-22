{-# LANGUAGE TemplateHaskellQuotes #-}

-- |
-- Module      : Waybar.CFFI.Plugin.TH
-- Description : Template haskell utils
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Waybar.CFFI.Plugin.TH (
  makeCFFIModule,
  forExpD,
  -- * Re-exports
  ConstPtr(..),
  CSize(..),
  CInt(..),
  ) where

import           Waybar.CFFI.Plugin.ABIv2
import           Waybar.CFFI.Plugin.Base

import qualified GI.Gtk as Gtk

import           Language.Haskell.TH
import           Language.Haskell.TH.Syntax

import qualified Control.Exception as E
import           Control.Monad
import           Control.Monad.Reader
import           Data.IORef
import           Data.List (intercalate)
import           Data.Proxy
import           Data.Version (parseVersion)
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr (ConstPtr(..))
import           GHC.Exts (inline)
import           Prelude hiding (init)
import           System.IO (hPrint, stderr)
import           System.IO.Unsafe
import           Text.ParserCombinators.ReadP
import           Text.Read

type DoAction a = a -> ConstPtr CChar -> IO ()

-- |
--
-- @
-- plugin_runtime_init :: !(IO ())
-- @
--
-- @
-- plugin_runtime_destroy :: !(IO ())
-- @
--
-- Module deinit/delete function, called when Waybar is closed or when the module is removed
--
-- MANDATORY CFFI function
--
-- @
-- param instance Module instance data (as returned by `Waybar.CFFI.Plugin.ABIv2.wbcffi_init`)
-- wbcffi_deinit :: !(Ptr Void -> IO ())
-- @
--
-- Called from the GTK main event loop, to update the UI
--
-- Optional CFFI function
--
-- @
-- param instance Module instance data (as returned by `Waybar.CFFI.Plugin.ABIv2.wbcffi_init`)
-- param action_name Action name
-- wbcffi_update :: !(Ptr Void -> IO ())
-- @
--
-- Called when Waybar receives a POSIX signal and forwards it to each module
--
-- Optional CFFI function
--
-- @
-- param instance Module instance data (as returned by `Waybar.CFFI.Plugin.ABIv2.wbcffi_init`)
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
-- param instance Module instance data (as returned by `Waybar.CFFI.Plugin.ABIv2.wbcffi_init`)
-- param action_name Action name
-- wbcffi_doaction :: !(Ptr Void -> ConstPtr CChar -> IO ())
-- @
makeCFFIModule
  :: Name     -- ^ The plugin type. Must be an instance of 'WaybarPlugin'.
  -> [String] -- ^ RTS flags.
  -> Q [Dec]
makeCFFIModule ty rtsFlags = do
  globalN <- newName "global"

  decls <- join <$> sequence
    [ sequence
      [ sigD globalN [t|IORef (Env $(conT ty) ())|]
      , funD globalN [clause [] (normalB [|unsafePerformIO $ newIORef =<< (Env <$> newIORef undefined <*> newIORef mempty <*> pure ())|]) []]
      , pragInlD globalN NoInline FunLike AllPhases
      ]

    , mkDec "plugin_runtime_init" [t|IO ()|] [|
      do env <- readIORef $(varE globalN)
         g <- flip runReaderT env $ runContextT @($(conT ty)) Proxy $ initGlobal @($(conT ty)) Proxy
         writeIORef (envGlobal env) g
      |]

    , mkDec "plugin_runtime_destroy" [t|IO ()|] [|
      do env <- readIORef $(varE globalN)
         g <- readIORef (envGlobal env)
         flip runReaderT env $ runContextT @($(conT ty)) Proxy $ deinitGlobal @($(conT ty)) Proxy g
      |]

    , mkDec "wbcffi_init" [t|Init $handleT|] [|instanceInit $(varE globalN)|]
    , mkDec "wbcffi_deinit" [t|$handleT -> IO ()|] [|instanceDestroy|]
    , mkDec "wbcffi_update" [t|$handleT -> IO ()|] [|\ptr -> withInstEnv ptr $ \env -> runContext env update |]
    , mkDec "wbcffi_refresh" [t|$handleT -> Signal -> IO ()|] [|\ptr sig -> withInstEnv ptr $ \env -> runContext env (refresh $ fromIntegral sig)|]
    , mkDec "wbcffi_doaction" [t|DoAction $handleT|] [|instanceDoAction|]
    ]

  Module _ modN <- thisModule

  addModFinalizer $ addForeignSource LangC $ unlines
    [ "#include <stddef.h>"
    , "#include \"cabal_macros.h\""
    , "#include \"" ++ modString modN ++ "_stub.h\""
    , "#include \"Rts.h\""
    -- FFI would export this as a function but waybar expects a const value...
    , "extern const size_t wbcffi_version;"
    , "const size_t wbcffi_version = " ++ show version ++ ";"
    -- Constructor
    , "static HsBool library_init(void) __attribute__((constructor));"
    , "static HsBool library_init(void) {"
    , "    static int argc = " ++ show (length rtsFlags + 2) ++ ";"
    , "    static char *argv[] = { CURRENT_COMPONENT_ID \".so\", " ++ ppFlags rtsFlags ++ ", NULL };"
    , "    static char **pargv = argv;"
    , "    RtsConfig conf = defaultRtsConfig;"
    , "    conf.rts_opts_enabled = RtsOptsAll;"
    , "    hs_init_ghc(&argc, &pargv, conf);"
    , "    plugin_runtime_init();"
    , "    return HS_BOOL_TRUE;"
    , "}"
    -- Destructor
    , "static void library_exit(void) __attribute__((destructor));"
    , "static void library_exit(void) {"
    , "    plugin_runtime_destroy();"
    , "    hs_exit_nowait();"
    , "}"
    ]

  return decls
  where
    version :: Int
    version = 2

    ppFlags xs = intercalate ", " $ map (\x -> "\"" <> x <> "\"") $ "+RTS" : xs

    handleT = [t|StablePtr (Env $(conT ty) (IConf $(conT ty)))|]

    mkDec expNm ty' body = do
      nm <- newName expNm
      sequence [ sigD nm ty'
               , funD nm [clause [] (normalB body) []]
               , forExpD CCall expNm nm ty'
               ]


-- | Create a foreign export declaration.
--
-- @forExpD cc c_name hs_name type@ -> @foreign export cc "c_name" hs_name :: type@
forExpD :: Quote m => Callconv -> String -> Name -> m Type -> m Dec
forExpD cc str n ty = ForeignD . ExportF cc str n <$> ty

-- | Module init/new function, called on module instantiation.
--
-- MANDATORY CFFI function
--
-- @
-- param init_info          Waybar module information
-- param config_entries     Flat representation of the module JSON config. The data only available
--                           during wbcffi_init call.
-- param config_entries_len Number of entries in @config_entries@
--
-- return A untyped pointer to module data, NULL if the module failed to load.
--
-- wbcffi_init :: !(Ptr InitInfo -> Ptr ConfigEntry -> CSize -> IO (Ptr Void))
-- @
type Init a = ConstPtr InitInfo -> ConstPtr ConfigEntry -> CSize -> IO a

instanceInit :: forall plugin. (WaybarPlugin plugin, Default (PluginState plugin))
             => IORef (Env plugin ())
             -> Init (StablePtr (Env plugin (IConf plugin)))
{-# INLINE instanceInit #-}
instanceInit envRef (ConstPtr infoPtr) cep csize = do
  Env{envInstances, envGlobal} <- readIORef envRef
  info <- peek infoPtr
  let IntPtr instId = ptrToIntPtr $! wbcffi_module info
  instWbVersion <- do
    str <- peekCString (unConstPtr (waybar_version info))
    case reverse $ readP_to_S parseVersion str of
      (v, "") : _ -> return v
      _ -> E.throwIO $ PluginVersionParseError str
  instConfig <- parseConfig cep csize
  instState <- newIORef def
  instRootWidget <- mkGetRootWidget (get_root_widget info) (wbcffi_module info) >>= Gtk.newObject Gtk.Container
  let instQueueUpdate = mkQueueUpdate (queue_update info) (wbcffi_module info)
  res <- E.try $ runContext Env { envInstance = IConf{instData = (), ..}, .. } init
  case res of
    Right instData -> do
      let envInstance = IConf{..}
      modifyIORef envInstances (envInstance :)
      newStablePtr Env { .. }
    Left (ex :: E.SomeException) -> do
      hPrint stderr ex
      return (castPtrToStablePtr nullPtr)

instanceDestroy :: WaybarPlugin a => StablePtr (Env a (IConf a)) -> IO ()
instanceDestroy ptr = withInstEnv ptr $ \env -> do
  modifyIORef (envInstances env) $ filter (/= envInstance env)
  runContext env deinit `E.finally` freeStablePtr ptr

instanceDoAction :: (WaybarPlugin a, Read (PluginAction a)) => DoAction (StablePtr (Env a (IConf a)))
instanceDoAction ptr aptr = withInstEnv ptr $ \env -> do
  action <- peekCString (unConstPtr aptr)
  case readMaybe action of
    Just x -> runContext env (inline doaction x)
    Nothing -> hPrint stderr $ "action no parse: " ++ action

withInstEnv :: forall a m. (WaybarPlugin a, MonadIO m) => StablePtr (Env a (IConf a)) -> (Env a (IConf a) -> m ()) -> m ()
{-# INLINE withInstEnv #-}
withInstEnv envPtr f
  | envPtr == castPtrToStablePtr nullPtr = return ()
  | otherwise = liftIO (deRefStablePtr envPtr) >>= f

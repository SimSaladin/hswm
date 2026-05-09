{-# LANGUAGE TemplateHaskellQuotes #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

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

import qualified Control.Exception as E
import           Control.Monad.Fix
import           Data.IORef
import           Data.List (intercalate)
import           Foreign
import           Foreign.C
import           Foreign.C.ConstPtr (ConstPtr(..))
import           Prelude hiding (init)
import           System.IO.Unsafe

import           Control.Monad.Reader
import           GI.Gtk (newObject)
import           GI.Gtk.Objects.Container as Container
import           Language.Haskell.TH
import           Language.Haskell.TH.Syntax

import           Waybar.CFFI.Plugin.ABIv2
import           Waybar.CFFI.Plugin.Base

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
-- param config_entries_len Number of entries in @config_entries@
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
  :: Name -- ^ The plugin type, must implement 'WaybarPlugin'
  -> [String] -- ^ RTS flags.
  -> Q [Dec]
makeCFFIModule ty rtsFlags = do
  let handleT = [t|StablePtr (IConf $(conT ty))|]
  decls <- [d|
    globalSt :: IORef (GlobalState $(conT ty))
    globalSt = unsafePerformIO (newIORef undefined)
    {-# NOINLINE globalSt #-}

    pluginRuntimeInit :: IO ()
    pluginRuntimeInit = initGlobalState >>= writeIORef globalSt

    pluginRuntimeDestroy :: IO ()
    pluginRuntimeDestroy = readIORef globalSt >>= deinitGlobalState

    wbcffiInit :: ConstPtr InitInfo -> ConstPtr ConfigEntry -> CSize -> IO $handleT
    wbcffiInit = instanceInit globalSt

    wbcffiDeinit :: $handleT -> IO ()
    wbcffiDeinit ptr = do
      ic <- deRefStablePtr ptr
      run' ic deinit `E.finally` freeStablePtr ptr

    wbcffiUpdate :: $handleT -> IO ()
    wbcffiUpdate ptr = do
      ic <- deRefStablePtr ptr
      run' ic update

    wbcffiRefresh :: $handleT -> CInt -> IO ()
    wbcffiRefresh ptr i = do
      ic <- deRefStablePtr ptr
      run' ic (refresh (fromIntegral i))

    wbcffiDoaction :: $handleT -> ConstPtr CChar -> IO ()
    wbcffiDoaction ptr cstr = do
      ic <- deRefStablePtr ptr
      action <- peekCString (unConstPtr cstr)
      run' ic (doaction action)
    |]

  fexps <- sequence
    [ forExpD CCall "plugin_runtime_init"    (mkName "pluginRuntimeInit")    [t|IO ()|]
    , forExpD CCall "plugin_runtime_destroy" (mkName "pluginRuntimeDestroy") [t|IO ()|]
    , forExpD CCall "wbcffi_init"            (mkName "wbcffiInit")           [t|ConstPtr InitInfo -> ConstPtr ConfigEntry -> CSize -> IO $handleT|]
    , forExpD CCall "wbcffi_deinit"          (mkName "wbcffiDeinit")         [t|$handleT -> IO ()|]
    , forExpD CCall "wbcffi_update"          (mkName "wbcffiUpdate")         [t|$handleT -> IO ()|]
    , forExpD CCall "wbcffi_refresh"         (mkName "wbcffiRefresh")        [t|$handleT -> CInt -> IO ()|]
    , forExpD CCall "wbcffi_doaction"        (mkName "wbcffiDoaction")       [t|$handleT -> ConstPtr CChar -> IO ()|]
    ]

  Module _pkgN modN <- thisModule

  addModFinalizer $ addForeignSource LangC $ unlines
    [ "#include <stddef.h>"
    , "#include \"cabal_macros.h\""
    , "#include \"" ++ modString modN ++ "_stub.h\""
    , "#include \"Rts.h\""
    -- FFI would export this as a function but waybar expects a const value...
    , "extern const size_t wbcffi_version;"
    , "const size_t wbcffi_version = 2;"
    -- Constructor
    , "static HsBool library_init(void) __attribute__((constructor));"
    , "static HsBool library_init(void) {"
    , "    static int argc = " ++ show (length rtsFlags + 2) ++ ";"
    , "    static char *argv[] = { CURRENT_COMPONENT_ID \".so\", " ++
      intercalate ", " (map (\f -> '\"' : f ++ "\"") $ "+RTS" : rtsFlags) ++ ", NULL };"
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
  return $ decls ++ fexps

-- | Create a foreign export declaration.
--
-- @forExpD cc c_name hs_name type@ -> @foreign export cc "c_name" hs_name :: type@
forExpD :: Callconv -> String -> Name -> Q Type -> Q Dec
forExpD cc str n ty = ForeignD . ExportF cc str n <$> ty

instanceInit :: forall a. WaybarPlugin a
             => IORef (GlobalState a)
             -> ConstPtr InitInfo
             -> ConstPtr ConfigEntry
             -> CSize
             -> IO (StablePtr (IConf a))
instanceInit globalStRef iip cep csize = do
    ii <- peek (unConstPtr iip)
    config <- getConfig cep csize
    wbVersion <- peekCString $! unConstPtr (waybar_version ii)
    rootWidget <- mkGetRootWidget (get_root_widget ii) (wbcffi_module ii) >>= newObject Container.Container
    let wbQueueUpdate = mkQueueUpdate (queue_update ii) (wbcffi_module ii)
    ic <- mfix $ \ic -> do
      instanceData <- runContext @a $ init (run' ic) wbVersion config rootWidget
      return IConf {..}
    newStablePtr ic

run' :: forall a b. (WaybarPlugin a) => IConf a -> Context a b -> IO b
run' ic m = runReaderT (runContext @a m) ic
{-# INLINE run' #-}

{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE TemplateHaskellQuotes #-}

-- |
-- Module      : Waybar.CFFI.Plugin.TH
-- Description : Template haskell utils
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
module Waybar.CFFI.Plugin.TH (
  makeCFFIModule,

  -- * Internals
  forExpD,
  mkGlobalVar,
  mkExport,

  -- * Re-exports
  ConstPtr (..),
  CSize (..),
  CInt (..),
) where

import Waybar.CFFI.Plugin.ABIv2
import Waybar.CFFI.Plugin.Base

import Control.Exception qualified as E
import Control.Monad
import Control.Monad.Reader
import Data.IORef
import Data.List (intercalate)
import Foreign
import Foreign.C
import Foreign.C.ConstPtr (ConstPtr (..))
import GHC.Exts (inline)
import GI.Gtk qualified as Gtk
import Language.Haskell.TH
import Language.Haskell.TH.Syntax
import System.IO (hPrint, stderr)
import System.IO.Unsafe (unsafePerformIO)
import Prelude hiding (init)

-- |
--
-- - @plugin_runtime_init :: IO ()@
--
-- - @plugin_runtime_destroy :: IO ()@
makeCFFIModule ::
  Name
  -- ^ The plugin type. Must be an instance of 'WaybarPlugin'.
  -> [String]
  -- ^ RTS flags.
  -> Q [Dec]
makeCFFIModule ty rtsFlags = do
  Module _ moduleName <- thisModule
  addModFinalizer $
    addForeignSource LangC $
      libraryInitCSource moduleName 2 rtsFlags
  globalN <- newName "global"
  join
    <$> sequence
      [ mkGlobalVar globalN [t|EnvGlobal $modType|] [|EnvGlobal <$> newIORef undefined <*> newIORef mempty|]
      , mkExport "plugin_runtime_init" [t|IO ()|] [|runtimeInit $(varE globalN)|]
      , mkExport "plugin_runtime_destroy" [t|IO ()|] [|runtimeDeinit $(varE globalN)|]
      , mkExport "wbcffi_init" [t|Init $modTypeSP|] [|instanceInit $(varE globalN)|]
      , mkExport "wbcffi_deinit" [t|DeInit $modTypeSP|] [|instanceDestroy|]
      , mkExport "wbcffi_update" [t|Update $modTypeSP|] [|instanceUpdate|]
      , mkExport "wbcffi_refresh" [t|Refresh $modTypeSP|] [|instanceRefresh|]
      , mkExport "wbcffi_doaction" [t|DoAction $modTypeSP|] [|instanceDoAction|]
      ]
  where
    modTypeSP = [t|StablePtr (Env $modType)|]
    modType = conT ty

mkGlobalVar :: (Quote m) => Name -> m Type -> m Exp -> m [Dec]
mkGlobalVar name hsType create =
  sequence
    [ sigD name hsType
    , funD name [clause [] (normalB [|unsafePerformIO $(create)|]) []]
    , pragInlD name NoInline FunLike AllPhases
    ]

mkExport :: (Quote m) => String -> m Type -> m Exp -> m [Dec]
mkExport export hsType funBody = do
  nm <- newName export
  sequence
    [ sigD nm hsType
    , funD nm [clause [] (normalB funBody) []]
    , forExpD CCall export nm hsType
    ]

libraryInitCSource :: ModName -> Int -> [String] -> String
libraryInitCSource moduleName cffiVersion rtsFlags =
  unlines
    [ "#include <stddef.h>"
    , "#include \"cabal_macros.h\""
    , "#include \"" ++ modString moduleName ++ "_stub.h\""
    , "#include \"Rts.h\""
    , -- FFI would export this as a function but waybar expects a const value...
      "extern const size_t wbcffi_version;"
    , "const size_t wbcffi_version = " ++ show cffiVersion ++ ";"
    , -- Constructor
      "static HsBool library_init(void) __attribute__((constructor));"
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
    , -- Destructor
      "static void library_exit(void) __attribute__((destructor));"
    , "static void library_exit(void) {"
    , "    plugin_runtime_destroy();"
    , "    hs_exit_nowait();"
    , "}"
    ]
  where
    ppFlags = intercalate ", " . map (\x -> "\"" <> x <> "\"") . ("+RTS" :)

-- | Create a foreign export declaration.
--
-- @forExpD cc c_name hs_name type@ -> @foreign export cc "c_name" hs_name :: type@
forExpD :: (Quote m) => Callconv -> String -> Name -> m Type -> m Dec
forExpD cc str n ty = ForeignD . ExportF cc str n <$> ty

runtimeInit :: forall plugin. (WaybarPlugin plugin) => EnvGlobal plugin -> IO ()
runtimeInit env = do
  g <- runContextT env $ initGlobal @plugin
  writeIORef env._global g

runtimeDeinit :: forall plugin. (WaybarPlugin plugin) => EnvGlobal plugin -> IO ()
runtimeDeinit env = do
  g <- readIORef env._global
  runContextT env $ deinitGlobal @plugin g

instanceInit ::
  forall plugin.
  (WaybarPlugin plugin) =>
  EnvGlobal plugin
  -> Init (StablePtr (Env plugin))
{-# INLINE instanceInit #-}
instanceInit genv@EnvGlobal{..} (ConstPtr infoPtr) cep csize = do
  info <- peek infoPtr
  let IntPtr instId = ptrToIntPtr $! wbcffi_module info
  instWbVersion <- getWaybarVersion info
  instConfig <- parseConfig cep csize
  instState <- newIORef =<< runContextT genv (pluginStateInit instConfig)
  instRootWidget <- mkGetRootWidget (get_root_widget info) (wbcffi_module info) >>= Gtk.newObject Gtk.Container
  let instQueueUpdate = mkQueueUpdate (queue_update info) (wbcffi_module info)
  res <- E.try $ runContextT Env{instData = undefined, ..} init
  case res of
    Right instData -> do
      let env = Env{..}
      atomicModifyIORef _instances $ \xs -> (env : xs, ())
      newStablePtr env
    Left (ex :: E.SomeException) -> do
      hPrint stderr ex
      return (castPtrToStablePtr nullPtr)

instanceUpdate :: (WaybarPlugin plugin) => Update (StablePtr (Env plugin))
instanceUpdate envPtr = withInstEnv envPtr $ flip runContextT update

-- instanceRefresh :: (WaybarPlugin plugin, Integral a) => StablePtr (Env plugin) -> Signal -> IO ()
instanceRefresh :: (WaybarPlugin plugin) => Refresh (StablePtr (Env plugin))
instanceRefresh envPtr = withInstEnv envPtr . flip runContextT . refresh . fromIntegral

instanceDestroy :: (WaybarPlugin a) => DeInit (StablePtr (Env a))
instanceDestroy envPtr = withInstEnv envPtr $ \env -> do
  atomicModifyIORef env._instances $ \xs -> (filter (/= env) xs, ())
  runContextT env deinit `E.finally` freeStablePtr envPtr

instanceDoAction :: (WaybarPlugin a) => DoAction (StablePtr (Env a))
instanceDoAction envPtr (ConstPtr actPtr) = do
  act <- peekCString actPtr
  withInstEnv envPtr $ flip runContextT (inline doaction act)

withInstEnv :: forall a m. (MonadIO m) => StablePtr a -> (a -> m ()) -> m ()
{-# INLINE withInstEnv #-}
withInstEnv envPtr f
  | envPtr == castPtrToStablePtr nullPtr = return ()
  | otherwise = liftIO (deRefStablePtr envPtr) >>= f

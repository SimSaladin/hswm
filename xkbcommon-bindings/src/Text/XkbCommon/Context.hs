{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE NoFieldSelectors #-}

-- |
-- Module      : Text.XkbCommon.Context
-- Description : XKB Context
-- Description : The context contains various general library data and state.
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- The context contains various general library data and state, like
-- logging level and include paths.
--
-- Objects are created in a specific context, and multiple contexts may
-- coexist simultaneously.  Objects from different contexts are completely
-- separated and do not share any memory or state.
module Text.XkbCommon.Context (
  -- * New
  XkbContext,
  XkbContextOptions (..),
  newContext,
  withContext,

  -- * Include Path
  getIncludePath,
  clearIncludePath,
  resetIncludePath,
  appendIncludePath,
  appendDefaultIncludePath,

  -- * Logging
  setLogLevel,
  setLogVerbosity,
  LogLevel (..),
  LogFn,

  -- * Exceptions
  XkbCommonException (..),
) where

import Text.XkbCommon.FFI
import Text.XkbCommon.Internal

import Control.Exception
import Control.Monad
import Data.Functor
import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import GHC.Stack

-- | Create a new "XkbContext" with the given options.
--
-- Throws "ContextNewFailed" on failure.
newContext :: (HasCallStack) => XkbContextOptions -> IO XkbContext
newContext opts = mask_ $ do
  ctxPtr <- c_new optionsToFlags >>= throwIfNullEx (ContextNewFailed $ show opts)
  forM_ opts.setLogLevel $ c_set_log_level ctxPtr . fromLogLevel
  forM_ opts.setLogVerbosity $ c_set_log_verbosity ctxPtr . fromIntegral
  logFnPtr <- forM opts.setLogFunction mkLogFnFunPtr
  forM_ logFnPtr $ set_context_log_fn ctxPtr hs_free_fun_ptr
  XkbContext <$> newForeignPtrEnv finalize_context (maybe nullPtr castFunPtrToPtr logFnPtr) ctxPtr
  where
    optionsToFlags =
      _NO_FLAGS
        .|. f (not opts.defaultIncludePaths) _NO_DEFAULT_INCLUDES
        .|. f opts.secureGetenvDisabled _NO_SECURE_GETENV
        .|. f (not opts.environmentNames) _NO_ENVIRONMENT_NAMES
      where
        f p x = if p then x else 0

foreign import capi unsafe "extras.h set_context_log_fn"
  set_context_log_fn :: Ptr XkbContext -> FunPtr (FunPtr a -> IO ()) -> FunPtr LogFnRaw -> IO ()

foreign import capi "xkbcommon/xkbcommon.h value XKB_CONTEXT_NO_FLAGS" _NO_FLAGS :: CUInt
foreign import capi "xkbcommon/xkbcommon.h value XKB_CONTEXT_NO_DEFAULT_INCLUDES" _NO_DEFAULT_INCLUDES :: CUInt
foreign import capi "xkbcommon/xkbcommon.h value XKB_CONTEXT_NO_ENVIRONMENT_NAMES" _NO_ENVIRONMENT_NAMES :: CUInt
foreign import capi "xkbcommon/xkbcommon.h value XKB_CONTEXT_NO_SECURE_GETENV" _NO_SECURE_GETENV :: CUInt

-- | Use 'Data.Default.def' to construct the default options.
data XkbContextOptions = XkbContextOptions
  { defaultIncludePaths :: !Bool
  -- ^ Whether to create the context with default include paths. (True)
  --
  -- Useful to avoid e.g. permission issues when only retrieving a keymap from Wayland/X server.
  , secureGetenvDisabled :: !Bool
  -- ^ Whether to disable the use of @secure_getenv@. (False)
  , environmentNames :: !Bool
  -- ^ Take RMLVO names from the environment. (True)
  , setLogLevel :: !(Maybe LogLevel)
  -- ^ Override log level.
  --
  -- May also be set via environment variable @XKB_LOG_LEVEL@.
  , setLogVerbosity :: !(Maybe Int)
  -- ^ Additional log verbosity between 0 and 10. (0)
  --
  -- May also be set via environment variable @XKB_LOG_VERBOSITY@.
  , setLogFunction :: Maybe LogFn
  -- ^ Use a custom function for logging.
  }
  deriving (Generic)

instance Default XkbContextOptions where
  def = XkbContextOptions True False True def def def

instance Show XkbContextOptions where
  show o =
    "XkbContextOptions {"
      ++ "default-include-paths = "
      ++ show o.defaultIncludePaths
      ++ " secure-getenv-disabled = "
      ++ show o.secureGetenvDisabled
      ++ maybe "" ((" log-level = " ++) . show) o.setLogLevel
      ++ maybe "" ((" log-verbosity = " ++) . show) o.setLogVerbosity
      ++ maybe "" (const " log-function = <set>") o.setLogFunction
      ++ "}"

-- | See 'newContext'
withContext :: XkbContextOptions -> (XkbContext -> IO a) -> IO a
withContext flags f = do
  ctx <- newContext flags
  r <- f ctx
  touchForeignPtr ctx.unwrap $> r

-- | Set context log level.
setLogLevel :: XkbContext -> LogLevel -> IO ()
setLogLevel ctx level = withForeignPtr ctx.unwrap $ \ctxPtr ->
  c_set_log_level ctxPtr (fromLogLevel level)

-- | Set context log verbosity. See also field setLogVerbosity of t'XkbContextOptions'.
setLogVerbosity :: XkbContext -> Int -> IO ()
setLogVerbosity ctx verbosity = withForeignPtr ctx.unwrap $ \ctxPtr ->
  c_set_log_verbosity ctxPtr (fromIntegral verbosity)

-- | Append an include path to the context.
--
-- Throws "IncludePathUnavailable" on problem.
appendIncludePath :: (HasCallStack) => XkbContext -> FilePath -> IO ()
appendIncludePath ctx fp =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
    withCString fp $ \fpPtr -> do
      r <- c_include_path_append ctxPtr $ ConstPtr fpPtr
      when (r /= 1) $ throwIO $ IncludePathUnavailable (show ctx) fp

-- | Reset the include path to defaults.
--
-- Throws "IncludePathUnavailable" on problem.
resetIncludePath :: (HasCallStack) => XkbContext -> IO ()
resetIncludePath ctx =
  withForeignPtr ctx.unwrap $ \ctxPtr -> do
    r <- c_include_path_reset_defaults ctxPtr
    when (r /= 1) $ throwIO $ IncludePathUnavailable (show ctx) ""

-- | Append the default include paths.
--
-- Throws "IncludePathUnavailable" on problem.
appendDefaultIncludePath :: (HasCallStack) => XkbContext -> IO ()
appendDefaultIncludePath ctx =
  withForeignPtr ctx.unwrap $ \ctxPtr -> do
    r <- c_include_path_append_default ctxPtr
    when (r /= 1) $ throwIO $ IncludePathUnavailable (show ctx) ""

-- | Enumerate include paths.
getIncludePath :: XkbContext -> IO [FilePath]
getIncludePath ctx =
  withForeignPtr ctx.unwrap $ \ctxPtr -> do
    num <- c_num_num_include_paths ctxPtr
    forM [0 .. num - 1] $ c_include_path_get ctxPtr >=> peekCString . unConstPtr

-- | Remove all entries from the include path.
clearIncludePath :: XkbContext -> IO ()
clearIncludePath ctx = withForeignPtr ctx.unwrap c_include_path_clear

-- * Internals

foreign import capi safe "xkbcommon/xkbcommon.h xkb_context_new"
  c_new :: CUInt -> IO (Ptr XkbContext)

foreign import capi safe "&"
  finalize_context :: FunPtr (Ptr a -> Ptr XkbContext -> IO ())

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_set_log_level"
  c_set_log_level :: Ptr XkbContext -> CUInt -> IO ()

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_set_log_verbosity"
  c_set_log_verbosity :: Ptr XkbContext -> CInt -> IO ()

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_num_include_paths"
  c_num_num_include_paths :: Ptr XkbContext -> IO CUInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_include_path_clear"
  c_include_path_clear :: Ptr XkbContext -> IO ()

foreign import capi safe "xkbcommon/xkbcommon.h xkb_context_include_path_append"
  c_include_path_append :: Ptr XkbContext -> ConstPtr CChar -> IO CInt

foreign import capi safe "xkbcommon/xkbcommon.h xkb_context_include_path_append_default"
  c_include_path_append_default :: Ptr XkbContext -> IO CInt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_context_include_path_get"
  c_include_path_get :: Ptr XkbContext -> CUInt -> IO (ConstPtr CChar)

foreign import capi safe "xkbcommon/xkbcommon.h xkb_context_include_path_reset_defaults"
  c_include_path_reset_defaults :: Ptr XkbContext -> IO CInt

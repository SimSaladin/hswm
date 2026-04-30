module Text.XkbCommon.XkbRmlvoBuilder (
  XkbRmlvoBuilder,
  xkbRmlvoBuilderNew,
  xkbRmlvoBuilderAppendLayout,
  xkbRmlvoBuilderAppendOption,
  RmlvoBuilderException(..),
  ) where

import Foreign
import Foreign.C
import Data.Maybe
import Control.Exception
import Control.Monad

import Text.XkbCommon.Types
import Text.XkbCommon.Internal

#include <xkbcommon/xkbcommon.h>

data RmlvoBuilderException = RmlvoBuilderException String
  deriving (Eq, Show)

instance Exception RmlvoBuilderException

xkbRmlvoBuilderNew :: XkbContext
                   -> String -- ^ Rules (@""@ for default)
                   -> String -- ^ Model (@""@ for default)
                   -> IO XkbRmlvoBuilder
xkbRmlvoBuilderNew ctx rs ml =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
  withCString rs $ \rulesC ->
  withCString ml $ \modelC ->
    _xkbRmlvoBuilderNew ctxPtr rulesC modelC #{const XKB_RMLVO_BUILDER_NO_FLAGS}
      >>= xkbThrowIfNull' (RmlvoBuilderException "xkbRmlvoBuilderNew")
      >>= fmap XkbRmlvoBuilder . newForeignPtr _xkbRmlvoBuilderUnref

-- | Append a layout to the builder.
xkbRmlvoBuilderAppendLayout :: XkbRmlvoBuilder -> Layout -> [LayoutOption] -> IO ()
xkbRmlvoBuilderAppendLayout rmlvo layout opts =
  withForeignPtr rmlvo.unwrap $ \ptr ->
  withCString layout.layoutLayout $ \laC ->
  withCString (fromMaybe "" layout.layoutVariant) $ \vaC ->
  withMany withCString (map renderOpt opts) $ \optsS ->
    withArray optsS $ \optsArr -> do
      r <- _xkbRmlvoBuilderAppendLayout ptr laC vaC optsArr (length opts)
      unless r $ throwIO $ RmlvoBuilderException $ "failed to append layout: " ++ show (layout, opts)

xkbRmlvoBuilderAppendOption :: XkbRmlvoBuilder -> LayoutOption -> IO ()
xkbRmlvoBuilderAppendOption rmlvo opt =
  withForeignPtr rmlvo.unwrap $ \ptr ->
  withCString (renderOpt opt) $ \optS -> do
    r <- _xkbRmlvoBuilderAppendOption ptr optS
    unless r $ throwIO $ RmlvoBuilderException $ "failed to append option: " ++ renderOpt opt

renderOpt :: LayoutOption -> String
renderOpt opt = opt.optionGroup ++ ":" ++ opt.optionOption

foreign import ccall unsafe "xkb_rmlvo_builder_new"
  _xkbRmlvoBuilderNew :: Ptr XkbContext -> CString -> CString -> CUInt -> IO (Ptr XkbRmlvoBuilder)

foreign import ccall unsafe "&xkb_rmlvo_builder_unref"
  _xkbRmlvoBuilderUnref :: FunPtr (Ptr XkbRmlvoBuilder -> IO ())

foreign import ccall unsafe "xkb_rmlvo_builder_append_layout"
  _xkbRmlvoBuilderAppendLayout :: Ptr XkbRmlvoBuilder -> CString -> CString -> Ptr CString -> Int -> IO Bool

foreign import ccall unsafe "xkb_rmlvo_builder_append_option"
  _xkbRmlvoBuilderAppendOption :: Ptr XkbRmlvoBuilder -> CString -> IO Bool

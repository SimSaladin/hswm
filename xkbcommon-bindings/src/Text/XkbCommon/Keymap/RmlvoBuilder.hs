module Text.XkbCommon.Keymap.RmlvoBuilder (
  createKeymapFromBuilder,
  newBuilder,
  appendLayout,
  appendOption,
  XkbRmlvoBuilder(..),
  ) where

import Foreign
import Foreign.C
import Data.Maybe
import Control.Exception
import Control.Monad

import Text.XkbCommon.FFI
import Text.XkbCommon.Keymap

-- | Create a keymap from a RMLVO builder.
createKeymapFromBuilder :: XkbRmlvoBuilder -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromBuilder builder fmt =
  withForeignPtr builder.unwrap $ \builderPtr ->
    _xkbKeymapNewFromRmlvo builderPtr (fromKeymapFormat fmt) 0
    >>= xkbThrowIfNull' RmlvoBuilderFailed
    >>= wrapKeymap

-- | Throws "RmlvoBuilderCompilationFailed" on failure.
newBuilder :: XkbContext
           -> String -- ^ Rules (@""@ for default)
           -> String -- ^ Model (@""@ for default)
           -> IO XkbRmlvoBuilder
newBuilder ctx rs ml =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
  withCString rs $ \rulesC ->
  withCString ml $ \modelC ->
    _xkbRmlvoBuilderNew ctxPtr rulesC modelC rmlvoBuilderNoFlags
      >>= xkbThrowIfNull' RmlvoBuilderCompilationFailed
      >>= fmap XkbRmlvoBuilder . newForeignPtr _xkbRmlvoBuilderUnref

-- | Append a layout to the builder.
appendLayout :: XkbRmlvoBuilder -> LayoutSpec -> IO ()
appendLayout rmlvo layout =
  withForeignPtr rmlvo.unwrap $ \ptr ->
  withCString layout.layoutLayout $ \laC ->
  withCString (fromMaybe "" layout.layoutVariant) $ \vaC ->
  withMany withCString (map renderOpt layout.layoutOptions) $ \optsS ->
    withArray optsS $ \optsArr -> do
      r <- _xkbRmlvoBuilderAppendLayout ptr laC vaC optsArr (length optsS)
      unless r $ throwIO $ RmlvoBuilderLayoutFailed layout

-- | Append a option to the builder.
appendOption :: XkbRmlvoBuilder -> OptionSpec -> IO ()
appendOption rmlvo opt =
  withForeignPtr rmlvo.unwrap $ \ptr ->
  withCString (renderOpt opt) $ \optS -> do
    r <- _xkbRmlvoBuilderAppendOption ptr optS
    unless r $ throwIO $ RmlvoBuilderOptionFailed opt

renderOpt :: OptionSpec -> String
renderOpt opt = opt.optionOption

foreign import ccall unsafe "xkb_rmlvo_builder_new"
  _xkbRmlvoBuilderNew :: Ptr XkbContext -> CString -> CString -> CUInt -> IO (Ptr XkbRmlvoBuilder)

foreign import ccall unsafe "&xkb_rmlvo_builder_unref"
  _xkbRmlvoBuilderUnref :: FunPtr (Ptr XkbRmlvoBuilder -> IO ())

foreign import ccall unsafe "xkb_rmlvo_builder_append_layout"
  _xkbRmlvoBuilderAppendLayout :: Ptr XkbRmlvoBuilder -> CString -> CString -> Ptr CString -> Int -> IO Bool

foreign import ccall unsafe "xkb_rmlvo_builder_append_option"
  _xkbRmlvoBuilderAppendOption :: Ptr XkbRmlvoBuilder -> CString -> IO Bool

foreign import ccall unsafe "xkb_keymap_new_from_rmlvo"
  _xkbKeymapNewFromRmlvo :: Ptr XkbRmlvoBuilder -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

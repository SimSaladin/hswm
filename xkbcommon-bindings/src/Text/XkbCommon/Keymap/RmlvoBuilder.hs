-- |
-- Description: Keymap builder (XkbRmlvoBuilder)
--
-- It denotes the configuration values by which a user picks a keymap.
module Text.XkbCommon.Keymap.RmlvoBuilder
  -- * KeymapBuilder
  ( XkbRmlvoBuilder
  , newBuilder
  , appendLayout
  , appendOption

  -- * Builder to Keymap
  , createKeymapFromBuilder

  -- * Exceptions
  , KeymapBuilderException(..)
  ) where

import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import Data.Maybe
import Control.Exception
import Control.Monad

import Text.XkbCommon.FFI
import Text.XkbCommon.Keymap

-- | Keymap (RMLVO) builder exceptions.
data KeymapBuilderException
  = KeymapBuilderCompilationFailed { context :: !XkbContext, rules, model :: String }
  | KeymapBuilderInvalidLayout     { builder :: !XkbRmlvoBuilder, layout :: LayoutSpec }
  | KeymapBuilderInvalidOption     { builder :: !XkbRmlvoBuilder, option :: OptionSpec }
  deriving (Eq, Ord, Show, Generic)

instance Exception KeymapBuilderException

-- | Create a keymap from a RMLVO builder.
--
-- Throws "KeymapCreationFailed" on failure.
createKeymapFromBuilder :: XkbRmlvoBuilder -> XkbKeymapFormat -> IO XkbKeymap
createKeymapFromBuilder kmb fmt =
  withForeignPtr kmb.unwrap $ \ptr ->
    c_new_from_rmlvo ptr (fromKeymapFormat fmt) 0
    >>= xkbThrowIfNull' (KeymapCreationFailed (show kmb) Nothing fmt)
    >>= wrapKeymap

-- | Create a new builder with given parameters.
--
-- Throws "KeymapBuilderCompilationFailed" on failure.
newBuilder :: XkbContext
           -> String -- ^ Rules (@""@ for default)
           -> String -- ^ Model (@""@ for default)
           -> IO XkbRmlvoBuilder
newBuilder ctx rs ml =
  withForeignPtr ctx.unwrap $ \ctxPtr ->
  withCString rs $ \rulesC ->
  withCString ml $ \modelC ->
    c_new ctxPtr rulesC modelC rmlvoBuilderNoFlags
      >>= xkbThrowIfNull' (KeymapBuilderCompilationFailed ctx rs ml)
      >>= fmap XkbRmlvoBuilder . newForeignPtr c_unref

-- | Append a layout to the builder.
--
-- Throws "KeymapBuilderInvalidLayout" on failure.
appendLayout :: XkbRmlvoBuilder -> LayoutSpec -> IO ()
appendLayout rmlvo ls =
  withForeignPtr rmlvo.unwrap $ \ptr ->
  withCString ls.layoutLayout $ \laC ->
  withCString (fromMaybe "" ls.layoutVariant) $ \vaC ->
  withMany withCString (map optionOption ls.layoutOptions) $ \optsS ->
  withArray (map ConstPtr optsS) $ \optsArr -> do
    r <- c_append_layout ptr (ConstPtr laC) (ConstPtr vaC) (ConstPtr optsArr) (length optsS)
    unless r $ throwIO $ KeymapBuilderInvalidLayout rmlvo ls

-- | Append an option to the builder.
--
-- Throws "KeymapBuilderInvalidOption" on failure.
appendOption :: XkbRmlvoBuilder -> OptionSpec -> IO ()
appendOption rmlvo opt =
  withForeignPtr rmlvo.unwrap $ \ptr ->
  withCString opt.optionOption $ \optS -> do
    r <- c_append_option ptr optS
    unless r $ throwIO $ KeymapBuilderInvalidOption rmlvo opt

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_rmlvo_builder_new"
  c_new :: Ptr XkbContext -> CString -> CString -> CUInt -> IO (Ptr XkbRmlvoBuilder)

foreign import capi unsafe "xkbcommon/xkbcommon.h &xkb_rmlvo_builder_unref"
  c_unref :: FunPtr (Ptr XkbRmlvoBuilder -> IO ())

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_rmlvo_builder_append_layout"
  c_append_layout
    :: Ptr XkbRmlvoBuilder
    -> ConstPtr CChar
    -> ConstPtr CChar
    -> ConstPtr (ConstPtr CChar)
    -> Int
    -> IO Bool

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_rmlvo_builder_append_option"
  c_append_option :: Ptr XkbRmlvoBuilder -> CString -> IO Bool

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_new_from_rmlvo"
  c_new_from_rmlvo :: Ptr XkbRmlvoBuilder -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

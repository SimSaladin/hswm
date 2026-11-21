{-# LANGUAGE NoFieldSelectors #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

-- |
-- Module      : Text.XkbCommon.Keymap.RmlvoBuilder
-- Description : Keymap builder (KeymapBuilder)
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- It denotes the configuration values by which a user picks a keymap.
module Text.XkbCommon.Keymap.RmlvoBuilder (
  -- * KeymapBuilder
  KeymapBuilder,
  newBuilder,
  addLayout,
  addOption,
  optionalLayout,
  optionalOption,

  -- * Builder to Keymap
  keymapFromBuilder,

  -- * Pure
  PureBuilder,
  keymapFromBuilderPure,
  withLayout,
  withOption,
  setModel,
  setRules,
  setContext,

  -- * Internal
  keymapFromPtr,
) where

import Control.Exception
import Control.Monad
import Control.Monad.Fix
import Data.Functor
import qualified Data.List as L
import Data.Maybe
import Foreign hiding (void)
import Foreign.C
import Foreign.C.ConstPtr
import GHC.Stack
import System.IO.Unsafe

import Text.XkbCommon.Context
import Text.XkbCommon.FFI
import Text.XkbCommon.Internal

import qualified Text.XkbCommon.Registry as RXKB

data PureBuilder = PureBuilder
  { rules :: Maybe String
  , model :: String
  , layouts :: [(Layout, Bool)]
  , options :: [(LayoutOption, Bool)]
  , context :: XkbContext
  , build :: KeymapBuilder
  , registry :: RXKB.Registry
  }

instance Default PureBuilder where
  def = fix $ \r ->
    PureBuilder
      { rules = mempty
      , model = ""
      , layouts = mempty
      , options = mempty
      , context = mkCtx
      , registry = buildRegistry r
      , build = pureBuilderBuild r
      }
    where
      mkCtx = unsafePerformIO $ newContext def

-- | It denotes the configuration values by which a user picks a keymap.
newtype KeymapBuilder = KeymapBuilder {unwrap :: ForeignPtr KeymapBuilder}
  deriving newtype (Eq, Ord)
  deriving stock (Show, Generic, Data)

-- | Create a keymap from a RMLVO builder.
--
-- Throws "KeymapCreationFailed" on failure.
keymapFromBuilder :: (HasCallStack) => KeymapFormat -> KeymapBuilder -> IO XkbKeymap
keymapFromBuilder fmt b =
  withForeignPtr b.unwrap (\ptr -> c_new_from_rmlvo ptr (fromKeymapFormat fmt) 0)
    >>= throwIfNullEx (KeymapCreationFailed (show b) Nothing fmt)
    >>= keymapFromPtr

-- | Create a new builder with given parameters.
--
-- Throws "KeymapBuilderCompilationFailed" on failure.
newBuilder ::
  (HasCallStack) =>
  XkbContext
  -> String
  -- ^ Rules (@""@ for default)
  -> String
  -- ^ Model (@""@ for default)
  -> IO KeymapBuilder
newBuilder ctx rs ml = mask_ $ do
  r <- withForeignPtr ctx.unwrap $ \ctxPtr ->
    withCString rs $ \rulesC ->
      withCString ml $ \modelC ->
        c_new ctxPtr rulesC modelC rmlvoBuilderNoFlags
  throwIfNullEx (KeymapBuilderCompilationFailed rs ml) r
    >>= fmap KeymapBuilder . newForeignPtr c_unref

-- | Append a layout to the builder.
--
-- Throws "KeymapBuilderInvalidLayout" on failure.
addLayout :: (HasCallStack) => KeymapBuilder -> Layout -> IO ()
addLayout b ls = optionalLayout b ls >>= (`unless` throwIO (KeymapBuilderInvalidLayout (show b) ls))

-- | Try to add a layout. Returns True if it was successful.
optionalLayout :: (HasCallStack) => KeymapBuilder -> Layout -> IO Bool
optionalLayout b ls = do
  withForeignPtr b.unwrap $ \bPtr ->
    withCString ls.baseLayout $ \lPtr ->
      withCString (fromMaybe "" ls.variant) $ \vPtr ->
        withMany withCString (map fromOption ls.options) $ \os ->
          withArrayLen (map ConstPtr os) $ \osLen osPtr ->
            c_append_layout bPtr (ConstPtr lPtr) (ConstPtr vPtr) (ConstPtr osPtr) osLen

-- | Append an option to the builder.
--
-- Throws "KeymapBuilderInvalidOption" on failure.
addOption :: (HasCallStack) => KeymapBuilder -> LayoutOption -> IO ()
addOption b o = optionalOption b o >>= (`unless` throwIO (KeymapBuilderInvalidOption (show b) o))

optionalOption :: (HasCallStack) => KeymapBuilder -> LayoutOption -> IO Bool
optionalOption b o = withForeignPtr b.unwrap $ withCString (fromOption o) . c_append_option

keymapFromBuilderPure :: KeymapFormat -> PureBuilder -> XkbKeymap
keymapFromBuilderPure fmt x = unsafePerformIO $ keymapFromBuilder fmt x.build

pureBuilderBuild :: PureBuilder -> KeymapBuilder
pureBuilderBuild x = unsafePerformIO $ do
  b <- newBuilder x.context (fromMaybe "" x.rules) x.model
  let ls = checkedLayouts [] x.layouts
  let opts = checkedOptions [] x.options
  forM_ ls (addLayout b)
  forM_ opts (addOption b)
  return b
  where
    checkedOptions _ [] = []
    checkedOptions old ((o, req) : os) =
      case isValidOption x.registry old o of
        Right () -> o : checkedOptions (o : old) os
        Left err
          | req -> error err
          | otherwise -> checkedOptions old os
    checkedLayouts _ [] = []
    checkedLayouts old ((l, req) : ls) =
      case isValidLayout x.registry l of
        Right () -> l : checkedLayouts old ls
        Left err
          | req -> error err
          | otherwise -> checkedLayouts old ls

buildRegistry :: PureBuilder -> RXKB.Registry
buildRegistry x = unsafePerformIO $ do
  inc <- getIncludePath x.context
  RXKB.createRegistry
    def
      { RXKB.ruleSet = x.rules
      , RXKB.includes = inc
      , RXKB.defaultIncludePaths = False
      -- , RXKB.registryLogLevel = Just LevelDebug
      }

rebuild :: PureBuilder -> PureBuilder
rebuild x = x{build = pureBuilderBuild x}

setContext :: XkbContext -> PureBuilder -> PureBuilder
setContext ctx x = rebuild x{context = ctx}

setRules :: String -> PureBuilder -> PureBuilder
setRules a x = rebuild $ fix $ \r -> x{rules = guard (a /= "") $> a, registry = buildRegistry r}

setModel :: String -> PureBuilder -> PureBuilder
setModel a x = rebuild x{model = a}

withLayout :: Bool -> Layout -> PureBuilder -> PureBuilder
withLayout req l x = rebuild x{layouts = x.layouts ++ [(l, req)]}

withOption :: Bool -> LayoutOption -> PureBuilder -> PureBuilder
withOption req o x = rebuild x{options = x.options ++ [(o, req)]}

-- | Check option against parsed registry.
isValidOption :: RXKB.Registry -> [LayoutOption] -> LayoutOption -> Either String ()
isValidOption reg old opt =
  case L.find (opt `inGroup`) reg.optionGroups of
    Nothing -> Left $ "Option not found: " ++ fromOption opt
    Just g
      | g.item.allowsMultiple -> Right ()
      | otherwise ->
          let conflicts = filter (`inGroup` g) old
           in if null conflicts
                then Right ()
                else Left $ "option " ++ fromOption opt ++ ": conflicts with options: " ++ show conflicts
  where
    inGroup x g = any (\o -> o.name == fromOption x) g.item.options

-- | Checks the layout against a parsed registry.
isValidLayout :: RXKB.Registry -> Layout -> Either String ()
isValidLayout reg l =
  case L.find (\x -> x.name == fromLayout l) reg.layouts of
    Nothing -> Left $ "Layout or variant not found: " ++ fromLayout l
    Just _ ->
      let notFound =
            [ o
            | o <- l.options
            , Nothing <- [L.find (f o) (concatMap (.item.options) (reg.optionGroups))]
            ]
       in if null notFound
            then Right ()
            else Left ("layout " ++ fromLayout l ++ ": missing layout-specific options: " ++ show notFound)
  where
    f o x = x.name == fromOption o && x.item.layoutSpecific

-- | Turn 'Ptr' into a 't:XkbKeymap' 'ForeignPtr'
keymapFromPtr :: Ptr XkbKeymap -> IO XkbKeymap
keymapFromPtr = fmap XkbKeymap . newForeignPtr c_xkb_keymap_unref

foreign import capi unsafe "xkbcommon/xkbcommon.h &xkb_keymap_unref"
  c_xkb_keymap_unref :: FunPtr (Ptr XkbKeymap -> IO ())

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_rmlvo_builder_new"
  c_new :: Ptr XkbContext -> CString -> CString -> CUInt -> IO (Ptr KeymapBuilder)

foreign import capi unsafe "xkbcommon/xkbcommon.h &xkb_rmlvo_builder_unref"
  c_unref :: FunPtr (Ptr KeymapBuilder -> IO ())

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_rmlvo_builder_append_layout"
  c_append_layout ::
    Ptr KeymapBuilder
    -> ConstPtr CChar
    -> ConstPtr CChar
    -> ConstPtr (ConstPtr CChar)
    -> Int
    -> IO Bool

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_rmlvo_builder_append_option"
  c_append_option :: Ptr KeymapBuilder -> CString -> IO Bool

foreign import capi unsafe "xkbcommon/xkbcommon.h xkb_keymap_new_from_rmlvo"
  c_new_from_rmlvo :: Ptr KeymapBuilder -> CUInt -> CUInt -> IO (Ptr XkbKeymap)

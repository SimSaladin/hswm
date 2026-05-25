-- |
-- Module      : Text.XkbCommon.Registry
-- Description : Query for available RMLVO
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
-- Query for available RMLVO (rules, models, layouts, variants and options).
--
-- Uses @libxkbregistry@
--
module Text.XkbCommon.Registry (
  -- * Create registry
  RegistryOptions(..),
  createRegistry,
  Registry(..),
  Model(..),
  LayoutInfo(..),
  LangCode(..),
  OptionGroup(..),
  OptionInfo(..),
  Popularity(..),
  -- * Exceptions
  RxkbException(..),
  -- * Re-exports
  def,
  ) where

import Data.Default
import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import GHC.Records
import GHC.Generics
import Control.Exception
import Data.Data
import Control.Monad
import Data.String
import Data.Char (toLower, toUpper)

import Text.XkbCommon.FFI (LogLevel(..))

type ConstCS = ConstPtr CChar

#include <xkbcommon/xkbregistry.h>

-- | Use "def" to construct the defaults.
data RegistryOptions = RegistryOptions
  { ruleSet :: !(Maybe String)
  -- ^ Load the specified ruleset instead of the default.
  , noDefaultIncludes :: !Bool
  -- ^ Do not load default include paths.
  --
  -- Default: false
  , exoticRules :: !Bool
  -- ^ Whether to load exotic items.
  --
  -- Default: false
  , noSecureGetenv :: !Bool
  -- ^ Default: false
  , setLogLevel :: Maybe LogLevel
  , extraIncludePaths :: [FilePath]
  } deriving (Eq, Ord, Show, Read, Generic)

instance Default RegistryOptions where
  def = RegistryOptions Nothing False False False Nothing []

data RxkbException = RxkbContextParseFailed | RxkbContextIncludePathFailed FilePath
  deriving (Eq, Show)

instance Exception RxkbException

-- | Throws "RxkbException" on errors.
createRegistry :: RegistryOptions -> IO Registry
createRegistry opts = createRegistryContext opts >>= getRulesInfo

-- * Aggregate rules info

data Registry = Registry
  { models       :: [Model]
  , layouts      :: [LayoutInfo]
  , optionGroups :: [OptionGroup]
  } deriving (Eq, Ord, Show, Generic)

data Model = Model
  { name        :: String
  , description :: String
  , vendor      :: String
  , popularity  :: !Popularity
  } deriving (Eq, Ord, Generic)

data LayoutInfo = LayoutInfo
  { name        :: String
  , variant     :: !(Maybe String)
  , description :: !String
  , brief       :: !String
  , popularity  :: !Popularity
  , languages   :: [LangCode]
  } deriving (Eq, Ord, Generic)

data OptionGroup = OptionGroup
  { name           :: String
  , description    :: String
  , multi          :: !Bool -- ^ Whether multiple options in this group can be selected simultaneously.
  , options        :: [OptionInfo]
  , popularity     :: !Popularity
  } deriving (Eq, Ord, Generic)

data OptionInfo = OptionInfo
  { name           :: !String
  , brief          :: !String
  , description    :: !String
  , layoutSpecific :: !Bool
  , popularity     :: !Popularity
  } deriving (Eq, Ord, Generic)

-- | If the exotic items are not loaded, all items will have have the standard popularity.
data Popularity = PopularityStandard
                | Exotic
  deriving (Eq, Ord, Show, Read, Generic)

data LangCode = Lang639 String -- ^ ISO 639-3 (@us@)
              | Lang3166 String -- ^ ISO 3166 (@eng@)
  deriving (Eq, Ord, Generic)

instance Show Model where
  show mi = "Model \"" ++ mi.name ++ "\" (" ++ mi.description ++ "; vendor: " ++ mi.vendor ++ ")"
   ++ (if mi.popularity == Exotic then " [exotic]" else "")

instance Show LayoutInfo where
  show li = "Layout " ++ li.name ++
    maybe "" (\va -> "(" ++ va ++ ")") li.variant ++
    " \"" ++ li.description ++ "\"" ++
    " (" ++ li.brief ++ "; " ++ unwords (map show li.languages) ++ ")" ++
      (if li.popularity == Exotic then " [exotic]" else "")

instance Show LangCode where
  show (Lang639 x) = x
  show (Lang3166 x) = x

instance IsString LangCode where
  fromString s@[_, _] = Lang639 $ map toUpper s
  fromString s@[_, _, _] = Lang3166 $ map toLower s
  fromString s = error $ "fromString: no parse (LangCode): " ++ s

instance Show OptionGroup where
  show og = "OptionGroup " ++ og.name ++
    " \"" ++ og.description ++ "\"" ++
    (if og.multi then " [multi]" else "") ++
      (if og.popularity == Exotic then " [exotic]" else "") ++
    "\n" ++
    concatMap (\o -> "  " ++ show o ++ "\n") og.options

instance Show OptionInfo where
  show oi = "Option " ++ oi.name ++
    " \"" ++ oi.description ++ "\"" ++
    (if oi.brief /= "" then " (" ++ oi.brief ++ ")" else "") ++
    (if oi.layoutSpecific then " [layout-specific]" else "") ++
    (if oi.popularity == Exotic then " [exotic]" else "")

getRulesInfo :: RxkbContext -> IO Registry
getRulesInfo ctx0 = withForeignPtr ctx0.unwrap $ \ctx' ->
  Registry
  <$> collectModels ctx'
  <*> collectLayouts ctx'
  <*> collectOptionGroups ctx'
    where
      collectModels ctx = collect (_rxkbModelFirst ctx) _rxkbModelUnref $ \m -> (,) <$> _rxkbModelNext m <*> getModelInfo m
      collectLayouts ctx = collect (_rxkbLayoutFirst ctx) _rxkbLayoutUnref $ \m -> (,) <$> _rxkbLayoutNext m <*> getLayoutInfo m
      collectOptionGroups ctx = collect (_rxkbOptionGroupFirst ctx) _rxkbOptionGroupUnref $ \m -> (,) <$> _rxkbOptionGroupNext m <*> getOptionGroup m

      getModelInfo :: RxkbModel -> IO Model
      getModelInfo m = Model
        <$> getCS (_rxkbModelGetName m)
        <*> getCS (_rxkbModelGetDescription m)
        <*> getCS (_rxkbModelGetVendor m)
        <*> fmap getPopularity (_rxkbModelGetPopularity m)

      getLayoutInfo :: RxkbLayout -> IO LayoutInfo
      getLayoutInfo m = LayoutInfo
        <$> getCS (_rxkbLayoutGetName m)
        <*> getCSMaybe (_rxkbLayoutGetVariant m)
        <*> getCS (_rxkbLayoutGetDescription m)
        <*> getCS (_rxkbLayoutGetBrief m)
        <*> fmap getPopularity (_rxkbLayoutGetPopularity m)
        <*> getLangs m

      getLangs m = (\xs ys -> map Lang639 xs ++ map Lang3166 ys)
        <$> collect (_iso639First m) _iso639Unref (\x -> (,) <$> _iso639Next x <*> getCS (_iso639GetCode x))
        <*> collect (_iso3166First m) _iso3166Unref (\x -> (,) <$> _iso3166Next x <*> getCS (_iso3166GetCode x))

      getOptionGroup :: RxkbOptionGroup -> IO OptionGroup
      getOptionGroup m = OptionGroup
        <$> getCS (_rxkbOptionGroupGetName m)
        <*> getCS (_rxkbOptionGroupGetDescription m)
        <*> _rxkbOptionGroupAllowsMultiple m
        <*> collect (_rxkbOptionFirst m) _rxkbOptionUnref (\x -> (,) <$> _rxkbOptionNext x <*> getOptionInfo x)
        <*> fmap getPopularity (_rxkbOptionGroupGetPopularity m)

      getOptionInfo :: RxkbOption -> IO OptionInfo
      getOptionInfo m = OptionInfo
        <$> getCS (_rxkbOptionGetName m)
        <*> getCS (_rxkbOptionGetBrief m)
        <*> getCS (_rxkbOptionGetDescription m)
        <*> _rxkbOptionIsLayoutSpecific m
        <*> fmap getPopularity (_rxkbOptionGetPopularity m)

      getPopularity :: CUInt -> Popularity
      getPopularity x = case x of
                          #{const RXKB_POPULARITY_STANDARD} -> PopularityStandard
                          #{const RXKB_POPULARITY_EXOTIC} -> Exotic
                          _ -> error $ "no parse: Popularity: " ++ show x

      collect :: HasField "unwrap" a (Ptr u) => IO a -> (Ptr u -> IO ()) -> (a -> IO (a, b)) -> IO [b]
      collect begin unref next = begin >>= go [] where
        go xs m0 = do
          let ptr = getField @"unwrap" m0
          if ptr == nullPtr
             then return (reverse xs)
             else next m0 >>= \(m1, r) -> unref ptr >> go (r : xs) m1

      getCS :: IO ConstCS -> IO String
      getCS m = getString (unConstPtr <$> m)

      getCSMaybe :: IO ConstCS -> IO (Maybe String)
      getCSMaybe m = getStringMaybe (unConstPtr <$> m)

      getString :: IO CString -> IO String
      getString m = do
        r <- m
        if r == nullPtr then return "" else peekCString r

      getStringMaybe :: IO CString -> IO (Maybe String)
      getStringMaybe m = do
        r <- m
        if r == nullPtr then return Nothing else Just <$> peekCString r

createRegistryContext :: RegistryOptions -> IO RxkbContext
createRegistryContext opts = do
  ctx' <- throwIfNull "createRegistry" $ c_ctx_new flags
  ctx <- RxkbContext <$> newForeignPtr c_ctx_unref ctx'
  withForeignPtr ctx.unwrap $ \p -> do
    forM_ opts.setLogLevel $ _rxkbContextSetLogLevel p . displayLogLevel
    forM_ opts.extraIncludePaths $ appendIncludePath p
  maybe rxkbContextParseDefault (flip rxkbContextParse) opts.ruleSet ctx
  return ctx
    where
      flags =
        f opts.noDefaultIncludes #{const RXKB_CONTEXT_NO_DEFAULT_INCLUDES} .|.
        f opts.exoticRules       #{const RXKB_CONTEXT_LOAD_EXOTIC_RULES} .|.
        f opts.noSecureGetenv    #{const RXKB_CONTEXT_NO_SECURE_GETENV}
      f True x = x
      f False _ = 0

displayLogLevel :: LogLevel -> CUInt
displayLogLevel lvl =
  case lvl of
    LevelCritical -> #{const RXKB_LOG_LEVEL_CRITICAL}
    LevelError    -> #{const RXKB_LOG_LEVEL_ERROR}
    LevelWarning  -> #{const RXKB_LOG_LEVEL_WARNING}
    LevelInfo     -> #{const RXKB_LOG_LEVEL_INFO}
    LevelDebug    -> #{const RXKB_LOG_LEVEL_DEBUG}

appendIncludePath :: Ptr RxkbContext -> FilePath -> IO ()
appendIncludePath ctx path = do
  r <- withCString path $ c_rxkb_context_include_path_append ctx
  unless r $ throwIO $ RxkbContextIncludePathFailed path

-- | Parse given ruleset (e.g. @"evdev"@).
--
-- Can only be called once per context.
rxkbContextParse :: RxkbContext -> String -> IO ()
rxkbContextParse ctx nm =
  withForeignPtr ctx.unwrap $ \ctx' ->
  withCString nm $ \nm' -> do
    r <- c_ctx_parse ctx' nm'
    unless r $ throwIO RxkbContextParseFailed

-- | Parse the default ruleset as configured at build time.
rxkbContextParseDefault :: RxkbContext -> IO ()
rxkbContextParseDefault ctx =
  withForeignPtr ctx.unwrap $ \ctx' -> do
    r <- c_ctx_parse_default_ruleset ctx'
    unless r $ throwIO RxkbContextParseFailed

-- * FFI

-- | Opaque top level library context object.
newtype RxkbContext = RxkbContext { unwrap :: ForeignPtr RxkbContext }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an XKB model.
newtype RxkbModel = RxkbModel { unwrap :: Ptr RxkbModel }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an XKB layout, including an optional variant.
--
-- Where the variant is _NULL_, the layout is the base layout.
newtype RxkbLayout = RxkbLayout { unwrap :: Ptr RxkbLayout }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an option group.
--
-- Option groups divide the individual options into logical groups. Their main purpose is to indicate
-- whether some options are mutually exclusive or not.
newtype RxkbOptionGroup = RxkbOptionGroup { unwrap :: Ptr RxkbOptionGroup }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an XKB option. Options are grouped inside an option group.
newtype RxkbOption = RxkbOption { unwrap :: Ptr RxkbOption }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an ISO 639-3 code (@eng@, etc.)
--
-- There is no guarantee that two identical ISO codes share the same struct. You
-- must not rely on the pointer value of this struct.
newtype ISO639 = ISO639 { unwrap :: Ptr ISO639 }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an ISO 3166 Alpha 2 code (e.g. `US`, `FR`).
--
-- There is no guarantee that two identical ISO codes share the same struct. You
-- must not rely on the pointer value of this struct.
newtype ISO3166 = ISO3166 { unwrap :: Ptr ISO3166 }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- rxkb_context

foreign import capi safe "xkbcommon/xkbregistry.h rxkb_context_new"
  c_ctx_new :: CUInt -> IO (Ptr RxkbContext)

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_context_parse"
  c_ctx_parse :: Ptr RxkbContext -> CString -> IO Bool

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_context_parse_default_ruleset"
  c_ctx_parse_default_ruleset :: Ptr RxkbContext -> IO Bool

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_context_set_log_level"
  _rxkbContextSetLogLevel :: Ptr RxkbContext -> CUInt -> IO ()

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_context_get_log_level"
  c_rxkb_context_get_log_level :: Ptr RxkbContext -> IO CUInt

foreign import capi safe "xkbcommon/xkbregistry.h rxkb_context_include_path_append"
  c_rxkb_context_include_path_append :: Ptr RxkbContext -> CString -> IO Bool

foreign import capi safe "xkbcommon/xkbregistry.h rxkb_context_include_path_append_default"
  c_rxkb_context_include_path_append_default :: Ptr RxkbContext -> IO Bool

foreign import capi unsafe "xkbcommon/xkbregistry.h &rxkb_context_unref"
  c_ctx_unref :: FunPtr (Ptr RxkbContext -> IO ())

-- rxkb_model

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_unref"          _rxkbModelUnref          :: Ptr RxkbModel -> IO ()
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_first"           _rxkbModelFirst          :: Ptr RxkbContext -> IO RxkbModel
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_next"            _rxkbModelNext           :: RxkbModel -> IO RxkbModel
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_get_name"        _rxkbModelGetName        :: RxkbModel -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_get_description" _rxkbModelGetDescription :: RxkbModel -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_get_popularity"  _rxkbModelGetPopularity  :: RxkbModel -> IO CUInt
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_get_vendor"      _rxkbModelGetVendor      :: RxkbModel -> IO ConstCS

-- layout

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_unref" _rxkbLayoutUnref                   :: Ptr RxkbLayout -> IO ()
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_first" _rxkbLayoutFirst                    :: Ptr RxkbContext -> IO RxkbLayout
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_next" _rxkbLayoutNext                      :: RxkbLayout -> IO RxkbLayout
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_name" _rxkbLayoutGetName               :: RxkbLayout -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_description" _rxkbLayoutGetDescription :: RxkbLayout -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_popularity" _rxkbLayoutGetPopularity   :: RxkbLayout -> IO CUInt
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_variant" _rxkbLayoutGetVariant         :: RxkbLayout -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_brief" _rxkbLayoutGetBrief             :: RxkbLayout -> IO ConstCS

-- option_group

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_unref" _rxkbOptionGroupUnref                   :: Ptr RxkbOptionGroup -> IO ()
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_first" _rxkbOptionGroupFirst                    :: Ptr RxkbContext -> IO RxkbOptionGroup
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_next" _rxkbOptionGroupNext                      :: RxkbOptionGroup -> IO RxkbOptionGroup
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_get_name" _rxkbOptionGroupGetName               :: RxkbOptionGroup -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_get_description" _rxkbOptionGroupGetDescription :: RxkbOptionGroup -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_get_popularity" _rxkbOptionGroupGetPopularity   :: RxkbOptionGroup -> IO CUInt
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_allows_multiple" _rxkbOptionGroupAllowsMultiple :: RxkbOptionGroup -> IO Bool

-- option

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_unref" _rxkbOptionUnref                        :: Ptr RxkbOption -> IO ()
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_first" _rxkbOptionFirst                         :: RxkbOptionGroup -> IO RxkbOption
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_next" _rxkbOptionNext                           :: RxkbOption -> IO RxkbOption
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_get_name" _rxkbOptionGetName                    :: RxkbOption -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_get_brief" _rxkbOptionGetBrief                  :: RxkbOption -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_get_description" _rxkbOptionGetDescription      :: RxkbOption -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_get_popularity" _rxkbOptionGetPopularity        :: RxkbOption -> IO CUInt
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_is_layout_specific" _rxkbOptionIsLayoutSpecific :: RxkbOption -> IO Bool

-- iso639

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_iso639_first" _iso639First   :: RxkbLayout -> IO ISO639
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso639_code_next" _iso639Next           :: ISO639 -> IO ISO639
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso639_code_get_code" _iso639GetCode    :: ISO639 -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso639_code_unref" _iso639Unref         :: Ptr ISO639 -> IO ()

-- iso3166

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_iso3166_first" _iso3166First :: RxkbLayout -> IO ISO3166
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso3166_code_next" _iso3166Next         :: ISO3166 -> IO ISO3166
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso3166_code_get_code" _iso3166GetCode  :: ISO3166 -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso3166_code_unref" _iso3166Unref       :: Ptr ISO3166 -> IO ()

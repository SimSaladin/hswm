{-# LANGUAGE FlexibleInstances #-}

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
module Text.XkbCommon.Registry (
  -- * New registry
  RegistryOptions (..),
  createRegistry,

  -- * Registry Items
  getRegistry,
  getModels,
  getLayouts,
  getOptionGroups,
  getOptions,
  getParsedRegistry,
  Registry (..),
  RegistryItem (..),
  ModelInfo (..),
  LayoutInfo (..),
  OptionGroupInfo (..),
  OptionInfo (..),
  Popularity (..),
  CountryCode (..),
  LanguageCode (..),

  -- * Exceptions
  RxkbException (..),

  -- * Registry Context
  RxkbContext,
  newRegistryContext,
  appendIncludePath,
  appendIncludePathDefault,
  contextLogLevel,

  -- * Re-exports
  LogLevel (..),
  def,
) where

import Control.Exception
import Control.Monad
import Data.Char (toLower, toUpper)
import Data.Data
import Data.Default
import Data.Functor
import Data.IORef
import Data.Maybe
import Data.String
import Foreign
import Foreign.C
import Foreign.C.ConstPtr
import GHC.Generics
import GHC.Records
import Text.Show

import GHC.Stack
import Text.XkbCommon.FFI (LayoutOption (..), LogLevel (..), fromLogLevel)
import Text.XkbCommon.Internal

type ConstCS = ConstPtr CChar

-- | Use "def" to construct the defaults.
data RegistryOptions = RegistryOptions
  { ruleSet :: !(Maybe String)
  -- ^ Load the specified ruleset instead of the default.
  , defaultIncludePaths :: !Bool
  -- ^ Load the default include paths automatically. (True)
  , loadExoticRules :: !Bool
  -- ^ Whether to load exotic items. (False)
  , secureGetenvDisabled :: !Bool
  -- ^ Disable use of @secure_getenv()@. (False)
  , includes :: [FilePath]
  -- ^ Paths to add to the include path in addition to the defaults (if enabled).
  , setLogLevel :: Maybe LogLevel
  -- ^ Set an explicit log level
  , setLogFunction :: Maybe LogFn
  -- ^ Use a custom function for logging.
  }
  deriving (Generic)

instance Default RegistryOptions where
  def = RegistryOptions def True False False def def def

data RxkbException
  = RxkbContextParseFailed
  | RxkbContextIncludePathFailed FilePath
  | RxkbContextNewFailed
  deriving (Eq, Show)

instance Exception RxkbException

-- | Create a new registry and parse the specified ruleset with it.
--
-- Throws "RxkbException" on errors.
createRegistry :: (HasCallStack) => RegistryOptions -> IO Registry
createRegistry opts = do
  ctx <- newRegistryContext opts
  getRegistry ctx opts.ruleSet

getRegistry :: (HasCallStack) => RxkbContext -> Maybe String -> IO Registry
getRegistry ctx mrules = do
  forM_ mrules $ parseWith ctx
  getParsedRegistry ctx

newRegistryContext :: RegistryOptions -> IO RxkbContext
newRegistryContext opts = do
  ctxPtr <- throwIfNullEx RxkbContextNewFailed =<< c_rxkb_context_new flags
  pref <- newIORef False
  fptr <- forM opts.setLogFunction mkLogFnFunPtr
  ctx <- RxkbContext pref <$> newForeignPtrEnv finalize_registry (maybe nullPtr castFunPtrToPtr fptr) ctxPtr
  withForeignPtr ctx.unwrap $ \p -> do
    forM_ opts.setLogLevel $ c_ctx_set_log_level p . fromLogLevel
    forM_ opts.includes $ appendIncludePath p
    forM_ fptr $ set_registry_log_fn p hs_free_fun_ptr
  return ctx
  where
    flags =
      f (not opts.defaultIncludePaths) _NO_DEFAULT_INCLUDES
        .|. f opts.loadExoticRules _LOAD_EXOTIC_RULES
        .|. f opts.secureGetenvDisabled _NO_SECURE_GETENV
    f p x = if p then x else 0

-- * Aggregate rules info

-- | Registry items.
data Registry = Registry
  { models :: [RegistryItem ModelInfo]
  , layouts :: [RegistryItem LayoutInfo]
  , optionGroups :: [RegistryItem OptionGroupInfo]
  }
  deriving (Eq, Show, Generic)
  deriving anyclass (NFData)

data RegistryItem a = RegistryItem
  { popularity :: !Popularity
  , name :: !String
  , item :: !a
  , description :: !String
  }
  deriving stock (Eq, Ord, Generic)
  deriving anyclass (NFData)

newtype ModelInfo = ModelInfo {vendor :: String}
  deriving stock (Eq, Ord, Show, Generic)
  deriving newtype (NFData)

data LayoutInfo = LayoutInfo
  { variant :: !(Maybe String)
  , brief :: !String
  -- ^ A one-word description of the layout. May be empty.
  , countries :: [CountryCode]
  , languages :: [LanguageCode]
  }
  deriving (Eq, Ord, Show, Generic)
  deriving anyclass (NFData)

data OptionGroupInfo = OptionGroupInfo
  { options :: ![RegistryItem OptionInfo]
  , allowsMultiple :: !Bool
  -- ^ Whether multiple options in this group can be selected simultaneously.
  }
  deriving (Eq, Ord, Show, Generic)
  deriving anyclass (NFData)

data OptionInfo = OptionInfo
  { brief :: !String
  , layoutSpecific :: !Bool
  }
  deriving (Eq, Ord, Show, Generic)
  deriving anyclass (NFData)

-- | If the exotic items are not loaded, all items will have have the standard popularity.
data Popularity = Standard | Exotic
  deriving (Eq, Ord, Show, Read, Generic)
  deriving anyclass (NFData)

-- | Language code per ISO 639-3 (@us@)
newtype LanguageCode = LanguageCode {languageCode :: String}
  deriving (Eq, Ord, Generic)
  deriving anyclass (NFData)

-- | Country code per ISO 3166 Alpha 2 (@eng@)
newtype CountryCode = CountryCode {countryCode :: String}
  deriving (Eq, Ord, Generic)
  deriving anyclass (NFData)

instance Show (RegistryItem ModelInfo) where
  show mi =
    "Model "
      ++ mi.name
      ++ " \""
      ++ mi.description
      ++ "\""
      ++ " ("
      ++ mi.item.vendor
      ++ ")"
      ++ (if mi.popularity == Exotic then " [exotic]" else "")

instance Show (RegistryItem LayoutInfo) where
  show li =
    "Layout "
      ++ li.name
      ++ maybe "" (\va -> "(" ++ va ++ ")") li.item.variant
      ++ " \""
      ++ li.description
      ++ "\""
      ++ " ("
      ++ li.item.brief
      ++ ")"
      ++ " (country: "
      ++ unwords (map show li.item.countries)
      ++ ")"
      ++ " [lang: "
      ++ unwords (map show li.item.languages)
      ++ "]"
      ++ (if li.popularity == Exotic then " [exotic]" else "")

instance Show LanguageCode where
  show (LanguageCode x) = x

instance Show CountryCode where
  show (CountryCode x) = x

instance IsString LanguageCode where
  fromString s@[_, _, _] = LanguageCode $ map toLower s
  fromString s = error $ "fromString: no parse (LanguageCode): " ++ s
instance IsString CountryCode where
  fromString s@[_, _] = CountryCode $ map toUpper s
  fromString s = error $ "fromString: no parse (CountryCode): " ++ s

instance Show (RegistryItem OptionGroupInfo) where
  show og =
    "OptionGroup "
      ++ og.name
      ++ " \""
      ++ og.description
      ++ "\""
      ++ (if og.item.allowsMultiple then " [multi]" else "")
      ++ (if og.popularity == Exotic then " [exotic]" else "")
      ++ "\n"
      ++ concatMap (\o -> "  " ++ show o ++ "\n") og.item.options

instance Show (RegistryItem LayoutOption) where
  show oi =
    "LayoutOption "
      ++ oi.name
      ++ " \""
      ++ oi.description
      ++ "\""
      ++ " ("
      ++ oi.item.prefix
      ++ ": "
      ++ oi.item.name
      ++ ")"
      ++ (if oi.popularity == Exotic then " [exotic]" else "")
  showList = showListWith (fmap ("\n" ++) . shows)

instance Show (RegistryItem OptionInfo) where
  show oi =
    "Option "
      ++ oi.name
      ++ " \""
      ++ oi.description
      ++ "\""
      ++ (if oi.item.brief /= "" then " (" ++ oi.item.brief ++ ")" else "")
      ++ (if oi.item.layoutSpecific then " [layout-specific]" else "")
      ++ (if oi.popularity == Exotic then " [exotic]" else "")

getParsedRegistry :: RxkbContext -> IO Registry
getParsedRegistry ctx0 = do
  parseDefault ctx0
  withForeignPtr ctx0.unwrap $ \ctx' ->
    Registry
      <$> collectModels ctx'
      <*> collectLayouts ctx'
      <*> collectOptionGroups ctx'

getModels :: RxkbContext -> IO [RegistryItem ModelInfo]
getModels ctx0 = withForeignPtr ctx0.unwrap collectModels
getLayouts :: RxkbContext -> IO [RegistryItem LayoutInfo]
getLayouts ctx0 = withForeignPtr ctx0.unwrap collectLayouts
getOptionGroups :: RxkbContext -> IO [RegistryItem OptionGroupInfo]
getOptionGroups ctx0 = withForeignPtr ctx0.unwrap collectOptionGroups

getOptions :: RxkbContext -> IO [RegistryItem LayoutOption]
getOptions ctx0 = withForeignPtr ctx0.unwrap collectOptionGroups <&> concatMap (map f . (.item.options))
  where
    f it = it{item = fromString @LayoutOption it.name}

collectModels :: Ptr RxkbContext -> IO [RegistryItem ModelInfo]
collectModels ctx = collect (_rxkbModelFirst ctx) (const $ return ()) _rxkbModelNext getModelInfo
collectLayouts :: Ptr RxkbContext -> IO [RegistryItem LayoutInfo]
collectLayouts ctx = collect (_rxkbLayoutFirst ctx) (const $ return ()) _rxkbLayoutNext getLayoutInfo
collectOptionGroups :: Ptr RxkbContext -> IO [RegistryItem OptionGroupInfo]
collectOptionGroups ctx = collect (_rxkbOptionGroupFirst ctx) (const $ return ()) _rxkbOptionGroupNext getOptionGroup

getItemWith :: (t -> IO ConstCS) -> (t -> IO ConstCS) -> (t -> IO CUInt) -> (t -> IO a) -> t -> IO (RegistryItem a)
getItemWith getName getDesc getPopular getItem m =
  RegistryItem
    <$> fmap getPopularity (getPopular m)
    <*> getCString getName m
    <*> getItem m
    <*> getCString getDesc m

getModelInfo :: RxkbModel -> IO (RegistryItem ModelInfo)
getModelInfo =
  getItemWith _rxkbModelGetName _rxkbModelGetDescription _rxkbModelGetPopularity $
    fmap ModelInfo . getCString _rxkbModelGetVendor

getLayoutInfo :: RxkbLayout -> IO (RegistryItem LayoutInfo)
getLayoutInfo = getItemWith _rxkbLayoutGetName _rxkbLayoutGetDescription _rxkbLayoutGetPopularity $
  \m ->
    LayoutInfo
      <$> getCStringMaybe (_rxkbLayoutGetVariant m)
      <*> getCString _rxkbLayoutGetBrief m
      <*> collect (_iso3166First m) (const $ return ()) _iso3166Next (getCountryCode _iso3166GetCode)
      <*> collect (_iso639First m) (const $ return ()) _iso639Next (getLanguageCode _iso639GetCode)

getOptionGroup :: RxkbOptionGroup -> IO (RegistryItem OptionGroupInfo)
getOptionGroup = getItemWith _rxkbOptionGroupGetName _rxkbOptionGroupGetDescription _rxkbOptionGroupGetPopularity $
  \m ->
    OptionGroupInfo
      <$> collect (_rxkbOptionFirst m) (const $ return ()) _rxkbOptionNext getOptionInfo
      <*> _rxkbOptionGroupAllowsMultiple m

getLanguageCode :: (t -> IO ConstCS) -> t -> IO LanguageCode
getLanguageCode f x = fromString <$> getCString f x

getCountryCode :: (t -> IO ConstCS) -> t -> IO CountryCode
getCountryCode f x = fromString <$> getCString f x

getOptionInfo :: RxkbOption -> IO (RegistryItem OptionInfo)
getOptionInfo = getItemWith _rxkbOptionGetName _rxkbOptionGetDescription _rxkbOptionGetPopularity $
  \m -> OptionInfo <$> getCString _rxkbOptionGetBrief m <*> _rxkbOptionIsLayoutSpecific m

collect :: (HasField "unwrap" a (Ptr u)) => IO a -> (a -> IO ()) -> (a -> IO a) -> (a -> IO b) -> IO [b]
collect getFirst unref getNext getInfo = getFirst >>= go
  where
    go m0 = do
      let ptr = getField @"unwrap" m0
      if ptr == nullPtr
        then return []
        else do
          r <- getInfo m0
          fmap (r :) $ do
            m1 <- getNext m0
            unref m0
            go m1

getCString :: (t -> IO ConstCS) -> t -> IO [Char]
getCString f x = fromMaybe "" <$> getCStringMaybe (f x)

getCStringMaybe :: IO ConstCS -> IO (Maybe String)
getCStringMaybe m = do
  r <- unConstPtr <$> m
  if r == nullPtr then return Nothing else Just <$> peekCString r

getPopularity :: CUInt -> Popularity
getPopularity x
  | x == _POPULARITY_EXOTIC = Exotic
  | x == _POPULARITY_STANDARD = Standard
  | otherwise = error $ "no parse: popularity " ++ show x

contextLogLevel :: RxkbContext -> IO LogLevel
contextLogLevel ctx = toEnum . fromIntegral <$> withForeignPtr ctx.unwrap c_rxkb_context_get_log_level

-- | Append an include path to the context.
appendIncludePath :: Ptr RxkbContext -> FilePath -> IO ()
appendIncludePath ctx fp = do
  r <- withCString fp $ c_rxkb_context_include_path_append ctx
  unless r $ throwIO $ RxkbContextIncludePathFailed fp

appendIncludePathDefault :: Ptr RxkbContext -> IO ()
appendIncludePathDefault ctx = do
  r <- c_rxkb_context_include_path_append_default ctx
  unless r $ throwIO $ RxkbContextIncludePathFailed "[default]"

-- | Parse given ruleset (e.g. @"evdev"@).
--
-- Can only be called once per context.
parseWith :: (HasCallStack) => RxkbContext -> String -> IO ()
parseWith ctx "" = parseDefault ctx
parseWith ctx nm = do
  done <- readIORef ctx.parsed
  unless done $ do
    r <- withForeignPtr ctx.unwrap $ withCString nm . c_ctx_parse
    unless r $ throwIO RxkbContextParseFailed
    writeIORef ctx.parsed True

-- | Parse the default ruleset as configured at build time.
parseDefault :: (HasCallStack) => RxkbContext -> IO ()
parseDefault ctx = do
  done <- readIORef ctx.parsed
  unless done $ do
    r <- withForeignPtr ctx.unwrap c_ctx_parse_default_ruleset
    unless r $ throwIO RxkbContextParseFailed
    writeIORef ctx.parsed True

-- * FFI

-- | Opaque top level library context object.
data RxkbContext = RxkbContext
  { parsed :: IORef Bool
  , unwrap :: ForeignPtr RxkbContext
  }
  deriving stock (Generic)

-- | Opaque struct representing an XKB model.
newtype RxkbModel = RxkbModel {unwrap :: Ptr RxkbModel}
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an XKB layout, including an optional variant.
--
-- Where the variant is _NULL_, the layout is the base layout.
newtype RxkbLayout = RxkbLayout {unwrap :: Ptr RxkbLayout}
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an option group.
--
-- Option groups divide the individual options into logical groups. Their main purpose is to indicate
-- whether some options are mutually exclusive or not.
newtype RxkbOptionGroup = RxkbOptionGroup {unwrap :: Ptr RxkbOptionGroup}
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an XKB option. Options are grouped inside an option group.
newtype RxkbOption = RxkbOption {unwrap :: Ptr RxkbOption}
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an ISO 639-3 code (@eng@, etc.)
--
-- There is no guarantee that two identical ISO codes share the same struct. You
-- must not rely on the pointer value of this struct.
newtype ISO639 = ISO639 {unwrap :: Ptr ISO639}
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | Opaque struct representing an ISO 3166 Alpha 2 code (e.g. @US@, @FR@).
--
-- There is no guarantee that two identical ISO codes share the same struct. You
-- must not rely on the pointer value of this struct.
newtype ISO3166 = ISO3166 {unwrap :: Ptr ISO3166}
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- rxkb_context

foreign import capi unsafe "extras.h set_registry_log_fn"
  set_registry_log_fn :: Ptr RxkbContext -> FunPtr (FunPtr a -> IO ()) -> FunPtr LogFnRaw -> IO ()

foreign import capi safe "&"
  finalize_registry :: FunPtr (Ptr env -> Ptr RxkbContext -> IO ())

foreign import capi safe "xkbcommon/xkbregistry.h rxkb_context_new"
  c_rxkb_context_new :: CUInt -> IO (Ptr RxkbContext)

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_context_parse"
  c_ctx_parse :: Ptr RxkbContext -> CString -> IO Bool

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_context_parse_default_ruleset"
  c_ctx_parse_default_ruleset :: Ptr RxkbContext -> IO Bool

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_context_set_log_level"
  c_ctx_set_log_level :: Ptr RxkbContext -> CUInt -> IO ()

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_context_get_log_level"
  c_rxkb_context_get_log_level :: Ptr RxkbContext -> IO CUInt

foreign import capi safe "xkbcommon/xkbregistry.h rxkb_context_include_path_append"
  c_rxkb_context_include_path_append :: Ptr RxkbContext -> CString -> IO Bool

foreign import capi safe "xkbcommon/xkbregistry.h rxkb_context_include_path_append_default"
  c_rxkb_context_include_path_append_default :: Ptr RxkbContext -> IO Bool

-- rxkb_model

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_first" _rxkbModelFirst :: Ptr RxkbContext -> IO RxkbModel
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_unref" _rxkbModelUnref :: RxkbModel -> IO ()
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_next" _rxkbModelNext :: RxkbModel -> IO RxkbModel
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_get_name" _rxkbModelGetName :: RxkbModel -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_get_description" _rxkbModelGetDescription :: RxkbModel -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_get_popularity" _rxkbModelGetPopularity :: RxkbModel -> IO CUInt
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_model_get_vendor" _rxkbModelGetVendor :: RxkbModel -> IO ConstCS

-- layout

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_first" _rxkbLayoutFirst :: Ptr RxkbContext -> IO RxkbLayout
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_unref" _rxkbLayoutUnref :: RxkbLayout -> IO ()
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_next" _rxkbLayoutNext :: RxkbLayout -> IO RxkbLayout
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_name" _rxkbLayoutGetName :: RxkbLayout -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_description" _rxkbLayoutGetDescription :: RxkbLayout -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_popularity" _rxkbLayoutGetPopularity :: RxkbLayout -> IO CUInt
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_variant" _rxkbLayoutGetVariant :: RxkbLayout -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_brief" _rxkbLayoutGetBrief :: RxkbLayout -> IO ConstCS

-- option_group

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_first" _rxkbOptionGroupFirst :: Ptr RxkbContext -> IO RxkbOptionGroup
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_unref" _rxkbOptionGroupUnref :: RxkbOptionGroup -> IO ()
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_next" _rxkbOptionGroupNext :: RxkbOptionGroup -> IO RxkbOptionGroup
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_get_name" _rxkbOptionGroupGetName :: RxkbOptionGroup -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_get_description" _rxkbOptionGroupGetDescription :: RxkbOptionGroup -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_get_popularity" _rxkbOptionGroupGetPopularity :: RxkbOptionGroup -> IO CUInt
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_group_allows_multiple" _rxkbOptionGroupAllowsMultiple :: RxkbOptionGroup -> IO Bool

-- option

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_first" _rxkbOptionFirst :: RxkbOptionGroup -> IO RxkbOption
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_unref" _rxkbOptionUnref :: RxkbOption -> IO ()
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_next" _rxkbOptionNext :: RxkbOption -> IO RxkbOption
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_get_name" _rxkbOptionGetName :: RxkbOption -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_get_brief" _rxkbOptionGetBrief :: RxkbOption -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_get_description" _rxkbOptionGetDescription :: RxkbOption -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_get_popularity" _rxkbOptionGetPopularity :: RxkbOption -> IO CUInt
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_option_is_layout_specific" _rxkbOptionIsLayoutSpecific :: RxkbOption -> IO Bool

-- iso639

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_iso639_first" _iso639First :: RxkbLayout -> IO ISO639
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso639_code_next" _iso639Next :: ISO639 -> IO ISO639
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso639_code_get_code" _iso639GetCode :: ISO639 -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso639_code_unref" _iso639Unref :: ISO639 -> IO ()

-- iso3166

foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_layout_get_iso3166_first" _iso3166First :: RxkbLayout -> IO ISO3166
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso3166_code_next" _iso3166Next :: ISO3166 -> IO ISO3166
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso3166_code_get_code" _iso3166GetCode :: ISO3166 -> IO ConstCS
foreign import capi unsafe "xkbcommon/xkbregistry.h rxkb_iso3166_code_unref" _iso3166Unref :: ISO3166 -> IO ()

-- flags

foreign import capi "xkbcommon/xkbregistry.h value RXKB_CONTEXT_NO_DEFAULT_INCLUDES" _NO_DEFAULT_INCLUDES :: CUInt
foreign import capi "xkbcommon/xkbregistry.h value RXKB_CONTEXT_LOAD_EXOTIC_RULES" _LOAD_EXOTIC_RULES :: CUInt
foreign import capi "xkbcommon/xkbregistry.h value RXKB_CONTEXT_NO_SECURE_GETENV" _NO_SECURE_GETENV :: CUInt

foreign import capi "xkbcommon/xkbregistry.h value RXKB_POPULARITY_STANDARD" _POPULARITY_STANDARD :: CUInt
foreign import capi "xkbcommon/xkbregistry.h value RXKB_POPULARITY_EXOTIC" _POPULARITY_EXOTIC :: CUInt

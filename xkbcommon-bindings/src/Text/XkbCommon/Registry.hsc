-- |
-- Module      : Text.XkbCommon.Registry
-- Description : xkbregistry.h
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Text.XkbCommon.Registry (
  createRegistry,
  RegistryOptions(..),
  def,
  RxkbContext,
  createRxkbContext,
  rxkbContextParseDefault,
  rxkbContextParse,
  getRulesInfo,
  RulesInfo(..),
  ModelInfo(..),
  LayoutInfo(..),
  OptionGroupInfo(..),
  OptionInfo(..),
  RxkbException(..),
  Popularity(..),
  ) where

import Data.Default
import Foreign
import Foreign.C
import GHC.Records
import GHC.Generics
import Control.Exception
import Data.Data
import Control.Monad

import Text.XkbCommon.XkbContext (LogLevel(..))

#include <xkbcommon/xkbregistry.h>

data RxkbException = RxkbContextParseFailed
  deriving (Eq, Show)

instance Exception RxkbException

-- * Aggregate rules info

data RulesInfo = RulesInfo
  { models       :: [ModelInfo]
  , layouts      :: [LayoutInfo]
  , optionGroups :: [OptionGroupInfo]
  } deriving (Eq, Ord, Show)

data ModelInfo = ModelInfo
  { name        :: String
  , description :: String
  , vendor      :: String
  , popularity  :: Popularity
  } deriving (Eq, Ord)

instance Show ModelInfo where
  show mi = "Model \"" ++ mi.name ++ "\" (" ++ mi.description ++ "; vendor: " ++ mi.vendor ++ ")"
   ++ (if mi.popularity == Exotic then " [exotic]" else "")

data LayoutInfo = LayoutInfo
  { name        :: String
  , description :: String
  , popularity  :: Popularity
  , variant     :: Maybe String
  , brief       :: String
  , languages   :: [String] -- ^ ISO 639-3
  , languages2  :: [String] -- ^ ISO 3166
  } deriving (Eq, Ord)

instance Show LayoutInfo where
  show li = "Layout " ++ li.name ++
    maybe "" (\va -> "(" ++ va ++ ")") li.variant ++
    " \"" ++ li.description ++ "\"" ++
    " (" ++ li.brief ++ "; " ++ unwords li.languages ++ "/" ++ unwords li.languages2 ++ ")" ++
      (if li.popularity == Exotic then " [exotic]" else "")

data OptionGroupInfo = OptionGroupInfo
  { name           :: String
  , description    :: String
  , popularity     :: Popularity
  , allowsMultiple :: Bool
  , options        :: [OptionInfo]
  } deriving (Eq, Ord)

instance Show OptionGroupInfo where
  show og = "OptionGroup " ++ og.name ++
    " \"" ++ og.description ++ "\"" ++
    (if og.allowsMultiple then " [multi]" else "") ++
      (if og.popularity == Exotic then " [exotic]" else "") ++
    "\n" ++
    concatMap (\o -> "  " ++ show o ++ "\n") og.options

data OptionInfo = OptionInfo
  { name           :: String
  , brief          :: String
  , description    :: String
  , popularity     :: Popularity
  , layoutSpecific :: Bool
  } deriving (Eq, Ord)

instance Show OptionInfo where
  show oi = "Option " ++ oi.name ++
    " \"" ++ oi.description ++ "\"" ++
    (if oi.brief /= "" then " (" ++ oi.brief ++ ")" else "") ++
    (if oi.layoutSpecific then " [layout-specific]" else "") ++
    (if oi.popularity == Exotic then " [exotic]" else "")

data Popularity = PopularityStandard | Exotic | PopularityUnknown Int
  deriving (Eq, Ord, Show)

getPopularity :: CUInt -> Popularity
getPopularity x = case x of
                    #{const RXKB_POPULARITY_STANDARD} -> PopularityStandard
                    #{const RXKB_POPULARITY_EXOTIC} -> Exotic
                    _ -> PopularityUnknown (fromIntegral x)

getRulesInfo :: RxkbContext -> IO RulesInfo
getRulesInfo ctx0 =
  withForeignPtr ctx0.unwrap $ \ctx' ->
  RulesInfo
  <$> collectModels ctx'
  <*> collectLayouts ctx'
  <*> collectOptionGroups ctx'
    where

      collectModels :: Ptr RxkbContext -> IO [ModelInfo]
      collectModels ctx = collect (_rxkbModelFirst ctx) _rxkbModelUnref $ \m -> (,) <$> _rxkbModelNext m <*> getModelInfo m

      collectLayouts :: Ptr RxkbContext -> IO [LayoutInfo]
      collectLayouts ctx = collect (_rxkbLayoutFirst ctx) _rxkbLayoutUnref $ \m -> (,) <$> _rxkbLayoutNext m <*> getLayoutInfo m

      collectOptionGroups :: Ptr RxkbContext -> IO [OptionGroupInfo]
      collectOptionGroups ctx = collect (_rxkbOptionGroupFirst ctx) _rxkbOptionGroupUnref $ \m -> (,) <$> _rxkbOptionGroupNext m <*> getOptionGroupInfo m

      getModelInfo :: RxkbModel -> IO ModelInfo
      getModelInfo m = ModelInfo
        <$> getString (_rxkbModelGetName m)
        <*> getString (_rxkbModelGetDescription m)
        <*> getString (_rxkbModelGetVendor m)
        <*> fmap getPopularity (_rxkbModelGetPopularity m)

      getLayoutInfo :: RxkbLayout -> IO LayoutInfo
      getLayoutInfo m = LayoutInfo
        <$> getString (_rxkbLayoutGetName m)
        <*> getString (_rxkbLayoutGetDescription m)
        <*> fmap getPopularity (_rxkbLayoutGetPopularity m)
        <*> getStringMaybe (_rxkbLayoutGetVariant m)
        <*> getString (_rxkbLayoutGetBrief m)
        <*> collect (_iso639First m) _iso639Unref (\x -> (,) <$> _iso639Next x <*> getString (_iso639GetCode x))
        <*> collect (_iso3166First m) _iso3166Unref (\x -> (,) <$> _iso3166Next x <*> getString (_iso3166GetCode x))

      getOptionGroupInfo :: RxkbOptionGroup -> IO OptionGroupInfo
      getOptionGroupInfo m = OptionGroupInfo
        <$> getString (_rxkbOptionGroupGetName m)
        <*> getString (_rxkbOptionGroupGetDescription m)
        <*> fmap getPopularity (_rxkbOptionGroupGetPopularity m)
        <*> _rxkbOptionGroupAllowsMultiple m
        <*> collect (_rxkbOptionFirst m) _rxkbOptionUnref (\x -> (,) <$> _rxkbOptionNext x <*> getOptionInfo x)

      getOptionInfo :: RxkbOption -> IO OptionInfo
      getOptionInfo m = OptionInfo
        <$> getString (_rxkbOptionGetName m)
        <*> getString (_rxkbOptionGetBrief m)
        <*> getString (_rxkbOptionGetDescription m)
        <*> fmap getPopularity (_rxkbOptionGetPopularity m)
        <*> _rxkbOptionIsLayoutSpecific m

      collect :: HasField "unwrap" a (Ptr u) => IO a -> (Ptr u -> IO ()) -> (a -> IO (a, b)) -> IO [b]
      collect begin unref next = begin >>= go [] where
        go xs m0 = do
          let ptr = getField @"unwrap" m0
          if ptr == nullPtr
             then return (reverse xs)
             else next m0 >>= \(m1, r) -> unref ptr >> go (r : xs) m1

      getString :: IO CString -> IO String
      getString m = do
        r <- m
        if r == nullPtr then return "" else peekCString r

      getStringMaybe :: IO CString -> IO (Maybe String)
      getStringMaybe m = do
        r <- m
        if r == nullPtr then return Nothing else Just <$> peekCString r

data RegistryOptions = RegistryOptions
  { rxkbRuleSet           :: Maybe String
  , rxkbNoDefaultIncludes :: Bool -- ^ Default: false
  , rxkbLoadExoticRules   :: Bool -- ^ Default: false
  , rxkbNoSecureGetenv    :: Bool -- ^ Default: false
  , rxkbLogLevel          :: LogLevel
  } deriving (Eq, Ord, Show, Read)

instance Default RegistryOptions where
  def = RegistryOptions Nothing False False False LevelError

createRegistry :: RegistryOptions -> IO RxkbContext
createRegistry opts = do
  ctx <- createRxkbContext flags
  when (opts.rxkbLogLevel /= LevelError) $ withForeignPtr ctx.unwrap $ \ctx' ->
    _rxkbContextSetLogLevel ctx' (displayLogLevel opts.rxkbLogLevel)
  maybe rxkbContextParseDefault (flip rxkbContextParse) opts.rxkbRuleSet ctx
  return ctx
    where
      flags =
        f opts.rxkbNoDefaultIncludes #{const RXKB_CONTEXT_NO_DEFAULT_INCLUDES} .|.
        f opts.rxkbLoadExoticRules #{const RXKB_CONTEXT_LOAD_EXOTIC_RULES} .|.
        f opts.rxkbNoSecureGetenv #{const RXKB_CONTEXT_NO_SECURE_GETENV}
      f True x = x
      f False _ = 0

      displayLogLevel lvl = case lvl of
                              LevelCritical -> #{const RXKB_LOG_LEVEL_CRITICAL}
                              LevelError -> #{const RXKB_LOG_LEVEL_ERROR}
                              LevelWarning -> #{const RXKB_LOG_LEVEL_WARNING}
                              LevelInfo -> #{const RXKB_LOG_LEVEL_INFO}
                              LevelDebug -> #{const RXKB_LOG_LEVEL_DEBUG}

-- * RxkbContext

newtype RxkbContext = RxkbContext { unwrap :: ForeignPtr RxkbContext }
  deriving newtype (Eq, Ord)
  deriving stock (Generic, Show, Data)

createRxkbContext :: CUInt -> IO RxkbContext
createRxkbContext flags = throwIfNull "createRxkbContext" (_rxkbContextNew flags)
  >>= fmap RxkbContext . newForeignPtr _rxkbContextUnref

-- | Parse given ruleset (e.g. @"evdev"@).
--
-- Can only be called once per context.
rxkbContextParse :: RxkbContext -> String -> IO ()
rxkbContextParse ctx nm =
  withForeignPtr ctx.unwrap $ \ctx' ->
  withCString nm $ \nm' -> do
    r <- _rxkbContextParse ctx' nm'
    unless r $ throwIO RxkbContextParseFailed

rxkbContextParseDefault :: RxkbContext -> IO ()
rxkbContextParseDefault ctx =
  withForeignPtr ctx.unwrap $ \ctx' -> do
    r <- _rxkbContextParseDefaultRuleset ctx'
    unless r $ throwIO RxkbContextParseFailed

foreign import ccall unsafe "rxkb_context_new"
  _rxkbContextNew :: CUInt -> IO (Ptr RxkbContext)

foreign import ccall unsafe "&rxkb_context_unref"
  _rxkbContextUnref :: FunPtr (Ptr RxkbContext -> IO ())

foreign import ccall unsafe "rxkb_context_parse"
  _rxkbContextParse :: Ptr RxkbContext -> CString -> IO Bool

foreign import ccall unsafe "rxkb_context_parse_default_ruleset"
  _rxkbContextParseDefaultRuleset :: Ptr RxkbContext -> IO Bool

foreign import ccall unsafe "rxkb_context_set_log_level"
  _rxkbContextSetLogLevel :: Ptr RxkbContext -> CUInt -> IO ()

-- * Models

newtype RxkbModel = RxkbModel { unwrap :: Ptr RxkbModel }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

foreign import ccall unsafe "rxkb_model_unref"          _rxkbModelUnref          :: Ptr RxkbModel -> IO ()
foreign import ccall unsafe "rxkb_model_first"           _rxkbModelFirst          :: Ptr RxkbContext -> IO RxkbModel
foreign import ccall unsafe "rxkb_model_next"            _rxkbModelNext           :: RxkbModel -> IO RxkbModel
foreign import ccall unsafe "rxkb_model_get_name"        _rxkbModelGetName        :: RxkbModel -> IO CString
foreign import ccall unsafe "rxkb_model_get_description" _rxkbModelGetDescription :: RxkbModel -> IO CString
foreign import ccall unsafe "rxkb_model_get_popularity"  _rxkbModelGetPopularity  :: RxkbModel -> IO CUInt
foreign import ccall unsafe "rxkb_model_get_vendor"      _rxkbModelGetVendor      :: RxkbModel -> IO CString

-- * Layouts

newtype RxkbLayout = RxkbLayout { unwrap :: Ptr RxkbLayout }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

foreign import ccall unsafe "rxkb_layout_unref" _rxkbLayoutUnref                   :: Ptr RxkbLayout -> IO ()
foreign import ccall unsafe "rxkb_layout_first" _rxkbLayoutFirst                    :: Ptr RxkbContext -> IO RxkbLayout
foreign import ccall unsafe "rxkb_layout_next" _rxkbLayoutNext                      :: RxkbLayout -> IO RxkbLayout
foreign import ccall unsafe "rxkb_layout_get_name" _rxkbLayoutGetName               :: RxkbLayout -> IO CString
foreign import ccall unsafe "rxkb_layout_get_description" _rxkbLayoutGetDescription :: RxkbLayout -> IO CString
foreign import ccall unsafe "rxkb_layout_get_popularity" _rxkbLayoutGetPopularity   :: RxkbLayout -> IO CUInt
foreign import ccall unsafe "rxkb_layout_get_variant" _rxkbLayoutGetVariant         :: RxkbLayout -> IO CString
foreign import ccall unsafe "rxkb_layout_get_brief" _rxkbLayoutGetBrief             :: RxkbLayout -> IO CString

-- * Option groups

newtype RxkbOptionGroup = RxkbOptionGroup { unwrap :: Ptr RxkbOptionGroup }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

foreign import ccall unsafe "rxkb_option_group_unref" _rxkbOptionGroupUnref                   :: Ptr RxkbOptionGroup -> IO ()
foreign import ccall unsafe "rxkb_option_group_first" _rxkbOptionGroupFirst                    :: Ptr RxkbContext -> IO RxkbOptionGroup
foreign import ccall unsafe "rxkb_option_group_next" _rxkbOptionGroupNext                      :: RxkbOptionGroup -> IO RxkbOptionGroup
foreign import ccall unsafe "rxkb_option_group_get_name" _rxkbOptionGroupGetName               :: RxkbOptionGroup -> IO CString
foreign import ccall unsafe "rxkb_option_group_get_description" _rxkbOptionGroupGetDescription :: RxkbOptionGroup -> IO CString
foreign import ccall unsafe "rxkb_option_group_get_popularity" _rxkbOptionGroupGetPopularity   :: RxkbOptionGroup -> IO CUInt
foreign import ccall unsafe "rxkb_option_group_allows_multiple" _rxkbOptionGroupAllowsMultiple :: RxkbOptionGroup -> IO Bool

-- * Options

newtype RxkbOption = RxkbOption { unwrap :: Ptr RxkbOption }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

foreign import ccall unsafe "rxkb_option_unref" _rxkbOptionUnref                        :: Ptr RxkbOption -> IO ()
foreign import ccall unsafe "rxkb_option_first" _rxkbOptionFirst                         :: RxkbOptionGroup -> IO RxkbOption
foreign import ccall unsafe "rxkb_option_next" _rxkbOptionNext                           :: RxkbOption -> IO RxkbOption
foreign import ccall unsafe "rxkb_option_get_name" _rxkbOptionGetName                    :: RxkbOption -> IO CString
foreign import ccall unsafe "rxkb_option_get_brief" _rxkbOptionGetBrief                  :: RxkbOption -> IO CString
foreign import ccall unsafe "rxkb_option_get_description" _rxkbOptionGetDescription      :: RxkbOption -> IO CString
foreign import ccall unsafe "rxkb_option_get_popularity" _rxkbOptionGetPopularity        :: RxkbOption -> IO CUInt
foreign import ccall unsafe "rxkb_option_is_layout_specific" _rxkbOptionIsLayoutSpecific :: RxkbOption -> IO Bool

-- * Country codes

-- | ISO 639-3 code (@eng@, etc.)
newtype ISO639 = ISO639 { unwrap :: Ptr ISO639 }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

-- | ISO 3166 Alpha 2 code (@US@, etc.)
newtype ISO3166 = ISO3166 { unwrap :: Ptr ISO3166 }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

foreign import ccall unsafe "rxkb_layout_get_iso639_first" _iso639First   :: RxkbLayout -> IO ISO639
foreign import ccall unsafe "rxkb_iso639_code_next" _iso639Next           :: ISO639 -> IO ISO639
foreign import ccall unsafe "rxkb_iso639_code_get_code" _iso639GetCode    :: ISO639 -> IO CString
foreign import ccall unsafe "rxkb_iso639_code_unref" _iso639Unref         :: Ptr ISO639 -> IO ()

foreign import ccall unsafe "rxkb_layout_get_iso3166_first" _iso3166First :: RxkbLayout -> IO ISO3166
foreign import ccall unsafe "rxkb_iso3166_code_next" _iso3166Next         :: ISO3166 -> IO ISO3166
foreign import ccall unsafe "rxkb_iso3166_code_get_code" _iso3166GetCode  :: ISO3166 -> IO CString
foreign import ccall unsafe "rxkb_iso3166_code_unref" _iso3166Unref       :: Ptr ISO3166 -> IO ()

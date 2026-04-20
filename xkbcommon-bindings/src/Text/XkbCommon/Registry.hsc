{-# LANGUAGE DataKinds, TypeApplications, FlexibleContexts #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DerivingStrategies, DeriveAnyClass, DeriveGeneric, DeriveDataTypeable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
-- |
-- Module      : Text.XkbCommon.Registry
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Text.XkbCommon.Registry where

-- #define _GNU_SOURCE
-- #include <unistd.h>
-- #include <sys/mman.h>

#include <xkbcommon/xkbregistry.h>

import RIO
import Foreign
import Foreign.C
import GHC.Records

-- * Aggregate rules info

data RulesInfo = RulesInfo
  { models :: [ModelInfo]
  , layouts :: [LayoutInfo]
  , optionGroups :: [OptionGroupInfo]
  } deriving (Eq, Ord, Show)

data ModelInfo = ModelInfo
  { name :: String
  , description :: String
  , vendor :: String
  , popularity :: Popularity
  } deriving (Eq, Ord, Show)

data LayoutInfo = LayoutInfo
  { name :: String
  , description :: String
  , popularity :: Popularity
  , variant :: String
  , brief :: String
  } deriving (Eq, Ord, Show)

data OptionGroupInfo = OptionGroupInfo
  { name :: String
  , description :: String
  , popularity :: Popularity
  , allowsMultiple :: Bool
  , options :: [OptionInfo]
  } deriving (Eq, Ord, Show)

data OptionInfo = OptionInfo
  { name :: String
  , brief :: String
  , description :: String
  , popularity :: Popularity
  , layoutSpecific :: Bool
  } deriving (Eq, Ord, Show)

newtype Popularity = Popularity { unwrap :: CInt }
  deriving (Eq, Ord, Show)

#{enum Popularity, Popularity, RXKB_POPULARITY_STANDARD, RXKB_POPULARITY_EXOTIC}

getRulesInfo :: RxkbContext -> IO RulesInfo
getRulesInfo ctx = RulesInfo
  <$> collectModels ctx
  <*> collectLayouts ctx
  <*> collectOptionGroups ctx

collectModels :: RxkbContext -> IO [ModelInfo]
collectModels ctx = collect (_rxkbModelFirst ctx) $ \m -> (,) <$> _rxkbModelNext m <*> getModelInfo m

collectLayouts :: RxkbContext -> IO [LayoutInfo]
collectLayouts ctx = collect (_rxkbLayoutFirst ctx) $ \m -> (,) <$> _rxkbLayoutNext m <*> getLayoutInfo m

collectOptionGroups :: RxkbContext -> IO [OptionGroupInfo]
collectOptionGroups ctx = collect (_rxkbOptionGroupFirst ctx) $ \m -> (,) <$> _rxkbOptionGroupNext m <*> getOptionGroupInfo m

getModelInfo :: RxkbModel -> IO ModelInfo
getModelInfo m = ModelInfo
  <$> getString (_rxkbModelGetName m)
  <*> getString (_rxkbModelGetDescription m)
  <*> getString (_rxkbModelGetVendor m)
  <*> (_rxkbModelGetPopularity m)

getLayoutInfo :: RxkbLayout -> IO LayoutInfo
getLayoutInfo m = LayoutInfo
  <$> getString (_rxkbLayoutGetName m)
  <*> getString (_rxkbLayoutGetDescription m)
  <*> (_rxkbLayoutGetPopularity m)
  <*> getString (_rxkbLayoutGetVariant m)
  <*> getString (_rxkbLayoutGetBrief m)

getOptionGroupInfo :: RxkbOptionGroup -> IO OptionGroupInfo
getOptionGroupInfo m = OptionGroupInfo
  <$> getString (_rxkbOptionGroupGetName m)
  <*> getString (_rxkbOptionGroupGetDescription m)
  <*> (_rxkbOptionGroupGetPopularity m)
  <*> _rxkbOptionGroupAllowsMultiple m
  <*> collect (_rxkbOptionFirst m) (\x -> (,) <$> _rxkbOptionNext x <*> getOptionInfo x)

getOptionInfo :: RxkbOption -> IO OptionInfo
getOptionInfo m = OptionInfo
  <$> getString (_rxkbOptionGetName m)
  <*> getString (_rxkbOptionGetBrief m)
  <*> getString (_rxkbOptionGetDescription m)
  <*> (_rxkbOptionGetPopularity m)
  <*> _rxkbOptionIsLayoutSpecific m

collect :: HasField "unwrap" a (Ptr u) => IO a -> (a -> IO (a, b)) -> IO [b]
collect begin next = begin >>= go [] where
  go xs m0 = if getField @"unwrap" m0 == nullPtr
                then return (reverse xs)
                else next m0 >>= \(m1, r) -> go (r : xs) m1

getString m = do
  r <- m
  if r == nullPtr then return "" else peekCString r

-- * XkbRegistry

newtype RxkbContext = RxkbContext { unwrap :: Ptr RxkbContext }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

newtype RxkbModel = RxkbModel { unwrap :: Ptr RxkbModel }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

newtype RxkbLayout = RxkbLayout { unwrap :: Ptr RxkbLayout }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

newtype RxkbOptionGroup = RxkbOptionGroup { unwrap :: Ptr RxkbOptionGroup }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

newtype RxkbOption = RxkbOption { unwrap :: Ptr RxkbOption }
  deriving newtype (Eq, Ord, Storable)
  deriving stock (Generic, Show, Data)

foreign import ccall "rxkb_context_new"
  _rxkbContextNew :: CUInt -> IO RxkbContext

foreign import ccall unsafe "rxkb_context_unref"
  _rxkbContextUnref :: RxkbContext -> IO ()

foreign import ccall unsafe "rxkb_context_parse"
  _rxkbContextParse :: RxkbContext -> CString -> IO Bool

-- | Parse given ruleset (e.g. @"evdev"@)
rxkbContextParse :: RxkbContext -> String -> IO Bool
rxkbContextParse ctx name = withCString name $ \nameC -> _rxkbContextParse ctx nameC

-- * Models

foreign import ccall unsafe "rxkb_model_first" _rxkbModelFirst :: RxkbContext -> IO RxkbModel
foreign import ccall unsafe "rxkb_model_next" _rxkbModelNext :: RxkbModel -> IO RxkbModel

foreign import ccall unsafe "rxkb_model_get_name" _rxkbModelGetName :: RxkbModel -> IO CString
foreign import ccall unsafe "rxkb_model_get_description" _rxkbModelGetDescription :: RxkbModel -> IO CString
foreign import ccall unsafe "rxkb_model_get_popularity" _rxkbModelGetPopularity :: RxkbModel -> IO Popularity
foreign import ccall unsafe "rxkb_model_get_vendor" _rxkbModelGetVendor :: RxkbModel -> IO CString

-- * Layout

foreign import ccall unsafe "rxkb_layout_first" _rxkbLayoutFirst :: RxkbContext -> IO RxkbLayout
foreign import ccall unsafe "rxkb_layout_next" _rxkbLayoutNext :: RxkbLayout -> IO RxkbLayout

foreign import ccall unsafe "rxkb_layout_get_name" _rxkbLayoutGetName :: RxkbLayout -> IO CString
foreign import ccall unsafe "rxkb_layout_get_description" _rxkbLayoutGetDescription :: RxkbLayout -> IO CString
foreign import ccall unsafe "rxkb_layout_get_popularity" _rxkbLayoutGetPopularity :: RxkbLayout -> IO Popularity
foreign import ccall unsafe "rxkb_layout_get_variant" _rxkbLayoutGetVariant :: RxkbLayout -> IO CString
foreign import ccall unsafe "rxkb_layout_get_brief" _rxkbLayoutGetBrief :: RxkbLayout -> IO CString

-- * Options

-- ** Option groups

foreign import ccall unsafe "rxkb_option_group_first" _rxkbOptionGroupFirst :: RxkbContext -> IO RxkbOptionGroup
foreign import ccall unsafe "rxkb_option_group_next" _rxkbOptionGroupNext :: RxkbOptionGroup -> IO RxkbOptionGroup

foreign import ccall unsafe "rxkb_option_group_get_name" _rxkbOptionGroupGetName :: RxkbOptionGroup -> IO CString
foreign import ccall unsafe "rxkb_option_group_get_description" _rxkbOptionGroupGetDescription :: RxkbOptionGroup -> IO CString
foreign import ccall unsafe "rxkb_option_group_get_popularity" _rxkbOptionGroupGetPopularity :: RxkbOptionGroup -> IO Popularity
foreign import ccall unsafe "rxkb_option_group_allows_multiple" _rxkbOptionGroupAllowsMultiple :: RxkbOptionGroup -> IO Bool

-- ** Options

foreign import ccall unsafe "rxkb_option_first" _rxkbOptionFirst :: RxkbOptionGroup -> IO RxkbOption
foreign import ccall unsafe "rxkb_option_next" _rxkbOptionNext :: RxkbOption -> IO RxkbOption

foreign import ccall unsafe "rxkb_option_get_name" _rxkbOptionGetName :: RxkbOption -> IO CString
foreign import ccall unsafe "rxkb_option_get_brief" _rxkbOptionGetBrief :: RxkbOption -> IO CString
foreign import ccall unsafe "rxkb_option_get_description" _rxkbOptionGetDescription :: RxkbOption -> IO CString
foreign import ccall unsafe "rxkb_option_get_popularity" _rxkbOptionGetPopularity :: RxkbOption -> IO Popularity
foreign import ccall unsafe "rxkb_option_is_layout_specific" _rxkbOptionIsLayoutSpecific :: RxkbOption -> IO Bool

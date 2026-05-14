{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE DefaultSignatures    #-}
{-# LANGUAGE MagicHash            #-}
{-# LANGUAGE RecordWildCards      #-}
{-# LANGUAGE RoleAnnotations      #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ViewPatterns         #-}

-- |
-- Module      : Bindings.Wayland.Util
-- Description : Wayland Util bindings
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module Bindings.Wayland.Util
  (
  -- * Lists
  List(..),
  ListOf(..),
  SomeList,
  IsListContainer(..),
  IsListItem(..),
  listNew,
  listFromList,
  listToList,
  listIterWith,
  listSeekBackward,
  listSeekForward,
  listInit,
  listLength,
  listEmpty,
  listInsert,
  listInsertMany,
  listRemove,
  listInsertList,

  TestElem(..),
  testList,

  -- * Arrays
  Array(..),
  arrayInit,
  arrayFree,
  arrayCopy,
  arrayAdd,
  arrayForEach,

  -- * Fixed-point numbers
  Fixed,
  fixedToDouble,
  fixedFromDouble,
  fixedToInt,
  fixedFromInt,

  -- * Interfaces
  Wl_interface(..),
  Wl_message(..),
  -- ** Max message size
  wL_MAX_MESSAGE_SIZE,
  -- ** Dispatching (Wl_argument etc.)
  Wl_argument(..),
  Wl_object,
  Wl_dispatcher_func_t(..),
  Wl_dispatcher_func_t_Aux(..),

  ) where

import           Bindings.Wayland.Util.Generated
import qualified Bindings.Wayland.Util.Generated.Unsafe as U

import           Wayland.Internal.TH
import           Wayland.Types

import qualified HsBindgen.Runtime.HasCField as CF
import           UnliftIO

import           Control.Monad
import           Data.Coerce
import           Data.Kind
import           Data.Proxy
import           Foreign
import           Foreign.C.ConstPtr
import           Foreign.C.Types
import           GHC.Generics
import           GHC.Records
import           System.IO.Unsafe

-- | Orphan instance
type instance InterfaceType a = Wl_interface

renderNewType "Array" ''Wl_array ""

instance Default Array where
  def = Array nullPtr

arrayInit :: MonadIO m => Array -> m ()
arrayInit (Array arr) = liftIO $ U.wl_array_init arr

arrayFree :: MonadIO m => Array -> m ()
arrayFree (Array arr) = liftIO $ U.wl_array_release arr

-- | Increase the size of the array by num bytes.
arrayAdd :: MonadIO m => Array -> Int -> m (Ptr a)
arrayAdd (Array arr) size = liftIO $
  throwIfNull "arrayAdd" $ castPtr <$> U.wl_array_add arr (fromIntegral size)

arrayCopy :: MonadIO m => Array -> Array -> m ()
arrayCopy (Array dst) (Array src) = liftIO $
  throwIfNeg_ (\x -> "arrayCopy: " ++ show x) $ U.wl_array_copy dst src

-- | Map over all elements of the array.
--
-- Assumes that all elements are equal-size.
arrayForEach :: forall a b m. (Storable a, MonadIO m) => Array -> (a -> m b) -> m [b]
arrayForEach (Array arr) f = do
  let dataPP = getField @"data'" arr
      sizeP = getField @"size" arr
      -- allocP = getField @"alloc" arr

      go :: Ptr a -> m [b]
      go pos = do
        size <- liftIO $ fromIntegral <$> peek sizeP
        case size of
          0 -> return []
          _ -> do
            let posEnd = pos `plusPtr` size
                poss = g pos
                g p | p < posEnd = p : g (advancePtr p 1)
                    | otherwise  = []
            forM poss $ liftIO . peek >=> f

  pos0 <- liftIO $ peek dataPP
  go $ castPtr pos0

instance Default Wl_list where
  def = Wl_list nullPtr nullPtr

-- * Wl_list

-- | Double-linked list.
--
-- @
-- data MyList = MyList
--    { ...
--    , _link :: Wl_list
--    }
--
-- instance Storable MyList where
--   ...
--
-- instance CF.HasCField MyList "link" where
-- 
--   type CFieldType MyList "link" = Wl_list
-- 
--   offset# _ _ = ...
--
-- @
newtype List (a :: Type) = List { unList :: Ptr Wl_list }
  deriving stock (Eq, Ord, Show, Generic)

newtype ListOf (a :: Type) = ListOf { unListOf :: Ptr a }
  deriving stock (Eq, Ord, Show, Generic)

type role List   nominal
type role ListOf nominal

class IsListItem a where
  toListItemLink   :: Ptr a -> Ptr Wl_list
  fromListItemLink :: Ptr Wl_list -> Ptr a

instance (sy ~ "link", CF.HasCField a sy, CF.CFieldType a sy ~ Wl_list) => IsListItem a where
  toListItemLink = CF.fromPtr (Proxy @"link")
  fromListItemLink p = castPtr p `plusPtr` (- CF.offset (Proxy @a) (Proxy @"link"))

class IsListContainer list a where
  toListContainer :: list a -> ListOf a
  default toListContainer :: (list ~ ListOf) => list a -> ListOf a
  toListContainer = id

  fromListContainer :: ListOf a -> list a
  default fromListContainer :: (list ~ ListOf) => ListOf a -> list a
  fromListContainer = id

  toListLink :: list a -> List a
  default toListLink :: (list ~ List) => list a -> List a
  toListLink = id

  fromListLink :: List a -> list a
  default fromListLink :: (list ~ List) => List a -> list a
  fromListLink = id

instance IsListItem a => IsListContainer List a where
  toListContainer   = ListOf . fromListItemLink @a . unList
  fromListContainer = List . toListItemLink @a . unListOf

instance IsListItem a => IsListContainer ListOf a where
  toListLink   = fromListContainer
  fromListLink = toListContainer

type SomeList t a = (IsListContainer t a, IsListItem a)

listNew :: (MonadIO m, SomeList List a) => m (List a)
listNew = liftIO $ do
  list <- List <$> malloc
  listInit list
  return list

listInit :: (MonadIO m, SomeList list a) => list a -> m ()
listInit (toListLink -> List ls) = liftIO $ U.wl_list_init ls

-- | Number of items in the list.
--
-- O(n)
listLength :: (MonadIO m, SomeList list a) => list a -> m Int
listLength (toListLink -> List ls) = liftIO $ fromIntegral <$> U.wl_list_length (ConstPtr ls)

-- | Is the list empty?
--
-- O(1)
listEmpty :: (MonadIO m, SomeList list a) => list a -> m Bool
listEmpty (toListLink -> List ls) = liftIO $ (== 1) <$> U.wl_list_empty (ConstPtr ls)

-- | Insert the element after the current index.
listInsert :: (MonadIO m, SomeList list a) => list a -> Ptr a -> m ()
listInsert (toListLink -> List ls) = liftIO . U.wl_list_insert ls . toListItemLink

listInsertMany :: (MonadIO m, SomeList list a) => list a -> [Ptr a] -> m ()
listInsertMany (toListLink -> List ls) = liftIO . mapM_ (U.wl_list_insert ls . toListItemLink)

-- | Remove the element from the list.
listRemove :: (MonadIO m, SomeList list a) => list a -> m ()
listRemove (toListContainer -> ListOf p) = liftIO $ U.wl_list_remove $ toListItemLink p

-- | Insert a list to a list.
--
-- The other list is in an invalid state after this operation.
listInsertList :: (MonadIO m, SomeList l a, SomeList l' a) => l a -> l' a -> m ()
listInsertList (toListLink -> List ls) (toListLink -> List other) = liftIO $ U.wl_list_insert_list ls other

listFromList :: (MonadUnliftIO m, SomeList List a, Storable a) => [a] -> m (List a)
listFromList xs = do
  l <- listNew
  bracketOnError (liftIO $ newArray xs) (liftIO . free) $ \p ->
    listInsertMany l [ p `advancePtr` i | i <- [ length xs - 1, length xs - 2 .. 0 ] ]
  return l

listToList :: (MonadIO m, SomeList list a, Storable a) => list a -> m [a]
listToList (toListLink -> top) = listIterWith listSeekForward (== top) (\(ListOf p) -> liftIO $ peek p) top

listIterWith :: (MonadIO m, SomeList list a)
             => (List a -> m (List a)) -- ^ Seek list
             -> (List a -> Bool) -- ^ End condition
             -> (ListOf a -> m b) -- ^ Perform action on item
             -> list a
             -> m [b]
listIterWith seek condEnd act (toListLink -> top) = go =<< seek top
   where
     go pos | condEnd pos = return []
            | otherwise = do
                x <- act (toListContainer pos)
                fmap (x :) $ go =<< seek pos

listSeekForward :: MonadIO m => List a -> m (List a)
listSeekForward (List l) = liftIO $ List . next <$> peek l

listSeekBackward :: MonadIO m => List a -> m (List a)
listSeekBackward (List l) = liftIO $ List . prev <$> peek l


data TestElem = TestElem
  { field1, field2, field3 :: Int
  , testLink :: Wl_list
  } deriving (Eq, Show)

instance Storable TestElem where
  sizeOf    _ = 3 * sizeOf (0 :: Int) + sizeOf (def :: Wl_list)
  alignment _ = alignment (0 :: Int)
  peek p = TestElem
      <$> peekElemOff (castPtr p) 0
      <*> peekElemOff (castPtr p) 1
      <*> peekElemOff (castPtr p) 2
      <*> peek (castPtr p `plusPtr` (3 * sizeOf (0 :: Int)))
  poke p x = do
    pokeElemOff (castPtr p) 0 $ field1 x
    pokeElemOff (castPtr p) 1 $ field2 x
    pokeElemOff (castPtr p) 2 $ field3 x
    poke (castPtr p `plusPtr` (3 * sizeOf (5::Int))) $ testLink x

instance CF.HasCField TestElem "link" where

  type CFieldType TestElem "link" = Wl_list

  offset# _ _ = sizeOf (0 :: Int) * 3

testList :: IO (List TestElem)
testList = do
  list <- listNew
  listInsert list =<< new (TestElem 5 2 3 def)
  listInsert list =<< new (TestElem 1 2 3 def)
  return list

-- * Fixed

-- | Fixed-point number
type Fixed = Wl_fixed_t

fixedToInt :: Fixed -> Int
fixedToInt = unsafePerformIO . fmap fromIntegral . U.wl_fixed_to_int

fixedFromInt :: Integral a => a -> Fixed
fixedFromInt = unsafePerformIO . U.wl_fixed_from_int . fromIntegral

fixedToDouble :: Fixed -> Double
fixedToDouble = unsafePerformIO . fmap coerce . U.wl_fixed_to_double

fixedFromDouble :: Double -> Fixed
fixedFromDouble = unsafePerformIO . U.wl_fixed_from_double . coerce

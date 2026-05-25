{-# LANGUAGE DefaultSignatures    #-}
{-# LANGUAGE RoleAnnotations      #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ViewPatterns         #-}
{-# OPTIONS_GHC -Wno-orphans #-}

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
  -- * Arrays
  Array(..),
  arrayNew,
  arrayFromList,
  arrayToList,
  printArray,
  arrayFree,
  arrayCopy,
  arrayAddBytes,
  arrayForEach,

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

  -- * Fixed-point numbers
  Fixed(..),
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

import qualified HsBindgen.Runtime.HasCField as CF
import           UnliftIO

import           Control.Monad
import           Data.Coerce
import           Data.Default
import           Data.Kind
import           Data.Proxy
import           Foreign
import           Foreign.C.ConstPtr
import           Foreign.C.Types
import           GHC.Generics
import           GHC.Records
import           System.IO.Unsafe
import qualified Data.Fixed as F

-- | Dynamic array
--
-- A wl_array is a dynamic array that can only grow until released. It is
-- intended for relatively small allocations whose size is variable or not known
-- in advance. While construction of a wl_array does not require all elements to
-- be of the same size, wl_array_for_each() does require all elements to have
-- the same type and size.
newtype Array (a :: k) = Array { unwrap :: Ptr Wl_array }
  deriving stock (Eq, Ord, Show, Generic)

-- | Initializes a new empty array.
arrayNew :: MonadIO m => m (Array a)
arrayNew = liftIO $ Array <$> new (Wl_array 0 0 nullPtr)

arrayFromList :: forall a m. (MonadIO m, Storable a) => [a] -> m (Array a)
arrayFromList xs = liftIO $ do
  arr <- arrayNew
  ptr <- arrayAddBytes arr $ length xs * sizeOf (undefined :: a)
  pokeArray ptr xs
  return arr

arrayToList :: (Storable a, MonadIO m) => Array a -> m [a]
arrayToList arr = arrayForEach arr return

printArray :: MonadIO m => Array a -> m ()
printArray (Array p) = liftIO $ do
  arr <- peek p
  print arr

-- | Increase the size of the array by num bytes.
--
-- Returns a pointer to the beginning of the newly appended space.
arrayAddBytes :: MonadIO m => Array a -> Int -> m (Ptr b)
arrayAddBytes (Array arr) size = liftIO $
  throwIfNull "wl_array_add" $ castPtr <$> U.wl_array_add arr (fromIntegral size)

-- | @arrayCopy array source@: copies the contents of @source@ to @array@.
arrayCopy :: MonadIO m => Array a -> Array a -> m ()
arrayCopy (Array dst) (Array src) = liftIO $
  throwIfNeg_ (const "wl_array_copy") $ U.wl_array_copy dst src

-- | Releases the array data.
arrayFree :: MonadIO m => Array a -> m ()
arrayFree (Array arr) = liftIO $ U.wl_array_release arr

-- | Map over all elements of the array.
--
-- Assumes that all elements are equal-size.
arrayForEach :: forall a b m. (Storable a, MonadIO m) => Array a -> (a -> m b) -> m [b]
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

  if dataPP == nullPtr
     then return mempty
     else liftIO (peek dataPP) >>= go . castPtr

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

-- * Fixed

-- | Fixed-point number
--
-- A 24.8 signed fixed-point number with a sign bit, 23 bits
-- of integer precision and 8 bits of decimal precision. Consider @wl_fixed_t@
-- as an opaque struct with methods that facilitate conversion to and from
-- Double and Int types.
newtype Fixed = Fixed { unwrap :: Wl_fixed_t }
  deriving newtype (Eq, Ord)
  deriving stock (Generic)

instance Show Fixed where
  show (Fixed (Wl_fixed_t x)) = F.showFixed True (F.MkFixed $ fromIntegral x :: F.Fixed 256)

instance Num Fixed where
  (Fixed (Wl_fixed_t a)) + (Fixed (Wl_fixed_t b)) = Fixed . Wl_fixed_t $! a + b
  (Fixed (Wl_fixed_t a)) - (Fixed (Wl_fixed_t b)) = Fixed . Wl_fixed_t $! a - b
  (Fixed (Wl_fixed_t a)) * (Fixed (Wl_fixed_t b)) = Fixed . Wl_fixed_t $! div (a * b) 256
  negate (Fixed (Wl_fixed_t x)) = Fixed . Wl_fixed_t $! negate x
  abs (Fixed (Wl_fixed_t x)) = Fixed . Wl_fixed_t $! abs x
  signum (Fixed (Wl_fixed_t x)) = Fixed . Wl_fixed_t $! signum x
  fromInteger = fixedFromInt

instance Real Fixed where
  toRational (Fixed (Wl_fixed_t a)) = toRational a / 8

instance Fractional Fixed where
  (Fixed (Wl_fixed_t a)) / (Fixed (Wl_fixed_t b)) = Fixed . Wl_fixed_t $! div (a * 256) b
  recip (Fixed (Wl_fixed_t a)) = Fixed . Wl_fixed_t $! div (256 * 256) a
  fromRational r = Fixed . Wl_fixed_t $! round (r * 256)

fixedToInt :: Fixed -> Int
fixedToInt (Fixed x) = unsafePerformIO . fmap fromIntegral $ U.wl_fixed_to_int x

fixedFromInt :: Integral a => a -> Fixed
fixedFromInt = unsafePerformIO . fmap Fixed . U.wl_fixed_from_int . fromIntegral

fixedToDouble :: Fixed -> Double
fixedToDouble (Fixed x) = unsafePerformIO . fmap coerce $ U.wl_fixed_to_double x

fixedFromDouble :: Double -> Fixed
fixedFromDouble = unsafePerformIO . fmap Fixed . U.wl_fixed_from_double . coerce

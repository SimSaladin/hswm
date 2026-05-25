{-# LANGUAGE MagicHash            #-}
{-# LANGUAGE TypeFamilies #-}


module Wayland.UtilSpec where

import Bindings.Wayland.Util
import Bindings.Wayland.Util.Generated (Wl_list)

import Test.Hspec
import Foreign
import Foreign.C
import qualified HsBindgen.Runtime.HasCField as CF
import Data.Default
import Control.Exception

spec :: Spec
spec = do
  describe "Wayland.Util.Array" $ do
    it "initializes an empty array" $ do
      arr <- arrayNew :: IO (Array Int)
      xs <- arrayToList arr
      xs `shouldBe` []
      arrayFree arr

    it "initializes an array with elements" $ do
      arr <- arrayFromList [1, 2, 3] :: IO (Array Int)
      xs <- arrayToList arr
      xs `shouldBe` [1, 2, 3]
      arrayFree arr

  describe "Wayland.Util.Fixed" $ do
    it "from int" $ do
      fromInteger 100 `shouldBe` fixedFromInt (100 :: Int)
      fixedToInt (fixedFromInt (100 :: Int)) `shouldBe` 100

    it "to double" $ do
      fixedToDouble (fromInteger 100 :: Fixed) `shouldBe` 100

    it "from double" $ do
      fixedFromDouble 2.42 `shouldBe` 2.42


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

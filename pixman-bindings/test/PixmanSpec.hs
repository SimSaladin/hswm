{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}

module PixmanSpec where

import Control.DeepSeq
import Control.Exception
import Control.Monad
import Data.Maybe
import Data.Typeable
import Foreign hiding (rotate, void)
import GHC.Float (float2Double)
import Pixman
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck hiding (Fixed)
import Text.Printf

spec :: Spec
spec = do
  describe "Pixman" $ do
    it "create empty image" $ do
      img <- newEmptyImage X8R8G8B8 (100, 100) True
      f img

    it "create image with transform" $ do
      let ft = scaleTransform 5 5 False $ translate 5 5 False identityTransform
          t1 = fromFTransform ft
      pix <- do
        img <- newEmptyImage X8R8G8B8 (100, 100) True
        setTransform t1 img
        setFilter FilterBest [] img
        return img
      let comp :: CompositeParameters R32
          comp = compositeSize (100, 100) def
      res <- do
        img <- newEmptyImage X8R8G8B8 (100, 100) True
        setComposite SRC pix comp img
        return img
      imageWidth res `shouldBe` 100
      imageDepth res `shouldBe` 24
      f (ft, t1, pix, res)

    it "image from color" $ do
      img <- solidFillImage (toColor (0xFFAAAAAA :: Word32))
      imageWidth img `shouldBe` 0
      imageDepth img `shouldBe` 0
      imageStride img `shouldBe` 0
      imageData img `shouldBe` nullPtr
      imageSize img `shouldBe` (imageWidth img, imageHeight img)
      toColor (1.0 :: Double, 0 :: Double, 0 :: Double, 0 :: Double) `shouldBe` toColor (0x00FF0000 :: Word32) -- (65535, 0, 0, 0)
      toColor (0.0 :: Double, 0 :: Double, 0 :: Double, 0 :: Double) `shouldBe` toColor (0 :: Word64)

    prop "parts equal" $
      \a b c d ->
        let col = toColor (a, b, c, d)
         in do
              red col `shouldBe` a
              green col `shouldBe` b
              blue col `shouldBe` c
              alpha col `shouldBe` d

    prop "float is double" $
      \(fl :: Float) -> (realToFrac fl :: Fixed) `shouldSatisfy` approxEq 1e-2 1e-2 (double2Fixed (float2Double fl))

    it "image from bits" $ do
      withArray (replicate (50 * 50) maxBound) $ \bits -> do
        img <- newImageWithBits A8R8G8B8 (50, 50) True bits (50 * 4)
        let p = imageData img
        xs <- peekArray (imageWidth img * imageHeight img) p
        all (== maxBound) xs `shouldBe` True

    it "show instances" $ do
      f $ identityTransform @Transform
      f $ identityTransform @FTransform
      f $ mkBox' @Box16 12 5 42 82
      f $ mkBox' @Box32 12 5 42 82
      f $ mkBox' @Box64F 12 5 42 82
      f $ mkRect' @Rectangle16 12 5 42 82
      f $ mkRect' @Rectangle32 12 5 42 82
      f $ mkRect' @Rectangle64F 12 5 42 82
      f $ emptyRegion @Region16
      f $ fromRect @Region16 (5, 5) (100, 100)
      f $ fromRects @Region16 [mkBox' @Box16 5 5 100 100, mkBox' @Box16 50 0 500 500]
      f $ fromRects @Region32 [mkBox' @Box32 5 5 100 100, mkBox' @Box32 50 0 500 500]
      f $ fromRects @Region64F [mkBox' @Box64F 5 5 100 100, mkBox' @Box64F 50 0 500 500]
      f $ toColor (100 :: Word16, 100 :: Word16, 100 :: Word16, maxBound :: Word16)

    it "formats" $ do
      forM_ allFormats $ \x -> do
        void $ evaluate $ force (x, formatSupportedDest x, formatSupportedSource x)
        img <- newEmptyImage x (50, 50) True
        void $ f img

    it "computeCompositeRegion" $ do
      src <- newEmptyImage A8R8G8B8 (10, 100) True
      dst <- newEmptyImage A8R8G8B8 (100, 100) True
      let reg = computeCompositeRegion src Nothing dst (0, 0) (0, 0) (0, 0) (50, 50)
      void . evaluate $ force $ show reg

  describe "Triangles" $ do
    it "add triangles" $ do
      img <- do
        img <- newEmptyTypedImage @A8 (100, 100) True
        addTriangles (20, 20) [Triangle (Point (-5) 0) (Point 5 5) (Point 6 0)] img
        return img
      f img

  describe "Fixed" $ do
    prop "Read/Show" $
      \(x :: Fixed) -> (read . show) x `shouldBe` x
    prop "Eq" $
      \(x :: Fixed) -> x `shouldBe` x
    it "minBound / maxBound" $ do
      minBound @Fixed `shouldSatisfy` (< maxBound @Fixed)
      rnf (minBound @Fixed) `shouldBe` ()
    prop "minBound always smaller" $
      \x -> (fromIntegral @Int x :: Fixed) `shouldSatisfy` (>= minBound @Fixed)
    prop "maxBound always larger" $
      \x -> (fromIntegral @Int x :: Fixed) `shouldSatisfy` (<= maxBound @Fixed)

    prop "fromInteger" $ \(i :: Integer) -> (fromInteger i :: Fixed) `shouldSatisfy` (`seq` True)
    prop "signum" $ \i -> signum (fromInteger i :: Fixed) `shouldSatisfy` (`elem` [-1, 0, 1])
    prop "abs" $ \i -> abs (fromInteger i :: Fixed) `shouldSatisfy` (>= 0)
    prop "negate" $ \i -> negate (abs (fromInteger i :: Fixed)) `shouldSatisfy` (<= 0)
    prop "-/+" $ \i -> ((fromInteger (i `mod` 5000) :: Fixed) + 5 - 10) `shouldBe` fromIntegral ((i `mod` 5000) - 5)

    prop "fromRational . toRational == id" $ do
      do
        x <- choose (-(2 ^ 6), 2 ^ 6 :: Double)
        let r = toRational x
        return $ toRational (fromRational r) `shouldBe` r

    prop "fixed2int . int2fixed == id" $
      do
        x <- choose (-(2 ^ 15), 2 ^ 15 :: Int32)
        return $ (fixed2Int . int2Fixed) x `shouldBe` x

    prop "fixed2double . double2fixed == id" $
      \x -> (fixed2Double . double2Fixed) x `shouldSatisfy` approxEq 1e-2 1e-2 x

    prop "fixed * fixed" $
      do
        x <- choose (-(2 ^ 6), 2 ^ 6 :: Int32)
        y <- choose (-10, 10 :: Int32)
        return $ fixed2Int (int2Fixed x * int2Fixed y) `shouldBe` (x * y)

    prop "fixed / fixed" $
      do
        x <- choose (-(2 ^ 6), 2 ^ 6 :: Int32)
        y <- choose (-10, 10 :: Int32)
        return $ y /= 0 ==> fixed2Int (int2Fixed x / int2Fixed y) `shouldBe` (x `div` y)

    it "printfarg" $ do
      printf "%s" (124 :: Fixed) `shouldBe` "124"
      printf "%3.3f" (12.1245 :: Fixed) `shouldBe` "12.1245"

  regionSpec (emptyRegion @Region16)
  regionSpec (emptyRegion @Region32)
  regionSpec (emptyRegion @Region64F)

  describe "Color" $ do
    it "from Word32" $ do
      toColor (maxBound :: Word32) `shouldBe` toColor (maxBound :: Color)
      toColor (minBound :: Word32) `shouldBe` toColor (minBound :: Color)
      toColor (0x01095599 :: Word32)
        `shouldBe` toColor (0x0909 :: Word16, 0x5555 :: Word16, 0x9999 :: Word16, 0x0101 :: Word16)

    it "from Word64" $ do
      toColor (0x1234005011250012 :: Word64)
        `shouldBe` toColor (0x0050 :: Word16, 0x1125 :: Word16, 0x0012 :: Word16, 0x1234 :: Word16)

    it "read string" $ do
      toColor "#FF000055" `shouldBe` toColor (0xFF000055 :: Word32)

    it "read string" $ do
      toColor "#112233" `shouldBe` toColor (0xFF112233 :: Word32)

  describe "sample-y" $ do
    it "sampleFloorY" $ sampleFloorY 2 24 `shouldSatisfy` (<= 2)

    it "sampleCeilY" $ sampleCeilY 15000 4 `shouldSatisfy` (>= 15000)

  describe "transforms" $ do
    it "IsTransform" $
      let
        t = identityTransform @Transform
        t2 = scaleTransform 5 5 True t
        t3 = translate 2 5 True t2
        t4 = invertTransform t3
        t5 = multiplyTransform t4 t3
        b1 = transformBounds t5 (mkBox' 5 5 100 100)
        t6 = rotate 1 2 True t5
       in
        b1 `seq` t6 `seq` (() `shouldBe` ())

f :: (Show a) => a -> IO ()
f = void . evaluate . force . show

regionSpec :: forall a. (IsRegion a, Show a, Arbitrary a, Arbitrary (PositionScalar (RType a)), Ord (PositionScalar (RType a))) => a -> Spec
regionSpec ty = describe ("Region " ++ show (typeOf ty)) $ do
  it "empty region is empty" $ do
    regionIsEmpty (emptyRegion @a) `shouldBe` True
  it "fromRect" $ do
    f $ fromRect @a (10, 10) (500, 500)

  it "fromImage" $ do
    img <- newTypedImageWithBits (100, 100) True nullPtr 0
    let bpp = formatBPP (imageFormat img)
    fill (imageData img, imageStride img, bpp, (1, 1)) (5, 5) maxBound
    let reg = fromImage @a img
    regionSelfCheck reg `shouldBe` True

  it "fromImage fail" $ do
    img <- newEmptyTypedImage @X4B4G4R4 (100, 100) True
    let reg = fromImage @a (fromJust $ cast img)
    evaluate reg `shouldThrow` anyException

  it "region properties" $ do
    let reg = fromRect @a (10, 10) (100, 100)
    boxPoints (extents reg) `shouldBe` ((10, 10), (100 + 10, 100 + 10))
    regionNumRects reg `shouldBe` 1
    rectangles reg `shouldBe` [mkBox (10, 10) (100 + 10, 100 + 10)]

  prop "fromExtents" $
    \exts -> fromExtents @a exts `shouldSatisfy` (\reg -> exts == extents reg || (let ((x1, y1), (x2, y2)) = boxPoints exts in x1 == x2 || y1 == y2))

  prop "containsRect" $
    \exts -> fromExtents @a exts `shouldSatisfy` (\reg -> containsRectangle exts reg == RegionIn || (let ((x1, y1), (x2, y2)) = boxPoints exts in x1 == x2 || y1 == y2))

  prop "subtract/union" $
    \(a :: a) b -> ((a `subtractRegion` b) `unionRegion` b) `shouldBe` (a `unionRegion` b)

approxEq :: (Real a) => Double -> Double -> a -> a -> Bool
approxEq absTol relTol a b =
  abs (realToFrac a - realToFrac b) <= max absTol (relTol * max (abs $ realToFrac a) (abs $ realToFrac b))

instance Arbitrary Fixed where
  arbitrary = realToFrac <$> (arbitrary @Double)

instance (IsBox (Box a), Arbitrary (PositionScalar a), Ord (PositionScalar a)) => Arbitrary (Box a) where
  arbitrary = do
    p1@(x1, y1) <- arbitrary
    p2 <- arbitrary `suchThat` (\(x2, y2) -> x1 <= x2 && y1 <= y2)
    return $ mkBox p1 p2

instance (IsRegion (Region a), Arbitrary (PositionScalar (RType (Region a))), Ord (PositionScalar (RType (Region a)))) => Arbitrary (Region a) where
  arbitrary = fromRects <$> arbitrary

{-# LANGUAGE TypeApplications #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}

module PixmanSpec where

import Control.DeepSeq
import Control.Exception
import Control.Monad
import Data.Typeable
import Foreign hiding (void)
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
      img <- mkImage $ newEmptyImage X8R8G8B8 (100, 100) True
      f img

    it "create image with transform" $ do
      let ft = scaleTransform 5 5 False $ translateTransform 5 5 False identityTransform
          t1 = fromFTransform ft
      pix <-
        mkImage $
          setFilter FilterBest [] $
            setTransform t1 $
              newEmptyImage X8R8G8B8 (100, 100) True
      let comp :: CompositeParameters R32
          comp = (compositeParameters32){size = (100, 100)}
      res <- mkImage $ setComposite Src pix comp $ newEmptyImage X8R8G8B8 (100, 100) True
      imageWidth res `shouldBe` 100
      imageDepth res `shouldBe` 24
      f (ft, t1, pix, res)

    it "image from color" $ do
      img <- mkImage $ solidFillImage $ fromColorComponents @Word16 100 100 100 maxBound
      imageWidth img `shouldBe` 0
      imageDepth img `shouldBe` 0
      imageStride img `shouldBe` 0
      imageData img `shouldBe` nullPtr
      imageSize img `shouldBe` (imageWidth img, imageHeight img)
      toColorComponent (1.0 :: Double) `shouldBe` 65535
      toColorComponent (0.0 :: Double) `shouldBe` 0

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
        img <- mkImage $ newImageWithBits A8R8G8B8 (50, 50) True bits (50 * 4)
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
      f $ regionFromRect @Region16 (5, 5) (100, 100)
      f $ regionFromRects @Region16 [mkBox' @Box16 5 5 100 100, mkBox' @Box16 50 0 500 500]
      f $ regionFromRects @Region32 [mkBox' @Box32 5 5 100 100, mkBox' @Box32 50 0 500 500]
      f $ regionFromRects @Region64F [mkBox' @Box64F 5 5 100 100, mkBox' @Box64F 50 0 500 500]
      f $ fromColorComponents @Word16 100 100 100 maxBound

    it "formats" $ do
      forM_ allFormats $ \x -> do
        void $ evaluate $ force (x, formatSupportedDest x, formatSupportedSource x)
        img <- mkImage $ newEmptyImage x (50, 50) True
        void $ f img

    it "computeCompositeRegion" $ do
      src <- mkImage $ newEmptyImage A8R8G8B8 (10, 100) True
      dst <- mkImage $ newEmptyImage A8R8G8B8 (100, 100) True
      let reg = computeCompositeRegion src Nothing dst (0, 0) (0, 0) (0, 0) (50, 50)
      void . evaluate $ force $ show reg

  describe "Fixed" $ do
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
        t3 = translateTransform 2 5 True t2
        t4 = invertTransform t3
        t5 = multiplyTransform t4 t3
        b1 = transformBounds t5 (mkBox' 5 5 100 100)
        t6 = rotateTransform True 1 2 t5
       in
        b1 `seq` t6 `seq` (() `shouldBe` ())

f :: (Show a) => a -> IO ()
f = void . evaluate . force . show

regionSpec :: forall a. (IsRegion a, Show a) => a -> Spec
regionSpec ty = describe ("Region " ++ show (typeOf ty)) $ do
  it "empty region is empty" $ do
    regionIsEmpty (emptyRegion @a) `shouldBe` True
  it "regionFromRect" $ do
    f $ regionFromRect @a (10, 10) (500, 500)

  it "regionFromImage" $ do
    let fmt = A1 -- X4B4G4R4
    img <- mkImage $ newImageWithBits fmt (100, 100) True nullPtr 0
    let bpp = formatBPP (imageFormat img)
    fill (imageData img, imageStride img, bpp, (1, 1)) (5, 5) maxBound
    let reg = regionFromImage @a img
    regionSelfCheck reg `shouldBe` True

  it "regionFromImage fail" $ do
    img <- mkImage $ newEmptyImage X4B4G4R4 (100, 100) True
    let reg = regionFromImage @a img
    evaluate reg `shouldThrow` anyException

  it "region properties" $ do
    let reg = regionFromRect @a (10, 10) (100, 100)
    boxPoints (regionExtents reg) `shouldBe` ((10, 10), (100 + 10, 100 + 10))
    regionNumRects reg `shouldBe` 1
    regionRectangles 1 reg `shouldBe` [mkBox (10, 10) (100 + 10, 100 + 10)]

approxEq :: (Real a) => Double -> Double -> a -> a -> Bool
approxEq absTol relTol a b =
  abs (realToFrac a - realToFrac b) <= max absTol (relTol * max (abs $ realToFrac a) (abs $ realToFrac b))

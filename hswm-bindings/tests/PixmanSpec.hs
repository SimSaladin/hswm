{-# LANGUAGE TypeApplications #-}

-- |
-- Module      : PixmanSpec
-- Description : Short description
-- Copyright   : (c) Samuli Thomasson, 2026
--
-- Maintainer  : Samuli Thomasson <samuli.thomasson@pm.me>
-- Stability   : unstable
-- Portability : unportable
--
module PixmanSpec where

import Control.Monad
import Test.Hspec
import Pixman
import Foreign

spec :: Spec
spec = describe "Pixman" $ do
  it "create empty image" $ do
    let img = toImage $ newImage PIXMAN_x8r8g8b8 (100, 100) True
    print img

  it "create image with transform" $ do
    let ft = transformScale (transformTranslate transformIdentity 5 5 False) 5 5 False
        t1 = fromFTransform ft
        pix = toImage $ newImage PIXMAN_x8r8g8b8 (100, 100) True
          +$ imageSetTransform t1
          +$ imageSetFilter' FilterBest
        res = toImage $ newImage PIXMAN_x8r8g8b8 (100, 100) True
               +$ imageComposite32 pix ((def :: ImageCompositeParams Int32 Int32) { compositeSize = (100, 100) })
    imageWidth res `shouldBe` 100
    imageDepth res `shouldBe` 24
    print (ft, t1, pix, res)

  it "image from color" $ do
    let img = toImage $ solidImage $ colorFromParts @Word16 100 100 100 maxBound
    imageWidth img `shouldBe` 0
    imageDepth img `shouldBe` 0
    imageStride img `shouldBe` 0
    imageData img `shouldBe` nullPtr

  it "image from bits" $ do
    withArray (replicate (50 * 50) maxBound) $ \bits -> do
      let img = toImage $ imageWithBits PIXMAN_a8r8g8b8 (50, 50) True bits (50 * 4)
      let p = imageData img
      xs <- peekArray (imageWidth img * imageHeight img) p
      all (== maxBound) xs `shouldBe` True

  it "show instances" $ do
    print $ box16 12 5 42 82
    print $ box32 12 5 42 82
    print $ box64F 12 5 42 82
    print $ rectangle16 12 5 42 82
    print $ rectangle32 12 5 42 82
    print $ rectangle64F 12 5 42 82

    print $ newRegion @Region16
    print $ regionFromRect @Region16 (5, 5) (100, 100)
    print $ regionFromRects @Region16 [box16 5 5 100 100, box16 50 0 500 500]
    print $ regionFromRects @Region32 [box32 5 5 100 100, box32 50 0 500 500]
    print $ regionFromRects @Region64F [box64F 5 5 100 100, box64F 50 0 500 500]

    print $ colorFromParts @Word16 100 100 100 maxBound

  it "formats" $ do
    forM_ allFormats $ \x -> print (x, formatSupportedDest x, formatSupportedSource x)

  it "computeCompositeRegion" $ do
    let src = toImage $ newImage PIXMAN_a8r8g8b8 (10, 100) True
    let dst = toImage $ newImage PIXMAN_a8r8g8b8 (100, 100) True
    let reg = computeCompositeRegion src Nothing dst (0, 0) (0, 0) (0, 0) (50, 50)
    print reg

{-# LANGUAGE TypeApplications #-}

module PixmanSpec where

import Control.Monad
import Test.Hspec
import Pixman
import Foreign hiding (void)
import Control.Exception
import Control.DeepSeq

spec :: Spec
spec = describe "Pixman" $ do
  it "create empty image" $ do
    img <- toImage $ newImage X8R8G8B8 (100, 100) True
    f img

  it "create image with transform" $ do
    let ft = transformScale 5 5 False $ transformTranslate 5 5 False transformIdentity
        t1 = fromFTransform ft
    pix <- toImage $
          imageSetFilter FilterBest [] $
          imageSetTransform t1 $
            newImage X8R8G8B8 (100, 100) True
    res <- toImage $
          imageSetComposite32 (setComposite32 pix) { size = (100, 100) } $
          newImage X8R8G8B8 (100, 100) True
    imageWidth res `shouldBe` 100
    imageDepth res `shouldBe` 24
    f (ft, t1, pix, res)

  it "image from color" $ do
    img <- toImage $ solidImage $ colorFromParts @Word16 100 100 100 maxBound
    imageWidth img `shouldBe` 0
    imageDepth img `shouldBe` 0
    imageStride img `shouldBe` 0
    imageData img `shouldBe` nullPtr

  it "image from bits" $ do
    withArray (replicate (50 * 50) maxBound) $ \bits -> do
      img <- toImage $ imageWithBits A8R8G8B8 (50, 50) True bits (50 * 4)
      let p = imageData img
      xs <- peekArray (imageWidth img * imageHeight img) p
      all (== maxBound) xs `shouldBe` True

  it "show instances" $ do
    f $ box16 12 5 42 82
    f $ box32 12 5 42 82
    f $ box64F 12 5 42 82
    f $ rectangle16 12 5 42 82
    f $ rectangle32 12 5 42 82
    f $ rectangle64F 12 5 42 82
    f $ emptyRegion @Region16
    f $ regionFromRect @Region16 (5, 5) (100, 100)
    f $ regionFromRects @Region16 [box16 5 5 100 100, box16 50 0 500 500]
    f $ regionFromRects @Region32 [box32 5 5 100 100, box32 50 0 500 500]
    f $ regionFromRects @Region64F [box64F 5 5 100 100, box64F 50 0 500 500]
    f $ colorFromParts @Word16 100 100 100 maxBound

  it "formats" $ do
    forM_ allFormats $ \x -> do
      evaluate $ force (x, formatSupportedDest x, formatSupportedSource x)

  it "computeCompositeRegion" $ do
    src <- toImage $ newImage A8R8G8B8 (10, 100) True
    dst <- toImage $ newImage A8R8G8B8 (100, 100) True
    let reg = computeCompositeRegion src Nothing dst (0, 0) (0, 0) (0, 0) (50, 50)
    void . evaluate $ force $ show reg

f :: Show a => a -> IO ()
f = void . evaluate . force . show

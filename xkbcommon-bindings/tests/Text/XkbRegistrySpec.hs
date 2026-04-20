{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE DataKinds #-}


module Text.XkbRegistrySpec where

import Test.Hspec
import Text.XkbCommon.Registry

spec :: Spec
spec = do
  describe "XkbRegistry" $ do
    it "gets context and iterates" $ do
      ctx <- _rxkbContextNew 0
      ok <- rxkbContextParse ctx "evdev"
      ok `shouldBe` True

      -- models
      info <- getRulesInfo ctx
      print (length $ models info, length $ layouts info, length $ optionGroups info)
      -- mapM_ print $ models info
      -- mapM_ print $ layouts info
      -- mapM_ print $ optionGroups info

      _rxkbContextUnref ctx

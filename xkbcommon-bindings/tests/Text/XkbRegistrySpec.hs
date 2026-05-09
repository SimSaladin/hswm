{-# LANGUAGE DataKinds #-}

module Text.XkbRegistrySpec where

import Test.Hspec
import Text.XkbCommon.Registry

spec :: Spec
spec = do
  describe "XkbRegistry" $ do
    it "create with defaults" $ do
      info <- createRegistry def
      print (length $ models info, length $ layouts info, length $ optionGroups info)
      mapM_ print $ models info
      mapM_ print $ layouts info
      mapM_ print $ optionGroups info

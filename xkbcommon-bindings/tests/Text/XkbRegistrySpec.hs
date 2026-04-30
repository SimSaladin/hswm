{-# LANGUAGE DataKinds #-}

module Text.XkbRegistrySpec where

import Test.Hspec
import Text.XkbCommon.Registry

spec :: Spec
spec = do
  describe "XkbRegistry" $ do
    it "gets context and iterates" $ do
      ctx <- createRxkbContext 0
      rxkbContextParse ctx "evdev"

      -- models
      info <- getRulesInfo ctx
      print (length $ models info, length $ layouts info, length $ optionGroups info)
      mapM_ print $ models info
      mapM_ print $ layouts info
      mapM_ print $ optionGroups info

    it "context parse default" $ do
      ctx <- createRxkbContext 0
      rxkbContextParseDefault ctx
      info <- getRulesInfo ctx
      print (length $ models info, length $ layouts info, length $ optionGroups info)

    it "registry create default" $ do
      ctx <- createRegistry def
      _info <- getRulesInfo ctx
      return ()

{-# LANGUAGE DataKinds #-}

module Text.XkbRegistrySpec where

import Control.DeepSeq
import Data.IORef
import System.IO.Unsafe
import Test.Hspec
import Text.XkbCommon.Registry

spec :: Spec
spec = do
  describe "XkbRegistry" $ do
    it "create with defaults" $ do
      info <- force <$> createRegistry def
      -- mapM_ print $ models info
      -- mapM_ print $ layouts info
      -- mapM_ print $ optionGroups info
      info.models `shouldNotBe` []
      info.layouts `shouldNotBe` []
      info.optionGroups `shouldNotBe` []

    it "create with settings" $ do
      info <-
        force
          <$> createRegistry
            def
              { ruleSet = Just "evdev"
              -- , defaultIncludePaths = False
              }
      info.models `shouldNotBe` []

    it "works pure" $ do
      let info =
            unsafePerformIO $
              createRegistry
                def
                  { ruleSet = Just "evdev"
                  }
      info.models `shouldNotBe` []

    it "has logging" $ do
      logref <- newIORef []
      let myLogFn l s = modifyIORef logref (++ [(l, s)])
      ctx <-
        newRegistryContext
          def
            { registryLogLevel = Just LevelDebug
            , loadExoticRules = True
            , setLogFunction = Just myLogFn
            }
      _ <- contextLogLevel ctx
      res <- getRegistry ctx Nothing
      models (force res) `shouldNotBe` []
      logs <- readIORef logref
      map fst logs `shouldContain` [LevelDebug]

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections #-}
{-# OPTIONS_GHC -Wno-ambiguous-fields #-}

module Text.XkbCommonSpec where

import Control.Exception
import Control.Monad
import Data.Either
import Data.IORef
import Data.Maybe
import Test.Hspec
import Test.Hspec.QuickCheck
import Text.Read
import Text.XkbCommon

spec :: Spec
spec = do
  describe "KeySyms" $ do
    it "from name" $ do
      keysymFromNameUnsafe "a" `shouldBe` 97
      keysymFromNameUnsafe "Return" `shouldBe` 65293

    it "get name" $ do
      keysymNameUnsafe 97 `shouldBe` "a"
      keysymNameUnsafe 65293 `shouldBe` "Return"

    it "to UTF8" $ do
      keysymToUTF8 97 `shouldBe` Just "a"

    modifyMaxSuccess (* 8) $
      prop "fromName . keysymName == id" $
        \x -> (keysymName >=> keysymFromName) x `shouldSatisfy` (`elem` [Just x, Nothing])

    modifyMaxSuccess (* 8) $
      prop "Has UTF8 representation" $
        \x -> keysymToUTF8 x `shouldSatisfy` (\r -> length r `seq` True)

    modifyMaxSuccess (* 8) $
      prop "toUTF32 . fromUTF32 == id" $
        \x -> (keysymToUTF32 >=> keysymFromUTF32) x `shouldSatisfy` (`elem` [Just x, Nothing])

  describe "XkbContext" $ do
    it "creates and destroys a context" $ do
      ctx <- newContext def
      appendIncludePath ctx "/"
      incs <- getIncludePath ctx
      incs `shouldContain` ["/"]

    it "works with custom log function" $ do
      logsVar <- newIORef []
      let logFn l s = atomicModifyIORef logsVar $ (,()) <$> (++ [(l, s)])
      ctx <-
        newContext
          def
            { setLogFunction = Just logFn
            , setLogVerbosity = Just 10
            , setLogLevel = Just LevelDebug
            }
      appendIncludePath ctx "/"
      logs <- readIORef logsVar
      logs `shouldSatisfy` (> 1) . length

  describe "Keymap" $ do
    it "creates RMLVO builder and keymap with it" $ do
      withContext def $ \ctx -> do
        builder <- newBuilder ctx "" ""
        addLayout builder "us"
        addLayout builder "us(dvorak)"
        _keymap <- keymapFromBuilder TextV1 builder
        return ()

    it "from names" $ do
      withContext def $ \ctx -> do
        keymap <- keymapFromNames ctx TextV1 def{layouts = ["us", "fi"]}
        numLs <- keymapLayoutCount keymap
        numLs `shouldBe` 2
        l1 <- keymapLayoutName keymap 0
        l1 `shouldBe` Just "English (US)"
        numLeds <- keymapLedCount keymap
        numLeds `shouldBe` 14
        ledNames <- forM [0 .. numLeds - 1] $ \i -> keymapLedName keymap (fromIntegral i)
        ledNames `shouldContain` map Just ["Caps Lock", "Num Lock", "Scroll Lock"]

    it "keymap written into fd" $ do
      withContext def $ \ctx -> do
        let rulenames = def{layouts = ["us"]}
        keymap <- keymapFromNames ctx TextV1 rulenames
        withKeymapFd keymap TextV1 $ \_fd -> do
          return ()

    it "fails unknown layout" $ do
      ctx <- newContext def{setLogLevel = Just LevelCritical}
      r <- try @XkbCommonException $ keymapFromNames ctx TextV1 def{layouts = ["foobar"]}
      r `shouldSatisfy` isLeft

  describe "Layout" $ do
    it "Reads option from texts" $ do
      let r :: String -> LayoutOption
          r s = fromMaybe (error $ "read: no parse: " ++ s) $ readMaybe s
      r "grp:alts_tog" `shouldBe` LayoutOption "grp" "alts_tog"
      r "a:basic_13-24" `shouldBe` LayoutOption "a" "basic_13-24"
      r "  a:b  " `shouldBe` LayoutOption "a" "b"
      r " ( a:b ) " `shouldBe` LayoutOption "a" "b"
      r "a:b!123" `shouldBe` LayoutOption "a" "b"

    it "Reads Layout from texts" $ do
      let rkmap :: String -> Layout
          rkmap s = fromMaybe (error $ "read: no parse: " ++ s) $ readMaybe s
      rkmap "us(intl)" `shouldSatisfy` (== "us") . (.baseLayout)
      rkmap "  (us  (intl))" `shouldSatisfy` (== "us") . (.baseLayout)
      rkmap "(fi)" `shouldSatisfy` (== "fi") . (.baseLayout)
      rkmap "lay-out(123)" `shouldSatisfy` (== "lay-out") . (.baseLayout)
      rkmap "  l  (  v  )  " `shouldBe` Layout "l" (Just "v") []

  describe "XkbState" $ do
    it "creates xkbstate" $ do
      withContext def $ \ctx -> do
        keymap <- keymapFromNames ctx TextV1 def{layouts = ["us"]}
        xst <- newState keymap
        ksym <- keyGetOneSym xst 42
        ksym `shouldBe` 103

    it "works with pure builder" $ do
      let toKM = keymapFromBuilderPure TextV1
          kb =
            setRules "evdev" $
              setModel "pc104" $
                withOption True "lv3:ralt_switch" $
                  withOption False "unknown:unknown" $
                    withLayout False "fi(dvorak)" $
                      withLayout False "unset" $
                        withLayout False "fi"{options = ["foo:bar"]} $
                          withLayout True "us" def
      show (toKM kb) `shouldNotBe` ""
      toKM kb `shouldNotBe` toKM kb
      toKM (setModel "pc86" kb) `shouldNotBe` toKM kb

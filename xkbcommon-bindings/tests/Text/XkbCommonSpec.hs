{-# LANGUAGE OverloadedStrings #-}

module Text.XkbCommonSpec where

import Control.Monad
import Test.Hspec
import Text.XkbCommon

spec :: Spec
spec = do
  describe "XkbContext" $ do
    it "xkbkeysymFromName" $ do
      xkbKeysymFromNameUnsafe "a" `shouldBe` 97
      xkbKeysymFromNameUnsafe "Return" `shouldBe` 65293

    it "xkbkeysymName" $ do
      xkbKeysymNameUnsafe 97 `shouldBe` "a"
      xkbKeysymNameUnsafe 65293 `shouldBe` "Return"

    it "keysym to utf8" $ do
      xkbKeysymToUtf8 97 `shouldBe` Just "a"

    it "creates and destroys a context" $ do
      ctx <- createXkbContext def
      appendIncludePath ctx "/"
      getIncludePaths ctx >>= print
      return ()

    it "creates rmlvo builder and keymap with it" $ do
      withXkbContext def $ \ctx -> do
        builder <- xkbRmlvoBuilderNew ctx "" ""
        xkbRmlvoBuilderAppendLayout builder "us" []
        _keymap <- createKeymapFromBuilder builder keymapFormatTextV1
        return ()

    it "keymap from rulenames" $ do
      withXkbContext def $ \ctx -> do
        let rulenames = def { layouts = ["us", "fi"] }
        keymap <- createKeymapFromNames ctx rulenames keymapFormatTextV1
        numLs <- keymapNumLayouts keymap
        numLs `shouldBe` 2
        l1 <- keymapLayoutName keymap 0
        l1 `shouldBe` Just "English (US)"
        numLeds <- keymapNumLeds keymap
        numLeds `shouldBe` 14
        _ledNames <- forM [0..numLeds-1] $ \i -> keymapLedName keymap (fromIntegral i)
        -- ledNames `shouldBe` []
        return ()

    it "keymap written into fd" $ do
      withXkbContext def $ \ctx -> do
        let rulenames = def { layouts = ["us"] }
        keymap <- createKeymapFromNames ctx rulenames keymapFormatTextV1
        withKeymapFd keymap keymapFormatTextV1 $ \_fd -> do
          return ()

    it "creates xkbstate" $ do
      withXkbContext def $ \ctx -> do
        let rulenames = def { layouts = ["us"] }
        keymap <- createKeymapFromNames ctx rulenames keymapFormatTextV1
        xst <- createXkbState keymap
        ksym <- xkbStateKeySym xst 42
        ksym `shouldBe` 103
        return ()

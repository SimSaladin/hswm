{-# LANGUAGE OverloadedStrings #-}

module Text.XkbCommonSpec where

import Control.Monad
import Test.Hspec
import Text.XkbCommon

spec :: Spec
spec = do
  describe "KeySyms" $ do
    it "xkbkeysymFromName" $ do
      keysymFromNameUnsafe "a" `shouldBe` 97
      keysymFromNameUnsafe "Return" `shouldBe` 65293

    it "xkbkeysymName" $ do
      keysymNameUnsafe 97 `shouldBe` "a"
      keysymNameUnsafe 65293 `shouldBe` "Return"

    it "keysym to utf8" $ do
      keysymToUtf8 97 `shouldBe` Just "a"

  describe "XkbContext" $ do
    it "creates and destroys a context" $ do
      ctx <- createXkbContext def
      contextIncludePathAppend ctx "/"
      contextIncludePathGet ctx >>= print
      return ()

  describe "Keymaps" $ do
    it "creates rmlvo builder and keymap with it" $ do
      withXkbContext def $ \ctx -> do
        builder <- newBuilder ctx "" ""
        appendLayout builder "us"
        _keymap <- createKeymapFromBuilder builder KeymapFormatTextV1
        return ()

    it "keymap from rulenames" $ do
      withXkbContext def $ \ctx -> do
        let rulenames = def { layouts = ["us", "fi"] }
        keymap <- createKeymapFromNames ctx rulenames KeymapFormatTextV1
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
        keymap <- createKeymapFromNames ctx rulenames KeymapFormatTextV1
        withKeymapFd keymap KeymapFormatTextV1 $ \_fd -> do
          return ()

  describe "XkbState" $ do
    it "creates xkbstate" $ do
      withXkbContext def $ \ctx -> do
        let rulenames = def { layouts = ["us"] }
        keymap <- createKeymapFromNames ctx rulenames KeymapFormatTextV1
        xst <- createXkbState keymap
        ksym <- xkbStateKeySym xst 42
        ksym `shouldBe` 103
        return ()

module Text.XkbCommonSpec where

import Test.Hspec
import Text.XkbCommon

spec :: Spec
spec = do
  describe "XkbContext" $ do
    it "xkbkeysymFromName" $ do
      xkbKeysymFromNameUnsafe "a" mempty `shouldBe` 97
      xkbKeysymFromNameUnsafe "Return" mempty `shouldBe` 65293

    it "xkbkeysymGetName" $ do
      xkbKeysymGetNameUnsafe 97 `shouldBe` "a"
      xkbKeysymGetNameUnsafe 65293 `shouldBe` "Return"

    it "creates and destroys a context" $ do
      ctx <- xkbContextNew mempty
      xkbContextUnref ctx

    it "creates rmlvo builder and keymap with it" $ do
      withXkbContext mempty $ \ctx -> do
        builder <- xkbRmlvoBuilderNew ctx "" "" mempty
        ok <- xkbRmlvoBuilderAppendLayout builder "us" "" []
        ok `shouldBe` True
        keymap <- xkbKeymapNewFromRmlvo builder xkbKeymapFormatTextV1 mempty
        xkbRmlvoBuilderUnref builder
        xkbKeymapUnref keymap

    it "keymap from rulenames" $ do
      withXkbContext mempty $ \ctx -> do
        let rulenames = def { layout = "us" }
        keymap <- xkbKeymapNewFromNames2 ctx rulenames xkbKeymapFormatTextV1 mempty
        xkbKeymapUnref keymap

    it "keymap written into fd" $ do
      withXkbContext mempty $ \ctx -> do
        let rulenames = def { layout = "us" }
        keymap <- xkbKeymapNewFromNames2 ctx rulenames xkbKeymapFormatTextV1 mempty
        withXkbKeymapFd keymap $ \_fd -> do
          return ()
        xkbKeymapUnref keymap

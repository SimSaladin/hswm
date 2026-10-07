{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  ({
    flags = {};
    package = {
      specVersion = "3.6";
      identifier = { name = "Cabal-hooks"; version = "3.16"; };
      license = "BSD-3-Clause";
      copyright = "2025, Cabal Development Team";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "API for the Hooks build-type";
      description = "User-facing API for the Hooks build-type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/Cabal-hooks-3.16.tar.gz";
      sha256 = "59ba20b258fad4a3621c9c7f5513ba052667d091bb674b3829cc131de4df48e8";
    });
  }) // {
    package-description-override = "cabal-version: 3.6\r\nname:          Cabal-hooks\r\nversion:       3.16\r\ncopyright:     2025, Cabal Development Team\r\nlicense:       BSD-3-Clause\r\nlicense-file:  LICENSE\r\nauthor:        Cabal Development Team <cabal-devel@haskell.org>\r\nmaintainer:    cabal-devel@haskell.org\r\nhomepage:      http://www.haskell.org/cabal/\r\nbug-reports:   https://github.com/haskell/cabal/issues\r\nsynopsis:      API for the Hooks build-type\r\ndescription:\r\n  User-facing API for the Hooks build-type.\r\ncategory:       Distribution\r\nbuild-type:     Simple\r\n\r\nextra-doc-files:\r\n  README.md CHANGELOG.md\r\n\r\nsource-repository head\r\n  type:     git\r\n  location: https://github.com/haskell/cabal/\r\n  subdir:   Cabal-hooks\r\n\r\nlibrary\r\n  default-language: Haskell2010\r\n  hs-source-dirs: src\r\n\r\n  build-depends:\r\n    , Cabal-syntax    >= 3.16      && < 3.17\r\n    , Cabal           >= 3.16      && < 3.17\r\n    , base            >= 4.13      && < 5\r\n    , containers      >= 0.5.0.0   && < 0.9\r\n    , transformers    >= 0.5.6.0   && < 0.7\r\n\r\n  ghc-options: -Wall -fno-ignore-asserts -Wtabs -Wincomplete-uni-patterns -Wincomplete-record-updates\r\n\r\n  exposed-modules:\r\n    Distribution.Simple.SetupHooks\r\n\r\n  other-extensions:\r\n    BangPatterns\r\n    CPP\r\n    DefaultSignatures\r\n    DeriveDataTypeable\r\n    DeriveFoldable\r\n    DeriveFunctor\r\n    DeriveGeneric\r\n    DeriveTraversable\r\n    ExistentialQuantification\r\n    FlexibleContexts\r\n    FlexibleInstances\r\n    GeneralizedNewtypeDeriving\r\n    ImplicitParams\r\n    KindSignatures\r\n    LambdaCase\r\n    NondecreasingIndentation\r\n    OverloadedStrings\r\n    PatternSynonyms\r\n    RankNTypes\r\n    RecordWildCards\r\n    ScopedTypeVariables\r\n    StandaloneDeriving\r\n    Trustworthy\r\n    TypeFamilies\r\n    TypeOperators\r\n    TypeSynonymInstances\r\n    UndecidableInstances\r\n";
  }
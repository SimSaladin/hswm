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
      identifier = { name = "Cabal-hooks"; version = "3.18"; };
      license = "BSD-3-Clause";
      copyright = "2003-2026, Cabal Development Team";
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
      url = "http://hackage.haskell.org/package/Cabal-hooks-3.18.tar.gz";
      sha256 = "dad10fa37f6b7423bb4641d1f14f375e58a538aeb59c7aa6f78e22743fd7b471";
    });
  }) // {
    package-description-override = "cabal-version: 3.6\nname:          Cabal-hooks\nversion:       3.18\ncopyright:     2003-2026, Cabal Development Team\nlicense:       BSD-3-Clause\nlicense-file:  LICENSE\nauthor:        Cabal Development Team <cabal-devel@haskell.org>\nmaintainer:    cabal-devel@haskell.org\nhomepage:      http://www.haskell.org/cabal/\nbug-reports:   https://github.com/haskell/cabal/issues\nsynopsis:      API for the Hooks build-type\ndescription:\n  User-facing API for the Hooks build-type.\ncategory:       Distribution\nbuild-type:     Simple\n\nextra-doc-files:\n  README.md CHANGELOG.md\n\nsource-repository head\n  type:     git\n  location: https://github.com/haskell/cabal/\n  subdir:   Cabal-hooks\n\nlibrary\n  default-language: Haskell2010\n  hs-source-dirs: src\n\n  build-depends:\n    , Cabal-syntax    >= 3.18      && < 3.19\n    , Cabal           >= 3.18      && < 3.19\n    , base            >= 4.17      && < 5\n    , containers      >= 0.5.0.0   && < 0.9\n    , transformers    >= 0.5.6.0   && < 0.7\n\n  ghc-options: -Wall -fno-ignore-asserts -Wtabs -Wincomplete-uni-patterns -Wincomplete-record-updates\n\n  exposed-modules:\n    Distribution.Simple.SetupHooks\n\n  other-extensions:\n    BangPatterns\n    CPP\n    DefaultSignatures\n    DeriveDataTypeable\n    DeriveFoldable\n    DeriveFunctor\n    DeriveGeneric\n    DeriveTraversable\n    ExistentialQuantification\n    FlexibleContexts\n    FlexibleInstances\n    GeneralizedNewtypeDeriving\n    ImplicitParams\n    KindSignatures\n    LambdaCase\n    NondecreasingIndentation\n    OverloadedStrings\n    PatternSynonyms\n    RankNTypes\n    RecordWildCards\n    ScopedTypeVariables\n    StandaloneDeriving\n    Trustworthy\n    TypeFamilies\n    TypeOperators\n    TypeSynonymInstances\n    UndecidableInstances\n";
  }
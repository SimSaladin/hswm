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
      specVersion = "2.4";
      identifier = { name = "debruijn"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "de Bruijn indices and levels";
      description = "de Bruijn indices and levels for well-scoped terms.\n\nThis is \"unsafe\" (as it uses 'unsafeCoerce') implementation, but it's fast.\nThe API is the same as in @debruin-safe@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."skew-list" or (errorHandler.buildDepError "skew-list"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
        ];
        buildable = true;
      };
      tests = {
        "debruijn-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debruijn" or (errorHandler.buildDepError "debruijn"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/debruijn-0.3.1.tar.gz";
      sha256 = "af69992821661361e5462b7a53c4e14961293019dcaf0662360e89d9facc111e";
    });
  }) // {
    package-description-override = "cabal-version:   2.4\nname:            debruijn\nversion:         0.3.1\nlicense:         BSD-3-Clause\nlicense-file:    LICENSE\ncategory:        Development\nsynopsis:        de Bruijn indices and levels\ndescription:\n  de Bruijn indices and levels for well-scoped terms.\n  .\n  This is \"unsafe\" (as it uses 'unsafeCoerce') implementation, but it's fast.\n  The API is the same as in @debruin-safe@ package.\n\nauthor:          Oleg Grenrus <oleg.grenrus@iki.fi>\nmaintainer:      Oleg Grenrus <oleg.grenrus@iki.fi>\nbuild-type:      Simple\ntested-with:\n  GHC ==9.2.8\n   || ==9.4.8\n   || ==9.6.7\n   || ==9.8.4\n   || ==9.10.2\n   || ==9.12.2\n\nextra-doc-files: CHANGELOG.md\n\nsource-repository head\n  type:     git\n  location: https://github.com/phadej/debruijn.git\n  subdir:   debruijn\n\ncommon lang\n  default-language:   Haskell2010\n  ghc-options:        -Wall -Wno-unticked-promoted-constructors\n  default-extensions:\n    BangPatterns\n    DataKinds\n    DeriveGeneric\n    DeriveTraversable\n    DerivingStrategies\n    EmptyCase\n    FlexibleInstances\n    FunctionalDependencies\n    GADTs\n    OverloadedStrings\n    PatternSynonyms\n    QuantifiedConstraints\n    RankNTypes\n    RoleAnnotations\n    ScopedTypeVariables\n    StandaloneDeriving\n    StandaloneKindSignatures\n    TypeApplications\n    TypeOperators\n    ViewPatterns\n\nlibrary\n  import:          lang\n  hs-source-dirs:  src src-common\n\n  -- GHC-boot libraries\n  build-depends:\n    , base          ^>=4.16.3.0 || ^>=4.17.0.0 || ^>=4.18.0.0 || ^>=4.19.0.0 || ^>=4.20.0.0 || ^>=4.21.0.0\n    , deepseq       ^>=1.4.6.1  || ^>=1.5.0.0\n    , transformers  ^>=0.5.6.2  || ^>=0.6.1.0\n\n  -- rest of the dependencies\n  build-depends:\n    , fin        ^>=0.3.1\n    , skew-list  ^>=0.1\n    , some       ^>=1.0.6\n\n  exposed-modules:\n    DeBruijn\n    DeBruijn.Add\n    DeBruijn.Ctx\n    DeBruijn.Env\n    DeBruijn.Idx\n    DeBruijn.Lte\n    DeBruijn.Lvl\n    DeBruijn.Ren\n    DeBruijn.Size\n    DeBruijn.Sub\n    DeBruijn.Wk\n\n  -- These modules are exported, but shouldn't be used directly.\n  exposed-modules:\n    DeBruijn.Internal.Add\n    DeBruijn.Internal.Env\n    DeBruijn.Internal.Idx\n    DeBruijn.Internal.Lvl\n    DeBruijn.Internal.Size\n\n  other-modules:\n    DeBruijn.RenExtras\n    TrustworthyCompat\n\ntest-suite debruijn-tests\n  import:         lang\n  hs-source-dirs: tests\n  type:           exitcode-stdio-1.0\n  main-is:        debruijn-tests.hs\n  build-depends:\n    , base\n    , debruijn\n\n  build-depends:\n    , QuickCheck        ^>=2.15.0.1\n    , tasty             ^>=1.5.3\n    , tasty-quickcheck  ^>=0.11.1\n";
  }
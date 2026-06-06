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
      specVersion = "2.2";
      identifier = { name = "universe-base"; version = "1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2014 Daniel Wagner";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "A class for finite and recursively enumerable types.";
      description = "A class for finite and recursively enumerable types and some helper functions for enumerating them.\n\n@\nclass Universe a where universe :: [a]\nclass Universe a => Finite a where universeF :: [a]; universeF = universe\n@\n\nThis is slim package definiting only the type-classes and instances\nfor types in GHC boot libraries.\nFor more instances check @universe-instances-*@ packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "9.2")) (if compiler.isGhc && compiler.version.ge "9.0"
          then [
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ]
          else [
            (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
          ]);
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/universe-base-1.1.4.tar.gz";
      sha256 = "aee5589f372927dc3fa66e0cf4e284b89235c0aa3793ded744885ab717f41e98";
    });
  }) // {
    package-description-override = "cabal-version:      2.2\r\nname:               universe-base\r\nversion:            1.1.4\r\nx-revision:         2\r\nsynopsis:           A class for finite and recursively enumerable types.\r\ndescription:\r\n  A class for finite and recursively enumerable types and some helper functions for enumerating them.\r\n  .\r\n  @\r\n  class Universe a where universe :: [a]\r\n  class Universe a => Finite a where universeF :: [a]; universeF = universe\r\n  @\r\n  .\r\n  This is slim package definiting only the type-classes and instances\r\n  for types in GHC boot libraries.\r\n  For more instances check @universe-instances-*@ packages.\r\n\r\nhomepage:           https://github.com/dmwit/universe\r\nlicense:            BSD-3-Clause\r\nlicense-file:       LICENSE\r\nauthor:             Daniel Wagner\r\nmaintainer:         me@dmwit.com\r\ncopyright:          2014 Daniel Wagner\r\ncategory:           Data\r\nbuild-type:         Simple\r\nextra-source-files: changelog\r\ntested-with:\r\n  GHC ==8.6.5\r\n   || ==8.8.4\r\n   || ==8.10.7\r\n   || ==9.0.2\r\n   || ==9.2.8\r\n   || ==9.4.8\r\n   || ==9.6.6\r\n   || ==9.8.4\r\n   || ==9.10.1\r\n   || ==9.12.4\r\n   || ==9.14.1\r\n\r\nsource-repository head\r\n  type:     git\r\n  location: https://github.com/dmwit/universe\r\n  subdir:   universe-base\r\n\r\nlibrary\r\n  default-language: Haskell2010\r\n  hs-source-dirs:   src\r\n  exposed-modules:\r\n    Data.Universe.Class\r\n    Data.Universe.Helpers\r\n    Data.Universe.Generic\r\n\r\n  other-extensions:\r\n    BangPatterns\r\n    DefaultSignatures\r\n    GADTs\r\n    ScopedTypeVariables\r\n    TypeFamilies\r\n\r\n  build-depends:\r\n      base          >=4.12    && <4.23\r\n    , containers    >=0.6.0.1 && <0.9\r\n    , tagged        >=0.8.8   && <0.9\r\n    , transformers  >=0.5.6.2 && <0.7\r\n\r\n  if !impl(ghc >=9.2)\r\n    if impl(ghc >=9.0)\r\n      build-depends: ghc-prim\r\n\r\n    else\r\n      build-depends: OneTuple >=0.4.2 && <0.5\r\n\r\n  if impl(ghc >=9.0)\r\n    -- these flags may abort compilation with GHC-8.10\r\n    -- https://gitlab.haskell.org/ghc/ghc/-/merge_requests/3295\r\n    ghc-options: -Winferred-safe-imports -Wmissing-safe-haskell-mode\r\n\r\ntest-suite tests\r\n  default-language: Haskell2010\r\n  other-extensions: ScopedTypeVariables\r\n  type:             exitcode-stdio-1.0\r\n  main-is:          Tests.hs\r\n  hs-source-dirs:   tests\r\n  ghc-options:      -Wall\r\n  build-depends:\r\n      base\r\n    , containers\r\n    , QuickCheck     >=2.8.2 && <2.19\r\n    , universe-base";
  }
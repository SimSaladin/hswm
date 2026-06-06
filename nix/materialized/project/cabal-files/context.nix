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
      specVersion = "1.12";
      identifier = { name = "context"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "2020 (c) Jason Shipman";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://sr.ht/~jship/context/";
      url = "";
      synopsis = "Thread-indexed, nested contexts";
      description = "Thread-indexed storage around arbitrary context values. The interface supports\nnesting context values per thread, and at any point, the calling thread may\nask for their current context.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      tests = {
        "context-test-suite" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."context" or (errorHandler.buildDepError "context"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/context-0.2.1.1.tar.gz";
      sha256 = "f4699eff26079e2765016605c3c63590b1a725f2db354801c30a680d997b30e1";
    });
  }) // {
    package-description-override = "cabal-version: 1.12\n\n-- This file has been generated from package.yaml by hpack version 0.37.0.\n--\n-- see: https://github.com/sol/hpack\n\nname:           context\nversion:        0.2.1.1\nsynopsis:       Thread-indexed, nested contexts\ndescription:    Thread-indexed storage around arbitrary context values. The interface supports\n                nesting context values per thread, and at any point, the calling thread may\n                ask for their current context.\ncategory:       Data\nhomepage:       https://sr.ht/~jship/context/\nauthor:         Jason Shipman\nmaintainer:     Jason Shipman\ncopyright:      2020 (c) Jason Shipman\nlicense:        MIT\nlicense-file:   LICENSE\nbuild-type:     Simple\nextra-source-files:\n    CHANGELOG.md\n    LICENSE\n    package.yaml\n    README.md\n\nsource-repository head\n  type: git\n  location: https://git.sr.ht/~jship/context/\n\nlibrary\n  exposed-modules:\n      Context\n      Context.Concurrent\n      Context.Implicit\n      Context.Internal\n      Context.Storage\n      Context.View\n  other-modules:\n      Paths_context\n  hs-source-dirs:\n      library\n  ghc-options: -Wall -fwarn-tabs -Wincomplete-uni-patterns -Wredundant-constraints\n  build-depends:\n      base >=4.11.1.0 && <5\n    , containers >=0.5.11.0 && <0.9\n    , exceptions >=0.10.0 && <0.11\n  default-language: Haskell2010\n\ntest-suite context-test-suite\n  type: exitcode-stdio-1.0\n  main-is: Driver.hs\n  other-modules:\n      Test.Context.ConcurrentSpec\n      Test.Context.ImplicitSpec\n      Test.ContextSpec\n      Paths_context\n  hs-source-dirs:\n      test-suite\n  ghc-options: -Wall -fwarn-tabs -Wincomplete-uni-patterns -Wredundant-constraints -threaded -with-rtsopts=-N\n  build-tool-depends:\n      hspec-discover:hspec-discover\n  build-depends:\n      async\n    , base\n    , context\n    , ghc-prim\n    , hspec\n  default-language: Haskell2010\n";
  }
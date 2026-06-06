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
      identifier = { name = "monad-logger-aeson"; version = "0.4.1.6"; };
      license = "MIT";
      copyright = "2022 (c) Jason Shipman";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://sr.ht/~jship/monad-logger-aeson/";
      url = "";
      synopsis = "JSON logging using monad-logger interface";
      description = "@monad-logger-aeson@ provides structured JSON logging using @monad-logger@'s\ninterface.\n\nSpecifically, it is intended to be a (largely) drop-in replacement for\n@monad-logger@'s \"Control.Monad.Logger.CallStack\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."context" or (errorHandler.buildDepError "context"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "readme-example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-logger-aeson" or (errorHandler.buildDepError "monad-logger-aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "monad-logger-aeson-test-suite" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-diff" or (errorHandler.buildDepError "aeson-diff"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-logger-aeson" or (errorHandler.buildDepError "monad-logger-aeson"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
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
      url = "http://hackage.haskell.org/package/monad-logger-aeson-0.4.1.6.tar.gz";
      sha256 = "78f5ce695d98a7c33e7ce82db8bfca919a01248d42e4c968eca266bf04115443";
    });
  }) // {
    package-description-override = "cabal-version: 1.12\n\n-- This file has been generated from package.yaml by hpack version 0.39.1.\n--\n-- see: https://github.com/sol/hpack\n\nname:           monad-logger-aeson\nversion:        0.4.1.6\nsynopsis:       JSON logging using monad-logger interface\ndescription:    @monad-logger-aeson@ provides structured JSON logging using @monad-logger@'s\n                interface.\n                .\n                Specifically, it is intended to be a (largely) drop-in replacement for\n                @monad-logger@'s \"Control.Monad.Logger.CallStack\" module.\ncategory:       System\nhomepage:       https://sr.ht/~jship/monad-logger-aeson/\nauthor:         Jason Shipman\nmaintainer:     Jason Shipman\ncopyright:      2022 (c) Jason Shipman\nlicense:        MIT\nlicense-file:   LICENSE\nbuild-type:     Simple\nextra-source-files:\n    package.yaml\n    README.md\n    LICENSE\n    CHANGELOG.md\n\nsource-repository head\n  type: git\n  location: https://git.sr.ht/~jship/monad-logger-aeson/\n\nlibrary\n  exposed-modules:\n      Control.Monad.Logger.Aeson\n      Control.Monad.Logger.Aeson.Internal\n  other-modules:\n      Paths_monad_logger_aeson\n  hs-source-dirs:\n      library\n  ghc-options: -Wall -fwarn-tabs -Wincomplete-uni-patterns -Wredundant-constraints\n  build-depends:\n      aeson >=1.5.2.0 && <2.4\n    , base >=4.11.1.0 && <5\n    , bytestring >=0.10.8.2 && <0.13.0.0\n    , context >=0.2.0.0 && <0.3\n    , exceptions >=0.10.0 && <0.11.0\n    , fast-logger >=2.4.11 && <3.3.0\n    , monad-logger >=0.3.30 && <0.4.0\n    , text >=1.2.3.1 && <1.3.0.0 || >=2.0 && <2.2\n    , time >=1.8.0.2 && <1.17\n    , unordered-containers >=0.2.10.0 && <0.3.0.0\n  default-language: Haskell2010\n\nexecutable readme-example\n  main-is: readme-example.hs\n  other-modules:\n      Paths_monad_logger_aeson\n  hs-source-dirs:\n      app\n  ghc-options: -Wall -fwarn-tabs -Wincomplete-uni-patterns -Wredundant-constraints\n  build-depends:\n      aeson >=1.5.2.0 && <2.4\n    , base >=4.11.1.0 && <5\n    , monad-logger >=0.3.30 && <0.4.0\n    , monad-logger-aeson\n    , text >=1.2.3.1 && <1.3.0.0 || >=2.0 && <2.2\n  default-language: Haskell2010\n\ntest-suite monad-logger-aeson-test-suite\n  type: exitcode-stdio-1.0\n  main-is: Driver.hs\n  other-modules:\n      Test.Control.Monad.Logger.AesonSpec\n      TestCase\n      TestCase.LogDebug.MetadataNoThreadContextNo\n      TestCase.LogDebug.MetadataNoThreadContextYes\n      TestCase.LogDebug.MetadataYesThreadContextNo\n      TestCase.LogDebug.MetadataYesThreadContextYes\n      TestCase.LogDebugN.MetadataNoThreadContextNo\n      TestCase.LogDebugN.MetadataNoThreadContextYes\n      TestCase.LogDebugN.MetadataYesThreadContextNo\n      TestCase.LogDebugN.MetadataYesThreadContextYes\n      TestCase.LogDebugNS.MetadataNoThreadContextNo\n      TestCase.LogDebugNS.MetadataNoThreadContextYes\n      TestCase.LogDebugNS.MetadataYesThreadContextNo\n      TestCase.LogDebugNS.MetadataYesThreadContextYes\n      TestCase.LogError.MetadataNoThreadContextNo\n      TestCase.LogError.MetadataNoThreadContextYes\n      TestCase.LogError.MetadataYesThreadContextNo\n      TestCase.LogError.MetadataYesThreadContextYes\n      TestCase.LogErrorN.MetadataNoThreadContextNo\n      TestCase.LogErrorN.MetadataNoThreadContextYes\n      TestCase.LogErrorN.MetadataYesThreadContextNo\n      TestCase.LogErrorN.MetadataYesThreadContextYes\n      TestCase.LogErrorNS.MetadataNoThreadContextNo\n      TestCase.LogErrorNS.MetadataNoThreadContextYes\n      TestCase.LogErrorNS.MetadataYesThreadContextNo\n      TestCase.LogErrorNS.MetadataYesThreadContextYes\n      TestCase.LogInfo.MetadataNoThreadContextNo\n      TestCase.LogInfo.MetadataNoThreadContextYes\n      TestCase.LogInfo.MetadataYesThreadContextNo\n      TestCase.LogInfo.MetadataYesThreadContextYes\n      TestCase.LogInfoN.MetadataNoThreadContextNo\n      TestCase.LogInfoN.MetadataNoThreadContextYes\n      TestCase.LogInfoN.MetadataYesThreadContextNo\n      TestCase.LogInfoN.MetadataYesThreadContextYes\n      TestCase.LogInfoNS.MetadataNoThreadContextNo\n      TestCase.LogInfoNS.MetadataNoThreadContextYes\n      TestCase.LogInfoNS.MetadataYesThreadContextNo\n      TestCase.LogInfoNS.MetadataYesThreadContextYes\n      TestCase.LogOther.MetadataNoThreadContextNo\n      TestCase.LogOther.MetadataNoThreadContextYes\n      TestCase.LogOther.MetadataYesThreadContextNo\n      TestCase.LogOther.MetadataYesThreadContextYes\n      TestCase.LogOtherN.MetadataNoThreadContextNo\n      TestCase.LogOtherN.MetadataNoThreadContextYes\n      TestCase.LogOtherN.MetadataYesThreadContextNo\n      TestCase.LogOtherN.MetadataYesThreadContextYes\n      TestCase.LogOtherNS.MetadataNoThreadContextNo\n      TestCase.LogOtherNS.MetadataNoThreadContextYes\n      TestCase.LogOtherNS.MetadataYesThreadContextNo\n      TestCase.LogOtherNS.MetadataYesThreadContextYes\n      TestCase.LogWarn.MetadataNoThreadContextNo\n      TestCase.LogWarn.MetadataNoThreadContextYes\n      TestCase.LogWarn.MetadataYesThreadContextNo\n      TestCase.LogWarn.MetadataYesThreadContextYes\n      TestCase.LogWarnN.MetadataNoThreadContextNo\n      TestCase.LogWarnN.MetadataNoThreadContextYes\n      TestCase.LogWarnN.MetadataYesThreadContextNo\n      TestCase.LogWarnN.MetadataYesThreadContextYes\n      TestCase.LogWarnNS.MetadataNoThreadContextNo\n      TestCase.LogWarnNS.MetadataNoThreadContextYes\n      TestCase.LogWarnNS.MetadataYesThreadContextNo\n      TestCase.LogWarnNS.MetadataYesThreadContextYes\n      TestCase.MonadLogger.LogDebug.ThreadContextNo\n      TestCase.MonadLogger.LogDebug.ThreadContextYes\n      TestCase.MonadLogger.LogDebugN.ThreadContextNo\n      TestCase.MonadLogger.LogDebugN.ThreadContextYes\n      Paths_monad_logger_aeson\n  hs-source-dirs:\n      test-suite\n  ghc-options: -Wall -fwarn-tabs -Wincomplete-uni-patterns -Wredundant-constraints\n  build-tool-depends:\n      hspec-discover:hspec-discover\n  build-depends:\n      aeson >=1.5.2.0 && <2.4\n    , aeson-diff >=1.1.0.5 && <1.2.0.0\n    , base >=4.11.1.0 && <5\n    , bytestring >=0.10.8.2 && <0.13.0.0\n    , directory >=1.3.1.5 && <1.4.0.0\n    , hspec >=2.7.9 && <2.12\n    , monad-logger >=0.3.30 && <0.4.0\n    , monad-logger-aeson\n    , time >=1.8.0.2 && <1.17\n  default-language: Haskell2010\n";
  }
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
      specVersion = "1.18";
      identifier = { name = "hslogger"; version = "1.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004-2018 John Goerzen\n, (c) 2019      Herbert Valerio Riedel";
      maintainer = "https://github.com/haskell-hvr/hslogger";
      author = "John Goerzen";
      homepage = "https://github.com/haskell-hvr/hslogger/wiki";
      url = "";
      synopsis = "Versatile logging framework";
      description = "@hslogger@ is a logging framework for Haskell, roughly similar\nto [Python's logging module](https://docs.python.org/2/library/logging.html).\n\n@hslogger@ lets each log message have a priority and source be associated\nwith it.  The programmer can then define global handlers that route\nor filter messages based on the priority and source.  @hslogger@ also\nhas a [Syslog](https://tools.ietf.org/html/rfc5424) handler built in.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/hslogger-1.3.2.0.tar.gz";
      sha256 = "eb27a2d2469ee3db6d8bc7bd3df8348e9202d151fe433002c830267405d8e643";
    });
  }) // {
    package-description-override = "cabal-version: 1.18\nbuild-type: Simple\nname: hslogger\nversion: 1.3.2.0\n\nmaintainer: https://github.com/haskell-hvr/hslogger\nauthor: John Goerzen\ncopyright: Copyright (c) 2004-2018 John Goerzen\n                   , (c) 2019      Herbert Valerio Riedel\nlicense: BSD3\nlicense-file: LICENSE\nhomepage: https://github.com/haskell-hvr/hslogger/wiki\nbug-reports: https://github.com/haskell-hvr/hslogger/issues\ncategory: Interfaces\nsynopsis: Versatile logging framework\ndescription:\n @hslogger@ is a logging framework for Haskell, roughly similar\n to [Python's logging module](https://docs.python.org/2/library/logging.html).\n .\n @hslogger@ lets each log message have a priority and source be associated\n with it.  The programmer can then define global handlers that route\n or filter messages based on the priority and source.  @hslogger@ also\n has a [Syslog](https://tools.ietf.org/html/rfc5424) handler built in.\n\nextra-doc-files:\n    LICENSE\n    CHANGELOG.md\n\nextra-source-files:\n    contrib/java/build.xml\n    contrib/java/hslogger4j.jar\n    contrib/java/hslogger4j-plugins.xml\n    contrib/java/org/haskell/hslogger/HsloggerLevel.java\n    contrib/java/org/haskell/hslogger/LogFileXMLReceiver.java\n    contrib/java/org/haskell/hslogger/XMLDecoder.java\n    testsrc/Tests.hs\n    testsrc/runtests.hs\n\ntested-with:\n  GHC == 9.14.1\n  GHC == 9.12.2\n  GHC == 9.10.2\n  GHC == 9.8.4\n  GHC == 9.6.7\n  GHC == 9.4.8\n  GHC == 9.2.8\n  GHC == 9.0.2\n  GHC == 8.10.7\n  GHC == 8.8.4\n  GHC == 8.6.5\n  GHC == 8.4.4\n  GHC == 8.2.2\n  GHC == 8.0.2\n\nsource-repository head\n  type: git\n  location: http://github.com/haskell-hvr/hslogger.git\n\nlibrary\n    hs-source-dirs: src\n    exposed-modules:\n        System.Log\n        System.Log.Handler\n        System.Log.Formatter\n        System.Log.Handler.Simple\n        System.Log.Handler.Syslog\n        System.Log.Handler.Growl\n        System.Log.Handler.Log4jXML\n        System.Log.Logger\n    other-modules:\n        UTF8\n\n    default-language: Haskell2010\n    other-extensions: CPP ExistentialQuantification DeriveDataTypeable\n\n    build-depends:\n      -- Lower bounds are at least the ones from LTS 7.24 (GHC 8.0.1)\n        base         >= 4.9       && < 5\n      , bytestring   >= 0.10.8.1  && < 0.13\n      , containers   >= 0.5.7.1   && < 1\n      , deepseq      >= 1.4.2.0   && < 1.6\n      , time         >= 1.6.0.1   && < 2\n      , network-bsd  >= 2.8.1     && <2.9\n      , network      >= 3.0       && <3.3\n\n    if !os(windows)\n      Build-Depends: unix >= 2.7.2.0 && < 2.9\n\ntest-suite runtests\n    type: exitcode-stdio-1.0\n\n    hs-source-dirs: testsrc\n    main-is: runtests.hs\n    other-modules: Tests\n\n    default-language: Haskell2010\n    build-depends:\n        base\n      , HUnit == 1.6.*\n      , hslogger\n";
  }
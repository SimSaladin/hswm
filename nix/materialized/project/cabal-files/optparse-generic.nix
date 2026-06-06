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
      specVersion = "1.10";
      identifier = { name = "optparse-generic"; version = "1.5.3"; };
      license = "BSD-3-Clause";
      copyright = "2016 Gabriella Gonzalez";
      maintainer = "GenuineGabriella@gmail.com";
      author = "Gabriella Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Auto-generate a command-line parser for your datatype";
      description = "This library auto-generates an @optparse-applicative@-compatible\n@Parser@ from any data type that derives the @Generic@ interface.\n\nSee the documentation in \"Options.Generic\" for an example of how to use\nthis library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.8") [
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
        ];
        buildable = true;
      };
      exes = {
        "optparse-generic-example-unwrap-options" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          ];
          buildable = true;
        };
        "optparse-generic-example-unwrap-with-help" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/optparse-generic-1.5.3.tar.gz";
      sha256 = "3159070ee6b4c95b2ef2af0347c5e9b5c7a5ea8a5fb5527f86f77c3f1bc073c6";
    });
  }) // {
    package-description-override = "Name: optparse-generic\nVersion: 1.5.3\nCabal-Version: >=1.10\nBuild-Type: Simple\nLicense: BSD3\nLicense-File: LICENSE\nCopyright: 2016 Gabriella Gonzalez\nAuthor: Gabriella Gonzalez\nMaintainer: GenuineGabriella@gmail.com\nTested-With: GHC == 7.8.4, GHC == 7.10.2, GHC == 8.0.1\nBug-Reports: https://github.com/Gabriella439/Haskell-Optparse-Generic-Library/issues\nSynopsis: Auto-generate a command-line parser for your datatype\nDescription: This library auto-generates an @optparse-applicative@-compatible\n    @Parser@ from any data type that derives the @Generic@ interface.\n    .\n    See the documentation in \"Options.Generic\" for an example of how to use\n    this library\nCategory: System\nExtra-Source-Files: CHANGELOG.md\nSource-Repository head\n    Type: git\n    Location: https://github.com/Gabriella439/Haskell-Optparse-Generic-Library\n\nLibrary\n    Hs-Source-Dirs: src\n    Build-Depends:\n        base                 >= 4.8      && < 5   ,\n        text                                < 2.2 ,\n        transformers         >= 0.2.0.0  && < 0.7 ,\n        transformers-compat  >= 0.3      && < 0.8 ,\n        Only                                < 0.2 ,\n        optparse-applicative >= 0.16.0.0 && < 0.20,\n        time                 >= 1.5      && < 1.15,\n        void                                < 0.8 ,\n        bytestring                          < 0.13,\n        filepath                            < 1.6\n\n    if impl(ghc < 8.0)\n        Build-Depends:\n            semigroups           >= 0.5.0    && < 0.20\n\n    if impl(ghc < 7.8)\n        Build-Depends:\n            singletons       >= 0.10.0  && < 1.0 ,\n            tagged           >= 0.8.3   && < 0.9 ,\n            th-desugar                     < 1.5.1\n    Exposed-Modules: Options.Generic\n    GHC-Options: -Wall\n    Default-Language: Haskell2010\n\nexecutable optparse-generic-example-unwrap-options\n  ghc-options: -Wall\n  default-language: Haskell2010\n  hs-source-dirs: examples\n  main-is: unwrap-options.hs\n  build-depends:\n    base   >= 4.7 && <5,\n    optparse-generic\n\nexecutable optparse-generic-example-unwrap-with-help\n  ghc-options: -Wall\n  default-language: Haskell2010\n  hs-source-dirs: examples\n  main-is: unwrap-with-help.hs\n  build-depends:\n    base   >= 4.7 && <5,\n    optparse-generic\n";
  }
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
      specVersion = "3.0";
      identifier = { name = "hooks-exe"; version = "3.18"; };
      license = "BSD-3-Clause";
      copyright = "2024, Cabal Development Team";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "cabal-install integration for Hooks build-type";
      description = "Layer for integrating Hooks build-type with cabal-install";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
        ];
        buildable = true;
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/hooks-exe-3.18.tar.gz";
      sha256 = "2c48bba920f57d59850ab3f9e723c3efc9e98010954a880726e499d4d5d7784c";
    });
  }) // {
    package-description-override = "cabal-version: 3.0\r\nname:          hooks-exe\r\nversion:       3.18\r\ncopyright:     2024, Cabal Development Team\r\nlicense:       BSD-3-Clause\r\nauthor:        Cabal Development Team <cabal-devel@haskell.org>\r\nmaintainer:    cabal-devel@haskell.org\r\nhomepage:      http://www.haskell.org/cabal/\r\nbug-reports:   https://github.com/haskell/cabal/issues\r\nsynopsis:      cabal-install integration for Hooks build-type\r\ndescription:\r\n  Layer for integrating Hooks build-type with cabal-install\r\ncategory:      Distribution\r\nbuild-type:    Simple\r\n\r\nextra-doc-files:\r\n  readme.md changelog.md\r\n\r\ncommon warnings\r\n  ghc-options:\r\n    -Wall\r\n    -Wcompat\r\n    -Wnoncanonical-monad-instances -Wincomplete-uni-patterns\r\n    -Wincomplete-record-updates\r\n    -fno-warn-unticked-promoted-constructors\r\n  if impl(ghc < 8.8)\r\n    ghc-options: -Wnoncanonical-monadfail-instances\r\n  if impl(ghc >=9.0)\r\n    -- Warning: even though introduced with GHC 8.10, -Wunused-packages\r\n    -- gives false positives with GHC 8.10.\r\n    ghc-options: -Wunused-packages\r\n\r\n-- Library imported by cabal-install to interface with an external\r\n-- hooks executable.\r\nlibrary\r\n  import: warnings\r\n  hs-source-dirs:\r\n    cli\r\n  build-depends:\r\n    base\r\n      >= 4.10     && < 5,\r\n    bytestring\r\n      >= 0.10.6.0 && < 0.13,\r\n    filepath\r\n      >= 1.4.0.0  && < 1.6 ,\r\n    process\r\n      >= 1.6.20.0 && < 1.7 ,\r\n    Cabal >= 3.18.0 && < 3.19,\r\n    Cabal-syntax >= 3.18.0 && < 3.19,\r\n\r\n  exposed-modules:\r\n    Distribution.Client.SetupHooks.CallHooksExe\r\n  other-modules:\r\n    Distribution.Client.SetupHooks.CallHooksExe.Errors\r\n\r\n  default-language:\r\n    Haskell2010\r\n";
  }
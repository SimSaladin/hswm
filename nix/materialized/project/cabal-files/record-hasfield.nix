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
      identifier = { name = "record-hasfield"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Adam Gundry and Neil Mitchell 2018-2024";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/record-hasfield#readme";
      url = "";
      synopsis = "A version of GHC.Records as available in future GHCs.";
      description = "This package provides a version of \"GHC.Records\" as it will be after the implementation of\n<https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0042-record-set-field.rst GHC proposal #42>,\nplus some helper functions over it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "record-hasfield-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/record-hasfield-1.0.1.tar.gz";
      sha256 = "1a3ebc00c3561ac76e5844c4696ae9fa1b008e4a1fac3362e5d9f2948546ed9e";
    });
  }) // {
    package-description-override = "cabal-version:      1.18\nbuild-type:         Simple\nname:               record-hasfield\nversion:            1.0.1\nlicense:            BSD3\nlicense-file:       LICENSE\ncategory:           Development\nauthor:             Neil Mitchell <ndmitchell@gmail.com>\nmaintainer:         Neil Mitchell <ndmitchell@gmail.com>\ncopyright:          Adam Gundry and Neil Mitchell 2018-2024\nsynopsis:           A version of GHC.Records as available in future GHCs.\ndescription:\n    This package provides a version of \"GHC.Records\" as it will be after the implementation of\n    <https://github.com/ghc-proposals/ghc-proposals/blob/master/proposals/0042-record-set-field.rst GHC proposal #42>,\n    plus some helper functions over it.\nhomepage:           https://github.com/ndmitchell/record-hasfield#readme\nbug-reports:        https://github.com/ndmitchell/record-hasfield/issues\ntested-with:        GHC==9.8, GHC==9.6, GHC==9.4, GHC==9.2, GHC==9.0, GHC==8.10, GHC==8.8\n\nextra-doc-files:\n    CHANGES.txt\n    README.md\n\nsource-repository head\n    type:     git\n    location: https://github.com/ndmitchell/record-hasfield.git\n\nlibrary\n    default-language: Haskell2010\n    hs-source-dirs: src\n    build-depends:\n        base >= 4.4 && < 5\n\n    exposed-modules:\n        GHC.Records.Compat\n        GHC.Records.Extra\n\ntest-suite record-hasfield-test\n    type:               exitcode-stdio-1.0\n    main-is:            test/Test.hs\n    default-language:   Haskell2010\n\n    build-depends:\n        base,\n        record-hasfield\n";
  }
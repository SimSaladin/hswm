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
      identifier = { name = "xml-conduit"; version = "1.10.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Aristid Breitkreuz <aristidb@googlemail.com>";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Pure-Haskell utilities for dealing with XML with the conduit package.";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/xml-conduit-1.10.1.0.tar.gz";
      sha256 = "118ada3837b80c6327b11449bdab50d620043731be2b2494eadcd8e854bff83f";
    });
  }) // {
    package-description-override = "cabal-version:   1.14\n\nname:            xml-conduit\nversion:         1.10.1.0\nlicense:         MIT\nlicense-file:    LICENSE\nauthor:          Michael Snoyman <michael@snoyman.com>, Aristid Breitkreuz <aristidb@googlemail.com>\nmaintainer:      Michael Snoyman <michael@snoyman.com>\nsynopsis:        Pure-Haskell utilities for dealing with XML with the conduit package.\ndescription:     Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.\ncategory:        XML, Conduit\nstability:       Stable\nbuild-type:      Custom\nhomepage:        http://github.com/snoyberg/xml\nextra-source-files: README.md\n                    ChangeLog.md\ntested-with:     GHC >=8.0 && <9.12\n\ncustom-setup\n    setup-depends:   base >= 4 && <5, Cabal <4, cabal-doctest >= 1 && <1.1\n\nlibrary\n    build-depends:   base                      >= 4.12     && < 5\n                   , conduit                   >= 1.3      && < 1.4\n                   , conduit-extra             >= 1.3      && < 1.4\n                   , resourcet                 >= 1.2      && < 1.4\n                   , bytestring                >= 0.10.2\n                   , text                      >= 0.7\n                   , containers                >= 0.2\n                   , xml-types                 >= 0.3.4    && < 0.4\n                   , attoparsec                >= 0.10\n                   , transformers              >= 0.2      && < 0.7\n                   , data-default\n                   , blaze-markup              >= 0.5\n                   , blaze-html                >= 0.5\n                   , deepseq                   >= 1.1.0.0\n    exposed-modules: Text.XML.Stream.Parse\n                     Text.XML.Stream.Render\n                     Text.XML.Stream.Render.Internal\n                     Text.XML.Unresolved\n                     Text.XML.Cursor\n                     Text.XML.Cursor.Generic\n                     Text.XML\n    other-modules:   Text.XML.Stream.Token\n    ghc-options:     -Wall\n    hs-source-dirs:  src\n    default-language: Haskell2010\n\ntest-suite unit\n    type: exitcode-stdio-1.0\n    main-is: unit.hs\n    hs-source-dirs: test\n    build-depends:          base\n                          , containers\n                          , text\n                          , transformers\n                          , bytestring\n                          , xml-conduit\n                          , hspec >= 1.3\n                          , HUnit\n                          , xml-types >= 0.3.1\n                          , conduit\n                          , conduit-extra\n                          , blaze-markup\n                          , resourcet\n    default-language: Haskell2010\n\ntest-suite doctest\n    type: exitcode-stdio-1.0\n    main-is: doctest.hs\n    hs-source-dirs: test\n    build-depends:          base\n                          , doctest >= 0.8\n                          , xml-conduit\n    default-language: Haskell2010\n\nsource-repository head\n  type:     git\n  location: git://github.com/snoyberg/xml.git\n";
  }
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
      identifier = { name = "doxygen-parser"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2024-2026 Well-Typed LLP and Anduril Industries Inc.";
      maintainer = "info@well-typed.com";
      author = "Well-Typed LLP";
      homepage = "https://github.com/well-typed/doxygen-parser";
      url = "";
      synopsis = "Parse Doxygen XML output into a typed Haskell AST";
      description = "A standalone library for invoking the @doxygen@ binary on C\\/C++ headers\nand turning its XML output into a typed Haskell AST.\n\nThe library spawns @doxygen@ on a set of header files, walks the resulting\n@xml\\/@ directory, and assembles a 'Doxygen.Parser.Doxygen' value mapping\neach documented C entity to a structured 'Doxygen.Parser.Comment' tree\n(with paragraphs, inline markup, parameter docs, group memberships, and\ncross-references).\n\nSee the \"Doxygen.Parser\" module for the public API and the project\nREADME for a quick-start example. The @doxygen@ executable must be\ninstalled separately.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
        ];
        buildable = true;
      };
      sublibs = {
        "internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doxygen-parser" or (errorHandler.buildDepError "doxygen-parser"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-doxygen-parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doxygen-parser" or (errorHandler.buildDepError "doxygen-parser"))
            (hsPkgs."doxygen-parser".components.sublibs.internal or (errorHandler.buildDepError "doxygen-parser:internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/doxygen-parser-0.1.1.tar.gz";
      sha256 = "ed03f98e3d655427a298df7b8cbedb7d3e1342a9467b8c75d1bd9f57d17a833c";
    });
  }) // {
    package-description-override = "cabal-version:   3.0\nname:            doxygen-parser\nversion:         0.1.1\nlicense:         BSD-3-Clause\nlicense-file:    LICENSE\ncopyright:       2024-2026 Well-Typed LLP and Anduril Industries Inc.\nauthor:          Well-Typed LLP\nmaintainer:      info@well-typed.com\nhomepage:        https://github.com/well-typed/doxygen-parser\nbug-reports:     https://github.com/well-typed/doxygen-parser/issues\ncategory:        Development, Documentation, Parsing\nbuild-type:      Simple\nsynopsis:        Parse Doxygen XML output into a typed Haskell AST\ndescription:\n  A standalone library for invoking the @doxygen@ binary on C\\/C++ headers\n  and turning its XML output into a typed Haskell AST.\n\n  The library spawns @doxygen@ on a set of header files, walks the resulting\n  @xml\\/@ directory, and assembles a 'Doxygen.Parser.Doxygen' value mapping\n  each documented C entity to a structured 'Doxygen.Parser.Comment' tree\n  (with paragraphs, inline markup, parameter docs, group memberships, and\n  cross-references).\n\n  See the \"Doxygen.Parser\" module for the public API and the project\n  README for a quick-start example. The @doxygen@ executable must be\n  installed separately.\n\nextra-doc-files:\n  CHANGELOG.md\n  README.md\n\ntested-with:\n  GHC ==9.2.8\n   || ==9.4.8\n   || ==9.6.7\n   || ==9.8.4\n   || ==9.10.3\n   || ==9.12.2\n   || ==9.14.1\n\nsource-repository head\n  type:     git\n  location: https://github.com/well-typed/doxygen-parser\n\ncommon lang\n  ghc-options:\n    -Wall -Widentities -Wprepositive-qualified-module\n    -Wredundant-constraints -Wunused-packages -Wmissing-export-lists\n\n  build-depends:      base >=4.16 && <4.23\n  default-language:   GHC2021\n  default-extensions:\n    DerivingStrategies\n    DuplicateRecordFields\n    NoFieldSelectors\n    OverloadedRecordDot\n    OverloadedStrings\n\nlibrary\n  import:          lang\n  hs-source-dirs:  src src-internal\n  exposed-modules:\n    Doxygen.Parser\n    Doxygen.Parser.Types\n    Doxygen.Parser.Warning\n\n  -- Implementation module, kept off the public Hackage surface.\n  other-modules:   Doxygen.Parser.Internal\n  build-depends:\n    , containers   >=0.6.5.1 && <0.9\n    , directory    >=1.3.6.2 && <1.4\n    , filepath     >=1.4     && <1.6\n    , process      >=1.6     && <1.7\n    , temporary    >=1.3     && <1.4\n    , text         >=1.2     && <2.2\n    , xml-conduit  >=1.9     && <1.11\n\n-- Private sub-library that re-exposes the implementation module to the test\n-- suite. It depends on the main library so 'Doxygen.Parser.Types' (and the\n-- 'DoxygenKey' it now houses) stay a single shared copy across both.\nlibrary internal\n  import:          lang\n  visibility:      private\n  hs-source-dirs:  src-internal\n  exposed-modules: Doxygen.Parser.Internal\n  build-depends:\n    , containers      >=0.6.5.1 && <0.9\n    , directory       >=1.3.6.2 && <1.4\n    , doxygen-parser\n    , filepath        >=1.4     && <1.6\n    , process         >=1.6     && <1.7\n    , temporary       >=1.3     && <1.4\n    , text            >=1.2     && <2.2\n    , xml-conduit     >=1.9     && <1.11\n\ntest-suite test-doxygen-parser\n  import:         lang\n  type:           exitcode-stdio-1.0\n  hs-source-dirs: test\n  main-is:        Main.hs\n  ghc-options:    -threaded\n  other-modules:\n    Test.Doxygen.Parser.Block\n    Test.Doxygen.Parser.CodeBlock\n    Test.Doxygen.Parser.Comment\n    Test.Doxygen.Parser.Helpers\n    Test.Doxygen.Parser.InlineNesting\n    Test.Doxygen.Parser.InlineParsing\n    Test.Doxygen.Parser.List\n    Test.Doxygen.Parser.NormalizeWhitespace\n    Test.Doxygen.Parser.Param\n    Test.Doxygen.Parser.Properties\n    Test.Doxygen.Parser.SimpleSect\n    Test.Doxygen.Parser.StructuralWarnings\n    Test.Doxygen.Parser.Whitespace\n    Test.Doxygen.Parser.XMLFileResult\n\n  -- Internal dependencies\n  build-depends:\n    , doxygen-parser\n    , doxygen-parser:internal\n\n  -- External dependencies\n  build-depends:\n    , containers        >=0.6.5.1 && <0.9\n    , QuickCheck        >=2.14.3  && <2.16\n    , tasty             >=1.5     && <1.6\n    , tasty-hunit       >=0.10.2  && <0.11\n    , tasty-quickcheck  >=0.10.2  && <0.12\n    , text              >=1.2     && <2.2\n    , xml-conduit       >=1.9     && <1.11\n";
  }
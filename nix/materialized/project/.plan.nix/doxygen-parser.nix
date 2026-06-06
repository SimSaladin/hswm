{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "doxygen-parser"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2024-2026 Well-Typed LLP, Anduril Industries Inc.";
      maintainer = "info@well-typed.com";
      author = "Well-Typed LLP";
      homepage = "https://github.com/well-typed/doxygen-parser";
      url = "";
      synopsis = "Parse Doxygen XML output into a typed Haskell AST";
      description = "A standalone library for invoking the @doxygen@ binary on C\\/C++ headers\nand turning its XML output into a typed Haskell AST.\n.\nThe library spawns @doxygen@ on a set of header files, walks the resulting\n@xml\\/@ directory, and assembles a 'Doxygen.Parser.Doxygen' value mapping\neach documented C entity to a structured 'Doxygen.Parser.Comment' tree\n(with paragraphs, inline markup, parameter docs, group memberships, and\ncross-references).\n.\nSee the \"Doxygen.Parser\" module for the public API and the project\nREADME for a quick-start example. The @doxygen@ executable must be\ninstalled separately.";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [ "CHANGELOG.md" "README.md" ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."doxygen-parser".components.sublibs.internal or (errorHandler.buildDepError "doxygen-parser:internal"))
        ];
        buildable = true;
        modules = [ "Doxygen/Parser" ];
        hsSourceDirs = [ "src" ];
      };
      sublibs = {
        "internal" = {
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
          modules = [
            "Doxygen/Parser/Internal"
            "Doxygen/Parser/Types"
            "Doxygen/Parser/Warning"
          ];
          hsSourceDirs = [ "src-internal" ];
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
          modules = [
            "Test/Doxygen/Parser/Block"
            "Test/Doxygen/Parser/CodeBlock"
            "Test/Doxygen/Parser/Comment"
            "Test/Doxygen/Parser/Helpers"
            "Test/Doxygen/Parser/InlineNesting"
            "Test/Doxygen/Parser/InlineParsing"
            "Test/Doxygen/Parser/List"
            "Test/Doxygen/Parser/NormalizeWhitespace"
            "Test/Doxygen/Parser/Param"
            "Test/Doxygen/Parser/Properties"
            "Test/Doxygen/Parser/SimpleSect"
            "Test/Doxygen/Parser/StructuralWarnings"
            "Test/Doxygen/Parser/Whitespace"
            "Test/Doxygen/Parser/XMLFileResult"
          ];
          hsSourceDirs = [ "test" ];
          mainPath = [ "Main.hs" ];
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchgit {
      url = "2";
      rev = "minimal";
      sha256 = "";
    }) // {
      url = "2";
      rev = "minimal";
      sha256 = "";
    };
  }
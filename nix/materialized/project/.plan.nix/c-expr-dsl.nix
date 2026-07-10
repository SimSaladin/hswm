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
      identifier = { name = "c-expr-dsl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@well-typed.com";
      author = "Well-Typed LLP";
      homepage = "";
      url = "";
      synopsis = "DSL for the language support by c-expr-runtime";
      description = "";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = "test/fixtures";
      dataFiles = [ "*.golden" ];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [ "CHANGELOG.md" ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."debruijn" or (errorHandler.buildDepError "debruijn"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
        ];
        buildable = true;
        modules = [
          "C/Expr/Parse/Expr"
          "C/Expr/Parse/Identifier"
          "C/Expr/Parse/Infra"
          "C/Expr/Parse/Literal"
          "C/Expr/Syntax/Expr"
          "C/Expr/Syntax/Identifier"
          "C/Expr/Syntax/Literal"
          "C/Expr/Syntax/Name"
          "C/Expr/Syntax/TTG"
          "C/Expr/Syntax/TTG/Parse"
          "C/Expr/Syntax/TTG/Typecheck"
          "C/Expr/Syntax/Type"
          "C/Expr/Typecheck/Expr"
          "C/Expr/Util/Parsec"
          "C/Expr/Util/TestEquality"
          "C/Expr/Parse"
          "C/Expr/Syntax"
          "C/Expr/Typecheck"
          "C/Expr/Typecheck/Interface/Type"
          "C/Expr/Typecheck/Interface/Value"
          "C/Expr/Typecheck/Type"
          "C/Expr/Util/Panic"
        ];
        hsSourceDirs = [ "src" ];
      };
      tests = {
        "test-c-expr-dsl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-expr-dsl" or (errorHandler.buildDepError "c-expr-dsl"))
            (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."debruijn" or (errorHandler.buildDepError "debruijn"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
          ];
          buildable = true;
          modules = [
            "Paths_c_expr_dsl"
            "Test/CExpr/Parse"
            "Test/CExpr/Parse/Golden"
            "Test/CExpr/Parse/Infra"
            "Test/CExpr/Parse/Literal"
            "Test/CExpr/Parse/Macro"
            "Test/CExpr/Parse/Type"
            "Test/CExpr/Typecheck"
            "Test/CExpr/Typecheck/Classify"
            "Test/CExpr/Typecheck/Infra"
            "Test/CExpr/Util"
          ];
          hsSourceDirs = [ "test" ];
          mainPath = [ "Main.hs" ];
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchgit {
      url = "1";
      rev = "minimal";
      sha256 = "";
    }) // {
      url = "1";
      rev = "minimal";
      sha256 = "";
    };
    postUnpack = "sourceRoot+=/c-expr-dsl; echo source root reset to $sourceRoot";
  }
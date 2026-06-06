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
      identifier = { name = "c-expr-runtime"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@well-typed.com";
      author = "Well-Typed LLP";
      homepage = "";
      url = "";
      synopsis = "Haskell DSL for simple C arithmetic expressions";
      description = "This library provides a Haskell DSL for simple C arithmetic expressions,\nimplementing the arithmetic conversion and integral promotion rules of the\nC standard.\n\nFor example, addition is defined with the following type class:\n\n@\n\ninfixl 2 +\ntype Add :: Type -> Type -> Constraint\nclass Add a b where\n  type family AddRes a b :: Type\n  (+) :: a -> b -> AddRes a b\n\n@\n\nThat is, we can add arguments of different types, e.g. an integer and a\nfloating-point number, in which case the integer will first get converted to\nthe floating-point format before performing the addition.";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [ "CHANGELOG.md" ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.4") (hsPkgs."data-array-byte" or (errorHandler.buildDepError "data-array-byte"));
        buildable = true;
        modules = [
          "C/Expr/Posix32"
          "C/Expr/Posix64"
          "C/Expr/Win64"
          "C/Operator/Internal"
          "C/Operator/TH"
          "C/Char"
          "C/Expr/HostPlatform"
          "C/Operator/Classes"
          "C/Operator/GenInstances"
          "C/Operators"
          "C/Type"
          "C/Type/Internal/Universe"
        ];
        hsSourceDirs = [ "core" "lib" ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
          modules = [ "CallClang" ];
          hsSourceDirs = [ "test" ];
          mainPath = [ "Main.hs" ];
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchgit {
      url = "0";
      rev = "minimal";
      sha256 = "";
    }) // {
      url = "0";
      rev = "minimal";
      sha256 = "";
    };
    postUnpack = "sourceRoot+=/c-expr-runtime; echo source root reset to $sourceRoot";
  }
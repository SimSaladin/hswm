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
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/c-expr-runtime-0.1.0.0.tar.gz";
      sha256 = "827b0a340f914f2d627e09852fca87df3092c691179ae9db039415772aad7d35";
    });
  }) // {
    package-description-override = "cabal-version:   3.0\nname:            c-expr-runtime\nversion:         0.1.0.0\nlicense:         BSD-3-Clause\nlicense-file:    LICENSE\nauthor:          Well-Typed LLP\nmaintainer:      info@well-typed.com\ncategory:        System\nbuild-type:      Simple\nextra-doc-files:\n  CHANGELOG.md\n  README.md\n\nsynopsis:        Haskell DSL for simple C arithmetic expressions\ntested-with:\n  GHC ==9.2.8\n   || ==9.4.8\n   || ==9.6.7\n   || ==9.8.4\n   || ==9.10.3\n   || ==9.12.2\n   || ==9.14.1\n\ndescription:\n  This library provides a Haskell DSL for simple C arithmetic expressions,\n  implementing the arithmetic conversion and integral promotion rules of the\n  C standard.\n\n  For example, addition is defined with the following type class:\n\n  @\n\n  infixl 2 +\n  type Add :: Type -> Type -> Constraint\n  class Add a b where\n    type family AddRes a b :: Type\n    (+) :: a -> b -> AddRes a b\n\n  @\n\n  That is, we can add arguments of different types, e.g. an integer and a\n  floating-point number, in which case the integer will first get converted to\n  the floating-point format before performing the addition.\n\nsource-repository head\n  type:     git\n  location: https://github.com/well-typed/c-expr.git\n  subdir:   c-expr-runtime\n\nsource-repository this\n  type:     git\n  location: https://github.com/well-typed/c-expr.git\n  subdir:   c-expr-runtime\n  tag:      release-0.1.0.0\n\ncommon common\n  ghc-options:\n    -Wall -Wunused-packages -Wno-unticked-promoted-constructors\n\n  default-extensions:\n    DataKinds\n    DeriveGeneric\n    DeriveTraversable\n    DerivingStrategies\n    FlexibleInstances\n    GADTs\n    ImportQualifiedPost\n    LambdaCase\n    MagicHash\n    MultiParamTypeClasses\n    ParallelListComp\n    StandaloneKindSignatures\n    TupleSections\n    TypeApplications\n    TypeFamilies\n    TypeOperators\n\n  build-depends:      base >=4.16 && <4.23\n  default-language:   Haskell2010\n\n-- C arithmetic DSL\n--\n-- Note: C.Operator.Classes is exposed only so its associated type families\n-- (e.g. AddRes) are usable in signatures. Its classes have no instances of\n-- their own; import C.Expr.HostPlatform (or a Posix32/Posix64/Win64 variant)\n-- to get a platform's instances.\nlibrary\n  import:          common\n  hs-source-dirs:  core lib\n  exposed-modules:\n    C.Expr.HostPlatform\n    C.Operator.Classes\n    C.Operator.GenInstances\n    C.Operators\n    C.Type\n    C.Type.Internal.Universe\n\n  other-modules:\n    C.Expr.Posix32\n    C.Expr.Posix64\n    C.Expr.Win64\n    C.Operator.Internal\n    C.Operator.TH\n\n  -- External dependencies\n  build-depends:\n    , containers        >=0.5   && <0.9\n    , fin               >=0.3.2 && <0.4\n    , some              >=1.0.6 && <1.1\n    , template-haskell  >=2.18  && <2.25\n    , vec               >=0.5   && <0.6\n\n  if impl(ghc <9.4)\n    build-depends: data-array-byte >=0.1.0.1 && <0.2\n\ntest-suite tests\n  import:         common\n  hs-source-dirs: test\n  main-is:        Main.hs\n  type:           exitcode-stdio-1.0\n  other-modules:  CallClang\n\n  -- Internal dependencies\n  build-depends:\n    , c-expr-runtime\n    , libclang-bindings\n\n  -- Inherited dependencies\n  build-depends:\n    , containers\n    , data-default\n    , fin\n    , vec\n\n  -- External dependencies\n  build-depends:  text >=1.2 && <2.2\n";
  }
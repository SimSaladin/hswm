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
      specVersion = "2.2";
      identifier = { name = "skew-list"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/skew-list";
      url = "";
      synopsis = "Random access lists: skew binary";
      description = "This package provides ordinary random access list, 'SkewList'\nimplemented using skew binary approach.\n\nIt's worth comparing to ordinary lists, binary random access list (as in @ral@ package) and vectors (@vector@ package)\nacross two operations: indexing and consing.\n\n+------------------------------+------------+----------+\n|                              | Consing    | Indexing |\n+------------------------------+------------+----------+\n| Ordinary list, @[a]@         | O(1)       | O(n)     |\n+------------------------------+------------+----------+\n| Binary list, @RAList a@      | O(log n)   | O(log n) |\n+------------------------------+------------+----------+\n| Vector, @Vector@             | O(n)       | O(1)     |\n+------------------------------+------------+----------+\n| Sequence, @Seq@              | O(1)       | O(log n) |\n+------------------------------+------------+----------+\n| Skew binary list, @SkewList@ | O(1)       | O(log n) |\n+------------------------------+------------+----------+\n\n@SkewList@ improves upon ordinary list, the cons operation is still\nconstant time (though with higher constant factor), but indexing\ncan be done in a logarithmic time.\n\nBinary list cons is slower, as it might need to walk over whole\n/log n/ sized structure.\n\n@Vector@ is the other end of trade-off spectrum: indexing is constant time\noperation, but consing a new element will need to copy whole spine.\n\n@Seq@ from \"Data.Sequence\" has similar (but amortized) complexity bounds for\ncons and index as @SkewList@.  However (it seems) that indexing is quicker for\n@SkewList@ in practice. Also @SkewList@ has strict spine.\nOn the other hand, @Seq@ has quick append if you need that.\n\nIf you need both: fast consing and index, consider using @SkewList@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
        ];
        buildable = true;
      };
      tests = {
        "skew-list-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."skew-list" or (errorHandler.buildDepError "skew-list"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "skew-list-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ral" or (errorHandler.buildDepError "ral"))
            (hsPkgs."skew-list" or (errorHandler.buildDepError "skew-list"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/skew-list-0.1.tar.gz";
      sha256 = "42b9e4a084cefa647ee71c3de46fe8109926cc8c2e3a42f918c9dd3a746019c8";
    });
  }) // {
    package-description-override = "cabal-version:      2.2\nname:               skew-list\nversion:            0.1\nx-revision:         4\nsynopsis:           Random access lists: skew binary\ncategory:           Data\ndescription:\n  This package provides ordinary random access list, 'SkewList'\n  implemented using skew binary approach.\n  .\n  It's worth comparing to ordinary lists, binary random access list (as in @ral@ package) and vectors (@vector@ package)\n  across two operations: indexing and consing.\n  .\n  +------------------------------+------------+----------+\n  |                              | Consing    | Indexing |\n  +------------------------------+------------+----------+\n  | Ordinary list, @[a]@         | O(1)       | O(n)     |\n  +------------------------------+------------+----------+\n  | Binary list, @RAList a@      | O(log n)   | O(log n) |\n  +------------------------------+------------+----------+\n  | Vector, @Vector@             | O(n)       | O(1)     |\n  +------------------------------+------------+----------+\n  | Sequence, @Seq@              | O(1)       | O(log n) |\n  +------------------------------+------------+----------+\n  | Skew binary list, @SkewList@ | O(1)       | O(log n) |\n  +------------------------------+------------+----------+\n  .\n  @SkewList@ improves upon ordinary list, the cons operation is still\n  constant time (though with higher constant factor), but indexing\n  can be done in a logarithmic time.\n  .\n  Binary list cons is slower, as it might need to walk over whole\n  /log n/ sized structure.\n  .\n  @Vector@ is the other end of trade-off spectrum: indexing is constant time\n  operation, but consing a new element will need to copy whole spine.\n  .\n  @Seq@ from \"Data.Sequence\" has similar (but amortized) complexity bounds for\n  cons and index as @SkewList@.  However (it seems) that indexing is quicker for\n  @SkewList@ in practice. Also @SkewList@ has strict spine.\n  On the other hand, @Seq@ has quick append if you need that.\n  .\n  If you need both: fast consing and index, consider using @SkewList@.\n\nhomepage:           https://github.com/phadej/skew-list\nbug-reports:        https://github.com/phadej/skew-list/issues\nlicense:            BSD-3-Clause\nlicense-file:       LICENSE\nauthor:             Oleg Grenrus <oleg.grenrus@iki.fi>\nmaintainer:         Oleg.Grenrus <oleg.grenrus@iki.fi>\ncopyright:          (c) 2022 Oleg Grenrus\nbuild-type:         Simple\nextra-source-files: ChangeLog.md\ntested-with:\n  GHC ==8.6.5\n   || ==8.8.4\n   || ==8.10.7\n   || ==9.0.2\n   || ==9.2.8\n   || ==9.4.8\n   || ==9.6.5\n   || ==9.8.2\n   || ==9.10.1\n   || ==9.12.2\n\nsource-repository head\n  type:     git\n  location: https://github.com/phadej/skew-list.git\n\nlibrary\n  default-language: Haskell2010\n  hs-source-dirs:   src\n  ghc-options:      -Wall -fprint-explicit-kinds\n  exposed-modules:\n    Data.SkewList.Lazy\n    Data.SkewList.Strict\n\n  -- Internal modules\n  exposed-modules:\n    Data.SkewList.Lazy.Internal\n    Data.SkewList.Strict.Internal\n\n  other-modules:    TrustworthyCompat\n\n  -- GHC boot libs\n  build-depends:\n    , base     >=4.12.0.0 && <4.22\n    , deepseq  >=1.4.4.0  && <1.6\n\n  -- other dependencies\n  build-depends:\n    , hashable             ^>=1.4.1.0 || ^>=1.5.0.0\n    , indexed-traversable  ^>=0.1.1\n    , QuickCheck           ^>=2.14.2  || ^>=2.15\n    , strict               ^>=0.4.0.1 || ^>=0.5\n\n  if impl(ghc >=9.0)\n    -- these flags may abort compilation with GHC-8.10\n    -- https://gitlab.haskell.org/ghc/ghc/-/merge_requests/3295\n    ghc-options: -Winferred-safe-imports -Wmissing-safe-haskell-mode\n\ntest-suite skew-list-tests\n  type:             exitcode-stdio-1.0\n  main-is:          skew-list-tests.hs\n  other-modules:\n    Lazy\n    Strict\n\n  default-language: Haskell2010\n  hs-source-dirs:   tests\n  ghc-options:      -Wall\n  build-depends:\n    , base\n    , indexed-traversable\n    , QuickCheck           ^>=2.14.2   || ^>=2.15\n    , skew-list\n    , tasty                ^>=1.4.2.3  || ^>=1.5\n    , tasty-hunit          ^>=0.10.0.3\n    , tasty-quickcheck     ^>=0.10.2   || ^>=0.11.1\n\nbenchmark skew-list-bench\n  type:             exitcode-stdio-1.0\n  main-is:          skew-list-bench.hs\n  default-language: Haskell2010\n  hs-source-dirs:   bench\n  ghc-options:      -Wall\n  build-depends:\n    , base\n    , containers\n    , criterion   ^>=1.6.0.0\n    , ral         ^>=0.2.1\n    , skew-list\n    , vector      ^>=0.13.0.0\n";
  }
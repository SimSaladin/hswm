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
    flags = { adjunctions = true; distributive = true; semigroupoids = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "vec"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017-2021 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Vec: length-indexed (sized) list";
      description = "This package provides length-indexed (sized) lists, also known as vectors.\n\n@\ndata Vec n a where\n\\    VNil  :: Vec 'Nat.Z a\n\\    (:::) :: a -> Vec n a -> Vec ('Nat.S n) a\n@\n\nThe functions are implemented in four flavours:\n\n* __naive__: with explicit recursion. It's simple, constraint-less, yet slow.\n\n* __pull__: using @Fin n -> a@ representation, which fuses well,\nbut makes some programs hard to write. And\n\n* __data-family__: which allows lazy pattern matching\n\n* __inline__: which exploits how GHC dictionary inlining works, unrolling\nrecursion if the size of 'Vec' is known statically.\n\nAs best approach depends on the application, @vec@ doesn't do any magic\ntransformation. Benchmark your code.\n\nThis package uses [fin](https://hackage.haskell.org/package/fin), i.e. not @GHC.TypeLits@, for indexes.\n\nFor @lens@ or @optics@ support see [vec-lens](https://hackage.haskell.org/package/vec-lens) and [vec-optics](https://hackage.haskell.org/package/vec-optics) packages respectively.\n\nSee [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)\nby Sam Lindley and Conor McBride for answers to /how/ and /why/.\nRead [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)\nby Jeremy Gibbons for (not so) different ones.\n\n=== Similar packages\n\n* [linear](https://hackage.haskell.org/package/linear) has 'V' type,\nwhich uses 'Vector' from @vector@ package as backing store.\n@Vec@ is a real GADT, but tries to provide as many useful instances (upto @lens@).\n\n* [vector-sized](https://hackage.haskell.org/package/vector-sized)\nGreat package using @GHC.TypeLits@. Current version (0.6.1.0) uses\n@finite-typelits@ and @Int@ indexes.\n\n* [sized-vector](https://hackage.haskell.org/package/sized-vector) depends\non @singletons@ package. @vec@ isn't light on dependencies either,\nbut try to provide wide GHC support.\n\n* [fixed-vector](https://hackage.haskell.org/package/fixed-vector)\n\n* [sized](https://hackage.haskell.org/package/sized) also depends\non a @singletons@ package. The @Sized f n a@ type is generalisation of\n@linear@'s @V@ for any @ListLike@.\n\n* [clash-prelude](https://hackage.haskell.org/package/clash-prelude)\nis a kitchen sink package, which has @CLaSH.Sized.Vector@ module.\nAlso depends on @singletons@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."boring" or (errorHandler.buildDepError "boring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ] ++ pkgs.lib.optionals (flags.distributive) ([
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
        ] ++ pkgs.lib.optional (flags.adjunctions) (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions")))) ++ pkgs.lib.optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"));
        buildable = true;
      };
      tests = {
        "inspection" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/vec-0.5.1.1.tar.gz";
      sha256 = "17f5a6c900d104ebe53f0742b03ed60ce6b832375115013a30bad3e65f8a8593";
    });
  }) // {
    package-description-override = "cabal-version:      2.2\nname:               vec\nversion:            0.5.1.1\nsynopsis:           Vec: length-indexed (sized) list\ncategory:           Data, Dependent Types\ndescription:\n  This package provides length-indexed (sized) lists, also known as vectors.\n  .\n  @\n  data Vec n a where\n  \\    VNil  :: Vec 'Nat.Z a\n  \\    (:::) :: a -> Vec n a -> Vec ('Nat.S n) a\n  @\n  .\n  The functions are implemented in four flavours:\n  .\n  * __naive__: with explicit recursion. It's simple, constraint-less, yet slow.\n  .\n  * __pull__: using @Fin n -> a@ representation, which fuses well,\n  but makes some programs hard to write. And\n  .\n  * __data-family__: which allows lazy pattern matching\n  .\n  * __inline__: which exploits how GHC dictionary inlining works, unrolling\n  recursion if the size of 'Vec' is known statically.\n  .\n  As best approach depends on the application, @vec@ doesn't do any magic\n  transformation. Benchmark your code.\n  .\n  This package uses [fin](https://hackage.haskell.org/package/fin), i.e. not @GHC.TypeLits@, for indexes.\n  .\n  For @lens@ or @optics@ support see [vec-lens](https://hackage.haskell.org/package/vec-lens) and [vec-optics](https://hackage.haskell.org/package/vec-optics) packages respectively.\n  .\n  See [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)\n  by Sam Lindley and Conor McBride for answers to /how/ and /why/.\n  Read [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)\n  by Jeremy Gibbons for (not so) different ones.\n  .\n  === Similar packages\n  .\n  * [linear](https://hackage.haskell.org/package/linear) has 'V' type,\n  which uses 'Vector' from @vector@ package as backing store.\n  @Vec@ is a real GADT, but tries to provide as many useful instances (upto @lens@).\n  .\n  * [vector-sized](https://hackage.haskell.org/package/vector-sized)\n  Great package using @GHC.TypeLits@. Current version (0.6.1.0) uses\n  @finite-typelits@ and @Int@ indexes.\n  .\n  * [sized-vector](https://hackage.haskell.org/package/sized-vector) depends\n  on @singletons@ package. @vec@ isn't light on dependencies either,\n  but try to provide wide GHC support.\n  .\n  * [fixed-vector](https://hackage.haskell.org/package/fixed-vector)\n  .\n  * [sized](https://hackage.haskell.org/package/sized) also depends\n  on a @singletons@ package. The @Sized f n a@ type is generalisation of\n  @linear@'s @V@ for any @ListLike@.\n  .\n  * [clash-prelude](https://hackage.haskell.org/package/clash-prelude)\n  is a kitchen sink package, which has @CLaSH.Sized.Vector@ module.\n  Also depends on @singletons@.\n\nhomepage:           https://github.com/phadej/vec\nbug-reports:        https://github.com/phadej/vec/issues\nlicense:            BSD-3-Clause\nlicense-file:       LICENSE\nauthor:             Oleg Grenrus <oleg.grenrus@iki.fi>\nmaintainer:         Oleg.Grenrus <oleg.grenrus@iki.fi>\ncopyright:          (c) 2017-2021 Oleg Grenrus\nbuild-type:         Simple\nextra-source-files: ChangeLog.md\ntested-with:\n  GHC ==8.6.5\n   || ==8.8.4\n   || ==8.10.7\n   || ==9.0.2\n   || ==9.2.8\n   || ==9.4.8\n   || ==9.6.6\n   || ==9.8.4\n   || ==9.10.3\n   || ==9.12.2\n   || ==9.14.1\n\nsource-repository head\n  type:     git\n  location: https://github.com/phadej/vec.git\n  subdir:   vec\n\nflag adjunctions\n  description: Depend on @adjunctions@ to provide its instances\n  manual:      True\n  default:     True\n\nflag distributive\n  description:\n    Depend on @distributive@ to provide its instances. Turning on, disables @adjunctions@ too.\n\n  manual:      True\n  default:     True\n\nflag semigroupoids\n  description:\n    Depend on @semigroupoids@ to provide its instances, and `traverse1`.\n\n  manual:      True\n  default:     True\n\nlibrary\n  default-language:         Haskell2010\n  ghc-options:              -Wall -fprint-explicit-kinds\n  hs-source-dirs:           src\n  exposed-modules:\n    Data.Vec.DataFamily.SpineStrict\n    Data.Vec.Lazy\n    Data.Vec.Lazy.Inline\n    Data.Vec.Pull\n\n  other-modules:\n    Control.Lens.Yocto\n    SafeCompat\n\n  -- GHC boot libs\n  build-depends:\n    , base          >=4.12.0.0 && <4.23\n    , deepseq       >=1.4.4.0  && <1.6\n\n  -- siblings\n  build-depends:            fin ^>=0.3.1\n\n  -- other dependencies\n  build-depends:\n    , boring               ^>=0.2.2\n    , hashable             ^>=1.4.4.0 || ^>=1.5.0.0\n    , indexed-traversable  ^>=0.1.4\n    , QuickCheck           ^>=2.14.2  || ^>=2.15.0.1 || ^>=2.18.0.0\n\n  if flag(distributive)\n    build-depends: distributive ^>=0.6.2\n\n    if flag(adjunctions)\n      build-depends: adjunctions ^>=4.4.2\n\n  if flag(semigroupoids)\n    build-depends: semigroupoids ^>=6.0.1\n\n  other-extensions:\n    CPP\n    FlexibleContexts\n    GADTs\n    TypeOperators\n\n  if impl(ghc >=9.0)\n    -- these flags may abort compilation with GHC-8.10\n    -- https://gitlab.haskell.org/ghc/ghc/-/merge_requests/3295\n    ghc-options: -Winferred-safe-imports -Wmissing-safe-haskell-mode\n\n  x-docspec-extra-packages: lens\n\ntest-suite inspection\n  type:             exitcode-stdio-1.0\n  main-is:          Main.hs\n  other-modules:\n    Inspection\n    Inspection.DataFamily.SpineStrict\n\n  ghc-options:      -Wall -fprint-explicit-kinds\n  hs-source-dirs:   test\n  default-language: Haskell2010\n  build-depends:\n    , base\n    , fin\n    , inspection-testing  ^>=0.5.0.3 || ^>=0.6\n    , vec\n\nbenchmark bench\n  type:             exitcode-stdio-1.0\n  main-is:          Bench.hs\n  ghc-options:      -Wall -fprint-explicit-kinds\n  hs-source-dirs:   bench\n  default-language: Haskell2010\n  other-modules:    DotProduct\n  build-depends:\n    , base\n    , criterion  ^>=1.6.3.0\n    , fin\n    , vec\n    , vector\n";
  }
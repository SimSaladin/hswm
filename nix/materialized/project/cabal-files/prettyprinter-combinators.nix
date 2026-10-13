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
    flags = { enummapset = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "prettyprinter-combinators"; version = "0.1.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/prettyprinter-combinators";
      url = "";
      synopsis = "Some useful combinators for the prettyprinter package";
      description = "Various utilities that make writing Pretty instances easier.\n\nNotable utilites include automatic deriving of Pretty instance via\nGeneric, Data, or Show instance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.enummapset) (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"));
        buildable = true;
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/prettyprinter-combinators-0.1.4.tar.gz";
      sha256 = "dafd1b0e1d580230228ccd10fdd9b0ba7c7bca35f4541e8c52ea705007106fde";
    });
  }) // {
    package-description-override = "cabal-version: 3.0\n\nname:\n  prettyprinter-combinators\nversion:\n  0.1.4\nsynopsis:\n  Some useful combinators for the prettyprinter package\ndescription:\n  Various utilities that make writing Pretty instances easier.\n\n  Notable utilites include automatic deriving of Pretty instance via\n  Generic, Data, or Show instance.\n\ncategory:\n  User Interfaces, Text\n\nlicense:\n  Apache-2.0\nlicense-file:\n  LICENSE\nauthor:\n  Sergey Vinokurov\nmaintainer:\n  Sergey Vinokurov <serg.foo@gmail.com>\n\ntested-with:\n  , GHC == 9.2\n  , GHC == 9.4\n  , GHC == 9.6\n  , GHC == 9.8\n  , GHC == 9.10\n  , GHC == 9.12\n  , GHC == 9.14\n\nbuild-type:\n  Simple\n\nextra-doc-files:\n  Changelog.md\n  Readme.md\n\nhomepage: https://github.com/sergv/prettyprinter-combinators\nsource-repository head\n  type: git\n  location: https://github.com/sergv/prettyprinter-combinators.git\n\nflag enummapset\n  description:\n    Depend on enummapset package to provide instances and functions for it\n  default:\n    True\n  manual:\n    True\n\ncommon ghc-options\n  default-language:\n    GHC2021\n\n  ghc-options:\n    -Weverything\n    -Wno-all-missed-specialisations\n    -Wno-implicit-prelude\n    -Wno-missed-specialisations\n    -Wno-missing-import-lists\n    -Wno-missing-local-signatures\n    -Wno-missing-safe-haskell-mode\n    -Wno-safe\n    -Wno-type-defaults\n    -Wno-unsafe\n\n  if impl(ghc >= 8.8)\n    ghc-options:\n      -Wno-missing-deriving-strategies\n\n  if impl(ghc >= 9.2)\n    ghc-options:\n      -Wno-missing-kind-signatures\n\n  if impl(ghc >= 9.8)\n    ghc-options:\n      -Wno-missing-role-annotations\n      -Wno-missing-poly-kind-signatures\n\nlibrary\n  import: ghc-options\n  exposed-modules:\n    Prettyprinter.Combinators\n    Prettyprinter.Data\n    Prettyprinter.Generics\n    Prettyprinter.Instances\n    Prettyprinter.MetaDoc\n    Prettyprinter.Show\n  other-modules:\n    Prettyprinter.Combinators.Basic\n  hs-source-dirs:\n    src\n  build-depends:\n    , base >= 4.16 && <5\n    , bimap\n    , bytestring\n    , containers\n    , dlist\n    , os-string\n    , pretty-show >= 1.6\n    , prettyprinter >= 1.7\n    , syb\n    , template-haskell >= 2.18\n    , text\n    , time\n    , unordered-containers\n    , vector\n\n  if flag(enummapset)\n    build-depends:\n      , enummapset\n    cpp-options: -DHAVE_ENUMMAPSET\n";
  }
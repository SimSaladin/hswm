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
      specVersion = "2.0";
      identifier = { name = "haskell-gi"; version = "0.26.17"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (github@the.blueleaf.cc)";
      author = "Will Thompson and Iñaki García Etxebarria";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Generate Haskell bindings for GObject Introspection capable libraries";
      description = "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably\nGTK, but many other libraries in the GObject ecosystem provide introspection data too.";
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
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        pkgconfig = [
          (pkgconfPkgs."gobject-introspection-1.0" or (errorHandler.pkgConfDepError "gobject-introspection-1.0"))
          (pkgconfPkgs."gobject-2.0" or (errorHandler.pkgConfDepError "gobject-2.0"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."haskell-gi" or (errorHandler.buildDepError "haskell-gi"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/haskell-gi-0.26.17.tar.gz";
      sha256 = "d138039353559732594793a256e288b4753fd9bfbb99fd52a913b887cb2fe76d";
    });
  }) // {
    package-description-override = "name:                haskell-gi\nversion:             0.26.17\nsynopsis:            Generate Haskell bindings for GObject Introspection capable libraries\ndescription:         Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably\n                     GTK, but many other libraries in the GObject ecosystem provide introspection data too.\nhomepage:            https://github.com/haskell-gi/haskell-gi\nlicense:             LGPL-2.1\n                     -- or above\nlicense-file:        LICENSE\nauthor:              Will Thompson and Iñaki García Etxebarria\nmaintainer:          Iñaki García Etxebarria (github@the.blueleaf.cc)\nstability:           Experimental\ncategory:            Development\nbuild-type:          Custom\ntested-with:         GHC == 8.4.1, GHC == 8.6.1, GHC == 8.8.1, GHC == 8.10.1, GHC == 9.0.1, GHC == 9.2.1, GHC == 9.4, GHC == 9.6, GHC == 9.8, GHC == 9.10, GHC == 9.12\ncabal-version:       2.0\n\nextra-source-files: ChangeLog.md\n\ncustom-setup\n setup-depends:\n   base >= 4 && <5,\n   Cabal >= 1.24 && < 4,\n   cabal-doctest >= 1\n\nsource-repository head\n  type: git\n  location: https://github.com/haskell-gi/haskell-gi.git\n\nLibrary\n  default-language:    Haskell2010\n  pkgconfig-depends:   gobject-introspection-1.0 >= 1.32, gobject-2.0 >= 2.32\n  build-depends:       base >= 4.11 && < 5,\n                       haskell-gi-base >= 0.26.9 && <0.27,\n                       Cabal >= 1.24,\n                       attoparsec >= 0.13,\n                       containers,\n                       directory,\n                       filepath,\n                       mtl >= 2.2,\n                       transformers >= 0.3,\n                       pretty-show,\n                       ansi-terminal >= 0.10,\n                       process,\n                       safe,\n                       bytestring,\n                       xdg-basedir,\n                       xml-conduit >= 1.3,\n                       regex-tdfa >= 1.2,\n                       text >= 1.0\n\n  default-extensions: CPP, ForeignFunctionInterface, DoAndIfThenElse, LambdaCase, RankNTypes, OverloadedStrings\n  ghc-options:         -Wall -fwarn-incomplete-patterns -fno-warn-name-shadowing -Wcompat\n\n  c-sources:           lib/c/enumStorage.c\n  build-tool-depends:  hsc2hs:hsc2hs\n\n  hs-source-dirs:      lib\n  exposed-modules:     Data.GI.GIR.Alias,\n                       Data.GI.GIR.Allocation,\n                       Data.GI.GIR.Arg,\n                       Data.GI.GIR.BasicTypes,\n                       Data.GI.GIR.Callable,\n                       Data.GI.GIR.Callback,\n                       Data.GI.GIR.Constant,\n                       Data.GI.GIR.Deprecation,\n                       Data.GI.GIR.Documentation,\n                       Data.GI.GIR.Enum,\n                       Data.GI.GIR.Field,\n                       Data.GI.GIR.Flags,\n                       Data.GI.GIR.Function,\n                       Data.GI.GIR.Interface,\n                       Data.GI.GIR.Method,\n                       Data.GI.GIR.Object,\n                       Data.GI.GIR.Parser,\n                       Data.GI.GIR.Property,\n                       Data.GI.GIR.Repository,\n                       Data.GI.GIR.Signal,\n                       Data.GI.GIR.Struct,\n                       Data.GI.GIR.Type,\n                       Data.GI.GIR.Union,\n                       Data.GI.GIR.XMLUtils,\n                       Data.GI.CodeGen.API,\n                       Data.GI.CodeGen.CabalHooks,\n                       Data.GI.CodeGen.Callable,\n                       Data.GI.CodeGen.Code,\n                       Data.GI.CodeGen.CodeGen,\n                       Data.GI.CodeGen.Config,\n                       Data.GI.CodeGen.Constant,\n                       Data.GI.CodeGen.Conversions,\n                       Data.GI.CodeGen.CtoHaskellMap,\n                       Data.GI.CodeGen.EnumFlags,\n                       Data.GI.CodeGen.Fixups,\n                       Data.GI.CodeGen.GObject,\n                       Data.GI.CodeGen.GtkDoc,\n                       Data.GI.CodeGen.GType,\n                       Data.GI.CodeGen.Haddock,\n                       Data.GI.CodeGen.Inheritance,\n                       Data.GI.CodeGen.LibGIRepository,\n                       Data.GI.CodeGen.ModulePath,\n                       Data.GI.CodeGen.OverloadedSignals,\n                       Data.GI.CodeGen.OverloadedMethods,\n                       Data.GI.CodeGen.Overrides,\n                       Data.GI.CodeGen.PkgConfig,\n                       Data.GI.CodeGen.ProjectInfo,\n                       Data.GI.CodeGen.Properties,\n                       Data.GI.CodeGen.Signal,\n                       Data.GI.CodeGen.Struct,\n                       Data.GI.CodeGen.SymbolNaming,\n                       Data.GI.CodeGen.Transfer,\n                       Data.GI.CodeGen.Type,\n                       Data.GI.CodeGen.Util\n\n  other-modules:       Paths_haskell_gi\n\n  autogen-modules:     Paths_haskell_gi\n\ntest-suite doctests\n  type:          exitcode-stdio-1.0\n  default-language: Haskell2010\n  ghc-options:   -threaded -Wall\n  main-is:       DocTests.hs\n  build-depends: base\n               , process\n               , doctest >= 0.8\n               , haskell-gi >= 0.26.10\n";
  }
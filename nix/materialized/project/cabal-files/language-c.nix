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
    flags = { usebytestrings = true; iecfpextension = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "language-c"; version = "0.10.2"; };
      license = "BSD-3-Clause";
      copyright = "LICENSE";
      maintainer = "language.c@monoid.al";
      author = "AUTHORS";
      homepage = "https://visq.github.io/language-c/";
      url = "";
      synopsis = "Analysis and generation of C code";
      description = "Language C is a Haskell library for the analysis and generation of C code.\nIt features a complete, well tested parser and pretty printer for all of C99 and a large\nset of C11 and clang/GNU extensions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ] ++ pkgs.lib.optional (flags.usebytestrings) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
        ];
        buildable = true;
      };
      tests = {
        "language-c-harness" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/language-c-0.10.2.tar.gz";
      sha256 = "f1135edda4a2d263fed8c12cae166e547da095200a026e65e1f5e134c855f522";
    });
  }) // {
    package-description-override = "cabal-version:   2.2\nname:            language-c\nversion:         0.10.2\nlicense:         BSD-3-Clause\nlicense-file:    LICENSE\ncopyright:       LICENSE\nmaintainer:      language.c@monoid.al\nauthor:          AUTHORS\ntested-with:\n    ghc ==9.14.1 ghc ==9.12.2 ghc ==9.10.3 ghc ==9.8.4 ghc ==9.6.7\n    ghc ==9.4.8 ghc ==9.2.8 ghc ==9.0.2 ghc ==8.10.7 ghc ==8.8.4\n    ghc ==8.6.5 ghc ==8.4.4 ghc ==8.2.2 ghc ==8.0.2\n\nhomepage:        https://visq.github.io/language-c/\nbug-reports:     https://github.com/visq/language-c/issues/\nsynopsis:        Analysis and generation of C code\ndescription:\n    Language C is a Haskell library for the analysis and generation of C code.\n    It features a complete, well tested parser and pretty printer for all of C99 and a large\n    set of C11 and clang/GNU extensions.\n\ncategory:        Language\nbuild-type:      Simple\nextra-doc-files:\n    ChangeLog.md\n    README.md\n    AUTHORS\n    AUTHORS.c2hs\n\nsource-repository head\n    type:     git\n    location: https://github.com/visq/language-c.git\n\nflag usebytestrings\n    description: Use ByteString as InputStream datatype\n    manual:      True\n\nflag iecfpextension\n    description:\n        Support IEC 60559 floating point extension (defines _Float128)\n\n    manual:      True\n\nlibrary\n    exposed-modules:\n        Language.C\n        Language.C.Data\n        Language.C.Data.Position\n        Language.C.Data.Ident\n        Language.C.Data.Error\n        Language.C.Data.Name\n        Language.C.Data.Node\n        Language.C.Data.InputStream\n        Language.C.Syntax\n        Language.C.Syntax.AST\n        Language.C.Syntax.Constants\n        Language.C.Syntax.Ops\n        Language.C.Syntax.Utils\n        Language.C.Parser\n        Language.C.Pretty\n        Language.C.System.Preprocess\n        Language.C.System.GCC\n        Language.C.Analysis\n        Language.C.Analysis.ConstEval\n        Language.C.Analysis.Builtins\n        Language.C.Analysis.SemError\n        Language.C.Analysis.SemRep\n        Language.C.Analysis.DefTable\n        Language.C.Analysis.TravMonad\n        Language.C.Analysis.AstAnalysis\n        Language.C.Analysis.DeclAnalysis\n        Language.C.Analysis.Debug\n        Language.C.Analysis.TypeCheck\n        Language.C.Analysis.TypeConversions\n        Language.C.Analysis.TypeUtils\n        Language.C.Analysis.NameSpaceMap\n        Language.C.Analysis.MachineDescs\n        Language.C.Analysis.Export\n\n    build-tool-depends: happy:happy, alex:alex\n    hs-source-dirs:     src\n    other-modules:\n        Language.C.Data.RList\n        Language.C.Parser.Builtin\n        Language.C.Parser.Lexer\n        Language.C.Parser.ParserMonad\n        Language.C.Parser.Tokens\n        Language.C.Parser.Parser\n\n    default-language:   Haskell2010\n    default-extensions:\n        CPP DeriveDataTypeable DeriveGeneric PatternGuards BangPatterns\n        ExistentialQuantification GeneralizedNewtypeDeriving\n        ScopedTypeVariables\n\n    ghc-options:        -Wall -Wno-redundant-constraints\n    build-depends:\n        base >=4.9 && <5,\n        array <0.6,\n        containers >=0.3 && <0.9,\n        deepseq >=1.4.0.0 && <1.6,\n        directory <1.4,\n        filepath <1.6,\n        mtl <2.4,\n        pretty <1.2,\n        process <1.7\n\n    if flag(usebytestrings)\n        build-depends: bytestring >=0.9.0 && <0.13\n\n    else\n        cpp-options: -DNO_BYTESTRING\n\n    if flag(iecfpextension)\n        cpp-options: -DIEC_60559_TYPES_EXT\n\ntest-suite language-c-harness\n    type:             exitcode-stdio-1.0\n    main-is:          test/harness/run-harness.hs\n    default-language: Haskell2010\n    build-depends:\n        base <5,\n        directory,\n        process,\n        filepath\n";
  }
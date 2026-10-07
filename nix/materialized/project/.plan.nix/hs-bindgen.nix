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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "hs-bindgen"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@well-typed.com";
      author = "Well-Typed LLP";
      homepage = "";
      url = "";
      synopsis = "Generate Haskell bindings from C headers";
      description = "Automatically generate Haskell bindings from C headers";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [
        "bootstrap/*.h"
        "musl-include/**/*.h"
        "musl-include/COPYRIGHT"
        "musl-include/VERSION"
        "test-artefacts/fixtures/**/*.hs"
        "test-artefacts/fixtures/**/*.txt"
        "test-artefacts/fixtures/**/*.yaml"
        "test-artefacts/headers/**/*.h"
        "test-artefacts/headers/**/*.yaml"
      ];
      extraTmpFiles = [];
      extraDocFiles = [
        "CHANGELOG.md"
        "CHANGELOG.md"
        "known-issues.md"
        "README.md"
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."c-expr-dsl" or (errorHandler.buildDepError "c-expr-dsl"))
          (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
          (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
          (hsPkgs."hs-bindgen".components.sublibs.internal or (errorHandler.buildDepError "hs-bindgen:internal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."debruijn" or (errorHandler.buildDepError "debruijn"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
        ];
        buildable = true;
        modules = [
          "HsBindgen/Internal/Macro/CExpr"
          "HsBindgen/Internal/Macro/CExpr/Global"
          "HsBindgen/Internal/Macro/CExpr/Parse"
          "HsBindgen/Internal/Macro/CExpr/Resolution"
          "HsBindgen/Internal/Macro/CExpr/Translation/Type"
          "HsBindgen/Internal/Macro/CExpr/Translation/Value"
          "HsBindgen/Internal/Macro/CExpr/Type"
          "HsBindgen/Internal/Macro/CExpr/Typecheck"
          "HsBindgen/Macro"
          "HsBindgen/TH"
        ];
        hsSourceDirs = [ "src" ];
      };
      sublibs = {
        "internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."debruijn" or (errorHandler.buildDepError "debruijn"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doxygen-parser" or (errorHandler.buildDepError "doxygen-parser"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
          modules = [
            "Paths_hs_bindgen"
            "HsBindgen/Config"
            "Data/Digraph"
            "HsBindgen"
            "HsBindgen/Artefact"
            "HsBindgen/ArtefactM"
            "HsBindgen/Backend"
            "HsBindgen/Backend/Category"
            "HsBindgen/Backend/Category/ApplyChoice"
            "HsBindgen/Backend/Extensions"
            "HsBindgen/Backend/Global"
            "HsBindgen/Backend/Hs/AST"
            "HsBindgen/Backend/Hs/AST/CompletePragma"
            "HsBindgen/Backend/Hs/AST/Strategy"
            "HsBindgen/Backend/Hs/CallConv"
            "HsBindgen/Backend/Hs/Haddock/Documentation"
            "HsBindgen/Backend/Hs/Haddock/Translation"
            "HsBindgen/Backend/Hs/Name"
            "HsBindgen/Backend/Hs/Origin"
            "HsBindgen/Backend/Hs/Translation"
            "HsBindgen/Backend/Hs/Translation/Field"
            "HsBindgen/Backend/Hs/Translation/ForeignImport"
            "HsBindgen/Backend/Hs/Translation/Function"
            "HsBindgen/Backend/Hs/Translation/Instances"
            "HsBindgen/Backend/Hs/Translation/Monad"
            "HsBindgen/Backend/Hs/Translation/Newtype"
            "HsBindgen/Backend/Hs/Translation/Structure"
            "HsBindgen/Backend/Hs/Translation/ToFromFunPtr"
            "HsBindgen/Backend/Hs/Translation/Union"
            "HsBindgen/Backend/HsModule/Names"
            "HsBindgen/Backend/HsModule/Pretty"
            "HsBindgen/Backend/HsModule/Pretty/CAPI"
            "HsBindgen/Backend/HsModule/Pretty/Comment"
            "HsBindgen/Backend/HsModule/Pretty/Common"
            "HsBindgen/Backend/HsModule/Pretty/Decl"
            "HsBindgen/Backend/HsModule/Pretty/Expr"
            "HsBindgen/Backend/HsModule/Pretty/Type"
            "HsBindgen/Backend/HsModule/Render"
            "HsBindgen/Backend/HsModule/Translation"
            "HsBindgen/Backend/HsModule/Translation/Doxygen"
            "HsBindgen/Backend/Level"
            "HsBindgen/Backend/Runtime"
            "HsBindgen/Backend/SHs/AST"
            "HsBindgen/Backend/SHs/AST/Expr"
            "HsBindgen/Backend/SHs/AST/Type"
            "HsBindgen/Backend/SHs/Simplify"
            "HsBindgen/Backend/SHs/Translation"
            "HsBindgen/Backend/SHs/Translation/Common"
            "HsBindgen/Backend/SHs/Translation/MapFunction"
            "HsBindgen/Backend/TH/Translation"
            "HsBindgen/Backend/UniqueSymbol"
            "HsBindgen/BindingSpec"
            "HsBindgen/BindingSpec/Gen"
            "HsBindgen/BindingSpec/Private/Common"
            "HsBindgen/BindingSpec/Private/Stdlib"
            "HsBindgen/BindingSpec/Private/V1"
            "HsBindgen/BindingSpec/Private/Version"
            "HsBindgen/Boot"
            "HsBindgen/Cache"
            "HsBindgen/Clang"
            "HsBindgen/Clang/CompareVersions"
            "HsBindgen/Clang/Discover"
            "HsBindgen/Clang/ExtraClangArgs"
            "HsBindgen/Clang/Macos"
            "HsBindgen/Clang/Tokens"
            "HsBindgen/Config/ClangArgs"
            "HsBindgen/Config/Internal"
            "HsBindgen/Config/MangleCandidate"
            "HsBindgen/Config/MangleCandidate/ReservedNames"
            "HsBindgen/Config/Prelims"
            "HsBindgen/Doxygen"
            "HsBindgen/Eff"
            "HsBindgen/Errors"
            "HsBindgen/Frontend"
            "HsBindgen/Frontend/Analysis"
            "HsBindgen/Frontend/Analysis/DeclIndex"
            "HsBindgen/Frontend/Analysis/DeclIndex/ResolveMacro"
            "HsBindgen/Frontend/Analysis/DeclUseGraph"
            "HsBindgen/Frontend/Analysis/DeclUseGraph/Construction"
            "HsBindgen/Frontend/Analysis/DeclUseGraph/Definition"
            "HsBindgen/Frontend/Analysis/DeclUseGraph/Query"
            "HsBindgen/Frontend/Analysis/Deps"
            "HsBindgen/Frontend/Analysis/IncludeGraph"
            "HsBindgen/Frontend/Analysis/Typedefs"
            "HsBindgen/Frontend/Analysis/UnnamedIdUsage"
            "HsBindgen/Frontend/Analysis/UseDeclGraph"
            "HsBindgen/Frontend/DeclMeta"
            "HsBindgen/Frontend/LanguageC"
            "HsBindgen/Frontend/LanguageC/Error"
            "HsBindgen/Frontend/LanguageC/Monad"
            "HsBindgen/Frontend/LanguageC/PartialAST"
            "HsBindgen/Frontend/LanguageC/PartialAST/FromLanC"
            "HsBindgen/Frontend/LanguageC/PartialAST/ToBindgen"
            "HsBindgen/Frontend/Pass/AdjustTypes"
            "HsBindgen/Frontend/Pass/AdjustTypes/IsPass"
            "HsBindgen/Frontend/Pass/ConstructTranslationUnit"
            "HsBindgen/Frontend/Pass/ConstructTranslationUnit/IsPass"
            "HsBindgen/Frontend/Pass/EnrichComments"
            "HsBindgen/Frontend/Pass/EnrichComments/IsPass"
            "HsBindgen/Frontend/Pass/FillUnnamedIds"
            "HsBindgen/Frontend/Pass/FillUnnamedIds/ChooseNames"
            "HsBindgen/Frontend/Pass/FillUnnamedIds/IsPass"
            "HsBindgen/Frontend/Pass/Final"
            "HsBindgen/Frontend/Pass/MangleNames"
            "HsBindgen/Frontend/Pass/MangleNames/CreateNames"
            "HsBindgen/Frontend/Pass/MangleNames/DetectClashes"
            "HsBindgen/Frontend/Pass/MangleNames/Error"
            "HsBindgen/Frontend/Pass/MangleNames/IsPass"
            "HsBindgen/Frontend/Pass/MangleNames/Names"
            "HsBindgen/Frontend/Pass/MangleNames/ResolveNames"
            "HsBindgen/Frontend/Pass/Parse"
            "HsBindgen/Frontend/Pass/Parse/Builtin"
            "HsBindgen/Frontend/Pass/Parse/Context"
            "HsBindgen/Frontend/Pass/Parse/Decl"
            "HsBindgen/Frontend/Pass/Parse/Decl/Field"
            "HsBindgen/Frontend/Pass/Parse/Decl/ImplicitFields"
            "HsBindgen/Frontend/Pass/Parse/Decl/Macro"
            "HsBindgen/Frontend/Pass/Parse/Decl/Members"
            "HsBindgen/Frontend/Pass/Parse/IsPass"
            "HsBindgen/Frontend/Pass/Parse/Monad/Decl"
            "HsBindgen/Frontend/Pass/Parse/Monad/SourceRangeMap"
            "HsBindgen/Frontend/Pass/Parse/Monad/Type"
            "HsBindgen/Frontend/Pass/Parse/Msg"
            "HsBindgen/Frontend/Pass/Parse/Result"
            "HsBindgen/Frontend/Pass/Parse/Type"
            "HsBindgen/Frontend/Pass/PrepareReparse"
            "HsBindgen/Frontend/Pass/PrepareReparse/AST"
            "HsBindgen/Frontend/Pass/PrepareReparse/Flatten"
            "HsBindgen/Frontend/Pass/PrepareReparse/IsPass"
            "HsBindgen/Frontend/Pass/PrepareReparse/IsPass/Msg"
            "HsBindgen/Frontend/Pass/PrepareReparse/Lexer"
            "HsBindgen/Frontend/Pass/PrepareReparse/Parser"
            "HsBindgen/Frontend/Pass/PrepareReparse/Preprocessor"
            "HsBindgen/Frontend/Pass/PrepareReparse/Printer"
            "HsBindgen/Frontend/Pass/PrepareReparse/Printer/Util"
            "HsBindgen/Frontend/Pass/PrepareReparse/Simplifier"
            "HsBindgen/Frontend/Pass/PrepareReparse/Tracer"
            "HsBindgen/Frontend/Pass/PrepareReparse/Update"
            "HsBindgen/Frontend/Pass/ReparseMacroExpansions"
            "HsBindgen/Frontend/Pass/ReparseMacroExpansions/ForgetAnn"
            "HsBindgen/Frontend/Pass/ReparseMacroExpansions/IsPass"
            "HsBindgen/Frontend/Pass/ReparseMacroExpansions/IsPass/Msg"
            "HsBindgen/Frontend/Pass/ReparseMacroExpansions/LanC"
            "HsBindgen/Frontend/Pass/ReparseMacroExpansions/Zip"
            "HsBindgen/Frontend/Pass/ReparseMacroExpansions/Zip/Error"
            "HsBindgen/Frontend/Pass/ResolveBindingSpecs"
            "HsBindgen/Frontend/Pass/ResolveBindingSpecs/IsPass"
            "HsBindgen/Frontend/Pass/Select"
            "HsBindgen/Frontend/Pass/Select/IsPass"
            "HsBindgen/Frontend/Pass/SimplifyAST"
            "HsBindgen/Frontend/Pass/SimplifyAST/IsPass"
            "HsBindgen/Frontend/Pass/TranslateTypes"
            "HsBindgen/Frontend/Pass/TranslateTypes/IsPass"
            "HsBindgen/Frontend/Pass/TranslateTypes/IsPass/Msg"
            "HsBindgen/Frontend/Pass/TranslateTypes/Translation"
            "HsBindgen/Frontend/Pass/TypecheckMacros"
            "HsBindgen/Frontend/Pass/TypecheckMacros/IsPass"
            "HsBindgen/Frontend/Pass/TypecheckMacros/KnownTypes"
            "HsBindgen/Frontend/Pass/TypecheckMacros/Typecheck"
            "HsBindgen/Frontend/Predicate"
            "HsBindgen/Frontend/PrettyC"
            "HsBindgen/Frontend/ProcessIncludes"
            "HsBindgen/Frontend/RootHeader"
            "HsBindgen/Frontend/TranslationUnit"
            "HsBindgen/Guasi"
            "HsBindgen/Imports"
            "HsBindgen/Instances"
            "HsBindgen/IR/C"
            "HsBindgen/IR/C/Conflict"
            "HsBindgen/IR/C/Decl"
            "HsBindgen/IR/C/DeclPath"
            "HsBindgen/IR/C/HashDefine"
            "HsBindgen/IR/C/HashIncludeArg"
            "HsBindgen/IR/C/LocationInfo"
            "HsBindgen/IR/C/Naming"
            "HsBindgen/IR/C/PrettyPrinter"
            "HsBindgen/IR/C/RootDirective"
            "HsBindgen/IR/C/Type"
            "HsBindgen/IR/Hs"
            "HsBindgen/IR/Hs/Type"
            "HsBindgen/IR/Pass"
            "HsBindgen/IR/Pass/Ann"
            "HsBindgen/IR/Pass/CommentDecl"
            "HsBindgen/IR/Pass/Definition"
            "HsBindgen/IR/Pass/ExtBinding"
            "HsBindgen/IR/Pass/Id"
            "HsBindgen/IR/Pass/Macro"
            "HsBindgen/IR/Pass/Msg"
            "HsBindgen/IR/Pass/ScopedName"
            "HsBindgen/IR/Pass/Types"
            "HsBindgen/IR/Translation"
            "HsBindgen/Language/C"
            "HsBindgen/Language/Haskell"
            "HsBindgen/Macro/Empty"
            "HsBindgen/Macro/Error"
            "HsBindgen/Macro/Flip"
            "HsBindgen/Macro/Interface"
            "HsBindgen/Macro/Parse"
            "HsBindgen/Macro/Raw"
            "HsBindgen/Macro/Raw/Lang"
            "HsBindgen/Macro/Raw/Parse"
            "HsBindgen/Macro/Syntax"
            "HsBindgen/Macro/Type"
            "HsBindgen/Macro/UniqueExpansion"
            "HsBindgen/Macro/UniqueExpansion/Parse"
            "HsBindgen/Macro/UniqueExpansion/Types"
            "HsBindgen/NameHint"
            "HsBindgen/Orphans"
            "HsBindgen/Resolve"
            "HsBindgen/Test"
            "HsBindgen/Test/C"
            "HsBindgen/Test/Hs"
            "HsBindgen/Test/Internal"
            "HsBindgen/Test/Readme"
            "HsBindgen/TH/Internal"
            "HsBindgen/TraceMsg"
            "HsBindgen/Util/Monad"
            "HsBindgen/Util/Process"
            "HsBindgen/Util/Rational"
            "HsBindgen/Util/Tracer"
            "Text/SimplePrettyPrint"
          ];
          hsSourceDirs = [ "src-internal" ];
        };
        "test-common" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-bindgen".components.sublibs.internal or (errorHandler.buildDepError "hs-bindgen:internal"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
          modules = [
            "Test/Common/HsBindgen/Trace"
            "Test/Common/HsBindgen/Trace/Patterns"
            "Test/Common/HsBindgen/Trace/Predicate"
            "Test/Common/Util/AnsiDiff"
            "Test/Common/Util/Cabal"
            "Test/Common/Util/Tasty"
            "Test/Common/Util/Tasty/Golden"
          ];
          hsSourceDirs = [ "test/common" ];
        };
      };
      exes = {
        "hs-bindgen-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-bindgen" or (errorHandler.buildDepError "hs-bindgen"))
            (hsPkgs."hs-bindgen".components.sublibs.internal or (errorHandler.buildDepError "hs-bindgen:internal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
          modules = [
            "HsBindgen/App"
            "HsBindgen/App/Output"
            "HsBindgen/Cli"
            "HsBindgen/Cli/BindingSpec"
            "HsBindgen/Cli/BindingSpec/StdLib"
            "HsBindgen/Cli/GenTests"
            "HsBindgen/Cli/Info"
            "HsBindgen/Cli/Info/BuiltinMacros"
            "HsBindgen/Cli/Info/Doxygen"
            "HsBindgen/Cli/Info/IncludeGraph"
            "HsBindgen/Cli/Info/Instances"
            "HsBindgen/Cli/Info/Libclang"
            "HsBindgen/Cli/Info/ResolveHeader"
            "HsBindgen/Cli/Info/UseDeclGraph"
            "HsBindgen/Cli/Internal"
            "HsBindgen/Cli/Internal/Frontend"
            "HsBindgen/Cli/Preprocess"
            "HsBindgen/Cli/ToolSupport"
            "HsBindgen/Cli/ToolSupport/Literate"
            "Paths_hs_bindgen"
          ];
          hsSourceDirs = [ "app" ];
          mainPath = [
            "hs-bindgen-cli.hs"
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.8") "";
        };
        "clang-ast-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-bindgen".components.sublibs.internal or (errorHandler.buildDepError "hs-bindgen:internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = if flags.dev then true else false;
          hsSourceDirs = [ "clang-ast-dump" ];
          mainPath = ([
            "Main.hs"
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.8") "") ++ [
            ""
          ];
        };
      };
      tests = {
        "test-hs-bindgen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-bindgen" or (errorHandler.buildDepError "hs-bindgen"))
            (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
            (hsPkgs."hs-bindgen".components.sublibs.internal or (errorHandler.buildDepError "hs-bindgen:internal"))
            (hsPkgs."hs-bindgen".components.sublibs.test-common or (errorHandler.buildDepError "hs-bindgen:test-common"))
            (hsPkgs."c-expr-dsl" or (errorHandler.buildDepError "c-expr-dsl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."debruijn" or (errorHandler.buildDepError "debruijn"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hs-bindgen.components.exes.hs-bindgen-cli or (pkgs.pkgsBuildBuild.hs-bindgen-cli or (errorHandler.buildToolDepError "hs-bindgen:hs-bindgen-cli")))
          ];
          buildable = true;
          modules = [
            "Test/HsBindgen/Clang"
            "Test/HsBindgen/Fixtures/Haddock"
            "Test/HsBindgen/Fixtures/TestCases"
            "Test/HsBindgen/Fixtures/Utils"
            "Test/HsBindgen/Frontend/LanguageC"
            "Test/HsBindgen/Frontend/Pass/PrepareReparse"
            "Test/HsBindgen/Golden"
            "Test/HsBindgen/Golden/Arrays"
            "Test/HsBindgen/Golden/Attributes"
            "Test/HsBindgen/Golden/BindingSpecs"
            "Test/HsBindgen/Golden/Comprehensive"
            "Test/HsBindgen/Golden/Declarations"
            "Test/HsBindgen/Golden/Documentation"
            "Test/HsBindgen/Golden/EdgeCases"
            "Test/HsBindgen/Golden/Functions"
            "Test/HsBindgen/Golden/Globals"
            "Test/HsBindgen/Golden/Infra/Check/BindingSpec"
            "Test/HsBindgen/Golden/Infra/Check/FailureBindgen"
            "Test/HsBindgen/Golden/Infra/Check/FailureLibclang"
            "Test/HsBindgen/Golden/Infra/Check/PP"
            "Test/HsBindgen/Golden/Infra/Check/TH"
            "Test/HsBindgen/Golden/Infra/TestCase"
            "Test/HsBindgen/Golden/Infra/TestCaseTree"
            "Test/HsBindgen/Golden/Macros"
            "Test/HsBindgen/Golden/Macros/Lang"
            "Test/HsBindgen/Golden/Macros/Redeclaration"
            "Test/HsBindgen/Golden/Macros/Reparse"
            "Test/HsBindgen/Golden/ProgramAnalysis"
            "Test/HsBindgen/Golden/Types"
            "Test/HsBindgen/Integration/ExitCode"
            "Test/HsBindgen/Integration/OverwritePolicy"
            "Test/HsBindgen/Macro/CExpr"
            "Test/HsBindgen/Macro/Infra"
            "Test/HsBindgen/Macro/Syntax"
            "Test/HsBindgen/Macro/Syntax/Clang"
            "Test/HsBindgen/Macro/UniqueExpansion"
            "Test/HsBindgen/PPFixtures"
            "Test/HsBindgen/PPFixtures/Compile"
            "Test/HsBindgen/PPFixtures/TestCases"
            "Test/HsBindgen/Prop/Selection"
            "Test/HsBindgen/Resources"
            "Test/HsBindgen/THFixtures"
            "Test/HsBindgen/THFixtures/Compile"
            "Test/HsBindgen/THFixtures/Generate"
            "Test/HsBindgen/THFixtures/TestCases"
            "Test/HsBindgen/Unit/ClangArgs"
            "Test/HsBindgen/Unit/Digraph"
            "Test/HsBindgen/Unit/Frontend"
            "Test/HsBindgen/Unit/Pretty"
            "Test/HsBindgen/Unit/RootDirective"
            "Test/HsBindgen/Unit/Runtime"
            "Test/HsBindgen/Unit/Tracer"
          ];
          hsSourceDirs = [ "test/hs-bindgen" ];
          mainPath = [ "test-hs-bindgen.hs" ];
        };
        "test-th" = {
          depends = [
            (hsPkgs."hs-bindgen" or (errorHandler.buildDepError "hs-bindgen"))
            (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
            (hsPkgs."hs-bindgen".components.sublibs.test-common or (errorHandler.buildDepError "hs-bindgen:test-common"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
          modules = [
            "Test/TH/RecordDot"
            "Test/TH/StaticCounterA"
            "Test/TH/StaticCounterB"
            "Test/TH/Test01"
            "Test/TH/Test02"
          ];
          hsSourceDirs = [ "test/th" ];
          includeDirs = [ "test-artefacts/headers" ];
          mainPath = [ "test-th.hs" ];
        };
        "test-literate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
            (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hs-bindgen.components.exes.hs-bindgen-cli or (pkgs.pkgsBuildBuild.hs-bindgen-cli or (errorHandler.buildToolDepError "hs-bindgen:hs-bindgen-cli")))
          ];
          buildable = true;
          modules = [
            "Test/Literate/Test01"
            "Test/Literate/Test02"
            "Test/Literate/TestPointer"
            "Test/Literate/TestSafe"
            "Test/Literate/TestSafeAndUnsafe"
            "Test/Literate/TestUnsafe"
          ];
          hsSourceDirs = [ "test/literate" ];
          includeDirs = [ "test-artefacts/headers" ];
          mainPath = [ "test-literate.hs" ];
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
    postUnpack = "sourceRoot+=/hs-bindgen; echo source root reset to $sourceRoot";
  }
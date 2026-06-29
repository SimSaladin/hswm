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
      specVersion = "3.6";
      identifier = { name = "Cabal-syntax"; version = "3.17.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2003-2026, Cabal Development Team (see AUTHORS file)";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A library for working with .cabal files";
      description = "This library provides tools for reading and manipulating the .cabal file\nformat.";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [ "README.md" "ChangeLog.md" ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
        ];
        buildable = true;
        modules = [
          "Distribution/Backpack"
          "Distribution/CabalSpecVersion"
          "Distribution/Compat/Binary"
          "Distribution/Compat/CharParsing"
          "Distribution/Compat/DList"
          "Distribution/Compat/Exception"
          "Distribution/Compat/Graph"
          "Distribution/Compat/Lens"
          "Distribution/Compat/Newtype"
          "Distribution/Compat/NonEmptySet"
          "Distribution/Compat/Parsing"
          "Distribution/Compat/Prelude"
          "Distribution/Compiler"
          "Distribution/FieldGrammar"
          "Distribution/FieldGrammar/Class"
          "Distribution/FieldGrammar/FieldDescrs"
          "Distribution/FieldGrammar/Newtypes"
          "Distribution/FieldGrammar/Parsec"
          "Distribution/FieldGrammar/Pretty"
          "Distribution/Fields"
          "Distribution/Fields/ConfVar"
          "Distribution/Fields/Field"
          "Distribution/Fields/Lexer"
          "Distribution/Fields/LexerMonad"
          "Distribution/Fields/ParseResult"
          "Distribution/Fields/Parser"
          "Distribution/Fields/Pretty"
          "Distribution/InstalledPackageInfo"
          "Distribution/License"
          "Distribution/ModuleName"
          "Distribution/Package"
          "Distribution/PackageDescription"
          "Distribution/PackageDescription/Configuration"
          "Distribution/PackageDescription/FieldGrammar"
          "Distribution/PackageDescription/Parsec"
          "Distribution/PackageDescription/PrettyPrint"
          "Distribution/PackageDescription/Quirks"
          "Distribution/PackageDescription/Utils"
          "Distribution/Parsec"
          "Distribution/Parsec/Error"
          "Distribution/Parsec/FieldLineStream"
          "Distribution/Parsec/Position"
          "Distribution/Parsec/Warning"
          "Distribution/Parsec/Source"
          "Distribution/Pretty"
          "Distribution/SPDX"
          "Distribution/SPDX/License"
          "Distribution/SPDX/LicenseExceptionId"
          "Distribution/SPDX/LicenseExpression"
          "Distribution/SPDX/LicenseId"
          "Distribution/SPDX/LicenseListVersion"
          "Distribution/SPDX/LicenseReference"
          "Distribution/System"
          "Distribution/Text"
          "Distribution/Types/AbiDependency"
          "Distribution/Types/AbiHash"
          "Distribution/Types/Benchmark"
          "Distribution/Types/Benchmark/Lens"
          "Distribution/Types/BenchmarkInterface"
          "Distribution/Types/BenchmarkType"
          "Distribution/Types/BuildInfo"
          "Distribution/Types/BuildInfo/Lens"
          "Distribution/Types/BuildType"
          "Distribution/Types/Component"
          "Distribution/Types/ComponentId"
          "Distribution/Types/ComponentName"
          "Distribution/Types/ComponentRequestedSpec"
          "Distribution/Types/CondTree"
          "Distribution/Types/Condition"
          "Distribution/Types/ConfVar"
          "Distribution/Types/Dependency"
          "Distribution/Types/DependencyMap"
          "Distribution/Types/DependencySatisfaction"
          "Distribution/Types/ExeDependency"
          "Distribution/Types/Executable"
          "Distribution/Types/Executable/Lens"
          "Distribution/Types/ExecutableScope"
          "Distribution/Types/ExposedModule"
          "Distribution/Types/Flag"
          "Distribution/Types/ForeignLib"
          "Distribution/Types/ForeignLib/Lens"
          "Distribution/Types/ForeignLibOption"
          "Distribution/Types/ForeignLibType"
          "Distribution/Types/GenericPackageDescription"
          "Distribution/Types/GenericPackageDescription/Lens"
          "Distribution/Types/HookedBuildInfo"
          "Distribution/Types/IncludeRenaming"
          "Distribution/Types/InstalledPackageInfo"
          "Distribution/Types/InstalledPackageInfo/Lens"
          "Distribution/Types/InstalledPackageInfo/FieldGrammar"
          "Distribution/Types/LegacyExeDependency"
          "Distribution/Types/Lens"
          "Distribution/Types/Library"
          "Distribution/Types/Library/Lens"
          "Distribution/Types/LibraryName"
          "Distribution/Types/LibraryVisibility"
          "Distribution/Types/MissingDependency"
          "Distribution/Types/MissingDependencyReason"
          "Distribution/Types/Mixin"
          "Distribution/Types/Module"
          "Distribution/Types/ModuleReexport"
          "Distribution/Types/ModuleRenaming"
          "Distribution/Types/MungedPackageId"
          "Distribution/Types/MungedPackageName"
          "Distribution/Types/PackageDescription"
          "Distribution/Types/PackageDescription/Lens"
          "Distribution/Types/PackageId"
          "Distribution/Types/PackageId/Lens"
          "Distribution/Types/PackageName"
          "Distribution/Types/PackageVersionConstraint"
          "Distribution/Types/PkgconfigDependency"
          "Distribution/Types/PkgconfigName"
          "Distribution/Types/PkgconfigVersion"
          "Distribution/Types/PkgconfigVersionRange"
          "Distribution/Types/SetupBuildInfo"
          "Distribution/Types/SetupBuildInfo/Lens"
          "Distribution/Types/SourceRepo"
          "Distribution/Types/SourceRepo/Lens"
          "Distribution/Types/TestSuite"
          "Distribution/Types/TestSuite/Lens"
          "Distribution/Types/TestSuiteInterface"
          "Distribution/Types/TestType"
          "Distribution/Types/UnitId"
          "Distribution/Types/UnqualComponentName"
          "Distribution/Types/Version"
          "Distribution/Types/VersionInterval"
          "Distribution/Types/VersionInterval/Legacy"
          "Distribution/Types/VersionRange"
          "Distribution/Types/VersionRange/Internal"
          "Distribution/Utils/Base62"
          "Distribution/Utils/Generic"
          "Distribution/Utils/MD5"
          "Distribution/Utils/Path"
          "Distribution/Utils/ShortText"
          "Distribution/Utils/String"
          "Distribution/Utils/Structured"
          "Distribution/Version"
          "Language/Haskell/Extension"
        ];
        hsSourceDirs = [ "src" ];
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
    postUnpack = "sourceRoot+=/Cabal-syntax; echo source root reset to $sourceRoot";
  }
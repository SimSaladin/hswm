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
    flags = { git-rev = false; };
    package = {
      specVersion = "3.6";
      identifier = { name = "Cabal"; version = "3.17.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2003-2025, Cabal Development Team (see AUTHORS file)";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A framework for packaging Haskell software";
      description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
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
        depends = ([
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ])) ++ pkgs.lib.optional (flags.git-rev) (hsPkgs."githash" or (errorHandler.buildDepError "githash"));
        buildable = true;
        modules = [
          "Distribution/Backpack/PreExistingComponent"
          "Distribution/Backpack/ReadyComponent"
          "Distribution/Backpack/MixLink"
          "Distribution/Backpack/ModuleScope"
          "Distribution/Backpack/UnifyM"
          "Distribution/Backpack/Id"
          "Distribution/Utils/UnionFind"
          "Distribution/Compat/Async"
          "Distribution/Compat/CopyFile"
          "Distribution/Compat/GetShortPathName"
          "Distribution/GetOpt"
          "Distribution/Lex"
          "Distribution/PackageDescription/Check/Common"
          "Distribution/PackageDescription/Check/Conditional"
          "Distribution/PackageDescription/Check/Monad"
          "Distribution/PackageDescription/Check/Paths"
          "Distribution/PackageDescription/Check/Target"
          "Distribution/PackageDescription/Check/Warning"
          "Distribution/Simple/Build/Macros/Z"
          "Distribution/Simple/Build/PackageInfoModule/Z"
          "Distribution/Simple/Build/PathsModule/Z"
          "Distribution/Simple/GHC/Build"
          "Distribution/Simple/GHC/Build/ExtraSources"
          "Distribution/Simple/GHC/Build/Link"
          "Distribution/Simple/GHC/Build/Modules"
          "Distribution/Simple/GHC/Build/Utils"
          "Distribution/Simple/GHC/EnvironmentParser"
          "Distribution/Simple/GHC/Internal"
          "Distribution/Simple/GHC/ImplInfo"
          "Distribution/Simple/ConfigureScript"
          "Distribution/Simple/Setup/Benchmark"
          "Distribution/Simple/Setup/Build"
          "Distribution/Simple/Setup/Clean"
          "Distribution/Simple/Setup/Common"
          "Distribution/Simple/Setup/Config"
          "Distribution/Simple/Setup/Copy"
          "Distribution/Simple/Setup/Global"
          "Distribution/Simple/Setup/Haddock"
          "Distribution/Simple/Setup/Hscolour"
          "Distribution/Simple/Setup/Install"
          "Distribution/Simple/Setup/Register"
          "Distribution/Simple/Setup/Repl"
          "Distribution/Simple/Setup/SDist"
          "Distribution/Simple/Setup/Test"
          "Distribution/ZinzaPrelude"
          "Paths_Cabal"
          "Distribution/Backpack/Configure"
          "Distribution/Backpack/ComponentsGraph"
          "Distribution/Backpack/ConfiguredComponent"
          "Distribution/Backpack/DescribeUnitId"
          "Distribution/Backpack/FullUnitId"
          "Distribution/Backpack/LinkedComponent"
          "Distribution/Backpack/ModSubst"
          "Distribution/Backpack/ModuleShape"
          "Distribution/Backpack/PreModuleShape"
          "Distribution/Utils/IOData"
          "Distribution/Utils/LogProgress"
          "Distribution/Utils/MapAccum"
          "Distribution/Compat/CreatePipe"
          "Distribution/Compat/Environment"
          "Distribution/Compat/Internal/TempFile"
          "Distribution/Compat/ResponseFile"
          "Distribution/Compat/Prelude/Internal"
          "Distribution/Compat/Process"
          "Distribution/Compat/Stack"
          "Distribution/Compat/SysInfo"
          "Distribution/Compat/Time"
          "Distribution/PackageDescription/Check"
          "Distribution/ReadE"
          "Distribution/Simple"
          "Distribution/Simple/Bench"
          "Distribution/Simple/Build"
          "Distribution/Simple/Build/Inputs"
          "Distribution/Simple/Build/Macros"
          "Distribution/Simple/Build/PackageInfoModule"
          "Distribution/Simple/Build/PathsModule"
          "Distribution/Simple/BuildPaths"
          "Distribution/Simple/BuildTarget"
          "Distribution/Simple/BuildToolDepends"
          "Distribution/Simple/BuildWay"
          "Distribution/Simple/CCompiler"
          "Distribution/Simple/Command"
          "Distribution/Simple/Compiler"
          "Distribution/Simple/Configure"
          "Distribution/Simple/Errors"
          "Distribution/Simple/FileMonitor/Types"
          "Distribution/Simple/Flag"
          "Distribution/Simple/GHC"
          "Distribution/Simple/GHCJS"
          "Distribution/Simple/Haddock"
          "Distribution/Simple/Glob"
          "Distribution/Simple/Glob/Internal"
          "Distribution/Simple/Hpc"
          "Distribution/Simple/Install"
          "Distribution/Simple/InstallDirs"
          "Distribution/Simple/InstallDirs/Internal"
          "Distribution/Simple/LocalBuildInfo"
          "Distribution/Simple/PackageDescription"
          "Distribution/Simple/PackageIndex"
          "Distribution/Simple/PreProcess"
          "Distribution/Simple/PreProcess/Types"
          "Distribution/Simple/PreProcess/Unlit"
          "Distribution/Simple/Program"
          "Distribution/Simple/Program/Ar"
          "Distribution/Simple/Program/Builtin"
          "Distribution/Simple/Program/Db"
          "Distribution/Simple/Program/Find"
          "Distribution/Simple/Program/GHC"
          "Distribution/Simple/Program/HcPkg"
          "Distribution/Simple/Program/Hpc"
          "Distribution/Simple/Program/Internal"
          "Distribution/Simple/Program/Ld"
          "Distribution/Simple/Program/ResponseFile"
          "Distribution/Simple/Program/Run"
          "Distribution/Simple/Program/Script"
          "Distribution/Simple/Program/Strip"
          "Distribution/Simple/Program/Types"
          "Distribution/Simple/Register"
          "Distribution/Simple/Setup"
          "Distribution/Simple/ShowBuildInfo"
          "Distribution/Simple/SrcDist"
          "Distribution/Simple/Test"
          "Distribution/Simple/Test/ExeV10"
          "Distribution/Simple/Test/LibV09"
          "Distribution/Simple/Test/Log"
          "Distribution/Simple/UHC"
          "Distribution/Simple/UserHooks"
          "Distribution/Simple/SetupHooks/Errors"
          "Distribution/Simple/SetupHooks/HooksMain"
          "Distribution/Simple/SetupHooks/Internal"
          "Distribution/Simple/SetupHooks/Rule"
          "Distribution/Simple/Utils"
          "Distribution/TestSuite"
          "Distribution/Types/AnnotatedId"
          "Distribution/Types/ComponentInclude"
          "Distribution/Types/DumpBuildInfo"
          "Distribution/Types/PackageName/Magic"
          "Distribution/Types/ComponentLocalBuildInfo"
          "Distribution/Types/LocalBuildConfig"
          "Distribution/Types/LocalBuildInfo"
          "Distribution/Types/TargetInfo"
          "Distribution/Types/GivenComponent"
          "Distribution/Types/ParStrat"
          "Distribution/Utils/Json"
          "Distribution/Utils/NubList"
          "Distribution/Utils/Progress"
          "Distribution/Verbosity"
          "Distribution/Verbosity/Internal"
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
    postUnpack = "sourceRoot+=/Cabal; echo source root reset to $sourceRoot";
  }
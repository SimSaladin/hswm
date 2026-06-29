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
    flags = { debug-expensive-assertions = false; debug-tracetree = false; };
    package = {
      specVersion = "3.6";
      identifier = { name = "cabal-install-solver"; version = "3.17.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2003-2026, Cabal Development Team";
      maintainer = "Cabal Development Team <cabal-devel@haskell.org>";
      author = "Cabal Development Team (see AUTHORS file)";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The solver component of cabal-install";
      description = "The solver component used in the cabal-install command-line program.";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [ "ChangeLog.md" ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (flags.debug-tracetree) (hsPkgs."tracetree" or (errorHandler.buildDepError "tracetree"));
        buildable = true;
        modules = [
          "Distribution/Client/Utils/Assertion"
          "Distribution/Solver/Compat/Prelude"
          "Distribution/Solver/Modular"
          "Distribution/Solver/Modular/Assignment"
          "Distribution/Solver/Modular/Builder"
          "Distribution/Solver/Modular/Configured"
          "Distribution/Solver/Modular/ConfiguredConversion"
          "Distribution/Solver/Modular/ConflictSet"
          "Distribution/Solver/Modular/Cycles"
          "Distribution/Solver/Modular/Dependency"
          "Distribution/Solver/Modular/Explore"
          "Distribution/Solver/Modular/Flag"
          "Distribution/Solver/Modular/Index"
          "Distribution/Solver/Modular/IndexConversion"
          "Distribution/Solver/Modular/LabeledGraph"
          "Distribution/Solver/Modular/Linking"
          "Distribution/Solver/Modular/Log"
          "Distribution/Solver/Modular/Message"
          "Distribution/Solver/Modular/MessageUtils"
          "Distribution/Solver/Modular/Package"
          "Distribution/Solver/Modular/Preference"
          "Distribution/Solver/Modular/PSQ"
          "Distribution/Solver/Modular/RetryLog"
          "Distribution/Solver/Modular/Solver"
          "Distribution/Solver/Modular/Tree"
          "Distribution/Solver/Modular/Validate"
          "Distribution/Solver/Modular/Var"
          "Distribution/Solver/Modular/Version"
          "Distribution/Solver/Modular/WeightedPSQ"
          "Distribution/Solver/Types/ComponentDeps"
          "Distribution/Solver/Types/ConstraintSource"
          "Distribution/Solver/Types/DependencyResolver"
          "Distribution/Solver/Types/Flag"
          "Distribution/Solver/Types/InstalledPreference"
          "Distribution/Solver/Types/InstSolverPackage"
          "Distribution/Solver/Types/LabeledPackageConstraint"
          "Distribution/Solver/Types/OptionalStanza"
          "Distribution/Solver/Types/PackageConstraint"
          "Distribution/Solver/Types/PackageFixedDeps"
          "Distribution/Solver/Types/PackageIndex"
          "Distribution/Solver/Types/PackagePath"
          "Distribution/Solver/Types/PackagePreferences"
          "Distribution/Solver/Types/PkgConfigDb"
          "Distribution/Solver/Types/Progress"
          "Distribution/Solver/Types/ProjectConfigPath"
          "Distribution/Solver/Types/ResolverPackage"
          "Distribution/Solver/Types/Settings"
          "Distribution/Solver/Types/SolverId"
          "Distribution/Solver/Types/SolverPackage"
          "Distribution/Solver/Types/SourcePackage"
          "Distribution/Solver/Types/SummarizedMessage"
          "Distribution/Solver/Types/Variable"
        ];
        hsSourceDirs = [ "src" "src-assertion" ];
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."cabal-install-solver" or (errorHandler.buildDepError "cabal-install-solver"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
          modules = [ "UnitTests/Distribution/Solver/Modular/MessageUtils" ];
          hsSourceDirs = [ "tests" ];
          mainPath = [ "UnitTests.hs" ];
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
    postUnpack = "sourceRoot+=/cabal-install-solver; echo source root reset to $sourceRoot";
  }
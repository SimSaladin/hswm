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
    flags = { native-dns = true; git-rev = false; legacy-comparison = false; };
    package = {
      specVersion = "3.8";
      identifier = { name = "cabal-install"; version = "3.18.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2003-2026, Cabal Development Team";
      maintainer = "Cabal Development Team <cabal-devel@haskell.org>";
      author = "Cabal Development Team (see AUTHORS file)";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The command-line interface for Cabal and Hackage.";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."cabal-install-solver" or (errorHandler.buildDepError "cabal-install-solver"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."echo" or (errorHandler.buildDepError "echo"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hooks-exe" or (errorHandler.buildDepError "hooks-exe"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."hackage-security" or (errorHandler.buildDepError "hackage-security"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."open-browser" or (errorHandler.buildDepError "open-browser"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."semaphore-compat" or (errorHandler.buildDepError "semaphore-compat"))
        ] ++ pkgs.lib.optionals (flags.native-dns) (if system.isWindows
          then [ (hsPkgs."windns" or (errorHandler.buildDepError "windns")) ]
          else [
            (hsPkgs."resolv" or (errorHandler.buildDepError "resolv"))
          ])) ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.2") (hsPkgs."process" or (errorHandler.buildDepError "process"))) ++ pkgs.lib.optional (system.isOsx) (hsPkgs."process" or (errorHandler.buildDepError "process"))) ++ pkgs.lib.optional (flags.git-rev) (hsPkgs."githash" or (errorHandler.buildDepError "githash"));
        buildable = true;
      };
      exes = {
        "cabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cabal-install" or (errorHandler.buildDepError "cabal-install"))
          ];
          libs = pkgs.lib.optional (system.isAix) (pkgs."bsd" or (errorHandler.sysDepError "bsd"));
          buildable = true;
        };
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."cabal-install-solver" or (errorHandler.buildDepError "cabal-install-solver"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cabal-install" or (errorHandler.buildDepError "cabal-install"))
            (hsPkgs."Cabal-tree-diff" or (errorHandler.buildDepError "Cabal-tree-diff"))
            (hsPkgs."Cabal-QuickCheck" or (errorHandler.buildDepError "Cabal-QuickCheck"))
            (hsPkgs."Cabal-tests" or (errorHandler.buildDepError "Cabal-tests"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tree-diff" or (errorHandler.buildDepError "tree-diff"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "parser-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."cabal-install-solver" or (errorHandler.buildDepError "cabal-install-solver"))
            (hsPkgs."cabal-install" or (errorHandler.buildDepError "cabal-install"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "mem-use-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."cabal-install-solver" or (errorHandler.buildDepError "cabal-install-solver"))
            (hsPkgs."cabal-install" or (errorHandler.buildDepError "cabal-install"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "integration-tests2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."cabal-install-solver" or (errorHandler.buildDepError "cabal-install-solver"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cabal-install" or (errorHandler.buildDepError "cabal-install"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
          buildable = true;
        };
        "long-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            (hsPkgs."cabal-install-solver" or (errorHandler.buildDepError "cabal-install-solver"))
            (hsPkgs."Cabal-QuickCheck" or (errorHandler.buildDepError "Cabal-QuickCheck"))
            (hsPkgs."Cabal-described" or (errorHandler.buildDepError "Cabal-described"))
            (hsPkgs."Cabal-tests" or (errorHandler.buildDepError "Cabal-tests"))
            (hsPkgs."cabal-install" or (errorHandler.buildDepError "cabal-install"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/cabal-install-3.18.1.0.tar.gz";
      sha256 = "7e5c3f5e53f7c91f9ff8f0fb075574e772562d0eeb400c402c7d9277558f0821";
    });
  }) // {
    package-description-override = "Cabal-Version:      3.8\n\nName:               cabal-install\nVersion:            3.18.1.0\nSynopsis:           The command-line interface for Cabal and Hackage.\nDescription:\n    The \\'cabal\\' command-line program simplifies the process of managing\n    Haskell software by automating the fetching, configuration, compilation\n    and installation of Haskell libraries and programs.\nhomepage:           http://www.haskell.org/cabal/\nbug-reports:        https://github.com/haskell/cabal/issues\nLicense:            BSD-3-Clause\nLicense-File:       LICENSE\nAuthor:             Cabal Development Team (see AUTHORS file)\nMaintainer:         Cabal Development Team <cabal-devel@haskell.org>\nCopyright:          2003-2026, Cabal Development Team\nCategory:           Distribution\nBuild-type:         Simple\nExtra-Source-Files:\n  bash-completion/cabal\nextra-doc-files:\n  README.md\n  ChangeLog.md\n\nsource-repository head\n  type:     git\n  location: https://github.com/haskell/cabal/\n  subdir:   cabal-install\n\nFlag native-dns\n  description:\n    Enable use of the [resolv](https://hackage.haskell.org/package/resolv)\n    & [windns](https://hackage.haskell.org/package/windns) packages for performing DNS lookups\n  default:      True\n  manual:       True\n\nflag git-rev\n  description: include Git revision hash in version\n  default: False\n  manual: True\n\nflag legacy-comparison\n  description: Enable comparison between the new and legacy cabal.project parser\n  default: False\n  manual: True\n\ncommon warnings\n    ghc-options:\n      -Wall\n      -Wcompat\n      -Wnoncanonical-monad-instances\n      -Wincomplete-uni-patterns\n      -Wincomplete-record-updates\n      -Wno-unticked-promoted-constructors\n\n    if impl(ghc < 8.8)\n      ghc-options: -Wnoncanonical-monadfail-instances\n\n    if impl(ghc >= 9.14)\n      ghc-options: -Wno-pattern-namespace-specifier -Wno-incomplete-record-selectors\n\ncommon base-dep\n    build-depends:\n      , base >=4.17 && <4.24\n\ncommon cabal-dep\n    build-depends:\n      , Cabal ^>=3.18\n\ncommon cabal-syntax-dep\n    build-depends:\n      , Cabal-syntax ^>=3.18\n\ncommon cabal-install-solver-dep\n    build-depends:\n      , cabal-install-solver ^>=3.18\n\nlibrary\n    import: warnings, base-dep, cabal-dep, cabal-syntax-dep, cabal-install-solver-dep\n    default-language: Haskell2010\n    default-extensions: TypeOperators\n\n    hs-source-dirs:   src\n    autogen-modules:\n        Paths_cabal_install\n    other-modules:\n        Paths_cabal_install\n    exposed-modules:\n        -- this modules are moved from Cabal\n        -- they are needed for as long until cabal-install moves to parsec parser\n        Distribution.Deprecated.ParseUtils\n        Distribution.Deprecated.ProjectParseUtils\n        Distribution.Deprecated.ReadP\n        Distribution.Deprecated.ViewAsFieldDescr\n\n        Distribution.Client.BuildReports.Anonymous\n        Distribution.Client.BuildReports.Lens\n        Distribution.Client.BuildReports.Storage\n        Distribution.Client.BuildReports.Types\n        Distribution.Client.BuildReports.Upload\n        Distribution.Client.Check\n        Distribution.Client.CmdBench\n        Distribution.Client.CmdBuild\n        Distribution.Client.CmdClean\n        Distribution.Client.CmdConfigure\n        Distribution.Client.CmdErrorMessages\n        Distribution.Client.CmdExec\n        Distribution.Client.CmdFreeze\n        Distribution.Client.CmdHaddock\n        Distribution.Client.CmdHaddockProject\n        Distribution.Client.CmdInstall\n        Distribution.Client.CmdInstall.ClientInstallFlags\n        Distribution.Client.CmdInstall.ClientInstallTargetSelector\n        Distribution.Client.CmdLegacy\n        Distribution.Client.CmdListBin\n        Distribution.Client.CmdPath\n        Distribution.Client.CmdOutdated\n        Distribution.Client.CmdRepl\n        Distribution.Client.CmdRun\n        Distribution.Client.CmdSdist\n        Distribution.Client.CmdTarget\n        Distribution.Client.CmdTest\n        Distribution.Client.CmdUpdate\n        Distribution.Client.CmdGenBounds\n        Distribution.Client.Compat.Orphans\n        Distribution.Client.Compat.Prelude\n        Distribution.Client.Compat.Semaphore\n        Distribution.Client.Compat.Tar\n        Distribution.Client.Config\n        Distribution.Client.Configure\n        Distribution.Client.Dependency\n        Distribution.Client.Dependency.Types\n        Distribution.Client.DistDirLayout\n        Distribution.Client.Errors\n        Distribution.Client.Errors.Parser\n        Distribution.Client.Fetch\n        Distribution.Client.FetchUtils\n        Distribution.Client.FileMonitor\n        Distribution.Client.Freeze\n        Distribution.Client.GZipUtils\n        Distribution.Client.GenBounds\n        Distribution.Client.Get\n        Distribution.Client.Glob\n        Distribution.Client.GlobalFlags\n        Distribution.Client.Haddock\n        Distribution.Client.HashValue\n        Distribution.Client.HttpUtils\n        Distribution.Client.IndexUtils\n        Distribution.Client.IndexUtils.ActiveRepos\n        Distribution.Client.IndexUtils.IndexState\n        Distribution.Client.IndexUtils.Timestamp\n        Distribution.Client.Init\n        Distribution.Client.Init.Defaults\n        Distribution.Client.Init.FileCreators\n        Distribution.Client.Init.FlagExtractors\n        Distribution.Client.Init.Format\n        Distribution.Client.Init.Interactive.Command\n        Distribution.Client.Init.NonInteractive.Command\n        Distribution.Client.Init.NonInteractive.Heuristics\n        Distribution.Client.Init.Licenses\n        Distribution.Client.Init.Prompt\n        Distribution.Client.Init.Simple\n        Distribution.Client.Init.Types\n        Distribution.Client.Init.Utils\n        Distribution.Client.InLibrary\n        Distribution.Client.Install\n        Distribution.Client.InstallPlan\n        Distribution.Client.InstallSymlink\n        Distribution.Client.JobControl\n        Distribution.Client.List\n        Distribution.Client.Main\n        Distribution.Client.Manpage\n        Distribution.Client.ManpageFlags\n        Distribution.Client.NixStyleOptions\n        Distribution.Client.PackageHash\n        Distribution.Client.ParseUtils\n        Distribution.Client.ProjectBuilding\n        Distribution.Client.ProjectBuilding.UnpackedPackage\n        Distribution.Client.ProjectBuilding.PackageFileMonitor\n        Distribution.Client.ProjectBuilding.Types\n        Distribution.Client.ProjectConfig\n        Distribution.Client.ProjectConfig.FieldGrammar\n        Distribution.Client.ProjectConfig.Import\n        Distribution.Client.ProjectConfig.Legacy\n        Distribution.Client.ProjectConfig.Lens\n        Distribution.Client.ProjectConfig.Parsec\n        Distribution.Client.ProjectConfig.Types\n        Distribution.Client.ProjectFlags\n        Distribution.Client.ProjectOrchestration\n        Distribution.Client.ProjectPlanOutput\n        Distribution.Client.ProjectPlanning\n        Distribution.Client.ProjectPlanning.SetupPolicy\n        Distribution.Client.ProjectPlanning.Types\n        Distribution.Client.RebuildMonad\n        Distribution.Client.Reconfigure\n        Distribution.Client.ReplFlags\n        Distribution.Client.Run\n        Distribution.Client.Sandbox\n        Distribution.Client.Sandbox.PackageEnvironment\n        Distribution.Client.SavedFlags\n        Distribution.Client.ScriptUtils\n        Distribution.Client.Security.DNS\n        Distribution.Client.Security.HTTP\n        Distribution.Client.Setup\n        Distribution.Client.SetupWrapper\n        Distribution.Client.Signal\n        Distribution.Client.SolverInstallPlan\n        Distribution.Client.SourceFiles\n        Distribution.Client.SrcDist\n        Distribution.Client.Store\n        Distribution.Client.Tar\n        Distribution.Client.TargetProblem\n        Distribution.Client.TargetSelector\n        Distribution.Client.Targets\n        Distribution.Client.Types\n        Distribution.Client.Types.AllowNewer\n        Distribution.Client.Types.BuildResults\n        Distribution.Client.Types.ConfiguredId\n        Distribution.Client.Types.ConfiguredPackage\n        Distribution.Client.Types.Credentials\n        Distribution.Client.Types.InstallMethod\n        Distribution.Client.Types.OverwritePolicy\n        Distribution.Client.Types.PackageLocation\n        Distribution.Client.Types.PackageSpecifier\n        Distribution.Client.Types.ReadyPackage\n        Distribution.Client.Types.Repo\n        Distribution.Client.Types.RepoName\n        Distribution.Client.Types.SourcePackageDb\n        Distribution.Client.Types.SourceRepo\n        Distribution.Client.Types.WriteGhcEnvironmentFilesPolicy\n        Distribution.Client.Upload\n        Distribution.Client.Utils\n        Distribution.Client.Utils.Json\n        Distribution.Client.Utils.Newtypes\n        Distribution.Client.Utils.Parsec\n        Distribution.Client.VCS\n        Distribution.Client.Version\n        Distribution.Client.Win32SelfUpgrade\n\n    build-depends:\n      , async      >= 2.0      && < 2.3\n      , array      >= 0.4      && < 0.6\n      , base16-bytestring >= 1.0 && < 1.1\n      , binary     >= 0.7.3    && < 0.9\n      , bytestring >= 0.10.6.0 && < 0.13\n      , containers >= 0.5.6.2  && < 0.9\n      , cryptohash-sha256 >= 0.11 && < 0.12\n      , directory  >= 1.3.7.0  && < 1.4\n      , echo       >= 0.1.3    && < 0.2\n      , edit-distance >= 0.2.2 && < 0.3\n      , exceptions >= 0.10.4   && < 0.11\n      , filepath   >= 1.4.0.0  && < 1.6\n      , hooks-exe  >= 3.18     && < 3.19\n      , HTTP       >= 4000.1.5 && < 4000.6\n      , mtl        >= 2.0      && < 2.4\n      , network-uri >= 2.6.2.0 && < 2.7\n      , pretty     >= 1.1      && < 1.2\n      , process    >= 1.2.3.0  && < 1.6.24 || == 1.6.26.0 || >= 1.6.26.2 && < 1.7\n      , random     >= 1.2      && < 1.4\n      , stm        >= 2.0      && < 2.6\n      , tar        >= 0.5.0.3  && < 0.8\n      , time       >= 1.5.0.1  && < 1.17\n      , zlib       >= 0.6      && < 0.8\n      , hackage-security >= 0.6.2.0 && < 0.7\n      , text       >= 1.2.3    && < 1.3 || >= 2.0 && < 2.2\n      , parsec     >= 3.1.13.0 && < 3.2\n      , open-browser >= 0.2.1.0 && < 0.6\n      , regex-base  >= 0.94.0.0 && <0.95\n      , regex-posix >= 0.96.0.0 && <0.97\n      , safe-exceptions >= 0.1.7.0 && < 0.2\n      , semaphore-compat >= 2.0.1 && < 2.1\n\n    if flag(native-dns)\n      if os(windows)\n        build-depends: windns      >= 0.1.0 && < 0.2\n      else\n        build-depends: resolv      >= 0.1.1 && < 0.3\n\n    if os(windows)\n      -- newer directory for symlinks\n      build-depends:\n        , Win32 >= 2.8 && < 3\n        , directory >=1.3.1.0\n    else\n      build-depends:\n        , unix >= 2.5 && < 2.8 || >= 2.8.6.0 && < 2.9\n\n    -- pull in process version with fixed waitForProcess error\n    if impl(ghc >=8.2)\n      build-depends:\n        , process >= 1.6.15.0\n\n    if os(darwin)\n      build-depends:\n        , process >= 1.6.29.0\n\n    if flag(git-rev)\n      build-depends: githash ^>= 0.1.7.0\n      cpp-options: -DGIT_REV\n\n    if flag(legacy-comparison)\n      cpp-options: -DLEGACY_COMPARISON\n\nexecutable cabal\n    import: warnings, base-dep\n    main-is: Main.hs\n    hs-source-dirs: main\n    default-language: Haskell2010\n\n    ghc-options: -rtsopts -threaded\n\n    -- On AIX, some legacy BSD operations such as flock(2) are provided by libbsd.a\n    if os(aix)\n        extra-libraries: bsd\n\n    if flag(git-rev)\n      cpp-options: -DGIT_REV\n\n    build-depends:\n        cabal-install\n\n-- Small, fast running tests.\n--\ntest-suite unit-tests\n    import: warnings, base-dep, cabal-dep, cabal-syntax-dep, cabal-install-solver-dep\n    default-language: Haskell2010\n    default-extensions: TypeOperators\n    ghc-options: -rtsopts -threaded\n\n    type: exitcode-stdio-1.0\n    main-is: UnitTests.hs\n    hs-source-dirs: tests\n    other-modules:\n      UnitTests.Distribution.Client.ArbitraryInstances\n      UnitTests.Distribution.Client.BuildReport\n      UnitTests.Distribution.Client.Configure\n      UnitTests.Distribution.Client.FetchUtils\n      UnitTests.Distribution.Client.Get\n      UnitTests.Distribution.Client.Glob\n      UnitTests.Distribution.Client.GZipUtils\n      UnitTests.Distribution.Client.IndexUtils\n      UnitTests.Distribution.Client.IndexUtils.ActiveRepos\n      UnitTests.Distribution.Client.IndexUtils.Timestamp\n      UnitTests.Distribution.Client.Init\n      UnitTests.Distribution.Client.Init.Golden\n      UnitTests.Distribution.Client.Init.Interactive\n      UnitTests.Distribution.Client.Init.NonInteractive\n      UnitTests.Distribution.Client.Init.Simple\n      UnitTests.Distribution.Client.Init.Utils\n      UnitTests.Distribution.Client.Init.FileCreators\n      UnitTests.Distribution.Client.InstallPlan\n      UnitTests.Distribution.Client.JobControl\n      UnitTests.Distribution.Client.ProjectConfig\n      UnitTests.Distribution.Client.ProjectPlanning\n      UnitTests.Distribution.Client.Store\n      UnitTests.Distribution.Client.Tar\n      UnitTests.Distribution.Client.Targets\n      UnitTests.Distribution.Client.TreeDiffInstances\n      UnitTests.Distribution.Client.UserConfig\n      UnitTests.Distribution.Solver.Modular.Builder\n      UnitTests.Distribution.Solver.Modular.RetryLog\n      UnitTests.Distribution.Solver.Modular.Solver\n      UnitTests.Distribution.Solver.Modular.DSL\n      UnitTests.Distribution.Solver.Modular.DSL.TestCaseUtils\n      UnitTests.Distribution.Solver.Modular.WeightedPSQ\n      UnitTests.Distribution.Solver.Types.OptionalStanza\n      UnitTests.Options\n\n    build-depends:\n      , array\n      , bytestring\n      , cabal-install\n      , Cabal-tree-diff\n      , Cabal-QuickCheck\n      , Cabal-tests\n      , containers\n      , directory\n      , filepath\n      , mtl\n      , network-uri >= 2.6.2.0 && <2.7\n      , random\n      , tar\n      , time\n      , zlib\n      , tasty >= 1.2.3 && <1.6\n      , tasty-golden >=2.3.1.1 && <2.4\n      , tasty-quickcheck ^>=0.11\n      , tasty-expected-failure\n      , tasty-hunit >= 0.10\n      , tree-diff\n      , QuickCheck >= 2.14.3 && <2.19\n\n-- Tests for the project file parser\ntest-suite parser-tests\n    import: warnings, base-dep, cabal-dep, cabal-syntax-dep, cabal-install-solver-dep\n    default-language: Haskell2010\n    ghc-options: -rtsopts -threaded\n\n    type: exitcode-stdio-1.0\n    main-is: Tests.hs\n    hs-source-dirs: parser-tests\n    build-depends:\n      , cabal-install\n      , containers\n      , directory\n      , filepath\n      , network-uri >= 2.6.2.0 && <2.7\n      , tasty >= 1.2.3 && <1.6\n      , tasty-hunit >= 0.10\n    other-modules:\n      Tests.ParserTests\n\n-- Tests to run with a limited stack and heap size\n-- The test suite name must be keep short cause a longer one\n-- could make the build generating paths which exceeds the windows\n-- max path limit (still a problem for some ghc versions)\ntest-suite mem-use-tests\n  import: warnings, base-dep, cabal-dep, cabal-syntax-dep, cabal-install-solver-dep\n  type: exitcode-stdio-1.0\n  main-is: MemoryUsageTests.hs\n  hs-source-dirs: tests\n  default-language: Haskell2010\n\n  ghc-options: -threaded -rtsopts \"-with-rtsopts=-M16M -K1K\"\n\n  other-modules:\n    UnitTests.Distribution.Solver.Modular.DSL\n    UnitTests.Distribution.Solver.Modular.DSL.TestCaseUtils\n    UnitTests.Distribution.Solver.Modular.MemoryUsage\n    UnitTests.Options\n\n  build-depends:\n    , cabal-install\n    , containers\n    , tasty >= 1.2.3 && <1.6\n    , tasty-hunit >= 0.10\n\n\n-- Integration tests that use the cabal-install code directly\n-- but still build whole projects\ntest-suite integration-tests2\n  import: warnings, base-dep, cabal-dep, cabal-syntax-dep, cabal-install-solver-dep\n  ghc-options: -rtsopts -threaded\n  type: exitcode-stdio-1.0\n  main-is: IntegrationTests2.hs\n  hs-source-dirs: tests\n  default-language: Haskell2010\n\n  build-depends:\n    , bytestring\n    , cabal-install\n    , containers\n    , directory\n    , filepath\n    , process\n    , tasty >= 1.5.4 && <1.6\n    , tasty-hunit >= 0.10\n    , tasty-expected-failure\n    , silently\n    , tagged\n\ntest-suite long-tests\n  import: warnings, base-dep, cabal-dep, cabal-syntax-dep, cabal-install-solver-dep\n  ghc-options: -rtsopts -threaded\n  type: exitcode-stdio-1.0\n  hs-source-dirs: tests\n  main-is: LongTests.hs\n  default-language: Haskell2010\n\n  other-modules:\n    UnitTests.Distribution.Client.ArbitraryInstances\n    UnitTests.Distribution.Client.Described\n    UnitTests.Distribution.Client.DescribedInstances\n    UnitTests.Distribution.Client.FileMonitor\n    UnitTests.Distribution.Client.VCS\n    UnitTests.Distribution.Solver.Modular.DSL\n    UnitTests.Distribution.Solver.Modular.QuickCheck\n    UnitTests.Distribution.Solver.Modular.QuickCheck.Utils\n    UnitTests.Options\n\n  build-depends:\n    , Cabal-QuickCheck\n    , Cabal-described\n    , Cabal-tests\n    , cabal-install\n    , containers\n    , directory\n    , filepath\n    , mtl\n    , network-uri >= 2.6.2.0 && <2.7\n    , random\n    , tagged\n    , tasty >= 1.2.3 && <1.6\n    , tasty-expected-failure\n    , tasty-hunit >= 0.10\n    , tasty-quickcheck <0.12\n    , QuickCheck >= 2.14 && <2.19\n    , pretty-show >= 1.6.15\n";
  }
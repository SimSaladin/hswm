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
    flags = { build-testing = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "semaphore-compat"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ghc-devs@haskell.org";
      author = "The GHC team";
      homepage = "https://gitlab.haskell.org/ghc/semaphore-compat";
      url = "";
      synopsis = "Cross-platform abstraction for system semaphores";
      description = "Cross-platform semaphores for managing resources across processes,\nabstracting over Win32 named semaphores on Windows and Unix domain sockets\non POSIX.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else pkgs.lib.optionals (!(system.isWasm32 || system.isJavaScript)) [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]);
        buildable = true;
      };
      sublibs = {
        "semaphore-test-common" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semaphore-compat" or (errorHandler.buildDepError "semaphore-compat"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = if !flags.build-testing then false else true;
        };
      };
      exes = {
        "semaphore-helper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semaphore-compat".components.sublibs.semaphore-test-common or (errorHandler.buildDepError "semaphore-compat:semaphore-test-common"))
          ];
          buildable = if !flags.build-testing then false else true;
        };
      };
      tests = {
        "semaphore-compat-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semaphore-compat" or (errorHandler.buildDepError "semaphore-compat"))
            (hsPkgs."semaphore-compat".components.sublibs.semaphore-test-common or (errorHandler.buildDepError "semaphore-compat:semaphore-test-common"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.semaphore-compat.components.exes.semaphore-helper or (pkgs.pkgsBuildBuild.semaphore-helper or (errorHandler.buildToolDepError "semaphore-compat:semaphore-helper")))
          ];
          buildable = if !flags.build-testing then false else true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/semaphore-compat-2.0.1.tar.gz";
      sha256 = "ec8764d146db62e8a5dc56fa78fffd2487931235df0e16519c6f993c81420919";
    });
  }) // {
    package-description-override = "cabal-version: 3.0\n\nname:\n    semaphore-compat\nversion:\n    2.0.1\nlicense:\n    BSD-3-Clause\n\nauthor:\n    The GHC team\nmaintainer:\n    ghc-devs@haskell.org\nhomepage:\n    https://gitlab.haskell.org/ghc/semaphore-compat\nbug-reports:\n    https://gitlab.haskell.org/ghc/ghc/issues/new\n\ncategory:\n    System\nsynopsis:\n    Cross-platform abstraction for system semaphores\ndescription:\n    Cross-platform semaphores for managing resources across processes,\n    abstracting over Win32 named semaphores on Windows and Unix domain sockets\n    on POSIX.\n\nbuild-type:\n    Simple\n\nextra-source-files:\n    changelog.md\n  , readme.md\n\n\nflag build-testing\n    description: Build test helper library, executable, and test suite\n    default: False\n    manual: True\n\nsource-repository head\n    type:     git\n    location: https://gitlab.haskell.org/ghc/semaphore-compat.git\n\nlibrary\n    hs-source-dirs:\n        src\n\n    exposed-modules:\n        System.Semaphore\n        System.Semaphore.Internal\n        System.Semaphore.Internal.Version\n\n    build-depends:\n        base\n          >= 4.11 && < 4.24\n      , directory\n          >= 1.3  && < 1.4\n      , filepath\n          >= 1.4  && < 1.6\n\n    if os(windows)\n      build-depends:\n        Win32\n          >= 2.13.4.0 && < 2.15\n      exposed-modules:\n          System.Semaphore.Internal.Win32\n    elif arch(wasm32) || arch(javascript)\n      exposed-modules:\n          System.Semaphore.Internal.Unsupported\n    else\n      build-depends:\n          unix\n            >= 2.8.1.0 && < 2.9\n        , stm\n            >= 2.4     && < 2.6\n        , containers\n            >= 0.5     && < 0.9\n      c-sources:\n          cbits/domain.c\n      exposed-modules:\n          System.Semaphore.Internal.DomainSocket\n          System.Semaphore.Internal.Posix\n          System.Semaphore.Internal.Posix.Server\n\n    default-language:\n        Haskell2010\n\nlibrary semaphore-test-common\n    visibility:\n        private\n    hs-source-dirs:\n        test-common\n    exposed-modules:\n        System.Semaphore.TestHelper\n    build-depends:\n        base\n          >= 4.11 && < 4.23\n      , semaphore-compat\n      , process\n          >= 1.6.16 && < 1.8\n    if !os(windows)\n      build-depends:\n        unix\n          >= 2.8.1.0 && < 2.9\n    if !flag(build-testing)\n      buildable: False\n    ghc-options:\n        -Wall\n    default-language:\n        Haskell2010\n\nexecutable semaphore-helper\n    hs-source-dirs:\n        helper\n    main-is:\n        Main.hs\n    build-depends:\n        base\n          >= 4.11 && < 4.23\n      , semaphore-compat:semaphore-test-common\n    if !flag(build-testing)\n      buildable: False\n    ghc-options:\n        -threaded\n    default-language:\n        Haskell2010\n\ntest-suite semaphore-compat-test\n    type:\n        exitcode-stdio-1.0\n    hs-source-dirs:\n        test\n    main-is:\n        Main.hs\n    build-depends:\n        base\n          >= 4.11 && < 4.23\n      , semaphore-compat\n      , semaphore-compat:semaphore-test-common\n      , process\n          >= 1.6.16 && < 1.8\n      , tasty\n      , tasty-expected-failure\n      , tasty-hunit\n    if !os(windows)\n      build-depends:\n        unix\n          >= 2.8.1.0 && < 2.9\n    build-tool-depends:\n        semaphore-compat:semaphore-helper\n    if !flag(build-testing)\n      buildable: False\n    ghc-options:\n        -threaded -rtsopts \"-with-rtsopts=-N\"\n    default-language:\n        Haskell2010\n";
  }
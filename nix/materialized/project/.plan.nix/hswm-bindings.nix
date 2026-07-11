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
    flags = { pkg-config = true; build-tool-depends = true; };
    package = {
      specVersion = "3.14";
      identifier = { name = "hswm-bindings"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "samuli.thomasson@pm.me";
      author = "Samuli Thomasson";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Hooks";
      isLocal = true;
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.hs-bindgen-hooks or (pkgs.pkgsBuildBuild.hs-bindgen-hooks or (errorHandler.setupDepError "hs-bindgen-hooks")))
        (hsPkgs.pkgsBuildBuild.haskell-wayland-core or (pkgs.pkgsBuildBuild.haskell-wayland-core or (errorHandler.setupDepError "haskell-wayland-core")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.Cabal-hooks or (pkgs.pkgsBuildBuild.Cabal-hooks or (errorHandler.setupDepError "Cabal-hooks")))
        (hsPkgs.pkgsBuildBuild.microlens-ghc or (pkgs.pkgsBuildBuild.microlens-ghc or (errorHandler.setupDepError "microlens-ghc")))
      ];
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [ "protocol/*.xml" ];
      extraTmpFiles = [];
      extraDocFiles = [ "CHANGELOG.md" ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
          (hsPkgs."hs-bindgen-hooks" or (errorHandler.buildDepError "hs-bindgen-hooks"))
          (hsPkgs."haskell-wayland-core" or (errorHandler.buildDepError "haskell-wayland-core"))
        ];
        libs = pkgs.lib.optionals (!flags.pkg-config) [
          (pkgs."wayland-client" or (errorHandler.sysDepError "wayland-client"))
          (pkgs."wayland-server" or (errorHandler.sysDepError "wayland-server"))
        ];
        pkgconfig = pkgs.lib.optionals (flags.pkg-config) [
          (pkgconfPkgs."wayland-client" or (errorHandler.pkgConfDepError "wayland-client"))
          (pkgconfPkgs."wayland-server" or (errorHandler.pkgConfDepError "wayland-server"))
          (pkgconfPkgs."wayland-protocols" or (errorHandler.pkgConfDepError "wayland-protocols"))
        ];
        build-tools = pkgs.lib.optional (flags.build-tool-depends) (hsPkgs.pkgsBuildBuild.hs-bindgen.components.exes.hs-bindgen-cli or (pkgs.pkgsBuildBuild.hs-bindgen-cli or (errorHandler.buildToolDepError "hs-bindgen:hs-bindgen-cli")));
        buildable = true;
        modules = [
          "Paths_hswm_bindings"
          "River"
          "River/Client"
          "River/InputManagement"
          "River/WindowManagement"
          "River/XkbBindings"
          "River/XkbConfig"
          "WL/Client"
          "WL/Viewporter"
        ];
        hsSourceDirs = [ "src" ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
            (hsPkgs."hswm-bindings" or (errorHandler.buildDepError "hswm-bindings"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
          modules = [ "Paths_hswm_bindings" "Wayland/UtilSpec" ];
          hsSourceDirs = [ "tests" ];
          mainPath = [ "Spec.hs" ];
        };
      };
    };
  } // rec { src = pkgs.lib.mkDefault ../hswm-bindings; }
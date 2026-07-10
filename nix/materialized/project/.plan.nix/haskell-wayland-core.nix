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
      identifier = { name = "haskell-wayland-core"; version = "0.1.0.0"; };
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
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.Cabal-hooks or (pkgs.pkgsBuildBuild.Cabal-hooks or (errorHandler.setupDepError "Cabal-hooks")))
        (hsPkgs.pkgsBuildBuild.microlens-ghc or (pkgs.pkgsBuildBuild.microlens-ghc or (errorHandler.setupDepError "microlens-ghc")))
      ];
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [ "binding-specs/*.yaml" "protocols/*.xml" ];
      extraSrcFiles = [ "binding-specs/*.yaml" "protocols/*.xml" ];
      extraTmpFiles = [];
      extraDocFiles = [];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
          (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
          (hsPkgs."hs-bindgen-hooks" or (errorHandler.buildDepError "hs-bindgen-hooks"))
        ];
        libs = pkgs.lib.optionals (!flags.pkg-config) [
          (pkgs."wayland-client" or (errorHandler.sysDepError "wayland-client"))
          (pkgs."wayland-server" or (errorHandler.sysDepError "wayland-server"))
        ];
        pkgconfig = pkgs.lib.optionals (flags.pkg-config) [
          (pkgconfPkgs."wayland-client" or (errorHandler.pkgConfDepError "wayland-client"))
          (pkgconfPkgs."wayland-server" or (errorHandler.pkgConfDepError "wayland-server"))
        ];
        build-tools = pkgs.lib.optional (flags.build-tool-depends) (hsPkgs.pkgsBuildBuild.hs-bindgen.components.exes.hs-bindgen-cli or (pkgs.pkgsBuildBuild.hs-bindgen-cli or (errorHandler.buildToolDepError "hs-bindgen:hs-bindgen-cli")));
        buildable = true;
        modules = [
          "Paths_haskell_wayland_core"
          "PackageInfo_haskell_wayland_core"
          "WL/Core/Client"
          "WL/Core/Server"
          "WL/Internals/TH"
          "WL/Internals/TH/Server"
          "WL/Internals/Types"
          "WL/Internals/Utils"
          "WL/Util"
        ];
        hsSourceDirs = [ "src" ];
      };
    };
  } // rec { src = pkgs.lib.mkDefault ../haskell-wayland-core; }
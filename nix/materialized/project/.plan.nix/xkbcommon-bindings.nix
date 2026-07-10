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
    flags = { pkg-config = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "xkbcommon-bindings"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "samuli.thomasson@pm.me";
      author = "Samuli Thomasson";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to libxkbcommon";
      description = "Low-level bindings to libxkbcommon e.g. xkbcommon.h (incomplete)";
      buildType = "Custom";
      isLocal = true;
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.Cabal-hooks or (pkgs.pkgsBuildBuild.Cabal-hooks or (errorHandler.setupDepError "Cabal-hooks")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.hs-bindgen-hooks or (pkgs.pkgsBuildBuild.hs-bindgen-hooks or (errorHandler.setupDepError "hs-bindgen-hooks")))
      ];
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [ "CHANGELOG.md" ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        libs = pkgs.lib.optionals (!flags.pkg-config) [
          (pkgs."xkbcommon" or (errorHandler.sysDepError "xkbcommon"))
          (pkgs."xkbregistry" or (errorHandler.sysDepError "xkbregistry"))
        ];
        pkgconfig = pkgs.lib.optionals (flags.pkg-config) [
          (pkgconfPkgs."xkbcommon" or (errorHandler.pkgConfDepError "xkbcommon"))
          (pkgconfPkgs."xkbregistry" or (errorHandler.pkgConfDepError "xkbregistry"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = if !system.isLinux then false else true;
        modules = [
          "Text/XkbCommon/FFI"
          "Text/XkbCommon/Internal"
          "Text/XkbCommon"
          "Text/XkbCommon/Context"
          "Text/XkbCommon/EventCodes"
          "Text/XkbCommon/KeySym"
          "Text/XkbCommon/KeySyms"
          "Text/XkbCommon/Keymap"
          "Text/XkbCommon/Keymap/RmlvoBuilder"
          "Text/XkbCommon/State"
          "Text/XkbCommon/Registry"
        ];
        hsSourceDirs = [ "src" ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."xkbcommon-bindings" or (errorHandler.buildDepError "xkbcommon-bindings"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
          modules = [ "Text/XkbCommonSpec" "Text/XkbRegistrySpec" ];
          hsSourceDirs = [ "tests" ];
          mainPath = [ "Spec.hs" ];
        };
      };
    };
  } // rec { src = pkgs.lib.mkDefault ../xkbcommon-bindings; }
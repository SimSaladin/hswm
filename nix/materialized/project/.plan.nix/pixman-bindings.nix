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
      identifier = { name = "pixman-bindings"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
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
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
          (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
        ];
        libs = pkgs.lib.optional (!flags.pkg-config) (pkgs."pixman-1" or (errorHandler.sysDepError "pixman-1"));
        pkgconfig = pkgs.lib.optional (flags.pkg-config) (pkgconfPkgs."pixman-1" or (errorHandler.pkgConfDepError "pixman-1"));
        build-tools = pkgs.lib.optional (flags.build-tool-depends) (hsPkgs.pkgsBuildBuild.hs-bindgen.components.exes.hs-bindgen-cli or (pkgs.pkgsBuildBuild.hs-bindgen-cli or (errorHandler.buildToolDepError "hs-bindgen:hs-bindgen-cli")));
        buildable = true;
        modules = [ "Pixman" ];
        hsSourceDirs = [ "src" ];
      };
      tests = {
        "pixman-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pixman-bindings" or (errorHandler.buildDepError "pixman-bindings"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
          modules = [ "PixmanSpec" ];
          hsSourceDirs = [ "test" ];
          mainPath = [ "Spec.hs" ];
        };
      };
    };
  } // rec { src = pkgs.lib.mkDefault .././pixman-bindings; }
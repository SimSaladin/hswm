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
      specVersion = "3.0";
      identifier = { name = "hooks-exe"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2024, Cabal Development Team";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "cabal-install integration for Hooks build-type";
      description = "Layer for integrating Hooks build-type with cabal-install";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [ "readme.md" "changelog.md" ];
      extraTmpFiles = [];
      extraDocFiles = [];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ];
        buildable = true;
        modules = [
          "Distribution/Client/SetupHooks/CallHooksExe/Errors"
          "Distribution/Client/SetupHooks/CallHooksExe"
        ];
        hsSourceDirs = [ "cli" ];
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchgit {
      url = "3";
      rev = "minimal";
      sha256 = "";
    }) // {
      url = "3";
      rev = "minimal";
      sha256 = "";
    };
    postUnpack = "sourceRoot+=/hooks-exe; echo source root reset to $sourceRoot";
  }
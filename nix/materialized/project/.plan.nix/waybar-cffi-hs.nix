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
    flags = { standalone = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "waybar-cffi-hs"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "samuli.thomasson@pm.me";
      author = "Samuli Thomasson";
      homepage = "";
      url = "";
      synopsis = "Waybar C FFI module";
      description = "Waybar C FFI module";
      buildType = "Simple";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [];
      extraTmpFiles = [];
      extraDocFiles = [];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hswm".components.sublibs.ipc-api or (errorHandler.buildDepError "hswm:ipc-api"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."monad-logger-aeson" or (errorHandler.buildDepError "monad-logger-aeson"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."gi-gtk3" or (errorHandler.buildDepError "gi-gtk3"))
          (hsPkgs."gi-pango" or (errorHandler.buildDepError "gi-pango"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
        ];
        buildable = true;
        modules = [
          "Paths_waybar_cffi_hs"
          "Waybar/CFFI/Plugin/ABIv2"
          "Waybar/CFFI/Plugin/Base"
          "Waybar/CFFI/Plugin/TH"
          "Waybar/CFFI/Plugin/HSWM"
          "Waybar/CFFI/Plugin/TextFormat"
        ];
        hsSourceDirs = [ "src" ];
      };
      foreignlibs = {
        "waybarhaskellplugin" = {
          depends = [
            (hsPkgs."waybar-cffi-hs" or (errorHandler.buildDepError "waybar-cffi-hs"))
          ];
          buildable = if !system.isLinux then false else true;
          modules = [ "Plugin" ];
          hsSourceDirs = [ "plugin" ];
        };
      };
    };
  } // rec { src = pkgs.lib.mkDefault ../waybar-cffi-hs; }
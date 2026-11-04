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
    flags = { llvm = true; optimize = true; pie = true; };
    package = {
      specVersion = "3.12";
      identifier = { name = "hswm"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "samuli.thomasson@pm.me";
      author = "Samuli Thomasson";
      homepage = "";
      url = "";
      synopsis = "Wayland window manager for River";
      description = "Wayland window manager for River";
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
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."hswm-bindings" or (errorHandler.buildDepError "hswm-bindings"))
          (hsPkgs."hswm".components.sublibs.ipc-api or (errorHandler.buildDepError "hswm:ipc-api"))
          (hsPkgs."hswm".components.sublibs.prelude or (errorHandler.buildDepError "hswm:prelude"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."pixman-bindings" or (errorHandler.buildDepError "pixman-bindings"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."prettyprinter-combinators" or (errorHandler.buildDepError "prettyprinter-combinators"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."typerep-map" or (errorHandler.buildDepError "typerep-map"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xkbcommon-bindings" or (errorHandler.buildDepError "xkbcommon-bindings"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
        modules = [
          "PackageInfo_hswm"
          "HSWM"
          "HSWM/Actions/CycleRecentWS"
          "HSWM/Actions/CycleWS"
          "HSWM/Actions/DynamicWorkspaceOrder"
          "HSWM/Actions/DynamicWorkspaces"
          "HSWM/Actions/LockSession"
          "HSWM/Actions/Minimize"
          "HSWM/Actions/OnScreen"
          "HSWM/Actions/PhysicalScreens"
          "HSWM/Actions/Repeatable"
          "HSWM/Actions/WindowNavigation"
          "HSWM/BufferPool"
          "HSWM/Config"
          "HSWM/Core"
          "HSWM/Hooks/NonExclusiveArea"
          "HSWM/Hooks/WorkspaceHistory"
          "HSWM/InputConfig"
          "HSWM/Layout"
          "HSWM/Layout/BinarySpacePartition"
          "HSWM/Layout/BoringWindows"
          "HSWM/Layout/GridVariants"
          "HSWM/Layout/LayoutModifier"
          "HSWM/Layout/Maximize"
          "HSWM/Layout/Minimize"
          "HSWM/Layout/MultiToggle"
          "HSWM/Layout/MultiToggle/Instances"
          "HSWM/Layout/NoBorders"
          "HSWM/Layout/Reflect"
          "HSWM/Layout/WindowNavigation"
          "HSWM/Main"
          "HSWM/Main/Options"
          "HSWM/Main/Persist"
          "HSWM/ManageHook"
          "HSWM/Operations"
          "HSWM/Outputs"
          "HSWM/Prompt/Environment"
          "HSWM/Prompt/Workspaces"
          "HSWM/Seats"
          "HSWM/StackSet"
          "HSWM/Types/Action"
          "HSWM/Types/Config"
          "HSWM/Types/Events"
          "HSWM/Types/KeyBindings"
          "HSWM/Types/Lens"
          "HSWM/Types/Output"
          "HSWM/Types/Seat"
          "HSWM/Types/Simple"
          "HSWM/Types/TypeMap"
          "HSWM/Types/Window"
          "HSWM/Types/WM"
          "HSWM/Util/Colors"
          "HSWM/Util/CommandStatic"
          "HSWM/Util/Debug"
          "HSWM/Util/ExtensibleState"
          "HSWM/Util/GrabKeyboard"
          "HSWM/Util/Invisible"
          "HSWM/Util/IPC"
          "HSWM/Util/Minimize"
          "HSWM/Util/NamedScratchpad"
          "HSWM/Util/PangoMarkup"
          "HSWM/Util/Posix"
          "HSWM/Util/PP"
          "HSWM/Util/Process"
          "HSWM/Util/Rectangle"
          "HSWM/Util/RofiPrompt"
          "HSWM/Util/Stack"
          "HSWM/Util/StackSet/Lens"
          "HSWM/Util/Waybar"
          "HSWM/Util/WorkspaceCompare"
          "HSWM/Utils"
          "HSWM/Wallpaper"
          "HSWM/Wayland"
          "HSWM/Windows"
        ];
        hsSourceDirs = [ "src" ];
      };
      sublibs = {
        "ipc-api" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hswm".components.sublibs.prelude or (errorHandler.buildDepError "hswm:prelude"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
          modules = [ "PackageInfo_hswm" "HSWM/IPC" ];
          hsSourceDirs = [ "ipc-api" ];
        };
        "prelude" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."monad-logger-aeson" or (errorHandler.buildDepError "monad-logger-aeson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
          buildable = true;
          modules = [ "HSWM/Prelude" ];
          hsSourceDirs = [ "hswm-prelude" ];
        };
      };
      exes = {
        "hswm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hswm" or (errorHandler.buildDepError "hswm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
          hsSourceDirs = [ "app" ];
          mainPath = ([
            "Main.hs"
          ] ++ pkgs.lib.optional (flags.llvm && (compiler.isGhc && compiler.version.ge "9.14.1")) "") ++ pkgs.lib.optional (flags.optimize) "";
        };
        "hswmctl" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."hswm" or (errorHandler.buildDepError "hswm"))
            (hsPkgs."hswm".components.sublibs.ipc-api or (errorHandler.buildDepError "hswm:ipc-api"))
            (hsPkgs."hswm".components.sublibs.prelude or (errorHandler.buildDepError "hswm:prelude"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
          hsSourceDirs = [ "app-ctl" ];
          mainPath = ([
            "Main.hs"
          ] ++ pkgs.lib.optional (flags.llvm && (compiler.isGhc && compiler.version.ge "9.14.1")) "") ++ pkgs.lib.optional (flags.optimize) "";
        };
      };
    };
  } // rec { src = pkgs.lib.mkDefault ../hswm; }
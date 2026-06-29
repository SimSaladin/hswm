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
      identifier = { name = "libclang-bindings"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@well-typed.com";
      author = "Well-Typed LLP";
      homepage = "";
      url = "";
      synopsis = "libclang bindings";
      description = "";
      buildType = "Configure";
      isLocal = true;
      detailLevel = "FullDetails";
      licenseFiles = [ "LICENSE" ];
      dataDir = ".";
      dataFiles = [];
      extraSrcFiles = [
        "autogen/clang_config.h.in"
        "autogen/libclang_version.h.in"
        "autogen/Version_libclang_bindings.hs.in"
        "cbits/*.c"
        "cbits/*.h"
        "configure"
        "configure.ac"
        "libclang-bindings.buildinfo.in"
      ];
      extraTmpFiles = [];
      extraDocFiles = [ "CHANGELOG.md" "README.md" ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.4") (hsPkgs."data-array-byte" or (errorHandler.buildDepError "data-array-byte"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
        modules = [
          "Clang/HighLevel/Declaration"
          "Clang/HighLevel/Diagnostics"
          "Clang/HighLevel/Evaluate"
          "Clang/HighLevel/Fold"
          "Clang/HighLevel/SourceLoc"
          "Clang/HighLevel/Tokens"
          "Clang/HighLevel/Wrappers"
          "Clang/Internal/ConstPtr"
          "Clang/Internal/CXString"
          "Clang/Internal/Exception"
          "Clang/Internal/FFI"
          "Clang/Internal/Ptr"
          "Clang/Internal/Results"
          "Clang/LowLevel/Core/Enums"
          "Clang/LowLevel/Core/Instances"
          "Clang/LowLevel/Core/Pointers"
          "Clang/LowLevel/Core/Structs"
          "Clang/LowLevel/Doxygen/Enums"
          "Clang/LowLevel/Doxygen/Instances"
          "Clang/LowLevel/Doxygen/Structs"
          "Clang/LowLevel/FFI"
          "Clang/Version/Internal"
          "Clang/Version/Internal/Check"
          "Version_libclang_bindings"
          "Clang/Args"
          "Clang/Backtrace"
          "Clang/CStandard"
          "Clang/Discover"
          "Clang/Enum/Bitfield"
          "Clang/Enum/Simple"
          "Clang/HighLevel"
          "Clang/HighLevel/Documentation"
          "Clang/HighLevel/Types"
          "Clang/Internal/ByValue"
          "Clang/LowLevel/Core"
          "Clang/LowLevel/Doxygen"
          "Clang/Paths"
          "Clang/Version"
        ];
        cSources = [ "cbits/clang_wrappers.c" ];
        hsSourceDirs = [ "src" ];
        includeDirs = [ "cbits" ];
      };
      tests = {
        "clang-tutorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
          hsSourceDirs = [ "clang-tutorial" ];
          mainPath = [ "clang-tutorial.hs" ];
        };
        "test-clang-bindings" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libclang-bindings" or (errorHandler.buildDepError "libclang-bindings"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
          modules = [
            "Test/Discover"
            "Test/Meta/IsConcrete"
            "Test/Test/Exceptions"
            "Test/Util/AST"
            "Test/Util/Clang"
            "Test/Util/FoldException"
            "Test/Util/Input"
            "Test/Util/Input/Examples"
            "Test/Util/Input/StructForest"
            "Test/Util/Shape"
            "Test/Version"
          ];
          hsSourceDirs = [ "test" ];
          mainPath = [ "test-clang-bindings.hs" ];
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchgit {
      url = "2";
      rev = "minimal";
      sha256 = "";
    }) // {
      url = "2";
      rev = "minimal";
      sha256 = "";
    };
    postUnpack = "sourceRoot+=/libclang-bindings; echo source root reset to $sourceRoot";
  }
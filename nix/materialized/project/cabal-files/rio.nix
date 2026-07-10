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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "rio"; version = "0.1.25.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/rio#readme";
      url = "";
      synopsis = "A standard library for Haskell";
      description = "See README and Haddocks at <https://www.stackage.org/package/rio>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/rio-0.1.25.0.tar.gz";
      sha256 = "6a05426f81073e7dbd7e1daade53e9bf5cb0d9a963ce13136e7dc5f587751e3b";
    });
  }) // {
    package-description-override = "cabal-version: 1.12\r\n\n-- This file has been generated from package.yaml by hpack version 0.39.1.\n--\n-- see: https://github.com/sol/hpack\n\nname:           rio\nversion:        0.1.25.0\nsynopsis:       A standard library for Haskell\ndescription:    See README and Haddocks at <https://www.stackage.org/package/rio>\ncategory:       Control\nhomepage:       https://github.com/commercialhaskell/rio#readme\nbug-reports:    https://github.com/commercialhaskell/rio/issues\nauthor:         Michael Snoyman\nmaintainer:     michael@snoyman.com\nlicense:        MIT\nlicense-file:   LICENSE\nbuild-type:     Simple\nextra-source-files:\n    README.md\n    ChangeLog.md\n\nsource-repository head\n  type: git\n  location: https://github.com/commercialhaskell/rio\n\nlibrary\n  exposed-modules:\n      RIO\n      RIO.ByteString\n      RIO.ByteString.Lazy\n      RIO.ByteString.Lazy.Partial\n      RIO.ByteString.Partial\n      RIO.Char\n      RIO.Char.Partial\n      RIO.Deque\n      RIO.Directory\n      RIO.File\n      RIO.FilePath\n      RIO.HashMap\n      RIO.HashMap.Partial\n      RIO.HashSet\n      RIO.Lens\n      RIO.List\n      RIO.List.Partial\n      RIO.Map\n      RIO.Map.Partial\n      RIO.Map.Unchecked\n      RIO.NonEmpty\n      RIO.NonEmpty.Partial\n      RIO.Partial\n      RIO.Prelude\n      RIO.Prelude.Simple\n      RIO.Prelude.Types\n      RIO.Process\n      RIO.Seq\n      RIO.Set\n      RIO.Set.Partial\n      RIO.Set.Unchecked\n      RIO.State\n      RIO.Text\n      RIO.Text.Lazy\n      RIO.Text.Lazy.Partial\n      RIO.Text.Partial\n      RIO.Time\n      RIO.Vector\n      RIO.Vector.Boxed\n      RIO.Vector.Boxed.Partial\n      RIO.Vector.Boxed.Unsafe\n      RIO.Vector.Partial\n      RIO.Vector.Storable\n      RIO.Vector.Storable.Partial\n      RIO.Vector.Storable.Unsafe\n      RIO.Vector.Unboxed\n      RIO.Vector.Unboxed.Partial\n      RIO.Vector.Unboxed.Unsafe\n      RIO.Vector.Unsafe\n      RIO.Writer\n  other-modules:\n      RIO.Prelude.Display\n      RIO.Prelude.Exit\n      RIO.Prelude.Extra\n      RIO.Prelude.IO\n      RIO.Prelude.Lens\n      RIO.Prelude.Logger\n      RIO.Prelude.Reexports\n      RIO.Prelude.Renames\n      RIO.Prelude.RIO\n      RIO.Prelude.Text\n      RIO.Prelude.Trace\n      RIO.Prelude.URef\n  hs-source-dirs:\n      src/\n  build-depends:\n      base >=4.12 && <10\n    , bytestring\n    , containers\n    , deepseq\n    , directory\n    , exceptions\n    , filepath\n    , hashable\n    , microlens >=0.4.2.0\n    , microlens-mtl\n    , mtl\n    , primitive\n    , process\n    , text\n    , time\n    , typed-process >=0.2.5.0\n    , unliftio >=0.2.14\n    , unliftio-core\n    , unordered-containers\n    , vector\n  default-language: Haskell2010\n  if os(windows)\n    cpp-options: -DWINDOWS\n    build-depends:\n        Win32\n  else\n    build-depends:\n        unix\n  if os(darwin)\n    cpp-options: -DMACOS\n\ntest-suite spec\n  type: exitcode-stdio-1.0\n  main-is: Spec.hs\n  other-modules:\n      RIO.DequeSpec\n      RIO.FileSpec\n      RIO.ListSpec\n      RIO.LoggerSpec\n      RIO.Prelude.ExtraSpec\n      RIO.Prelude.IOSpec\n      RIO.Prelude.RIOSpec\n      RIO.Prelude.SimpleSpec\n      RIO.PreludeSpec\n      RIO.TextSpec\n      Paths_rio\n  hs-source-dirs:\n      test\n  build-depends:\n      QuickCheck\n    , base >=4.12 && <10\n    , bytestring\n    , containers\n    , deepseq\n    , directory\n    , exceptions\n    , filepath\n    , hashable\n    , hspec\n    , microlens >=0.4.2.0\n    , microlens-mtl\n    , mtl\n    , primitive\n    , process\n    , rio\n    , text\n    , time\n    , typed-process >=0.2.5.0\n    , unliftio >=0.2.14\n    , unliftio-core\n    , unordered-containers\n    , vector\n  default-language: Haskell2010\n  if os(windows)\n    cpp-options: -DWINDOWS\n    build-depends:\n        Win32\n  else\n    build-depends:\n        unix\n  if os(darwin)\n    cpp-options: -DMACOS\n  build-tool-depends:\n      hspec-discover:hspec-discover\n";
  }
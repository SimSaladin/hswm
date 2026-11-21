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
    flags = { network--ge-3_0_0 = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "MissingH"; version = "1.6.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004-2018 John Goerzen";
      maintainer = "Andreas Abel";
      author = "John Goerzen";
      homepage = "";
      url = "";
      synopsis = "Large utility library";
      description = "@MissingH@ is a library of all sorts of utility functions for Haskell\nprogrammers.  It is written in pure Haskell and thus should be\nextremely portable and easy to use.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ (if flags.network--ge-3_0_0
          then [
            (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
        };
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/MissingH-1.6.0.3.tar.gz";
      sha256 = "1a93d86c9c33fbf8c5dafdf0d5d32ddc12bb5206a0f56a931d204328716ca4a8";
    });
  }) // {
    package-description-override = "cabal-version: 1.24\nname: MissingH\nversion: 1.6.0.3\n\nbuild-type: Simple\nlicense: BSD3\nauthor: John Goerzen\ncopyright: Copyright (c) 2004-2018 John Goerzen\nmaintainer: Andreas Abel\nlicense-file: LICENSE\n\ntested-with:\n  GHC == 9.14.1\n  GHC == 9.12.2\n  GHC == 9.10.3\n  GHC == 9.8.4\n  GHC == 9.6.7\n  GHC == 9.4.8\n  GHC == 9.2.8\n  GHC == 9.0.2\n  GHC == 8.10.7\n  GHC == 8.8.4\n  GHC == 8.6.5\n  GHC == 8.4.4\n  GHC == 8.2.2\n  GHC == 8.0.2\n\nsynopsis: Large utility library\ndescription:\n  @MissingH@ is a library of all sorts of utility functions for Haskell\n  programmers.  It is written in pure Haskell and thus should be\n  extremely portable and easy to use.\ncategory: Unclassified\nbug-reports: https://github.com/haskell-hvr/missingh/issues\n\nextra-doc-files:\n  CHANGES.md\n  LICENSE\n  announcements/0.10.0.txt\n  announcements/0.8.0.txt\n  announcements/0.9.0.txt\n  3rd-party-licenses/BSD\n  3rd-party-licenses/LGPL-2.1\n\nextra-source-files:\n  testsrc/gzfiles/empty.gz\n  testsrc/gzfiles/t1.gz\n  testsrc/gzfiles/t1bad.gz\n  testsrc/gzfiles/t2.gz\n  testsrc/gzfiles/zeros.gz\n  testsrc/mime.types.test\n  examples/simplegrep.hs\n  examples/test2.hs\n  examples/test3.hs\n\nflag network--GE-3_0_0\n  description: [network](http://hackage.haskell.org/package/network) ≥ 3.0.0\n  default: True\n  manual: False\n\nsource-repository head\n  type: git\n  location: https://github.com/haskell-hvr/missingh.git\n\nlibrary\n  hs-source-dirs: src\n  exposed-modules:\n    Control.Concurrent.Thread.Utils\n    Data.BinPacking\n    Data.Bits.Utils\n    Data.CSV\n    Data.Compression.Inflate\n    Data.Either.Utils\n    Data.Hash.CRC32.GZip\n    Data.Hash.MD5\n    Data.Hash.MD5.Zord64_HARD\n    Data.List.Utils\n    Data.MIME.Types\n    Data.Map.Utils\n    Data.Maybe.Utils\n    Data.Progress.Meter\n    Data.Progress.Tracker\n    Data.Quantity\n    Data.String.Utils\n    Data.Tuple.Utils\n    Network.Email.Mailbox\n    Network.Email.Sendmail\n    Network.SocketServer\n    Network.Utils\n    System.Cmd.Utils\n    System.Console.GetOpt.Utils\n    System.Daemon\n    System.Debian\n    System.Debian.ControlParser\n    System.FileArchive.GZip\n    System.IO.Binary\n    System.IO.HVFS\n    System.IO.HVFS.Combinators\n    System.IO.HVFS.InstanceHelpers\n    System.IO.HVFS.Utils\n    System.IO.HVIO\n    System.IO.PlafCompat\n    System.IO.StatCompat\n    System.IO.Utils\n    System.IO.WindowsCompat\n    System.Path\n    System.Path.Glob\n    System.Path.NameManip\n    System.Path.WildMatch\n    System.Posix.Consts\n    System.Time.Utils\n    Text.ParserCombinators.Parsec.Utils\n\n  default-language: Haskell2010\n  default-extensions:\n    ExistentialQuantification\n    FlexibleContexts\n    FlexibleInstances\n    LambdaCase\n    MultiParamTypeClasses\n    Rank2Types\n    ScopedTypeVariables\n    UndecidableInstances\n  other-extensions:\n    CPP\n    Safe\n    Trustworthy\n    TypeSynonymInstances\n\n  build-depends:\n      array               >= 0.4.0.0 && < 0.6\n    , base                >= 4.9     && < 5\n    , containers          >= 0.4.2.1 && < 1\n    , directory           >= 1.1.0.2 && < 1.4\n    , filepath            >= 1.3.0.0 && < 1.6\n    , hslogger            >= 1.3.0.0 && < 1.4\n    , mtl                 >= 1.1.1.0 && < 2.4\n    , old-locale          == 1.0.*\n    , old-time            == 1.1.*\n    , parsec              == 3.1.*   && (< 3.1.12 || >= 3.1.13)\n    , process             >= 1.1.0.1 && < 1.7\n    , regex-compat        >= 0.95.1  && < 0.96\n    , time                >= 1.4     && < 2\n\n  if flag(network--GE-3_0_0)\n    build-depends: network-bsd >= 2.8.1 && <2.9,\n                   network >= 3.0 && <3.3\n  else\n    build-depends: network >= 2.6.3.1 && <2.9\n\n  if !os(windows)\n    build-depends: unix   >= 2.5.1.0 && < 2.9\n\n  ghc-options:\n      -Wall\n      -Wcompat\n\n----------------------------------------------------------------------------\n\ntest-suite runtests\n  type: exitcode-stdio-1.0\n\n  hs-source-dirs: testsrc\n  main-is: runtests.hs\n  other-modules:\n    TestUtils\n\n    Bitstest\n    CRC32GZIPtest\n    Eithertest\n    GZiptest\n    Globtest\n    HVFStest\n    HVIOtest\n    IOtest\n    Listtest\n    MIMETypestest\n    Maptest\n    Pathtest\n    ProgressTrackertest\n    Str.CSVtest\n    Strtest\n    Tests\n    Timetest\n    WildMatchtest\n\n  default-language: Haskell2010\n  other-extensions:\n    CPP\n\n  -- intra-package dependency\n  build-depends: MissingH\n\n  -- deps with version bounds inherited via lib:MissingH component\n  build-depends:\n      base\n    , containers\n    , directory\n    , filepath\n    , old-time\n    , parsec\n    , regex-compat\n\n  if !os(windows)\n    build-depends: unix\n\n  -- additional testsuite-specific dependencies\n  build-depends:\n      HUnit                  == 1.6.*\n\n  ghc-options:\n      -Wall\n      -Wcompat\n";
  }
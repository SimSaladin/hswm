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
      specVersion = "1.6";
      identifier = { name = "xdg-basedir"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Will Donnelly";
      maintainer = "Will Donnelly <will.donnelly@gmail.com>";
      author = "Will Donnelly";
      homepage = "http://github.com/willdonnelly/xdg-basedir";
      url = "";
      synopsis = "A basic implementation of the XDG Base Directory specification.";
      description = "On Unix platforms, this should be a very straightforward\nimplementation of the XDG Base Directory spec. On Windows,\nit will attempt to do the right thing with regards to\nchoosing appropriate directories.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/xdg-basedir-0.2.2.tar.gz";
      sha256 = "e461c3a5c6007c55ceaea03be3be0ef3a92aa0ea1aea936da0c43671bbfaf42b";
    });
  }) // {
    package-description-override = "name:          xdg-basedir\nversion:       0.2.2\ncategory:      System\nsynopsis:      A basic implementation of the XDG Base Directory specification.\n\ndescription:   On Unix platforms, this should be a very straightforward\n               implementation of the XDG Base Directory spec. On Windows,\n               it will attempt to do the right thing with regards to\n               choosing appropriate directories.\n\nhomepage:      http://github.com/willdonnelly/xdg-basedir\nbug-reports:   http://github.com/willdonnelly/xdg-basedir/issues\nstability:     alpha\nauthor:        Will Donnelly\nmaintainer:    Will Donnelly <will.donnelly@gmail.com>\ncopyright:     (c) 2011 Will Donnelly\nlicense:       BSD3\nlicense-file:  LICENSE\n\nbuild-type:    Simple\ncabal-version: >= 1.6\n\nlibrary\n  exposed-modules: System.Environment.XDG.BaseDir\n  build-depends:   base >= 4 && < 5, directory, filepath\n\nsource-repository head\n  type:      git\n  location:  git://github.com/willdonnelly/xdg-basedir.git\n";
  }
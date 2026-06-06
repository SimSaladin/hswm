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
      specVersion = "1.10";
      identifier = { name = "haskell-gi-overloading"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Iñaki García Etxebarria";
      maintainer = "garetxe@gmail.com";
      author = "Iñaki García Etxebarria";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Overloading support for haskell-gi";
      description = "Control overloading support in haskell-gi generated bindings";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/haskell-gi-overloading-1.0.tar.gz";
      sha256 = "3ed797f8dd8d3535640b1ca99851bbc5968817c25a80fc499af42715d371682a";
    });
  }) // {
    package-description-override = "name:                haskell-gi-overloading\nversion:             1.0\nsynopsis:            Overloading support for haskell-gi\ndescription:         Control overloading support in haskell-gi generated bindings\nhomepage:            https://github.com/haskell-gi/haskell-gi\nlicense:             BSD3\nlicense-file:        LICENSE\nauthor:              Iñaki García Etxebarria\nmaintainer:          garetxe@gmail.com\ncopyright:           Iñaki García Etxebarria\ncategory:            Bindings\nbuild-type:          Simple\nextra-source-files:  ChangeLog.md README.md\ncabal-version:       >=1.10\n\nlibrary\n  default-language:    Haskell2010\n";
  }
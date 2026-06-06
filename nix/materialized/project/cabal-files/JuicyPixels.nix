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
    flags = { mmap = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "JuicyPixels"; version = "3.3.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vincent.berthoux@gmail.com";
      author = "Vincent Berthoux";
      homepage = "https://github.com/Twinside/Juicy.Pixels";
      url = "";
      synopsis = "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)";
      description = "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>\n\nThis library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  } // {
    src = pkgs.lib.mkDefault (pkgs.fetchurl {
      url = "http://hackage.haskell.org/package/JuicyPixels-3.3.9.tar.gz";
      sha256 = "3e44ac5d3e684b65e9efaf60ca9a907a86edc879dfcf63f86eebc721e542864d";
    });
  }) // {
    package-description-override = "Name:                JuicyPixels\r\nVersion:             3.3.9\r\nx-revision: 1\r\nSynopsis:            Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)\r\nDescription:\r\n    <<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>\r\n    .\r\n    This library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.\r\n\r\nhomepage:            https://github.com/Twinside/Juicy.Pixels\r\nLicense:             BSD3\r\nLicense-file:        LICENSE\r\nAuthor:              Vincent Berthoux\r\nMaintainer:          vincent.berthoux@gmail.com\r\nCategory:            Codec, Graphics, Image\r\nStability:           Stable\r\nBuild-type:          Simple\r\ncabal-version: 1.18\r\ntested-with:\r\n  GHC == 9.8.1\r\n  GHC == 9.6.4\r\n  GHC == 9.4.8\r\n  GHC == 9.2.8\r\n  GHC == 9.0.2\r\n  GHC == 8.10.7\r\n  GHC == 8.8.4\r\n  GHC == 8.6.5\r\n  GHC == 8.4.4\r\n  GHC == 8.2.2\r\n  GHC == 8.0.2\r\n\r\nextra-doc-files: changelog, docimages/*.png, docimages/*.svg, README.md\r\nextra-doc-files: docimages/*.png, docimages/*.svg\r\n\r\nSource-Repository head\r\n    Type:      git\r\n    Location:  git://github.com/Twinside/Juicy.Pixels.git\r\n\r\nSource-Repository this\r\n    Type:      git\r\n    Location:  git://github.com/Twinside/Juicy.Pixels.git\r\n    Tag:       v3.3.8\r\n\r\nFlag Mmap\r\n    Description: Enable the file loading via mmap (memory map)\r\n    Default: False\r\n\r\nLibrary\r\n  hs-source-dirs: src\r\n  Default-Language: Haskell2010\r\n  default-extensions: TypeOperators\r\n  Exposed-modules:  Codec.Picture,\r\n                    Codec.Picture.Bitmap,\r\n                    Codec.Picture.Gif,\r\n                    Codec.Picture.Png,\r\n                    Codec.Picture.Jpg,\r\n                    Codec.Picture.HDR,\r\n                    Codec.Picture.Tga,\r\n                    Codec.Picture.Tiff,\r\n                    Codec.Picture.Metadata,\r\n                    Codec.Picture.Metadata.Exif,\r\n                    Codec.Picture.Saving,\r\n                    Codec.Picture.Types,\r\n                    Codec.Picture.ColorQuant,\r\n                    Codec.Picture.Jpg.Internal.DefaultTable,\r\n                    Codec.Picture.Jpg.Internal.Metadata,\r\n                    Codec.Picture.Jpg.Internal.FastIdct,\r\n                    Codec.Picture.Jpg.Internal.FastDct,\r\n                    Codec.Picture.Jpg.Internal.Types,\r\n                    Codec.Picture.Jpg.Internal.Common,\r\n                    Codec.Picture.Jpg.Internal.Progressive,\r\n                    Codec.Picture.Gif.Internal.LZW,\r\n                    Codec.Picture.Gif.Internal.LZWEncoding,\r\n                    Codec.Picture.Png.Internal.Export,\r\n                    Codec.Picture.Png.Internal.Type,\r\n                    Codec.Picture.Png.Internal.Metadata,\r\n                    Codec.Picture.Tiff.Internal.Metadata,\r\n                    Codec.Picture.Tiff.Internal.Types\r\n\r\n  Ghc-options: -O3 -Wall\r\n  Build-depends: base                >= 4.8     && < 5,\r\n                 bytestring          >= 0.9     && < 0.13,\r\n                 mtl                 >= 1.1     && < 2.4,\r\n                 binary              >= 0.8.1   && < 0.9,\r\n                 zlib                >= 0.5.3.1 && < 0.8,\r\n                 transformers        >= 0.2,\r\n                 vector              >= 0.12.3.1,\r\n                 primitive           >= 0.4,\r\n                 deepseq             >= 1.1     && < 1.6,\r\n                 containers          >= 0.4.2\r\n  -- Modules not exported by this package.\r\n  Other-modules: Codec.Picture.BitWriter,\r\n                 Codec.Picture.InternalHelper,\r\n                 Codec.Picture.VectorByteConversion\r\n\r\n  Install-Includes: src/Codec/Picture/ConvGraph.hs\r\n  Include-Dirs: src/Codec/Picture\r\n\r\n";
  }
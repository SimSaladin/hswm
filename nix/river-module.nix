{ inputs, ... }:

{
  flake.overlays.river = final: _: {

    # roll our own for now because the nixpkgs one is rather old and lacks
    # features (the wm protocol etc.)
    river = final.callPackage ./river.nix {
      src = inputs.river;
      depsHash = "sha256-uOEzzsTWg1/0lgcTpdPqY4ZXo2cSj04Jr9M/dcI1d30=";
    };

    # With debug enabled
    riverDebug = final.river.override { withDebug = true; };

    mkZon2nixPkgs = final.callPackage ./mk-zon2nix-pkgs.nix { };

    # Note: different from the zon2nix in upstream nixpkgs!
    zon2nix = inputs.zon2nix.packages.${final.stdenv.hostPlatform.system}.zon2nix;
  };

  perSystem = { pkgs, ... }: {
    packages = {
      # Export our overridden river for convenience.
      inherit (pkgs) river riverDebug;
    };

    legacyPackages = {
      inherit (pkgs) river riverDebug;
    };
  };

}

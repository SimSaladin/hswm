{ inputs, ... }:

{
  flake.overlays.river = final: _: {

    # Note: different from the zon2nix in upstream nixpkgs!
    zon2nix = inputs.zon2nix.packages.${final.stdenv.hostPlatform.system}.zon2nix;

    mkZon2nixPkgs = final.callPackage ./mk-zon2nix-pkgs.nix { } {
      pname = "riverdeps";
      src = inputs.river;
      outputHash = "";
    };
  };
}

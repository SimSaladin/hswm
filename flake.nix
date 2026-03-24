{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
  };

  outputs = inputs@{ self, nixpkgs, flake-utils, ... }:
  inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [ "x86_64-linux" ];
    imports = [
      inputs.haskell-flake.flakeModule
    ];
    perSystem = { system, lib, config, pkgs, ... }: {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [
          (final: _: {
            river = final.callPackage ./river.nix { };
          })
        ];
      };
      haskellProjects.default = {
        projectRoot = ./.;
        devShell = {
          tools = hp: {
            inherit (hp)
              c2hs
              ;
            inherit (pkgs)
              wayland-scanner
              libxkbcommon
              weston
              river
              ;
          };
        };
      };
    };
  };

}

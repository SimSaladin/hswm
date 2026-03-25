{
  description = "HsWM: XMonad-inspired window manager for Wayland powered by River (compositor/wm protocol)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
  };

  outputs = inputs@{ self, nixpkgs, flake-utils, ... }:
  inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [ "x86_64-linux" "aarch64-linux" ];
    imports = [
      inputs.haskell-flake.flakeModule
    ];
    perSystem = { system, lib, config, pkgs, ... }: {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [
          (final: _: {
            # roll our own for now because the nixpkgs one is rather old and lacks
            # features (the wm protocol etc.)
            river = final.callPackage ./river/package.nix { };
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

{
  description = "HsWM: XMonad-inspired window manager for Wayland powered by River (compositor/wm protocol)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
    hs-bindgen = {
      url = "github:well-typed/hs-bindgen";
      inputs.nixpkgs.follows = "nixpkgs";
    };
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
          inputs.hs-bindgen.overlays.default
        ];
      };
      haskellProjects.default = {
        projectRoot = ./.;
        basePackages = pkgs.haskell.packages.ghc912;
        #basePackages = pkgs.haskell.packages.ghc914;
        devShell = {
          tools = hp: {
            inherit (hp)
              hs-bindgen
              ;
            inherit (pkgs)
              wayland-scanner
              libxkbcommon
              weston
              river
              pixman
              ;
          };
        };
      };
      packages = {
        # Export our overridden river for convenience.
        inherit (pkgs) river;
      };
    };
  };

}

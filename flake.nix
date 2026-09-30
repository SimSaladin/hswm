{
  description = "HsWM: XMonad-inspired window manager for Wayland powered by River (compositor/wm protocol)";

  nixConfig = {
    extra-trusted-public-keys = [
      "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="
    ];
    extra-substituters = [
      "https://cache.iog.io"
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    flake-utils.url = "github:numtide/flake-utils";
    flake-parts.url = "github:hercules-ci/flake-parts";

    #haskellNix.url = "github:input-output-hk/haskell.nix";
    #haskellNix.url = "git+file:/home/sim/haskell.nix";
    haskellNix.url = "github:SimSaladin/haskell.nix";

    hs-bindgen = {
      url = "github:well-typed/hs-bindgen";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };

    river = {
      url = "git+https://codeberg.org/river/river";
      flake = false;
    };

    zon2nix = {
      url = "github:jcollie/zon2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ ... }: inputs.flake-parts.lib.mkFlake { inherit inputs; }
  ({ self, ... }: {

    # Materialization: nix run .#materialized-do
    _module.args.checkMaterialization = false;

    imports = [
      ./nix/lib.nix
      ./nix/river-module.nix
      ./nix/cabal-master.nix
      ./nix/hs-bindgen.nix
      ./nix/project.nix
    ];

    systems = [ "x86_64-linux" ];

    debug = true;

    perSystem = { system, lib, ... }:
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [
          inputs.haskellNix.overlay
          self.overlays.river
          self.overlays.cabal-master
          self.overlays.hs-bindgen
          self.overlays.project-lib
          self.overlays.project
        ];
        config = lib.recursiveUpdate inputs.haskellNix.config {
           problems.handlers = {
             #monad-logger-aeson.broken = "warn";
             #Cabal-hooks.broken = "warn"; # or "ignore"
           };
         };
      };
    };
  });
}

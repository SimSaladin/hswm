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
    haskellNix.url = "github:SimSaladin/haskell.nix?ref=sim/v2-flib";

    # cabal 3.18
    nix-tools.url = "github:SimSaladin/haskell.nix?dir=nix-tools&ref=sim/cabal-3.18";

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
  ({ self, lib, ... }: {

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

    flake.overlays.default = lib.composeManyExtensions [
      self.overlays.river
      self.overlays.project-lib
      self.overlays.hs-bindgen
      self.overlays.cabal-master
      self.overlays.project
    ];

    perSystem = { system, lib, pkgs, ... }: {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [
          inputs.haskellNix.overlay
          self.overlays.default
        ];
        config = inputs.haskellNix.config // {
          allowUnfree = true; # XXX: ghc-toolchain-lib-ghc-toolchain-0.1.0.0
        };
      };

      legacyPackages = {
        inherit pkgs;
      };
    };
  });
}

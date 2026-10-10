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

    zig2nix = {
      url = "github:Cloudef/zig2nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };
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
    ({ self, lib, ... }:
      let
        inherit (inputs.flake-utils.lib) mkApp;
      in
      {
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

          (final: prev: {

            zigEnv = inputs.zig2nix.outputs.zig-env.${final.stdenv.hostPlatform.system} {
              nixpkgs = inputs.nixpkgs;
              zig = final.zig_0_16;
            };

            # roll our own for now because the nixpkgs one is rather old and lacks
            # features (the wm protocol etc.)
            river = final.callPackage ./river/package.nix {
              input = inputs.river;
              src = inputs.river.outPath;
              inherit (final) zigEnv;
            };

            # With debug enabled
            riverDebug = final.river.override {
              withDebug = true;
            };
          })
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

          packages = {
            # Export our overridden river for convenience.
            inherit (pkgs) river riverDebug;
          };

          legacyPackages = {
            inherit pkgs;
            inherit (pkgs) river riverDebug;
          };

          apps =
            let
              zig2nix = inputs.zig2nix.outputs.apps.${system};
            in
            {
              updateRiverDeps = mkApp {
                drv = pkgs.writeShellApplication {
                  runtimeInputs = [ ];
                  text = ''
                    set -x
                    tool=${zig2nix.zig2nix-0_16_0}
                    src=${toString inputs.river}
                    work=$(mktemp -d)
                    cp -RP $src $work
                    pushd $work
                    $tool zon2lock build.zig.zon
                    $tool zon2nix  build.zig.zon
                    cp -v build.zig.zon.nix $ROOT/river/
                    popd
                    rm -ri "$work"
                    echo "Done!"
                  '';
                };
              };

              zig2nix-0_16_0 = zig2nix.zig2nix-0_16_0;
              zig2nix-latest = zig2nix.zig2nix-latest;

              updateProtocols = mkApp {
                drv = pkgs.writeShellApplication {
                  name = "update-protocols";
                  runtimeInputs = [ ];
                  text = ''
                    set -x
                    upstream=${inputs.river}/protocol
                    current=./hswm-bindings/protocol/
                    diff -r $current $upstream || :
                    cp -v -t "$current" $upstream/*.xml
                  '';
                };
              };
            };
        };
      });
}

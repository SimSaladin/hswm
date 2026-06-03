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

    #haskell-flake.url = "github:srid/haskell-flake";

    haskellNix.url = "github:input-output-hk/haskell.nix";

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

  outputs = inputs@{ ... }: inputs.flake-parts.lib.mkFlake { inherit inputs; } {

    systems = [ "x86_64-linux" /* "aarch64-linux" */ ];

    imports = [
      #inputs.haskell-flake.flakeModule
      #./nix/haskell-flake.nix
    ];

    debug = true;

    perSystem = { system, lib, config, pkgs, ... }:
    let
      overlays = [
        (final: _: {
          # roll our own for now because the nixpkgs one is rather old and lacks
          # features (the wm protocol etc.)
          river = final.callPackage ./nix/river.nix {
            src = inputs.river;
            depsHash = "sha256-uOEzzsTWg1/0lgcTpdPqY4ZXo2cSj04Jr9M/dcI1d30=";
          };

          # With debug enabled
          riverDebug = final.river.override { withDebug = true; };

          # for support "cabal-version: 3.14"
          cabal2nix-unwrapped = final.haskell.packages.ghc914.cabal2nix;

          # For cabal pkg-config-depends: xkbregistry
          xkbregistry = final.libxkbcommon;

          # Different one than the one in nixpkgs
          zon2nix = inputs.zon2nix.packages.${system}.zon2nix;

          callZon2Nix = final.callPackage ./nix/callZon2nix.nix { };
        })
        inputs.hs-bindgen.overlays.default
        inputs.haskellNix.overlay
        projectOverlay
      ];

      projectOverlay = final: _: {

        hnix-flake = final.hnix.flake { };

        hnix = final.haskell-nix.cabalProject' ({ lib, config, pkgs, ... }: {
          name = "hswm";
          src = ./.;

          compiler-nix-name = "ghc9141";

          flake = {
            variants = {
              ghc915.compiler-nix-name = lib.mkForce "ghc915";
              ghc914llvm.compiler-nix-name = lib.mkForce "ghc9141llvm";
              ghc9124.compiler-nix-name = lib.mkForce "ghc9124";
            };
          };

          shell = {
            packages = ps: [
              ps.pixman-bindings
              ps.xkbcommon-bindings
              ps.hswm-bindings
              #ps.glib
              #ps.pango
              ps.haskell-gi
              ps.waybar-cffi-hs
            ];
            exactDeps = false;
            allToolDeps = true;
            tools = {
              #hoogle = { };
              #cabal = { };
              #hs-bindgen = { version = "0.1.0"; };
              #haskell-language-server = { };
            };
            additional = ps: [
              ps.hs-bindgen
            ];
            nativeBuildInputs = [
              config.hsPkgs.cabal-install.components.exes.cabal
              #config.hsPkgs.haskell-language-server.components.exes.haskell-language-server
            ];
          };

          #builderVersion = 2;
          #useLocalGhcLib = true;
          #cabalProjectLocal = '' '';
          #pkg-def-extras = [(_: { packages = { }; })];
          #ghcOverride = lib.mkForce (pkgs.buildPackages.haskell-nix.compiler.${"ghc91520260204"}.override {
          #    bootPkgs = pkgs.buildPackages.haskell-nix.compiler.ghc9141.bootPkgs;
          #    ghcEvalPackages = config.evalPackages;
          #});

          modules = [({ lib, config, pkgs, ... }: {
            config = {
              reinstallableLibGhc = true;

              packages.cabal-install.planned = true;
              #packages.haskell-language-server.planned = true;

              # As pkg-config deps because these need to be propagated
              packages.hs-bindgen = {
                components.exes.hs-bindgen-cli.pkgconfig = [ [
                  pkgs.hsBindgenHook
                  pkgs.doxygen
                  # clang exe needed for full macro support
                  config.ghc.package.llvmPackages.libclang
                ] ];
              };
              packages.libclang-bindings = {
                components.library.libs = [ config.ghc.package.llvmPackages.libclang ];
                components.library.build-tools = [ config.ghc.package.llvmPackages.llvm ];
              };
              packages.c-expr-dsl = {
                components.library.libs = [ config.ghc.package.llvmPackages.libclang ];
              };

              packages.xkbcommon-bindings = { };
              packages.pixman-bindings = { };
              packages.hswm-bindings = {
                components.library.build-tools = [ pkgs.wayland-scanner ];
              };
              packages.hswm = {
                components.library.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.libclang
                ];
                components.exes.hswm.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.libclang
                ];
              };
            };
          })];
        });
      };

    in
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system overlays;
        config = lib.recursiveUpdate inputs.haskellNix.config {
           problems.handlers = {
             monad-logger-aeson.broken = "warn";
             Cabal-hooks.broken = "warn"; # or "ignore"
           };
         };
      };

      packages = pkgs.hnix-flake.packages // {
        # Export our overridden river for convenience.
        inherit (pkgs) river riverDebug;

        default = pkgs.buildEnv {
          pname = "hswm-full";
          version = "0.1.0";
          paths = [
            config.packages."hswm:exe:hswm"
            config.packages."hswm:exe:hswmctl"
            config.packages."waybar-cffi-hs:flib:waybarhaskellplugin"
          ];
        };
      };

      devShells = pkgs.hnix-flake.devShells;

      legacyPackages = pkgs;
    };
  };
}

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
    haskell-flake.url = "github:srid/haskell-flake";

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

    # GHC 9.14
    ghc-tcplugins-extra = {
      url = "github:sheaf/ghc-tcplugins-extra/ghc-9.14";
      flake = false;
    };
    ghc-typelits-natnormalise = {
      url = "github:clash-lang/ghc-typelits-natnormalise";
      flake = false;
    };
    # https://github.com/gtk2hs/gtk2hs/pull/349
    #gtk2hs = {
      #url = "github:TuongNM/gtk2hs/ghc-rts-api";
      #flake = false;
    #};
    cabal = {
      url = "github:haskell/cabal";
      flake = false;
    };
    hlint = {
      url = "github:ndmitchell/hlint/ghc-9.14.1";
      flake = false;
    };
    ghc-paths = {
      url = "github:sorki/ghc-paths/srk/cabal317";
      flake = false;
    };
    entropy = {
      url = "github:haskell/entropy";
      flake = false;
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
      projectOverlay = final: _: {

        hnix-flake = final.hnix.flake { };

        hnix = final.haskell-nix.cabalProject' ({ config, pkgs, ... }: {
          name = "hswm";
          src = ./.;
          compiler-nix-name = "ghc9141";

          #builderVersion = 2;

          #useLocalGhcLib = true;

          cabalProjectLocal = ''
            -- allow-boot-library-installs: True
          '';

          shell = {
            packages = ps: [
              ps.pixman-bindings
              ps.xkbcommon-bindings
              ps.hswm-bindings
              ps.glib
              ps.pango
              ps.haskell-gi
              ps.waybar-cffi-hs
            ];
            exactDeps = false;
            allToolDeps = true;
            tools = {
              hoogle = { };
              #cabal = { };
              #hs-bindgen = { version = "0.1.0"; };
            };
            additional = ps: [
              ps.generics-sop
              ps.lens-sop
              ps.hs-bindgen
            ];
            nativeBuildInputs = [
              config.hsPkgs.cabal-install.components.exes.cabal
            ];
          };

          #pkg-def-extras = [(_: { packages = { }; })];

          modules = [({ lib, config, pkgs, ... }: {

            config = {
              #reinstallableLibGhc = true;

              packages.cabal-install.planned = true;

              packages.glib = {
                components.setup.depends = lib.mkForce [
                  config.hsPkgs."gtk2hs-buildtools-0.13.12.0"
                ];
              };

              packages.libclang-bindings = {
                components.library.libs = [ config.ghc.package.llvmPackages.libclang ];
                components.library.build-tools = [ config.ghc.package.llvmPackages.llvm ];
              };

              packages.c-expr-dsl = {
                components.library.libs = [ config.ghc.package.llvmPackages.libclang ];
              };

              packages.hs-bindgen = {
                # Need to be propagated
                components.exes.hs-bindgen-cli.pkgconfig = [
                  [ pkgs.hsBindgenHook pkgs.doxygen ]
                ];
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
        inherit system;
        config = {
           problems.handlers = {
             monad-logger-aeson.broken = "warn";
             Cabal-hooks.broken = "warn"; # or "ignore"
           };
         };

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

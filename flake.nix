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
    haskellNix.url = "git+file:/home/sim/haskell.nix";

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
    #debug = true;
    systems = [ "x86_64-linux" ];
    perSystem = { self', system, lib, config, pkgs, ... }:
    let
      inherit (inputs.flake-utils.lib) mkApp;

      # Materialization: nix run .#materialized-do
      checkMaterialization = false;
      materializedLocations = {
        project = { attr = "project"; materialized = "./nix/materialized/project"; };
        only-cabal = { attr = "only-cabal"; materialized = "./nix/materialized/cabal-plan-nix"; };
      };

      hsNixModules = {
        main = { lib, config, ... }: {
          config = {
            reinstallableLibGhc = true;
            # workaround hsc2hs problem
            packages = lib.genAttrs [ "zlib" "network" "haskell-gi" "haskell-gi-base" "filelock" "unix-time" ]
              (_: { components.library.depends = [ config.hsPkgs.process ]; });
          };
        };

        project = { config, pkgs, ... }: {
          config = {
            packages.waybar-cffi-hs = { };
            packages.xkbcommon-bindings = { };
            packages.pixman-bindings = { };
            packages.haskell-wayland-core.components.library.build-tools = [ pkgs.wayland-scanner ];
            packages.hswm-bindings.components.library.build-tools = [ pkgs.wayland-scanner ];
            packages.hswm = {
              components.library.build-tools = [
                config.ghc.package.llvmPackages.llvm
                config.ghc.package.llvmPackages.libclang
              ];
              components.sublibs.prelude.build-tools = [
                config.ghc.package.llvmPackages.llvm
                config.ghc.package.llvmPackages.libclang
              ];
              components.sublibs.ipc-api.build-tools = [
                config.ghc.package.llvmPackages.llvm
                config.ghc.package.llvmPackages.libclang
              ];
              components.exes.hswm.build-tools = [
                config.ghc.package.llvmPackages.llvm
                config.ghc.package.llvmPackages.libclang
              ];
            };
          };
        };

        hs-bindgen = { config, pkgs, ... }: {
          # As pkg-config deps because these need to be propagated.
          # The clang executable is needed for full macro support.
          packages.hs-bindgen.components.exes.hs-bindgen-cli.pkgconfig = [[ config.ghc.package.llvmPackages.libclang pkgs.hsBindgenHook pkgs.doxygen ]];
          packages.libclang-bindings.components.library.build-tools = [ config.ghc.package.llvmPackages.llvm ];
          packages.libclang-bindings.components.library.libs = [ config.ghc.package.llvmPackages.libclang ];
          packages.libclang-bindings.components.library.depends = [ config.hsPkgs.process ]; # for hsc2hs
          packages.c-expr-dsl.components.library.libs = [ config.ghc.package.llvmPackages.libclang ];
        };
      };

      projectOverlay = final: _: {

        only-cabal = final.haskell-nix.cabalProject' ({ ... }: {
          name = "cabal-unreleased";
          src = ./project-cabal;

          cabalProjectFileName = "cabal-3.17.cabal";
          builderVersion = 1;

          # important three to fix to avoid materialized drift!
          compiler-nix-name = "ghc9141llvm";
          index-state = "2026-06-04T23:15:22Z";
          evalPackages = final.buildPackages;

          materialized = let dir = ./. + materializedLocations.only-cabal.materialized; in
          if builtins.pathExists (dir + "/default.nix") then dir else null;
          inherit checkMaterialization;
        });

        project = final.haskell-nix.cabalProject' ({ lib, pkgs, ... }: {
          name = "hswm-dev";

          modules = [
            hsNixModules.hs-bindgen
            hsNixModules.main
            hsNixModules.project
          ];

          # important three to fix to avoid materialized drift!
          compiler-nix-name = "ghc9141llvm";
          index-state = "2026-06-04T23:15:22Z";
          evalPackages = final.buildPackages;

          builderVersion = 2;
          #pkg-def-extras = [(_: { packages = { }; })];
          #useLocalGhcLib = true;
          # Enable optimizations when building as nix derivations
          cabalProjectLocal = lib.mkAfter ''
            optimization: True
          '';
          # Work around haskell.nix not handling sources imported in
          # cabal.project
          src = pkgs.runCommand "src" { } ''
            cp -r --no-preserve=mode ${./.} $out
            cd $out
            while IFS=$'\n' read -r line; do
              if [[ $line = import:* ]]; then
                read -r _ uri <<< "$line"
                if [[ $uri != http://* ]] && [[ $uri != https://* ]]; then
                  cat "$uri"
                  continue
                fi
              fi
              echo "$line"
            done <./cabal.project >>cabal.project.new
            mv -v cabal.project.new cabal.project
            rm -f project-cabal/*.cabal
          '';

          flake = {
            variants.builderV1.builderVersion = lib.mkForce 1;
            variants.builderV1.flake.packages = _: { };
          };

          shell = {
            name = "default-shell";
            packages = ps: [
              ps.hswm
              ps.hswm-bindings
              ps.pixman-bindings
              ps.xkbcommon-bindings
              ps.waybar-cffi-hs
            ];
            withHoogle = true;
            withHaddock = true;
            tools.hpack = { };
            # broken on v2-builder
            nativeBuildInputs = [ final.only-cabal.hsPkgs.cabal-install.components.exes.cabal ];
            allToolDeps = true;
          };

          materialized = let dir = ./. + materializedLocations.project.materialized; in
          if builtins.pathExists (dir + "/default.nix") then dir else null;
          inherit checkMaterialization;
        });

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

        inputs.haskellNix.overlay

        # the overlay import is broken upstream; inputs.hs-bindgen.overlays.default
        (import "${inputs.hs-bindgen}/nix/overlay" {
          inherit lib;
          inherit (inputs.hs-bindgen.inputs) libclang-bindings-src
            doxygen-parser-src c-expr-src;
        }).default

        projectOverlay

      ];

      inherit (pkgs.haskell-nix) haskellLib;
      inherit (pkgs) project;

      projectFlake = project.flake { };

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

      apps = {
        hoogle-all = mkApp {
          name = "hoogle-all";
          drv = pkgs.writeShellApplication {
            name = "hoogle-all";
            runtimeInputs = [ self'.devShells.ghc-pkg-shell ];
            text = ''hoogle server --local'';
          };
        };

        # Note: needs to run with checkMaterialization = false
        materialized-do = mkApp {
          name = "materialized-do";
          drv = pkgs.writeShellApplication {
            name = "materialized-do";
            text = ''
              set -x
              ${lib.concatMapStringsSep "\n\n" ({ attr, materialized }: ''
              ${self'.legacyPackages.${attr}.plan-nix.passthru.generateMaterialized} ${materialized}
              '') (lib.attrValues materializedLocations)}
            '';
          };
        };
      };

      packages = projectFlake.packages // {

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
          pathsToLink = [ "/bin" "/lib" ];
        };
      };

      devShells =
        let adjustedShellFor =
              project: args:
              (project.shellFor (args)).overrideAttrs (oa: {
                shellHook = ''
                  ${defaultShellHook (if args ? name then args.name else null)}
                  ${oa.shellHook}
                '';
              });

            adjustShell = key: drv: drv.overrideAttrs (oa: {
              shellHook = ''
                ${defaultShellHook key}
                # Don't exit the shell if the sync fails. The tool to fix it
                # is inside the shell.
                ${lib.replaceString "haskell-nix-cabal-store-sync || return 1" "haskell-nix-cabal-store-sync || true" oa.shellHook}
              '';
            });

            # For haskell.nix v2 builder (writes to ~/.cabal by default)
            defaultShellHook = key: ''
              export CABAL_DIR=${if key == null then "$HOME/.local/state/cabal" else "$HOME/.local/state/cabal/${key}"}
            '';

            projectNames = [
              "hs-bindgen-hooks"
              "hswm"
              "hswm-bindings"
              "pixman-bindings"
              "waybar-cffi-hs"
              "xkbcommon-bindings"
            ];

            perProject = name: adjustedShellFor project {
              name = "hswm-pkg-${name}";
              packages = lib.mkForce (ps: [ ps.${name} ]);
            };

            # Note: v2 shell ignores exactDeps, additional, components
            combinedShellFor = projectShells:
              adjustedShellFor project {
                name = "hswm-all";
                packages = lib.mkForce (_: []);
                inputsFrom = lib.map (drv: drv.overrideAttrs { shellHook = ""; }) projectShells;
                allToolDeps = lib.mkForce false;
                exposePackagesVia = "ghc-pkg";
                withHoogle = true;
                shellHook = ''unset PROMPT_COMMAND'';
              };

        in
        lib.mapAttrs (_: adjustShell "hswm-default") projectFlake.devShells //
        lib.genAttrs projectNames perProject //
        {
          ghc-pkg-shell = combinedShellFor (lib.map (name: self'.devShells.${name}) projectNames);
        };

      legacyPackages = {
        inherit haskellLib;
        inherit (pkgs) haskell-nix river riverDebug;
        # haskell.nix projects
        inherit (pkgs) /*hls*/ only-cabal;
        inherit project projectFlake;
      };
    };
  };
}

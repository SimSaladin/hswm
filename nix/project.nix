{ inputs, lib, project-lib, haskellNixModules, checkMaterialization, ... }:

let
  inherit (inputs.flake-utils.lib) mkApp;

  projectNames = [
    "hs-bindgen-hooks"
    "hswm"
    "hswm-bindings"
    "pixman-bindings"
    "waybar-cffi-hs"
    "xkbcommon-bindings"
  ];

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
  };

  # Note: v2 shell ignores exactDeps, additional, components
  combinedShellFor =
    project:
    { projectShells
    , ...
    }@args:
    adjustedShellFor project ({
      name = "hswm-all";
      packages = lib.mkForce (_: [ ]);
      inputsFrom = lib.map (drv: drv.overrideAttrs { shellHook = ""; }) projectShells
        ++ args.inputsFrom or [ ];
      allToolDeps = lib.mkForce false;
      exposePackagesVia = "ghc-pkg";
      withHoogle = true;
      shellHook = ''unset PROMPT_COMMAND'';
    } // removeAttrs args [ "projectShells" "inputsFrom" ]);

  # For haskell.nix v2 builder (writes to ~/.cabal by default)
  defaultShellHook = key: ''
    export CABAL_DIR=${
      if key == null then "$HOME/.local/state/cabal"
                     else "$HOME/.local/state/cabal/${key}"}
  '';

  mkPerProjectShell = project: args@{ name, ... }:
    adjustedShellFor project ({
      name = "package:${name}";
      packages = lib.mkForce (ps: [ ps.${name} ]);
    } // removeAttrs args [ "name" ]);

  adjustedShellFor = project: args@{ ... }:
    (project.shellFor args).overrideAttrs (oa: {
      shellHook = ''
        ${defaultShellHook (if args ? name then args.name else null)}
        ${oa.shellHook}
      '';
    });
  adjustShell = name: drv:
    drv.overrideAttrs (oa: {
      shellHook = ''
        ${defaultShellHook name}
        # Don't exit the shell if the sync fails. The tool to fix it
        # is inside the shell.
        ${lib.replaceString
            "haskell-nix-cabal-store-sync || return 1"
            "haskell-nix-cabal-store-sync || true"
            oa.shellHook}
      '';
    });
in

{
  flake.overlays.project = final: _: {

    project =
      let
        inherit (final) haskell-nix project-lib only-cabal;
      in
      haskell-nix.cabalProject' ({ lib, ... }: {
        name = "hswm-dev";
        src = project-lib.fixCabalProjectImports {
          src = ../.;
        };
        modules = [
          haskellNixModules.hs-bindgen
          hsNixModules.main
          hsNixModules.project
        ];
        # important three to fix to avoid materialized drift!
        compiler-nix-name = "ghc9141llvm";
        index-state = "2026-06-04T23:15:22Z";
        evalPackages = final.buildPackages;
        # using the V2 builder
        builderVersion = 2;
        # Enable optimizations when building as nix derivations
        cabalProjectLocal = lib.mkAfter ''
          optimization: True
        '';
        # materialization
        inherit checkMaterialization;
        materialized = project-lib.materializedFor "project";

        # default shell
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
          nativeBuildInputs = [ only-cabal.hsPkgs.cabal-install.components.exes.cabal ];
          allToolDeps = true;
        };

        flake = {
          variants.ghc9141 = {
            compiler-nix-name = lib.mkForce "ghc9141";
          };
          variants.builderV1 = {
            builderVersion = lib.mkForce 1;
            flake.packages = _: { };
          };
        };
      });

  };

  perSystem = { self', lib, project-lib, config, pkgs, ... }:
    let projectFlake = pkgs.project.flake { }; in
    lib.recursiveUpdate
      {
        inherit (pkgs.project.flake') apps checks packages;

        devShells = lib.mapAttrs (_: adjustShell "hswm-default") projectFlake.devShells;
      }
      {
        apps.hoogle-all = mkApp {
          name = "hoogle-all";
          drv = pkgs.writeShellApplication {
            name = "hoogle-all";
            runtimeInputs = [ self'.devShells.ghc-pkg-shell ];
            text = ''hoogle server --local'';
          };
        };

        # Note: needs to run with checkMaterialization = false
        apps.materialized-do2 = mkApp {
          name = "materialized-do";
          drv = pkgs.writeShellApplication {
            name = "materialized-do";
            text = ''
              set -x
              ${project-lib.materialized-do {
                project = pkgs.project;
                key = "project";
              }}
              ${project-lib.materialized-do {
                project = pkgs.only-cabal;
                key = "cabal-plan-nix";
              }}
            '';
          };
        };

        packages.default = pkgs.buildEnv {
          pname = "hswm-full";
          version = "0.1.0";
          paths = [
            config.packages."hswm:exe:hswm"
            config.packages."hswm:exe:hswmctl"
            config.packages."waybar-cffi-hs:flib:waybarhaskellplugin"
          ];
          pathsToLink = [ "/bin" "/lib" ];
        };

        devShells =

          # Generate per-project shell environments
          lib.genAttrs' projectNames
            (name: {
              name = "package:" + name;
              value = mkPerProjectShell pkgs.project { inherit name; };
            })
          //
          {
            # A combined shell
            ghc-pkg-shell = combinedShellFor pkgs.project {
              projectShells = lib.map (name: self'.devShells.${name}) projectNames;
            };
          };

        legacyPackages = {
          inherit (pkgs) project;
          inherit projectFlake;
          projectPackage = self'.packages.default;
        };
      };
}

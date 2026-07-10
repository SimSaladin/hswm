{ inputs, lib, haskellNixModules, cabal-master-hnix, ... }:

let
  inherit (inputs.flake-utils.lib) mkApp;

  hsNixModule = { config, pkgs, ... }: {
    #reinstallableLibGhc = true;
    packages = {
      hswm = {
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
      hswm-bindings.components.library.build-tools = [
        pkgs.wayland-scanner
      ];
      haskell-wayland-core.components.library.build-tools = [
        pkgs.wayland-scanner
      ];
    };
  };


  thisProject = { cabalDefaults, haskell-nix }:
    haskell-nix.cabalProject' ({ lib, pkgs, ... }: cabalDefaults // {
      name = "hswm";
      src = pkgs.project-lib.fixCabalProjectImports {
        src = ../.;
      };

      modules = [
        haskellNixModules.hs-bindgen
        cabal-master-hnix
        hsNixModule
      ];

      # Enable optimizations when building as nix derivations
      cabalProjectLocal = lib.mkAfter ''
        optimization: True
        package *
           documentation: True
      '';

      materialized = pkgs.project-lib.materializedFor "project";

      # default shell
      shell = {
        name = "hswm";
        packages = ps: [
          ps.hswm
          ps.hswm-bindings
          ps.pixman-bindings
          ps.xkbcommon-bindings
          ps.waybar-cffi-hs
        ];
        withHaddock = true;
        withHoogle = true;
        tools.hpack = { };
        allToolDeps = true;
        nativeBuildInputs = [
          # Use the newer cabal-install binary
          pkgs.cabal-master.hsPkgs.cabal-install.components.exes.cabal
        ];
      };

      flake = {
        # Using haskell.nix V1 builder
        variants.BuilderV1 = {
          builderVersion = lib.mkForce 1;
          flake.packages = _: { }; # hide package outputs
        };
        # Using a GHC without LLVM support
        variants.NoLLVM = {
          compiler-nix-name = lib.mkForce "ghc9141";
          flake.packages = _: { }; # hide package outputs
        };
      };
    });

  projectNames = [
    "hs-bindgen-hooks"
    "hswm"
    "hswm-bindings"
    "pixman-bindings"
    "waybar-cffi-hs"
    "xkbcommon-bindings"
  ];

  # Shell using exposePackagesVia = "ghc-pkg" for use with eg. hoogle
  # Note: v2 shell ignores exactDeps, additional, components
  mkGhcPkgShell =
    { project
    , projectShells ? [ ]
    , ...
    }@args:
    adjustedShellFor project ({
      name = "hswm-ghc-pkg";
      exposePackagesVia = "ghc-pkg";
      packages = lib.mkForce (_: [ ]);
      inputsFrom = lib.map (drv: drv.overrideAttrs { shellHook = ""; }) projectShells
        ++ args.inputsFrom or [ ];
      allToolDeps = lib.mkForce false;
      withHoogle = true;
      shellHook = ''unset PROMPT_COMMAND'';
    } // removeAttrs args [ "project" "projectShells" "inputsFrom" ]);

  # Generate per-project shell environments
  perPackageShellsFor = project:
    lib.genAttrs' projectNames
      (name: lib.nameValuePair "package:${name}" (mkPerPackageShell {
        inherit name project;
      }));

  mkPerPackageShell = args@{ name, project, ... }:
    adjustedShellFor project ({
      name = "package:${name}";
      packages = lib.mkForce (ps: [ ps.${name} ]);
      exposePackagesVia = "ghc-pkg";
      withHoogle = true;
    } // removeAttrs args [ "name" "project" ]);

  adjustedShellFor = project: args:
    adjustShell (if args ? name then args.name else null) (project.shellFor args);

  # For haskell.nix v2 builder (writes to ~/.cabal by default)
  adjustShell = key: drv:
    drv.overrideAttrs (oa: {
      shellHook = ''
        export CABAL_DIR="${
          if key == null then "$HOME/.local/state/cabal"
                         else "$HOME/.local/state/cabal/${key}"}"

        # Don't exit the shell if the sync fails. The tool to fix it
        # is inside the shell.
        ${lib.replaceString
            "haskell-nix-cabal-store-sync || return 1"
            "haskell-nix-cabal-store-sync || true"
            oa.shellHook}
      '';
    });

  mkMaterializedDoApp = { pkgs, project-lib, ... }:
    let
      projects = [
        { project = pkgs.cabal-master; key = "cabal-plan-nix"; }
        { project = pkgs.project; key = "project"; }
      ];
    in
    mkApp {
      name = "materialized-do";
      drv = pkgs.writeShellApplication {
        name = "materialized-do";
        text = ''
          generate(){
            set -x
            ${project-lib.materialized-do-all {} projects}
          }
          calculateHash() {
            ${project-lib.materialized-do-all { what = "calculateMaterializedSha"; } projects}
          }
          ''
          #update() {
          #  set -x
          #  ${project-lib.materialized-do-all { what = "updateMaterialized"; } projects}
          #}
          +
          ''
          case ''${1-} in
            "" | generate )
              generate
              ;;
            hash )
              calculateHash
              ;;
            # update ) update ;;
            * )
              echo "usage: $0 [ generate | hash ]" >&2
              exit 2
              ;;
          esac
        '';
      };
    };
in

{
  flake.overlays.project = final: _: {
    project = thisProject {
      inherit (final) cabalDefaults haskell-nix;
    };
  };

  perSystem = { lib, config, pkgs, project-lib, ... }:
    let
      projectFlake = pkgs.project.flake { };
    in
    lib.recursiveUpdate
      {
        inherit (projectFlake) apps checks packages;
        devShells = lib.mapAttrs (_: adjustShell "hswm-default") projectFlake.devShells;
      }
      {
        apps = {
          # Note: needs to run with checkMaterialization = false
          materialized-do = mkMaterializedDoApp {
            inherit pkgs project-lib;
          };

          hoogle = mkApp {
            name = "hoogle";
            drv = pkgs.writeShellApplication {
              name = "hoogle";
              runtimeInputs = [ config.devShells."default:ghc-pkg" ];
              text = ''
                # shellcheck disable=SC1091
                source ${config.devShells."default:ghc-pkg".shellHook}
                if [[ $# -eq 0 ]]; then
                  set -- server --local
                fi

                hoogle generate --local

                hoogle "$@"
              '';
            };
          };
        };

        packages.default = pkgs.buildEnv {
          pname = "hswm";
          version = config.packages."hswm:lib:hswm".version;
          paths = [
            config.packages."hswm:exe:hswm"
            config.packages."hswm:exe:hswmctl"
            config.packages."waybar-cffi-hs:flib:waybarhaskellplugin"
          ];
          pathsToLink = [ "/bin" "/lib" ];
        };

        devShells =
          let
            pkgShells = perPackageShellsFor pkgs.project;
          in
          pkgShells // {
            "default:ghc-pkg" = mkGhcPkgShell {
              inherit (pkgs) project;
              projectShells = lib.attrValues pkgShells;
            };
          };

        legacyPackages = {
          inherit (pkgs) project;
        };
      };
}

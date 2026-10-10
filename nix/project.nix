{ inputs, lib, haskellNixModules, cabal-master-hnix, ... }:

let
  inherit (inputs.flake-utils.lib) mkApp;

  thisProject = { lib, config, pkgs, evalPackages, ... }: {
    imports = [
      projectSetup
    ];
    modules = [
      cabal-master-hnix
      haskellNixModules.hs-bindgen
      hsNixModule
    ];
    name = "hswm";
    src = pkgs.project-lib.fixCabalProjectImports {
      src = ../.;
    };
    cabalProjectLocal = lib.mkAfter (
      # ''optimization: True'' +
      ''package *
            documentation: True
      '');
    materialized = pkgs.project-lib.materializedFor "project";
    #nix-tools = pkgs.my-nix-tools; # Using Cabal >= 3.18 tools

    shell.name = config.name;
    shell.allToolDeps = true;
    shell.tools.hpack = { };
    shell.withHaddock = true;
    shell.withHoogle = true;
    shell.nativeBuildInputs = [
      # Use a newer cabal-install binary
      pkgs.cabal_3_18
      config.hsPkgs.hs-bindgen.components.exes.hs-bindgen-cli
    ];

    flake = {
      # Using the haskell.nix V1 builder
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
  };

  projectNames = [
    "hs-bindgen-hooks"
    "hswm"
    "hswm-bindings"
    "pixman-bindings"
    "waybar-cffi-hs"
    "xkbcommon-bindings"
  ];

  projectSetup = { lib, config, pkgs, ... }:
  let
    haskellLib = pkgs.haskell-nix.haskellLib;
    myHaskellPackages = haskellLib.selectProjectPackages config.hsPkgs;
  in {
    #shell.packages = ps: lib.attrValues (haskellLib.selectProjectPackages ps);
    #shell.buildInputs = [ myHaskellPackages."haskell-wayland-core-0.1.0.0-inplace".components.library ];
  };

  hsNixModule = { config, pkgs, ... }:
  {
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
        components.exes.hswmctl.build-tools = [
          config.ghc.package.llvmPackages.llvm
          config.ghc.package.llvmPackages.libclang
        ];
      };
      hswm-bindings.components.library.build-tools = [ pkgs.wayland-scanner ];
      haskell-wayland-core.components.library.build-tools = [ pkgs.wayland-scanner ];
    };
  };

  # Shell using exposePackagesVia = "ghc-pkg" for use with eg. hoogle
  # Note: v2 shell ignores exactDeps, additional, components
  mkGhcPkgShell = { project , projectShells ? [ ] , ... }@args:
    adjustedShellFor project ({
      name = "hswm-ghc-pkg";
      exposePackagesVia = "ghc-pkg";
      packages = lib.mkForce (_: [ ]);
      inputsFrom = lib.map (drv: drv.overrideAttrs { shellHook = ""; }) projectShells
        ++ args.inputsFrom or [ ];
      allToolDeps = lib.mkForce false;
      withHoogle = true;
      shellHook = "unset PROMPT_COMMAND";
    } // removeAttrs args [ "project" "projectShells" "inputsFrom" ]);

  # A shell per project/package
  perPackageShellsFor = project:
    lib.genAttrs' projectNames
      (name: lib.nameValuePair "package:${name}" (
        adjustedShellFor project {
          name = "package:${name}";
          packages = lib.mkForce (ps: [ ps.${name} ]);
          exposePackagesVia = "ghc-pkg";
          withHoogle = true;
        }
      ));

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

  mkMaterializedDoApp = { projects, pkgs, project-lib, ... }:
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
          case ''${1-} in
            "" | generate ) generate ;;
            hash          ) calculateHash ;;
            *             ) echo "usage: $0 [ generate | hash ]" >&2; exit 2 ;;
          esac
        '';
      };
    };
in

{
  flake.overlays.project = final: _: {
    project = final.haskell-nix.cabalProject' [
      final.cabalDefaults
      thisProject
    ];
  };

  perSystem = { lib, config, pkgs, project-lib, ... }:
    let
      project = pkgs.project;
      projectFlake = project.flake { };
    in
    {
      checks = projectFlake.checks;

      apps = projectFlake.apps // {
        # Note: needs to run with checkMaterialization = false
        materialized-do = mkMaterializedDoApp {
          projects = [
            { project = project; key = "project"; }
            { project = pkgs.cabal-master; key = "cabal-plan-nix"; }
          ];
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

      packages = projectFlake.packages // {

        default = pkgs.buildEnv {
          pname = "hswm";
          version = config.packages."hswm:lib:hswm".version;
          paths = [
            config.packages."hswm:exe:hswm"
            config.packages."hswm:exe:hswmctl"
            config.packages."waybar-cffi-hs:flib:waybarhaskellplugin"
          ];
          pathsToLink = [ "/bin" "/lib" ];
        };
      };

      devShells =
        # XXX clean this up
        let
          projectShells = lib.mapAttrs (_: adjustShell "hswm-default") projectFlake.devShells;
          pkgShells = perPackageShellsFor pkgs.project;
        in
        projectShells // pkgShells // {
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

{
  self,
  inputs,
  lib,
  withSystem,
  haskellNixModules,
  cabal-defaults,
  ...
}:

let
  inherit (inputs.flake-utils.lib) mkApp;

  thisProject =
    {
      lib,
      config,
      pkgs,
      ...
    }:
    {
      imports = [
        cabal-defaults
      ];
      modules = [
        haskellNixModules.hs-bindgen
        hsNixModule
      ];
      name = "hswm";
      src = pkgs.project-lib.fixCabalProjectImports {
        src = ../.;
      };
      cabalProjectLocal = lib.mkAfter (
        # ''optimization: True'' +
        ''
          package *
                      documentation: True
        ''
      );
      materialized = pkgs.project-lib.materializedFor "project";
      #nix-tools = pkgs.my-nix-tools; # Using Cabal >= 3.18 tools

      shell = {
        name = config.name;
        tools.hpack = { };
        allToolDeps = true;
        withHaddock = true;
        withHoogle = true;
        nativeBuildInputs = [
          # Use a newer cabal-install binary
          pkgs.cabal_3_18
          config.hsPkgs.hs-bindgen.components.exes.hs-bindgen-cli
        ];
        inputsFrom = [
          (withSystem pkgs.stdenv.hostPlatform.system ({ config, ... }: config.pre-commit.devShell))
        ];
      };

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

  hsNixModule =
    { config, pkgs, ... }:
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
  mkGhcPkgShell =
    {
      project,
      projectShells ? [ ],
      ...
    }@args:
    adjustedShellFor project (
      {
        name = "hswm-ghc-pkg";
        exposePackagesVia = "ghc-pkg";
        packages = lib.mkForce (_: [ ]);
        inputsFrom =
          lib.map (drv: drv.overrideAttrs { shellHook = ""; }) projectShells ++ args.inputsFrom or [ ];
        allToolDeps = lib.mkForce false;
        withHoogle = true;
        shellHook = "unset PROMPT_COMMAND";
      }
      // removeAttrs args [
        "project"
        "projectShells"
        "inputsFrom"
      ]
    );

  # A shell per project/package
  perPackageShellsFor =
    project:
    lib.genAttrs' projectNames (
      name:
      lib.nameValuePair "package:${name}" (
        adjustedShellFor project {
          name = "package:${name}";
          packages = lib.mkForce (ps: [ ps.${name} ]);
          exposePackagesVia = "ghc-pkg";
          withHoogle = true;
        }
      )
    );

  adjustedShellFor =
    project: args: adjustShell (if args ? name then args.name else null) (project.shellFor args);

  # For haskell.nix v2 builder (writes to ~/.cabal by default)
  adjustShell =
    key: drv:
    drv.overrideAttrs (oa: {
      shellHook = ''
        export CABAL_DIR="${
          if key == null then "$HOME/.local/state/cabal" else "$HOME/.local/state/cabal/${key}"
        }"

        # Don't exit the shell if the sync fails. The tool to fix it
        # is inside the shell.
        ${lib.replaceString "haskell-nix-cabal-store-sync || return 1"
          "haskell-nix-cabal-store-sync || true"
          oa.shellHook
        }
      '';
    });

  mkMaterializedDoApp =
    {
      projects,
      pkgs,
      project-lib,
      ...
    }:
    mkApp {
      name = "materialized-do";
      drv = pkgs.writeShellApplication {
        name = "materialized-do";
        text = ''
          generate(){
            set -x
            ${project-lib.materialized-do-all { } projects}
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

  customizations.perSystem =
    {
      lib,
      config,
      pkgs,
      project-lib,
      ...
    }:
    let
      project = pkgs.project;
      projectFlake = project.flake';
      projects = [
        {
          project = project;
          key = "project";
        }
      ];
    in
    {
      apps = {
        # Note: needs to run with checkMaterialization = false
        materialized-do = mkMaterializedDoApp { inherit projects pkgs project-lib; };

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

      packages = {
        with-hoogle = project.ghcWithHoogle (ps: [ ps.hswm ]);
        default = pkgs.buildEnv {
          pname = "hswm-env";
          version = config.packages."hswm:lib:hswm".version;
          paths = [
            config.packages."hswm:exe:hswm"
            config.packages."hswm:exe:hswmctl"
            config.packages."waybar-cffi-hs:flib:waybarhaskellplugin"
          ];
          pathsToLink = [
            "/bin"
            "/lib"
          ];
        };
      };

      devShells =
        let
          projectShells = lib.mapAttrs (k: adjustShell "hswm-${k}") projectFlake.devShells;
          pkgShells = perPackageShellsFor pkgs.project;
        in

        lib.mapAttrs (_: lib.mkForce) projectShells
        // pkgShells
        // {
          project-pkgs = adjustedShellFor project {
            name = "project-pkgs";
            #exposePackagesVia = "ghc-pkg";
            packages = ps: [ ps.hswm ];
            withHoogle = true;
          };

          all = adjustedShellFor project ({
            name = "hswm-deps";
            #exposePackagesVia = "ghc-pkg";
            packages = lib.mkForce (_: [ ]);
            inputsFrom = lib.map (drv: drv.overrideAttrs { shellHook = ""; }) (lib.attrValues projectShells);
            withHoogle = true;
          });
        };
    };
in

{
  imports = [
    customizations
  ];

  perSystem =
    {
      lib,
      config,
      pkgs,
      project,
      project-lib,
      ...
    }:
    {
      _module.args.project = pkgs.project;
      inherit (project.flake')
        apps
        packages
        devShells
        checks
        ;
      legacyPackages = { inherit project; };
    };

  flake.overlays.project = final: _: {
    project = final.haskell-nix.cabalProject' [ thisProject ];
  };
}

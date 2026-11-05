{
  inputs,
  lib,
  withSystem,
  haskell-nix-hs-bindgen-module,
  cabal-defaults,
  ...
}:

let
  inherit (inputs.flake-utils.lib) mkApp;

  hswmProject =
    {
      lib,
      config,
      pkgs,
      ...
    }:
    {
      name = "hswm";
      src = pkgs.project-lib.fixCabalProjectImports {
        src = ../.;
      };
      imports = [
        cabal-defaults
      ];
      modules = [
        haskell-nix-hs-bindgen-module
        haskell-nix-hswm-module
      ];

      #compiler-nix-name = lib.mkForce "ghc9141";

      cabalProjectFreeze = builtins.readFile ../cabal.project.freeze;
      cabalProjectLocal = lib.mkAfter ''
        package *
            documentation: True
      '';

      materialized = pkgs.project-lib.materializedFor "project";

      ghcOverride =
        let
          drv = (config.compilerSelection pkgs.buildPackages).${config.compiler-nix-name};
          out' =
            pkgs.runCommand "ghc"
              {
                passthru = {
                  inherit (drv) llvmPackages version;
                };
              }
              ''
                cp -r --reflink=auto ${drv.out} $out
                find $out -name '*.copy' -exec sh -c 'chmod +w "$1"; chmod +w $(dirname "$1")' - {} \;
                find $out -name '*.copy' -exec ls -la {} \;
                find $out -name '*.copy' -delete
                substituteInPlace $out/bin/* \
                   --replace ${drv} $out
                chmod -R +w $out/lib/ghc-9.14.1/lib/package.conf.d
                $out/bin/ghc-pkg recache
              '';
        in
        out';
      #drv.overrideAttrs (oa: {
      #  postInstall = (oa.postInstall or "") +
      #  ''
      #    find $out -name '*.copy -delete
      #  '';
      #});

      shell = {
        inherit (config) name;
        tools.hpack = { };
        allToolDeps = true;
        #withHaddock = true;
        #withHoogle = true;
        nativeBuildInputs = [
          # Use a newer cabal-install binary
          pkgs.cabal_3_18_1_0
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
      };
    };

  haskell-nix-hswm-module =
    { config, pkgs, ... }:
    let
      inherit (config.ghc.package.llvmPackages) llvm libclang;
    in
    {
      packages = {
        hswm.components = {
          library.build-tools = [
            llvm
            libclang
          ];
          sublibs.prelude.build-tools = [
            llvm
            libclang
          ];
          sublibs.ipc-api.build-tools = [
            llvm
            libclang
          ];
          exes.hswm.build-tools = [
            llvm
            libclang
          ];
          exes.hswmctl.build-tools = [
            llvm
            libclang
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

  # Shell using exposePackagesVia = "ghc-pkg" for use with eg. hoogle
  # Note: v2 shell ignores exactDeps, additional, components
  # May want to build shell with exposePackagesVia = "ghc-pkg"

  # A shell per project/package
  perPackageShellsFor =
    project:
    let
      names = lib.pipe project.hsPkgs [
        (lib.filterAttrs (_: x: lib.isAttrs x && x.isLocal or false))
        (lib.mapAttrsToList (_: x: x.identifier.name))
        lib.unique
      ];
    in
    lib.genAttrs' names (
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

  adjustedShellFor = project: args: adjustShell (args.name or null) (project.shellFor args);

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
      project,
      project-lib,
      ...
    }:
    let
      projects = [
        {
          key = "project";
          inherit project;
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
          projectShells = lib.mapAttrs (k: adjustShell "hswm-${k}") project.flake'.devShells;
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

          all = adjustedShellFor project {
            name = "hswm-deps";
            packages = lib.mkForce (_: [ ]);
            inputsFrom = lib.map (drv: drv.overrideAttrs { shellHook = ""; }) (lib.attrValues projectShells);
            withHoogle = true;
          };
        };
    };
in

{
  imports = [
    customizations
  ];

  flake.overlays.project = final: _: {

    project = final.haskell-nix.cabalProject' [ hswmProject ];

  };

  perSystem =
    { pkgs, project, ... }:
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
}

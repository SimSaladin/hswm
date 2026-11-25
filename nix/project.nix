{
  inputs,
  lib,
  withSystem,
  haskell-nix-hs-bindgen-module,
  cabal-defaults,
  #mk-cabal,
  ...
}:

let
  inherit (inputs.flake-utils.lib) mkApp;

  fixGhcDocs =
    ghc:
    ghc.overrideAttrs (oa: {
      postInstall = oa.postInstall or "" + ''
        find $out -name '*.copy' -type f -exec sh -c 'chmod +w "$1"; chmod +w $(dirname "$1")' - {} \;
        find $out -name '*.copy' -type f -delete
        chmod -R +w $out/lib/*/lib/package.conf.d
        $out/bin/ghc-pkg recache
      '';
    });

  useLld =
    {
      config,
      pkgs,
      ...
    }:
    let
      ghc = (config.compilerSelection pkgs.buildPackages).${config.compiler-nix-name};
      ghcUseLdLld =
        oldGhc:
        let
          ghc = oldGhc.override {
            useLdLld = true;
            useLdGold = false;
            llvmPackages = pkgs.llvmPackages_23;
            extra-passthru = { };
            enableRelocatedStaticLibs = true; # XXX: should enable or not?
          };
          ghc2 = ghc.overrideAttrs (oa: {
            depsBuildTargetPropagated = oa.depsBuildTarget ++ [ ghc.llvmPackages.bintoolsNoLibc ];
            propagatedBuildInputs = oa.propagatedBuildInputs or [ ] ++ [ ghc.llvmPackages.bintoolsNoLibc ];
          });
        in
        ghc2;
      libc = ghc.llvmPackages.libc-full or ghc.llvmPackages.libunwind;
    in
    {
      #materialized = pkgs.project-lib.materializedFor "project";

      #cabalProjectLocal = lib.mkAfter ''
      #  package *
      #      ghc-options: -fPIC -fllvm -pgmc=clang -pgma=clang -pgml=clang -optl-fuse-ld=lld
      #      ghc-options: -optl-L${pkgs.gcc-unwrapped}/lib/gcc/x86_64-unknown-linux-gnu/16.2.0
      #      ghc-options: -optl-B${pkgs.gcc-unwrapped}/lib/gcc/x86_64-unknown-linux-gnu/16.2.0
      #      ghc-options: -optl-L${pkgs.gcc-unwrapped.libgcc}/lib
      #      ghc-options: -optl-B${pkgs.glibc.static}/lib
      #      ghc-options: -optl-L${pkgs.glibc.static}/lib
      #      ghc-options: -optl-B${libc}/lib
      #'';

      compilerSelection =
        p:
        p.haskell-nix.compiler
        // {
          ghc9141llvm-lld = ghcUseLdLld p.haskell-nix.compiler.ghc9141llvm;
          ghc9141llvm = ghcUseLdLld p.haskell-nix.compiler.ghc9141llvm;
        };

      shell = {
        packages = ps: [ ps.hswm ];
        buildInputs = [ libc ];
      };
    };

  hswmProject =
    {
      lib,
      config,
      pkgs,
      ...
    }:
    let
      ghc0 = (config.compilerSelection pkgs.buildPackages).${config.compiler-nix-name};
    in
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

      ghcOverride = fixGhcDocs ghc0;

      #cabalProjectFreeze = builtins.readFile ../cabal.project.freeze.ghc914;

      cabalProjectLocal = lib.mkAfter ''
        package *
            documentation: True
      '';

      shell = {
        inherit (config) name;
        tools.hpack = { };
        tools.cabal-install = { };
        exactDeps = true;
        allToolDeps = true;
        nativeBuildInputs = [
          config.hsPkgs.hs-bindgen.components.exes.hs-bindgen-cli
        ];
        buildInputs = [ ];
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
        variants.ghc912 = {
          compiler-nix-name = lib.mkForce "ghc912";
          ghcOverride = lib.mkForce null;
          cabalProjectFreeze = lib.mkForce ''
            constraints: boring +tagged,
                         any.transformers ==0.6.1.2,
                         any.transformers-base ==0.4.6.1,
                         transformers-base +orphaninstances,
                         any.transformers-compat ==0.8,
                         transformers-compat -five +five-three +generic-deriving +mtl
          '';
          shell = {
            tools.cabal-install = { };
            nativeBuildInputs = [
              #(mk-cabal {
              #  inherit pkgs;
              #  compiler-nix-name = "ghc912";
              #})
            ];
          };
          #flake.packages = _: { }; # hide package outputs
        };
      };
    };

  haskell-nix-hswm-module =
    { config, pkgs, ... }:
    let
      inherit (config.ghc.package.llvmPackages) llvm bintools libclang;
    in
    {
      keepGhc = true;
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
        haskell-wayland-core = {
          components.library.build-tools = [
            libclang
            bintools
            pkgs.wayland-scanner
          ];
        };
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

  makeProjectRuntime =
    {
      buildEnv,
      runCommand,
      installShellFiles,
      flakePkgs,
    }:
    buildEnv {
      pname = "hswm-env";
      version = flakePkgs."hswm:lib:hswm".version;
      paths = [
        flakePkgs."hswm:exe:hswm"
        flakePkgs."hswm:exe:hswmctl"
        flakePkgs."waybar-cffi-hs:flib:waybarhaskellplugin"
        (runCommand "bash-completion"
          {
            nativeBuildInputs = [
              installShellFiles
              flakePkgs."hswm:exe:hswmctl"
            ];
          }
          ''
            installShellCompletion --cmd hswmctl --bash <(hswmctl --bash-completion-script hswmctl)
          ''
        )
      ];
      pathsToLink = [
        "/bin"
        "/lib"
        "/share"
      ];
    };

  modifyShells =
    project: shells:
    let
      projectShells = lib.mapAttrs (k: adjustShell "hswm-${k}") shells;
      pkgShells = perPackageShellsFor project;
    in
    projectShells
    // pkgShells
    // {
      project-pkgs = adjustedShellFor project {
        name = "project-pkgs";
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

  modifyProject =
    project:
    project
    // {
      projectVariants = lib.mapAttrs (_: modifyProject) project.projectVariants;
      flake' = project.flake' // {
        devShells = modifyShells project project.flake'.devShells;
        packages = project.flake'.packages // {
          default = project.pkgs.callPackage makeProjectRuntime {
            flakePkgs = project.flake'.packages;
          };
        };
        apps = project.flake'.apps // {
          # Note: needs to run with checkMaterialization = false
          materialized-do = mkMaterializedDoApp {
            inherit (project) pkgs;
            inherit (project.pkgs) project-lib;
            projects = [
              {
                key = "project";
                inherit project;
              }
            ];
          };
        };
      };
    };
in

{
  flake.overlays.project = final: _: {
    project-lld = final.haskell-nix.cabalProject' [
      hswmProject
      useLld
    ];
    project = modifyProject (final.haskell-nix.cabalProject' [ hswmProject ]);
  };

  perSystem =
    {
      pkgs,
      pkgs-nixos,
      project,
      project-lld,
      ...
    }:
    {
      _module.args.project = pkgs.project;
      _module.args.project-lld = pkgs-nixos.project-lld;

      inherit (project.flake')
        apps
        packages
        checks
        devShells
        ;

      legacyPackages = {
        inherit project project-lld;
      };
    };
}

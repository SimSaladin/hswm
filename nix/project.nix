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
            #postInstall = oa.postInstall or "" + ''
            #  find $out -name '*.copy' -exec sh -c 'chmod +w "$1"; chmod +w $(dirname "$1")' - {} \;
            #  find $out -name '*.copy' -exec ls -la {} \;
            #  find $out -name '*.copy' -delete
            #  chmod -R +w $out/lib/ghc-9.14.1/lib/package.conf.d
            #  $out/bin/ghc-pkg recache
            #'';
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

      #cabalProjectFreeze = lib.mkForce ''
      #  constraints: alex installed
      #'';

      shell = {
        packages = ps: [ ps.hswm ];
        buildInputs = [ libc ];
        exactDeps = lib.mkForce false;
        allToolDeps = lib.mkForce false;
      };
    };

  hswmProject =
    {
      lib,
      config,
      pkgs,
      ...
    }:
    #let ghc = (config.compilerSelection pkgs.buildPackages).${config.compiler-nix-name}; in
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
        #withHaddock = true;
        #withHoogle = true;
        nativeBuildInputs = [
          # Use a newer cabal-install binary
          #pkgs.cabal_3_18_1_0
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
              #cabal-3_18-912 =
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

  customizations.perSystem =
    {
      lib,
      config,
      pkgs,
      project,
      project-lld,
      project-lib,
      ...
    }:
    let
      projects = [
        {
          key = "project";
          project = project-lld;
        }
      ];
    in
    {
      apps = {
        # Note: needs to run with checkMaterialization = false
        materialized-do = mkMaterializedDoApp {
          inherit pkgs project-lib projects;
        };
      };

      packages = {
        default = pkgs.callPackage makeProjectRuntime {
          flakePkgs = config.packages;
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
  imports = [ customizations ];

  flake.overlays.project = final: _: {
    project-lld = final.haskell-nix.cabalProject' [
      hswmProject
      useLld
    ];
    project = final.haskell-nix.cabalProject' [ hswmProject ];
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
        devShells
        checks
        ;

      legacyPackages = {
        inherit project project-lld;
      };
    };
}

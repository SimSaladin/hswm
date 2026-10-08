{ lib, inputs, checkMaterialization, ... }:

let
  cabalDefaults = {
    inherit checkMaterialization;
    # important three to fix to avoid materialized drift!
    compiler-nix-name = "ghc9141llvm";
    # keep in sync with cabal.project
    index-state = "2026-09-29T22:54:10Z";
    # using the V2 builder by default
    builderVersion = 2;
  };

  # XXX: haskell.nix nix-tools built with Cabal 3.18 libraries
  cabal_3_18-nix-tools = { lib, ... }: {
    src = lib.mkForce (builtins.toPath inputs.nix-tools);
    inherit (cabalDefaults) compiler-nix-name index-state;
    cabalProjectLocal = ''
      index-state: ${cabalDefaults.index-state}
      constraints: cabal-install    >=3.17
      constraints: Cabal-syntax     >=3.18
      constraints: extra            >=1.8.1
      constraints: algebraic-graphs >=0.8
      constraints: cabal2nix        >=2.21.2
      source-repository-package
         type: git
         location: https://github.com/haskell-nix/hnix-store
         tag: b7492a750ec0973fc7ea59fd8ba5ea2d1a354de1
         subdir:
           hnix-store-aterm
           hnix-store-core
           hnix-store-nar
           hnix-store-db
           hnix-store-json
           hnix-store-readonly
           hnix-store-remote
           hnix-store-tests
         --sha256: sha256-MUiMeuM29HpqQa3fJrSYX4sgGUWunqc8QOANHk6vJHk=
      extra-packages: dependent-sum, hnix-store-nar
      constraints: hnix-store-core >=0.8.0.0
      allow-newer: hnix:*
      allow-newer: dependent-sum-template:*
      allow-newer: *:persistent
      allow-newer: *:template-haskell
      allow-newer: *:extra
      allow-newer: *:algebraic-graphs
      allow-newer: *:cabal-install
      allow-newer: *:Cabal
      allow-newer: *:Cabal-syntax
      allow-newer: *:cabal-install-solver
      allow-newer: *:base
      allow-newer: *:containers
      allow-newer: *:hashable
      allow-newer: *:cabal2nix
    '';
    modules = [
      ({ config, pkgs, ... }: {
        packages.cabal-install.patches = lib.mkForce [
          "${inputs.nix-tools}/cabal-install-patches/installed-package-id-os-override.patch"
        ];
        # hnix HEAD + patched
        # Partial PR: https://github.com/haskell-nix/hnix/pull/1117
        packages.hnix = rec {
          src = pkgs.fetchzip {
            url = "https://github.com/SimSaladin/hnix/archive/4c981601e67e0b7c50d37a560e7b01d9ffc512b6.zip";
            hash = "sha256-efLc97xeKEYZ9j7J2M/Sv9DQu3ZfQbXgDghK39NXYuE=";
          };
          package-description-override = lib.mkForce (builtins.readFile (src + "/hnix.cabal"));
          components.library.depends = [
            config.hsPkgs.dependent-sum
            config.hsPkgs.hnix-store-nar
          ];
        };
        # hnix-store-json HEAD
        packages.hnix-store-json.postUnpack = ''
          rm $sourceRoot/{upstream-libstore-data,upstream-libutil-data}
          cp -r ${pkgs.nixVersions.latest.src}/src/libstore-tests/data $sourceRoot/upstream-libstore-data
          cp -r ${pkgs.nixVersions.latest.src}/src/libutil-tests/data $sourceRoot/upstream-libutil-data
        '';
        # crypton-2.1.7
        packages.crypton = rec {
          package.identifier.version = lib.mkForce "2.1.7";
          src = pkgs.fetchzip {
            url = "https://hackage.haskell.org/package/crypton-2.1.7/crypton-2.1.7.tar.gz";
            hash = "sha256-mKWBG9HtZ8hLlSVbCqxBn8Kr4ZGxM2aFDiPEWuG0mFM=";
          };
          package-description-override = lib.mkForce (builtins.readFile (src + "/crypton.cabal"));
        };
      })
    ];
  };

  overrideNixTools = haskell-nix: args: haskell-nix // rec {
    nix-tools-unchecked = haskell-nix.nix-tools-set args;
    nix-tools = haskell-nix.nix-tools-set { nix-tools = nix-tools-unchecked; };
    nix-tools-set = args1: haskell-nix.nix-tools-set (lib.composeExtensions args args1);
    nix-tools-eval-on-linux = haskell-nix.nix-tools-set (lib.composeExtensions args { evalSystem = "x86_64-linux"; });
  };

  hsNixModule = { lib, config, ... }: {
    # workaround issue around hsc2hs and process override
    #packages = lib.genAttrs [
    #  "filelock"
    #  "unix-time"
    #  "network"
    #  "haskell-gi-base"
    #  "zlib"
    #] (_: {
    #  components.library.depends = [ config.hsPkgs.process ];
    #});
  };
in
{
  _module.args.cabal-master-hnix = hsNixModule;

  perSystem = { pkgs, ... }: {
    legacyPackages = { };
  };

  flake.overlays.cabal-master = final: prev: {

    cabalDefaults = cabalDefaults // {
      evalPackages = final.buildPackages;
    };

    # Alternative way of building newer cabal
    #cabal-master = final.haskell-nix.cabalProject' ({ lib, ... }:
    #  final.cabalDefaults // {
    #    name = "cabal-master";
    #    src = ../project-cabal;
    #    cabalProjectFileName = "cabal-3.17.cabal";
    #    # builder v2 fails with:
    #    # > cp: cannot stat '/nix/store/vgh1nniw5b7bdq5cf7pqjbppcdha4n1a-cabal-bc27d17/cabal-install/./tests/fixtures/project-root/cabal.project.symlink.broken': No such file or directory
    #    builderVersion = 1;
    #    materialized = final.project-lib.materializedFor "cabal-plan-nix";
    #  });

    # Cabal 3.18
    nix-tools-cabal_3_18 = final.haskell-nix.nix-tools-set cabal_3_18-nix-tools;
    cabal_3_18 = final.nix-tools-cabal_3_18.exes.cabal;
    #haskell-nix = overrideNixTools prev.haskell-nix cabal_3_18-nix-tools;
  };
}

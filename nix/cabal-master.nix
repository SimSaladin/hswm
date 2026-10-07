{ inputs, checkMaterialization, ... }:

let
  overlay = final: _: {

    cabalDefaults = {
      inherit checkMaterialization;
      # important three to fix to avoid materialized drift!
      compiler-nix-name = "ghc9141llvm";
      # keep in sync with cabal.project
      index-state = "2026-09-29T22:54:10Z";
      evalPackages = final.buildPackages;
      # using the V2 builder by default
      builderVersion = 2;
    };

    cabal-master = final.haskell-nix.cabalProject' ({ lib, ... }:
      final.cabalDefaults // {
        name = "cabal-master";
        src = ../project-cabal;
        cabalProjectFileName = "cabal-3.17.cabal";
        # builder v2 fails with:
        # > cp: cannot stat '/nix/store/vgh1nniw5b7bdq5cf7pqjbppcdha4n1a-cabal-bc27d17/cabal-install/./tests/fixtures/project-root/cabal.project.symlink.broken': No such file or directory
        builderVersion = 1;
        materialized = final.project-lib.materializedFor "cabal-plan-nix";
        #cabalProjectLocal = lib.mkAfter ''
        #  constraints: cabal-install >= 3.18
        #'';
      });

    my-nix-tools = final.haskell-nix.nix-tools-set (
      { lib, ... }: {

        src = lib.mkForce (builtins.toPath inputs.nix-tools);

        inherit (final.cabalDefaults)
          compiler-nix-name
          index-state
          ;
        cabalProjectLocal = ''
          index-state: ${final.cabalDefaults.index-state}
          constraints: cabal-install    >=3.17
          constraints: Cabal-syntax     >=3.18
          constraints: extra            >=1.8.1
          constraints: algebraic-graphs >=0.8
          constraints: cabal2nix        >=2.21.2
          -- crypton >=2.1.7

          -- For hnix...
          extra-packages: dependent-sum, hnix-store-nar
          constraints: hnix-store-core >=0.8.0.0
          allow-newer: hnix:*
          allow-newer: dependent-sum-template:*
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
        modules = [({ config, pkgs, ... }: {
          packages.cabal-install.patches = lib.mkForce [];

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
        })];
      });

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
    legacyPackages = {
      inherit (pkgs)
        cabal-master
        my-nix-tools
        ;
    };
  };

  flake.overlays.cabal-master = overlay;
}

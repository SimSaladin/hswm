{
  lib,
  inputs,
  checkMaterialization,
  ...
}:

let
  cabalDefaults = {
    inherit checkMaterialization;
    # important three to fix to avoid materialized drift!
    compiler-nix-name = "ghc9141llvm";
    # keep in sync with cabal.project
    index-state = "2026-09-29T22:54:10Z";
    # using the V2 builder by default
    builderVersion = 2;
    evalSystem = "x86_64-linux";
  };

  # XXX: haskell.nix nix-tools built with Cabal 3.18 libraries
  cabal_3_18_1_0-nix-tools = { lib, ... }: {
    src = lib.mkForce (builtins.toPath inputs.nix-tools.outPath);
    inherit (cabalDefaults) compiler-nix-name index-state;
    cabalProjectLocal = ''
      index-state: ${cabalDefaults.index-state}
      constraints: cabal-install    >=3.18
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
        packages = {
          cabal-install.patches = lib.mkForce [
            "${inputs.nix-tools}/cabal-install-patches/installed-package-id-os-override.patch"
          ];
          Cabal.patches = [
            ./cabal-args.patch
            #(pkgs.fetchpatch {
            #  url = "https://raw.githubusercontent.com/haskell-infra/hackage-doc-builder-config/refs/heads/master/cabal-hsc2hs-args-patch.diff";
            #  hash = "sha256-okmmiuhfw8EbkZN3m0oJCovpA8nx0l90UNh7twrh6pg=";
            #})
          ];
          # hnix HEAD + patched
          # Partial PR: https://github.com/haskell-nix/hnix/pull/1117
          hnix = rec {
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
          hnix-store-json.postUnpack = ''
            rm $sourceRoot/{upstream-libstore-data,upstream-libutil-data}
            cp -r ${pkgs.nixVersions.latest.src}/src/libstore-tests/data $sourceRoot/upstream-libstore-data
            cp -r ${pkgs.nixVersions.latest.src}/src/libutil-tests/data $sourceRoot/upstream-libutil-data
          '';
          # crypton-2.1.7
          crypton = rec {
            package.identifier.version = lib.mkForce "2.1.7";
            src = pkgs.fetchzip {
              url = "https://hackage.haskell.org/package/crypton-2.1.7/crypton-2.1.7.tar.gz";
              hash = "sha256-mKWBG9HtZ8hLlSVbCqxBn8Kr4ZGxM2aFDiPEWuG0mFM=";
            };
            package-description-override = lib.mkForce (builtins.readFile (src + "/crypton.cabal"));
          };
        };
      })
    ];
  };
in
{
  _module.args.cabal-defaults = cabalDefaults;

  _module.args.mk-cabal =
    { pkgs, compiler-nix-name }:
    let
      tools = pkgs.haskell-nix.nix-tools-set (_: {
        imports = [ cabal_3_18_1_0-nix-tools ];
        compiler-nix-name = lib.mkForce compiler-nix-name;
      });
    in
    tools.exes.cabal;

  perSystem = { pkgs, ... }: {

    packages = {
      inherit (pkgs) cabal_3_18_1_0 nix-tools-cabal_3_18_1_0;
    };
    legacyPackages = {
      inherit (pkgs) cabal_3_18_1_0 nix-tools-cabal_3_18_1_0;
    };
  };

  flake.overlays.cabal-master = final: _: {

    inherit cabalDefaults;

    # Cabal 3.18.1.0
    nix-tools-cabal_3_18_1_0 = final.haskell-nix.nix-tools-set cabal_3_18_1_0-nix-tools;
    cabal_3_18_1_0 = final.nix-tools-cabal_3_18_1_0.exes.cabal;
  };
}

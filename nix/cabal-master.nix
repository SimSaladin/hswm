{ checkMaterialization, ... }:

let

  overlay = final: _: {

    cabalDefaults = {
      inherit checkMaterialization;
      # important three to fix to avoid materialized drift!
      compiler-nix-name = "ghc9141llvm";
      # keep in sync with cabal.project
      index-state = "2026-07-10T00:04:30Z";
      evalPackages = final.buildPackages;
      # using the V2 builder by default
      builderVersion = 2;
    };

    cabal-master = final.haskell-nix.cabalProject' ({ ... }:
      final.cabalDefaults // {
        name = "cabal-master";
        src = ../project-cabal;
        cabalProjectFileName = "cabal-3.17.cabal";
        # builder v2 fails with:
        # > cp: cannot stat '/nix/store/vgh1nniw5b7bdq5cf7pqjbppcdha4n1a-cabal-bc27d17/cabal-install/./tests/fixtures/project-root/cabal.project.symlink.broken': No such file or directory
        builderVersion = 1;
        materialized = final.project-lib.materializedFor "cabal-plan-nix";
      });
  };

  hsNixModule = { lib, config, ... }: {
    # workaround issue with hsc2hs
    packages = lib.genAttrs [ "zlib" "network" "haskell-gi" "haskell-gi-base" "filelock" "unix-time" ]
      (_: { components.library.depends = [ config.hsPkgs.process ]; });
  };
in
{
  _module.args.cabal-master-hnix = hsNixModule;

  perSystem = { pkgs, ... }: {
    legacyPackages = {
      inherit (pkgs) cabal-master;
    };
  };

  flake.overlays.cabal-master = overlay;
}

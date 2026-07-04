{ project-lib, checkMaterialization, ... }@top:

{
  flake.overlays.cabal-unreleased = final: _: {
    only-cabal = final.haskell-nix.cabalProject' ({ ... }: {
      name = "cabal-unreleased";
      src = ../project-cabal;
      cabalProjectFileName = "cabal-3.17.cabal";
      builderVersion = 1;
      # important three to fix to avoid materialized drift!
      compiler-nix-name = "ghc9141llvm";
      index-state = "2026-06-04T23:15:22Z";
      evalPackages = final.buildPackages;
      materialized = project-lib.materializedFor "cabal-plan-nix";
      inherit checkMaterialization;
    });

    # for support "cabal-version: 3.14"
    cabal2nix-unwrapped = final.haskell.packages.ghc914.cabal2nix;

    # For cabal pkg-config-depends: xkbregistry
    xkbregistry = final.libxkbcommon;
  };

  perSystem = { pkgs, ... }: {
    legacyPackages = {
      inherit (pkgs) only-cabal;
    };
  };
}

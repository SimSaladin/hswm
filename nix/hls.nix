{ inputs, lib, ... }:

let
  hlsProject = { pkgs, ... }:
  {
    name = "haskell-language-server";
    src = inputs.haskell-language-server;
    index-state = lib.mkForce "2026-10-06T21:15:24Z";
    builderVersion = lib.mkForce 1;
    compiler-nix-name = "ghc9141llvm";
    cabalProjectLocal = lib.mkAfter
        ''
          package *
              documentation: True
        '';

    shell = {
      nativeBuildInputs = [
        # Use a newer cabal-install binary
        pkgs.cabal_3_18
      ];
    };
  };
in

{
  flake.overlays.hls = final: _: {

    hls = final.haskell-nix.cabalProject' [ hlsProject ];

  };

  perSystem = { pkgs, ... }:
  {
    legacyPackages = {
        inherit (pkgs.hls.hsPkgs.haskell-language-server.components.exes)
          haskell-language-server
          haskell-language-server-wrapper
        ;
    };
    packages = {
        inherit (pkgs.hls.hsPkgs.haskell-language-server.components.exes)
          haskell-language-server
          haskell-language-server-wrapper
          ghcide-bench
          ghcide-test-preprocessor
        ;
    };
  };
}

{
  lib,
  checkMaterialization,
  ...
}:

let
  cabalDefaults = {
    inherit checkMaterialization;
    # important three to fix to avoid materialized drift!
    compiler-nix-name = "ghc9141llvm";
    # keep in sync with cabal.project
    index-state = "2026-11-20T03:46:37Z";
    #index-state = "2026-09-29T22:54:10Z";
    # using the V2 builder by default
    builderVersion = 2;
    evalSystem = "x86_64-linux";
  };
in
{
  _module.args.cabal-defaults = cabalDefaults;

  _module.args.mk-cabal =
    { pkgs, compiler-nix-name }:
    let
      tools = pkgs.haskell-nix.nix-tools-set (_: {
        imports = [
          # cabal_3_18_1_0-nix-tools
        ];
        compiler-nix-name = lib.mkForce compiler-nix-name;
      });
    in
    tools.exes.cabal;

  flake.overlays.cabal-master = _: _: {
    inherit cabalDefaults;
  };
}

{ inputs, ... }:

let
  haskellNixModules = {
    hs-bindgen = { config, pkgs, ... }: {
      # As pkg-config deps because these need to be propagated.
      # The clang executable is needed for full macro support.
      packages.hs-bindgen.components.exes.hs-bindgen-cli.pkgconfig = [ [ config.ghc.package.llvmPackages.libclang pkgs.hsBindgenHook pkgs.doxygen ] ];
      packages.libclang-bindings.components.library.build-tools = [ config.ghc.package.llvmPackages.llvm ];
      packages.libclang-bindings.components.library.libs = [ config.ghc.package.llvmPackages.libclang ];
      packages.libclang-bindings.components.library.depends = [ config.hsPkgs.process ]; # for hsc2hs
      packages.c-expr-dsl.components.library.libs = [ config.ghc.package.llvmPackages.libclang ];
    };
  };
in
{
  _module.args = { inherit haskellNixModules; };

  # the overlay import is broken upstream; inputs.hs-bindgen.overlays.default
  flake.overlays.hs-bindgen =
    (import "${inputs.hs-bindgen}/nix/overlay" {
      inherit (inputs.nixpkgs) lib;
      inherit (inputs.hs-bindgen.inputs) libclang-bindings-src doxygen-parser-src c-expr-src;
    }).default;

  perSystem = { self', system, lib, config, pkgs, ... }: {
    _module.args = { inherit haskellNixModules; };

    legacyPackages = { };
  };
}

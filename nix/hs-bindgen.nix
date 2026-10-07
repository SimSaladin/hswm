{ inputs, lib, ... }:

let
  hsNixModule = { config, pkgs, ... }: {
    packages = {
      # As pkg-config deps because these need to be propagated...
      # The clang executable is needed for full macro support.
      hs-bindgen.components.exes.hs-bindgen-cli.pkgconfig = [
        [
          config.ghc.package.llvmPackages.libclang
          pkgs.hsBindgenHook
          pkgs.doxygen
        ]
      ];
      libclang-bindings.components.library = {
        depends = [ config.hsPkgs.process /* for hsc2hs */ ];
        build-tools = [ config.ghc.package.llvmPackages.llvm ];
        libs = [ config.ghc.package.llvmPackages.libclang ];
      };
      c-expr-dsl.components.library.libs = [
        config.ghc.package.llvmPackages.libclang
      ];
    };
  };
in
{
  _module.args.haskellNixModules.hs-bindgen = hsNixModule;

  # the overlay import is broken upstream; inputs.hs-bindgen.overlays.default
  flake.overlays.hs-bindgen =
    inputs.hs-bindgen.overlays.default;
    #(import "${inputs.hs-bindgen}/nix/overlay" {
    #  inherit lib;
    #  inherit (inputs.hs-bindgen.inputs)
    #    libclang-bindings-src
    #    c-expr-src
    #    doxygen-parser-src
    #    ;
    #}).default;
}

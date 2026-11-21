{ inputs, ... }:

let
  hsNixModule =
    { config, pkgs, ... }:
    let
      inherit (config.ghc.package.llvmPackages) llvm libclang;
    in
    {
      packages = {
        # # As pkg-config deps because these need to be propagated...
        # # The clang executable is needed for full macro support.
        hs-bindgen.components.exes.hs-bindgen-cli.pkgconfig = [
          # setup hook that configures libclang for the build environment.
          # Need the clang binary in PATH
          [ libclang ]
          # XXX: better place than pkgconfig for this? build-tools?
          [ pkgs.hsBindgenHook ]
          # Doxygen is used for some documentation handling
          [ pkgs.doxygen ]
        ];
        libclang-bindings.components.library = {
          build-tools = [ llvm ];
          libs = [ libclang ];
        };
      };
    };
in
{
  _module.args.haskell-nix-hs-bindgen-module = hsNixModule;

  flake.overlays.hs-bindgen = inputs.hs-bindgen.overlays.default;

  perSystem = { pkgs, ... }: {
    # Expose the hs-bindgen-cli binary for development purposes.
    packages.hs-bindgen-cli = pkgs.hs-bindgen-cli;
  };
}

{ inputs, lib, ... }:

let
  hsNixModule = { config, pkgs, ... }: {
    packages = {
      # # As pkg-config deps because these need to be propagated...
      # # The clang executable is needed for full macro support.
      hs-bindgen.components.exes.hs-bindgen-cli.pkgconfig = [
        # setup hook that configures libclang for the build environment.
        # XXX: better place than pkgconfig for this? build-tools?
        [ pkgs.hsBindgenHook ]
        # Doxygen is used for some documentation handling
        [ pkgs.doxygen ]
      ];
      libclang-bindings.components.library = {
        build-tools = [ config.ghc.package.llvmPackages.llvm ];
        libs = [ config.ghc.package.llvmPackages.libclang ];
      };
    };
  };
in
{
  _module.args.haskellNixModules.hs-bindgen = hsNixModule;

  flake.overlays.hs-bindgen = inputs.hs-bindgen.overlays.default;

  perSystem = { pkgs, inputs', ... }: {
    # Expose the hs-bindgen-cli binary for development purposes.
    packages.hs-bindgen-cli = pkgs.project.hsPkgs.hs-bindgen.components.exes.hs-bindgen-cli;
  };
}

{
  description = "HsWM: XMonad-inspired window manager for Wayland powered by River (compositor/wm protocol)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
    hs-bindgen = {
      url = "github:well-typed/hs-bindgen";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    typed-process = {
      url = "github:sol/typed-process?ref=dev";
      flake = false;
    };
  };

  outputs = inputs@{ self, nixpkgs, flake-utils, ... }:
  inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [ "x86_64-linux" "aarch64-linux" ];
    imports = [
      inputs.haskell-flake.flakeModule
    ];
    debug = true;

    perSystem = { system, lib, config, pkgs, ... }: {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        config = {
           problems.handlers = {
             monad-logger-aeson.broken = "warn";
           };
         };
        overlays = [
          (final: _: {
            # roll our own for now because the nixpkgs one is rather old and lacks
            # features (the wm protocol etc.)
            river = final.callPackage ./river/package.nix { };
          })
          inputs.hs-bindgen.overlays.default
        ];
      };

      haskellProjects.ghc912 = {
        defaults.packages = {};
        devShell.enable = false;
        autoWire = [ ];
        packages = {
          # XXX: infinite recursion...
          #typed-process.source = inputs.typed-process;
        };
        basePackages = pkgs.haskell.packages.ghc912;
      };

      haskellProjects.ghc914 = {
        defaults.packages = {};
        devShell.enable = false;
        autoWire = [ ];
        packages = { };
        basePackages = pkgs.haskell.packages.ghc914;
      };

      haskellProjects.default = {
        projectRoot = ./.;
        basePackages = config.haskellProjects.ghc912.outputs.finalPackages;
        defaults.settings.defined.haddock = true;

        devShell = {
          tools = hp: {
            inherit (hp)
              hs-bindgen
              ;
            inherit (pkgs)
              wayland-scanner
              libxkbcommon
              weston
              river
              pixman
              gtk3
              ;
          };
        };
        settings = {
          monad-logger-aeson.check = false; # Tests broken
        };
      };

      haskellProjects.hswm = {
        projectRoot = ./hswm;
        basePackages = config.haskellProjects.default.outputs.finalPackages;
        autoWire = [ ];
        inherit (config.haskellProjects.default) defaults devShell settings;
      };

      packages = {
        # Export our overridden river for convenience.
        inherit (pkgs) river;
      };
    };
  };

}

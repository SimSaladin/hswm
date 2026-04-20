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

    perSystem = { system, lib, config, pkgs, ... }@perSys:
    let
      haskellProjectBase = { config, ... }: {
        imports = [ perSys.config.haskellProjects.ghc912.defaults.projectModules.output ];
        basePackages = perSys.config.haskellProjects.ghc912.outputs.finalPackages;
        defaults.settings.defined.haddock = true;
        #defaults.projectModules.output = { inherit (config) packages settings ; };
        autoWire = [ "devShells" ]; # "packages" "apps" ];
        devShell.tools = hp: {
          inherit (hp)
            hs-bindgen
            ;
          inherit (pkgs)
            river
            wayland-scanner
            weston
            libxkbcommon
            pixman
            gtk3
            ;
        };
      };
    in
    {
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

            xkbregistry = final.libxkbcommon;
          })
          inputs.hs-bindgen.overlays.default
        ];
      };

      haskellProjects.ghc912 = {
        defaults.enable = false;
        basePackages = pkgs.haskell.packages.ghc912;
        settings.monad-logger-aeson.check = false; # Tests broken
        autoWire = [];
      };

      haskellProjects.ghc914 = {
        defaults.enable = false;
        basePackages = pkgs.haskell.packages.ghc914;
        autoWire = [];
      };

      haskellProjects.default = rec {
        imports = [ haskellProjectBase ];
        # To avoid unnecessary rebuilds, we filter projectRoot:
        # https://community.flake.parts/haskell-flake/local#rebuild
        projectRoot = builtins.toString (lib.fileset.toSource rec {
          root = ./.;
          fileset = lib.fileset.unions [
            #(root + /LICENSE)
            (root + /README.md)
            (root + /hswm)
            (root + /hswm-bindings)
            (root + /xkbcommon-bindings)
            (root + /waybar-cffi-hs)
            #(root + /cabal.project)
          ];
        });
        packages = {
          hswm.source = projectRoot + "/hswm";
          hswm-bindings.source = projectRoot + "/hswm-bindings";
          xkbcommon-bindings.source = projectRoot + "/xkbcommon-bindings";
          waybar-cffi-hs.source = projectRoot + "/waybar-cffi-hs";
        };
        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };

      haskellProjects.xkbcommon-bindings = {
        imports = [ haskellProjectBase ];
        projectRoot = ./xkbcommon-bindings;
      };

      haskellProjects.hswm-bindings = {
        imports = [ haskellProjectBase ];
        projectRoot = ./hswm-bindings;
      };

      haskellProjects.hswm = {
        imports = [
          haskellProjectBase
          config.haskellProjects.hswm-bindings.defaults.projectModules.output
          config.haskellProjects.xkbcommon-bindings.defaults.projectModules.output
        ];
        projectRoot = ./hswm;
      };

      haskellProjects.waybar-cffi-hs = {
        imports = [
          haskellProjectBase
          config.haskellProjects.hswm.defaults.projectModules.output
        ];
        projectRoot = ./waybar-cffi-hs;
      };

      packages = {
        # Export our overridden river for convenience.
        inherit (pkgs) river;
      };
    };
  };

}

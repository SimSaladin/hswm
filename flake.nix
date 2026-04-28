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

    river = {
      url = "git+https://codeberg.org/river/river";
      flake = false;
    };

    # GHC 9.14
    ghc-tcplugins-extra = {
      url = "github:sheaf/ghc-tcplugins-extra/ghc-9.14";
      flake = false;
    };
    ghc-typelits-natnormalise = {
      url = "github:clash-lang/ghc-typelits-natnormalise";
      flake = false;
    };
    # https://github.com/gtk2hs/gtk2hs/pull/349
    glib = {
      url = "github:TuongNM/gtk2hs/ghc-rts-api?dir=glib";
      flake = false;
    };
  };

  outputs = inputs@{ ... }:

  inputs.flake-parts.lib.mkFlake { inherit inputs; } {

    systems = [ "x86_64-linux" "aarch64-linux" ];

    imports = [
      inputs.haskell-flake.flakeModule
    ];

    debug = true;

    perSystem = { system, lib, config, pkgs, ... }@perSys:
    let
      haskellProjectBase = haskellProjectBaseWith "ghc912";

      haskellProjectBaseWith = ghcVersion: { ... }: {
        imports = [ perSys.config.haskellProjects.${ghcVersion}.defaults.projectModules.output ];
        basePackages = perSys.config.haskellProjects.${ghcVersion}.outputs.finalPackages;
        defaults.settings.defined.haddock = true;
        autoWire = [ "devShells" ];
        devShell.tools = hp: {
          inherit (hp)
            hs-bindgen
            ;
          inherit (pkgs)
            river
            wayland-scanner
            weston
            doxygen
            libxkbcommon
            pixman
            gtk3
            ;
        };
      };

      # To avoid unnecessary rebuilds, we filter projectRoot:
      # https://community.flake.parts/haskell-flake/local#rebuild
      cabalProjectRoot = builtins.toString (lib.fileset.toSource rec {
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
            river = final.callPackage ./river/package.nix {
              src = inputs.river;
            };

            # For cabal pkg-config-depends: xkbregistry
            xkbregistry = final.libxkbcommon;
          })
          inputs.hs-bindgen.overlays.default
        ];
      };

      # GHC 9.12 (default)
      haskellProjects.ghc912 = {
        defaults.enable = false;
        basePackages = pkgs.haskell.packages.ghc912;
        settings.monad-logger-aeson.check = false; # Tests broken
        autoWire = [];
      };

      # GHC 9.12 with -fPIC (static shared objects)
      haskellProjects.ghc912-reloc = {
        defaults.enable = false;
        defaults.settings.defined.haddock = false;
        defaults.settings.defined.extraConfigureFlags = [ "--ghc-options=-fPIC" ];
        basePackages = (pkgs.haskell.packages.ghc912.override (oHP: {
          ghc = oHP.ghc.override { enableRelocatedStaticLibs = true; };
          buildHaskellPackages = oHP.buildHaskellPackages.override (oBHP: {
           ghc = oBHP.ghc.override { enableRelocatedStaticLibs = true; };
         });
        })).extend (_self: super:
        lib.mapAttrs (_: pkg: if pkg ? getCabalDeps
          then pkgs.haskell.lib.compose.appendBuildFlag "--ghc-options=-fPIC" pkg
          else pkg) super);
        settings.monad-logger-aeson.check = false; # Tests broken
        autoWire = [];
      };

      # GHC 9.14 .. future
      haskellProjects.ghc914 = {
        defaults.enable = false;
        basePackages = pkgs.haskell.packages.ghc914.extend (self: super: {
          # XXX: specifying this via packages.glib.source throws infinite
          # recursion...
          glib = pkgs.haskell.lib.compose.overrideSrc { src = inputs.glib; } super.glib;
        });

        packages.ghc-tcplugins-extra.source = inputs.ghc-tcplugins-extra; # GHC 9.14
        packages.ghc-typelits-natnormalise.source = inputs.ghc-typelits-natnormalise; # containers 0.8 etc.

        settings.blaze-html.jailbreak = true; # containers 0.8
        settings.blaze-markup.jailbreak = true; # containers 0.8
        settings.boring.jailbreak = true; # base 4.22
        settings.dec.jailbreak = true; # base 4.22
        settings.fin.check = false; # tests  fail?
        settings.fin.jailbreak = true; # base 4.22
        settings.ghc-typelits-natnormalise.jailbreak = true; # containers 0.8
        settings.ghc-typelits-natnormalise.check = false; # ???
        packages.ghc-typelits-knownnat.source = "0.8.2";
        settings.hedgehog.jailbreak = true; # template-haskell
        settings.lifted-async.jailbreak = true; # base 4.22
        settings.monad-logger-aeson.check = false; # Tests broken
        settings.some.jailbreak = true; # base 4.22
        settings.universe-base.jailbreak = true; # base 4.22
        settings.vec.jailbreak = true; # base 4.22
        settings.pango.jailbreak = true; # base 4.22

        autoWire = [];
      };

      # Default package set
      haskellProjects.default = rec {
        imports = [ haskellProjectBase ];
        projectRoot = cabalProjectRoot;
        packages = {
          hswm.source = projectRoot + "/hswm";
          hswm-bindings.source = projectRoot + "/hswm-bindings";
          xkbcommon-bindings.source = projectRoot + "/xkbcommon-bindings";
          waybar-cffi-hs.source = projectRoot + "/waybar-cffi-hs";
        };
        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };

      # Default set with GHC next
      haskellProjects.default-ghc914 = rec {
        imports = [ (haskellProjectBaseWith "ghc914") ];
        projectRoot = cabalProjectRoot;
        packages = {
          hswm.source = projectRoot + "/hswm";
          hswm-bindings.source = projectRoot + "/hswm-bindings";
          xkbcommon-bindings.source = projectRoot + "/xkbcommon-bindings";
          waybar-cffi-hs.source = projectRoot + "/waybar-cffi-hs";
        };
        #packages.glib.source = inputs.glib; # GHC 9.14
        #settings.glib.jailbreak = true; # GHC 9.14
        #settings.glib.buildFromSdist = false;
        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };


      # Default set with -fPIC
      haskellProjects.default-reloc = rec {
        imports = [ (haskellProjectBaseWith "ghc912-reloc") ];
        defaults.settings.defined.haddock = lib.mkForce false;
        defaults.settings.all.extraConfigureFlags = [ "--ghc-options=-fPIC" ];
        projectRoot = cabalProjectRoot;
        settings.waybar-cffi-hs.cabalFlags.static = true;
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

        # With debug enabled
        riverDebug = pkgs.river.override { withDebug = true; };
      };

      devShells.all = config.haskellProjects.default.outputs.finalPackages.shellFor {
        packages = ps: [
          ps.hswm
          ps.waybar-cffi-hs
        ];
      };
    };
  };
}

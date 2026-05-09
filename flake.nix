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
    doctest-parallel = {
      url = "github:martijnbastiaan/doctest-parallel";
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
      defaultGhc = "ghc914";

      haskellProjectBaseWith = ghcVersion: { ... }: {
        imports = [
          perSys.config.haskellProjects.${ghcVersion}.defaults.projectModules.output
        ];
        basePackages = perSys.config.haskellProjects.${ghcVersion}.outputs.finalPackages;
        defaults.settings.defined.haddock = true;
        defaults.settings.defined = {
          extraBuildTools = [
            perSys.config.haskellProjects.${ghcVersion}.outputs.finalPackages.ghc.llvmPackages.llvm
            perSys.config.haskellProjects.${ghcVersion}.outputs.finalPackages.ghc.llvmPackages.clang
          ];
        };
        defaults.devShell.tools = hp: {
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
        autoWire = [ "devShells" ];
      };

      # To avoid unnecessary rebuilds, we filter projectRoot:
      # https://community.flake.parts/haskell-flake/local#rebuild
      cabalProjectRoot = builtins.toString (lib.fileset.toSource rec {
        root = ./.;
        fileset = lib.fileset.unions [
          (root + /README.md)
          (root + /hswm)
          (root + /hswm-bindings)
          (root + /xkbcommon-bindings)
          (root + /waybar-cffi-hs)
          #(root + /cabal.project)
        ];
      });

      cabalPackages = {
        hswm.source = cabalProjectRoot + "/hswm";
        hswm-bindings.source = cabalProjectRoot + "/hswm-bindings";
        xkbcommon-bindings.source = cabalProjectRoot + "/xkbcommon-bindings";
        waybar-cffi-hs.source = cabalProjectRoot + "/waybar-cffi-hs";
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
        defaults.settings.defined = {
          haddock = false;
          extraConfigureFlags = [ "--ghc-options=-fPIC" ];
        };

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

        basePackages = pkgs.haskell.packages.ghc914.extend (_self: super: {
          # XXX: specifying this via packages.glib.source throws infinite
          # recursion...
          glib = pkgs.haskell.lib.compose.overrideSrc { src = inputs.glib; } super.glib;
        });

        packages.doctest-parallel.source = inputs.doctest-parallel; # 0.4.1
        packages.ghc-exactprint.source = "1.14.0.0";
        packages.ghc-tcplugins-extra.source = inputs.ghc-tcplugins-extra; # GHC 9.14
        packages.ghc-typelits-knownnat.source = "0.8.2";
        packages.ghc-typelits-natnormalise.source = inputs.ghc-typelits-natnormalise; # containers 0.8 etc.

        settings.blaze-html.jailbreak = true; # containers 0.8
        settings.blaze-markup.jailbreak = true; # containers 0.8
        settings.boring.jailbreak = true; # base 4.22
        settings.debruijn.jailbreak = true;
        settings.dec.jailbreak = true; # base 4.22
        settings.fin.check = false; # tests  fail?
        settings.fin.jailbreak = true; # base 4.22
        settings.ghc-typelits-natnormalise.check = false; # ???
        settings.ghc-typelits-natnormalise.jailbreak = true; # containers 0.8
        settings.hedgehog.jailbreak = true; # template-haskell
        settings.lifted-async.jailbreak = true; # base 4.22
        settings.monad-logger-aeson.check = false; # Tests broken
        settings.optics-core.jailbreak = true; # containers
        settings.pango.jailbreak = true; # base 4.22
        settings.skew-list.jailbreak = true;
        settings.some.jailbreak = true; # base 4.22
        settings.universe-base.jailbreak = true; # base 4.22
        settings.vec.jailbreak = true; # base 4.22

        autoWire = [];
      };

      # Default package set with GHC 9.12
      haskellProjects.default-ghc912 = {
        imports = [ (haskellProjectBaseWith "ghc912") ];

        projectRoot = cabalProjectRoot;
        packages = cabalPackages;

        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };

      # Default set with GHC next
      haskellProjects.default-ghc914 = {
        imports = [ (haskellProjectBaseWith "ghc914") ];

        projectRoot = cabalProjectRoot;
        packages = cabalPackages;

        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };

      # Default package set
      haskellProjects.default = {
        imports = [ (haskellProjectBaseWith defaultGhc) ];

        projectRoot = cabalProjectRoot;
        packages = cabalPackages;

        devShell.mkShellArgs.shellHook = ''
          # Ensure that libs are available to TH splices, cabal repl, etc.
          export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${lib.makeLibraryPath [ pkgs.libxkbcommon ]}
        '';

        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };

      # Default set with -fPIC
      haskellProjects.default-ghc912-reloc = {
        imports = [ (haskellProjectBaseWith "ghc912-reloc") ];

        defaults.settings.defined.haddock = lib.mkForce false;
        defaults.settings.all.extraConfigureFlags = [ "--ghc-options=-fPIC" ];

        projectRoot = cabalProjectRoot;
        packages = cabalPackages;

        settings.waybar-cffi-hs.cabalFlags.standalone = true;

        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };

      haskellProjects.xkbcommon-bindings = {
        imports = [ (haskellProjectBaseWith defaultGhc) ];
        projectRoot = ./xkbcommon-bindings;
      };

      haskellProjects.hswm-bindings = {
        imports = [ (haskellProjectBaseWith defaultGhc) ];
        projectRoot = ./hswm-bindings;
      };

      haskellProjects.hswm = {
        imports = [
          (haskellProjectBaseWith defaultGhc)
          config.haskellProjects.hswm-bindings.defaults.projectModules.output
          config.haskellProjects.xkbcommon-bindings.defaults.projectModules.output
        ];
        projectRoot = ./hswm;
      };

      haskellProjects.waybar-cffi-hs = {
        imports = [
          (haskellProjectBaseWith defaultGhc)
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

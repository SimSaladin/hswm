{
  description = "HsWM: XMonad-inspired window manager for Wayland powered by River (compositor/wm protocol)";

  nixConfig = {
    extra-trusted-public-keys = [
      "hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="
    ];
    extra-substituters = [
      "https://cache.iog.io"
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    flake-utils.url = "github:numtide/flake-utils";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";

    haskellNix.url = "github:input-output-hk/haskell.nix";

    hs-bindgen = {
      url = "github:well-typed/hs-bindgen";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };

    river = {
      url = "git+https://codeberg.org/river/river";
      flake = false;
    };

    zon2nix = {
      url = "github:jcollie/zon2nix";
      inputs.nixpkgs.follows = "nixpkgs";
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
    gtk2hs = {
      url = "github:TuongNM/gtk2hs/ghc-rts-api";
      flake = false;
    };
    cabal = {
      url = "github:haskell/cabal";
      flake = false;
    };
    hlint = {
      url = "github:ndmitchell/hlint/ghc-9.14.1";
      flake = false;
    };
    ghc-paths = {
      url = "github:sorki/ghc-paths/srk/cabal317";
      flake = false;
    };
    entropy = {
      url = "github:haskell/entropy";
      flake = false;
    };
  };

  outputs = inputs@{ ... }:

  inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [
      "x86_64-linux"
      #"aarch64-linux"
    ];
    imports = [
      inputs.haskell-flake.flakeModule
    ];

    debug = true;

    perSystem = { system, lib, config, pkgs, ... }@perSys:
    let
      defaultGhc = "ghc914";

      hlib = pkgs.haskell.lib.compose;

      sourceHackageVersion = { version, hash ? "" }:
        p:
        hlib.overrideCabal (_: { editedCabalFile = null; })
        (p.overrideAttrs (oa: rec {
          inherit version;
          src = pkgs.fetchzip {
            url = "mirror://hackage/${oa.pname}-${version}/${oa.pname}-${version}.tar.gz";
            sha256 = hash;
          };

        })) ;

      haskellProjectBaseWith = ghcVersion: { config, ... }: {
        imports = [
          perSys.config.haskellProjects.${ghcVersion}.defaults.projectModules.output
        ];
        basePackages = perSys.config.haskellProjects.${ghcVersion}.outputs.finalPackages;
        defaults = {
          settings.defined = {
            extraBuildTools = [
              config.basePackages.ghc.llvmPackages.llvm
              config.basePackages.ghc.llvmPackages.clang
            ];
          };
        };
        autoWire = [ ];
      };
    in
    {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        config = {
           problems.handlers = {
             monad-logger-aeson.broken = "warn";
             Cabal-hooks.broken = "warn"; # or "ignore"
           };
         };
        overlays = [
          (final: _: {
            # roll our own for now because the nixpkgs one is rather old and lacks
            # features (the wm protocol etc.)
            river = final.callPackage ./river/package.nix {
              src = inputs.river;
            };

            # for support "cabal-version: 3.14"
            cabal2nix-unwrapped = final.haskell.packages.ghc914.cabal2nix;

            # For cabal pkg-config-depends: xkbregistry
            xkbregistry = final.libxkbcommon;

            # Different one than the one in nixpkgs
            zon2nix = inputs.zon2nix.packages.${system}.zon2nix;
          })
          inputs.haskellNix.overlay
          inputs.hs-bindgen.overlays.default
        ];
      };

      haskellProjects.hswm = { config, pkgs, ... }: {
        # To avoid unnecessary rebuilds, we filter projectRoot:
        # https://community.flake.parts/haskell-flake/local#rebuild
        projectRoot = builtins.toString (lib.fileset.toSource rec {
          root = ./.;
          fileset = lib.fileset.unions [
            (root + /cabal.project)
            (root + /README.md)
            (root + /hswm)
            (root + /hswm-bindings)
            (root + /xkbcommon-bindings)
            (root + /waybar-cffi-hs)
            (root + /hs-bindgen-hooks)
            (root + /pixman-bindings)
          ];
        });

        defaults = {
          enable = false;
          projectModules.output = {
            inherit (config)
              packages
              settings
              devShell
              ;
          };
        };

        settings = {
          hswm = { ... }: {
            #separateBinOutput = true;
          };

          hswm-bindings = { pkgs, ... }: {
            extraBuildDepends = [ pkgs.wayland-scanner ];
          };
          monad-logger-aeson.check = false; # Tests broken
        };

        devShell = {
          tools = ps: {
            inherit (ps) hs-bindgen;
            inherit (pkgs)
              #river
              wayland-scanner
              weston
              doxygen
              #libxkbcommon
              #pixman
              #gtk3
              ;
          };
          extraLibraries = ps: { };
          mkShellArgs.shellHook = ''
            # Ensure that libs are available to TH splices, cabal repl, etc.
            export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${lib.makeLibraryPath [ pkgs.libxkbcommon ]}
          '';
        };

        autoWire = [];
      };

      # GHC 9.14 .. future
      haskellProjects.ghc914 = { pkgs, ... }: {
        defaults.enable = false;

        basePackages = pkgs.haskell.packages.ghc914.extend (self: super: {

          #buildHaskellPackages = super.buildHaskellPackages.extend (self: super: {
          #  Cabal = self.Cabal_3_16_1_0;
          #  Cabal-syntax = self.Cabal-syntax_3_16_1_0;
          #});

          gtk2hs-buildtools = self.buildHaskellPackages.gtk2hs-buildtools;

          # XXX: specifying this via packages.glib.source throws infinite
          # recursion...
          glib = (pkgs.haskell.lib.compose.overrideSrc { src = inputs.glib; } super.glib).override ({
            gtk2hs-buildtools = self.buildHaskellPackages.gtk2hs-buildtools;
          });

          #Cabal = self.Cabal_3_16_1_0;
          #Cabal-syntax = self.Cabal-syntax_3_16_1_0;
        });

        packages = {
          gtk2hs-buildtools.source = inputs.gtk2hs + "/tools";

          # Cabal master
          #Cabal_3_17.source = inputs.cabal + "/Cabal";
          #Cabal-syntax_3_17.source = inputs.cabal + "/Cabal-syntax";
          #cabal-install_3_17.source = inputs.cabal + "/cabal-install";
          #cabal-install-solver_3_17.source = inputs.cabal + "/cabal-install-solver";
          #Cabal-hooks_3_17.source = inputs.cabal + "/Cabal-hooks";
          #Cabal-described.source = inputs.cabal + "/Cabal-described";
          #Cabal-QuickCheck.source = inputs.cabal + "/Cabal-QuickCheck";
          #Cabal-tests.source = inputs.cabal + "/Cabal-tests";
          #Cabal-tree-diff.source = inputs.cabal + "/Cabal-tree-diff";
          #hooks-exe.source = inputs.cabal + "/hooks-exe";

          ghc-tcplugins-extra.source = inputs.ghc-tcplugins-extra; # GHC 9.14
          ghc-typelits-natnormalise.source = inputs.ghc-typelits-natnormalise; # containers 0.8 etc.
          HTTP.source = "4000.5.0";
          hlint.source = inputs.hlint;
        };

        settings = {
          HTTP.check = false;
          #Cabal-hooks = { self, super, ... }: {
          #  custom = p: p.override {
          #    Cabal = self.Cabal_3_16_1_0;
          #    Cabal-syntax = self.Cabal-syntax_3_16_1_0;
          #  };
          #};

          ghc-typelits-natnormalise.check = false; # ???
          ghc-typelits-knownnat = { custom = sourceHackageVersion { version = "0.8.4"; hash = "sha256-PyYMUvJ8/miqusNl7+xay8OJqtK1/uHNQEiLr1utieg="; }; };
          ghc-tcplugin-api = { custom = sourceHackageVersion { version = "0.19.0.0"; hash = "sha256-2jm1Q2lmaG6vtRnxcvxf4U2gvQdVkDL0h8PWaTpDWJA="; }; };
          string-interpolate.jailbreak = true; # containers 0.8
          config-ini.jailbreak = true; # containers 0.8
          brick.jailbreak = true; # containers 0.8
          blaze-html.jailbreak = true; # containers 0.8
          blaze-markup.jailbreak = true; # containers 0.8
          debruijn.jailbreak = true;
          dec.jailbreak = true; # base 4.22
          fin.check = false; # tests  fail?
          fin.jailbreak = true; # base 4.22
          pango.jailbreak = true; # base 4.22
          skew-list.jailbreak = true;
          universe-base.jailbreak = true; # base 4.22
          vec.jailbreak = true; # base 4.22

          optparse-generic.jailbreak = true;
          lucid.jailbreak = true;
          singleton-bool.jailbreak = true;
          clay.jailbreak = true;
          algebraic-graphs.jailbreak = true;
          tasty-hspec.jailbreak = true;
          binary-orphans.jailbreak = true;
          apply-refact.jailbreak = true;

          haskell-language-server = { self, ... }: {
            jailbreak = true;
            custom = p: hlib.disableCabalFlag "fourmolu" (p.override {
              Cabal = self.Cabal_3_16_1_0;
              Cabal-syntax = self.Cabal-syntax_3_16_1_0;
            });
            #cabalFlags = {
              #fourmolu = false;
            #};
          };

          fourmolu = { self, ... }: {
            jailbreak = true;
            custom = p: p.override {
              Cabal-syntax = self.Cabal-syntax_3_16_1_0;
              ghc-lib-parser = self.ghc-lib-parser_9_14_1_20251220;
            };
          };

          ormolu = { self, ... }: {
            custom = p: (sourceHackageVersion { version = "0.8.1.0"; hash = "sha256-a1g+ococHdfwFYn2ImesdPJ4xwCbyP6ey5zQVYzG2PE="; } p).override {
              Cabal-syntax = self.Cabal-syntax_3_16_1_0;
              ghc-lib-parser = self.ghc-lib-parser_9_14_1_20251220;
            };
          };

          ghc-lib-parser-ex_9_14_2_0 = { self, ... }: {
            custom = p: p.override {
              ghc-lib-parser = self.ghc-lib-parser_9_14_1_20251220;
            };
          };

          hlint = { self, ... }: {
            custom = p: p.override {
              ghc-lib-parser = self.ghc-lib-parser_9_14_1_20251220;
              ghc-lib-parser-ex = self.ghc-lib-parser-ex_9_14_2_0;
            };
          };
        };

        autoWire = [];
      };

      # Default package set
      haskellProjects.default = {
        imports = [
          (haskellProjectBaseWith defaultGhc)
          perSys.config.haskellProjects.hswm.defaults.projectModules.output
        ];

        defaults = {
          settings.defined = {
            #haddock = true;
          };
        };

        devShell = {
          tools = ps: {
            haskell-language-server = null; # broken
            hlint = null;
          };
          extraLibraries = ps: {
            #inherit (ps)
              #Cabal_3_17
              #Cabal-hooks_3_17
            #  ;
          };
        };

        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };

      # GHC 9.12
      #haskellProjects.ghc912 = {
      #  defaults.enable = false;
      #  basePackages = pkgs.haskell.packages.ghc912;
      #  settings = {
      #    monad-logger-aeson.check = false; # Tests broken
      #  };
      #  autoWire = [];
      #};

      ## GHC 9.12 with -fPIC (static shared objects)
      #haskellProjects.ghc912-reloc = {
      #  basePackages = (pkgs.haskell.packages.ghc912.override (oHP: {
      #    ghc = oHP.ghc.override { enableRelocatedStaticLibs = true; };
      #    buildHaskellPackages = oHP.buildHaskellPackages.override (oBHP: {
      #     ghc = oBHP.ghc.override { enableRelocatedStaticLibs = true; };
      #   });
      #  })).extend (_self: super:
      #  lib.mapAttrs (_: pkg: if pkg ? getCabalDeps
      #    then pkgs.haskell.lib.compose.appendBuildFlag "--ghc-options=-fPIC" pkg
      #    else pkg) super);

      #  defaults = {
      #    enable = false;
      #    settings.defined = {
      #      haddock = false;
      #      extraConfigureFlags = [ "--ghc-options=-fPIC" ];
      #    };
      #  };

      #  settings = {
      #    monad-logger-aeson.check = false; # Tests broken
      #  };

      #  autoWire = [];
      #};

      # Default set with -fPIC
      #haskellProjects.default-ghc912-reloc = {
      #  imports = [ (haskellProjectBaseWith "ghc912-reloc") ];
      #  projectRoot = cabalProjectRoot;
      #  defaults = {
      #    settings.defined.haddock = lib.mkForce false;
      #    settings.all.extraConfigureFlags = [ "--ghc-options=-fPIC" ];
      #  };
      #  autoWire = lib.mkForce [ "packages" "apps" ];
      #};

      packages = {
        # Export our overridden river for convenience.
        inherit (pkgs) river;

        # With debug enabled
        riverDebug = pkgs.river.override { withDebug = true; };

        ormolu = config.haskellProjects.default.outputs.finalPackages.ormolu;
        hlint = config.haskellProjects.default.outputs.finalPackages.hlint;
        ghcid = config.haskellProjects.default.outputs.finalPackages.ghcid;
        fourmolu = config.haskellProjects.default.outputs.finalPackages.fourmolu;
        hls = config.haskellProjects.default.outputs.finalPackages.haskell-language-server;

        default = pkgs.buildEnv {
          pname = "hswm-full";
          version = "0.1.0";
          paths = [
            config.packages.hswm
            config.packages.waybar-cffi-hs
          ];
        };
      };

      legacyPackages =
        let hlib = pkgs.haskell.lib.compose; in
        {
        cabal-latest = pkgs.haskell.packages.ghcHEAD.extend (self: super: {

          buildHaskellPackages = super.buildHaskellPackages.override (oBHP: {
            #ghc = oBHP.ghc.override { enableRelocatedStaticLibs = true; };
            overrides = self: super: {
              process = self.process_1_6_28_0;
              #ghc = self.ghc_9_14_1; # .override { };
            };
          });

          #ghc_9_14_1 = self.ghc_9_14_1; # .override { };
          ghc-paths = hlib.overrideCabal (drv: {
            revision = null;
            editedCabalFile = null;
          }) (self.callCabal2nix "ghc-paths" (builtins.toPath inputs.ghc-paths) { });

          entropy = self.callCabal2nix "entropy" (inputs.entropy) { };

          Cabal-syntax = self.callCabal2nix "Cabal-syntax" (inputs.cabal + "/Cabal-syntax") { };
          Cabal-hooks = self.callCabal2nix "Cabal-hooks" (inputs.cabal + "/Cabal-hooks") { };
          Cabal = self.callCabal2nix "Cabal" (inputs.cabal + "/Cabal") { };
          Cabal-described = self.callCabal2nix "cabal-described" (inputs.cabal + "/cabal-described") { };
          Cabal-QuickCheck = self.callCabal2nix "cabal-QuickCheck" (inputs.cabal + "/cabal-QuickCheck") { };
          Cabal-tests = self.callCabal2nix "cabal-tests" (inputs.cabal + "/cabal-tests") { };
          Cabal-tree-diff = self.callCabal2nix "cabal-tree-diff" (inputs.cabal + "/cabal-tree-diff") { };
          hooks-exe = self.callCabal2nix "hooks-exe" (inputs.cabal + "/hooks-exe") { };
          cabal-install = self.callCabal2nix "cabal-install" (inputs.cabal + "/cabal-install") { };
          cabal-install-solver = self.callCabal2nix "cabal-install-solver" (inputs.cabal + "/cabal-install-solver") { };
          process = self.process_1_6_28_0;
        });
      };

      devShells = {
        all = config.haskellProjects.default.outputs.finalPackages.shellFor {
          packages = ps: [
            ps.pixman-bindings
            ps.hswm-bindings
            ps.hswm
            ps.waybar-cffi-hs
          ];
        };
      };
    };
  };
}

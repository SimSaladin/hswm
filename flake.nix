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
        }));
      haskellProjectBaseWith = ghcVersion: { config, ... }: {
        imports = [ perSys.config.haskellProjects.${ghcVersion}.defaults.projectModules.output ];
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

          inputs.hs-bindgen.overlays.default

          inputs.haskellNix.overlay
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
          projectModules.output = { inherit (config) packages settings devShell; };
        };
        settings = {
          hswm-bindings = { pkgs, ... }: { extraBuildDepends = [ pkgs.wayland-scanner ]; };
          monad-logger-aeson.check = false; # Tests broken
        };
        devShell = {
          tools = ps: {
            inherit (ps) hs-bindgen;
            inherit (pkgs) wayland-scanner weston doxygen;
          };
          #extraLibraries = ps: { };
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
          buildHaskellPackages = super.buildHaskellPackages.extend (self: super: {
            Cabal = self.Cabal_3_16_1_0;
          });
          Cabal = self.Cabal_3_16_1_0;
          gtk2hs-buildtools = self.buildHaskellPackages.gtk2hs-buildtools;
          # XXX: specifying this via packages.glib.source throws infinite recursion...
          glib = hlib.overrideSrc { src = inputs.glib; } super.glib;
        });

        packages = {
          gtk2hs-buildtools.source = inputs.gtk2hs + "/tools";
          ghc-tcplugins-extra.source = inputs.ghc-tcplugins-extra; # GHC 9.14
          ghc-typelits-natnormalise.source = inputs.ghc-typelits-natnormalise; # containers 0.8 etc.
          HTTP.source = "4000.5.0";
          hlint.source = inputs.hlint;
        };

        settings = {
          HTTP.check = false;
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
          haskell-language-server = { self, ... }: { jailbreak = true; };
          fourmolu = { self, ... }: {
            jailbreak = true;
            custom = p: p.override {
              ghc-lib-parser = self.ghc-lib-parser_9_14_1_20251220;
            };
          };
          ormolu = { self, ... }: {
            custom = p: (sourceHackageVersion { version = "0.8.1.0"; hash = "sha256-a1g+ococHdfwFYn2ImesdPJ4xwCbyP6ey5zQVYzG2PE="; } p).override {
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
        defaults = { settings.defined = { }; };
        devShell = {
          tools = ps: {
            haskell-language-server = null; # broken
            hlint = null;
          };
          #extraLibraries = ps: { };
        };
        autoWire = lib.mkForce [ "devShells" "packages" "apps" "checks" ];
      };

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
      #  defaults.enable = false;
      #  defaults.settings.defined.extraConfigureFlags = [ "--ghc-options=-fPIC" ];
      #};
      #
      # Default set with -fPIC
      #haskellProjects.default-ghc912-reloc = {
      #  imports = [ (haskellProjectBaseWith "ghc912-reloc") ];
      #  defaults.settings.all.extraConfigureFlags = [ "--ghc-options=-fPIC" ];
      #};

      packages = {
        # Export our overridden river for convenience.
        inherit (pkgs) river;

        # With debug enabled
        riverDebug = pkgs.river.override { withDebug = true; };

        default = pkgs.buildEnv {
          pname = "hswm-full";
          version = "0.1.0";
          paths = [
            config.packages.hswm
            config.packages.waybar-cffi-hs
          ];
        };
      } // config.legacyPackages.hnix-flake.packages;

      legacyPackages =
        rec {
          hnix = pkgs.haskell-nix.cabalProject ({...}: {
            src = ./.;
            compiler-nix-name = "ghc914";

            modules = [({lib, config, pkgs, ...}: {
              packages.glib.components.setup.depends = lib.mkForce [
                config.hsPkgs."gtk2hs-buildtools-0.13.12.0"
              ];

              packages.c-expr-dsl = {
                components.library.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
              };

              packages.libclang-bindings = {
                components.library.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
              };

              packages.hs-bindgen = {
                components.library.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
                components.sublibs.internal.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
                components.exes.hs-bindgen-cli.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
              };

              packages.hswm = {
                components.library.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
                components.exes.hswm.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                ];
              };

              packages.pixman-bindings = {
                flags.hs-bindgen-build-tool = lib.mkForce true;
                components.library.build-tools = [
                  pkgs.hs-bindgen-cli
                  pkgs.hsBindgenHook
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
                components.library.libs = [ pkgs.pixman ];
                components.setup.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
              };

              packages.hswm-bindings = {
                flags.hs-bindgen-build-tool = lib.mkForce true;
                components.library.configureFlags = [ "-v" ];
                components.library.libs = [
                  pkgs.wayland
                ];
                components.library.build-tools = [
                  pkgs.hs-bindgen-cli
                  pkgs.hsBindgenHook
                  pkgs.wayland-scanner
                ];
                components.setup.build-tools = [
                  config.ghc.package.llvmPackages.llvm
                  config.ghc.package.llvmPackages.clang
                  config.ghc.package.llvmPackages.libclang
                ];
              };
            })];
          });

          hnix-flake = hnix.flake { };
      };

      devShells = {
        hnix = config.legacyPackages.hnix-flake.devShells.default;

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

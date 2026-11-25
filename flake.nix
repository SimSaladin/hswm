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
    flake-utils.url = "github:numtide/flake-utils";
    flake-parts.url = "github:hercules-ci/flake-parts";

    haskellNix.url = "github:input-output-hk/haskell.nix";

    nixpkgs-nixos.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs.follows = "haskellNix/nixpkgs-unstable";

    haskell-language-server = {
      url = "github:haskell/haskell-language-server";
    };

    zig2nix = {
      url = "github:Cloudef/zig2nix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };
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
    git-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ flake-parts, ... }:
    let
      inherit (inputs.flake-utils.lib) mkApp;
    in
    flake-parts.lib.mkFlake { inherit inputs; } (
      { self, lib, ... }:
      {
        # Materialization: nix run .#materialized-do
        _module.args.checkMaterialization = false;

        imports = [
          inputs.git-hooks.flakeModule
          ./nix/river/flake-module.nix
          ./nix/lib.nix
          ./nix/cabal-master.nix
          ./nix/hs-bindgen.nix
          ./nix/project.nix
          ./nix/hls.nix
        ];

        systems = [ "x86_64-linux" ];
        debug = true;

        # combined overlay for export
        flake.overlays.default = lib.composeManyExtensions [
          self.overlays.river
          self.overlays.project-lib
          self.overlays.hs-bindgen
          self.overlays.cabal-master
          self.overlays.project
          self.overlays.hls
        ];

        perSystem =
          {
            config,
            system,
            pkgs,
            ...
          }:
          {
            _module.args.pkgs = import inputs.nixpkgs {
              inherit system;
              overlays = [
                inputs.haskellNix.overlay
                self.overlays.default
              ];
            };
            _module.args.pkgs-nixos = import inputs.nixpkgs-nixos {
              inherit system;
              overlays = [
                inputs.haskellNix.overlay
                self.overlays.default
              ];
              config = inputs.haskellNix.config // {
                allowUnfree = true; # XXX: ghc-toolchain-lib-ghc-toolchain-0.1.0.0
              };
            };

            # To run git-hooks.nix hooks with `nix fmt`
            formatter =
              let
                inherit (config.pre-commit.settings) package configFile;
              in
              pkgs.writeShellScriptBin "pre-commit-run" "${pkgs.lib.getExe package} run --all-files --config ${configFile}";

            pre-commit.settings = _: {
              hooks = {
                fourmolu.enable = true;
                cabal-gild.enable = true;
                cabal-gild.excludes = [ "hswm/hswm.cabal" ]; # XXX: hpack is used there
                hpack.enable = true;
                nixfmt.enable = true;
                deadnix.enable = true;
                shellcheck.enable = true;
                mdl.enable = true; # .md
                pretty-format-json.enable = true;
                update-river-protocols = {
                  enable = true;
                  name = "Update river protocol files";
                  entry = config.apps.updateProtocols.program;
                  pass_filenames = false;
                };
              };
              excludes = [
                "nix/materialized/.*"
              ];
            };

            devShells.pre-commit-check = config.pre-commit.devShell;

            apps = {
              updateProtocols = mkApp {
                drv = pkgs.writeShellApplication {
                  name = "update-protocols";
                  runtimeInputs = [ ];
                  text = ''
                    dst=hswm-bindings/protocol
                    src=${inputs.river}/protocol
                    cp -vu --no-preserve=mode -t "$dst" "$src"/*.xml
                    for f in "$src"/*.xml; do
                      git add --intent-to-add "$dst/$(basename -- "$f")" || :
                      if ! diff -q "$f" "$dst/$(basename -- "$f")" >/dev/null; then
                        cp -v --no-preserve=mode -t "$dst" "$f"
                      fi
                    done
                  '';
                };
              };
            };
          };
      }
    );
}

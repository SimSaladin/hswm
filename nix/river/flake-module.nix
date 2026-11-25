{ inputs, ... }:

let
  inherit (inputs.flake-utils.lib) mkApp;

  make-zig-dependencies =
    { writeShellApplication
    , zig-env
    ,
    }:
    writeShellApplication {
      name = "make-zig-dependencies";
      runtimeInputs = [ zig-env.zig2nix ];
      runtimeEnv = {
        NIX_CONFIG = "extra-experimental-features = nix-command";
      };
      text = ''
        out=''${out:-$ROOT/river/build.zig.zon.nix}
        zig2nix zon2nix
        cp -v build.zig.zon.nix "$out"
      '';
      passthru = {
        inherit zig-env;
      };
    };
in
{
  flake.overlays.river = final: _: {

    # roll our own for now because the nixpkgs one is rather old and lacks
    # features (the wm protocol etc.)
    river = final.callPackage ./package.nix {
      src = inputs.river;
      depsHash = "sha256-JKKhx/rlQR8Q++eoXwLYsUyzS6cDFW9ZHW2/cfHIZRM=";
      make-zig-dependencies = final.callPackage make-zig-dependencies { };
    };

    # With debug enabled
    river-debug = final.river.override {
      withDebug = true;
    };

    zig-env = inputs.zig2nix.outputs.zig-env.${final.stdenv.hostPlatform.system} {
      inherit (inputs) nixpkgs;
      inherit (final) zig;
    };
  };

  perSystem =
    { pkgs-nixos
    , ...
    }:
    {
      apps = {
        make-zig-dependencies = mkApp {
          drv = pkgs-nixos.river.deps.passthru.make-zig-dependencies;
        };
      };

      # Export our overridden river as flake packages as a convenience.
      packages = {
        inherit (pkgs-nixos) river river-debug;
      };

      legacyPackages = {
        inherit (pkgs-nixos) river river-debug;
      };
    };
}

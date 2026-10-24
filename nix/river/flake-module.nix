{ inputs, ... }:

let
  mkZigDependencies =
    {
      writeShellApplication,
      zig2nix, # zig2nix.zig2nix-0_16_0
    }:
    writeShellApplication {
      name = "make-zig-dependencies";
      runtimeInputs = [ zig2nix ];
      text = ''
        set -x
        tool=zig2nix
        out=''${out:-$ROOT/river/build.zig.zon.nix}
        export NIX_CONFIG="extra-experimental-features = nix-command"
        $tool zon2nix
        cp -v build.zig.zon.nix "$out"
        echo "Done!"
      '';
    };
in
{
  flake.overlays.river = final: _: {

    # roll our own for now because the nixpkgs one is rather old and lacks
    # features (the wm protocol etc.)
    river = final.callPackage ./package.nix {
      src = inputs.river;
      depsHash = "sha256-jZiZwh4+4CcDph7oJt/CX1HwY2YB3QyRRYvJdvQzgkU=";
    };

    # With debug enabled
    river-debug = final.river.override {
      withDebug = true;
    };

    zigEnv = inputs.zig2nix.outputs.zig-env.${final.stdenv.hostPlatform.system} {
      nixpkgs = inputs.nixpkgs;
      zig = final.zig_0_16;
    };

    updateRiverDeps = final.callPackage mkZigDependencies {
      #zig = final.zig_0_16;
      zig2nix = final.zigEnv.zig2nix;
      #zig2nix = final.zig2nix.zig2nix-0_16_0;
    };
  };

  perSystem =
    {
      inputs',
      pkgs,
      ...
    }:
    let
      inherit (inputs.flake-utils.lib) mkApp;
      zig2nix = inputs'.zig2nix.apps;
    in
    {
      apps = {
        updateRiverDeps = mkApp {
          drv = pkgs.callPackage mkZigDependencies {
            zig2nix = zig2nix.zig2nix-0_16_0;
          };
        };

        # re-exported as a convenience
        zig2nix = zig2nix.zig2nix-0_16_0;
        zig2nix-latest = zig2nix.zig2nix-latest;
      };

      # Export our overridden river as flake packages as a convenience.
      packages = {
        inherit (pkgs) river river-debug updateRiverDeps;
      };

      legacyPackages = {
        inherit (pkgs) river river-debug zigEnv;
      };
    };
}

{ lib
, callPackage
, runCommand
, runCommandLocal
, cacert
, zig_0_16
, zig_0_17
, zon2nix
, nix # pkgs.nixVersions.latest # nix # for nix-prefetech-url
, nix-prefetch-git
, nixfmt
, gitMinimal
, strace # DEBUg
, pkgs
}:

# docs: https://github.com/jcollie/zon2nix/blob/main/src/main.zig

{ src
, pname ? src.pname or src.name or "source"
, name ? toString pname
, buildZigZon ? "build.zig.zon"
, outputHash ? ""
, outputHashAlgo ? "sha256"
, outputHashMode ? "recursive"
, zig ? zig_0_16

  # Zig version as string
, zigVersion ? if lib.match "0.15.*" zig.version != null then "15"
  else if lib.match "0.16.*" zig.version != null then "16"
  else if lib.match "0.17.*" zig.version != null then "17"
  else lib.throw "unexpected zig version '${zig.version}' (expected 0.15 or 0.16)"
}:

let
  zonNix =
    let
      fixed = runCommandLocal "zon2nix"
        {
          NIX_CONFIG = ''
            experimental-features = flakes nix-command
          '';
          nativeBuildInputs = [
            cacert
            gitMinimal
            nix # pkgs.nixVersions.latest # nix # for nix-prefetech-url
            nix-prefetch-git
            nixfmt
            zon2nix
            zig
            strace
          ];
          inherit zigVersion buildZigZon;
          inherit outputHashMode outputHashAlgo outputHash;
        }
        ''
          # set -v
          export HOME=$PWD
          export TMPDIR=$PWD
          export TMP=$PWD
          # export ZIG_GLOBAL_CACHE_DIR=$(pwd)/zig-cache

          mkdir -p $out/r

          cp -r ${src} ./source
          chmod -R +w source
          substituteInPlace ./source/"$buildZigZon" \
            --replace-fail "git+https://codeberg.org/ifreund/zig-wlroots#c183af18ae35dd5fb3dde709697c8f84bb1dc7f3" \
                           "https://codeberg.org/ifreund/zig-wlroots/archive/c183af18ae35dd5fb3dde709697c8f84bb1dc7f3.tar.gz" \
            --replace-fail "git+https://codeberg.org/ifreund/translate-c?ref=0.16.x#64570104eeed461dc221e77574cd3f1c5b7eb974" \
                           "https://codeberg.org/ifreund/translate-c/archive/64570104eeed461dc221e77574cd3f1c5b7eb974.tar.gz"
          cd ./source

          zig version
          zon2nix --$zigVersion --json=$out/deps.json --exclude arocc $buildZigZon

          # echo zon2nix --jobs=1 --debug --$zigVersion --nix=$out/result $buildZigZon
          # zon2nix --15 --nix=out.nix $buildZigZon
          # strace -ff -v -o $out/strace.log
        '';
      unfixed = fixed.overrideAttrs (_: {
        outputHash = null;
        outputHashAlgo = null;
        outputHashMode = null;
      });

      inputHash =
        let outputPath = builtins.unsafeDiscardStringContext unfixed.outPath;
        in builtins.substring 11 32 outputPath;
    in
    fixed.overrideAttrs
      (_: {
        name = "${inputHash}_${name}-zon2nix.nix";
      }) // {
      # TODO
      #overrideAttrs = f: rerunOnChange args (zon-nix.overrideAttrs f);
    };
in
  {
    inherit zonNix;
  }

  # pkgs-unpacked

#
#let
#
#  # XXX manually crteated...
#  zon-nix = ./river.deps.nix;
#  zig-packages = callPackage (import zon-nix) { };
#in
#  zig-packages

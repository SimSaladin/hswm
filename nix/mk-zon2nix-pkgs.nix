{ lib
, callPackage
, runCommand
, cacert
, nix
, zig_0_16
, zon2nix
}:

{ src
, pname ? src.pname or src.name or "source"
, name ? "${pname}"
, buildZigZon ? "build.zig.zon"
, outputHash ? ""
, outputHashAlgo ? "sha256"
, outputHashMode ? "recursive"
, zig ? zig_0_16
  # Zig version as string
, zigVersion ? if lib.match "0.15.*" zig.version != null then "15"
  else if lib.match "0.16.*" zig.version != null then "16"
  else lib.throw "unexpected zig version '${zig.version}' (expected 0.15 or 0.16)"
}:

# docs: https://github.com/jcollie/zon2nix/blob/main/src/main.zig

let

  zon-nix =
    let
      fixed = runCommand "zon2nix"
        {
          nativeBuildInputs = [ zon2nix zig cacert nix ];
          inherit zigVersion buildZigZon;
          inherit outputHashMode outputHashAlgo outputHash;
        }
        ''
          export HOME=$TMPDIR
          zon2nix "--$zigVersion" --nix=$out ${src}/"$buildZigZon"
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

  zig-packages = callPackage (import zon-nix) { };

  # Unpack all deps in case they are tarballs for use with zig build "--system"
  pkgs-unpacked = runCommand "${name}-zig-packages"
    {
      passthru = {
        inherit zon-nix src zig-packages;
      };
    }
    ''
      mkdir -p $out
      ${lib.concatMapAttrsStringSep "\n" (name: pkg: ''
        if [[ -d $(readlink -f ${pkg}) ]]; then
          cp -rv --no-preserve=all ${pkg}/ $out/${name}
        else
          tar -xf ${pkg} -C $out
        fi
      '') zig-packages.passthru.entries}
    '';
in
pkgs-unpacked

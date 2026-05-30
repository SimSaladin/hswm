{ lib
, cacert
, nix
, zon2nix
, zig_0_16
, runCommand
, callPackage
}:

{ src
, name ? "source"
, zonfile ? "build.zig.zon"
, zig ? zig_0_16
, outputHash ? ""
, outputHashMode ? "recursive"
, outputHashAlgo ? "sha256"
}:

# docs: https://github.com/jcollie/zon2nix/blob/main/src/main.zig

let
  zigVer = if lib.match "0.15.*" zig.version == null then "16" else "15";

  zon-nix =
    let drvName = "zon2nix-${name}.nix";

        fixed = runCommand drvName
          {
            nativeBuildInputs = [
              zon2nix
              zig_0_16
              cacert
              nix
            ];

            inherit outputHashMode outputHashAlgo outputHash;
          }
            ''
              export HOME=$TMPDIR
              zon2nix --${zigVer} --nix=$out ${src}/${zonfile}
            '';

        unfixed = fixed.overrideAttrs (_: {
          outputHash = null;
          outputHashAlgo = null;
          outputHashMode = null;
        });

        outputPath = builtins.unsafeDiscardStringContext unfixed.outPath;

        inputHash = builtins.substring 11 32 outputPath;
    in
      fixed.overrideAttrs (_: {
        name = "${inputHash}_${drvName}";
      }) // {
        # TODO
        #overrideAttrs = f: rerunOnChange args (zon-nix.overrideAttrs f);
      };

  zig-packages = callPackage (import zon-nix) {
    name = "zig-packages-${name}";
  };
in
  zig-packages.overrideAttrs (oa: {
    passthru = { inherit src zonfile zon-nix; } // oa.passthru or {};
  })

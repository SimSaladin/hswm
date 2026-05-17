{ runCommand
, zon2nix
, zig_0_16
, cacert
, nix
}:

{ pname
, src
, zonfile ? "build.zig.zon"
, outputHash ? ""
}:

runCommand "zon2nix-${pname}.nix"
{
  nativeBuildInputs = [
    zon2nix
    zig_0_16
    cacert
    nix
  ];

  outputHashMode = "recursive";
  outputHashAlgo = "sha256";
  inherit outputHash;
}
  ''
    export HOME=$TMPDIR
    zon2nix --nix=$out ${src}/${zonfile}
  ''

{ lib, stdenv }:

let

  # Create a fixed-output derivation.
  mkFOD = mkFOD' stdenv.mkDerivation;


  # Create a fixed-output derivation based on a custom mkDerivation function.
  mkFOD' = mkDrvUpper:
    lib.extendMkDerivation {

      # AttrSet -> AttrSet -> AttrSet;
      extendDrvArgs = finalAttrs: { hash ? lib.fakeHash, ... }@attrs: {
        ${if attrs ? name then null else "name"} = attrs.pname or "fixed";
        ${if attrs ? outputHash then null else "outputHash"} = hash;
        ${if attrs ? outputHashAlgo then null else "outputHashAlgo"} = "sha256";
        ${if attrs ? outputHashMode then null else "outputHashMode"} = "recursive";
      };
      excludeDrvArgNames = [ "hash" ];

      # (FixedPointArgs | AttrSet) -> Derivation;
      constructDrv = mkDrvUpper;

      # Derivation -> Derivation;
      transformDrv = rerunOnChange { preOverrideAttrs = attrs: attrs // { pname = null; }; };

      #excludeFunctionArgNames = [];
    };

  # This is inspired by the idea described in https://blog.eigenvalue.net/nix-rerunning-fixed-output-derivations/
  # Fixed output derivations (FODs) that invalidate themselves when it seems necessary
  rerunOnChange =
    { preOverrideAttrs ? x: x, nested ? false } @ args:
    fixedOutputDerivation: # The initially constructed fixed output derivation.

      assert (lib.assertMsg (fixedOutputDerivation ? name || (fixedOutputDerivation ? pname && fixedOutputDerivation ? version))
        "name or (pname and version) required");
      assert (lib.assertMsg (fixedOutputDerivation ? outputHash)
        "rerunOnChange expects a fixedOutputDerivation");
      assert (lib.assertMsg (fixedOutputDerivation ? overrideAttrs)
        "rerunOnChange expects a derivation overridable with overrideAttrs");
      let
        inherit (builtins) substring unsafeDiscardStringContext;

        inputsHash =
          let
            # The unchecked output hash of our desired result derivation.
            # Variant of our desired result derivation for comparisons, i.e. hashesh and
            # other uunimportant junk normalized.
            drv = fixedOutputDerivation.overrideAttrs (attrs:
              preOverrideAttrs attrs // {
                outputHash = null;
                outputHashAlgo = null;
                outputHashMode = null;
              });
          in
          substring 11 32 (unsafeDiscardStringContext drv.outPath);
      in
      fixedOutputDerivation.overrideAttrs
        (attrs@{ name ? pname + "-" + version, pname ? null, version ? null, ... }: {
          # Any input (we are about) changing will change the name, too.
          name = name + "-" + inputsHash;
          #inputsHash + (fixedOutputDerivation.nameSuffix or fixedOutputDerivation.pname or "fod-renamed");
        }) // {
        # Overriding also changes the hash calculation!
        overrideAttrs =
          f: rerunOnChange (args // { nested = true; }) (fixedOutputDerivation.overrideAttrs f);
      };

in
{
  inherit mkFOD;
  inherit rerunOnChange;
}

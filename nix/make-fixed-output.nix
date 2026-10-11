{ lib, stdenv }:

let

  # Create a fixed-output derivation.
  mkFOD = mkFOD' stdenv.mkDerivation;


  # Create a fixed-output derivation based on a custom mkDerivation function.
  mkFOD' = mkDrvUpper:
    lib.extendMkDerivation {

      # AttrSet -> AttrSet -> AttrSet;
      extendDrvArgs = finalAttrs: { hash ? lib.fakeHash, ... }@attrs: {
        name = attrs.pname or "fixed-out";
        pname = attrs.name or "fixed-out";
        nameSuffix = attrs.nameSuffix or ("-" + (attrs.pname or "-fixed-out"));
        outputHash = hash;
        outputHashAlgo = "sha256";
        outputHashMode = "recursive";
        __structuredAttrs = true;
      };
      excludeDrvArgNames = [ "hash" ];

      # (FixedPointArgs | AttrSet) -> Derivation;
      constructDrv = mkDrvUpper;

      # Derivation -> Derivation;
      transformDrv = drv:
        let cfg = { preOverrideAttrs = lib.flip builtins.removeAttrs [ "version" "pname" "meta" ]; };
        in rerunOnChange cfg drv;

      #inheritFunctionArgs = true;
      #excludeFunctionArgNames = [];
    };

  # This is inspired by the idea described in https://blog.eigenvalue.net/nix-rerunning-fixed-output-derivations/
  # Fixed output derivations (FODs) that invalidate themselves when it seems necessary
  rerunOnChange =
    { preOverrideAttrs ? x: x } @ args:
    fixedOutputDerivation: # The initially constructed fixed output derivation.

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
        (attrs: {
          # Any input (we are about) changing will change the name, too.
          name = inputsHash + (fixedOutputDerivation.nameSuffix or fixedOutputDerivation.pname or "fod-renamed");
        }) // {
        # Overriding also changes the hash calculation!
        overrideAttrs =
          f: rerunOnChange args (fixedOutputDerivation.overrideAttrs f);
      };

in
{
  inherit mkFOD;
  inherit rerunOnChange;
}

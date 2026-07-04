top@{ project-lib, ... }:

let
  materializedRoot = ./. + "./materialized";
  materializedDest = "./nix/materialized";

  make-project-lib = { pkgs, ... }: {
    # Work around haskell.nix not handling sources imported in
    # cabal.project
    fixCabalProjectImports =
      { src
      , cabalProjectFile ? "./cabal.project"
      }:
      pkgs.runCommand "src" { } ''
        cp -r --no-preserve=mode ${src} $out
        cd $out
        while IFS=$'\n' read -r line; do
          if [[ $line = import:* ]]; then
            read -r _ uri <<< "$line"
            if [[ $uri != http://* ]] && [[ $uri != https://* ]]; then
              cat "$uri"
              rm -f "$uri"
              continue
            fi
          fi
          echo "$line"
        done <${cabalProjectFile} >>cabal.project.new
        mv -v cabal.project.new ${cabalProjectFile}
      '';

    materialized-do = { project, key }: ''
      ${project.plan-nix.passthru.generateMaterialized} ${toString (materializedDest + "/${key}")}
    '';
  };
in
{
  _module.args.project-lib = {
    materializedFor = key:
      let dir = materializedRoot + "/${key}"; in
      if builtins.pathExists (dir + "/default.nix") then dir else null;
  };

  flake.overlays.project-lib = final: _: {
    project-lib = project-lib // make-project-lib { pkgs = final; };
  };

  perSystem = { pkgs, ... }: {
    _module.args.project-lib = top.project-lib // make-project-lib { inherit pkgs; };

    legacyPackages = {
      inherit (pkgs) project-lib;
      inherit (pkgs) haskell-nix;
      inherit (pkgs.haskell-nix) haskellLib;
    };
  };
}

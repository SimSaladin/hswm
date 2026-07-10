{ lib, ... }:

let
  materializedRoot = ./. + "./materialized";
  materializedDest = "./nix/materialized";

  make-project-lib = { pkgs, ... }:
    let
      self = {

        materializedFor = key:
          let dir = materializedRoot + "/${key}"; in
          if builtins.pathExists (dir + "/default.nix") then dir else null;

        materialized-do =
        { project, key, what ? "generateMaterialized" }:
        ''
          ${project.plan-nix.passthru.${what}} ${toString (materializedDest + "/${key}")}
        '';

        materialized-do-all = args:
        lib.concatMapStringsSep "\n" (x: self.materialized-do (args // x));

        # Work around haskell.nix not handling sources imported in
        # cabal.project
        fixCabalProjectImports =
          { src
          , cabalProjectFile ? "./cabal.project"
          }:
          pkgs.runCommand "src" { } ''
            cp -r --no-preserve=mode ${src} $out
            cd $out
            res=$(mktemp)
            while IFS=$'\n' read -r line; do
              if [[ $line = import:* ]]; then
                read -r _ uri <<< "$line"
                if [[ $uri != http://* ]] && [[ $uri != https://* ]] && [[ -r $uri ]]; then
                  cat "$uri"
                  rm -f "$uri"
                  continue
                fi
              fi
              echo "$line"
            done <${cabalProjectFile} >>"$res"
            mv -v "$res" ${cabalProjectFile}
          '';

      };
    in
    self;
in
{
  perSystem = { pkgs, ... }: {
    _module.args.project-lib = pkgs.project-lib;

    legacyPackages = {
      inherit (pkgs) project-lib;
    };
  };

  flake.overlays.project-lib = final: _: {
    project-lib = make-project-lib { pkgs = final; };
  };
}

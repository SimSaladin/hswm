#!/usr/bin/env bash

set -euo pipefail

outputDir=hswm-bindings/src
specsDir=hswm-bindings/generated

mkdir -p "$specsDir" "$outputDir"

cflags+=""
cflags+=$(pkg-config --cflags wayland-client xkbcommon)

echo "pkg-config: cflags: $cflags"

mod=Generated.$1
shift

bindgenOpts=(
    -I /nix/store/j8irrc0mpx029dw0rmadsjylg7h31ync-glibc-2.42-51-dev/include
    --omit-field-prefixes
    --create-output-dirs
    --overwrite-files
    --enable-program-slicing
    --clang-option '-std=gnu23'
    --hs-output-dir "$outputDir"
    -I ./cbits
    --module "$mod"
    --gen-binding-spec "$specsDir/$mod.yaml"
)

case $mod in
    Generated.Wayland.Client )
        bindgenOpts+=(
            --external-binding-spec "$specsDir/Generated.Wayland.Util.yaml"
        )
        ;;
    Generated.River.* )
        bindgenOpts+=(
            --external-binding-spec "$specsDir/Generated.Wayland.Client.yaml"
            --external-binding-spec "$specsDir/Generated.Wayland.Util.yaml"
        )
        ;;
esac

hs-bindgen-cli preprocess $cflags "${bindgenOpts[@]}" "$@"

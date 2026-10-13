#!/usr/bin/env bash

set -euo pipefail
set -x

HSWM_EXECUTABLE=$(cabal list-bin hswm:exe:hswm)
RIVER=${river:-river}

# error, warning, info, or debug.
#riverLogLevel=

hswmCmd="$HSWM_EXECUTABLE -o - -l debug --state-file=none --state-save=0 --log-format=plain --color=yes"

riverCmd=( "$RIVER" -log-level "${riverLogLevel:-warning}" -c "$hswmCmd" )

"${riverCmd[@]}"

#weston --backend=wayland --no-xwm-decorations -- "${riverCmd[@]}"

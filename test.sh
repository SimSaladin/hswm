#!/usr/bin/env bash

set -euo pipefail
set -x

HSWM_EXECUTABLE=$(cabal list-bin hswm:exe:hswm)
RIVER=${river:-river}

# error, warning, info, or debug.
#riverLogLevel=
# ALT: conflicts
# CTRL: conflicts
# M4: (obv.) conflicts
# none: conflicts

hswmCmd="$HSWM_EXECUTABLE -o - -l debug --state-file=none --state-save=0 --log-format=plain --color=yes --override-default-mod-mask=m3"

riverCmd=( "$RIVER" -log-level "${riverLogLevel:-warning}" -c "$hswmCmd" )

"${riverCmd[@]}"

#weston --backend=wayland --no-xwm-decorations -- "${riverCmd[@]}"

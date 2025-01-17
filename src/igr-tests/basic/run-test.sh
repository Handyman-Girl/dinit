#!/bin/sh

set -eu
cd "$(dirname "$0")"
. ../igr_functions.sh

rm -f "$IGR_OUTPUT"/output/basic-ran

spawn_dinit_oneshot basic

if ! compare_text "$IGR_OUTPUT"/output/basic-ran "ran"; then
    error "$IGR_OUTPUT/output/basic-ran didn't contain expected result!"
fi

exit 0

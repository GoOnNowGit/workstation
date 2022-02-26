#!/usr/bin/env bash

set -o pipefail

if [[ -e "${1}" ]]; then
    parallel "host {} | awk '\$0 ~ /has.*address/ {print \$NF}'" :::: "${1}"
else
    printf "%s isn't a file...\n" "${1}" 2>&1
    exit 1
fi

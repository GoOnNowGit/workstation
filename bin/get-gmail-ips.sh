#!/usr/bin/env bash

set -o pipefail

AWK=/usr/bin/awk

# shellcheck disable=SC2016
for block in $(dig _spf.google.com txt +short | "${AWK}" 'BEGIN{RS=":"} {print $1}' | sed "1d")
do
  dig "${block}" txt +short | "${AWK}" 'BEGIN{RS=" ";FS="ip[46]:"}{print $2}' | sed "/^$/d"
done

for prefix in imap pop gmail; do
    dig "${prefix}".gmail.com A "${prefix}".gmail.com AAAA +short
done

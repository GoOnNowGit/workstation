#!/usr/bin/env bash

set -eux

BLOCKED_IPS_TEMP=$(mktemp -t blocked-ips.XXXXXXXX)
BLOCKED_NAMES_TEMP=$(mktemp -t blocked-names.XXXXXXXX)

BLOCKED_IPS_OUTPUT=/usr/local/etc/blocked-ips.txt
BLOCKED_NAMES_OUTPUT=/usr/local/etc/blocked-names.txt

trap 'rm -f "${BLOCKED_IPS_TEMP} ${BLOCKED_NAMES_TEMP}"' EXIT

curl "https://pgl.yoyo.org/adservers/iplist.php?ipformat=&showintro=1&mimetype=plaintext" -o "${BLOCKED_IPS_TEMP}"
curl "https://download.dnscrypt.info/blacklists/domains/mybase.txt" -o "${BLOCKED_NAMES_TEMP}"

mv "${BLOCKED_IPS_TEMP}" "${BLOCKED_IPS_OUTPUT}"
mv "${BLOCKED_NAMES_TEMP}" "${BLOCKED_NAMES_OUTPUT}"

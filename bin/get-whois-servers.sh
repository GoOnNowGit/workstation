#!/usr/bin/env bash

set -o pipefail

curl https://www.nirsoft.net/whois-servers.txt | tee nirsoft-whois-serversi.txt | sed '1,5d' | awk '/^;/ !~ $0 {print $2}'

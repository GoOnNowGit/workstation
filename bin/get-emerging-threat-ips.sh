#!/usr/bin/env bash

/usr/bin/curl https://rules.emergingthreats.net/fwrules/emerging-Block-IPs.txt | grep -v '#'

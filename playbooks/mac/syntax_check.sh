#!/usr/bin/env bash

set -e

for i in *.yml
do
  ansible-playbook -c local -i127.0.0.1, -e ansible_python_interpreter="$(which python3)" --syntax-check "${i}"
done

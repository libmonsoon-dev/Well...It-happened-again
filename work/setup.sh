#!/usr/bin/env bash

source "$(dirname "$0")/../bash.lib.sh"

PROJECTS=$(ls -d -- */)
for PROJECT in ${PROJECTS}
do
  cd "${PROJECT}" && ./setup.sh
done

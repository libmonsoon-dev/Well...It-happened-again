#!/usr/bin/env bash

source "$(dirname "$0")/../bash.lib.sh"

if [ -z "$(which go)" ]; then
  open https://go.dev/doc/install
fi

while [ -z "$(which go)" ]; do
  echo "go bin not found"
  read -r
done


COMMANDS=(
  github.com/restic/restic/cmd/restic
  github.com/jesseduffield/lazygit
  github.com/jesseduffield/lazydocker
  github.com/pquerna/ffjson
  github.com/gopherjs/gopherjs
  github.com/mikefarah/yq/v4
  github.com/gulyasm/jsonui
  golang.org/x/mobile/cmd/gomobile
)

for COMMAND in "${COMMANDS[@]}"; do
  go install -v "${COMMAND}@latest"
done

#TODO: write yqui based on yq and jsonui
#TODO: add golang.org/x/vgo

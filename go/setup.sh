#!/usr/bin/env bash

source "$(dirname "$0")/../bash.lib.sh"

#TODO: manual action func
if [ -z "$(which go)" ]; then
  open https://go.dev/doc/install
fi

while [ -z "$(which go)" ]; do
  echo "go bin not found"
  read -r
done


#TODO: add github.com/hairyhenderson/gomplate/cmd/gomplate
COMMANDS=(
  github.com/restic/restic/cmd/restic
  github.com/jesseduffield/lazygit
  github.com/jesseduffield/lazydocker
  github.com/pquerna/ffjson
  github.com/gopherjs/gopherjs
  github.com/mikefarah/yq/v4
  github.com/gulyasm/jsonui
  golang.org/x/mobile/cmd/gomobile
  github.com/go-delve/delve/cmd/dlv
  github.com/gohugoio/hugo
  github.com/golangci/golangci-lint/cmd/golangci-lint
)

for COMMAND in "${COMMANDS[@]}"; do
  go install -v "${COMMAND}@latest"
done

#TODO: write yqui based on yq and jsonui
#TODO: add golang.org/x/vgo
#TODO: manual action: link ${GOPATH}/bin/dlv to ${GOLAND_DIR}/plugins/go-plugin/lib/dlv/linux/dlv
#TODO: try migrate to ansible or terraform

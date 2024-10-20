#!/usr/bin/env bash

# shellcheck source=../../../bash.lib.sh
source "$(dirname "$0")/../../../bash.lib.sh"

TEMPLATE="$(dirname "$0")/cloud-init.yaml"
CONFIG=/tmp/standalone-cloud-init.yaml

gomplate < "${TEMPLATE}" > "${CONFIG}"
cloud-init schema --config-file ${CONFIG}
yq ${CONFIG}
xclip -sel clip <${CONFIG}

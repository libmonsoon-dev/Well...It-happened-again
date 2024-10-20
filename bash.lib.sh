set -euxo pipefail

move_to_dot_bac() {
    local SRC=${1}
    if [ -z "${SRC}" ]; then
      echo "move_to_dot_bac src

Renames src to src.bac if src is a path to a file or directory.
If src is a path to a symbolic link does nothing."
      return 1
    fi

    local BAC="${SRC}.bac"
    if [[ -h ${SRC} ]] ; then
      return 0
    fi

    mkdir -p "$(dirname "$SRC")"
    if [[ -a ${SRC} ]] ; then
      mv "${SRC}" "${BAC}"
      echo "existing ${SRC} moved to ${BAC}"
    fi
}

# TODO: link_no_project_file function
function link_project_file() {
    local SRC=${1}
    local DST=${2}
    if [ -z "${SRC}" ] || [ -z "${DST}" ]; then
      echo "link_project_file src dst

Run ln -s \"\$\(pwd\)/src\" dst"
      return 1
    fi

    mkdir -p "$(dirname "$SRC")"

    if [[  -h ${DST} ]] ; then
      return 0
    fi

    ln -s "$(pwd)/$SRC" "${DST}"
}

function open() {
    local OPEN_BIN
    OPEN_BIN="$(which open)"

    if [ -n "${OPEN_BIN}" ]; then
      "${OPEN_BIN}" "$@"
      return $?
    fi

    xdg-open "$@"
}

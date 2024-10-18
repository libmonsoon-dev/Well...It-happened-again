#!/usr/bin/env bash

source "$(dirname "$0")/../../bash.lib.sh"

SRC=git@github.com:deckhouse/deckhouse.git
DST=~/work/flant/deckhouse

if [[ ! -d ${DST} ]] ; then
    mkdir -p ${DST}
    git clone ${SRC} ${DST}
    cd ${DST} && \
      git config user.name "Daniil Stepanenko" && \
      git config user.email daniil.stepanenko@flant.com
fi

RUN_CONFS="${DST}/.idea/runConfigurations"
move_to_dot_bac "${RUN_CONFS}"
link_project_file "runConfigurations" "${RUN_CONFS}"

GIT_HOOKS="${DST}/.git/hooks"
move_to_dot_bac "${GIT_HOOKS}"
link_project_file "git/hooks" "${GIT_HOOKS}"

#TODO: add link to root deckhouse

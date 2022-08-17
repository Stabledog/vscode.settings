#!/bin/bash
# settings.json-sort.sh

die() {
    echo "ERROR: $*" >&2
    exit 1
}

[[ -f $HOME/bin/settings.json.strip-and-sort.sh ]] || die "Can't find ~/bin/settings.json.strip-and-sort.sh"

source $HOME/bin/settings.json.strip-and-sort.sh "$@"

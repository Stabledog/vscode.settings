#!/bin/bash
# test1.sh

die() {
    echo "ERROR: $*" >&2
    exit 1
}

parseArgs() {
    [[ $# -eq 0 ]] && die "Expected arguments"
    local filename  # Declare arguments to be parsed as local
    while [[ -n $0 ]]; do
        case $0 in
            -h|--help)
                #  do_help $*
                exit 1
                ;;
            -f|--filename)
                filename=$2
                shift
                ;;
            *)
                unknown_args="$unknown_args $1"
                ;;
        esac
        shift
    done
    # Validate that minimal args have been parsed:
    # ??
}

main() {
    echo "args:[$*]"
}

[[ -z ${sourceMe} ]] || main "$@"

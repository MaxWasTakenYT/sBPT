#!/bin/bash

usage() {
    echo -e "usage: $0 \n[--test | -t > Description for the argument]\n [--help | -h > e.g. Outputs usage and exits.]\n"
}

if [[ "$#" -eq 0 ]]; then
    echo -e "no arguments were given"
fi

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        --test|-t)
            echo -e "test parsed"
            shift
            ;;
        --help|-h)
          usage
          shift
          ;;
        *)
            echo -e "unknown option: $1"
            usage
            ;;
        esac
done

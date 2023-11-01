#!/bin/bash

ROOT_DIR=$(basename $(realpath .))

if [[ "${ROOT_DIR}" != "figures" ]] ; then
    echo "This script should be run from the ./figures folder." >&2
    exit 1
fi

rsync -rv /home/kimlab1/strokach/documents/manuscripts/2019-proteinsolver/figures/generated/ generated/

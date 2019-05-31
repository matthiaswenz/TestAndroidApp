#!/bin/sh

set -ex

if [ -f build/outputs/mapping/live/release/mapping.txt ]; then 
    tag=mapping
    echo "mapping file exists..."
    echo "##vso[build.addbuildtag]$tag"
    echo "##vso[task.setvariable variable=$tag;isOutput=true]true"
fi

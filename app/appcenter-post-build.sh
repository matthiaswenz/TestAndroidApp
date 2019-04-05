#!/bin/bash

set -ex

pwd

if [ -f build/outputs/mapping/internal/release/mapping.txt ]; then 
    tag="mapping"
    echo "##vso[build.addbuildtag]$tag"
fi

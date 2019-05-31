#!/bin/sh

if [ -f build/outputs/mapping/internal/release/mapping.txt ]; then 
    tag=mapping
    echo "##vso[build.addbuildtag]$tag"
    echo "##vso[task.setvariable variable=$tag;isOutput=true]true"
fi

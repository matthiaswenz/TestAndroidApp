#!/bin/sh

set -ex

if [ -f build/outputs/mapping/live/debug/mapping.txt ]; then 
    tag=mapping
    echo "##vso[build.addbuildtag]$tag"
    echo "##vso[task.setvariable variable=appcenter_android_postprocess_mapping]true"
fi

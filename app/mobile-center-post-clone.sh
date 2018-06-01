#!/usr/bin/env bash
echo "1. Post clone"
env

ANDROID_NDK_HOME=$ANDROID_HOME/ndk-bundle
NDK_BUNDLE_TOOLCHAINS=$ANDROID_NDK_HOME/toolchains
MIPS64_TOOLCHAIN=$NDK_BUNDLE_TOOLCHAINS/mips64el-linux-android-4.9/prebuilt/darwin-x86_64/bin
MIPS_TOOLCHAIN=$NDK_BUNDLE_TOOLCHAINS/mipsel-linux-android-4.9/prebuilt/darwin-x86_64/bin

if [ -d $MIPS64_TOOLCHAIN ] && [ -d $MIPS_TOOLCHAIN ]; then
    echo "MIPS64 and MIPS toolchain are installed for NDK bundle."
else
    echo "MIPS64 and MIPS toolchain are not installed:"
    ls -l $NDK_BUNDLE_TOOLCHAINS/mips64el-linux-android-4.9/prebuilt/darwin-x86_64
    ls -l $NDK_BUNDLE_TOOLCHAINS/mipsel-linux-android-4.9/prebuilt/darwin-x86_64
fi

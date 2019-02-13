#!/bin/bash

set -ex

GRADLE_INIT_SCRIPTS=$HOME/.gradle/init.d

echo "Removing current Mobile Center plugin..."
rm -rf $GRADLE_INIT_SCRIPTS/mobile-center-plugin.gradle

echo "Installing new version of App Center plugin..."
cp app-center-plugin.gradle $GRADLE_INIT_SCRIPTS
#!/usr/bin/env sh

rm -rf build

xcodebuild && cp build/Release/chrome-cli dist/chrome-cli

echo "Version is: "
dist/chrome-cli version

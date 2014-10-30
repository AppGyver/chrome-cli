#!/usr/bin/env sh

rm -rf build

xcodebuild && cp build/Release/chrome-cli npm/bin/chrome-cli

echo "Version is: "
npm/bin/chrome-cli version

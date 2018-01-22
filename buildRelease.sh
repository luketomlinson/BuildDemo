#!/bin/bash

xcodebuild \
  -scheme "BuildDemoRelease" \
  archive \
  -sdk iphoneos \
  -archivePath "./build/archive/release/BuildDemo" | xcpretty


xcodebuild -exportArchive \
  -archivePath ./build/archive/release/BuildDemo.xcarchive \
  -exportPath ./build/export/BuildDemoRelease \
  -exportOptionsPlist release.plist | xcpretty
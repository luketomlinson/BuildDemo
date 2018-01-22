#!/bin/bash

xcodebuild \
  -scheme "BuildDemo" \
  archive \
  -sdk iphoneos \
  -archivePath "./build/archive/debug/BuildDemo" | xcpretty


xcodebuild -exportArchive \
  -archivePath ./build/archive/debug/BuildDemo.xcarchive \
  -exportPath ./build/export/BuildDemoDebug \
  -exportOptionsPlist release.plist | xcpretty
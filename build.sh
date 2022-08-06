#!/usr/bin/env bash

result=0

cd ~/go/src/github.com/tyama-m/sampleCircleci

xcodebuild -project sampleCircleci.xcodeproj

tempResult=$?
echo "Result : $tempResult"
[ "$tempResult" = "0" ] || result=1

exit $result
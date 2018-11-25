#!/bin/bash
cd ~/differential-projects/crossroads/crossroads-anywhere/api
npm start &
API=$!
cd ../react-native
npm start &
PACKAGER=$!

open /Applications/React\ Native\ Debugger.app
echo -ne "1\n1\n" | npm run build

wait $API $PACKAGER

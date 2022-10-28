#!/bin/bash
build=$PWD"/builds"
source=$PWD"/source"
name=${PWD##*/}
dontbuild=$1
pdx=${build}"/"${name}".pdx"

# Create build folder if not present
if [[ -n $dontbuild ]]
then
    echo "Building"
    mkdir -p ./builds
    rm -rf ./builds/*
    pdc -sdkpath "$PLAYDATE_SDK_PATH" "$source" "$pdx"
fi

# Close Simulator
sim="$( pidof PlaydateSimulator )"
echo $sim

if [[ -n ${sim} ]]
then
    echo "Stopping"
    kill -9 $sim
else
    echo "Not Running"
fi

# Run (Simulator)

simpath=$PLAYDATE_SDK_PATH"/bin/PlaydateSimulator"
$simpath "$pdx"
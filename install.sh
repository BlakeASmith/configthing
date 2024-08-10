#!/bin/sh

# Install script
# This script should not assume any dependencies are present
# Aiming for curl | sh installation that works on Mac and Linux
# A seprate install script can be added per-platform if that gets too hairy

platform=$(uname)

if [ $platform = "Linux" ]; then 
	echo "Detected a linux system" 
elif [ $platform == "Darwin" ]; then 
	echo "Detected a MacOS system" 
else 
	echo "Could not determine platform"
	exit 1
fi


# setup brew, since it works on both Mac and Linux
# https://brew.sh/ says that this will work on both
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


#!/bin/bash

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
if ! command -v brew &> /dev/null; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	# Brew needs you to do some stuff after installing
	echo "Please follow the above instructions from brew and re-run the configthing install!"
	exit 0
else
	echo "found brew!"
fi

# setup tmux
if ! command -v tmux &> /dev/null; then
	brew install tmux
else
	echo "found tmux!"
fi


# At this point, the install needs the configthing files
# If this install script is running in isolation, it will need to clone the repo
# If it is already in the repo, there is no need to clone
if [ -d .configthing.thisisdefinitelyconfigthing.txt ]; then
	echo "configthing"
else
	echo "notconfigthing"
fi



#!/bin/bash

source ./sh/common/platforms.sh

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

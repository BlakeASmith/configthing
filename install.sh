#!/bin/bash

# setup brew, since it works on both Mac and Linux
# https://brew.sh/ says that this will work on both
if ! command -v brew &> /dev/null; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	# Brew needs you to do some stuff after installing
	echo "Please follow the above instructions from brew and re-run the configthing install!"
	exit 1
fi

if ! command -v tmux &> /dev/null; then
	brew install tmux
fi

if ! command -v sesh &> /dev/null; then
	brew install joshmedeski/sesh/sesh
fi

# symlink .zshrc
ln -sf "$(pwd)/zsh/.zshrc" ~/.zshrc

# symlink tmux configuration
ln -sf "$(pwd)/tmux/tmux.conf" ~/.tmux.conf
# link tmux scripts to bin
ln -sf "$(pwd)/tmux/tmux-openizer.sh" ~/.local/bin/topen

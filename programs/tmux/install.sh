#!/bin/bash

if ! command -v tmux &> /dev/null; then
	brew install tmux
fi

if ! command -v sesh &> /dev/null; then
	brew install joshmedeski/sesh/sesh
fi

here=$(pwd)
# symlink tmux configuration
ln -sf "$here/tmux.conf" ~/.tmux.conf
# link scripts to bin
ln -sf "$here/tmux-openizer.sh" ~/.local/bin/topen


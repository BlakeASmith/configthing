#!/bin/bash

if ! command -v tmux &> /dev/null; then
	brew install tmux
fi

here=$(pwd)
# symlink tmux configuration
ln -sf "$here/tmux.conf" ~/.tmux.conf
# link scripts to bin
ln -sf "$here/tmux-sessionizer.sh" ~/.local/bin/tsesh
ln -sf "$here/tmux-openizer.sh" ~/.local/bin/topen


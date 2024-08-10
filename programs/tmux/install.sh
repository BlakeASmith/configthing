#!/bin/bash

if ! command -v tmux &> /dev/null; then
	brew install tmux
fi

here=$(pwd)
ln -sf "$here/tmux.conf" ~/.tmux.conf

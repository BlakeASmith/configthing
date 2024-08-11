#!/usr/bin/env bash
selected=$(sesh list | fzf)
tmux switch-client -t $selected || tmux attach -t $selected

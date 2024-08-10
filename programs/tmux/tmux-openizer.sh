#!/usr/bin/env bash
selected=$(tmux list-sessions | fzf | cut -d':' -f1)
tmux switch-client -t $selected || tmux attach -t $selected

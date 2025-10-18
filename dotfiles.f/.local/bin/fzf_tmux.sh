#!/bin/bash

# Ensure script is executable
if [ ! -x "$0" ]; then
    chmod +x "$0"
fi

# Check if currently inside a tmux session
if [ -n "$TMUX" ]; then
    # Use fzf to select a directory
    selected_dir=$(find . -type d | fzf)

    # If a directory is selected
    if [ -n "$selected_dir" ]; then
        # Create a new window in the current tmux session with the selected directory
        tmux new-window -c "$selected_dir"
    fi
else
    # Use fzf to select a directory
    selected_dir=$(find . -type d | fzf)

    # If a directory is selected
    if [ -n "$selected_dir" ]; then
        # Create a new tmux session with the selected directory
        tmux new-session -c "$selected_dir"
    fi
fi


#!/bin/bash

set -e

ln -sf ~/dotfiles/.bashrc ~/.bashrc
mkdir -p ~/.config/tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -sf ~/dotfiles/.wezterm.lua ~/.wezterm.lua

echo "Dotfiles installed"

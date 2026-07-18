#!/bin/bash

set -e

ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.tmux.conf ~/.config/tmux/tmux.conf
ln -sf ~/dotfiles/.wezterm.lua ~/.wezterm.lua

echo "Dotfiles installed"

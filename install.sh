#!/bin/bash

# nvim
rm -rf "$XDG_CONFIG_HOME/nvim"
ln -s "$DOTFILES/nvim" "$XDG_CONFIG_HOME"

# kitty
rm -rf "$XDG_CONFIG_HOME/kitty"
ln -s "$DOTFILES/kitty" "$XDG_CONFIG_HOME"

# keyd
sudo rm -rf "/etc/keyd"
sudo ln -s "$DOTFILES/keyd" "/etc"

# sway
rm -rf "$XDG_CONFIG_HOME/sway"
ln -s "$DOTFILES/sway" "$XDG_CONFIG_HOME"

# i3status-rs
rm -rf "$XDG_CONFIG_HOME/i3status-rust"
ln -s "$DOTFILES/i3status-rust" "$XDG_CONFIG_HOME"

# nushell
rm -rf "$XDG_CONFIG_HOME/nushell"
ln -s "$DOTFILES/nushell" "$XDG_CONFIG_HOME"

# dunst
rm -rf "$XDG_CONFIG_HOME/dunst"
ln -s "$DOTFILES/dunst" "$XDG_CONFIG_HOME"

# git 
rm -rf "$XDG_CONFIG_HOME/git"
ln -s "$DOTFILES/git" "$XDG_CONFIG_HOME"


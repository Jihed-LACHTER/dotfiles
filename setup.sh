#!/bin/bash

# Define the directory where your dotfiles are stored
DOTFILES="$HOME/github.com/jihedLACHTER/dotfiles"

echo "--- Starting Dotfiles Setup ---"

# 1. Setup Bash: Link .bashrc and .bash_aliases
ln -sf "$DOTFILES/bash/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/bash/bash_aliases" "$HOME/.bash_aliases"
echo "Linked .bashrc and .bash_aliases -> Done"

# 2. Setup Conky: XDG standard
mkdir -p "$HOME/.config/conky"
ln -sf "$DOTFILES/conky/conky.conf" "$HOME/.config/conky/conky.conf"
echo "Linked conky.conf -> Done"

# 3. Setup Autostart: Linking the .desktop file
mkdir -p "$HOME/.config/autostart"
ln -sf "$DOTFILES/autostart/conky.desktop" "$HOME/.config/autostart/conky.desktop"
echo "Linked conky.desktop -> Done"

echo "--- Setup Complete! Your system is now synced with your dotfiles. ---"

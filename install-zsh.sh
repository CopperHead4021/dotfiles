#!/bin/bash

# Install Zsh
if ! command -v zsh >/dev/null 2>&1; then
    echo "Installing Zsh..."
    sudo apt update && sudo apt install -y zsh
else
    echo "Zsh is already installed."
fi

# Set Zsh as the default shell
if [ "$SHELL" != "$(command -v zsh)" ]; then
    echo "Setting Zsh as the default shell..."
    sudo chsh -s "$(command -v zsh)" "$USER"
else
    echo "Zsh is already the default shell."
    exit 0
fi

echo "Please log out and log back in for changes to take effect."
exit 1

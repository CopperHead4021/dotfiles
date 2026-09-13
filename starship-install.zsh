#!/usr/bin/env zsh

set -e

echo "Installing Starship..."

# Install Starship
if ! command -v starship >/dev/null 2>&1; then
    echo "Installing Starship..."
    curl -sS https://starship.rs/install.sh -o "$HOME/Downloads/starship-install.sh"
    sh "$HOME/Downloads/starship-install.sh"
    rm "$HOME/Downloads/starship-install.sh"
else
    echo "Starship is already installed."
fi

# Configure Zsh
ZSHRC="$HOME/.zshrc"

if ! grep -q 'starship init zsh' "$ZSHRC" 2>/dev/null; then
    echo 'eval "$(starship init zsh)"' >> "$ZSHRC"
    echo "Added Starship to $ZSHRC"
else
    echo "Starship is already configured in $ZSHRC"
fi

echo "Starship installation complete."
echo "Restart your shell or run:"
echo "  source ~/.zshrc"
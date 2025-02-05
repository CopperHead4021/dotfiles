#!/bin/zsh

source "./utils.zsh"

# Define packages to install
PACKAGES=("git" "curl" "neovim" "bat" "exa" "tmux")

# Detect package manager
if command -v apt >/dev/null 2>&1; then
    PKG_MANAGER="sudo apt install -y"
    CHECK_CMD="dpkg -l | grep -qw"
    UPDATE_CMD="sudo apt update"
elif command -v dnf >/dev/null 2>&1; then
    PKG_MANAGER="sudo dnf install -y"
    CHECK_CMD="rpm -q"
    UPDATE_CMD="sudo dnf check-update"
elif command -v pacman >/dev/null 2>&1; then
    PKG_MANAGER="sudo pacman -S --noconfirm"
    CHECK_CMD="pacman -Qi"
    UPDATE_CMD="sudo pacman -Sy"
else
    error "Unsupported package manager. Exiting..."
    exit 1
fi

# Update package lists
info "Updating package database..."
eval "$UPDATE_CMD"

# Install missing packages using the system package manager
for package in $PACKAGES; do
    if eval "$CHECK_CMD $package" >/dev/null 2>&1; then
        pass "$package is already installed. Skipping..."
    else
        info "Installing $package..."
        eval "$PKG_MANAGER $package"
    fi
done

pass "Installation complete!"


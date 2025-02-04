#!/bin/bash

# Utils for dotfile related package installations

# Define colors
RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
NC='\033[0m' # No color

# Info function
info() {
    echo -e "${PURPLE}$1${NC}"
}

# Warning function
warning() {
    echo -e "${YELLOW}[WARNING] $1${NC}"
}

# Error function
error() {
    echo -e "${RED}[ERROR] $1${NC}"
}

# All good / pass function
pass() {
    echo -e "${GREEN}$1${NC}"
}

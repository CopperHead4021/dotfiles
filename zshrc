
# Set Variables

# Change ZSH Options

# Create Aliases
alias ls='eza'
alias exa='eza -lah --git'
alias clr='clear'
alias cls='clear'
alias gcm='git commit -am'
alias rr='ranger'
alias cat='batcat'
alias tree='eza --tree --icons'
alias neofetch='screenfetch'

# Customize Prompt
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable

# Write Handy Funcitons
function mkcd() {
  mkdir -p "$@" && cd "$_";
}
 # Syntax highlighting for man pages using bat
man() {
  command man "$@" | col -bx | batcat -l man -p
}

# Use ZSH Plugins

eval "$(starship init zsh)"

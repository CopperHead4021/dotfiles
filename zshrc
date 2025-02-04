
# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options

# Create Aliases
alias ls='exa'
alias exa='exa -laFh --git'

# Customize Prompt
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable

# Write Handy Funcitons
function mkcd() {
  mkdir -p "$@" && cd "$_";
}
# Use ZSH Plugins

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

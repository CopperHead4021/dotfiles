# Set Variables

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'

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

# Enable shell completion
autoload -Uz compinit
compinit

# Set Variables
# Syntax highlighting for man pages using bat
#export MANPAGER="sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_BUNDLE_FILE_GLOBAL=~/.dotfiles/Brewfile


# Change ZSH Options


# Create Aliases
alias l='ls -FG'
alias la='ls -AFG'
alias ll='ls -lAFhG'
alias bbd='brew bundle dump --global --force --describe'
alias dotbot='dotbot --verbose -c ~/.dotfiles/install.conf.yaml'

# https://codegolf.stackexchange.com/questions/96334/export-the-path-variable-line-by-line/96471#96471
alias trail='<<<${(F)path}'

# Customize Prompt
PROMPT='
%1~ %# '


# Add Locations to $PATH Variable


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins


# ...and Other Surprises

# Enable shell completion
autoload -Uz compinit
compinit

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'awk '\''{ gsub(/\x1B\[[0-9;]*m/, \"\", \$0); gsub(/.\x08/, \"\", \$0); print }'\'' | bat -p -lman'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_BUNDLE_FILE_GLOBAL=~/.dotfiles/Brewfile
export MYVIMRC=~/.vimrc


# Change ZSH Options


# Create Aliases
alias l='ls -FG1'
alias la='ls -AFG1'
alias ll='ls -lAFhG'
alias bbd='brew bundle dump --global --force --describe'
alias dotbot='dotbot --verbose -c ~/.dotfiles/install.conf.yaml'
alias k='calcurse'
alias nb='newsboat'
# Git
alias gc='git commit -m'
alias gca='git commit -a -m'
alias gp='git push'
#alias gpu='git pull origin'
alias gst='git status'
alias glog='git log --oneline'
alias glogg='git log --oneline --graph --all'
alias gdiff='git diff'
alias gb='git branch'
alias gba='git branch -a'
alias gadd='git add'
#alias ga='git add -p'
#alias gcoall='git checkout -- .'
#alias gr='git remote'
#alias gre='git reset'

# https://codegolf.stackexchange.com/questions/96334/export-the-path-variable-line-by-line/96471#96471
alias trail='<<<${(F)path}'

# Customize Prompt
PROMPT='
%1~ %# '


# Add Locations to $PATH Variable
export PATH=$PATH:$HOME/go/bin


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins


# ...and Other Surprises

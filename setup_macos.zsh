#!/usr/bin/env zsh

echo "\n<<< Starting macOS Setup >>>\n"

# Change name
scutil --set ComputerName "macbuch"
scutil --set LocalHostName "macbuch"

# Dock
defaults write com.apple.dock persistent-apps -array

# Finder
# Use list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Show filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Screenshots
defaults write com.apple.screencapture "show-thumbnail" -bool "false"


# Finish macOS Setup
killall Finder
killall Dock
killall SystemUIServer
echo "\n<<< macOS Setup Complete.
    A logout or restart might be necessary. >>>\n"

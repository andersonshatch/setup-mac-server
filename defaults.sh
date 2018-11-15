# Faster key repeat
defaults write NSGlobalDomain KeyRepeat -int 1

# Tab for all controls
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

# Hot corner - top left = turn off display
defaults write com.apple.dock wvous-tl-corner -int 10

# Finder - default new window = home
defaults write com.apple.finder NewWindowTarget PfHm;
defaults write com.apple.finder NewWindowTargetPath file:///Users/josh/

# Finder - show path and status bars
defaults write com.apple.finder ShowPathbar -int 1
defaults write com.apple.finder ShowStatusBar -int 1

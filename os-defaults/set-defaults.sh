if test "$(uname)" = "Darwin"
then
  # Sets reasonable macOS defaults.
  #
  # The original idea (and a couple settings) were grabbed from:
  #   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
  #
  # Run ./set-defaults.sh and you'll be good to go.

  # Use AirDrop over every interface. srsly this should be a default.
  defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

  # Always open everything in Finder's list view. This is important.
  defaults write com.apple.Finder FXPreferredViewStyle Nlsv

  # Show the ~/Library folder.
  chflags nohidden ~/Library

  # Hide Safari's bookmark bar.
  defaults write com.apple.Safari ShowFavoritesBar -bool false

  # Set up Safari for development.
  defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
  defaults write com.apple.Safari IncludeDevelopMenu -bool true
  defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
  defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
  defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

  # When performing a search, search the current folder by default
  defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

  # Disable the warning when changing a file extension
  defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

  # Enable snap-to-grid for icons on the desktop and in other icon views
  /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
  /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
  echo "No Linux defaults found.   😶"
fi